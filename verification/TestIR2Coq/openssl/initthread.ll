; ModuleID = 'crypto/initthread.c'
source_filename = "crypto/initthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.global_tevent_register_st = type { %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, i8* }
%struct.stack_st_THREAD_EVENT_HANDLER_PTR = type opaque
%struct.thread_event_handler_st = type { i8*, i8*, void (i8*)*, %struct.thread_event_handler_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque

@destructor_key = internal global %union.anon { i64 -1 }, align 8
@.str = private unnamed_addr constant [20 x i8] c"crypto/initthread.c\00", align 1
@tevent_register_runonce = internal global i32 0, align 4
@create_global_tevent_register_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@glob_tevent_reg = internal unnamed_addr global %struct.global_tevent_register_st* null, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_init_thread() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_init_local(i32* noundef bitcast (%union.anon* @destructor_key to i32*), void (i8*)* noundef nonnull @init_thread_destructor) #2
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i32 @CRYPTO_THREAD_init_local(i32* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_thread_destructor(i8* noundef %hands) #0 {
entry:
  %0 = bitcast i8* %hands to %struct.thread_event_handler_st**
  tail call fastcc void @init_thread_stop(i8* noundef null, %struct.thread_event_handler_st** noundef %0) #3
  tail call fastcc void @init_thread_remove_handlers(%struct.thread_event_handler_st** noundef %0) #3
  tail call void @CRYPTO_free(i8* noundef %hands, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 198) #2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_cleanup_thread() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @init_thread_deregister(i8* noundef null, i32 noundef 1) #3
  %call1 = tail call i32 @CRYPTO_THREAD_cleanup_local(i32* noundef bitcast (%union.anon* @destructor_key to i32*)) #2
  store i64 -1, i64* getelementptr inbounds (%union.anon, %union.anon* @destructor_key, i64 0, i32 0), align 8, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @init_thread_deregister(i8* noundef readnone %index, i32 noundef %all) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.global_tevent_register_st* @get_global_tevent_register() #3
  %cmp = icmp eq %struct.global_tevent_register_st* %call, null
  br i1 %cmp, label %cleanup47, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %all, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 1
  %0 = load i8*, i8** %lock, align 8, !tbaa !7
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #2
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup47, label %if.end6

if.else:                                          ; preds = %if.end
  store %struct.global_tevent_register_st* null, %struct.global_tevent_register_st** @glob_tevent_reg, align 8, !tbaa !10
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.else
  %skhands = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 0
  %1 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call790 = tail call fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_num(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %1) #3
  %cmp891 = icmp sgt i32 %call790, 0
  br i1 %cmp891, label %for.body, label %for.end

for.cond:                                         ; preds = %if.end31, %if.then34, %while.end
  %inc = add nuw nsw i32 %i.092, 1
  %2 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call7 = tail call fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_num(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %2) #3
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %for.end, !llvm.loop !12

for.body:                                         ; preds = %if.end6, %for.cond
  %i.092 = phi i32 [ %inc, %for.cond ], [ 0, %if.end6 ]
  %3 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call10 = tail call fastcc %struct.thread_event_handler_st** @sk_THREAD_EVENT_HANDLER_PTR_value(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %3, i32 noundef %i.092) #3
  %cmp11 = icmp eq %struct.thread_event_handler_st** %call10, null
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %for.body
  br i1 %tobool.not, label %if.then14, label %cleanup47

if.then14:                                        ; preds = %if.then12
  %lock15 = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 1
  %4 = load i8*, i8** %lock15, align 8, !tbaa !7
  %call16 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #2
  br label %cleanup47

if.end18:                                         ; preds = %for.body
  %5 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %call10, align 8, !tbaa !10
  %cmp19.not8387 = icmp eq %struct.thread_event_handler_st* %5, null
  br i1 %cmp19.not8387, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end18, %if.end31
  %prev.0.ph89 = phi %struct.thread_event_handler_st* [ %curr.084, %if.end31 ], [ null, %if.end18 ]
  %curr.0.ph88 = phi %struct.thread_event_handler_st* [ %10, %if.end31 ], [ %5, %if.end18 ]
  %cmp24.not = icmp eq %struct.thread_event_handler_st* %prev.0.ph89, null
  %next26 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %prev.0.ph89, i64 0, i32 3
  %call10.next26 = select i1 %cmp24.not, %struct.thread_event_handler_st** %call10, %struct.thread_event_handler_st** %next26
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then23
  %curr.084 = phi %struct.thread_event_handler_st* [ %curr.0.ph88, %while.body.lr.ph ], [ %8, %if.then23 ]
  br i1 %tobool.not, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %while.body
  %index21 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.084, i64 0, i32 0
  %6 = load i8*, i8** %index21, align 8, !tbaa !14
  %cmp22 = icmp eq i8* %6, %index
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %lor.lhs.false, %while.body
  %next28 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.084, i64 0, i32 3
  %7 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %next28, align 8, !tbaa !16
  store %struct.thread_event_handler_st* %7, %struct.thread_event_handler_st** %call10.next26, align 8, !tbaa !10
  %next30 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.084, i64 0, i32 3
  %8 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %next30, align 8, !tbaa !16
  %9 = bitcast %struct.thread_event_handler_st* %curr.084 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 429) #2
  %cmp19.not = icmp eq %struct.thread_event_handler_st* %8, null
  br i1 %cmp19.not, label %while.end, label %while.body, !llvm.loop !17

if.end31:                                         ; preds = %lor.lhs.false
  %next32 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.084, i64 0, i32 3
  %10 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %next32, align 8, !tbaa !16
  %cmp19.not83 = icmp eq %struct.thread_event_handler_st* %10, null
  br i1 %cmp19.not83, label %for.cond, label %while.body.lr.ph, !llvm.loop !17

while.end:                                        ; preds = %if.then23, %if.end18
  br i1 %tobool.not, label %for.cond, label %if.then34

if.then34:                                        ; preds = %while.end
  %11 = bitcast %struct.thread_event_handler_st** %call10 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 436) #2
  br label %for.cond

