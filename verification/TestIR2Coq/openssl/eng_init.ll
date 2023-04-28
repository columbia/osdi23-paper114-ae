; ModuleID = 'crypto/engine/eng_init.c'
source_filename = "crypto/engine/eng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, {}*, {}*, {}*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque

@global_engine_lock = external local_unnamed_addr global i8*, align 8
@.str = private unnamed_addr constant [25 x i8] c"crypto/engine/eng_init.c\00", align 1
@__func__.engine_unlocked_finish = private unnamed_addr constant [23 x i8] c"engine_unlocked_finish\00", align 1
@__func__.ENGINE_init = private unnamed_addr constant [12 x i8] c"ENGINE_init\00", align 1
@engine_lock_init = external global i32, align 4
@do_engine_lock_init_ossl_ret_ = external local_unnamed_addr global i32, align 4
@__func__.ENGINE_finish = private unnamed_addr constant [14 x i8] c"ENGINE_finish\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @engine_unlocked_init(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %funct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 21
  %0 = load i32, i32* %funct_ref, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then5

land.lhs.true:                                    ; preds = %entry
  %init = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 12
  %init1 = bitcast {}** %init to i32 (%struct.engine_st*)**
  %1 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %init1, align 8, !tbaa !11
  %tobool.not = icmp eq i32 (%struct.engine_st*)* %1, null
  br i1 %tobool.not, label %if.then5, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %1(%struct.engine_st* noundef nonnull %e) #2
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry, %land.lhs.true, %if.end
  %to_return.017 = phi i32 [ %call, %if.end ], [ 1, %land.lhs.true ], [ 1, %entry ]
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 20
  %2 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  %3 = load i32, i32* %funct_ref, align 8, !tbaa !4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %funct_ref, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %to_return.018 = phi i32 [ %to_return.017, %if.then5 ], [ 0, %if.end ]
  ret i32 %to_return.018
}

; Function Attrs: noinline nounwind uwtable
define i32 @engine_unlocked_finish(%struct.engine_st* noundef %e, i32 noundef %unlock_for_handlers) local_unnamed_addr #0 {
entry:
  %funct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 21
  %0 = load i32, i32* %funct_ref, align 8, !tbaa !4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %funct_ref, align 8, !tbaa !4
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %finish = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 13
  %finish2 = bitcast {}** %finish to i32 (%struct.engine_st*)**
  %1 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %finish2, align 8, !tbaa !12
  %tobool.not = icmp eq i32 (%struct.engine_st*)* %1, null
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool3.not = icmp eq i32 %unlock_for_handlers, 0
  br i1 %tobool3.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.then
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #2
  %3 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %finish2, align 8, !tbaa !12
  %call7 = tail call i32 %3(%struct.engine_st* noundef nonnull %e) #2
  %4 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call10 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %4) #2
  %tobool11.not = icmp eq i32 %call10, 0
  %tobool15.not = icmp eq i32 %call7, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %cleanup, label %if.end18

if.end14:                                         ; preds = %if.then
  %call731 = tail call i32 %1(%struct.engine_st* noundef nonnull %e) #2
  %tobool15.not.old = icmp eq i32 %call731, 0
  br i1 %tobool15.not.old, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end14, %land.lhs.true, %entry
  %to_return.0 = phi i32 [ %call731, %if.end14 ], [ 1, %land.lhs.true ], [ 1, %entry ], [ %call7, %if.then9 ]
  %call19 = tail call i32 @engine_free_util(%struct.engine_st* noundef nonnull %e, i32 noundef 0) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.end18
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.engine_unlocked_finish, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 106, i8* noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14, %if.then9, %if.then21
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.then9 ], [ 0, %if.end14 ], [ %to_return.0, %if.end18 ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare i32 @engine_free_util(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_init(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ENGINE_init, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_lock_init, void ()* noundef nonnull @do_engine_lock_init_ossl_) #2
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_engine_lock_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ENGINE_init, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #2
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call4 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @engine_unlocked_init(%struct.engine_st* noundef nonnull %e) #3
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end7, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %if.end7 ], [ 0, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

declare void @do_engine_lock_init_ossl_() #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_finish(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @engine_unlocked_finish(%struct.engine_st* noundef nonnull %e, i32 noundef 1) #3
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !13
  %call4 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #2
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end2
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ENGINE_finish, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 106, i8* noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %entry ], [ 0, %if.end ], [ %call3, %if.end2 ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 160}
!5 = !{!"engine_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !7, i64 156, !9, i64 160, !10, i64 168, !6, i64 184, !6, i64 192}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!5, !6, i64 96}
!12 = !{!5, !6, i64 104}
!13 = !{!6, !6, i64 0}
