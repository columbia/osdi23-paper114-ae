; ModuleID = 'lib/iomap_copy.c'
source_filename = "lib/iomap_copy.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @__iowrite32_copy(i8* noundef %to, i8* noundef %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %from to i32*
  %add.ptr = getelementptr i32, i32* %0, i64 %count
  %cmp7 = icmp ugt i32* %add.ptr, %0
  br i1 %cmp7, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %1 = bitcast i8* %to to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %src.09 = phi i32* [ %incdec.ptr, %while.body ], [ %0, %while.body.preheader ]
  %dst.08 = phi i32* [ %incdec.ptr1, %while.body ], [ %1, %while.body.preheader ]
  %incdec.ptr = getelementptr i32, i32* %src.09, i64 1
  %2 = load i32, i32* %src.09, align 4
  %incdec.ptr1 = getelementptr i32, i32* %dst.08, i64 1
  %3 = bitcast i32* %dst.08 to i8*
  call void asm sideeffect "str ${0:w}, [$1]", "rZ,r"(i32 %2, i8* %3) #1, !srcloc !7
  %cmp = icmp ult i32* %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__ioread32_copy(i8* nocapture noundef writeonly %to, i8* noundef %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %from to i32*
  %add.ptr = getelementptr i32, i32* %0, i64 %count
  %cmp7 = icmp ugt i32* %add.ptr, %0
  br i1 %cmp7, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %1 = bitcast i8* %to to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %src.09 = phi i32* [ %incdec.ptr, %while.body ], [ %0, %while.body.preheader ]
  %dst.08 = phi i32* [ %incdec.ptr1, %while.body ], [ %1, %while.body.preheader ]
  %incdec.ptr = getelementptr i32, i32* %src.09, i64 1
  %2 = bitcast i32* %src.09 to i8*
  %3 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %2) #1, !srcloc !8
  %incdec.ptr1 = getelementptr i32, i32* %dst.08, i64 1
  store i32 %3, i32* %dst.08, align 4
  %cmp = icmp ult i32* %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @__iowrite64_copy(i8* noundef %to, i8* noundef %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %from to i64*
  %add.ptr = getelementptr i64, i64* %0, i64 %count
  %cmp7 = icmp ugt i64* %add.ptr, %0
  br i1 %cmp7, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %1 = bitcast i8* %to to i64*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %src.09 = phi i64* [ %incdec.ptr, %while.body ], [ %0, %while.body.preheader ]
  %dst.08 = phi i64* [ %incdec.ptr1, %while.body ], [ %1, %while.body.preheader ]
  %incdec.ptr = getelementptr i64, i64* %src.09, i64 1
  %2 = load i64, i64* %src.09, align 8
  %incdec.ptr1 = getelementptr i64, i64* %dst.08, i64 1
  %3 = bitcast i64* %dst.08 to i8*
  call fastcc void @__raw_writeq(i64 noundef %2, i8* noundef %3) #2
  %cmp = icmp ult i64* %incdec.ptr, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_writeq(i64 noundef %val, i8* noundef %addr) unnamed_addr #0 {
entry:
  call void asm sideeffect "str ${0:x}, [$1]", "rZ,r"(i64 %val, i8* %addr) #1, !srcloc !9
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 961360}
!8 = !{i64 2151125125, i64 2151125172, i64 2151125178, i64 2151125215, i64 2151125233, i64 2151126153, i64 2151126201, i64 2151126249, i64 2151126312, i64 2151126361, i64 2151125311, i64 2151125336, i64 2151125362, i64 2151125368, i64 2151125405, i64 2151125411, i64 2151125461, i64 2151125507, i64 2151125540}
!9 = !{i64 961528}
