; ModuleID = 'crypto/dh/dh_group_params.c'
source_filename = "crypto/dh/dh_group_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dh_st = type { i32, i32, %struct.ffc_params_st, i32, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.ossl_lib_ctx_st*, %struct.dh_method*, i8*, i64 }
%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.engine_st = type opaque
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.dh_named_group_st = type opaque

@.str = private unnamed_addr constant [28 x i8] c"crypto/dh/dh_group_params.c\00", align 1
@__func__.ossl_dh_new_by_nid_ex = private unnamed_addr constant [22 x i8] c"ossl_dh_new_by_nid_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @ossl_dh_new_by_nid_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef %nid) #3
  %cmp.not = icmp eq %struct.dh_named_group_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.dh_st* @dh_param_init(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.dh_named_group_st* noundef nonnull %call) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_dh_new_by_nid_ex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 5, i32 noundef 114, i8* noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.dh_st* [ %call1, %if.then ], [ null, %if.end ]
  ret %struct.dh_st* %retval.0
}

declare %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dh_st* @dh_param_init(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.dh_named_group_st* noundef %group) unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #3
  %cmp = icmp eq %struct.dh_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2
  %call1 = tail call i32 @ossl_ffc_named_group_set_pqg(%struct.ffc_params_st* noundef nonnull %params, %struct.dh_named_group_st* noundef %group) #3
  %call2 = tail call i32 @ossl_ffc_named_group_get_uid(%struct.dh_named_group_st* noundef %group) #3
  %nid = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 2, i32 7
  store i32 %call2, i32* %nid, align 4, !tbaa !4
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %call, i64 0, i32 14
  %0 = load i64, i64* %dirty_cnt, align 8, !tbaa !13
  %inc = add i64 %0, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret %struct.dh_st* %call
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.dh_st* @DH_new_by_nid(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.dh_st* @ossl_dh_new_by_nid_ex(%struct.ossl_lib_ctx_st* noundef null, i32 noundef %nid) #4
  ret %struct.dh_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_dh_cache_named_group(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dh_st* %dh, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nid = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 7
  store i32 0, i32* %nid, align 4, !tbaa !4
  %p = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !14
  %cmp2 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %g = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !15
  %cmp4 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %q = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 1
  %2 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %call = tail call %struct.dh_named_group_st* @ossl_ffc_numbers_to_dh_named_group(%struct.bignum_st* noundef nonnull %0, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef nonnull %1) #3
  %cmp12.not = icmp eq %struct.dh_named_group_st* %call, null
  br i1 %cmp12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end6
  %3 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !16
  %cmp16 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.then13
  %call18 = tail call %struct.bignum_st* @ossl_ffc_named_group_get_q(%struct.dh_named_group_st* noundef nonnull %call) #3
  store %struct.bignum_st* %call18, %struct.bignum_st** %q, align 8, !tbaa !16
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = tail call i32 @ossl_ffc_named_group_get_uid(%struct.dh_named_group_st* noundef nonnull %call) #3
  store i32 %call22, i32* %nid, align 4, !tbaa !4
  %dirty_cnt = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 14
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !13
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end21, %if.end, %lor.lhs.false, %entry
  ret void
}

declare %struct.dh_named_group_st* @ossl_ffc_numbers_to_dh_named_group(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @ossl_ffc_named_group_get_q(%struct.dh_named_group_st* noundef) local_unnamed_addr #1

declare i32 @ossl_ffc_named_group_get_uid(%struct.dh_named_group_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_dh_is_named_safe_prime_group(%struct.dh_st* noundef readonly %dh) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @DH_get_nid(%struct.dh_st* noundef %dh) #4
  %cmp = icmp sgt i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @DH_get_nid(%struct.dh_st* noundef readonly %dh) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.dh_st* %dh, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nid = getelementptr inbounds %struct.dh_st, %struct.dh_st* %dh, i64 0, i32 2, i32 7
  %0 = load i32, i32* %nid, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %0, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.dh_st* @ossl_dh_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @ossl_ffc_named_group_set_pqg(%struct.ffc_params_st* noundef, %struct.dh_named_group_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 60}
!5 = !{!"dh_st", !6, i64 0, !6, i64 4, !9, i64 8, !6, i64 96, !10, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !7, i64 136, !12, i64 144, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !11, i64 192}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!13 = !{!5, !11, i64 192}
!14 = !{!5, !10, i64 8}
!15 = !{!5, !10, i64 24}
!16 = !{!5, !10, i64 16}
