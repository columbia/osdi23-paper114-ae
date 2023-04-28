; ModuleID = 'test/rc4test.c'
source_filename = "test/rc4test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_key_st = type { i32, i32, [256 x i32] }
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

@.str = private unnamed_addr constant [17 x i8] c"test_rc4_encrypt\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test_rc4_end_processing\00", align 1
@data_len = internal unnamed_addr constant [6 x i8] c"\08\08\08\14\1C\0A", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"test_rc4_multi_call\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test_rc_bulk\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"test/rc4test.c\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"obuf\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"output[i]\00", align 1
@keys = internal global <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }> <{ <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ i8, [29 x i8] }> <{ i8 8, [29 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 4, i8 -17, i8 1, i8 35, i8 69, [25 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 4, i8 -17, i8 1, i8 35, i8 69, [25 x i8] zeroinitializer }> }>, align 16
@data = internal global <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }> <{ <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\01#Eg\89\AB\CD\EF\FF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\FF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\FF", [21 x i8] zeroinitializer }>, <{ [21 x i8], [9 x i8] }> <{ [21 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF", [9 x i8] zeroinitializer }>, [30 x i8] c"\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\FF\00", <{ [11 x i8], [19 x i8] }> <{ [11 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF", [19 x i8] zeroinitializer }> }>, align 16
@output = internal global <{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }> }> <{ <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"u\B7\87\80\99\E0\C5\96", [22 x i8] zeroinitializer }>, <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"t\94\C2\E7\10K\08y", [22 x i8] zeroinitializer }>, <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"\DE\18\89A\A37]:", [22 x i8] zeroinitializer }>, <{ [20 x i8], [10 x i8] }> <{ [20 x i8] c"\D6\A1A\A7\EC<8\DF\BDaZ\11b\E1\C7\BA6\B6xX", [10 x i8] zeroinitializer }>, [30 x i8] c"f\A0\94\9F\8A\F7\D6\89\1F\7F\83+\A83\C0\0C\89.\BE0\14<\E2\87@\01\1E\CF\00\00", <{ [10 x i8], [20 x i8] }> <{ [10 x i8] c"\D6\A1A\A7\EC<8\DF\BDa", [20 x i8] zeroinitializer }> }>, align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"output[3]\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"obuf[i]\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@test_rc_bulk.expected = internal global [20 x i8] c"\A4{\CC\00=\D0\BD\E1\AC_\12\1EE\BC\FB\1A\A1\F2\7F\C5", align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"expected\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rc4_encrypt, i32 noundef 6, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rc4_end_processing, i32 noundef 20, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rc4_multi_call, i32 noundef 20, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_rc_bulk) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc4_encrypt(i32 noundef %i) #0 {
entry:
  %obuf = alloca [512 x i8], align 16
  %key = alloca %struct.rc4_key_st, align 4
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %obuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #5
  %1 = bitcast %struct.rc4_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 1032, i8* nonnull %1) #5
  %idxprom = sext i32 %i to i64
  %arrayidx1 = getelementptr inbounds [6 x [30 x i8]], [6 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys to [6 x [30 x i8]]*), i64 0, i64 %idxprom, i64 0
  %2 = load i8, i8* %arrayidx1, align 2, !tbaa !3
  %conv = zext i8 %2 to i32
  %arrayidx4 = getelementptr inbounds [6 x [30 x i8]], [6 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys to [6 x [30 x i8]]*), i64 0, i64 %idxprom, i64 1
  call void @RC4_set_key(%struct.rc4_key_st* noundef nonnull %key, i32 noundef %conv, i8* noundef nonnull %arrayidx4) #4
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 512) #4
  %arrayidx6 = getelementptr inbounds [6 x i8], [6 x i8]* @data_len, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx6, align 1, !tbaa !3
  %conv7 = zext i8 %3 to i64
  %arrayidx10 = getelementptr inbounds [6 x [30 x i8]], [6 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>* @data to [6 x [30 x i8]]*), i64 0, i64 %idxprom, i64 0
  call void @RC4(%struct.rc4_key_st* noundef nonnull %key, i64 noundef %conv7, i8* noundef %arrayidx10, i8* noundef nonnull %0) #4
  %add = add nuw nsw i64 %conv7, 1
  %arraydecay19 = getelementptr inbounds [6 x [30 x i8]], [6 x [30 x i8]]* bitcast (<{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }> }>* @output to [6 x [30 x i8]]*), i64 0, i64 %idxprom, i64 0
  %call25 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %add, i8* noundef %arraydecay19, i64 noundef %add) #4
  call void @llvm.lifetime.end.p0i8(i64 1032, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #5
  ret i32 %call25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc4_end_processing(i32 noundef %i) #0 {
entry:
  %obuf = alloca [512 x i8], align 16
  %key = alloca %struct.rc4_key_st, align 4
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %obuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #5
  %1 = bitcast %struct.rc4_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 1032, i8* nonnull %1) #5
  %2 = load i8, i8* getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys, i64 0, i32 3, i32 0), align 2, !tbaa !3
  %conv = zext i8 %2 to i32
  call void @RC4_set_key(%struct.rc4_key_st* noundef nonnull %key, i32 noundef %conv, i8* noundef getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys, i64 0, i32 3, i32 1)) #4
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 512) #4
  %conv1 = sext i32 %i to i64
  call void @RC4(%struct.rc4_key_st* noundef nonnull %key, i64 noundef %conv1, i8* noundef getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>* @data, i64 0, i32 3, i32 0, i64 0), i8* noundef nonnull %0) #4
  %call6 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv1, i8* noundef getelementptr inbounds (<{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }> }>, <{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }> }>* @output, i64 0, i32 3, i32 0, i64 0), i64 noundef %conv1) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %obuf, i64 0, i64 %conv1
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !3
  %call7 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8 noundef zeroext %3, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call7, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 1032, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc4_multi_call(i32 noundef %i) #0 {
