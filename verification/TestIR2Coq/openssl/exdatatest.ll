; ModuleID = 'test/exdatatest.c'
source_filename = "test/exdatatest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myobj_st = type { %struct.crypto_ex_data_st, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.myobj_ex_data_st = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"test_exdata\00", align 1
@gbl_result = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"test/exdatatest.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"p = OPENSSL_strdup(\22hello world\22)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@saved_argl = internal unnamed_addr global i1 false, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"saved_argp = OPENSSL_malloc(1)\00", align 1
@saved_argp = internal unnamed_addr global i8* null, align 8
@saved_idx = internal unnamed_addr global i32 0, align 4
@saved_idx2 = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"t1->st\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"t2->st\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"CRYPTO_get_ex_data(&t1->ex_data, saved_idx2)\00", align 1
@saved_idx3 = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"CRYPTO_get_ex_data(&t1->ex_data, saved_idx3)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"t3->st\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ex_data\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"ex_data->dup\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"saved_idx\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"argl\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"saved_argl\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"argp\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"saved_argp\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"from_d\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"idx == saved_idx2 || idx == saved_idx3\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"CRYPTO_set_ex_data(ad, idx, ex_data)\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"*update_ex_data\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"ex_data = CRYPTO_get_ex_data(to, idx)\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"ex_data->new\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"CRYPTO_set_ex_data(ad, idx, NULL)\00", align 1
@MYOBJ_new.count = internal unnamed_addr global i32 0, align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"obj->st\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"ex_data = CRYPTO_get_ex_data(&obj->ex_data, saved_idx3)\00", align 1
@.str.31 = private unnamed_addr constant [74 x i8] c"CRYPTO_alloc_ex_data(CRYPTO_EX_INDEX_APP, obj, &obj->ex_data, saved_idx3)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_exdata) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_exdata() #0 {
entry:
  store i1 true, i1* @gbl_result, align 4
  %call = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 230) #2
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i1 true, i1* @saved_argl, align 8
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233) #2
  store i8* %call2, i8** @saved_argp, align 8, !tbaa !3
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call2) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %.b140 = load i1, i1* @saved_argl, align 8
  %0 = select i1 %.b140, i64 21, i64 0
  %1 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call7 = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 13, i64 noundef %0, i8* noundef %1, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @exnew, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef nonnull @exdup, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @exfree) #2
  store i32 %call7, i32* @saved_idx, align 4, !tbaa !7
  %.b139 = load i1, i1* @saved_argl, align 8
  %2 = select i1 %.b139, i64 21, i64 0
  %3 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call8 = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 13, i64 noundef %2, i8* noundef %3, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @exnew2, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef nonnull @exdup2, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @exfree2) #2
  store i32 %call8, i32* @saved_idx2, align 4, !tbaa !7
  %call9 = tail call fastcc %struct.myobj_st* @MYOBJ_new() #3
  %call10 = tail call fastcc %struct.myobj_st* @MYOBJ_new() #3
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call9, i64 0, i32 2
  %4 = load i32, i32* %st, align 4, !tbaa !9
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %4, i32 noundef 1) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %st13 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call10, i64 0, i32 2
  %5 = load i32, i32* %st13, align 4, !tbaa !9
  %call14 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %5, i32 noundef 1) #2
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false
  %ex_data18 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call9, i64 0, i32 0
  %6 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %call19 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data18, i32 noundef %6) #2
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call19) #2
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end17
  %.b138 = load i1, i1* @saved_argl, align 8
  %7 = select i1 %.b138, i64 21, i64 0
  %8 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call24 = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 13, i64 noundef %7, i8* noundef %8, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @exnew2, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef nonnull @exdup2, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef nonnull @exfree2) #2
  store i32 %call24, i32* @saved_idx3, align 4, !tbaa !7
  %call26 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data18, i32 noundef %call24) #2
  %call27 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call26) #2
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end23
  tail call fastcc void @MYOBJ_sethello(%struct.myobj_st* noundef nonnull %call9, i8* noundef %call) #3
  %call31 = tail call fastcc i8* @MYOBJ_gethello(%struct.myobj_st* noundef nonnull %call9) #3
  %call32 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call31, i8* noundef %call) #2
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  tail call fastcc void @MYOBJ_sethello2(%struct.myobj_st* noundef nonnull %call9, i8* noundef %call) #3
  %call36 = tail call fastcc i8* @MYOBJ_gethello2(%struct.myobj_st* noundef nonnull %call9) #3
  %call37 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call36, i8* noundef %call) #2
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  tail call fastcc void @MYOBJ_allochello3(%struct.myobj_st* noundef nonnull %call9, i8* noundef %call) #3
  %call41 = tail call fastcc i8* @MYOBJ_gethello3(%struct.myobj_st* noundef nonnull %call9) #3
  %call42 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call41, i8* noundef %call) #2
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end40
  %call46 = tail call fastcc i8* @MYOBJ_gethello(%struct.myobj_st* noundef nonnull %call10) #3
  %call47 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call46) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %if.end45
  %call51 = tail call fastcc i8* @MYOBJ_gethello2(%struct.myobj_st* noundef nonnull %call10) #3
  %call52 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call51) #2
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end50
  %call56 = tail call fastcc %struct.myobj_st* @MYOBJ_dup(%struct.myobj_st* noundef nonnull %call9) #3
  %st57 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call56, i64 0, i32 2
  %9 = load i32, i32* %st57, align 4, !tbaa !9
  %call58 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %9, i32 noundef 1) #2
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end55
  %ex_data62 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call56, i64 0, i32 0
  %10 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %call63 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data62, i32 noundef %10) #2
  %call64 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call63) #2
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %if.end61
  %dup = getelementptr inbounds i8, i8* %call63, i64 12
  %11 = bitcast i8* %dup to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !12
  %call68 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %12, i32 noundef 1) #2
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end67
  %call72 = tail call fastcc i8* @MYOBJ_gethello(%struct.myobj_st* noundef nonnull %call56) #3
  %call73 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call72, i8* noundef %call) #2
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end71
  %call77 = tail call fastcc i8* @MYOBJ_gethello2(%struct.myobj_st* noundef nonnull %call56) #3
  %call78 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call77, i8* noundef %call) #2
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %if.end76
  %call82 = tail call fastcc i8* @MYOBJ_gethello3(%struct.myobj_st* noundef nonnull %call56) #3
  %call83 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call82, i8* noundef %call) #2
  %tobool84 = icmp ne i32 %call83, 0
  %.b = load i1, i1* @gbl_result, align 4
  %or.cond = select i1 %tobool84, i1 %.b, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %err

