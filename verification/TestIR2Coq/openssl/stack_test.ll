; ModuleID = 'test/stack_test.c'
source_filename = "test/stack_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32 }
%struct.stack_st_sint = type opaque
%struct.stack_st_uchar = type opaque
%struct.SS = type { i32, i8 }
%struct.stack_st_SS = type opaque
%union.SU = type { i32 }
%struct.stack_st_SU = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"test_int_stack\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"test_uchar_stack\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"test_SS_stack\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"test_SU_stack\00", align 1
@test_int_stack.v = internal global [9 x i32] [i32 1, i32 2, i32 -4, i32 16, i32 999, i32 1, i32 -173, i32 1, i32 9], align 16
@test_int_stack.notpresent = internal global i32 -1, align 4
@test_int_stack.finds = internal global [5 x %struct.anon] [%struct.anon { i32 2, i32 1, i32 5, i32 5 }, %struct.anon { i32 9, i32 7, i32 6, i32 6 }, %struct.anon { i32 -173, i32 5, i32 0, i32 0 }, %struct.anon { i32 999, i32 3, i32 8, i32 8 }, %struct.anon { i32 0, i32 -1, i32 -1, i32 1 }], align 16
@test_int_stack.exfinds = internal global [6 x %struct.anon.0] [%struct.anon.0 { i32 3, i32 5 }, %struct.anon.0 { i32 1000, i32 8 }, %struct.anon.0 { i32 20, i32 8 }, %struct.anon.0 { i32 -999, i32 0 }, %struct.anon.0 { i32 -5, i32 0 }, %struct.anon.0 { i32 8, i32 5 }], align 16
@.str.4 = private unnamed_addr constant [18 x i8] c"test/stack_test.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"sk_sint_reserve(s, 5 * reserve)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"sk_sint_num(s)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"int stack size %d\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"sk_sint_value(s, i)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"v + i\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"int value %d\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"sk_sint_find(s, val)\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"finds[i].unsorted\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"int unsorted find %d\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"sk_sint_find_ex(s, val)\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"int unsorted find_ex %d\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"sk_sint_is_sorted(s)\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"sk_sint_find(s, &finds[i].value)\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"finds[i].sorted\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"int sorted find %d\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"sk_sint_find_ex(s, &finds[i].value)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"finds[i].ex\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"int sorted find_ex present %d\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"sk_sint_find_ex(s, &exfinds[i].value)\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"exfinds[i].ex\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"int sorted find_ex absent %d\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"sk_sint_shift(s)\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"v + 6\00", align 1
@test_uchar_stack.v = internal constant [6 x i8] c"\01\03\07\05\FF\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"sk_uchar_reserve(s, 5 * reserve)\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"sk_uchar_num(s)\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"uchar stack size %d\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"sk_uchar_num(r)\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"sk_uchar_pop(s)\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"uchar pop %d\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"sk_uchar_value(r, i)\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"uchar insert %d\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"sk_uchar_delete(r, 12)\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"sk_uchar_delete(r, 1)\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"v + 1\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"uchar set %d\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"v[i]\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"sk_SS_num(s)\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"SS stack size %d\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"SS deepcopy non-copy %d\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"p->n\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"v[i]->n\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"test SS deepcopy int %d\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"p->c\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"v[i]->c\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"SS deepcopy char %d\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"n - 1\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"sk_SS_value(s, i)\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"v[i<3 ? i : 1+i]\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"SS delete ptr item %d\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"sk_SU_num(s)\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"SU stack size %d\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"sk_SU_value(s, i)\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"SU pointer check %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_int_stack, i32 noundef 4, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_uchar_stack, i32 noundef 4, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_SS_stack) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_SU_stack) #5
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int_stack(i32 noundef %reserve) #0 {
entry:
  %call = tail call fastcc %struct.stack_st_sint* @sk_sint_new_null() #6
  %0 = bitcast %struct.stack_st_sint* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp = icmp sgt i32 %reserve, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mul = mul nsw i32 %reserve, 5
  %call2 = tail call fastcc i32 @sk_sint_reserve(%struct.stack_st_sint* noundef %call, i32 noundef %mul) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call8 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8, i32 noundef 0) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end12.7, %if.end12.6, %if.end12.5, %if.end12.4, %if.end12.3, %if.end12.2, %if.end12.1, %if.end12, %if.end
  %i.0242.lcssa.wide = phi i32 [ 0, %if.end ], [ 1, %if.end12 ], [ 2, %if.end12.1 ], [ 3, %if.end12.2 ], [ 4, %if.end12.3 ], [ 5, %if.end12.4 ], [ 6, %if.end12.5 ], [ 7, %if.end12.6 ], [ 8, %if.end12.7 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 noundef %i.0242.lcssa.wide) #5
  br label %end

if.end12:                                         ; preds = %if.end
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 0)) #6
  %call8.1 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.1, i32 noundef 1) #5
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %if.then11, label %if.end12.1

if.end12.1:                                       ; preds = %if.end12
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 1)) #6
  %call8.2 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.2, i32 noundef 2) #5
  %tobool10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool10.not.2, label %if.then11, label %if.end12.2

if.end12.2:                                       ; preds = %if.end12.1
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 2)) #6
  %call8.3 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.3, i32 noundef 3) #5
  %tobool10.not.3 = icmp eq i32 %call9.3, 0
  br i1 %tobool10.not.3, label %if.then11, label %if.end12.3

if.end12.3:                                       ; preds = %if.end12.2
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 3)) #6
  %call8.4 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.4, i32 noundef 4) #5
  %tobool10.not.4 = icmp eq i32 %call9.4, 0
  br i1 %tobool10.not.4, label %if.then11, label %if.end12.4

if.end12.4:                                       ; preds = %if.end12.3
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 4)) #6
  %call8.5 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.5 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.5, i32 noundef 5) #5
  %tobool10.not.5 = icmp eq i32 %call9.5, 0
  br i1 %tobool10.not.5, label %if.then11, label %if.end12.5

if.end12.5:                                       ; preds = %if.end12.4
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 5)) #6
  %call8.6 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.6, i32 noundef 6) #5
  %tobool10.not.6 = icmp eq i32 %call9.6, 0
  br i1 %tobool10.not.6, label %if.then11, label %if.end12.6

if.end12.6:                                       ; preds = %if.end12.5
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 6)) #6
  %call8.7 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.7, i32 noundef 7) #5
  %tobool10.not.7 = icmp eq i32 %call9.7, 0
  br i1 %tobool10.not.7, label %if.then11, label %if.end12.7

if.end12.7:                                       ; preds = %if.end12.6
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 7)) #6
  %call8.8 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call9.8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.8, i32 noundef 8) #5
  %tobool10.not.8 = icmp eq i32 %call9.8, 0
  br i1 %tobool10.not.8, label %if.then11, label %if.end12.8

if.end12.8:                                       ; preds = %if.end12.7
  tail call fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 8)) #6
  %call14 = tail call fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %call) #6
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call14, i32 noundef 9) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %for.body22.preheader

for.body22.preheader:                             ; preds = %if.end12.8
  %call23 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 0) #6
  %1 = bitcast i32* %call23 to i8*
  %call26 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %1, i8* noundef nonnull bitcast ([9 x i32]* @test_int_stack.v to i8*)) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %for.inc30

