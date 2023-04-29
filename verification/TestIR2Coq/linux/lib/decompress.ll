; ModuleID = 'lib/decompress.c'
source_filename = "lib/decompress.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.compress_format = type { [2 x i8], i8*, i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* }

@compressed_formats = internal constant [9 x %struct.compress_format] [%struct.compress_format { [2 x i8] c"\1F\8B", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"\1F\9E", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"BZ", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"]\00", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"\FD7", i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"\89L", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"\02!", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format { [2 x i8] c"(\B5", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* null }, %struct.compress_format zeroinitializer], section ".init.rodata", align 8
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* @decompress_method(i8* noundef %inbuf, i64 noundef %len, i8** noundef writeonly %name) local_unnamed_addr #0 section ".init.text" {
entry:
  %cmp = icmp slt i64 %len, 2
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i8** %name, null
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.then
  store i8* null, i8** %name, align 8
  br label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %cf.021 = phi %struct.compress_format* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([9 x %struct.compress_format], [9 x %struct.compress_format]* @compressed_formats, i64 0, i64 0), %entry ]
  %arraydecay = getelementptr inbounds %struct.compress_format, %struct.compress_format* %cf.021, i64 0, i32 0, i64 0
  %call = call i32 @memcmp(i8* noundef %inbuf, i8* noundef %arraydecay, i64 noundef 2) #2
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.compress_format, %struct.compress_format* %cf.021, i64 1
  %name3 = getelementptr %struct.compress_format, %struct.compress_format* %cf.021, i64 1, i32 1
  %0 = load i8*, i8** %name3, align 8
  %tobool4.not = icmp eq i8* %0, null
  br i1 %tobool4.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.inc
  %cf.0.lcssa20 = phi %struct.compress_format* [ %cf.021, %for.body ], [ %incdec.ptr, %for.inc ]
  %tobool8.not = icmp eq i8** %name, null
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.end
  %name3.le = getelementptr inbounds %struct.compress_format, %struct.compress_format* %cf.0.lcssa20, i64 0, i32 1
  %1 = load i8*, i8** %name3.le, align 8
  store i8* %1, i8** %name, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end
  %decompressor = getelementptr inbounds %struct.compress_format, %struct.compress_format* %cf.0.lcssa20, i64 0, i32 2
  %2 = load i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)*, i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)** %decompressor, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then1, %if.end11
  %retval.0 = phi i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* [ %2, %if.end11 ], [ null, %if.then1 ], [ null, %if.then ]
  ret i32 (i8*, i64, i64 (i8*, i64)*, i64 (i8*, i64)*, i8*, i64*, void (i8*)*)* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
