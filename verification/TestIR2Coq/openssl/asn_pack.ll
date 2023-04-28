; ModuleID = 'crypto/asn1/asn_pack.c'
source_filename = "crypto/asn1/asn_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ITEM_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/asn_pack.c\00", align 1
@__func__.ASN1_item_pack = private unnamed_addr constant [15 x i8] c"ASN1_item_pack\00", align 1
@__func__.ASN1_item_unpack = private unnamed_addr constant [17 x i8] c"ASN1_item_unpack\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_item_pack(i8* noundef %obj, %struct.ASN1_ITEM_st* noundef %it, %struct.asn1_string_st** noundef %oct) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st** %oct, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #3
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ASN1_item_pack, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %octmp.0 = phi %struct.asn1_string_st* [ %call, %if.then ], [ %0, %lor.lhs.false ]
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %octmp.0, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 29) #3
  store i8* null, i8** %data, align 8, !tbaa !8
  %2 = bitcast i8* %obj to %struct.ASN1_VALUE_st*
  %call7 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %2, i8** noundef nonnull %data, %struct.ASN1_ITEM_st* noundef %it) #3
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %octmp.0, i64 0, i32 0
  store i32 %call7, i32* %length, align 8, !tbaa !12
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end4
  %3 = load i8*, i8** %data, align 8, !tbaa !8
  %cmp12 = icmp eq i8* %3, null
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  br i1 %cmp, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !4
  %cmp16 = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp16, label %if.then17, label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  store %struct.asn1_string_st* %octmp.0, %struct.asn1_string_st** %oct, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.end10, %if.end4
  %.sink39 = phi i32 [ 33, %if.end4 ], [ 37, %if.end10 ]
  %.sink = phi i32 [ 112, %if.end4 ], [ 786688, %if.end10 ]
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ASN1_item_pack, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #3
  br i1 %cmp, label %if.then22, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %err
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !4
  %cmp21 = icmp eq %struct.asn1_string_st* %5, null
  br i1 %cmp21, label %if.then22, label %cleanup

if.then22:                                        ; preds = %lor.lhs.false20, %err
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %octmp.0) #3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false20, %if.then22, %if.end14, %land.lhs.true, %if.then17, %if.then3
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then3 ], [ %octmp.0, %if.then17 ], [ %octmp.0, %land.lhs.true ], [ %octmp.0, %if.end14 ], [ null, %if.then22 ], [ null, %lor.lhs.false20 ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_item_unpack(%struct.asn1_string_st* nocapture noundef readonly %oct, %struct.ASN1_ITEM_st* noundef %it) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !8
  store i8* %1, i8** %p, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %oct, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !12
  %conv = sext i32 %2 to i64
  %call = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %it) #3
  %cmp = icmp eq %struct.ASN1_VALUE_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ASN1_item_unpack, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 110, i8* noundef null) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast %struct.ASN1_VALUE_st* %call to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i8* %3
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !11, i64 16}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 0}
