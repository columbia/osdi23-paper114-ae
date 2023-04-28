; ModuleID = 'test/pbelutest.c'
source_filename = "test/pbelutest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [11 x i8] c"test_pbelu\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"test/pbelutest.c\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"EVP_PBE_find(pbe_type, pbe_nid, NULL, NULL, 0)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"i=%d, pbe_type=%d, pbe_nid=%d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PBE type=%d %d (%s): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_pbelu) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pbelu() #0 {
entry:
  %pbe_type = alloca i32, align 4
  %pbe_nid = alloca i32, align 4
  %0 = bitcast i32* %pbe_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast i32* %pbe_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %call46 = call i32 @EVP_PBE_get(i32* noundef nonnull %pbe_type, i32* noundef nonnull %pbe_nid, i64 noundef 0) #3
  %cmp.not47 = icmp eq i32 %call46, 0
  br i1 %cmp.not47, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %2 = load i32, i32* %pbe_type, align 4, !tbaa !3
  %3 = load i32, i32* %pbe_nid, align 4, !tbaa !3
  %call2 = call i32 @EVP_PBE_find(i32 noundef %2, i32 noundef %3, i32* noundef null, i32* noundef null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef null) #3
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv4) #3
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  %5 = load i32, i32* %pbe_type, align 4, !tbaa !3
  %6 = load i32, i32* %pbe_nid, align 4, !tbaa !3
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 noundef %4, i32 noundef %5, i32 noundef %6) #3
  %call1149 = call i32 @EVP_PBE_get(i32* noundef nonnull %pbe_type, i32* noundef nonnull %pbe_nid, i64 noundef 0) #3
  %cmp12.not50 = icmp eq i32 %call1149, 0
  br i1 %cmp12.not50, label %cleanup, label %for.body14

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %call = call i32 @EVP_PBE_get(i32* noundef nonnull %pbe_type, i32* noundef nonnull %pbe_nid, i64 noundef %indvars.iv.next) #3
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %cleanup, label %for.body, !llvm.loop !7

for.body14:                                       ; preds = %if.then, %for.cond9
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.cond9 ], [ 0, %if.then ]
  %last_nid.053 = phi i32 [ %16, %for.cond9 ], [ -1, %if.then ]
  %last_type.052 = phi i32 [ %15, %for.cond9 ], [ -1, %if.then ]
  %7 = load i32, i32* %pbe_type, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %7, %last_type.052
  br i1 %cmp15, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %for.body14
  %8 = load i32, i32* %pbe_nid, align 4, !tbaa !3
  %call2141 = call i8* @OBJ_nid2sn(i32 noundef %8) #3
  br label %11

lor.end:                                          ; preds = %for.body14
  %cmp17 = icmp eq i32 %7, %last_type.052
  %9 = load i32, i32* %pbe_nid, align 4
  %cmp19 = icmp slt i32 %9, %last_nid.053
  %10 = select i1 %cmp17, i1 %cmp19, i1 false
  %call21 = call i8* @OBJ_nid2sn(i32 noundef %9) #3
  br i1 %10, label %11, label %for.cond9

11:                                               ; preds = %lor.end.thread, %lor.end
  %call2143 = phi i8* [ %call2141, %lor.end.thread ], [ %call21, %lor.end ]
  %12 = phi i32 [ %8, %lor.end.thread ], [ %9, %lor.end ]
  br label %for.cond9

for.cond9:                                        ; preds = %lor.end, %11
  %call2142 = phi i8* [ %call2143, %11 ], [ %call21, %lor.end ]
  %13 = phi i32 [ %12, %11 ], [ %9, %lor.end ]
  %14 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %11 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %lor.end ]
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 noundef %7, i32 noundef %13, i8* noundef %call2142, i8* noundef nonnull %14) #3
  %15 = load i32, i32* %pbe_type, align 4, !tbaa !3
  %16 = load i32, i32* %pbe_nid, align 4, !tbaa !3
  %indvars.iv.next58 = add nuw i64 %indvars.iv57, 1
  %call11 = call i32 @EVP_PBE_get(i32* noundef nonnull %pbe_type, i32* noundef nonnull %pbe_nid, i64 noundef %indvars.iv.next58) #3
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %cleanup, label %for.body14, !llvm.loop !9

cleanup:                                          ; preds = %for.inc, %for.cond9, %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], [ 0, %for.cond9 ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @EVP_PBE_get(i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PBE_find(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !8}