for.end:                                          ; preds = %for.cond, %if.end6
  %lock44 = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 1
  %12 = load i8*, i8** %lock44, align 8, !tbaa !7
  br i1 %tobool.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %for.end
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %12) #2
  %13 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  tail call fastcc void @sk_THREAD_EVENT_HANDLER_PTR_free(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %13) #3
  %14 = bitcast %struct.global_tevent_register_st* %call to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 441) #2
  br label %cleanup47

if.else43:                                        ; preds = %for.end
  %call45 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %12) #2
  br label %cleanup47

cleanup47:                                        ; preds = %if.then14, %if.then12, %if.then40, %if.else43, %if.then1, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.then1 ], [ 1, %if.else43 ], [ 1, %if.then40 ], [ 0, %if.then12 ], [ 0, %if.then14 ]
  ret i32 %retval.2
}

declare i32 @CRYPTO_THREAD_cleanup_local(i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_thread_stop_ex(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef %ctx) #2
  tail call void @ossl_ctx_thread_stop(%struct.ossl_lib_ctx_st* noundef %call) #3
  ret void
}

declare %struct.ossl_lib_ctx_st* @ossl_lib_ctx_get_concrete(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_ctx_thread_stop(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%union.anon, %union.anon* @destructor_key, i64 0, i32 0), align 8, !tbaa !4
  %cmp.not = icmp eq i64 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.thread_event_handler_st** @init_get_thread_local(i32 noundef 0, i32 noundef 1) #3
  %1 = bitcast %struct.ossl_lib_ctx_st* %ctx to i8*
  tail call fastcc void @init_thread_stop(i8* noundef %1, %struct.thread_event_handler_st** noundef %call) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_thread_stop() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%union.anon, %union.anon* @destructor_key, i64 0, i32 0), align 8, !tbaa !4
  %cmp.not = icmp eq i64 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.thread_event_handler_st** @init_get_thread_local(i32 noundef 0, i32 noundef 0) #3
  tail call fastcc void @init_thread_stop(i8* noundef null, %struct.thread_event_handler_st** noundef %call) #3
  tail call fastcc void @init_thread_remove_handlers(%struct.thread_event_handler_st** noundef %call) #3
  %1 = bitcast %struct.thread_event_handler_st** %call to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 236) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.thread_event_handler_st** @init_get_thread_local(i32 noundef %alloc, i32 noundef %keep) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_get_local(i32* noundef bitcast (%union.anon* @destructor_key to i32*)) #2
  %0 = bitcast i8* %call to %struct.thread_event_handler_st**
  %tobool.not = icmp eq i32 %alloc, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then1, label %cleanup

