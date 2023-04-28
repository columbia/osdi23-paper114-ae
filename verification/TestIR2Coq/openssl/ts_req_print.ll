; ModuleID = 'crypto/ts/ts_req_print.c'
source_filename = "crypto/ts/ts_req_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.TS_req_st = type { %struct.asn1_string_st*, %struct.TS_msg_imprint_st*, %struct.asn1_object_st*, %struct.asn1_string_st*, i32, %struct.stack_st_X509_EXTENSION* }
%struct.TS_msg_imprint_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_object_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509_EXTENSION = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Version: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Policy OID: \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Nonce: \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Certificate required: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @TS_REQ_print_bio(%struct.bio_st* noundef %bio, %struct.TS_req_st* noundef %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.TS_req_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @TS_REQ_get_version(%struct.TS_req_st* noundef nonnull %a) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %conv) #2
  %msg_imprint = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 1
  %0 = load %struct.TS_msg_imprint_st*, %struct.TS_msg_imprint_st** %msg_imprint, align 8, !tbaa !4
  %call2 = tail call i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef %bio, %struct.TS_msg_imprint_st* noundef %0) #2
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #2
  %call4 = tail call %struct.asn1_object_st* @TS_REQ_get_policy_id(%struct.TS_req_st* noundef nonnull %a) #2
  %cmp5 = icmp eq %struct.asn1_object_st* %call4, null
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #2
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call9 = tail call i32 @TS_OBJ_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_object_st* noundef nonnull %call4) #2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #2
  %nonce = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 3
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %nonce, align 8, !tbaa !10
  %cmp12 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end10
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #2
  br label %if.end19

if.else16:                                        ; preds = %if.end10
  %call18 = tail call i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef %bio, %struct.asn1_string_st* noundef nonnull %1) #2
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then14
  %call20 = tail call i32 @BIO_write(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 noundef 1) #2
  %cert_req = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 4
  %2 = load i32, i32* %cert_req, align 8, !tbaa !11
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef %cond) #2
  %extensions = getelementptr inbounds %struct.TS_req_st, %struct.TS_req_st* %a, i64 0, i32 5
  %3 = load %struct.stack_st_X509_EXTENSION*, %struct.stack_st_X509_EXTENSION** %extensions, align 8, !tbaa !12
  %call22 = tail call i32 @TS_ext_print_bio(%struct.bio_st* noundef %bio, %struct.stack_st_X509_EXTENSION* noundef %3) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end19
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i64 @TS_REQ_get_version(%struct.TS_req_st* noundef) local_unnamed_addr #1

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @TS_MSG_IMPRINT_print_bio(%struct.bio_st* noundef, %struct.TS_msg_imprint_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @TS_REQ_get_policy_id(%struct.TS_req_st* noundef) local_unnamed_addr #1

declare i32 @TS_OBJ_print_bio(%struct.bio_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @TS_ASN1_INTEGER_print_bio(%struct.bio_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TS_ext_print_bio(%struct.bio_st* noundef, %struct.stack_st_X509_EXTENSION* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"TS_req_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 24}
!11 = !{!5, !9, i64 32}
!12 = !{!5, !6, i64 40}
