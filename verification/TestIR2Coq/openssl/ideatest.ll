; ModuleID = 'test/ideatest.c'
source_filename = "test/ideatest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idea_key_st = type { [9 x [6 x i32]] }

@.str = private unnamed_addr constant [14 x i8] c"test_idea_ecb\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"test_idea_cbc\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test_idea_cfb64\00", align 1
@k = internal constant [16 x i8] c"\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08", align 16
@in = internal constant [8 x i8] c"\00\00\00\01\00\02\00\03", align 1
@out = internal global [80 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"test/ideatest.c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@c = internal constant [8 x i8] c"\11\FB\ED+\01\98m\E5", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@text = internal constant [30 x i8] c"Hello to all people out there\00", align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@cfb_key = internal constant [16 x i8] c"\E1\F0\C3\D2\A5\B4\87\96ixKZ-<\0F\1E", align 16
@cfb_tmp = internal global [8 x i8] zeroinitializer, align 1
@plain = internal constant [24 x i8] c"Now is the time for all ", align 16
@cfb_buf1 = internal global [40 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [13 x i8] c"cfb_cipher64\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cfb_buf1\00", align 1
@cfb_cipher64 = internal constant [24 x i8] c"Y\D8\E2e\00Xl?,\17%\D0\1A8\B7*9a7\DCy\FB\9FE", align 16
@cfb_buf2 = internal global [40 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"cfb_buf2\00", align 1
@cfb_iv = internal constant <{ [8 x i8], [72 x i8] }> <{ [8 x i8] c"4\12xV\AB\90\EF\CD", [72 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_idea_ecb) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_idea_cbc) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_idea_cfb64) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_idea_ecb() #0 {
entry:
  %key = alloca %struct.idea_key_st, align 4
  %dkey = alloca %struct.idea_key_st, align 4
  %0 = bitcast %struct.idea_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %0) #5
  %1 = bitcast %struct.idea_key_st* %dkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %1) #5
  call void @IDEA_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @k, i64 0, i64 0), %struct.idea_key_st* noundef nonnull %key) #4
  call void @IDEA_ecb_encrypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), %struct.idea_key_st* noundef nonnull %key) #4
  %call = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @c, i64 0, i64 0), i64 noundef 8) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @IDEA_set_decrypt_key(%struct.idea_key_st* noundef nonnull %key, %struct.idea_key_st* noundef nonnull %dkey) #4
  call void @IDEA_ecb_encrypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @c, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), %struct.idea_key_st* noundef nonnull %dkey) #4
  %call1 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 0), i64 noundef 8) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_idea_cbc() #0 {
entry:
  %key = alloca %struct.idea_key_st, align 4
  %dkey = alloca %struct.idea_key_st, align 4
  %iv = alloca [8 x i8], align 1
  %0 = bitcast %struct.idea_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %0) #5
  %1 = bitcast %struct.idea_key_st* %dkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %1) #5
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  call void @IDEA_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @k, i64 0, i64 0), %struct.idea_key_st* noundef nonnull %key) #4
  call void @IDEA_set_decrypt_key(%struct.idea_key_st* noundef nonnull %key, %struct.idea_key_st* noundef nonnull %dkey) #4
  %call = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @k, i64 0, i64 0), i64 noundef 8) #4
  call void @IDEA_cbc_encrypt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @text, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), i64 noundef 30, %struct.idea_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 1) #4
  %call3 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @k, i64 0, i64 0), i64 noundef 8) #4
  call void @IDEA_cbc_encrypt(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), i64 noundef 8, %struct.idea_key_st* noundef nonnull %dkey, i8* noundef nonnull %2, i32 noundef 0) #4
  call void @IDEA_cbc_encrypt(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 8), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 8), i64 noundef 22, %struct.idea_key_st* noundef nonnull %dkey, i8* noundef nonnull %2, i32 noundef 0) #4
  %call6 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @text, i64 0, i64 0), i64 noundef 30, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @out, i64 0, i64 0), i64 noundef 30) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %0) #5
  ret i32 %call6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_idea_cfb64() #0 {
entry:
  %eks = alloca %struct.idea_key_st, align 4
  %dks = alloca %struct.idea_key_st, align 4
  %n = alloca i32, align 4
  %0 = bitcast %struct.idea_key_st* %eks to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %0) #5
  %1 = bitcast %struct.idea_key_st* %dks to i8*
  call void @llvm.lifetime.start.p0i8(i64 216, i8* nonnull %1) #5
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  call void @IDEA_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cfb_key, i64 0, i64 0), %struct.idea_key_st* noundef nonnull %eks) #4
  call void @IDEA_set_decrypt_key(%struct.idea_key_st* noundef nonnull %eks, %struct.idea_key_st* noundef nonnull %dks) #4
  %call = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds (<{ [8 x i8], [72 x i8] }>, <{ [8 x i8], [72 x i8] }>* @cfb_iv, i64 0, i32 0, i64 0), i64 noundef 8) #4
  store i32 0, i32* %n, align 4, !tbaa !3
  call void @IDEA_cfb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 12, %struct.idea_key_st* noundef nonnull %eks, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i32* noundef nonnull %n, i32 noundef 1) #4
  call void @IDEA_cfb64_encrypt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 12), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 12), i64 noundef 12, %struct.idea_key_st* noundef nonnull %eks, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i32* noundef nonnull %n, i32 noundef 1) #4
  %call1 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @cfb_cipher64, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i64 noundef 24) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i8* @memcpy(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i8* noundef getelementptr inbounds (<{ [8 x i8], [72 x i8] }>, <{ [8 x i8], [72 x i8] }>* @cfb_iv, i64 0, i32 0, i64 0), i64 noundef 8) #4
  store i32 0, i32* %n, align 4, !tbaa !3
  call void @IDEA_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 13, %struct.idea_key_st* noundef nonnull %eks, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i32* noundef nonnull %n, i32 noundef 0) #4
  call void @IDEA_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf1, i64 0, i64 13), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 13), i64 noundef 11, %struct.idea_key_st* noundef nonnull %eks, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @cfb_tmp, i64 0, i64 0), i32* noundef nonnull %n, i32 noundef 0) #4
  %call3 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @plain, i64 0, i64 0), i64 noundef 24, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cfb_buf2, i64 0, i64 0), i64 noundef 24) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 216, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @IDEA_set_encrypt_key(i8* noundef, %struct.idea_key_st* noundef) local_unnamed_addr #1

declare dso_local void @IDEA_ecb_encrypt(i8* noundef, i8* noundef, %struct.idea_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @IDEA_set_decrypt_key(%struct.idea_key_st* noundef, %struct.idea_key_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @IDEA_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.idea_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @IDEA_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.idea_key_st* noundef, i8* noundef, i32* noundef, i32 noundef) local_unnamed_addr #1

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
