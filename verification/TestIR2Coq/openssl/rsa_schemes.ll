; ModuleID = 'crypto/rsa/rsa_schemes.c'
source_filename = "crypto/rsa/rsa_schemes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_item_st = type { i32, i8* }
%struct.evp_md_st = type opaque

@oaeppss_name_nid_map = internal unnamed_addr constant [7 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.ossl_item_st { i32 675, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0) }, %struct.ossl_item_st { i32 672, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.ossl_item_st { i32 673, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0) }, %struct.ossl_item_st { i32 674, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0) }, %struct.ossl_item_st { i32 1094, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }, %struct.ossl_item_st { i32 1095, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [5 x i8] c"MGF1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SHA2-224\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SHA2-384\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SHA2-512\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"SHA2-512/224\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SHA2-512/256\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_oaeppss_md2nid(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call fastcc i32 @meth2nid(i8* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @meth2nid(i8* noundef %meth) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %meth, null
  br i1 %cmp.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader
  %i.02.lcssa = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ]
  %id = getelementptr inbounds [7 x %struct.ossl_item_st], [7 x %struct.ossl_item_st]* @oaeppss_name_nid_map, i64 0, i64 %i.02.lcssa, i32 0
  %0 = load i32, i32* %id, align 16, !tbaa !4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call.1 = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #4
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %if.then2

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #4
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %if.then2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %if.then2

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #4
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %if.then2

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #4
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %if.then2

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call fastcc i32 @md_is_a(i8* noundef nonnull %meth, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #4
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %cleanup, label %if.then2

cleanup:                                          ; preds = %for.inc.5, %entry, %if.then2
  %retval.0 = phi i32 [ %0, %if.then2 ], [ 0, %entry ], [ 0, %for.inc.5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @md_is_a(i8* noundef %md, i8* noundef %name) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %md to %struct.evp_md_st*
  %call = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %0, i8* noundef %name) #5
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @ossl_rsa_oaeppss_nid2name(i32 noundef %md) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i8* @nid2name(i32 noundef %md) #4
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i8* @nid2name(i32 noundef %meth) unnamed_addr #1 {
entry:
  switch i32 %meth, label %cleanup [
    i32 64, label %if.then
    i32 675, label %if.then.fold.split
    i32 672, label %if.then.fold.split4
    i32 673, label %if.then.fold.split5
    i32 674, label %if.then.fold.split6
    i32 1094, label %if.then.fold.split7
    i32 1095, label %if.then.fold.split8
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split4:                              ; preds = %entry
  br label %if.then

if.then.fold.split5:                              ; preds = %entry
  br label %if.then

if.then.fold.split6:                              ; preds = %entry
  br label %if.then

if.then.fold.split7:                              ; preds = %entry
  br label %if.then

if.then.fold.split8:                              ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split8, %if.then.fold.split7, %if.then.fold.split6, %if.then.fold.split5, %if.then.fold.split4, %if.then.fold.split
  %i.02.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split4 ], [ 3, %if.then.fold.split5 ], [ 4, %if.then.fold.split6 ], [ 5, %if.then.fold.split7 ], [ 6, %if.then.fold.split8 ]
  %ptr = getelementptr inbounds [7 x %struct.ossl_item_st], [7 x %struct.ossl_item_st]* @oaeppss_name_nid_map, i64 0, i64 %i.02.lcssa, i32 1
  %0 = load i8*, i8** %ptr, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @ossl_rsa_mgf_nid2name(i32 noundef %mgf) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %mgf, 911
  %. = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null
  ret i8* %.
}

declare i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_item_st", !6, i64 0, !9, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !9, i64 8}