if.then1:                                         ; preds = %if.then
  %call2 = tail call i8* @CRYPTO_zalloc(i64 noundef 8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 100) #2
  %1 = bitcast i8* %call2 to %struct.thread_event_handler_st**
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then1
  %call5 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef bitcast (%union.anon* @destructor_key to i32*), i8* noundef nonnull %call2) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #2
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @init_thread_push_handlers(%struct.thread_event_handler_st** noundef nonnull %1) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef bitcast (%union.anon* @destructor_key to i32*), i8* noundef null) #2
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 111) #2
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool15.not = icmp eq i32 %keep, 0
  br i1 %tobool15.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.else
  %call17 = tail call i32 @CRYPTO_THREAD_set_local(i32* noundef bitcast (%union.anon* @destructor_key to i32*), i8* noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then, %if.then16, %if.else, %if.then1, %if.then11, %if.then7
  %retval.0 = phi %struct.thread_event_handler_st** [ null, %if.then11 ], [ null, %if.then7 ], [ null, %if.then1 ], [ %1, %if.end8 ], [ %0, %if.then ], [ %0, %if.else ], [ %0, %if.then16 ]
  ret %struct.thread_event_handler_st** %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_thread_stop(i8* noundef readnone %arg, %struct.thread_event_handler_st** noundef %hands) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.thread_event_handler_st** %hands, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %hands, align 8, !tbaa !10
  %cmp1.not3438 = icmp eq %struct.thread_event_handler_st* %0, null
  br i1 %cmp1.not3438, label %cleanup, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %cmp2.not = icmp eq i8* %arg, null
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then5
  %curr.0.ph40 = phi %struct.thread_event_handler_st* [ %0, %while.body.lr.ph.lr.ph ], [ %1, %if.then5 ]
  %prev.0.ph39 = phi %struct.thread_event_handler_st* [ null, %while.body.lr.ph.lr.ph ], [ %curr.035, %if.then5 ]
  %cmp8 = icmp eq %struct.thread_event_handler_st* %prev.0.ph39, null
  %next12 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %prev.0.ph39, i64 0, i32 3
  %hands.next12 = select i1 %cmp8, %struct.thread_event_handler_st** %hands, %struct.thread_event_handler_st** %next12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end6
  %curr.035 = phi %struct.thread_event_handler_st* [ %curr.0.ph40, %while.body.lr.ph ], [ %5, %if.end6 ]
  %arg7.phi.trans.insert = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.035, i64 0, i32 1
  %.pre = load i8*, i8** %arg7.phi.trans.insert, align 8, !tbaa !18
  br i1 %cmp2.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %cmp4.not = icmp eq i8* %.pre, %arg
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.035, i64 0, i32 3
  %1 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %next, align 8, !tbaa !16
  %cmp1.not34 = icmp eq %struct.thread_event_handler_st* %1, null
  br i1 %cmp1.not34, label %cleanup, label %while.body.lr.ph, !llvm.loop !19

if.end6:                                          ; preds = %while.body, %land.lhs.true
  %2 = phi i8* [ %arg, %land.lhs.true ], [ %.pre, %while.body ]
  %handfn = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.035, i64 0, i32 2
  %3 = load void (i8*)*, void (i8*)** %handfn, align 8, !tbaa !20
  tail call void %3(i8* noundef %2) #2
  %next10 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.035, i64 0, i32 3
  %4 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %next10, align 8, !tbaa !16
  store %struct.thread_event_handler_st* %4, %struct.thread_event_handler_st** %hands.next12, align 8, !tbaa !10
  %next14 = getelementptr inbounds %struct.thread_event_handler_st, %struct.thread_event_handler_st* %curr.035, i64 0, i32 3
  %5 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %next14, align 8, !tbaa !16
  %6 = bitcast %struct.thread_event_handler_st* %curr.035 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 333) #2
  %cmp1.not = icmp eq %struct.thread_event_handler_st* %5, null
  br i1 %cmp1.not, label %cleanup, label %while.body, !llvm.loop !19

