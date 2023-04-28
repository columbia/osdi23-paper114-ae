; ModuleID = 'crypto/property/defn_cache.c'
source_filename = "crypto/property/defn_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_property_list_st = type { i32, i8, [1 x %struct.ossl_property_definition_st] }
%struct.ossl_property_definition_st = type { i32, i32, i32, i8, %union.anon }
%union.anon = type { i64 }
%struct.PROPERTY_DEFN_ELEM = type { i8*, %struct.ossl_property_list_st*, [1 x i8] }
%struct.lhash_st_PROPERTY_DEFN_ELEM = type { %union.lh_PROPERTY_DEFN_ELEM_dummy }
%union.lh_PROPERTY_DEFN_ELEM_dummy = type { i8* }
%struct.lhash_st = type opaque

@property_defns_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @property_defns_new, void (i8*)* @property_defns_free }, align 8
@.str = private unnamed_addr constant [29 x i8] c"crypto/property/defn_cache.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_property_list_st* @ossl_prop_defn_get(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %prop) local_unnamed_addr #0 {
entry:
  %elem = alloca %struct.PROPERTY_DEFN_ELEM, align 8
  %0 = bitcast %struct.PROPERTY_DEFN_ELEM* %elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 2, %struct.ossl_lib_ctx_method* noundef nonnull @property_defns_method) #7
  %1 = bitcast i8* %call to %struct.lhash_st_PROPERTY_DEFN_ELEM*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ossl_lib_ctx_read_lock(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %prop2 = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %elem, i64 0, i32 0
  store i8* %prop, i8** %prop2, align 8, !tbaa !4
  %call3 = call fastcc %struct.PROPERTY_DEFN_ELEM* @lh_PROPERTY_DEFN_ELEM_retrieve(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef nonnull %1, %struct.PROPERTY_DEFN_ELEM* noundef nonnull %elem) #8
  %call4 = call i32 @ossl_lib_ctx_unlock(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %cmp5.not = icmp eq %struct.PROPERTY_DEFN_ELEM* %call3, null
  br i1 %cmp5.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.end
  %defn = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %call3, i64 0, i32 1
  %2 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %defn, align 8, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi %struct.ossl_property_list_st* [ null, %lor.lhs.false ], [ null, %entry ], [ %2, %cond.true ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret %struct.ossl_property_list_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

declare i32 @ossl_lib_ctx_read_lock(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.PROPERTY_DEFN_ELEM* @lh_PROPERTY_DEFN_ELEM_retrieve(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef %lh, %struct.PROPERTY_DEFN_ELEM* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %lh to %struct.lhash_st*
  %1 = bitcast %struct.PROPERTY_DEFN_ELEM* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to %struct.PROPERTY_DEFN_ELEM*
  ret %struct.PROPERTY_DEFN_ELEM* %2
}

declare i32 @ossl_lib_ctx_unlock(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_prop_defn_set(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %prop, %struct.ossl_property_list_st* noundef %pl) local_unnamed_addr #0 {
entry:
  %elem = alloca %struct.PROPERTY_DEFN_ELEM, align 8
  %0 = bitcast %struct.PROPERTY_DEFN_ELEM* %elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 2, %struct.ossl_lib_ctx_method* noundef nonnull @property_defns_method) #7
  %1 = bitcast i8* %call to %struct.lhash_st_PROPERTY_DEFN_ELEM*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %prop, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ossl_lib_ctx_write_lock(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq %struct.ossl_property_list_st* %pl, null
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %prop9 = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %elem, i64 0, i32 0
  store i8* %prop, i8** %prop9, align 8, !tbaa !4
  call fastcc void @lh_PROPERTY_DEFN_ELEM_delete(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef nonnull %1, %struct.PROPERTY_DEFN_ELEM* noundef nonnull %elem) #8
  br label %end

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i64 @strlen(i8* noundef nonnull %prop) #9
  %add = add i64 %call12, 24
  %call13 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #7
  %cmp14.not = icmp eq i8* %call13, null
  br i1 %cmp14.not, label %if.end29, label %if.then15

if.then15:                                        ; preds = %if.end11
  %2 = bitcast i8* %call13 to %struct.PROPERTY_DEFN_ELEM*
  %body = getelementptr inbounds i8, i8* %call13, i64 16
  %prop16 = bitcast i8* %call13 to i8**
  store i8* %body, i8** %prop16, align 8, !tbaa !4
  %defn = getelementptr inbounds i8, i8* %call13, i64 8
  %3 = bitcast i8* %defn to %struct.ossl_property_list_st**
  store %struct.ossl_property_list_st* %pl, %struct.ossl_property_list_st** %3, align 8, !tbaa !9
  %add19 = add i64 %call12, 1
  %call20 = tail call i8* @memcpy(i8* noundef nonnull %body, i8* noundef nonnull %prop, i64 noundef %add19) #7
  %call21 = tail call fastcc %struct.PROPERTY_DEFN_ELEM* @lh_PROPERTY_DEFN_ELEM_insert(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef nonnull %1, %struct.PROPERTY_DEFN_ELEM* noundef nonnull %2) #8
  %cmp22.not = icmp eq %struct.PROPERTY_DEFN_ELEM* %call21, null
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then15
  tail call void @property_defn_free(%struct.PROPERTY_DEFN_ELEM* noundef nonnull %call21) #8
  br label %end

if.end24:                                         ; preds = %if.then15
  %call25 = tail call fastcc i32 @lh_PROPERTY_DEFN_ELEM_error(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef nonnull %1) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %if.end29

if.end29:                                         ; preds = %if.end24, %if.end11
  tail call void @CRYPTO_free(i8* noundef %call13, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 126) #7
  br label %end

end:                                              ; preds = %if.end24, %if.end29, %if.then23, %if.then8
  %res.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.then23 ], [ 0, %if.end29 ], [ 1, %if.end24 ]
  %call30 = call i32 @ossl_lib_ctx_unlock(%struct.ossl_lib_ctx_st* noundef %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %end
  %retval.0 = phi i32 [ %res.0, %end ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @ossl_lib_ctx_write_lock(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_DEFN_ELEM_delete(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef %lh, %struct.PROPERTY_DEFN_ELEM* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %lh to %struct.lhash_st*
  %1 = bitcast %struct.PROPERTY_DEFN_ELEM* %d to i8*
  %call = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.PROPERTY_DEFN_ELEM* @lh_PROPERTY_DEFN_ELEM_insert(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef %lh, %struct.PROPERTY_DEFN_ELEM* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %lh to %struct.lhash_st*
  %1 = bitcast %struct.PROPERTY_DEFN_ELEM* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #7
  %2 = bitcast i8* %call to %struct.PROPERTY_DEFN_ELEM*
  ret %struct.PROPERTY_DEFN_ELEM* %2
}

; Function Attrs: noinline nounwind uwtable
define internal void @property_defn_free(%struct.PROPERTY_DEFN_ELEM* noundef %elem) #0 {
entry:
  %defn = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %elem, i64 0, i32 1
  %0 = load %struct.ossl_property_list_st*, %struct.ossl_property_list_st** %defn, align 8, !tbaa !9
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %0) #7
  %1 = bitcast %struct.PROPERTY_DEFN_ELEM* %elem to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 47) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_PROPERTY_DEFN_ELEM_error(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #7
  ret i32 %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @property_defns_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call fastcc %struct.lhash_st_PROPERTY_DEFN_ELEM* @lh_PROPERTY_DEFN_ELEM_new() #8
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %call to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @property_defns_free(i8* noundef %vproperty_defns) #0 {
entry:
  %0 = bitcast i8* %vproperty_defns to %struct.lhash_st_PROPERTY_DEFN_ELEM*
  %cmp.not = icmp eq i8* %vproperty_defns, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @lh_PROPERTY_DEFN_ELEM_doall(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef nonnull %0) #8
  tail call fastcc void @lh_PROPERTY_DEFN_ELEM_free(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef nonnull %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_PROPERTY_DEFN_ELEM* @lh_PROPERTY_DEFN_ELEM_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.PROPERTY_DEFN_ELEM*)* @property_defn_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.PROPERTY_DEFN_ELEM*, %struct.PROPERTY_DEFN_ELEM*)* @property_defn_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_PROPERTY_DEFN_ELEM*
  ret %struct.lhash_st_PROPERTY_DEFN_ELEM* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @property_defn_hash(%struct.PROPERTY_DEFN_ELEM* nocapture noundef readonly %a) #0 {
entry:
  %prop = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %a, i64 0, i32 0
  %0 = load i8*, i8** %prop, align 8, !tbaa !4
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #7
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @property_defn_cmp(%struct.PROPERTY_DEFN_ELEM* nocapture noundef readonly %a, %struct.PROPERTY_DEFN_ELEM* nocapture noundef readonly %b) #5 {
entry:
  %prop = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %a, i64 0, i32 0
  %0 = load i8*, i8** %prop, align 8, !tbaa !4
  %prop1 = getelementptr inbounds %struct.PROPERTY_DEFN_ELEM, %struct.PROPERTY_DEFN_ELEM* %b, i64 0, i32 0
  %1 = load i8*, i8** %prop1, align 8, !tbaa !4
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %1) #9
  ret i32 %call
}

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_DEFN_ELEM_doall(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.PROPERTY_DEFN_ELEM*)* @property_defn_free to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_PROPERTY_DEFN_ELEM_free(%struct.lhash_st_PROPERTY_DEFN_ELEM* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_PROPERTY_DEFN_ELEM* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #7
  ret void
}

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_property_free(%struct.ossl_property_list_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 8, !7, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
