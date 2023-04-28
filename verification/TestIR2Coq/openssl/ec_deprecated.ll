; ModuleID = 'crypto/ec/ec_deprecated.c'
source_filename = "crypto/ec/ec_deprecated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type opaque
%struct.ec_point_st = type opaque
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [26 x i8] c"crypto/ec/ec_deprecated.c\00", align 1
@__func__.EC_POINT_bn2point = private unnamed_addr constant [18 x i8] c"EC_POINT_bn2point\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @EC_POINT_point2bn(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, %struct.bignum_st* noundef %ret, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %call = call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8** noundef nonnull %buf, %struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf, align 8, !tbaa !4
  %conv = trunc i64 %call to i32
  %call1 = call %struct.bignum_st* @BN_bin2bn(i8* noundef %1, i32 noundef %conv, %struct.bignum_st* noundef %ret) #4
  %2 = load i8*, i8** %buf, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.bignum_st* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_point_st* @EC_POINT_bn2point(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %bn, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %bn) #4
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %add.off = add i32 %call, 14
  %0 = icmp ult i32 %add.off, 15
  %narrow = select i1 %0, i32 1, i32 %div
  %spec.store.select = sext i32 %narrow to i64
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %spec.store.select, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #4
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EC_POINT_bn2point, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call8 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef %bn, i8* noundef nonnull %call2, i32 noundef %narrow) #4
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp eq %struct.ec_point_st* %point, null
  br i1 %cmp11, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end10
  %call14 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #4
  %cmp15 = icmp eq %struct.ec_point_st* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then13
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #4
  br label %cleanup

if.end19:                                         ; preds = %if.end10, %if.then13
  %ret.0 = phi %struct.ec_point_st* [ %call14, %if.then13 ], [ %point, %if.end10 ]
  %call20 = tail call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %ret.0, i8* noundef nonnull %call2, i64 noundef %spec.store.select, %struct.bignum_ctx* noundef %ctx) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end19
  %cmp23.not = icmp eq %struct.ec_point_st* %ret.0, %point
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then22
  tail call void @EC_POINT_clear_free(%struct.ec_point_st* noundef nonnull %ret.0) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then22
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 71) #4
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end26, %if.then17, %if.then9, %if.then5
  %retval.0 = phi %struct.ec_point_st* [ null, %if.then5 ], [ null, %if.then17 ], [ %ret.0, %if.end27 ], [ null, %if.end26 ], [ null, %if.then9 ]
  ret %struct.ec_point_st* %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @EC_POINT_clear_free(%struct.ec_point_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
