; ModuleID = 'test/simpledynamic.c'
source_filename = "test/simpledynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sd_load(i8* noundef %filename, i8** nocapture noundef writeonly %lib, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @dlopen(i8* noundef %filename, i32 noundef %type) #2
  store i8* %call, i8** %lib, align 8, !tbaa !3
  %cmp = icmp ne i8* %call, null
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind
declare dso_local i8* @dlopen(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sd_sym(i8* noundef %lib, i8* noundef %symname, i8** nocapture noundef writeonly %sym) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @dlsym(i8* noundef %lib, i8* noundef %symname) #2
  store i8* %call, i8** %sym, align 8, !tbaa !3
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare dso_local i8* @dlsym(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sd_close(i8* noundef %lib) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @dlclose(i8* noundef %lib) #2
  %cmp.not = icmp eq i32 %call, 0
  %cond = zext i1 %cmp.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind
declare dso_local i32 @dlclose(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sd_error() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @dlerror() #2
  ret i8* %call
}

; Function Attrs: nounwind
declare dso_local i8* @dlerror() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
