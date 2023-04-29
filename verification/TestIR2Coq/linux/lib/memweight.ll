; ModuleID = 'lib/memweight.c'
source_filename = "lib/memweight.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @memweight(i8* noundef %ptr, i64 noundef %bytes) local_unnamed_addr #0 {
entry:
  %cmp.not214 = icmp eq i64 %bytes, 0
  %0 = ptrtoint i8* %ptr to i64
  %rem215 = and i64 %0, 7
  %tobool.not216 = icmp eq i64 %rem215, 0
  %or.cond217 = or i1 %cmp.not214, %tobool.not216
  br i1 %or.cond217, label %for.end, label %cond.false

cond.false:                                       ; preds = %entry
  %1 = load i8, i8* %ptr, align 1
  %conv58 = zext i8 %1 to i32
  %call = call fastcc i32 @__arch_hweight8(i32 noundef %conv58) #2
  %conv59 = zext i32 %call to i64
  %dec = add i64 %bytes, -1
  %incdec.ptr = getelementptr i8, i8* %ptr, i64 1
  %cmp.not = icmp eq i64 %dec, 0
  %2 = ptrtoint i8* %incdec.ptr to i64
  %rem = and i64 %2, 7
  %tobool.not = icmp eq i64 %rem, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %for.end, label %cond.false.1

cond.false.1:                                     ; preds = %cond.false
  %3 = load i8, i8* %incdec.ptr, align 1
  %conv58.1 = zext i8 %3 to i32
  %call.1 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.1) #2
  %conv59.1 = zext i32 %call.1 to i64
  %add60.1 = add nuw nsw i64 %conv59, %conv59.1
  %dec.1 = add i64 %bytes, -2
  %incdec.ptr.1 = getelementptr i8, i8* %ptr, i64 2
  %cmp.not.1 = icmp eq i64 %dec.1, 0
  %4 = ptrtoint i8* %incdec.ptr.1 to i64
  %rem.1 = and i64 %4, 7
  %tobool.not.1 = icmp eq i64 %rem.1, 0
  %or.cond.1 = or i1 %cmp.not.1, %tobool.not.1
  br i1 %or.cond.1, label %for.end, label %cond.false.2

cond.false.2:                                     ; preds = %cond.false.1
  %5 = load i8, i8* %incdec.ptr.1, align 1
  %conv58.2 = zext i8 %5 to i32
  %call.2 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.2) #2
  %conv59.2 = zext i32 %call.2 to i64
  %add60.2 = add nuw nsw i64 %add60.1, %conv59.2
  %dec.2 = add i64 %bytes, -3
  %incdec.ptr.2 = getelementptr i8, i8* %ptr, i64 3
  %cmp.not.2 = icmp eq i64 %dec.2, 0
  %6 = ptrtoint i8* %incdec.ptr.2 to i64
  %rem.2 = and i64 %6, 7
  %tobool.not.2 = icmp eq i64 %rem.2, 0
  %or.cond.2 = or i1 %cmp.not.2, %tobool.not.2
  br i1 %or.cond.2, label %for.end, label %cond.false.3

cond.false.3:                                     ; preds = %cond.false.2
  %7 = load i8, i8* %incdec.ptr.2, align 1
  %conv58.3 = zext i8 %7 to i32
  %call.3 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.3) #2
  %conv59.3 = zext i32 %call.3 to i64
  %add60.3 = add nuw nsw i64 %add60.2, %conv59.3
  %dec.3 = add i64 %bytes, -4
  %incdec.ptr.3 = getelementptr i8, i8* %ptr, i64 4
  %cmp.not.3 = icmp eq i64 %dec.3, 0
  %8 = ptrtoint i8* %incdec.ptr.3 to i64
  %rem.3 = and i64 %8, 7
  %tobool.not.3 = icmp eq i64 %rem.3, 0
  %or.cond.3 = or i1 %cmp.not.3, %tobool.not.3
  br i1 %or.cond.3, label %for.end, label %cond.false.4

