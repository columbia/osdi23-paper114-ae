; ModuleID = 'crypto/asn1/x_bignum.c'
source_filename = "crypto/asn1/x_bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.ASN1_PRIMITIVE_FUNCS_st = type { i8*, i64, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)*, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)*, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* }
%struct.ASN1_VALUE_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.bignum_st = type opaque

@BIGNUM_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @bignum_pf to i8*), i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0) }, align 8
@bignum_pf = internal global %struct.ASN1_PRIMITIVE_FUNCS_st { i8* null, i64 0, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @bn_new, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @bn_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* null, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)* @bn_c2i, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)* @bn_i2c, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* @bn_print }, align 8
@.str = private unnamed_addr constant [7 x i8] c"BIGNUM\00", align 1
@CBIGNUM_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 2, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* bitcast (%struct.ASN1_PRIMITIVE_FUNCS_st* @cbignum_pf to i8*), i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0) }, align 8
@cbignum_pf = internal global %struct.ASN1_PRIMITIVE_FUNCS_st { i8* null, i64 0, i32 (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @bn_secure_new, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* @bn_free, void (%struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*)* null, i32 (%struct.ASN1_VALUE_st**, i8*, i32, i32, i8*, %struct.ASN1_ITEM_st*)* @bn_secure_c2i, i32 (%struct.ASN1_VALUE_st**, i8*, i32*, %struct.ASN1_ITEM_st*)* @bn_i2c, i32 (%struct.bio_st*, %struct.ASN1_VALUE_st**, %struct.ASN1_ITEM_st*, i32, %struct.asn1_pctx_st*)* @bn_print }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"CBIGNUM\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @BIGNUM_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @BIGNUM_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @CBIGNUM_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @CBIGNUM_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bn_new(%struct.ASN1_VALUE_st** nocapture noundef writeonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #3
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.bignum_st**
  store %struct.bignum_st* %call, %struct.bignum_st** %0, align 8, !tbaa !4
  %cmp.not = icmp ne %struct.bignum_st* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal void @bn_free(%struct.ASN1_VALUE_st** nocapture noundef %pval, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %it, i64 0, i32 5
  %1 = load i64, i64* %size, align 8, !tbaa !8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  %2 = bitcast %struct.ASN1_VALUE_st* %0 to %struct.bignum_st*
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %2) #3
  br label %if.end2

if.else:                                          ; preds = %if.end
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %2) #3
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  store %struct.ASN1_VALUE_st* null, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bn_c2i(%struct.ASN1_VALUE_st** nocapture noundef %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* nocapture noundef readnone %free_cont, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %1 = bitcast %struct.ASN1_VALUE_st* %0 to %struct.bignum_st*
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @bn_new(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef %it) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.phi.trans.insert = bitcast %struct.ASN1_VALUE_st** %pval to %struct.bignum_st**
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %.phi.trans.insert, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %2 = phi %struct.bignum_st* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %cont, i32 noundef %len, %struct.bignum_st* noundef %2) #3
  %tobool2.not = icmp eq %struct.bignum_st* %call1, null
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @bn_free(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef %it) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bn_i2c(%struct.ASN1_VALUE_st** nocapture noundef readonly %pval, i8* noundef %cont, i32* nocapture noundef readnone %putype, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.ASN1_VALUE_st* %0 to %struct.bignum_st*
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %1) #3
  %and = and i32 %call, 7
  %tobool.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool.not to i32
  %tobool3.not = icmp eq i8* %cont, null
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %incdec.ptr = getelementptr inbounds i8, i8* %cont, i64 1
  store i8 0, i8* %cont, align 1, !tbaa !11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %cont.addr.0 = phi i8* [ %incdec.ptr, %if.then6 ], [ %cont, %if.then4 ]
  %call8 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %1, i8* noundef nonnull %cont.addr.0) #3
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %call10 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %1) #3
  %add = add nsw i32 %call10, 7
  %div = sdiv i32 %add, 8
  %add11 = add nsw i32 %div, %.
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9
  %retval.0 = phi i32 [ %add11, %if.end9 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bn_print(%struct.bio_st* noundef %out, %struct.ASN1_VALUE_st** nocapture noundef readonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it, i32 noundef %indent, %struct.asn1_pctx_st* nocapture noundef readnone %pctx) #1 {
entry:
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.bignum_st**
  %1 = load %struct.bignum_st*, %struct.bignum_st** %0, align 8, !tbaa !4
  %call = tail call i32 @BN_print(%struct.bio_st* noundef %out, %struct.bignum_st* noundef %1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #3
  %cmp = icmp sgt i32 %call1, 0
  %. = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BN_print(%struct.bio_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @bn_secure_new(%struct.ASN1_VALUE_st** nocapture noundef writeonly %pval, %struct.ASN1_ITEM_st* nocapture noundef readnone %it) #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_secure_new() #3
  %0 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.bignum_st**
  store %struct.bignum_st* %call, %struct.bignum_st** %0, align 8, !tbaa !4
  %cmp.not = icmp ne %struct.bignum_st* %call, null
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bn_secure_c2i(%struct.ASN1_VALUE_st** nocapture noundef %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* nocapture noundef readnone %free_cont, %struct.ASN1_ITEM_st* nocapture noundef readonly %it) #1 {
entry:
  %0 = load %struct.ASN1_VALUE_st*, %struct.ASN1_VALUE_st** %pval, align 8, !tbaa !4
  %cmp = icmp eq %struct.ASN1_VALUE_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @bn_secure_new(%struct.ASN1_VALUE_st** noundef nonnull %pval, %struct.ASN1_ITEM_st* noundef %it) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call i32 @bn_c2i(%struct.ASN1_VALUE_st** noundef nonnull %pval, i8* noundef %cont, i32 noundef %len, i32 noundef %utype, i8* noundef %free_cont, %struct.ASN1_ITEM_st* noundef %it) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = bitcast %struct.ASN1_VALUE_st** %pval to %struct.bignum_st**
  %2 = load %struct.bignum_st*, %struct.bignum_st** %1, align 8, !tbaa !4
  tail call void @BN_set_flags(%struct.bignum_st* noundef %2, i32 noundef 4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %land.lhs.true ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #2

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !10, i64 40}
!9 = !{!"ASN1_ITEM_st", !6, i64 0, !10, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !10, i64 40, !5, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!6, !6, i64 0}