entry:
  %obuf = alloca [512 x i8], align 16
  %key = alloca %struct.rc4_key_st, align 4
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %obuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #5
  %1 = bitcast %struct.rc4_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 1032, i8* nonnull %1) #5
  %2 = load i8, i8* getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys, i64 0, i32 3, i32 0), align 2, !tbaa !3
  %conv = zext i8 %2 to i32
  call void @RC4_set_key(%struct.rc4_key_st* noundef nonnull %key, i32 noundef %conv, i8* noundef getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys, i64 0, i32 3, i32 1)) #4
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 512) #4
  %conv1 = sext i32 %i to i64
  call void @RC4(%struct.rc4_key_st* noundef nonnull %key, i64 noundef %conv1, i8* noundef getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>* @data, i64 0, i32 3, i32 0, i64 0), i8* noundef nonnull %0) #4
  %sub = sub nsw i32 20, %i
  %conv4 = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }> }>* @data, i64 0, i32 3, i32 0, i64 %conv1
  %arrayidx6 = getelementptr inbounds [512 x i8], [512 x i8]* %obuf, i64 0, i64 %conv1
  call void @RC4(%struct.rc4_key_st* noundef nonnull %key, i64 noundef %conv4, i8* noundef nonnull %arrayidx, i8* noundef nonnull %arrayidx6) #4
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 21, i8* noundef getelementptr inbounds (<{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }> }>, <{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }> }>* @output, i64 0, i32 3, i32 0, i64 0), i64 noundef 21) #4
  call void @llvm.lifetime.end.p0i8(i64 1032, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #5
  ret i32 %call13
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc_bulk() #0 {
entry:
  %key = alloca %struct.rc4_key_st, align 4
  %buf = alloca [513 x i8], align 16
  %c = alloca %struct.SHAstate_st, align 4
  %md = alloca [20 x i8], align 16
  %0 = bitcast %struct.rc4_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 1032, i8* nonnull %0) #5
  %1 = getelementptr inbounds [513 x i8], [513 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 513, i8* nonnull %1) #5
  %2 = bitcast %struct.SHAstate_st* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #5
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #5
  %4 = load i8, i8* getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys, i64 0, i32 0, i32 0, i64 0), align 16, !tbaa !3
  %conv = zext i8 %4 to i32
  call void @RC4_set_key(%struct.rc4_key_st* noundef nonnull %key, i32 noundef %conv, i8* noundef getelementptr inbounds (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>, <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> }>* @keys, i64 0, i32 3, i32 1)) #4
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 513) #4
  %call1 = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %c) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @RC4(%struct.rc4_key_st* noundef nonnull %key, i64 noundef 513, i8* noundef nonnull %1, i8* noundef nonnull %1) #4
  %call6 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %c, i8* noundef nonnull %1, i64 noundef 513) #4
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 2571
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !6

for.end:                                          ; preds = %for.body
  %call8 = call i32 @SHA1_Final(i8* noundef nonnull %3, %struct.SHAstate_st* noundef nonnull %c) #4
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 20, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @test_rc_bulk.expected, i64 0, i64 0), i64 noundef 20) #4
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 513, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 1032, i8* nonnull %0) #5
  ret i32 %call10
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @RC4_set_key(%struct.rc4_key_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @RC4(%struct.rc4_key_st* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_uchar_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SHA1_Update(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @SHA1_Final(i8* noundef, %struct.SHAstate_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
