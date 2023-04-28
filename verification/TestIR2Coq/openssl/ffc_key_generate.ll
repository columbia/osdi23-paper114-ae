; ModuleID = 'crypto/ffc/ffc_key_generate.c'
source_filename = "crypto/ffc/ffc_key_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_ctx = type opaque
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_generate_private_key(%struct.bignum_ctx* noundef %ctx, %struct.ffc_params_st* nocapture noundef readonly %params, i32 noundef %N, i32 noundef %s, %struct.bignum_st* noundef %priv) local_unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #2
  %cmp = icmp eq i32 %N, 0
  %spec.select = select i1 %cmp, i32 %call, i32 %N
  %cmp1 = icmp eq i32 %s, 0
  %div = sdiv i32 %spec.select, 2
  %s.addr.0 = select i1 %cmp1, i32 %div, i32 %s
  %mul = shl nsw i32 %s.addr.0, 1
  %cmp4 = icmp slt i32 %spec.select, %mul
  %cmp5 = icmp sgt i32 %spec.select, %call
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %entry
  %call8 = tail call %struct.bignum_st* @BN_new() #2
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end7
  %call11 = tail call %struct.bignum_st* @BN_value_one() #2
  %call12 = tail call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %call11, i32 noundef %spec.select) #2
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false10
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  %call16 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %1) #2
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end14
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %if.end14, %cond.true
  %cond = phi %struct.bignum_st* [ %2, %cond.true ], [ %call8, %if.end14 ]
  br label %do.body

do.body:                                          ; preds = %if.end25, %cond.end
  %call19 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %priv, %struct.bignum_st* noundef nonnull %call8, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %do.body
  %call22 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %priv, i64 noundef 1) #2
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false21
  %call26 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %priv, %struct.bignum_st* noundef %cond) #2
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %err, label %do.body

err:                                              ; preds = %if.end25, %do.body, %lor.lhs.false21, %if.end7, %lor.lhs.false10
  %ret.0 = phi i32 [ 0, %if.end7 ], [ 0, %lor.lhs.false10 ], [ 1, %if.end25 ], [ 0, %do.body ], [ 0, %lor.lhs.false21 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call8) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"ffc_params_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !6, i64 72, !6, i64 80}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