if.then28:                                        ; preds = %for.inc30.7, %for.inc30.6, %for.inc30.5, %for.inc30.4, %for.inc30.3, %for.inc30.2, %for.inc30.1, %for.inc30, %for.body22.preheader
  %i.1243.lcssa.wide = phi i32 [ 0, %for.body22.preheader ], [ 1, %for.inc30 ], [ 2, %for.inc30.1 ], [ 3, %for.inc30.2 ], [ 4, %for.inc30.3 ], [ 5, %for.inc30.4 ], [ 6, %for.inc30.5 ], [ 7, %for.inc30.6 ], [ 8, %for.inc30.7 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 noundef %i.1243.lcssa.wide) #5
  br label %end

for.inc30:                                        ; preds = %for.body22.preheader
  %call23.1 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 1) #6
  %2 = bitcast i32* %call23.1 to i8*
  %call26.1 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 1) to i8*)) #5
  %tobool27.not.1 = icmp eq i32 %call26.1, 0
  br i1 %tobool27.not.1, label %if.then28, label %for.inc30.1

for.inc30.1:                                      ; preds = %for.inc30
  %call23.2 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 2) #6
  %3 = bitcast i32* %call23.2 to i8*
  %call26.2 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %3, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 2) to i8*)) #5
  %tobool27.not.2 = icmp eq i32 %call26.2, 0
  br i1 %tobool27.not.2, label %if.then28, label %for.inc30.2

for.inc30.2:                                      ; preds = %for.inc30.1
  %call23.3 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 3) #6
  %4 = bitcast i32* %call23.3 to i8*
  %call26.3 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %4, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 3) to i8*)) #5
  %tobool27.not.3 = icmp eq i32 %call26.3, 0
  br i1 %tobool27.not.3, label %if.then28, label %for.inc30.3

for.inc30.3:                                      ; preds = %for.inc30.2
  %call23.4 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 4) #6
  %5 = bitcast i32* %call23.4 to i8*
  %call26.4 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %5, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 4) to i8*)) #5
  %tobool27.not.4 = icmp eq i32 %call26.4, 0
  br i1 %tobool27.not.4, label %if.then28, label %for.inc30.4

for.inc30.4:                                      ; preds = %for.inc30.3
  %call23.5 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 5) #6
  %6 = bitcast i32* %call23.5 to i8*
  %call26.5 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %6, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 5) to i8*)) #5
  %tobool27.not.5 = icmp eq i32 %call26.5, 0
  br i1 %tobool27.not.5, label %if.then28, label %for.inc30.5

for.inc30.5:                                      ; preds = %for.inc30.4
  %call23.6 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 6) #6
  %7 = bitcast i32* %call23.6 to i8*
  %call26.6 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %7, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 6) to i8*)) #5
  %tobool27.not.6 = icmp eq i32 %call26.6, 0
  br i1 %tobool27.not.6, label %if.then28, label %for.inc30.6

for.inc30.6:                                      ; preds = %for.inc30.5
  %call23.7 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 7) #6
  %8 = bitcast i32* %call23.7 to i8*
  %call26.7 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %8, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 7) to i8*)) #5
  %tobool27.not.7 = icmp eq i32 %call26.7, 0
  br i1 %tobool27.not.7, label %if.then28, label %for.inc30.7

for.inc30.7:                                      ; preds = %for.inc30.6
  %call23.8 = tail call fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %call, i32 noundef 8) #6
  %9 = bitcast i32* %call23.8 to i8*
  %call26.8 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %9, i8* noundef nonnull bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 8) to i8*)) #5
  %tobool27.not.8 = icmp eq i32 %call26.8, 0
  br i1 %tobool27.not.8, label %if.then28, label %for.inc30.8

for.inc30.8:                                      ; preds = %for.inc30.7
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %cmp37 = icmp eq i32 %10, -1
  %idx.ext42 = sext i32 %10 to i64
  %add.ptr43 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext42
  %cond = select i1 %cmp37, i32* @test_int_stack.notpresent, i32* %add.ptr43
  %call44 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond) #6
  %11 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %call48 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call44, i32 noundef %11) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %for.inc52

cleanup:                                          ; preds = %for.inc52.3, %for.inc52.2, %for.inc52.1, %for.inc52, %for.inc30.8
  %i.2244.lcssa.wide = phi i32 [ 0, %for.inc30.8 ], [ 1, %for.inc52 ], [ 2, %for.inc52.1 ], [ 3, %for.inc52.2 ], [ 4, %for.inc52.3 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 noundef %i.2244.lcssa.wide) #5
  br label %end

for.inc52:                                        ; preds = %for.inc30.8
  %12 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 1), align 4, !tbaa !3
  %cmp37.1 = icmp eq i32 %12, -1
  %idx.ext42.1 = sext i32 %12 to i64
  %add.ptr43.1 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext42.1
  %cond.1 = select i1 %cmp37.1, i32* @test_int_stack.notpresent, i32* %add.ptr43.1
  %call44.1 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond.1) #6
  %13 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 1), align 4, !tbaa !3
  %call48.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call44.1, i32 noundef %13) #5
  %tobool49.not.1 = icmp eq i32 %call48.1, 0
  br i1 %tobool49.not.1, label %cleanup, label %for.inc52.1

for.inc52.1:                                      ; preds = %for.inc52
  %14 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 1), align 4, !tbaa !3
  %cmp37.2 = icmp eq i32 %14, -1
  %idx.ext42.2 = sext i32 %14 to i64
  %add.ptr43.2 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext42.2
  %cond.2 = select i1 %cmp37.2, i32* @test_int_stack.notpresent, i32* %add.ptr43.2
  %call44.2 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond.2) #6
  %15 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 1), align 4, !tbaa !3
  %call48.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call44.2, i32 noundef %15) #5
  %tobool49.not.2 = icmp eq i32 %call48.2, 0
  br i1 %tobool49.not.2, label %cleanup, label %for.inc52.2

for.inc52.2:                                      ; preds = %for.inc52.1
  %16 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 1), align 4, !tbaa !3
  %cmp37.3 = icmp eq i32 %16, -1
  %idx.ext42.3 = sext i32 %16 to i64
  %add.ptr43.3 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext42.3
  %cond.3 = select i1 %cmp37.3, i32* @test_int_stack.notpresent, i32* %add.ptr43.3
  %call44.3 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond.3) #6
  %17 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 1), align 4, !tbaa !3
  %call48.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call44.3, i32 noundef %17) #5
  %tobool49.not.3 = icmp eq i32 %call48.3, 0
  br i1 %tobool49.not.3, label %cleanup, label %for.inc52.3

for.inc52.3:                                      ; preds = %for.inc52.2
  %18 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 1), align 4, !tbaa !3
  %cmp37.4 = icmp eq i32 %18, -1
  %idx.ext42.4 = sext i32 %18 to i64
  %add.ptr43.4 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext42.4
  %cond.4 = select i1 %cmp37.4, i32* @test_int_stack.notpresent, i32* %add.ptr43.4
  %call44.4 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond.4) #6
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 1), align 4, !tbaa !3
  %call48.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call44.4, i32 noundef %19) #5
  %tobool49.not.4 = icmp eq i32 %call48.4, 0
  br i1 %tobool49.not.4, label %cleanup, label %for.inc52.4

for.inc52.4:                                      ; preds = %for.inc52.3
  %20 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %cmp63 = icmp eq i32 %20, -1
  %idx.ext70 = sext i32 %20 to i64
  %add.ptr71 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext70
  %cond73 = select i1 %cmp63, i32* @test_int_stack.notpresent, i32* %add.ptr71
  %call74 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond73) #6
  %21 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %call78 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call74, i32 noundef %21) #5
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup82, label %for.inc85

