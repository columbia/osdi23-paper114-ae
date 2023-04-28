; ModuleID = 'crypto/core_algorithm.c'
source_filename = "crypto/core_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.algorithm_data_st = type { %struct.ossl_lib_ctx_st*, i32, i32 (%struct.ossl_provider_st*, i32, i8*, i32*)*, void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)*, i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/core_algorithm.c\00", align 1
@__func__.ossl_algorithm_get1_first_name = private unnamed_addr constant [31 x i8] c"ossl_algorithm_get1_first_name\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_algorithm_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %operation_id, %struct.ossl_provider_st* noundef %provider, i32 (%struct.ossl_provider_st*, i32, i8*, i32*)* noundef %pre, void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)* noundef %fn, i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)* noundef %post, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %cbdata = alloca %struct.algorithm_data_st, align 8
  %0 = bitcast %struct.algorithm_data_st* %cbdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #4
  %1 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*
  store i64 0, i64* %2, align 8
  %libctx1 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 0
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %operation_id2 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 1
  store i32 %operation_id, i32* %operation_id2, align 8, !tbaa !10
  %pre3 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 2
  store i32 (%struct.ossl_provider_st*, i32, i8*, i32*)* %pre, i32 (%struct.ossl_provider_st*, i32, i8*, i32*)** %pre3, align 8, !tbaa !11
  %fn4 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 3
  store void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)* %fn, void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)** %fn4, align 8, !tbaa !12
  %post5 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 4
  store i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)* %post, i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)** %post5, align 8, !tbaa !13
  %data6 = getelementptr inbounds %struct.algorithm_data_st, %struct.algorithm_data_st* %cbdata, i64 0, i32 5
  store i8* %data, i8** %data6, align 8, !tbaa !14
  %cmp = icmp eq %struct.ossl_provider_st* %provider, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @ossl_provider_doall_activated(%struct.ossl_lib_ctx_st* noundef %libctx, i32 (%struct.ossl_provider_st*, i8*)* noundef nonnull @algorithm_do_this, i8* noundef nonnull %0) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call i32 @algorithm_do_this(%struct.ossl_provider_st* noundef nonnull %provider, i8* noundef nonnull %0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @ossl_provider_doall_activated(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_provider_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @algorithm_do_this(%struct.ossl_provider_st* noundef %provider, i8* nocapture noundef readonly %cbdata) #0 {
entry:
  %no_store = alloca i32, align 4
  %ret = alloca i32, align 4
  %0 = bitcast i32* %no_store to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %no_store, align 4, !tbaa !15
  %operation_id = getelementptr inbounds i8, i8* %cbdata, i64 8
  %1 = bitcast i8* %operation_id to i32*
  %2 = load i32, i32* %1, align 8, !tbaa !10
  %cmp.not = icmp eq i32 %2, 0
  %spec.select = select i1 %cmp.not, i32 1, i32 %2
  %spec.select74 = select i1 %cmp.not, i32 22, i32 %2
  %cmp2.not83 = icmp sgt i32 %spec.select, %spec.select74
  br i1 %cmp2.not83, label %cleanup37, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %3 = bitcast i32* %ret to i8*
  %pre = getelementptr inbounds i8, i8* %cbdata, i64 16
  %4 = bitcast i8* %pre to i32 (%struct.ossl_provider_st*, i32, i8*, i32*)**
  %data6 = getelementptr inbounds i8, i8* %cbdata, i64 40
  %5 = bitcast i8* %data6 to i8**
  %fn = getelementptr inbounds i8, i8* %cbdata, i64 24
  %6 = bitcast i8* %fn to void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)**
  %post = getelementptr inbounds i8, i8* %cbdata, i64 32
  %7 = bitcast i8* %post to i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc35
  %ok.087 = phi i32 [ 1, %for.body.lr.ph ], [ %ok.2, %for.inc35 ]
  %cur_operation.084 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %inc, %for.inc35 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %8 = load i32 (%struct.ossl_provider_st*, i32, i8*, i32*)*, i32 (%struct.ossl_provider_st*, i32, i8*, i32*)** %4, align 8, !tbaa !11
  %cmp3 = icmp eq i32 (%struct.ossl_provider_st*, i32, i8*, i32*)* %8, null
  br i1 %cmp3, label %if.end9.thread, label %if.else

if.end9.thread:                                   ; preds = %for.body
  store i32 1, i32* %ret, align 4, !tbaa !15
  br label %if.end12

if.else:                                          ; preds = %for.body
  %9 = load i8*, i8** %5, align 8, !tbaa !14
  %call = call i32 %8(%struct.ossl_provider_st* noundef %provider, i32 noundef %cur_operation.084, i8* noundef %9, i32* noundef nonnull %ret) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.thread, label %if.end9

if.end9:                                          ; preds = %if.else
  %.pr = load i32, i32* %ret, align 4, !tbaa !15
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %for.inc35, label %if.end12

if.end12:                                         ; preds = %if.end9.thread, %if.end9
  %call13 = call %struct.ossl_algorithm_st* @ossl_provider_query_operation(%struct.ossl_provider_st* noundef %provider, i32 noundef %cur_operation.084, i32* noundef nonnull %no_store) #5
  %cmp14.not = icmp eq %struct.ossl_algorithm_st* %call13, null
  br i1 %cmp14.not, label %if.end20, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.end12
  %algorithm_names80 = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %call13, i64 0, i32 0
  %10 = load i8*, i8** %algorithm_names80, align 8, !tbaa !16
  %cmp17.not81 = icmp eq i8* %10, null
  br i1 %cmp17.not81, label %if.end20, label %for.body18

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %thismap.082 = phi %struct.ossl_algorithm_st* [ %incdec.ptr, %for.body18 ], [ %call13, %for.cond16.preheader ]
  %11 = load void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)*, void (%struct.ossl_provider_st*, %struct.ossl_algorithm_st*, i32, i8*)** %6, align 8, !tbaa !12
  %12 = load i32, i32* %no_store, align 4, !tbaa !15
  %13 = load i8*, i8** %5, align 8, !tbaa !14
  call void %11(%struct.ossl_provider_st* noundef %provider, %struct.ossl_algorithm_st* noundef nonnull %thismap.082, i32 noundef %12, i8* noundef %13) #5
  %incdec.ptr = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %thismap.082, i64 1
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %incdec.ptr, i64 0, i32 0
  %14 = load i8*, i8** %algorithm_names, align 8, !tbaa !16
  %cmp17.not = icmp eq i8* %14, null
  br i1 %cmp17.not, label %if.end20, label %for.body18, !llvm.loop !18

