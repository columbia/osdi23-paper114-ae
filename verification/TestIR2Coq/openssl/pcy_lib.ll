; ModuleID = 'crypto/x509/pcy_lib.c'
source_filename = "crypto/x509/pcy_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_POLICY_TREE_st = type { %struct.X509_POLICY_LEVEL_st*, i32, %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE*, i32 }
%struct.X509_POLICY_LEVEL_st = type { %struct.x509_st*, %struct.stack_st_X509_POLICY_NODE*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.x509_st = type opaque
%struct.X509_POLICY_NODE_st = type { %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.asn1_object_st = type opaque
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_POLICY_DATA = type opaque
%struct.stack_st_X509_POLICY_NODE = type opaque
%struct.stack_st = type opaque

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_policy_tree_level_count(%struct.X509_POLICY_TREE_st* noundef readonly %tree) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_TREE_st* %tree, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nlevel = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 1
  %0 = load i32, i32* %nlevel, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_POLICY_LEVEL_st* @X509_policy_tree_get0_level(%struct.X509_POLICY_TREE_st* noundef readonly %tree, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %tobool = icmp eq %struct.X509_POLICY_TREE_st* %tree, null
  %cmp = icmp slt i32 %i, 0
  %or.cond = or i1 %tobool, %cmp
  br i1 %or.cond, label %return, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %entry
  %nlevel = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 1
  %0 = load i32, i32* %nlevel, align 8, !tbaa !4
  %cmp2.not = icmp sgt i32 %0, %i
  br i1 %cmp2.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false1
  %levels = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 0
  %1 = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !10
  %idx.ext7 = zext i32 %i to i64
  %add.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %1, i64 %idx.ext7
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false1, %if.end
  %retval.0 = phi %struct.X509_POLICY_LEVEL_st* [ %add.ptr, %if.end ], [ null, %lor.lhs.false1 ], [ null, %entry ]
  ret %struct.X509_POLICY_LEVEL_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_policies(%struct.X509_POLICY_TREE_st* noundef readonly %tree) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_TREE_st* %tree, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %auth_policies = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 3
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %auth_policies, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_X509_POLICY_NODE* [ %0, %if.end ], [ null, %entry ]
  ret %struct.stack_st_X509_POLICY_NODE* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_user_policies(%struct.X509_POLICY_TREE_st* noundef readonly %tree) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_TREE_st* %tree, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 5
  %0 = load i32, i32* %flags, align 8, !tbaa !12
  %and = and i32 %0, 2
  %tobool1.not = icmp eq i32 %and, 0
  %user_policies = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 4
  %auth_policies = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 3
  %user_policies.sink = select i1 %tobool1.not, %struct.stack_st_X509_POLICY_NODE** %user_policies, %struct.stack_st_X509_POLICY_NODE** %auth_policies
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %user_policies.sink, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi %struct.stack_st_X509_POLICY_NODE* [ null, %entry ], [ %1, %if.end ]
  ret %struct.stack_st_X509_POLICY_NODE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_policy_level_node_count(%struct.X509_POLICY_LEVEL_st* noundef readonly %level) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_LEVEL_st* %level, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 2
  %0 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !14
  %tobool1.not = icmp ne %struct.X509_POLICY_NODE_st* %0, null
  %. = zext i1 %tobool1.not to i32
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 1
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !16
  %tobool4.not = icmp eq %struct.stack_st_X509_POLICY_NODE* %1, null
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef nonnull %1) #4
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %add = add nsw i32 %call7, %.
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %add, %if.then5 ], [ %., %if.end ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_NODE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_NODE_st* @X509_policy_level_get0_node(%struct.X509_POLICY_LEVEL_st* noundef readonly %level, i32 noundef %i) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_LEVEL_st* %level, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 2
  %0 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !14
  %tobool1.not = icmp eq %struct.X509_POLICY_NODE_st* %0, null
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %cmp = icmp eq i32 %i, 0
  br i1 %cmp, label %return, label %if.end5

if.end5:                                          ; preds = %if.then2
  %dec = add nsw i32 %i, -1
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %i.addr.0 = phi i32 [ %dec, %if.end5 ], [ %i, %if.end ]
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 1
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !16
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %1) #4
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.addr.0) #5
  %2 = bitcast i8* %call7 to %struct.X509_POLICY_NODE_st*
  br label %return

return:                                           ; preds = %if.then2, %entry, %if.end6
  %retval.0 = phi %struct.X509_POLICY_NODE_st* [ %2, %if.end6 ], [ null, %entry ], [ %0, %if.then2 ]
  ret %struct.X509_POLICY_NODE_st* %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_object_st* @X509_policy_node_get0_policy(%struct.X509_POLICY_NODE_st* noundef readonly %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_NODE_st* %node, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !17
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.asn1_object_st* [ %1, %if.end ], [ null, %entry ]
  ret %struct.asn1_object_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_POLICYQUALINFO* @X509_policy_node_get0_qualifiers(%struct.X509_POLICY_NODE_st* noundef readonly %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_NODE_st* %node, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !17
  %qualifier_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 2
  %1 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifier_set, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_POLICYQUALINFO* [ %1, %if.end ], [ null, %entry ]
  ret %struct.stack_st_POLICYQUALINFO* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_POLICY_NODE_st* @X509_policy_node_get0_parent(%struct.X509_POLICY_NODE_st* noundef readonly %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_NODE_st* %node, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 1
  %0 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %parent, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.X509_POLICY_NODE_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.X509_POLICY_NODE_st* %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"X509_POLICY_TREE_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!5, !6, i64 24}
!12 = !{!5, !9, i64 40}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !6, i64 16}
!15 = !{!"X509_POLICY_LEVEL_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!16 = !{!15, !6, i64 8}
!17 = !{!18, !6, i64 0}
!18 = !{!"X509_POLICY_NODE_st", !6, i64 0, !6, i64 8, !9, i64 16}
!19 = !{!20, !6, i64 8}
!20 = !{!"X509_POLICY_DATA_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!21 = !{!20, !6, i64 16}
!22 = !{!18, !6, i64 8}