cond.false.4:                                     ; preds = %cond.false.3
  %9 = load i8, i8* %incdec.ptr.3, align 1
  %conv58.4 = zext i8 %9 to i32
  %call.4 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.4) #2
  %conv59.4 = zext i32 %call.4 to i64
  %add60.4 = add nuw nsw i64 %add60.3, %conv59.4
  %dec.4 = add i64 %bytes, -5
  %incdec.ptr.4 = getelementptr i8, i8* %ptr, i64 5
  %cmp.not.4 = icmp eq i64 %dec.4, 0
  %10 = ptrtoint i8* %incdec.ptr.4 to i64
  %rem.4 = and i64 %10, 7
  %tobool.not.4 = icmp eq i64 %rem.4, 0
  %or.cond.4 = or i1 %cmp.not.4, %tobool.not.4
  br i1 %or.cond.4, label %for.end, label %cond.false.5

cond.false.5:                                     ; preds = %cond.false.4
  %11 = load i8, i8* %incdec.ptr.4, align 1
  %conv58.5 = zext i8 %11 to i32
  %call.5 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.5) #2
  %conv59.5 = zext i32 %call.5 to i64
  %add60.5 = add nuw nsw i64 %add60.4, %conv59.5
  %dec.5 = add i64 %bytes, -6
  %incdec.ptr.5 = getelementptr i8, i8* %ptr, i64 6
  %cmp.not.5 = icmp eq i64 %dec.5, 0
  %12 = ptrtoint i8* %incdec.ptr.5 to i64
  %rem.5 = and i64 %12, 7
  %tobool.not.5 = icmp eq i64 %rem.5, 0
  %or.cond.5 = or i1 %cmp.not.5, %tobool.not.5
  br i1 %or.cond.5, label %for.end, label %cond.false.6

cond.false.6:                                     ; preds = %cond.false.5
  %13 = load i8, i8* %incdec.ptr.5, align 1
  %conv58.6 = zext i8 %13 to i32
  %call.6 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.6) #2
  %conv59.6 = zext i32 %call.6 to i64
  %add60.6 = add nuw nsw i64 %add60.5, %conv59.6
  %dec.6 = add i64 %bytes, -7
  %incdec.ptr.6 = getelementptr i8, i8* %ptr, i64 7
  %cmp.not.6 = icmp eq i64 %dec.6, 0
  %14 = ptrtoint i8* %incdec.ptr.6 to i64
  %rem.6 = and i64 %14, 7
  %tobool.not.6 = icmp eq i64 %rem.6, 0
  %or.cond.6 = or i1 %cmp.not.6, %tobool.not.6
  br i1 %or.cond.6, label %for.end, label %cond.false.7

cond.false.7:                                     ; preds = %cond.false.6
  %15 = load i8, i8* %incdec.ptr.6, align 1
  %conv58.7 = zext i8 %15 to i32
  %call.7 = call fastcc i32 @__arch_hweight8(i32 noundef %conv58.7) #2
  %conv59.7 = zext i32 %call.7 to i64
  %add60.7 = add i64 %add60.6, %conv59.7
  %dec.7 = add i64 %bytes, -8
  %incdec.ptr.7 = getelementptr i8, i8* %ptr, i64 8
  br label %for.end

for.end:                                          ; preds = %cond.false, %cond.false.1, %cond.false.2, %cond.false.3, %cond.false.4, %cond.false.5, %cond.false.6, %cond.false.7, %entry
  %bytes.addr.0.lcssa = phi i64 [ %bytes, %entry ], [ %dec, %cond.false ], [ %dec.1, %cond.false.1 ], [ %dec.2, %cond.false.2 ], [ %dec.3, %cond.false.3 ], [ %dec.4, %cond.false.4 ], [ %dec.5, %cond.false.5 ], [ %dec.6, %cond.false.6 ], [ %dec.7, %cond.false.7 ]
  %ret.0.lcssa = phi i64 [ 0, %entry ], [ %conv59, %cond.false ], [ %add60.1, %cond.false.1 ], [ %add60.2, %cond.false.2 ], [ %add60.3, %cond.false.3 ], [ %add60.4, %cond.false.4 ], [ %add60.5, %cond.false.5 ], [ %add60.6, %cond.false.6 ], [ %add60.7, %cond.false.7 ]
  %bitmap.0.lcssa = phi i8* [ %ptr, %entry ], [ %incdec.ptr, %cond.false ], [ %incdec.ptr.1, %cond.false.1 ], [ %incdec.ptr.2, %cond.false.2 ], [ %incdec.ptr.3, %cond.false.3 ], [ %incdec.ptr.4, %cond.false.4 ], [ %incdec.ptr.5, %cond.false.5 ], [ %incdec.ptr.6, %cond.false.6 ], [ %incdec.ptr.7, %cond.false.7 ]
  %tobool61.not = icmp ult i64 %bytes.addr.0.lcssa, 8
  br i1 %tobool61.not, label %if.end83, label %do.body

