; ModuleID = 'crypto/engine/tb_pkmeth.c'
source_filename = "crypto/engine/tb_pkmeth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_engine_table = type opaque
%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
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

@pkey_meth_table = internal global %struct.st_engine_table* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"crypto/engine/tb_pkmeth.c\00", align 1
@__func__.ENGINE_get_pkey_meth = private unnamed_addr constant [21 x i8] c"ENGINE_get_pkey_meth\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_unregister_pkey_meths(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  tail call void @engine_table_unregister(%struct.st_engine_table** noundef nonnull @pkey_meth_table, %struct.engine_st* noundef %e) #5
  ret void
}

declare void @engine_table_unregister(%struct.st_engine_table** noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_register_pkey_meths(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %nids = alloca i32*, align 8
  %pkey_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 9
  %0 = load i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32** %nids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = call i32 %0(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #5
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  br label %return

cleanup:                                          ; preds = %if.then
  %2 = load i32*, i32** %nids, align 8, !tbaa !11
  %call3 = call i32 @engine_table_register(%struct.st_engine_table** noundef nonnull @pkey_meth_table, void ()* noundef nonnull @engine_unregister_all_pkey_meths, %struct.engine_st* noundef nonnull %e, i32* noundef %2, i32 noundef %call, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi i32 [ %call3, %cleanup ], [ 1, %cleanup.thread ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @engine_table_register(%struct.st_engine_table** noundef, void ()* noundef, %struct.engine_st* noundef, i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @engine_unregister_all_pkey_meths() #0 {
entry:
  tail call void @engine_table_cleanup(%struct.st_engine_table** noundef nonnull @pkey_meth_table) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_register_all_pkey_meths() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_first() #5
  %tobool.not6 = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %e.07 = phi %struct.engine_st* [ %call2, %for.body ], [ %call, %entry ]
  %call1 = tail call i32 @ENGINE_register_pkey_meths(%struct.engine_st* noundef nonnull %e.07) #7
  %call2 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %e.07) #5
  %tobool.not = icmp eq %struct.engine_st* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_default_pkey_meths(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %nids = alloca i32*, align 8
  %pkey_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 9
  %0 = load i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32** %nids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = call i32 %0(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #5
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  br label %return

cleanup:                                          ; preds = %if.then
  %2 = load i32*, i32** %nids, align 8, !tbaa !11
  %call3 = call i32 @engine_table_register(%struct.st_engine_table** noundef nonnull @pkey_meth_table, void ()* noundef nonnull @engine_unregister_all_pkey_meths, %struct.engine_st* noundef nonnull %e, i32* noundef %2, i32 noundef %call, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi i32 [ %call3, %cleanup ], [ 1, %cleanup.thread ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_pkey_meth_engine(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** noundef nonnull @pkey_meth_table, i32 noundef %nid, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #5
  ret %struct.engine_st* %call
}

declare %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_method_st* @ENGINE_get_pkey_meth(%struct.engine_st* noundef %e, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %ret = alloca %struct.evp_pkey_method_st*, align 8
  %0 = bitcast %struct.evp_pkey_method_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* @ENGINE_get_pkey_meths(%struct.engine_st* noundef %e) #7
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %call, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 %call(%struct.engine_st* noundef %e, %struct.evp_pkey_method_st** noundef nonnull %ret, i32** noundef null, i32 noundef %nid) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ENGINE_get_pkey_meth, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 101, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %ret, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_method_st* [ %1, %if.end ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret %struct.evp_pkey_method_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* @ENGINE_get_pkey_meths(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #3 {
entry:
  %pkey_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 9
  %0 = load i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !4
  ret i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_pkey_meths(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* noundef %f) local_unnamed_addr #4 {
entry:
  %pkey_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 9
  store i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %f, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @engine_pkey_meths_free(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %pkm = alloca %struct.evp_pkey_method_st*, align 8
  %pknids = alloca i32*, align 8
  %0 = bitcast %struct.evp_pkey_method_st** %pkm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %pkey_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 9
  %1 = load i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %1, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i32** %pknids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  %call = call i32 %1(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_method_st** noundef null, i32** noundef nonnull %pknids, i32 noundef 0) #5
  %cmp15 = icmp sgt i32 %call, 0
  br i1 %cmp15, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = load i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)** %pkey_meths, align 8, !tbaa !4
  %4 = load i32*, i32** %pknids, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !14
  %call3 = call i32 %3(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_method_st** noundef nonnull %pkm, i32** noundef null, i32 noundef %5) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pkm, align 8, !tbaa !11
  call void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef %6) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.inc, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret void
}

declare void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef) local_unnamed_addr #1

declare void @engine_table_cleanup(%struct.st_engine_table** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 72}
!5 = !{!"engine_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !7, i64 156, !9, i64 160, !10, i64 168, !6, i64 184, !6, i64 192}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !13}
