; ModuleID = 'test/pkey_meth_test.c'
source_filename = "test/pkey_meth_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_method_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"test_asn1_meths\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test_pkey_meths\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"test/pkey_meth_test.c\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_ASN1_METHOD table out of order\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<NO NAME>\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%d : %s : %s\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"EVP_PKEY_METHOD table out of order\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d : %s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_asn1_meths) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_pkey_meths) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_asn1_meths() #0 {
entry:
  %pkey_id = alloca i32, align 4
  %info = alloca i8*, align 8
  %0 = bitcast i32* %pkey_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %call30 = call i32 @EVP_PKEY_asn1_get_count() #3
  %cmp31 = icmp sgt i32 %call30, 0
  br i1 %cmp31, label %for.body, label %if.end18

for.body:                                         ; preds = %entry, %for.body
  %good.034 = phi i32 [ %spec.select, %for.body ], [ 1, %entry ]
  %prev.033 = phi i32 [ %1, %for.body ], [ -1, %entry ]
  %i.032 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call1 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %i.032) #3
  %call2 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef %call1) #3
  %1 = load i32, i32* %pkey_id, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %1, %prev.033
  %spec.select = select i1 %cmp3, i32 0, i32 %good.034
  %inc = add nuw nsw i32 %i.032, 1
  %call = call i32 @EVP_PKEY_asn1_get_count() #3
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !7

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.then4, label %if.end18

if.then4:                                         ; preds = %for.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #3
  %call635 = call i32 @EVP_PKEY_asn1_get_count() #3
  %cmp736 = icmp sgt i32 %call635, 0
  br i1 %cmp736, label %for.body8.lr.ph, label %if.end18

for.body8.lr.ph:                                  ; preds = %if.then4
  %2 = bitcast i8** %info to i8*
  br label %for.body8

for.body8:                                        ; preds = %for.body8.lr.ph, %if.end13
  %i.137 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc16, %if.end13 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %call9 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %i.137) #3
  %call10 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, i32* noundef null, i8** noundef nonnull %info, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef %call9) #3
  %3 = load i8*, i8** %info, align 8, !tbaa !9
  %cmp11 = icmp eq i8* %3, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %info, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.body8
  %4 = load i32, i32* %pkey_id, align 4, !tbaa !3
  %call14 = call i8* @OBJ_nid2ln(i32 noundef %4) #3
  %5 = load i8*, i8** %info, align 8, !tbaa !9
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 noundef %4, i8* noundef %call14, i8* noundef %5) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  %inc16 = add nuw nsw i32 %i.137, 1
  %call6 = call i32 @EVP_PKEY_asn1_get_count() #3
  %cmp7 = icmp slt i32 %inc16, %call6
  br i1 %cmp7, label %for.body8, label %if.end18, !llvm.loop !11

if.end18:                                         ; preds = %if.end13, %entry, %if.then4, %for.end
  %good.0.lcssa40 = phi i32 [ 0, %if.then4 ], [ %spec.select, %for.end ], [ 1, %entry ], [ %spec.select, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %good.0.lcssa40
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkey_meths() #0 {
entry:
  %pkey_id = alloca i32, align 4
  %0 = bitcast i32* %pkey_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %call25 = call i64 @EVP_PKEY_meth_get_count() #3
  %cmp26.not = icmp eq i64 %call25, 0
  br i1 %cmp26.not, label %if.end13, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %good.029 = phi i32 [ %spec.select, %for.body ], [ 1, %entry ]
  %prev.028 = phi i32 [ %1, %for.body ], [ -1, %entry ]
  %i.027 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %call1 = call %struct.evp_pkey_method_st* @EVP_PKEY_meth_get0(i64 noundef %i.027) #3
  call void @EVP_PKEY_meth_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, %struct.evp_pkey_method_st* noundef %call1) #3
  %1 = load i32, i32* %pkey_id, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %prev.028
  %spec.select = select i1 %cmp2, i32 0, i32 %good.029
  %inc = add nuw i64 %i.027, 1
  %call = call i64 @EVP_PKEY_meth_get_count() #3
  %cmp = icmp ult i64 %inc, %call
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.then3, label %if.end13

if.then3:                                         ; preds = %for.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0)) #3
  %call530 = call i64 @EVP_PKEY_meth_get_count() #3
  %cmp631.not = icmp eq i64 %call530, 0
  br i1 %cmp631.not, label %if.end13, label %for.body7

for.body7:                                        ; preds = %if.then3, %for.body7
  %i.132 = phi i64 [ %inc11, %for.body7 ], [ 0, %if.then3 ]
  %call8 = call %struct.evp_pkey_method_st* @EVP_PKEY_meth_get0(i64 noundef %i.132) #3
  call void @EVP_PKEY_meth_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, %struct.evp_pkey_method_st* noundef %call8) #3
  %2 = load i32, i32* %pkey_id, align 4, !tbaa !3
  %call9 = call i8* @OBJ_nid2ln(i32 noundef %2) #3
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %2, i8* noundef %call9) #3
  %inc11 = add nuw i64 %i.132, 1
  %call5 = call i64 @EVP_PKEY_meth_get_count() #3
  %cmp6 = icmp ult i64 %inc11, %call5
  br i1 %cmp6, label %for.body7, label %if.end13, !llvm.loop !13

if.end13:                                         ; preds = %for.body7, %entry, %if.then3, %for.end
  %good.0.lcssa35 = phi i32 [ 0, %if.then3 ], [ %spec.select, %for.end ], [ 1, %entry ], [ %spec.select, %for.body7 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %good.0.lcssa35
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @EVP_PKEY_asn1_get_count() local_unnamed_addr #1

declare dso_local %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i64 @EVP_PKEY_meth_get_count() local_unnamed_addr #1

declare dso_local %struct.evp_pkey_method_st* @EVP_PKEY_meth_get0(i64 noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_meth_get0_info(i32* noundef, i32* noundef, %struct.evp_pkey_method_st* noundef) local_unnamed_addr #1

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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