err:                                              ; preds = %if.end81, %if.end76, %if.end71, %if.end67, %if.end61, %if.end55, %if.end50, %if.end45, %if.end40, %if.end35, %if.end30, %if.end23, %if.end17, %if.end6, %lor.lhs.false, %if.end
  %t1.0 = phi %struct.myobj_st* [ %call9, %if.end76 ], [ %call9, %if.end71 ], [ %call9, %if.end67 ], [ %call9, %if.end61 ], [ %call9, %if.end55 ], [ %call9, %if.end50 ], [ %call9, %if.end45 ], [ %call9, %if.end40 ], [ %call9, %if.end35 ], [ %call9, %if.end30 ], [ %call9, %if.end23 ], [ %call9, %if.end17 ], [ %call9, %lor.lhs.false ], [ %call9, %if.end6 ], [ null, %if.end ], [ %call9, %if.end81 ]
  %t2.0 = phi %struct.myobj_st* [ %call10, %if.end76 ], [ %call10, %if.end71 ], [ %call10, %if.end67 ], [ %call10, %if.end61 ], [ %call10, %if.end55 ], [ %call10, %if.end50 ], [ %call10, %if.end45 ], [ %call10, %if.end40 ], [ %call10, %if.end35 ], [ %call10, %if.end30 ], [ %call10, %if.end23 ], [ %call10, %if.end17 ], [ %call10, %lor.lhs.false ], [ %call10, %if.end6 ], [ null, %if.end ], [ %call10, %if.end81 ]
  %t3.0 = phi %struct.myobj_st* [ %call56, %if.end76 ], [ %call56, %if.end71 ], [ %call56, %if.end67 ], [ %call56, %if.end61 ], [ %call56, %if.end55 ], [ null, %if.end50 ], [ null, %if.end45 ], [ null, %if.end40 ], [ null, %if.end35 ], [ null, %if.end30 ], [ null, %if.end23 ], [ null, %if.end17 ], [ null, %lor.lhs.false ], [ null, %if.end6 ], [ null, %if.end ], [ %call56, %if.end81 ]
  %res.0 = phi i32 [ 0, %if.end76 ], [ 0, %if.end71 ], [ 0, %if.end67 ], [ 0, %if.end61 ], [ 0, %if.end55 ], [ 0, %if.end50 ], [ 0, %if.end45 ], [ 0, %if.end40 ], [ 0, %if.end35 ], [ 0, %if.end30 ], [ 0, %if.end23 ], [ 0, %if.end17 ], [ 0, %lor.lhs.false ], [ 0, %if.end6 ], [ 0, %if.end ], [ %spec.select, %if.end81 ]
  tail call fastcc void @MYOBJ_free(%struct.myobj_st* noundef %t1.0) #3
  tail call fastcc void @MYOBJ_free(%struct.myobj_st* noundef %t2.0) #3
  tail call fastcc void @MYOBJ_free(%struct.myobj_st* noundef %t3.0) #3
  %13 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 309) #2
  store i8* null, i8** @saved_argp, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 311) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_get_ex_new_index(i32 noundef, i64 noundef, i8* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @exnew(i8* nocapture noundef readnone %parent, i8* noundef %ptr, %struct.crypto_ex_data_st* nocapture noundef readnone %ad, i32 noundef %idx, i64 noundef %argl, i8* noundef %argp) #0 {
entry:
  %0 = load i32, i32* @saved_idx, align 4, !tbaa !7
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 noundef %idx, i32 noundef %0) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, i1* @saved_argl, align 8
  %1 = select i1 %.b, i64 21, i64 0
  %call1 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %argl, i64 noundef %1) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call4 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef %argp, i8* noundef %2) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %ptr) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* @gbl_result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @exdup(%struct.crypto_ex_data_st* nocapture noundef readnone %to, %struct.crypto_ex_data_st* nocapture noundef readnone %from, i8** noundef %from_d, i32 noundef %idx, i64 noundef %argl, i8* noundef %argp) #0 {
