; ModuleID = 'hash/hello.c'
source_filename = "hash/hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"\0A  MD5('%s') = \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %digest = alloca [16 x i8], align 16
  %str = alloca [14 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [14 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.str, i32 0, i32 0), i64 14, i1 false)
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* noundef %arraydecay) #4
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %str, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i64 0, i64 0
  %call3 = call i32 @mbedtls_md5(i8* noundef %arraydecay1, i64 noundef 13, i8* noundef %arraydecay2) #4
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 1) #5
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %1, 16
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #4
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @mbedtls_md5(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
