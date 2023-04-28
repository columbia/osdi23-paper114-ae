; ModuleID = 'crypto/rand/prov_seed.c'
source_filename = "crypto/rand/prov_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_core_handle_st = type opaque
%struct.rand_pool_st = type { i8*, i64, i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"crypto/rand/prov_seed.c\00", align 1
@__func__.ossl_rand_get_entropy = private unnamed_addr constant [22 x i8] c"ossl_rand_get_entropy\00", align 1
@__func__.ossl_rand_get_nonce = private unnamed_addr constant [20 x i8] c"ossl_rand_get_nonce\00", align 1

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_rand_get_entropy(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, i8** nocapture noundef writeonly %pout, i32 noundef %entropy, i64 noundef %min_len, i64 noundef %max_len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_pool_st* @ossl_rand_pool_new(i32 noundef %entropy, i32 noundef 1, i64 noundef %min_len, i64 noundef %max_len) #2
  %cmp = icmp eq %struct.rand_pool_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_rand_get_entropy, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ossl_pool_acquire_entropy(%struct.rand_pool_st* noundef nonnull %call) #2
  %cmp2.not = icmp eq i64 %call1, 0
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i64 @ossl_rand_pool_length(%struct.rand_pool_st* noundef nonnull %call) #2
  %call5 = tail call i8* @ossl_rand_pool_detach(%struct.rand_pool_st* noundef nonnull %call) #2
  store i8* %call5, i8** %pout, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %ret.0 = phi i64 [ %call4, %if.then3 ], [ 0, %if.end ]
  tail call void @ossl_rand_pool_free(%struct.rand_pool_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %ret.0, %if.end6 ]
  ret i64 %retval.0
}

declare %struct.rand_pool_st* @ossl_rand_pool_new(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @ossl_pool_acquire_entropy(%struct.rand_pool_st* noundef) local_unnamed_addr #1

declare i64 @ossl_rand_pool_length(%struct.rand_pool_st* noundef) local_unnamed_addr #1

declare i8* @ossl_rand_pool_detach(%struct.rand_pool_st* noundef) local_unnamed_addr #1

declare void @ossl_rand_pool_free(%struct.rand_pool_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_rand_cleanup_entropy(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  tail call void @CRYPTO_secure_clear_free(i8* noundef %buf, i64 noundef %len, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #2
  ret void
}

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_rand_get_nonce(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, i8** nocapture noundef writeonly %pout, i64 noundef %min_len, i64 noundef %max_len, i8* noundef %salt, i64 noundef %salt_len) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.rand_pool_st* @ossl_rand_pool_new(i32 noundef 0, i32 noundef 0, i64 noundef %min_len, i64 noundef %max_len) #2
  %cmp = icmp eq %struct.rand_pool_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_rand_get_nonce, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_pool_add_nonce_data(%struct.rand_pool_st* noundef nonnull %call) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4.not = icmp eq i8* %salt, null
  br i1 %cmp4.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call5 = tail call i32 @ossl_rand_pool_add(%struct.rand_pool_st* noundef nonnull %call, i8* noundef nonnull %salt, i64 noundef %salt_len, i64 noundef 0) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %call9 = tail call i64 @ossl_rand_pool_length(%struct.rand_pool_st* noundef nonnull %call) #2
  %call10 = tail call i8* @ossl_rand_pool_detach(%struct.rand_pool_st* noundef nonnull %call) #2
  store i8* %call10, i8** %pout, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end, %if.end8
  %ret.0 = phi i64 [ %call9, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  tail call void @ossl_rand_pool_free(%struct.rand_pool_st* noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ %ret.0, %err ]
  ret i64 %retval.0
}

declare i32 @ossl_pool_add_nonce_data(%struct.rand_pool_st* noundef) local_unnamed_addr #1

declare i32 @ossl_rand_pool_add(%struct.rand_pool_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_rand_cleanup_nonce(%struct.ossl_core_handle_st* nocapture noundef readnone %handle, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  tail call void @CRYPTO_clear_free(i8* noundef %buf, i64 noundef %len, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #2
  ret void
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

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