cleanup82:                                        ; preds = %for.inc85.3, %for.inc85.2, %for.inc85.1, %for.inc85, %for.inc52.4
  %i.3245.lcssa.wide = phi i32 [ 0, %for.inc52.4 ], [ 1, %for.inc85 ], [ 2, %for.inc85.1 ], [ 3, %for.inc85.2 ], [ 4, %for.inc85.3 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 noundef %i.3245.lcssa.wide) #5
  br label %end

for.inc85:                                        ; preds = %for.inc52.4
  %22 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 1), align 4, !tbaa !3
  %cmp63.1 = icmp eq i32 %22, -1
  %idx.ext70.1 = sext i32 %22 to i64
  %add.ptr71.1 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext70.1
  %cond73.1 = select i1 %cmp63.1, i32* @test_int_stack.notpresent, i32* %add.ptr71.1
  %call74.1 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond73.1) #6
  %23 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 1), align 4, !tbaa !3
  %call78.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call74.1, i32 noundef %23) #5
  %tobool79.not.1 = icmp eq i32 %call78.1, 0
  br i1 %tobool79.not.1, label %cleanup82, label %for.inc85.1

for.inc85.1:                                      ; preds = %for.inc85
  %24 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 1), align 4, !tbaa !3
  %cmp63.2 = icmp eq i32 %24, -1
  %idx.ext70.2 = sext i32 %24 to i64
  %add.ptr71.2 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext70.2
  %cond73.2 = select i1 %cmp63.2, i32* @test_int_stack.notpresent, i32* %add.ptr71.2
  %call74.2 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond73.2) #6
  %25 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 1), align 4, !tbaa !3
  %call78.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call74.2, i32 noundef %25) #5
  %tobool79.not.2 = icmp eq i32 %call78.2, 0
  br i1 %tobool79.not.2, label %cleanup82, label %for.inc85.2

for.inc85.2:                                      ; preds = %for.inc85.1
  %26 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 1), align 4, !tbaa !3
  %cmp63.3 = icmp eq i32 %26, -1
  %idx.ext70.3 = sext i32 %26 to i64
  %add.ptr71.3 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext70.3
  %cond73.3 = select i1 %cmp63.3, i32* @test_int_stack.notpresent, i32* %add.ptr71.3
  %call74.3 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond73.3) #6
  %27 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 1), align 4, !tbaa !3
  %call78.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call74.3, i32 noundef %27) #5
  %tobool79.not.3 = icmp eq i32 %call78.3, 0
  br i1 %tobool79.not.3, label %cleanup82, label %for.inc85.3

for.inc85.3:                                      ; preds = %for.inc85.2
  %28 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 1), align 4, !tbaa !3
  %cmp63.4 = icmp eq i32 %28, -1
  %idx.ext70.4 = sext i32 %28 to i64
  %add.ptr71.4 = getelementptr inbounds [9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 %idx.ext70.4
  %cond73.4 = select i1 %cmp63.4, i32* @test_int_stack.notpresent, i32* %add.ptr71.4
  %call74.4 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull %cond73.4) #6
  %29 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 1), align 4, !tbaa !3
  %call78.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call74.4, i32 noundef %29) #5
  %tobool79.not.4 = icmp eq i32 %call78.4, 0
  br i1 %tobool79.not.4, label %cleanup82, label %for.inc85.4

for.inc85.4:                                      ; preds = %for.inc85.3
  %call88 = tail call fastcc i32 @sk_sint_is_sorted(%struct.stack_st_sint* noundef %call) #6
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv90) #5
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %end, label %if.end94

if.end94:                                         ; preds = %for.inc85.4
  tail call fastcc void @sk_sint_set_cmp_func(%struct.stack_st_sint* noundef %call) #6
  tail call fastcc void @sk_sint_sort(%struct.stack_st_sint* noundef %call) #6
  %call96 = tail call fastcc i32 @sk_sint_is_sorted(%struct.stack_st_sint* noundef %call) #6
  %cmp97 = icmp ne i32 %call96, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv98) #5
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %end, label %for.body106.preheader

for.body106.preheader:                            ; preds = %if.end94
  %call109 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 0)) #6
  %30 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 2), align 8, !tbaa !8
  %call112 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call109, i32 noundef %30) #5
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then114, label %for.inc116

if.then114:                                       ; preds = %for.inc116.3, %for.inc116.2, %for.inc116.1, %for.inc116, %for.body106.preheader
  %i.4246.lcssa.wide = phi i32 [ 0, %for.body106.preheader ], [ 1, %for.inc116 ], [ 2, %for.inc116.1 ], [ 3, %for.inc116.2 ], [ 4, %for.inc116.3 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 noundef %i.4246.lcssa.wide) #5
  br label %end

for.inc116:                                       ; preds = %for.body106.preheader
  %call109.1 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 0)) #6
  %31 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 2), align 8, !tbaa !8
  %call112.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call109.1, i32 noundef %31) #5
  %tobool113.not.1 = icmp eq i32 %call112.1, 0
  br i1 %tobool113.not.1, label %if.then114, label %for.inc116.1

for.inc116.1:                                     ; preds = %for.inc116
  %call109.2 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 0)) #6
  %32 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 2), align 8, !tbaa !8
  %call112.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call109.2, i32 noundef %32) #5
  %tobool113.not.2 = icmp eq i32 %call112.2, 0
  br i1 %tobool113.not.2, label %if.then114, label %for.inc116.2

for.inc116.2:                                     ; preds = %for.inc116.1
  %call109.3 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 0)) #6
  %33 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 2), align 8, !tbaa !8
  %call112.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call109.3, i32 noundef %33) #5
  %tobool113.not.3 = icmp eq i32 %call112.3, 0
  br i1 %tobool113.not.3, label %if.then114, label %for.inc116.3

for.inc116.3:                                     ; preds = %for.inc116.2
  %call109.4 = tail call fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 0)) #6
  %34 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 2), align 8, !tbaa !8
  %call112.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call109.4, i32 noundef %34) #5
  %tobool113.not.4 = icmp eq i32 %call112.4, 0
  br i1 %tobool113.not.4, label %if.then114, label %for.inc116.4

for.inc116.4:                                     ; preds = %for.inc116.3
  %call126 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 0)) #6
  %35 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 0, i32 3), align 4, !tbaa !9
  %call129 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call126, i32 noundef %35) #5
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %for.inc133

if.then131:                                       ; preds = %for.inc133.3, %for.inc133.2, %for.inc133.1, %for.inc133, %for.inc116.4
  %i.5247.lcssa.wide = phi i32 [ 0, %for.inc116.4 ], [ 1, %for.inc133 ], [ 2, %for.inc133.1 ], [ 3, %for.inc133.2 ], [ 4, %for.inc133.3 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i32 noundef %i.5247.lcssa.wide) #5
  br label %end

for.inc133:                                       ; preds = %for.inc116.4
  %call126.1 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 0)) #6
  %36 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 1, i32 3), align 4, !tbaa !9
  %call129.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call126.1, i32 noundef %36) #5
  %tobool130.not.1 = icmp eq i32 %call129.1, 0
  br i1 %tobool130.not.1, label %if.then131, label %for.inc133.1

for.inc133.1:                                     ; preds = %for.inc133
  %call126.2 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 0)) #6
  %37 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 2, i32 3), align 4, !tbaa !9
  %call129.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call126.2, i32 noundef %37) #5
  %tobool130.not.2 = icmp eq i32 %call129.2, 0
  br i1 %tobool130.not.2, label %if.then131, label %for.inc133.2