entry:
  %0 = load i32, i32* @saved_idx, align 4, !tbaa !7
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 noundef %idx, i32 noundef %0) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, i1* @saved_argl, align 8
  %1 = select i1 %.b, i64 21, i64 0
  %call1 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %argl, i64 noundef %1) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call4 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef %argp, i8* noundef %2) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = bitcast i8** %from_d to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef %3) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* @gbl_result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @exfree(i8* nocapture noundef readnone %parent, i8* nocapture noundef readnone %ptr, %struct.crypto_ex_data_st* nocapture noundef readnone %ad, i32 noundef %idx, i64 noundef %argl, i8* noundef %argp) #0 {
entry:
  %0 = load i32, i32* @saved_idx, align 4, !tbaa !7
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 noundef %idx, i32 noundef %0) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, i1* @saved_argl, align 8
  %1 = select i1 %.b, i64 21, i64 0
  %call1 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %argl, i64 noundef %1) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call4 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef %argp, i8* noundef %2) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* @gbl_result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @exnew2(i8* nocapture noundef readnone %parent, i8* noundef %ptr, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx, i64 noundef %argl, i8* noundef %argp) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74) #2
  %0 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %cmp = icmp eq i32 %0, %idx
  %1 = load i32, i32* @saved_idx3, align 4
  %cmp1 = icmp eq i32 %1, %idx
  %2 = select i1 %cmp, i1 true, i1 %cmp1
  %lor.ext = zext i1 %2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 noundef %lor.ext) #2
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, i1* @saved_argl, align 8
  %3 = select i1 %.b, i64 21, i64 0
  %call4 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %argl, i64 noundef %3) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call7 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef %argp, i8* noundef %4) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %ptr) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx, i8* noundef %call) #2
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv18) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 false, i1* @gbl_result, align 4
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 83) #2
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false15
  %new = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %new to i32*
  store i32 1, i32* %5, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @exdup2(%struct.crypto_ex_data_st* noundef %to, %struct.crypto_ex_data_st* nocapture noundef readnone %from, i8** noundef %from_d, i32 noundef %idx, i64 noundef %argl, i8* noundef %argp) #0 {
