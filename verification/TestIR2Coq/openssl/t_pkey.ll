; ModuleID = 'crypto/asn1/t_pkey.c'
source_filename = "crypto/asn1/t_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s %s%lu (%s0x%lx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"crypto/asn1/t_pkey.c\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" (Negative)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_buf_print(%struct.bio_st* noundef %bp, i8* nocapture noundef readonly %buf, i64 noundef %buflen, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %cmp31.not = icmp eq i64 %buflen, 0
  br i1 %cmp31.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i64 %buflen, -1
  br label %for.body

for.cond:                                         ; preds = %if.end8
  %exitcond.not = icmp eq i64 %inc, %buflen
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !4

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.032 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %rem = urem i64 %i.032, 15
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %cmp2.not = icmp eq i64 %i.032, 0
  br i1 %cmp2.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #2
  %cmp3 = icmp slt i32 %call, 1
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then
  %call5 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef 128) #2
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %i.032
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %cmp9 = icmp eq i64 %i.032, %sub
  %cond = select i1 %cmp9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv, i8* noundef %cond) #2
  %cmp12 = icmp slt i32 %call11, 1
  %inc = add nuw i64 %i.032, 1
  br i1 %cmp12, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %call16 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #2
  %cmp17 = icmp sgt i32 %call16, 0
  %. = zext i1 %cmp17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end, %land.lhs.true, %for.end
  %retval.0 = phi i32 [ %., %for.end ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_indent(%struct.bio_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_bn_print(%struct.bio_st* noundef %bp, i8* noundef %number, %struct.bignum_st* noundef %num, i8* nocapture noundef readnone %ign, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %num, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %num) #2
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %call1 = tail call i32 @BIO_indent(%struct.bio_st* noundef %bp, i32 noundef %indent, i32 noundef 128) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %num) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef %number) #2
  %cmp9 = icmp sgt i32 %call8, 0
  %. = zext i1 %cmp9 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %call13 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %num) #2
  %cmp14 = icmp slt i32 %call13, 65
  br i1 %cmp14, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i64* @bn_get_words(%struct.bignum_st* noundef nonnull %num) #2
  %0 = load i64, i64* %call16, align 8, !tbaa !9
  %call17 = tail call i64* @bn_get_words(%struct.bignum_st* noundef nonnull %num) #2
  %1 = load i64, i64* %call17, align 8, !tbaa !9
  %call19 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef %number, i8* noundef %cond, i64 noundef %0, i8* noundef %cond, i64 noundef %1) #2
  %cmp20 = icmp sgt i32 %call19, 0
  %.92 = zext i1 %cmp20 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call24 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %num) #2
  %add25 = add nsw i32 %call24, 7
  %div26 = sdiv i32 %add25, 8
  %add27 = add nsw i32 %div26, 1
  %conv = sext i32 %add27 to i64
  %call28 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 73) #2
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %err, label %if.end32

if.end32:                                         ; preds = %if.end23
  store i8 0, i8* %call28, align 1, !tbaa !6
  %2 = load i8, i8* %cond, align 1, !tbaa !6
  %cmp36 = icmp eq i8 %2, 45
  %cond38 = select i1 %cmp36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %call39 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %number, i8* noundef %cond38) #2
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %err, label %if.end43

if.end43:                                         ; preds = %if.end32
  %add.ptr = getelementptr inbounds i8, i8* %call28, i64 1
  %call44 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %num, i8* noundef nonnull %add.ptr) #2
  %3 = load i8, i8* %add.ptr, align 1, !tbaa !6
  %tobool47.not = icmp sgt i8 %3, -1
  %not.tobool47.not = xor i1 %tobool47.not, true
  %inc = zext i1 %not.tobool47.not to i32
  %n.0 = add nsw i32 %call44, %inc
  %tmp.0 = select i1 %tobool47.not, i8* %add.ptr, i8* %call28
  %conv50 = sext i32 %n.0 to i64
  %add51 = add nsw i32 %indent, 4
  %call52 = tail call i32 @ASN1_buf_print(%struct.bio_st* noundef %bp, i8* noundef nonnull %tmp.0, i64 noundef %conv50, i32 noundef %add51) #3
  %cmp53 = icmp ne i32 %call52, 0
  %spec.select = zext i1 %cmp53 to i32
  br label %err

err:                                              ; preds = %if.end43, %if.end32, %if.end23
  %rv.0 = phi i32 [ 0, %if.end23 ], [ 0, %if.end32 ], [ %spec.select, %if.end43 ]
  tail call void @CRYPTO_clear_free(i8* noundef %call28, i64 noundef %conv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef 91) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then7, %if.end, %entry, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ 1, %entry ], [ 0, %if.end ], [ %., %if.then7 ], [ %.92, %if.then15 ]
  ret i32 %retval.0
}

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i64* @bn_get_words(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