for.inc133.2:                                     ; preds = %for.inc133.1
  %call126.3 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 0)) #6
  %38 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 3, i32 3), align 4, !tbaa !9
  %call129.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call126.3, i32 noundef %38) #5
  %tobool130.not.3 = icmp eq i32 %call129.3, 0
  br i1 %tobool130.not.3, label %if.then131, label %for.inc133.3

for.inc133.3:                                     ; preds = %for.inc133.2
  %call126.4 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 0)) #6
  %39 = load i32, i32* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @test_int_stack.finds, i64 0, i64 4, i32 3), align 4, !tbaa !9
  %call129.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call126.4, i32 noundef %39) #5
  %tobool130.not.4 = icmp eq i32 %call129.4, 0
  br i1 %tobool130.not.4, label %if.then131, label %for.inc133.4

for.inc133.4:                                     ; preds = %for.inc133.3
  %call143 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 0, i32 0)) #6
  %40 = load i32, i32* getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 0, i32 1), align 4, !tbaa !10
  %call147 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call143, i32 noundef %40) #5
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then149, label %for.inc151

if.then149:                                       ; preds = %for.inc151.4, %for.inc151.3, %for.inc151.2, %for.inc151.1, %for.inc151, %for.inc133.4
  %i.6248.lcssa.wide = phi i32 [ 0, %for.inc133.4 ], [ 1, %for.inc151 ], [ 2, %for.inc151.1 ], [ 3, %for.inc151.2 ], [ 4, %for.inc151.3 ], [ 5, %for.inc151.4 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32 noundef %i.6248.lcssa.wide) #5
  br label %end

for.inc151:                                       ; preds = %for.inc133.4
  %call143.1 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 1, i32 0)) #6
  %41 = load i32, i32* getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 1, i32 1), align 4, !tbaa !10
  %call147.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call143.1, i32 noundef %41) #5
  %tobool148.not.1 = icmp eq i32 %call147.1, 0
  br i1 %tobool148.not.1, label %if.then149, label %for.inc151.1

for.inc151.1:                                     ; preds = %for.inc151
  %call143.2 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 2, i32 0)) #6
  %42 = load i32, i32* getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 2, i32 1), align 4, !tbaa !10
  %call147.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call143.2, i32 noundef %42) #5
  %tobool148.not.2 = icmp eq i32 %call147.2, 0
  br i1 %tobool148.not.2, label %if.then149, label %for.inc151.2

for.inc151.2:                                     ; preds = %for.inc151.1
  %call143.3 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 3, i32 0)) #6
  %43 = load i32, i32* getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 3, i32 1), align 4, !tbaa !10
  %call147.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call143.3, i32 noundef %43) #5
  %tobool148.not.3 = icmp eq i32 %call147.3, 0
  br i1 %tobool148.not.3, label %if.then149, label %for.inc151.3

for.inc151.3:                                     ; preds = %for.inc151.2
  %call143.4 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 4, i32 0)) #6
  %44 = load i32, i32* getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 4, i32 1), align 4, !tbaa !10
  %call147.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call143.4, i32 noundef %44) #5
  %tobool148.not.4 = icmp eq i32 %call147.4, 0
  br i1 %tobool148.not.4, label %if.then149, label %for.inc151.4

for.inc151.4:                                     ; preds = %for.inc151.3
  %call143.5 = tail call fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %call, i32* noundef nonnull getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 5, i32 0)) #6
  %45 = load i32, i32* getelementptr inbounds ([6 x %struct.anon.0], [6 x %struct.anon.0]* @test_int_stack.exfinds, i64 0, i64 5, i32 1), align 4, !tbaa !10
  %call147.5 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call143.5, i32 noundef %45) #5
  %tobool148.not.5 = icmp eq i32 %call147.5, 0
  br i1 %tobool148.not.5, label %if.then149, label %for.inc151.5

for.inc151.5:                                     ; preds = %for.inc151.4
  %call154 = tail call fastcc i32* @sk_sint_shift(%struct.stack_st_sint* noundef %call) #6
  %46 = bitcast i32* %call154 to i8*
  %call155 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %46, i8* noundef bitcast (i32* getelementptr inbounds ([9 x i32], [9 x i32]* @test_int_stack.v, i64 0, i64 6) to i8*)) #5
  %tobool156.not = icmp ne i32 %call155, 0
  %spec.select = zext i1 %tobool156.not to i32
  br label %end

end:                                              ; preds = %cleanup82, %cleanup, %for.inc151.5, %if.end94, %for.inc85.4, %if.end12.8, %entry, %land.lhs.true, %if.then149, %if.then131, %if.then114, %if.then28, %if.then11
  %testresult.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.then28 ], [ 0, %cleanup ], [ 0, %cleanup82 ], [ 0, %if.then114 ], [ 0, %if.then131 ], [ 0, %if.then149 ], [ 0, %if.end94 ], [ 0, %for.inc85.4 ], [ 0, %if.end12.8 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %for.inc151.5 ]
  tail call fastcc void @sk_sint_free(%struct.stack_st_sint* noundef %call) #6
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uchar_stack(i32 noundef %reserve) #0 {
entry:
  %call = tail call fastcc %struct.stack_st_uchar* @sk_uchar_new() #6
  %0 = bitcast %struct.stack_st_uchar* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef %0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp = icmp sgt i32 %reserve, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mul = mul nsw i32 %reserve, 5
  %call2 = tail call fastcc i32 @sk_uchar_reserve(%struct.stack_st_uchar* noundef %call, i32 noundef %mul) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call8 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8, i32 noundef 0) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end12.4, %if.end12.3, %if.end12.2, %if.end12.1, %if.end12, %if.end
  %i.0148.lcssa.wide = phi i32 [ 0, %if.end ], [ 1, %if.end12 ], [ 2, %if.end12.1 ], [ 3, %if.end12.2 ], [ 4, %if.end12.3 ], [ 5, %if.end12.4 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 noundef %i.0148.lcssa.wide) #5
  br label %end

if.end12:                                         ; preds = %if.end
  tail call fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %call, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 0)) #6
  %call8.1 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call9.1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.1, i32 noundef 1) #5
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %if.then11, label %if.end12.1

if.end12.1:                                       ; preds = %if.end12
  tail call fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %call, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1)) #6
  %call8.2 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call9.2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.2, i32 noundef 2) #5
  %tobool10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool10.not.2, label %if.then11, label %if.end12.2

if.end12.2:                                       ; preds = %if.end12.1
  tail call fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %call, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 2)) #6
  %call8.3 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call9.3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.3, i32 noundef 3) #5
  %tobool10.not.3 = icmp eq i32 %call9.3, 0
  br i1 %tobool10.not.3, label %if.then11, label %if.end12.3

if.end12.3:                                       ; preds = %if.end12.2
  tail call fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %call, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 3)) #6
  %call8.4 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call9.4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.4, i32 noundef 4) #5
  %tobool10.not.4 = icmp eq i32 %call9.4, 0
  br i1 %tobool10.not.4, label %if.then11, label %if.end12.4

if.end12.4:                                       ; preds = %if.end12.3
  tail call fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %call, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 4)) #6
  %call8.5 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call9.5 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call8.5, i32 noundef 5) #5
  %tobool10.not.5 = icmp eq i32 %call9.5, 0
  br i1 %tobool10.not.5, label %if.then11, label %if.end12.5

if.end12.5:                                       ; preds = %if.end12.4
  tail call fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %call, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 5)) #6
  %call14 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call) #6
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call14, i32 noundef 6) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %if.end18