entry:
  %0 = bitcast i8** %from_d to %struct.myobj_ex_data_st**
  %1 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %cmp = icmp eq i32 %1, %idx
  %2 = load i32, i32* @saved_idx3, align 4
  %cmp1 = icmp eq i32 %2, %idx
  %3 = select i1 %cmp, i1 true, i1 %cmp1
  %lor.ext = zext i1 %3 to i32
  %call = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 noundef %lor.ext) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, i1* @saved_argl, align 8
  %4 = select i1 %.b, i64 21, i64 0
  %call3 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %argl, i64 noundef %4) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call6 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef %argp, i8* noundef %5) #2
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %6 = bitcast i8** %from_d to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef %6) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %7 = load i8*, i8** %from_d, align 8, !tbaa !3
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef %7) #2
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %to, i32 noundef %idx) #2
  %call16 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef %call15) #2
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %new = getelementptr inbounds i8, i8* %call15, i64 8
  %8 = bitcast i8* %new to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !14
  %cmp19 = icmp ne i32 %9, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv20) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %entry
  store i1 false, i1* @gbl_result, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false18
  %10 = load %struct.myobj_ex_data_st*, %struct.myobj_ex_data_st** %0, align 8, !tbaa !3
  %hello = getelementptr inbounds %struct.myobj_ex_data_st, %struct.myobj_ex_data_st* %10, i64 0, i32 0
  %11 = load i8*, i8** %hello, align 8, !tbaa !15
  %hello23 = bitcast i8* %call15 to i8**
  store i8* %11, i8** %hello23, align 8, !tbaa !15
  %dup = getelementptr inbounds i8, i8* %call15, i64 12
  %12 = bitcast i8* %dup to i32*
  store i32 1, i32* %12, align 4, !tbaa !12
  store i8* %call15, i8** %from_d, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @exfree2(i8* nocapture noundef readnone %parent, i8* nocapture noundef readnone %ptr, %struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx, i64 noundef %argl, i8* noundef %argp) #0 {
entry:
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx) #2
  %0 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %cmp = icmp eq i32 %0, %idx
  %1 = load i32, i32* @saved_idx3, align 4
  %cmp1 = icmp eq i32 %1, %idx
  %2 = select i1 %cmp, i1 true, i1 %cmp1
  %lor.ext = zext i1 %2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 noundef %lor.ext) #2
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %.b = load i1, i1* @saved_argl, align 8
  %3 = select i1 %.b, i64 21, i64 0
  %call4 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i64 noundef %argl, i64 noundef %3) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load i8*, i8** @saved_argp, align 8, !tbaa !3
  %call7 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* noundef %argp, i8* noundef %4) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef %ad, i32 noundef %idx, i8* noundef null) #2
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv12) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %entry
  store i1 false, i1* @gbl_result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false9
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 124) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.myobj_st* @MYOBJ_new() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 136) #2
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @MYOBJ_new.count, align 4, !tbaa !7
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @MYOBJ_new.count, align 4, !tbaa !7
  %id = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %id to i32*
  store i32 %inc, i32* %1, align 8, !tbaa !16
  %ex_data = bitcast i8* %call to %struct.crypto_ex_data_st*
  %call1 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 13, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #2
  %st = getelementptr inbounds i8, i8* %call, i64 20
  %2 = bitcast i8* %st to i32*
  store i32 %call1, i32* %2, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast i8* %call to %struct.myobj_st*
  ret %struct.myobj_st* %3
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @MYOBJ_sethello(%struct.myobj_st* noundef %obj, i8* noundef %cp) unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  %0 = load i32, i32* @saved_idx, align 4, !tbaa !7
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef %ex_data, i32 noundef %0, i8* noundef %cp) #2
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 2
  store i32 %call, i32* %st, align 4, !tbaa !9
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* @gbl_result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @MYOBJ_gethello(%struct.myobj_st* noundef %obj) unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  %0 = load i32, i32* @saved_idx, align 4, !tbaa !7
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data, i32 noundef %0) #2
  ret i8* %call
}

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @MYOBJ_sethello2(%struct.myobj_st* noundef %obj, i8* noundef %cp) unnamed_addr #0 {
entry:
  %ex_data1 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  %0 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data1, i32 noundef %0) #2
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %hello = bitcast i8* %call to i8**
  store i8* %cp, i8** %hello, align 8, !tbaa !15
  br label %if.end

