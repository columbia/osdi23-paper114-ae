; ModuleID = 'crypto/asn1/t_bitst.c'
source_filename = "crypto/asn1/t_bitst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.BIT_STRING_BITNAME_st = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_BIT_STRING_name_print(%struct.bio_st* noundef %out, %struct.asn1_string_st* noundef %bs, %struct.BIT_STRING_BITNAME_st* nocapture noundef readonly %tbl, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4
  %lname17 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %tbl, i64 0, i32 1
  %0 = load i8*, i8** %lname17, align 8, !tbaa !4
  %tobool.not18 = icmp eq i8* %0, null
  br i1 %tobool.not18, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %lname21 = phi i8** [ %lname, %for.inc ], [ %lname17, %entry ]
  %first.020 = phi i8 [ %first.1, %for.inc ], [ 1, %entry ]
  %bnam.019 = phi %struct.BIT_STRING_BITNAME_st* [ %incdec.ptr, %for.inc ], [ %tbl, %entry ]
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.019, i64 0, i32 0
  %1 = load i32, i32* %bitnum, align 8, !tbaa !10
  %call1 = tail call i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef %bs, i32 noundef %1) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %tobool3.not = icmp eq i8 %first.020, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %2 = load i8*, i8** %lname21, align 8, !tbaa !4
  %call7 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef %2) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %first.1 = phi i8 [ 0, %if.end ], [ %first.020, %for.body ]
  %incdec.ptr = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.019, i64 1
  %lname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.019, i64 1, i32 1
  %3 = load i8*, i8** %lname, align 8, !tbaa !4
  %tobool.not = icmp eq i8* %3, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.inc, %entry
  %call9 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #4
  ret i32 1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ASN1_BIT_STRING_get_bit(%struct.asn1_string_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_BIT_STRING_set_asc(%struct.asn1_string_st* noundef %bs, i8* noundef %name, i32 noundef %value, %struct.BIT_STRING_BITNAME_st* nocapture noundef readonly %tbl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_BIT_STRING_num_asc(i8* noundef %name, %struct.BIT_STRING_BITNAME_st* noundef %tbl) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq %struct.asn1_string_st* %bs, null
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef nonnull %bs, i32 noundef %call, i32 noundef %value) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @ASN1_BIT_STRING_num_asc(i8* noundef readonly %name, %struct.BIT_STRING_BITNAME_st* nocapture noundef readonly %tbl) local_unnamed_addr #2 {
entry:
  %lname11 = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %tbl, i64 0, i32 1
  %0 = load i8*, i8** %lname11, align 8, !tbaa !4
  %tobool.not12 = icmp eq i8* %0, null
  br i1 %tobool.not12, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8* [ %4, %for.inc ], [ %0, %entry ]
  %bnam.013 = phi %struct.BIT_STRING_BITNAME_st* [ %incdec.ptr, %for.inc ], [ %tbl, %entry ]
  %sname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.013, i64 0, i32 2
  %2 = load i8*, i8** %sname, align 8, !tbaa !13
  %call = tail call i32 @strcmp(i8* noundef %2, i8* noundef %name) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call2 = tail call i32 @strcmp(i8* noundef nonnull %1, i8* noundef %name) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %bitnum = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.013, i64 0, i32 0
  %3 = load i32, i32* %bitnum, align 8, !tbaa !10
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.013, i64 1
  %lname = getelementptr inbounds %struct.BIT_STRING_BITNAME_st, %struct.BIT_STRING_BITNAME_st* %bnam.013, i64 1, i32 1
  %4 = load i8*, i8** %lname, align 8, !tbaa !4
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %cleanup, label %for.body, !llvm.loop !14

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i32 %retval.0
}

declare i32 @ASN1_BIT_STRING_set_bit(%struct.asn1_string_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"BIT_STRING_BITNAME_st", !6, i64 0, !9, i64 8, !9, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !9, i64 16}
!14 = distinct !{!14, !12}