if.end18:                                         ; preds = %if.end12.5
  %call19 = tail call fastcc %struct.stack_st_uchar* @sk_uchar_dup(%struct.stack_st_uchar* noundef null) #6
  %call20 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call19) #6
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end24, label %end

if.end24:                                         ; preds = %if.end18
  tail call fastcc void @sk_uchar_free(%struct.stack_st_uchar* noundef %call19) #6
  %call25 = tail call fastcc %struct.stack_st_uchar* @sk_uchar_dup(%struct.stack_st_uchar* noundef %call) #6
  %call26 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call25) #6
  %call27 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call26, i32 noundef 6) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %if.end30

if.end30:                                         ; preds = %if.end24
  tail call fastcc void @sk_uchar_sort(%struct.stack_st_uchar* noundef %call25) #6
  %call35 = tail call fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %call) #6
  %call38 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call35, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 0)) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %for.inc42

if.then40:                                        ; preds = %for.inc42.4, %for.inc42.3, %for.inc42.2, %for.inc42.1, %for.inc42, %if.end30
  %i.1149.lcssa.wide = phi i32 [ 0, %if.end30 ], [ 1, %for.inc42 ], [ 2, %for.inc42.1 ], [ 3, %for.inc42.2 ], [ 4, %for.inc42.3 ], [ 5, %for.inc42.4 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i32 noundef %i.1149.lcssa.wide) #5
  br label %end

for.inc42:                                        ; preds = %if.end30
  %call35.1 = tail call fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %call) #6
  %call38.1 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call35.1, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1)) #5
  %tobool39.not.1 = icmp eq i32 %call38.1, 0
  br i1 %tobool39.not.1, label %if.then40, label %for.inc42.1

for.inc42.1:                                      ; preds = %for.inc42
  %call35.2 = tail call fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %call) #6
  %call38.2 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call35.2, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 2)) #5
  %tobool39.not.2 = icmp eq i32 %call38.2, 0
  br i1 %tobool39.not.2, label %if.then40, label %for.inc42.2

for.inc42.2:                                      ; preds = %for.inc42.1
  %call35.3 = tail call fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %call) #6
  %call38.3 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call35.3, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 3)) #5
  %tobool39.not.3 = icmp eq i32 %call38.3, 0
  br i1 %tobool39.not.3, label %if.then40, label %for.inc42.3

for.inc42.3:                                      ; preds = %for.inc42.2
  %call35.4 = tail call fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %call) #6
  %call38.4 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call35.4, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 4)) #5
  %tobool39.not.4 = icmp eq i32 %call38.4, 0
  br i1 %tobool39.not.4, label %if.then40, label %for.inc42.4

for.inc42.4:                                      ; preds = %for.inc42.3
  %call35.5 = tail call fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %call) #6
  %call38.5 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call35.5, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 5)) #5
  %tobool39.not.5 = icmp eq i32 %call38.5, 0
  br i1 %tobool39.not.5, label %if.then40, label %for.inc42.5

for.inc42.5:                                      ; preds = %for.inc42.4
  tail call fastcc void @sk_uchar_free(%struct.stack_st_uchar* noundef %call) #6
  %call45 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call25) #6
  %call46 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call45, i32 noundef 6) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %if.end49

if.end49:                                         ; preds = %for.inc42.5
  tail call fastcc void @sk_uchar_zero(%struct.stack_st_uchar* noundef %call25) #6
  %call50 = tail call fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %call25) #6
  %call51 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 noundef %call50, i32 noundef 0) #5
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %end, label %if.end54

if.end54:                                         ; preds = %if.end49
  tail call fastcc void @sk_uchar_insert(%struct.stack_st_uchar* noundef %call25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 0), i32 noundef 0) #6
  tail call fastcc void @sk_uchar_insert(%struct.stack_st_uchar* noundef %call25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 2), i32 noundef -1) #6
  tail call fastcc void @sk_uchar_insert(%struct.stack_st_uchar* noundef %call25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1), i32 noundef 1) #6
  %call62 = tail call fastcc i8* @sk_uchar_value(%struct.stack_st_uchar* noundef %call25, i32 noundef 0) #6
  %call65 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call62, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 0)) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %for.inc69

if.then67:                                        ; preds = %for.inc69.1, %for.inc69, %if.end54
  %i.2150.lcssa.wide = phi i32 [ 0, %if.end54 ], [ 1, %for.inc69 ], [ 2, %for.inc69.1 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i32 noundef %i.2150.lcssa.wide) #5
  br label %end

for.inc69:                                        ; preds = %if.end54
  %call62.1 = tail call fastcc i8* @sk_uchar_value(%struct.stack_st_uchar* noundef %call25, i32 noundef 1) #6
  %call65.1 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call62.1, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1)) #5
  %tobool66.not.1 = icmp eq i32 %call65.1, 0
  br i1 %tobool66.not.1, label %if.then67, label %for.inc69.1

for.inc69.1:                                      ; preds = %for.inc69
  %call62.2 = tail call fastcc i8* @sk_uchar_value(%struct.stack_st_uchar* noundef %call25, i32 noundef 2) #6
  %call65.2 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call62.2, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 2)) #5
  %tobool66.not.2 = icmp eq i32 %call65.2, 0
  br i1 %tobool66.not.2, label %if.then67, label %for.inc69.2

for.inc69.2:                                      ; preds = %for.inc69.1
  %call72 = tail call fastcc i8* @sk_uchar_delete(%struct.stack_st_uchar* noundef %call25, i32 noundef 12) #6
  %call73 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call72) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %end, label %if.end76

if.end76:                                         ; preds = %for.inc69.2
  %call77 = tail call fastcc i8* @sk_uchar_delete(%struct.stack_st_uchar* noundef %call25, i32 noundef 1) #6
  %call78 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* noundef %call77, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1)) #5
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %end, label %if.end81

if.end81:                                         ; preds = %if.end76
  tail call fastcc void @sk_uchar_set(%struct.stack_st_uchar* noundef %call25) #6
  %call87 = tail call fastcc i8* @sk_uchar_value(%struct.stack_st_uchar* noundef %call25, i32 noundef 0) #6
  %call90 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call87, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 0)) #5
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %for.inc94

if.then92:                                        ; preds = %for.inc94, %if.end81
  %i.3151.lcssa.wide = phi i32 [ 0, %if.end81 ], [ 1, %for.inc94 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i32 noundef %i.3151.lcssa.wide) #5
  br label %end

for.inc94:                                        ; preds = %if.end81
  %call87.1 = tail call fastcc i8* @sk_uchar_value(%struct.stack_st_uchar* noundef %call25, i32 noundef 1) #6
  %call90.1 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call87.1, i8* noundef nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1)) #5
  %tobool91.not.1 = icmp eq i32 %call90.1, 0
  br i1 %tobool91.not.1, label %if.then92, label %end

