; ModuleID = 'crypto/objects/obj_lib.c'
source_filename = "crypto/objects/obj_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"crypto/objects/obj_lib.c\00", align 1
@__func__.OBJ_dup = private unnamed_addr constant [8 x i8] c"OBJ_dup\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_object_st* @OBJ_dup(%struct.asn1_object_st* noundef readonly %o) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_object_st* %o, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 5
  %0 = load i32, i32* %flags, align 8, !tbaa !4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call = tail call %struct.asn1_object_st* @ASN1_OBJECT_new() #4
  %cmp3 = icmp eq %struct.asn1_object_st* %call, null
  br i1 %cmp3, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end2
  %1 = load i32, i32* %flags, align 8, !tbaa !4
  %or = or i32 %1, 13
  %flags7 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call, i64 0, i32 5
  store i32 %or, i32* %flags7, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 3
  %2 = load i32, i32* %length, align 4, !tbaa !10
  %cmp8 = icmp sgt i32 %2, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %data = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 4
  %3 = load i8*, i8** %data, align 8, !tbaa !11
  %conv62 = zext i32 %2 to i64
  %call10 = tail call i8* @CRYPTO_memdup(i8* noundef %3, i64 noundef %conv62, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #4
  %data11 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call, i64 0, i32 4
  store i8* %call10, i8** %data11, align 8, !tbaa !11
  %cmp12 = icmp eq i8* %call10, null
  br i1 %cmp12, label %err, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i32, i32* %length, align 4, !tbaa !10
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end5
  %4 = phi i32 [ %.pre, %land.lhs.true.if.end15_crit_edge ], [ %2, %if.end5 ]
  %length17 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call, i64 0, i32 3
  store i32 %4, i32* %length17, align 4, !tbaa !10
  %nid = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 2
  %5 = load i32, i32* %nid, align 8, !tbaa !12
  %nid18 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call, i64 0, i32 2
  store i32 %5, i32* %nid18, align 8, !tbaa !12
  %ln = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 1
  %6 = load i8*, i8** %ln, align 8, !tbaa !13
  %cmp19.not = icmp eq i8* %6, null
  br i1 %cmp19.not, label %if.end28, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end15
  %call23 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #4
  %ln24 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call, i64 0, i32 1
  store i8* %call23, i8** %ln24, align 8, !tbaa !13
  %cmp25 = icmp eq i8* %call23, null
  br i1 %cmp25, label %err, label %if.end28

if.end28:                                         ; preds = %land.lhs.true21, %if.end15
  %sn = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %o, i64 0, i32 0
  %7 = load i8*, i8** %sn, align 8, !tbaa !14
  %cmp29.not = icmp eq i8* %7, null
  br i1 %cmp29.not, label %cleanup, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end28
  %call33 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 47) #4
  %sn34 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %call, i64 0, i32 0
  store i8* %call33, i8** %sn34, align 8, !tbaa !14
  %cmp35 = icmp eq i8* %call33, null
  br i1 %cmp35, label %err, label %cleanup

err:                                              ; preds = %land.lhs.true31, %land.lhs.true21, %land.lhs.true
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end2, %err
  %.sink63 = phi i32 [ 53, %err ], [ 28, %if.end2 ]
  %.sink = phi i32 [ 786688, %err ], [ 524301, %if.end2 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink63, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.OBJ_dup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 8, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28, %land.lhs.true31, %if.end, %entry
  %retval.0 = phi %struct.asn1_object_st* [ null, %entry ], [ %o, %if.end ], [ %call, %land.lhs.true31 ], [ %call, %if.end28 ], [ null, %cleanup.sink.split ]
  ret %struct.asn1_object_st* %retval.0
}

declare %struct.asn1_object_st* @ASN1_OBJECT_new() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @OBJ_cmp(%struct.asn1_object_st* nocapture noundef readonly %a, %struct.asn1_object_st* nocapture noundef readonly %b) local_unnamed_addr #2 {
entry:
  %length = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 3
  %0 = load i32, i32* %length, align 4, !tbaa !10
  %length1 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %b, i64 0, i32 3
  %1 = load i32, i32* %length1, align 4, !tbaa !10
  %sub = sub nsw i32 %0, %1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %a, i64 0, i32 4
  %2 = load i8*, i8** %data, align 8, !tbaa !11
  %data2 = getelementptr inbounds %struct.asn1_object_st, %struct.asn1_object_st* %b, i64 0, i32 4
  %3 = load i8*, i8** %data2, align 8, !tbaa !11
  %conv = sext i32 %0 to i64
  %call = tail call i32 @memcmp(i8* noundef %2, i8* noundef %3, i64 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ %sub, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 32}
!5 = !{!"asn1_object_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !9, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 20}
!11 = !{!5, !6, i64 24}
!12 = !{!5, !9, i64 16}
!13 = !{!5, !6, i64 8}
!14 = !{!5, !6, i64 0}
