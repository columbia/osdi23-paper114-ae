; ModuleID = 'crypto/dsa/dsa_depr.c'
source_filename = "crypto/dsa/dsa_depr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_st = type opaque
%struct.bn_gencb_st = type opaque

; Function Attrs: noinline nounwind uwtable
define %struct.dsa_st* @DSA_generate_parameters(i32 noundef %bits, i8* noundef %seed_in, i32 noundef %seed_len, i32* noundef %counter_ret, i64* noundef %h_ret, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dsa_st* @DSA_new() #2
  %cmp = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bn_gencb_st* @BN_GENCB_new() #2
  %cmp2 = icmp eq %struct.bn_gencb_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @BN_GENCB_set_old(%struct.bn_gencb_st* noundef nonnull %call1, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) #2
  %call5 = tail call i32 @DSA_generate_parameters_ex(%struct.dsa_st* noundef nonnull %call, i32 noundef %bits, i8* noundef %seed_in, i32 noundef %seed_len, i32* noundef %counter_ret, i64* noundef %h_ret, %struct.bn_gencb_st* noundef nonnull %call1) #2
  %tobool.not = icmp eq i32 %call5, 0
  tail call void @BN_GENCB_free(%struct.bn_gencb_st* noundef nonnull %call1) #2
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end4, %if.end
  tail call void @DSA_free(%struct.dsa_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry, %err
  %retval.0 = phi %struct.dsa_st* [ null, %err ], [ null, %entry ], [ %call, %if.end4 ]
  ret %struct.dsa_st* %retval.0
}

declare %struct.dsa_st* @DSA_new() local_unnamed_addr #1

declare %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #1

declare void @BN_GENCB_set_old(%struct.bn_gencb_st* noundef, void (i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @DSA_generate_parameters_ex(%struct.dsa_st* noundef, i32 noundef, i8* noundef, i32 noundef, i32* noundef, i64* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #1

declare void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