end:                                              ; preds = %for.inc94, %if.end76, %for.inc69.2, %if.end49, %for.inc42.5, %if.end24, %if.end18, %if.end12.5, %entry, %land.lhs.true, %if.then92, %if.then67, %if.then40, %if.then11
  %s.0 = phi %struct.stack_st_uchar* [ %call, %if.then11 ], [ %call, %if.end18 ], [ %call, %if.then40 ], [ null, %if.then67 ], [ null, %if.then92 ], [ null, %if.end76 ], [ null, %for.inc69.2 ], [ null, %if.end49 ], [ null, %for.inc42.5 ], [ %call, %if.end24 ], [ %call, %if.end12.5 ], [ %call, %land.lhs.true ], [ %call, %entry ], [ null, %for.inc94 ]
  %r.0 = phi %struct.stack_st_uchar* [ null, %if.then11 ], [ %call19, %if.end18 ], [ %call25, %if.then40 ], [ %call25, %if.then67 ], [ %call25, %if.then92 ], [ %call25, %if.end76 ], [ %call25, %for.inc69.2 ], [ %call25, %if.end49 ], [ %call25, %for.inc42.5 ], [ %call25, %if.end24 ], [ null, %if.end12.5 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call25, %for.inc94 ]
  %testresult.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end18 ], [ 0, %if.then40 ], [ 0, %if.then67 ], [ 0, %if.then92 ], [ 0, %if.end76 ], [ 0, %for.inc69.2 ], [ 0, %if.end49 ], [ 0, %for.inc42.5 ], [ 0, %if.end24 ], [ 0, %if.end12.5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %for.inc94 ]
  tail call fastcc void @sk_uchar_free(%struct.stack_st_uchar* noundef %r.0) #6
  tail call fastcc void @sk_uchar_free(%struct.stack_st_uchar* noundef %s.0) #6
  ret i32 %testresult.0
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_SS_stack() #0 {
entry:
  %v = alloca [10 x %struct.SS*], align 16
  %call = tail call fastcc %struct.stack_st_SS* @sk_SS_new_null() #6
  %0 = bitcast [10 x %struct.SS*]* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #7
  br label %for.body

for.body:                                         ; preds = %entry, %if.end14
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end14 ]
  %indvars156 = trunc i64 %indvars.iv to i32
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 282) #5
  %arrayidx = getelementptr inbounds [10 x %struct.SS*], [10 x %struct.SS*]* %v, i64 0, i64 %indvars.iv
  %1 = bitcast %struct.SS** %arrayidx to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !12
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* noundef %call1) #5
  %tobool.not = icmp eq i32 %call4, 0
  %2 = bitcast i8* %call1 to %struct.SS*
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %for.body
  %n7 = bitcast i8* %call1 to i32*
  store i32 %indvars156, i32* %n7, align 4, !tbaa !14
  %3 = trunc i64 %indvars.iv to i8
  %conv = add nuw nsw i8 %3, 65
  %4 = getelementptr inbounds i8, i8* %call1, i64 4
  store i8 %conv, i8* %4, align 4, !tbaa !16
  %call10 = tail call fastcc i32 @sk_SS_num(%struct.stack_st_SS* noundef %call) #6
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call10, i32 noundef %indvars156) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %indvars156.le = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 noundef %indvars156.le) #5
  br label %end

if.end14:                                         ; preds = %if.end
  tail call fastcc void @sk_SS_push(%struct.stack_st_SS* noundef %call, %struct.SS* noundef nonnull %2) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %if.end14
  %call18 = tail call fastcc i32 @sk_SS_num(%struct.stack_st_SS* noundef %call) #6
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call18, i32 noundef 10) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %end, label %if.end22

if.end22:                                         ; preds = %for.end
  %call23 = tail call fastcc %struct.stack_st_SS* @sk_SS_deep_copy(%struct.stack_st_SS* noundef null) #6
  %call24 = tail call fastcc i32 @sk_SS_num(%struct.stack_st_SS* noundef %call23) #6
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end28, label %end

if.end28:                                         ; preds = %if.end22
  tail call fastcc void @sk_SS_free(%struct.stack_st_SS* noundef %call23) #6
  %call29 = tail call fastcc %struct.stack_st_SS* @sk_SS_deep_copy(%struct.stack_st_SS* noundef %call) #6
  %5 = bitcast %struct.stack_st_SS* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i8* noundef %5) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %for.body37

for.body37:                                       ; preds = %if.end28, %for.inc61
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.inc61 ], [ 0, %if.end28 ]
  %6 = trunc i64 %indvars.iv157 to i32
  %call38 = tail call fastcc %struct.SS* @sk_SS_value(%struct.stack_st_SS* noundef %call29, i32 noundef %6) #6
  %7 = bitcast %struct.SS* %call38 to i8*
  %arrayidx40 = getelementptr inbounds [10 x %struct.SS*], [10 x %struct.SS*]* %v, i64 0, i64 %indvars.iv157
  %8 = bitcast %struct.SS** %arrayidx40 to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %call41 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* noundef %7, i8* noundef %9) #5
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body37
  %10 = trunc i64 %indvars.iv157 to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i32 noundef %10) #5
  br label %end

if.end44:                                         ; preds = %for.body37
  %n45 = getelementptr inbounds %struct.SS, %struct.SS* %call38, i64 0, i32 0
  %11 = load i32, i32* %n45, align 4, !tbaa !14
  %n48 = bitcast i8* %9 to i32*
  %12 = load i32, i32* %n48, align 4, !tbaa !14
  %call49 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i32 noundef %11, i32 noundef %12) #5
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end44
  %13 = trunc i64 %indvars.iv157 to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0), i32 noundef %13) #5
  br label %end

if.end52:                                         ; preds = %if.end44
  %c53 = getelementptr inbounds %struct.SS, %struct.SS* %call38, i64 0, i32 1
  %14 = load i8, i8* %c53, align 4, !tbaa !16
  %15 = getelementptr inbounds i8, i8* %9, i64 4
  %16 = load i8, i8* %15, align 4, !tbaa !16
  %call57 = tail call i32 @test_char_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i8 noundef signext %14, i8 noundef signext %16) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %for.inc61

if.then59:                                        ; preds = %if.end52
  %17 = trunc i64 %indvars.iv157 to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0), i32 noundef %17) #5
  br label %end

for.inc61:                                        ; preds = %if.end52
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %exitcond160.not = icmp eq i64 %indvars.iv.next158, 10
  br i1 %exitcond160.not, label %for.end63, label %for.body37, !llvm.loop !19

for.end63:                                        ; preds = %for.inc61
  tail call fastcc void @sk_SS_pop_free(%struct.stack_st_SS* noundef %call29) #6
  %arrayidx64 = getelementptr inbounds [10 x %struct.SS*], [10 x %struct.SS*]* %v, i64 0, i64 3
  %18 = load %struct.SS*, %struct.SS** %arrayidx64, align 8, !tbaa !12
  %call65 = tail call fastcc %struct.SS* @sk_SS_delete_ptr(%struct.stack_st_SS* noundef %call, %struct.SS* noundef %18) #6
  %19 = bitcast %struct.SS* %call65 to i8*
  %call66 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i8* noundef %19) #5
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %if.end69

if.end69:                                         ; preds = %for.end63
  tail call void @SS_free(%struct.SS* noundef %call65) #6
  %call70 = tail call fastcc i32 @sk_SS_num(%struct.stack_st_SS* noundef %call) #6
  %call71 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 noundef %call70, i32 noundef 9) #5
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %end, label %for.cond75

for.cond75:                                       ; preds = %if.end69, %for.body78
  %i.2 = phi i32 [ %add82, %for.body78 ], [ 0, %if.end69 ]
  %exitcond161.not = icmp eq i32 %i.2, 9
  br i1 %exitcond161.not, label %end, label %for.body78

