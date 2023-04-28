; ModuleID = 'crypto/engine/eng_rdrand.c'
source_filename = "crypto/engine/eng_rdrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.engine_st = type opaque

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@rdrand_meth = internal global %struct.rand_meth_st { i32 (i8*, i32)* null, i32 (i8*, i32)* @get_random_bytes, void ()* null, i32 (i8*, i32, double)* null, i32 (i8*, i32)* @get_random_bytes, i32 ()* @random_status }, align 8
@.str = private unnamed_addr constant [7 x i8] c"rdrand\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Intel RDRAND engine\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @engine_load_rdrand_int() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !4
  %and = and i32 %0, 1073741824
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.engine_st* @ENGINE_rdrand() #3
  %tobool1.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool1.not, label %if.end7, label %if.end

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @ERR_set_mark() #4
  %call4 = tail call i32 @ENGINE_add(%struct.engine_st* noundef nonnull %call) #4
  %call5 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #4
  %call6 = tail call i32 @ERR_pop_to_mark() #4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @ENGINE_rdrand() unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_new() #4
  %cmp = icmp eq %struct.engine_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @bind_helper(%struct.engine_st* noundef nonnull %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.engine_st* [ null, %if.then2 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.engine_st* %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @ENGINE_add(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_helper(%struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @ENGINE_set_flags(%struct.engine_st* noundef %e, i32 noundef 8) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @rdrand_init) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @ENGINE_set_RAND(%struct.engine_st* noundef %e, %struct.rand_meth_st* noundef nonnull @rdrand_meth) #4
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false9, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6
  %retval.0 = phi i32 [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false9 ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_flags(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @rdrand_init(%struct.engine_st* nocapture noundef readnone %e) #2 {
entry:
  ret i32 1
}

declare i32 @ENGINE_set_RAND(%struct.engine_st* noundef, %struct.rand_meth_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_random_bytes(i8* noundef %buf, i32 noundef %num) #0 {
entry:
  %cmp = icmp slt i32 %num, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv6 = zext i32 %num to i64
  %call = tail call i64 @OPENSSL_ia32_rdrand_bytes(i8* noundef %buf, i64 noundef %conv6) #4
  %cmp2 = icmp eq i64 %call, %conv6
  %conv3 = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @random_status() #2 {
entry:
  ret i32 1
}

declare i64 @OPENSSL_ia32_rdrand_bytes(i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