cleanup:                                          ; preds = %if.then5, %if.end6, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_thread_remove_handlers(%struct.thread_event_handler_st** noundef readnone %handsin) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.global_tevent_register_st* @get_global_tevent_register() #3
  %cmp = icmp eq %struct.global_tevent_register_st* %call, null
  br i1 %cmp, label %cleanup17, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 1
  %0 = load i8*, i8** %lock, align 8, !tbaa !7
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %skhands = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 0
  %1 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call433 = tail call fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_num(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %1) #3
  %cmp534 = icmp sgt i32 %call433, 0
  br i1 %cmp534, label %for.body, label %cleanup17.sink.split

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.035 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call7 = tail call fastcc %struct.thread_event_handler_st** @sk_THREAD_EVENT_HANDLER_PTR_value(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %2, i32 noundef %i.035) #3
  %cmp8 = icmp eq %struct.thread_event_handler_st** %call7, %handsin
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  %3 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  tail call fastcc void @sk_THREAD_EVENT_HANDLER_PTR_delete(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %3, i32 noundef %i.035) #3
  br label %cleanup17.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %4 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call4 = tail call fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_num(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %4) #3
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %cleanup17.sink.split, !llvm.loop !21

cleanup17.sink.split:                             ; preds = %for.inc, %for.cond.preheader, %if.then9
  %5 = load i8*, i8** %lock, align 8, !tbaa !7
  %call13 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #2
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup17.sink.split, %if.end, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_init_thread_start(i8* noundef %index, i8* noundef %arg, void (i8*)* noundef %handfn) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.thread_event_handler_st** @init_get_thread_local(i32 noundef 1, i32 noundef 0) #3
  %cmp = icmp eq %struct.thread_event_handler_st** %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 380) #2
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %handfn5 = getelementptr inbounds i8, i8* %call1, i64 16
  %0 = bitcast i8* %handfn5 to void (i8*)**
  store void (i8*)* %handfn, void (i8*)** %0, align 8, !tbaa !20
  %arg6 = getelementptr inbounds i8, i8* %call1, i64 8
  %1 = bitcast i8* %arg6 to i8**
  store i8* %arg, i8** %1, align 8, !tbaa !18
  %index7 = bitcast i8* %call1 to i8**
  store i8* %index, i8** %index7, align 8, !tbaa !14
  %2 = load %struct.thread_event_handler_st*, %struct.thread_event_handler_st** %call, align 8, !tbaa !10
  %next = getelementptr inbounds i8, i8* %call1, i64 24
  %3 = bitcast i8* %next to %struct.thread_event_handler_st**
  store %struct.thread_event_handler_st* %2, %struct.thread_event_handler_st** %3, align 8, !tbaa !16
  %4 = bitcast %struct.thread_event_handler_st** %call to i8**
  store i8* %call1, i8** %4, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_init_thread_deregister(i8* noundef %index) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @init_thread_deregister(i8* noundef %index, i32 noundef 0) #3
  ret i32 %call
}

