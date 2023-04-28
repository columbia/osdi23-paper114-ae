; ModuleID = 'crypto/rsa/rsa_none.c'
source_filename = "crypto/rsa/rsa_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_none.c\00", align 1
@__func__.RSA_padding_add_none = private unnamed_addr constant [21 x i8] c"RSA_padding_add_none\00", align 1
@__func__.RSA_padding_check_none = private unnamed_addr constant [23 x i8] c"RSA_padding_check_none\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_add_none(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %flen, %tlen
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.RSA_padding_add_none, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %flen, %tlen
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.RSA_padding_add_none, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 122, i8* noundef null) #3
  br label %return

if.end3:                                          ; preds = %if.end
  %conv = zext i32 %flen to i64
  %call = tail call i8* @memcpy(i8* noundef %to, i8* noundef %from, i64 noundef %conv) #3
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %if.end3 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_padding_check_none(i8* noundef %to, i32 noundef %tlen, i8* noundef %from, i32 noundef %flen, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %tlen, %flen
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.RSA_padding_check_none, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %sub = sub nsw i32 %tlen, %flen
  %conv = sext i32 %sub to i64
  %call = tail call i8* @memset(i8* noundef %to, i32 noundef 0, i64 noundef %conv) #3
  %idx.ext = sext i32 %tlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %to, i64 %idx.ext
  %idx.ext1 = sext i32 %flen to i64
  %idx.neg = sub nsw i64 0, %idx.ext1
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call4 = tail call i8* @memcpy(i8* noundef %add.ptr2, i8* noundef %from, i64 noundef %idx.ext1) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %tlen, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