if.else:                                          ; preds = %entry
  store i1 false, i1* @gbl_result, align 4
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 2
  store i32 0, i32* %st, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @MYOBJ_gethello2(%struct.myobj_st* noundef %obj) unnamed_addr #0 {
entry:
  %ex_data1 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  %0 = load i32, i32* @saved_idx2, align 4, !tbaa !7
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data1, i32 noundef %0) #2
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %hello = bitcast i8* %call to i8**
  %1 = load i8*, i8** %hello, align 8, !tbaa !15
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 false, i1* @gbl_result, align 4
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 2
  store i32 0, i32* %st, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @MYOBJ_allochello3(%struct.myobj_st* noundef %obj, i8* noundef %cp) unnamed_addr #0 {
entry:
  %ex_data1 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  %0 = load i32, i32* @saved_idx3, align 4, !tbaa !7
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data1, i32 noundef %0) #2
  %call2 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %struct.myobj_st* %obj to i8*
  %2 = load i32, i32* @saved_idx3, align 4, !tbaa !7
  %call4 = tail call i32 @CRYPTO_alloc_ex_data(i32 noundef 13, i8* noundef %1, %struct.crypto_ex_data_st* noundef %ex_data1, i32 noundef %2) #2
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* @saved_idx3, align 4, !tbaa !7
  %call9 = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data1, i32 noundef %3) #2
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call9) #2
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true7
  %hello = bitcast i8* %call9 to i8**
  store i8* %cp, i8** %hello, align 8, !tbaa !15
  br label %if.end

if.else:                                          ; preds = %land.lhs.true7, %land.lhs.true, %entry
  store i1 false, i1* @gbl_result, align 4
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 2
  store i32 0, i32* %st, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @MYOBJ_gethello3(%struct.myobj_st* noundef %obj) unnamed_addr #0 {
entry:
  %ex_data1 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  %0 = load i32, i32* @saved_idx3, align 4, !tbaa !7
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef %ex_data1, i32 noundef %0) #2
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %hello = bitcast i8* %call to i8**
  %1 = load i8*, i8** %hello, align 8, !tbaa !15
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 false, i1* @gbl_result, align 4
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 2
  store i32 0, i32* %st, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.myobj_st* @MYOBJ_dup(%struct.myobj_st* noundef %in) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.myobj_st* @MYOBJ_new() #3
  %cmp.not = icmp eq %struct.myobj_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ex_data = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call, i64 0, i32 0
  %ex_data1 = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %in, i64 0, i32 0
  %call2 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 13, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef %ex_data1) #2
  %st = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %call, i64 0, i32 2
  %0 = load i32, i32* %st, align 4, !tbaa !9
  %or = or i32 %0, %call2
  store i32 %or, i32* %st, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.myobj_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @MYOBJ_free(%struct.myobj_st* noundef %obj) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.myobj_st* %obj, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.myobj_st* %obj to i8*
  %ex_data = getelementptr inbounds %struct.myobj_st, %struct.myobj_st* %obj, i64 0, i32 0
  tail call void @CRYPTO_free_ex_data(i32 noundef 13, i8* noundef nonnull %0, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #2
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 206) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_alloc_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

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
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !8, i64 20}
!10 = !{!"myobj_st", !11, i64 0, !8, i64 16, !8, i64 20}
!11 = !{!"crypto_ex_data_st", !4, i64 0, !4, i64 8}
!12 = !{!13, !8, i64 12}
!13 = !{!"myobj_ex_data_st", !4, i64 0, !8, i64 8, !8, i64 12}
!14 = !{!13, !8, i64 8}
!15 = !{!13, !4, i64 0}
!16 = !{!10, !8, i64 16}