for.body78:                                       ; preds = %for.cond75
  %call79 = tail call fastcc %struct.SS* @sk_SS_value(%struct.stack_st_SS* noundef %call, i32 noundef %i.2) #6
  %20 = bitcast %struct.SS* %call79 to i8*
  %cmp80 = icmp ult i32 %i.2, 3
  %add82 = add nuw nsw i32 %i.2, 1
  %cond = select i1 %cmp80, i32 %i.2, i32 %add82
  %idxprom83 = zext i32 %cond to i64
  %arrayidx84 = getelementptr inbounds [10 x %struct.SS*], [10 x %struct.SS*]* %v, i64 0, i64 %idxprom83
  %21 = bitcast %struct.SS** %arrayidx84 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !12
  %call85 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i8* noundef %20, i8* noundef %22) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %for.cond75, !llvm.loop !20

if.then87:                                        ; preds = %for.body78
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0), i32 noundef %i.2) #5
  br label %end

end:                                              ; preds = %for.body, %for.cond75, %if.end69, %for.end63, %if.end28, %if.end22, %for.end, %if.then87, %if.then59, %if.then51, %if.then43, %if.then13
  %r.0 = phi %struct.stack_st_SS* [ null, %if.then13 ], [ %call23, %if.end22 ], [ %call29, %if.then59 ], [ %call29, %if.then51 ], [ %call29, %if.then43 ], [ null, %if.then87 ], [ null, %if.end69 ], [ null, %for.end63 ], [ %call29, %if.end28 ], [ null, %for.end ], [ null, %for.cond75 ], [ null, %for.body ]
  %testresult.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.end22 ], [ 0, %if.then59 ], [ 0, %if.then51 ], [ 0, %if.then43 ], [ 0, %if.then87 ], [ 0, %if.end69 ], [ 0, %for.end63 ], [ 0, %if.end28 ], [ 0, %for.end ], [ 1, %for.cond75 ], [ 0, %for.body ]
  tail call fastcc void @sk_SS_pop_free(%struct.stack_st_SS* noundef %r.0) #6
  tail call fastcc void @sk_SS_pop_free(%struct.stack_st_SS* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #7
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_SU_stack() #0 {
entry:
  %v = alloca [10 x %union.SU], align 16
  %call = tail call fastcc %struct.stack_st_SU* @sk_SU_new_null() #6
  %0 = bitcast [10 x %union.SU]* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7
  br label %for.body

for.body:                                         ; preds = %entry, %if.end8
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end8 ]
  %indvars58 = trunc i64 %indvars.iv to i32
  %and = and i32 %indvars58, 1
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %n2 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 %indvars.iv, i32 0
  store i32 %indvars58, i32* %n2, align 4, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i8
  %conv = add nuw nsw i8 %1, 65
  %arrayidx4 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 %indvars.iv
  %c = bitcast %union.SU* %arrayidx4 to i8*
  store i8 %conv, i8* %c, align 4, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call fastcc i32 @sk_SU_num(%struct.stack_st_SU* noundef %call) #6
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call5, i32 noundef %indvars58) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %indvars58.le = trunc i64 %indvars.iv to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i32 noundef %indvars58.le) #5
  br label %end

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 %indvars.iv
  call fastcc void @sk_SU_push(%struct.stack_st_SU* noundef %call, %union.SU* noundef nonnull %add.ptr) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %if.end8
  %call10 = call fastcc i32 @sk_SU_num(%struct.stack_st_SU* noundef %call) #6
  %call11 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call10, i32 noundef 10) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %for.body18.preheader

for.body18.preheader:                             ; preds = %for.end
  %call19 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 0) #6
  %2 = bitcast %union.SU* %call19 to i8*
  %3 = bitcast [10 x %union.SU]* %v to i8*
  %call23 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2, i8* noundef nonnull %3) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %for.inc27

if.then25:                                        ; preds = %for.inc27.8, %for.inc27.7, %for.inc27.6, %for.inc27.5, %for.inc27.4, %for.inc27.3, %for.inc27.2, %for.inc27.1, %for.inc27, %for.body18.preheader
  %i.155.lcssa.wide = phi i32 [ 0, %for.body18.preheader ], [ 1, %for.inc27 ], [ 2, %for.inc27.1 ], [ 3, %for.inc27.2 ], [ 4, %for.inc27.3 ], [ 5, %for.inc27.4 ], [ 6, %for.inc27.5 ], [ 7, %for.inc27.6 ], [ 8, %for.inc27.7 ], [ 9, %for.inc27.8 ]
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), i32 noundef %i.155.lcssa.wide) #5
  br label %end

for.inc27:                                        ; preds = %for.body18.preheader
  %call19.1 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 1) #6
  %4 = bitcast %union.SU* %call19.1 to i8*
  %add.ptr22.1 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 1
  %5 = bitcast %union.SU* %add.ptr22.1 to i8*
  %call23.1 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %4, i8* noundef nonnull %5) #5
  %tobool24.not.1 = icmp eq i32 %call23.1, 0
  br i1 %tobool24.not.1, label %if.then25, label %for.inc27.1

for.inc27.1:                                      ; preds = %for.inc27
  %call19.2 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 2) #6
  %6 = bitcast %union.SU* %call19.2 to i8*
  %add.ptr22.2 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 2
  %7 = bitcast %union.SU* %add.ptr22.2 to i8*
  %call23.2 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %6, i8* noundef nonnull %7) #5
  %tobool24.not.2 = icmp eq i32 %call23.2, 0
  br i1 %tobool24.not.2, label %if.then25, label %for.inc27.2

for.inc27.2:                                      ; preds = %for.inc27.1
  %call19.3 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 3) #6
  %8 = bitcast %union.SU* %call19.3 to i8*
  %add.ptr22.3 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 3
  %9 = bitcast %union.SU* %add.ptr22.3 to i8*
  %call23.3 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %8, i8* noundef nonnull %9) #5
  %tobool24.not.3 = icmp eq i32 %call23.3, 0
  br i1 %tobool24.not.3, label %if.then25, label %for.inc27.3

for.inc27.3:                                      ; preds = %for.inc27.2
  %call19.4 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 4) #6
  %10 = bitcast %union.SU* %call19.4 to i8*
  %add.ptr22.4 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 4
  %11 = bitcast %union.SU* %add.ptr22.4 to i8*
  %call23.4 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %10, i8* noundef nonnull %11) #5
  %tobool24.not.4 = icmp eq i32 %call23.4, 0
  br i1 %tobool24.not.4, label %if.then25, label %for.inc27.4

for.inc27.4:                                      ; preds = %for.inc27.3
  %call19.5 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 5) #6
  %12 = bitcast %union.SU* %call19.5 to i8*
  %add.ptr22.5 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 5
  %13 = bitcast %union.SU* %add.ptr22.5 to i8*
  %call23.5 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %12, i8* noundef nonnull %13) #5
  %tobool24.not.5 = icmp eq i32 %call23.5, 0
  br i1 %tobool24.not.5, label %if.then25, label %for.inc27.5

for.inc27.5:                                      ; preds = %for.inc27.4
  %call19.6 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 6) #6
  %14 = bitcast %union.SU* %call19.6 to i8*
  %add.ptr22.6 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 6
  %15 = bitcast %union.SU* %add.ptr22.6 to i8*
  %call23.6 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %14, i8* noundef nonnull %15) #5
  %tobool24.not.6 = icmp eq i32 %call23.6, 0
  br i1 %tobool24.not.6, label %if.then25, label %for.inc27.6

for.inc27.6:                                      ; preds = %for.inc27.5
  %call19.7 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 7) #6
  %16 = bitcast %union.SU* %call19.7 to i8*
  %add.ptr22.7 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 7
  %17 = bitcast %union.SU* %add.ptr22.7 to i8*
  %call23.7 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %16, i8* noundef nonnull %17) #5
  %tobool24.not.7 = icmp eq i32 %call23.7, 0
  br i1 %tobool24.not.7, label %if.then25, label %for.inc27.7