if.end20:                                         ; preds = %for.body18, %for.cond16.preheader, %if.end12
  call void @ossl_provider_unquery_operation(%struct.ossl_provider_st* noundef %provider, i32 noundef %cur_operation.084, %struct.ossl_algorithm_st* noundef %call13) #5
  %15 = load i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)*, i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)** %7, align 8, !tbaa !13
  %cmp21 = icmp eq i32 (%struct.ossl_provider_st*, i32, i32, i8*, i32*)* %15, null
  br i1 %cmp21, label %for.inc35, label %if.else23

if.else23:                                        ; preds = %if.end20
  %16 = load i32, i32* %no_store, align 4, !tbaa !15
  %17 = load i8*, i8** %5, align 8, !tbaa !14
  %call26 = call i32 %15(%struct.ossl_provider_st* noundef %provider, i32 noundef %cur_operation.084, i32 noundef %16, i8* noundef %17, i32* noundef nonnull %ret) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup.thread, label %if.end30

if.end30:                                         ; preds = %if.else23
  %.pre = load i32, i32* %ret, align 4, !tbaa !15
  %tobool31.not = icmp eq i32 %.pre, 0
  %spec.select90 = select i1 %tobool31.not, i32 0, i32 %ok.087
  br label %for.inc35

cleanup.thread:                                   ; preds = %if.else, %if.else23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  br label %cleanup37

for.inc35:                                        ; preds = %if.end30, %if.end20, %if.end9
  %ok.2 = phi i32 [ %ok.087, %if.end9 ], [ %ok.087, %if.end20 ], [ %spec.select90, %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  %inc = add i32 %cur_operation.084, 1
  %exitcond.not = icmp eq i32 %cur_operation.084, %spec.select74
  br i1 %exitcond.not, label %cleanup37, label %for.body, !llvm.loop !20

cleanup37:                                        ; preds = %for.inc35, %entry, %cleanup.thread
  %retval.2 = phi i32 [ 0, %cleanup.thread ], [ 1, %entry ], [ %ok.2, %for.inc35 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* nocapture noundef readonly %algo) local_unnamed_addr #0 {
entry:
  %algorithm_names = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algo, i64 0, i32 0
  %0 = load i8*, i8** %algorithm_names, align 8, !tbaa !16
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @strchr(i8* noundef nonnull %0, i32 noundef 58) #7
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call5 = tail call i64 @strlen(i8* noundef nonnull %0) #7
  br label %if.end7

if.else:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %first_name_len.0 = phi i64 [ %call5, %if.then3 ], [ %sub.ptr.sub, %if.else ]
  %call9 = tail call i8* @CRYPTO_strndup(i8* noundef nonnull %0, i64 noundef %first_name_len.0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #5
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end7
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_algorithm_get1_first_name, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.then11 ], [ %call9, %if.end7 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.ossl_algorithm_st* @ossl_provider_query_operation(%struct.ossl_provider_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

declare void @ossl_provider_unquery_operation(%struct.ossl_provider_st* noundef, i32 noundef, %struct.ossl_algorithm_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"algorithm_data_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 24}
!13 = !{!5, !6, i64 32}
!14 = !{!5, !6, i64 40}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"ossl_algorithm_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