declare i8* @CRYPTO_THREAD_get_local(i32* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_set_local(i32* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @init_thread_push_handlers(%struct.thread_event_handler_st** noundef %hands) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.global_tevent_register_st* @get_global_tevent_register() #3
  %cmp = icmp eq %struct.global_tevent_register_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 1
  %0 = load i8*, i8** %lock, align 8, !tbaa !7
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %skhands = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %call, i64 0, i32 0
  %1 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call4 = tail call fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_push(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %1, %struct.thread_event_handler_st** noundef %hands) #3
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %2 = load i8*, i8** %lock, align 8, !tbaa !7
  %call7 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %conv, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.global_tevent_register_st* @get_global_tevent_register() unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @tevent_register_runonce, void ()* noundef nonnull @create_global_tevent_register_ossl_) #2
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @create_global_tevent_register_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  %1 = load %struct.global_tevent_register_st*, %struct.global_tevent_register_st** @glob_tevent_reg, align 8
  %retval.0 = select i1 %or.cond, %struct.global_tevent_register_st* %1, %struct.global_tevent_register_st* null
  ret %struct.global_tevent_register_st* %retval.0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_push(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %sk, %struct.thread_event_handler_st** noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %sk to %struct.stack_st*
  %1 = bitcast %struct.thread_event_handler_st** %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #2
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @create_global_tevent_register_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @create_global_tevent_register() #3
  store i32 %call, i32* @create_global_tevent_register_ossl_ret_, align 4, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_global_tevent_register() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #2
  store i8* %call, i8** bitcast (%struct.global_tevent_register_st** @glob_tevent_reg to i8**), align 8, !tbaa !10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st_THREAD_EVENT_HANDLER_PTR* @sk_THREAD_EVENT_HANDLER_PTR_new_null() #3
  %0 = load %struct.global_tevent_register_st*, %struct.global_tevent_register_st** @glob_tevent_reg, align 8, !tbaa !10
  %skhands = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %0, i64 0, i32 0
  store %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %call1, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands, align 8, !tbaa !11
  %call2 = tail call i8* @CRYPTO_THREAD_lock_new() #2
  %1 = load %struct.global_tevent_register_st*, %struct.global_tevent_register_st** @glob_tevent_reg, align 8, !tbaa !10
  %lock = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %1, i64 0, i32 1
  store i8* %call2, i8** %lock, align 8, !tbaa !7
  %skhands3 = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %1, i64 0, i32 0
  %2 = load %struct.stack_st_THREAD_EVENT_HANDLER_PTR*, %struct.stack_st_THREAD_EVENT_HANDLER_PTR** %skhands3, align 8, !tbaa !11
  %cmp4 = icmp eq %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %2, null
  %cmp6 = icmp eq i8* %call2, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %return

if.then7:                                         ; preds = %if.end
  tail call fastcc void @sk_THREAD_EVENT_HANDLER_PTR_free(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %2) #3
  %3 = load %struct.global_tevent_register_st*, %struct.global_tevent_register_st** @glob_tevent_reg, align 8, !tbaa !10
  %lock9 = getelementptr inbounds %struct.global_tevent_register_st, %struct.global_tevent_register_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %lock9, align 8, !tbaa !7
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #2
  %5 = load i8*, i8** bitcast (%struct.global_tevent_register_st** @glob_tevent_reg to i8**), align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 68) #2
  store %struct.global_tevent_register_st* null, %struct.global_tevent_register_st** @glob_tevent_reg, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_THREAD_EVENT_HANDLER_PTR* @sk_THREAD_EVENT_HANDLER_PTR_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #2
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_THREAD_EVENT_HANDLER_PTR*
  ret %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_THREAD_EVENT_HANDLER_PTR_free(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #2
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_THREAD_EVENT_HANDLER_PTR_num(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #2
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.thread_event_handler_st** @sk_THREAD_EVENT_HANDLER_PTR_value(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #2
  %1 = bitcast i8* %call to %struct.thread_event_handler_st**
  ret %struct.thread_event_handler_st** %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_THREAD_EVENT_HANDLER_PTR_delete(%struct.stack_st_THREAD_EVENT_HANDLER_PTR* noundef %sk, i32 noundef %i) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_THREAD_EVENT_HANDLER_PTR* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #2
  ret void
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

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
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"global_tevent_register_st", !9, i64 0, !9, i64 8}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!8, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !9, i64 0}
!15 = !{!"thread_event_handler_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!16 = !{!15, !9, i64 24}
!17 = distinct !{!17, !13}
!18 = !{!15, !9, i64 8}
!19 = distinct !{!19, !13}
!20 = !{!15, !9, i64 16}
!21 = distinct !{!21, !13}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !5, i64 0}