for.inc27.7:                                      ; preds = %for.inc27.6
  %call19.8 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 8) #6
  %18 = bitcast %union.SU* %call19.8 to i8*
  %add.ptr22.8 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 8
  %19 = bitcast %union.SU* %add.ptr22.8 to i8*
  %call23.8 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %18, i8* noundef nonnull %19) #5
  %tobool24.not.8 = icmp eq i32 %call23.8, 0
  br i1 %tobool24.not.8, label %if.then25, label %for.inc27.8

for.inc27.8:                                      ; preds = %for.inc27.7
  %call19.9 = call fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %call, i32 noundef 9) #6
  %20 = bitcast %union.SU* %call19.9 to i8*
  %add.ptr22.9 = getelementptr inbounds [10 x %union.SU], [10 x %union.SU]* %v, i64 0, i64 9
  %21 = bitcast %union.SU* %add.ptr22.9 to i8*
  %call23.9 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %20, i8* noundef nonnull %21) #5
  %tobool24.not.9 = icmp eq i32 %call23.9, 0
  br i1 %tobool24.not.9, label %if.then25, label %end

end:                                              ; preds = %for.inc27.8, %for.end, %if.then25, %if.then7
  %testresult.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then25 ], [ 0, %for.end ], [ 1, %for.inc27.8 ]
  call fastcc void @sk_SU_free(%struct.stack_st_SU* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_sint* @sk_sint_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_sint*
  ret %struct.stack_st_sint* %0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_sint_reserve(%struct.stack_st_sint* noundef %sk, i32 noundef %n) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_reserve(%struct.stack_st* noundef %0, i32 noundef %n) #5
  ret i32 %call
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_sint_num(%struct.stack_st_sint* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_sint_push(%struct.stack_st_sint* noundef %sk, i32* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %1 = bitcast i32* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret void
}

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32* @sk_sint_value(%struct.stack_st_sint* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to i32*
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_sint_find(%struct.stack_st_sint* noundef %sk, i32* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %1 = bitcast i32* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_sint_find_ex(%struct.stack_st_sint* noundef %sk, i32* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %1 = bitcast i32* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find_ex(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_sint_is_sorted(%struct.stack_st_sint* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_is_sorted(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_sint_set_cmp_func(%struct.stack_st_sint* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %call = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %0, i32 (i8*, i8*)* noundef bitcast (i32 (i32**, i32**)* @int_compare to i32 (i8*, i8*)*)) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @int_compare(i32** nocapture noundef readonly %a, i32** nocapture noundef readonly %b) #3 {
entry:
  %0 = load i32*, i32** %a, align 8, !tbaa !12
  %1 = load i32, i32* %0, align 4, !tbaa !23
  %2 = load i32*, i32** %b, align 8, !tbaa !12
  %3 = load i32, i32* %2, align 4, !tbaa !23
  %cmp = icmp slt i32 %1, %3
  %cmp1 = icmp sgt i32 %1, %3
  %. = zext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_sint_sort(%struct.stack_st_sint* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32* @sk_sint_shift(%struct.stack_st_sint* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %0) #5
  %1 = bitcast i8* %call to i32*
  ret i32* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_sint_free(%struct.stack_st_sint* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_sint* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #5
  ret void
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_reserve(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_find_ex(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_is_sorted(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_uchar* @sk_uchar_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (i8**, i8**)* @uchar_compare to i32 (i8*, i8*)*)) #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_uchar*
  ret %struct.stack_st_uchar* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @uchar_compare(i8** nocapture noundef readonly %a, i8** nocapture noundef readonly %b) #3 {
entry:
  %0 = load i8*, i8** %a, align 8, !tbaa !12
  %1 = load i8, i8* %0, align 1, !tbaa !21
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %b, align 8, !tbaa !12
  %3 = load i8, i8* %2, align 1, !tbaa !21
  %conv1 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_uchar_reserve(%struct.stack_st_uchar* noundef %sk, i32 noundef %n) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_reserve(%struct.stack_st* noundef %0, i32 noundef %n) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_uchar_num(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_uchar_unshift(%struct.stack_st_uchar* noundef %sk, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_unshift(%struct.stack_st* noundef %0, i8* noundef %ptr) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_uchar* @sk_uchar_dup(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %0) #5
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_uchar*
  ret %struct.stack_st_uchar* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_uchar_free(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_uchar_sort(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sk_uchar_pop(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %0) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_uchar_zero(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_zero(%struct.stack_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_uchar_insert(%struct.stack_st_uchar* noundef %sk, i8* noundef %ptr, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %0, i8* noundef %ptr, i32 noundef %idx) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sk_uchar_value(%struct.stack_st_uchar* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  ret i8* %call
}

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sk_uchar_delete(%struct.stack_st_uchar* noundef %sk, i32 noundef %i) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_uchar_set(%struct.stack_st_uchar* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_uchar* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @test_uchar_stack.v, i64 0, i64 1)) #5
  ret void
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_unshift(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_zero(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_SS* @sk_SS_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_SS*
  ret %struct.stack_st_SS* %0
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_SS_num(%struct.stack_st_SS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_SS_push(%struct.stack_st_SS* noundef %sk, %struct.SS* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  %1 = bitcast %struct.SS* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_SS* @sk_SS_deep_copy(%struct.stack_st_SS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  %call = tail call %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef %0, i8* (i8*)* noundef bitcast (%struct.SS* (%struct.SS*)* @SS_copy to i8* (i8*)*), void (i8*)* noundef bitcast (void (%struct.SS*)* @SS_free to void (i8*)*)) #5
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_SS*
  ret %struct.stack_st_SS* %1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.SS* @SS_copy(%struct.SS* noundef %p) #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 260) #5
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.SS* %p to i8*
  %call1 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %0, i64 noundef 8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast i8* %call to %struct.SS*
  ret %struct.SS* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @SS_free(%struct.SS* noundef %p) #0 {
entry:
  %0 = bitcast %struct.SS* %p to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 noundef 268) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_SS_free(%struct.stack_st_SS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SS* @sk_SS_value(%struct.stack_st_SS* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.SS*
  ret %struct.SS* %1
}

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_char_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_SS_pop_free(%struct.stack_st_SS* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.SS*)* @SS_free to void (i8*)*)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SS* @sk_SS_delete_ptr(%struct.stack_st_SS* noundef %sk, %struct.SS* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SS* %sk to %struct.stack_st*
  %1 = bitcast %struct.SS* %ptr to i8*
  %call = tail call i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef %0, i8* noundef %1) #5
  %2 = bitcast i8* %call to %struct.SS*
  ret %struct.SS* %2
}

declare dso_local %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef, i8* (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_SU* @sk_SU_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_SU*
  ret %struct.stack_st_SU* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_SU_num(%struct.stack_st_SU* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SU* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_SU_push(%struct.stack_st_SU* noundef %sk, %union.SU* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SU* %sk to %struct.stack_st*
  %1 = bitcast %union.SU* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %union.SU* @sk_SU_value(%struct.stack_st_SU* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SU* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %union.SU*
  ret %union.SU* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_SU_free(%struct.stack_st_SU* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SU* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 4}
!4 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 8}
!9 = !{!4, !5, i64 12}
!10 = !{!11, !5, i64 4}
!11 = !{!"", !5, i64 0, !5, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"", !5, i64 0, !6, i64 4}
!16 = !{!15, !6, i64 4}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !18}
!23 = !{!5, !5, i64 0}
