; ModuleID = 'crypto/asn1/asn_moid.c'
source_filename = "crypto/asn1/asn_moid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_imodule_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type opaque
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [12 x i8] c"oid_section\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/asn1/asn_moid.c\00", align 1
@__func__.oid_module_init = private unnamed_addr constant [16 x i8] c"oid_module_init\00", align 1
@__func__.do_create = private unnamed_addr constant [10 x i8] c"do_create\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ASN1_add_oid_module() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CONF_module_add(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef nonnull @oid_module_init, void (%struct.conf_imodule_st*)* noundef nonnull @oid_module_finish) #5
  ret void
}

declare i32 @CONF_module_add(i8* noundef, i32 (%struct.conf_imodule_st*, %struct.conf_st*)* noundef, void (%struct.conf_imodule_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @oid_module_init(%struct.conf_imodule_st* noundef %md, %struct.conf_st* noundef %cnf) #0 {
entry:
  %call = tail call i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef %md) #5
  %call1 = tail call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef %cnf, i8* noundef %call) #5
  %cmp = icmp eq %struct.stack_st_CONF_VALUE* %call1, null
  br i1 %cmp, label %cleanup.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef nonnull %call1) #6
  %call321 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp422 = icmp sgt i32 %call321, 0
  br i1 %cmp422, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #5
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %cleanup, !llvm.loop !4

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.023 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef %i.023) #5
  %value = getelementptr inbounds i8, i8* %call6, i64 16
  %0 = bitcast i8* %value to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !6
  %name = getelementptr inbounds i8, i8* %call6, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call7 = tail call fastcc i32 @do_create(i8* noundef %1, i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call7, 0
  %inc = add nuw nsw i32 %i.023, 1
  br i1 %tobool.not, label %cleanup.sink.split, label %for.cond

cleanup.sink.split:                               ; preds = %for.body, %entry
  %.sink24 = phi i32 [ 32, %entry ], [ 38, %for.body ]
  %.sink = phi i32 [ 172, %entry ], [ 171, %for.body ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.oid_module_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %cleanup.sink.split, %for.cond.preheader
  %retval.0 = phi i32 [ 1, %for.cond.preheader ], [ 0, %cleanup.sink.split ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @oid_module_finish(%struct.conf_imodule_st* nocapture noundef %md) #2 {
entry:
  ret void
}

declare i8* @CONF_imodule_get_value(%struct.conf_imodule_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_create(i8* noundef %value, i8* noundef %name) unnamed_addr #0 {
entry:
  %call = tail call i8* @strrchr(i8* noundef %value, i32 noundef 44) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.end38, label %if.else

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %0 = load i8, i8* %add.ptr, align 1, !tbaa !12
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  %conv480 = sext i8 %0 to i32
  %call581 = tail call i32 @ossl_ctype_check(i32 noundef %conv480, i32 noundef 8) #5
  %tobool.not82 = icmp eq i32 %call581, 0
  br i1 %tobool.not82, label %while.cond6.preheader, label %while.cond.while.cond_crit_edge.lr.ph, !llvm.loop !13

while.cond.while.cond_crit_edge.lr.ph:            ; preds = %while.cond.preheader
  %incdec.ptr83 = getelementptr inbounds i8, i8* %call, i64 2
  br label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond.while.cond_crit_edge.lr.ph, %while.cond.while.cond_crit_edge
  %incdec.ptr84 = phi i8* [ %incdec.ptr83, %while.cond.while.cond_crit_edge.lr.ph ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %.pre = load i8, i8* %incdec.ptr84, align 1, !tbaa !12
  %conv4 = sext i8 %.pre to i32
  %call5 = tail call i32 @ossl_ctype_check(i32 noundef %conv4, i32 noundef 8) #5
  %tobool.not = icmp eq i32 %call5, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %incdec.ptr84, i64 1
  br i1 %tobool.not, label %while.cond6.preheader, label %while.cond.while.cond_crit_edge, !llvm.loop !13

while.cond6.preheader:                            ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %ostr.0.lcssa = phi i8* [ %add.ptr, %while.cond.preheader ], [ %incdec.ptr84, %while.cond.while.cond_crit_edge ]
  br label %while.cond6

while.cond6:                                      ; preds = %while.cond6, %while.cond6.preheader
  %ln.0 = phi i8* [ %incdec.ptr11, %while.cond6 ], [ %value, %while.cond6.preheader ]
  %1 = load i8, i8* %ln.0, align 1, !tbaa !12
  %conv7 = sext i8 %1 to i32
  %call8 = tail call i32 @ossl_ctype_check(i32 noundef %conv7, i32 noundef 8) #5
  %tobool9.not = icmp eq i32 %call8, 0
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ln.0, i64 1
  br i1 %tobool9.not, label %while.cond14, label %while.cond6, !llvm.loop !14

while.cond14:                                     ; preds = %while.cond6, %while.body18
  %call.pn = phi i8* [ %p.0, %while.body18 ], [ %call, %while.cond6 ]
  %p.0 = getelementptr inbounds i8, i8* %call.pn, i64 -1
  %2 = load i8, i8* %p.0, align 1, !tbaa !12
  %conv15 = sext i8 %2 to i32
  %call16 = tail call i32 @ossl_ctype_check(i32 noundef %conv15, i32 noundef 8) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.end24, label %while.body18

while.body18:                                     ; preds = %while.cond14
  %cmp19 = icmp eq i8* %p.0, %ln.0
  br i1 %cmp19, label %cleanup, label %while.cond14, !llvm.loop !15

while.end24:                                      ; preds = %while.cond14
  %sub.ptr.lhs.cast = ptrtoint i8* %call.pn to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %ln.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call26 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 86) #5
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end24
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.do_create, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end30:                                         ; preds = %while.end24
  %call34 = tail call i8* @memcpy(i8* noundef nonnull %call26, i8* noundef nonnull %ln.0, i64 noundef %sub.ptr.sub) #5
  %arrayidx = getelementptr inbounds i8, i8* %call26, i64 %sub.ptr.sub
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  br label %if.end38

if.end38:                                         ; preds = %entry, %if.end30
  %ln.1 = phi i8* [ %call26, %if.end30 ], [ %name, %entry ]
  %ostr.1 = phi i8* [ %ostr.0.lcssa, %if.end30 ], [ %value, %entry ]
  %lntmp.0 = phi i8* [ %call26, %if.end30 ], [ null, %entry ]
  %call39 = tail call i32 @OBJ_create(i8* noundef %ostr.1, i8* noundef %name, i8* noundef %ln.1) #5
  tail call void @CRYPTO_free(i8* noundef %lntmp.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97) #5
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.body18, %if.else, %if.end38, %if.then29
  %retval.0 = phi i32 [ %conv41, %if.end38 ], [ 0, %if.then29 ], [ 0, %if.else ], [ 0, %while.body18 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @OBJ_create(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !8, i64 16}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
