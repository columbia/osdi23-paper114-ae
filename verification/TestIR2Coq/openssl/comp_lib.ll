; ModuleID = 'crypto/comp/comp_lib.c'
source_filename = "crypto/comp/comp_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, i8* }
%struct.comp_method_st = type { i32, i8*, i32 (%struct.comp_ctx_st*)*, void (%struct.comp_ctx_st*)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/comp/comp_lib.c\00", align 1
@__func__.COMP_CTX_new = private unnamed_addr constant [13 x i8] c"COMP_CTX_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 22) #3
  %0 = bitcast i8* %call to %struct.comp_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.COMP_CTX_new, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 41, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %meth1 = bitcast i8* %call to %struct.comp_method_st**
  store %struct.comp_method_st* %meth, %struct.comp_method_st** %meth1, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %meth, i64 0, i32 2
  %1 = load i32 (%struct.comp_ctx_st*)*, i32 (%struct.comp_ctx_st*)** %init, align 8, !tbaa !10
  %cmp3.not = icmp eq i32 (%struct.comp_ctx_st*)* %1, null
  br i1 %cmp3.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call i32 %1(%struct.comp_ctx_st* noundef nonnull %0) #3
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 28) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then7, %if.then
  %retval.0 = phi %struct.comp_ctx_st* [ null, %if.then ], [ %0, %land.lhs.true ], [ null, %if.then7 ], [ %0, %if.end ]
  ret %struct.comp_ctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.comp_method_st* @COMP_CTX_get_method(%struct.comp_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #2 {
entry:
  %meth = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.comp_method_st*, %struct.comp_method_st** %meth, align 8, !tbaa !4
  ret %struct.comp_method_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @COMP_get_type(%struct.comp_method_st* nocapture noundef readonly %meth) local_unnamed_addr #2 {
entry:
  %type = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %meth, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !13
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @COMP_get_name(%struct.comp_method_st* nocapture noundef readonly %meth) local_unnamed_addr #2 {
entry:
  %name = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %meth, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !14
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define void @COMP_CTX_free(%struct.comp_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.comp_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.comp_method_st*, %struct.comp_method_st** %meth, align 8, !tbaa !4
  %finish = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %0, i64 0, i32 3
  %1 = load void (%struct.comp_ctx_st*)*, void (%struct.comp_ctx_st*)** %finish, align 8, !tbaa !15
  %cmp1.not = icmp eq void (%struct.comp_ctx_st*)* %1, null
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void %1(%struct.comp_ctx_st* noundef nonnull %ctx) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = bitcast %struct.comp_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #3
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @COMP_compress_block(%struct.comp_ctx_st* noundef %ctx, i8* noundef %out, i32 noundef %olen, i8* noundef %in, i32 noundef %ilen) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.comp_method_st*, %struct.comp_method_st** %meth, align 8, !tbaa !4
  %compress = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)** %compress, align 8, !tbaa !16
  %cmp = icmp eq i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.comp_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32 noundef %olen, i8* noundef %in, i32 noundef %ilen) #3
  %cmp3 = icmp sgt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %conv = sext i32 %ilen to i64
  %compress_in = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 1
  %2 = load i64, i64* %compress_in, align 8, !tbaa !17
  %add = add i64 %2, %conv
  store i64 %add, i64* %compress_in, align 8, !tbaa !17
  %conv516 = zext i32 %call to i64
  %compress_out = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 2
  %3 = load i64, i64* %compress_out, align 8, !tbaa !18
  %add6 = add i64 %3, %conv516
  store i64 %add6, i64* %compress_out, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call, %if.then4 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @COMP_expand_block(%struct.comp_ctx_st* noundef %ctx, i8* noundef %out, i32 noundef %olen, i8* noundef %in, i32 noundef %ilen) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.comp_method_st*, %struct.comp_method_st** %meth, align 8, !tbaa !4
  %expand = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %0, i64 0, i32 5
  %1 = load i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)** %expand, align 8, !tbaa !19
  %cmp = icmp eq i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.comp_ctx_st* noundef nonnull %ctx, i8* noundef %out, i32 noundef %olen, i8* noundef %in, i32 noundef %ilen) #3
  %cmp3 = icmp sgt i32 %call, 0
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %conv = sext i32 %ilen to i64
  %expand_in = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 3
  %2 = load i64, i64* %expand_in, align 8, !tbaa !20
  %add = add i64 %2, %conv
  store i64 %add, i64* %expand_in, align 8, !tbaa !20
  %conv516 = zext i32 %call to i64
  %expand_out = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %ctx, i64 0, i32 4
  %3 = load i64, i64* %expand_out, align 8, !tbaa !21
  %add6 = add i64 %3, %conv516
  store i64 %add6, i64* %expand_out, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call, %if.then4 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @COMP_CTX_get_type(%struct.comp_ctx_st* nocapture noundef readonly %comp) local_unnamed_addr #2 {
entry:
  %meth = getelementptr inbounds %struct.comp_ctx_st, %struct.comp_ctx_st* %comp, i64 0, i32 0
  %0 = load %struct.comp_method_st*, %struct.comp_method_st** %meth, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.comp_method_st* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %type = getelementptr inbounds %struct.comp_method_st, %struct.comp_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"comp_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!11, !6, i64 16}
!11 = !{!"comp_method_st", !12, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!12 = !{!"int", !7, i64 0}
!13 = !{!11, !12, i64 0}
!14 = !{!11, !6, i64 8}
!15 = !{!11, !6, i64 24}
!16 = !{!11, !6, i64 32}
!17 = !{!5, !9, i64 8}
!18 = !{!5, !9, i64 16}
!19 = !{!11, !6, i64 40}
!20 = !{!5, !9, i64 24}
!21 = !{!5, !9, i64 32}
