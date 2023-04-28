; ModuleID = 'crypto/property/property_query.c'
source_filename = "crypto/property/property_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_property_definition_st = type { i32, i32, i32, i8, %union.anon }
%union.anon = type { i64 }
%struct.ossl_property_list_st = type { i32, i8, [1 x %struct.ossl_property_definition_st] }
%struct.ossl_lib_ctx_st = type opaque

@ossl_property_true = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef %list, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %name_idx = alloca i32, align 4
  %0 = bitcast i32* %name_idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %cmp = icmp eq %struct.ossl_property_list_st* %list, null
  %cmp1 = icmp eq i8* %name, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %name, i32 noundef 0) #5
  store i32 %call, i32* %name_idx, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %arraydecay = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %list, i64 0, i32 2, i64 0
  %1 = bitcast %struct.ossl_property_definition_st* %arraydecay to i8*
  %num_properties = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %list, i64 0, i32 0
  %2 = load i32, i32* %num_properties, align 8, !tbaa !8
  %call4 = call i8* @ossl_bsearch(i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef %2, i32 noundef 24, i32 (i8*, i8*)* noundef nonnull @property_idx_cmp, i32 noundef 0) #5
  %3 = bitcast i8* %call4 to %struct.ossl_property_definition_st*
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false2, %if.end
  %retval.0 = phi %struct.ossl_property_definition_st* [ %3, %if.end ], [ null, %lor.lhs.false2 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret %struct.ossl_property_definition_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ossl_bsearch(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @property_idx_cmp(i8* nocapture noundef readonly %keyp, i8* nocapture noundef readonly %compare) #3 {
entry:
  %0 = bitcast i8* %keyp to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !4
  %name_idx = bitcast i8* %compare to i32*
  %2 = load i32, i32* %name_idx, align 8, !tbaa !10
  %sub = sub nsw i32 %1, %2
  ret i32 %sub
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_property_get_type(%struct.ossl_property_definition_st* nocapture noundef readonly %prop) local_unnamed_addr #3 {
entry:
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !12
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_property_get_string_value(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ossl_property_definition_st* noundef readonly %prop) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_property_definition_st* %prop, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !12
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %v = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop, i64 0, i32 4
  %str_val = bitcast %union.anon* %v to i32*
  %1 = load i32, i32* %str_val, align 8, !tbaa !13
  %call = tail call i8* @ossl_property_value_str(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %value.0 = phi i8* [ %call, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %value.0
}

declare i8* @ossl_property_value_str(%struct.ossl_lib_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_property_get_number_value(%struct.ossl_property_definition_st* noundef readonly %prop) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ossl_property_definition_st* %prop, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !12
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %int_val = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %prop, i64 0, i32 4, i32 0
  %1 = load i64, i64* %int_val, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %value.0 = phi i64 [ %1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i64 %value.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_property_has_optional(%struct.ossl_property_list_st* nocapture noundef readonly %query) local_unnamed_addr #3 {
entry:
  %has_optional = getelementptr inbounds %struct.ossl_property_list_st, %struct.ossl_property_list_st* %query, i64 0, i32 1
  %bf.load = load i8, i8* %has_optional, align 4
  %bf.clear = and i8 %bf.load, 1
  %0 = zext i8 %bf.clear to i32
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_property_is_enabled(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %property_name, %struct.ossl_property_list_st* noundef %prop_list) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_property_definition_st* @ossl_property_find_property(%struct.ossl_property_list_st* noundef %prop_list, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %property_name) #6
  %cmp = icmp eq %struct.ossl_property_definition_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %optional = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %call, i64 0, i32 3
  %bf.load = load i8, i8* %optional, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %lor.lhs.false1, label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %oper = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %call, i64 0, i32 2
  %0 = load i32, i32* %oper, align 8, !tbaa !14
  %cmp2 = icmp eq i32 %0, 2
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false1
  %type = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %call, i64 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !12
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end
  switch i32 %0, label %cleanup [
    i32 0, label %land.lhs.true
    i32 1, label %land.rhs9
  ]

land.lhs.true:                                    ; preds = %land.rhs
  %v = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %call, i64 0, i32 4
  %str_val = bitcast %union.anon* %v to i32*
  %2 = load i32, i32* %str_val, align 8, !tbaa !13
  %3 = load i32, i32* @ossl_property_true, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %2, %3
  br label %cleanup

land.rhs9:                                        ; preds = %land.rhs
  %v10 = getelementptr inbounds %struct.ossl_property_definition_st, %struct.ossl_property_definition_st* %call, i64 0, i32 4
  %str_val11 = bitcast %union.anon* %v10 to i32*
  %4 = load i32, i32* %str_val11, align 8, !tbaa !13
  %5 = load i32, i32* @ossl_property_true, align 4, !tbaa !4
  %cmp12 = icmp ne i32 %4, %5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %land.rhs, %if.end, %land.rhs9, %entry, %lor.lhs.false, %lor.lhs.false1
  %retval.0.shrunk = phi i1 [ false, %lor.lhs.false1 ], [ false, %lor.lhs.false ], [ false, %entry ], [ false, %if.end ], [ %cmp12, %land.rhs9 ], [ %cmp6, %land.lhs.true ], [ false, %land.rhs ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"ossl_property_list_st", !5, i64 0, !5, i64 4, !6, i64 8}
!10 = !{!11, !5, i64 0}
!11 = !{!"ossl_property_definition_st", !5, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !6, i64 16}
!12 = !{!11, !6, i64 4}
!13 = !{!6, !6, i64 0}
!14 = !{!11, !6, i64 8}