do.body:                                          ; preds = %for.end
  %cmp62 = icmp ugt i64 %bytes.addr.0.lcssa, 268435447
  br i1 %cmp62, label %do.body71, label %if.end.i, !prof !7

do.body71:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/memweight.c\22; .popsection; .long 14472b - 14470b; .short 23; .short 0; .popsection; 14471: brk 0x800", ""() #3, !srcloc !8
  unreachable

if.end.i:                                         ; preds = %do.body
  %bytes.addr.0.tr = trunc i64 %bytes.addr.0.lcssa to i32
  %16 = shl nuw nsw i32 %bytes.addr.0.tr, 3
  %conv77 = and i32 %16, -64
  %17 = bitcast i8* %bitmap.0.lcssa to i64*
  %call4.i = call i32 @__bitmap_weight(i64* noundef %17, i32 noundef %conv77) #4
  %conv79 = sext i32 %call4.i to i64
  %add80 = add i64 %ret.0.lcssa, %conv79
  %mul81 = and i64 %bytes.addr.0.lcssa, -8
  %sub = and i64 %bytes.addr.0.lcssa, 7
  %add.ptr = getelementptr i8, i8* %bitmap.0.lcssa, i64 %mul81
  br label %if.end83

if.end83:                                         ; preds = %if.end.i, %for.end
  %bytes.addr.1 = phi i64 [ %sub, %if.end.i ], [ %bytes.addr.0.lcssa, %for.end ]
  %ret.1 = phi i64 [ %add80, %if.end.i ], [ %ret.0.lcssa, %for.end ]
  %bitmap.1 = phi i8* [ %add.ptr, %if.end.i ], [ %bitmap.0.lcssa, %for.end ]
  %cmp85.not223 = icmp eq i64 %bytes.addr.1, 0
  br i1 %cmp85.not223, label %for.end162, label %cond.false152

cond.false152:                                    ; preds = %if.end83, %cond.false152
  %bitmap.2226 = phi i8* [ %incdec.ptr161, %cond.false152 ], [ %bitmap.1, %if.end83 ]
  %ret.2225 = phi i64 [ %add158, %cond.false152 ], [ %ret.1, %if.end83 ]
  %bytes.addr.2224 = phi i64 [ %dec160, %cond.false152 ], [ %bytes.addr.1, %if.end83 ]
  %18 = load i8, i8* %bitmap.2226, align 1
  %conv153 = zext i8 %18 to i32
  %call154 = call fastcc i32 @__arch_hweight8(i32 noundef %conv153) #2
  %conv157 = zext i32 %call154 to i64
  %add158 = add i64 %ret.2225, %conv157
  %dec160 = add i64 %bytes.addr.2224, -1
  %incdec.ptr161 = getelementptr i8, i8* %bitmap.2226, i64 1
  %cmp85.not = icmp eq i64 %dec160, 0
  br i1 %cmp85.not, label %for.end162, label %cond.false152

for.end162:                                       ; preds = %cond.false152, %if.end83
  %ret.2.lcssa = phi i64 [ %ret.1, %if.end83 ], [ %add158, %cond.false152 ]
  ret i64 %ret.2.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__arch_hweight8(i32 noundef %w) unnamed_addr #0 {
entry:
  %call = call i32 @__sw_hweight8(i32 noundef %w) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2148483958}
