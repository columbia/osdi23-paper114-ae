; ModuleID = 'crypto/trace.c'
source_filename = "crypto/trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_category_st = type { i8*, i32 }
%struct.bio_st = type opaque

@trace_categories = internal unnamed_addr constant [17 x %struct.trace_category_st] [%struct.trace_category_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.trace_category_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.trace_category_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 2 }, %struct.trace_category_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 3 }, %struct.trace_category_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 4 }, %struct.trace_category_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 5 }, %struct.trace_category_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 6 }, %struct.trace_category_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 7 }, %struct.trace_category_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 8 }, %struct.trace_category_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 9 }, %struct.trace_category_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 10 }, %struct.trace_category_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 11 }, %struct.trace_category_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 12 }, %struct.trace_category_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 14 }, %struct.trace_category_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 15 }, %struct.trace_category_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 16 }, %struct.trace_category_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 17 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"TLS_CIPHER\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CONF\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ENGINE_TABLE\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ENGINE_REF_COUNT\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"PKCS5V2\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"PKCS12_KEYGEN\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"PKCS12_DECRYPT\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"X509V3_POLICY\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"BN_CTX\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"DECODER\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ENCODER\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"REF_COUNT\00", align 1
@switch.table.OSSL_trace_get_category_name = private unnamed_addr constant [18 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 0, i64 13, i64 14, i64 15, i64 16], align 8

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i8* @OSSL_trace_get_category_name(i32 noundef %num) local_unnamed_addr #0 {
entry:
  %0 = icmp ult i32 %num, 18
  br i1 %0, label %switch.hole_check, label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 253951, %num
  %1 = and i32 %switch.shifted, 1
  %switch.lobit.not = icmp eq i32 %1, 0
  br i1 %switch.lobit.not, label %cleanup, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %2 = sext i32 %num to i64
  %switch.gep = getelementptr inbounds [18 x i64], [18 x i64]* @switch.table.OSSL_trace_get_category_name, i64 0, i64 %2
  %switch.load = load i64, i64* %switch.gep, align 8
  %name = getelementptr inbounds [17 x %struct.trace_category_st], [17 x %struct.trace_category_st]* @trace_categories, i64 0, i64 %switch.load, i32 0
  %3 = load i8*, i8** %name, align 16, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check, %entry, %switch.lookup
  %retval.0 = phi i8* [ %3, %switch.lookup ], [ null, %entry ], [ null, %switch.hole_check ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define i32 @OSSL_trace_get_category_num(i8* noundef readonly %name) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #4
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.15, %for.inc.14, %for.inc.13, %for.inc.12, %for.inc.11, %for.inc.10, %for.inc.9, %for.inc.8, %for.inc.7, %for.inc.6, %for.inc.5, %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %entry
  %i.09.lcssa = phi i64 [ 0, %entry ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ], [ 6, %for.inc.5 ], [ 7, %for.inc.6 ], [ 8, %for.inc.7 ], [ 9, %for.inc.8 ], [ 10, %for.inc.9 ], [ 11, %for.inc.10 ], [ 12, %for.inc.11 ], [ 13, %for.inc.12 ], [ 14, %for.inc.13 ], [ 15, %for.inc.14 ], [ 16, %for.inc.15 ]
  %num = getelementptr inbounds [17 x %struct.trace_category_st], [17 x %struct.trace_category_st]* @trace_categories, i64 0, i64 %i.09.lcssa, i32 1
  %0 = load i32, i32* %num, align 8, !tbaa !10
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp2.1 = icmp eq i32 %call.1, 0
  br i1 %cmp2.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp2.2 = icmp eq i32 %call.2, 0
  br i1 %cmp2.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp2.3 = icmp eq i32 %call.3, 0
  br i1 %cmp2.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #4
  %cmp2.4 = icmp eq i32 %call.4, 0
  br i1 %cmp2.4, label %if.then, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #4
  %cmp2.5 = icmp eq i32 %call.5, 0
  br i1 %cmp2.5, label %if.then, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #4
  %cmp2.6 = icmp eq i32 %call.6, 0
  br i1 %cmp2.6, label %if.then, label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #4
  %cmp2.7 = icmp eq i32 %call.7, 0
  br i1 %cmp2.7, label %if.then, label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %call.8 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)) #4
  %cmp2.8 = icmp eq i32 %call.8, 0
  br i1 %cmp2.8, label %if.then, label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %call.9 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)) #4
  %cmp2.9 = icmp eq i32 %call.9, 0
  br i1 %cmp2.9, label %if.then, label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  %call.10 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #4
  %cmp2.10 = icmp eq i32 %call.10, 0
  br i1 %cmp2.10, label %if.then, label %for.inc.10

for.inc.10:                                       ; preds = %for.inc.9
  %call.11 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)) #4
  %cmp2.11 = icmp eq i32 %call.11, 0
  br i1 %cmp2.11, label %if.then, label %for.inc.11

for.inc.11:                                       ; preds = %for.inc.10
  %call.12 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #4
  %cmp2.12 = icmp eq i32 %call.12, 0
  br i1 %cmp2.12, label %if.then, label %for.inc.12

for.inc.12:                                       ; preds = %for.inc.11
  %call.13 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #4
  %cmp2.13 = icmp eq i32 %call.13, 0
  br i1 %cmp2.13, label %if.then, label %for.inc.13

for.inc.13:                                       ; preds = %for.inc.12
  %call.14 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #4
  %cmp2.14 = icmp eq i32 %call.14, 0
  br i1 %cmp2.14, label %if.then, label %for.inc.14

for.inc.14:                                       ; preds = %for.inc.13
  %call.15 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #4
  %cmp2.15 = icmp eq i32 %call.15, 0
  br i1 %cmp2.15, label %if.then, label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14
  %call.16 = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #4
  %cmp2.16 = icmp eq i32 %call.16, 0
  br i1 %cmp2.16, label %if.then, label %cleanup

cleanup:                                          ; preds = %for.inc.15, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -1, %for.inc.15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @ossl_trace_cleanup() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_trace_set_channel(i32 noundef %category, %struct.bio_st* nocapture noundef readnone %channel) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_trace_set_callback(i32 noundef %category, i64 (i8*, i64, i32, i32, i8*)* nocapture noundef readnone %callback, i8* nocapture noundef readnone %data) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_trace_set_prefix(i32 noundef %category, i8* nocapture noundef readnone %prefix) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_trace_set_suffix(i32 noundef %category, i8* nocapture noundef readnone %suffix) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @OSSL_trace_enabled(i32 noundef %category) local_unnamed_addr #3 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define noalias %struct.bio_st* @OSSL_trace_begin(i32 noundef %category) local_unnamed_addr #3 {
entry:
  ret %struct.bio_st* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @OSSL_trace_end(i32 noundef %category, %struct.bio_st* nocapture noundef %channel) local_unnamed_addr #3 {
entry:
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"trace_category_st", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 8}
