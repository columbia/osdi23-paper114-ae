; ModuleID = 'crypto/bn/bn_print.c'
source_filename = "crypto/bn/bn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@Hex = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@BN_options.init = internal unnamed_addr global i1 false, align 4
@BN_options.data = internal global [16 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"bn(%zu,%zu)\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_print_fp(%struct._IO_FILE* noundef %fp, %struct.bignum_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #2
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #2
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #2
  %call3 = tail call i32 @BN_print(%struct.bio_st* noundef nonnull %call1, %struct.bignum_st* noundef %a) #3
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_print(%struct.bio_st* noundef %bp, %struct.bignum_st* noundef %a) local_unnamed_addr #0 {
entry:
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 noundef 1) #2
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %a) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %call4 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1) #2
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.end7, label %end

if.end7:                                          ; preds = %land.lhs.true3, %if.end
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !10
  %cmp847 = icmp sgt i32 %1, 0
  br i1 %cmp847, label %for.cond9.preheader.lr.ph, label %end

for.cond9.preheader.lr.ph:                        ; preds = %if.end7
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = zext i32 %1 to i64
  br label %for.cond9.preheader

for.cond.loopexit:                                ; preds = %for.inc
  %cmp8 = icmp sgt i64 %indvars.iv52, 1
  br i1 %cmp8, label %for.cond9.preheader, label %end, !llvm.loop !11

for.cond9.preheader:                              ; preds = %for.cond9.preheader.lr.ph, %for.cond.loopexit
  %indvars.iv52 = phi i64 [ %2, %for.cond9.preheader.lr.ph ], [ %indvars.iv.next53, %for.cond.loopexit ]
  %z.048 = phi i32 [ 0, %for.cond9.preheader.lr.ph ], [ %z.2, %for.cond.loopexit ]
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1
  br label %for.body11

for.body11:                                       ; preds = %for.cond9.preheader, %for.inc
  %indvars.iv = phi i64 [ 60, %for.cond9.preheader ], [ %indvars.iv.next, %for.inc ]
  %z.145 = phi i32 [ %z.048, %for.cond9.preheader ], [ %z.2, %for.inc ]
  %3 = load i64*, i64** %d, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %indvars.iv.next53
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !14
  %shr = lshr i64 %4, %indvars.iv
  %5 = trunc i64 %shr to i32
  %conv = and i32 %5, 15
  %tobool12 = icmp ne i32 %z.145, 0
  %cmp13 = icmp ne i32 %conv, 0
  %or.cond = select i1 %tobool12, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body11
  %6 = zext i32 %conv to i64
  %arrayidx17 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %6
  %call18 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef nonnull %arrayidx17, i32 noundef 1) #2
  %cmp19.not = icmp eq i32 %call18, 1
  br i1 %cmp19.not, label %for.inc, label %end

for.inc:                                          ; preds = %if.then15, %for.body11
  %z.2 = phi i32 [ 0, %for.body11 ], [ 1, %if.then15 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %cmp10.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp10.not, label %for.cond.loopexit, label %for.body11, !llvm.loop !16

end:                                              ; preds = %for.cond.loopexit, %if.then15, %if.end7, %land.lhs.true3, %land.lhs.true
  %ret.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %land.lhs.true3 ], [ 1, %if.end7 ], [ 0, %if.then15 ], [ 1, %for.cond.loopexit ]
  ret i32 %ret.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @BN_options() local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @BN_options.init, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @BN_options.init, align 4
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @BN_options.data, i64 0, i64 0), i64 noundef 16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef 64, i64 noundef 64) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @BN_options.data, i64 0, i64 0)
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

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
!4 = !{!5, !9, i64 16}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !12}
