; ModuleID = 'arch/arm64/kernel/io.c'
source_filename = "arch/arm64/kernel/io.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__memcpy_fromio(i8* nocapture noundef writeonly %to, i8* noundef %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %tobool32 = icmp ne i64 %count, 0
  %0 = ptrtoint i8* %from to i64
  %and33 = and i64 %0, 7
  %cmp34 = icmp ne i64 %and33, 0
  %1 = and i1 %tobool32, %cmp34
  br i1 %1, label %while.body, label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %entry
  %to.addr.0.lcssa = phi i8* [ %to, %entry ], [ %incdec.ptr1, %while.body ], [ %incdec.ptr1.1, %while.body.1 ], [ %incdec.ptr1.2, %while.body.2 ], [ %incdec.ptr1.3, %while.body.3 ], [ %incdec.ptr1.4, %while.body.4 ], [ %incdec.ptr1.5, %while.body.5 ], [ %incdec.ptr1.6, %while.body.6 ], [ %incdec.ptr1.7, %while.body.7 ]
  %from.addr.0.lcssa = phi i8* [ %from, %entry ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ]
  %count.addr.0.lcssa = phi i64 [ %count, %entry ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %cmp340 = icmp ugt i64 %count.addr.0.lcssa, 7
  br i1 %cmp340, label %while.body4, label %while.cond8.preheader

while.body:                                       ; preds = %entry
  %call = call fastcc i8 @__raw_readb(i8* noundef %from) #1
  store i8 %call, i8* %to, align 1
  %incdec.ptr = getelementptr i8, i8* %from, i64 1
  %incdec.ptr1 = getelementptr i8, i8* %to, i64 1
  %dec = add i64 %count, -1
  %tobool = icmp ne i64 %dec, 0
  %2 = ptrtoint i8* %incdec.ptr to i64
  %and = and i64 %2, 7
  %cmp = icmp ne i64 %and, 0
  %3 = and i1 %tobool, %cmp
  br i1 %3, label %while.body.1, label %while.cond2.preheader

while.body.1:                                     ; preds = %while.body
  %call.1 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr) #1
  store i8 %call.1, i8* %incdec.ptr1, align 1
  %incdec.ptr.1 = getelementptr i8, i8* %from, i64 2
  %incdec.ptr1.1 = getelementptr i8, i8* %to, i64 2
  %dec.1 = add i64 %count, -2
  %tobool.1 = icmp ne i64 %dec.1, 0
  %4 = ptrtoint i8* %incdec.ptr.1 to i64
  %and.1 = and i64 %4, 7
  %cmp.1 = icmp ne i64 %and.1, 0
  %5 = and i1 %tobool.1, %cmp.1
  br i1 %5, label %while.body.2, label %while.cond2.preheader

while.body.2:                                     ; preds = %while.body.1
  %call.2 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr.1) #1
  store i8 %call.2, i8* %incdec.ptr1.1, align 1
  %incdec.ptr.2 = getelementptr i8, i8* %from, i64 3
  %incdec.ptr1.2 = getelementptr i8, i8* %to, i64 3
  %dec.2 = add i64 %count, -3
  %tobool.2 = icmp ne i64 %dec.2, 0
  %6 = ptrtoint i8* %incdec.ptr.2 to i64
  %and.2 = and i64 %6, 7
  %cmp.2 = icmp ne i64 %and.2, 0
  %7 = and i1 %tobool.2, %cmp.2
  br i1 %7, label %while.body.3, label %while.cond2.preheader

while.body.3:                                     ; preds = %while.body.2
  %call.3 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr.2) #1
  store i8 %call.3, i8* %incdec.ptr1.2, align 1
  %incdec.ptr.3 = getelementptr i8, i8* %from, i64 4
  %incdec.ptr1.3 = getelementptr i8, i8* %to, i64 4
  %dec.3 = add i64 %count, -4
  %tobool.3 = icmp ne i64 %dec.3, 0
  %8 = ptrtoint i8* %incdec.ptr.3 to i64
  %and.3 = and i64 %8, 7
  %cmp.3 = icmp ne i64 %and.3, 0
  %9 = and i1 %tobool.3, %cmp.3
  br i1 %9, label %while.body.4, label %while.cond2.preheader

while.body.4:                                     ; preds = %while.body.3
  %call.4 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr.3) #1
  store i8 %call.4, i8* %incdec.ptr1.3, align 1
  %incdec.ptr.4 = getelementptr i8, i8* %from, i64 5
  %incdec.ptr1.4 = getelementptr i8, i8* %to, i64 5
  %dec.4 = add i64 %count, -5
  %tobool.4 = icmp ne i64 %dec.4, 0
  %10 = ptrtoint i8* %incdec.ptr.4 to i64
  %and.4 = and i64 %10, 7
  %cmp.4 = icmp ne i64 %and.4, 0
  %11 = and i1 %tobool.4, %cmp.4
  br i1 %11, label %while.body.5, label %while.cond2.preheader

while.body.5:                                     ; preds = %while.body.4
  %call.5 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr.4) #1
  store i8 %call.5, i8* %incdec.ptr1.4, align 1
  %incdec.ptr.5 = getelementptr i8, i8* %from, i64 6
  %incdec.ptr1.5 = getelementptr i8, i8* %to, i64 6
  %dec.5 = add i64 %count, -6
  %tobool.5 = icmp ne i64 %dec.5, 0
  %12 = ptrtoint i8* %incdec.ptr.5 to i64
  %and.5 = and i64 %12, 7
  %cmp.5 = icmp ne i64 %and.5, 0
  %13 = and i1 %tobool.5, %cmp.5
  br i1 %13, label %while.body.6, label %while.cond2.preheader

while.body.6:                                     ; preds = %while.body.5
  %call.6 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr.5) #1
  store i8 %call.6, i8* %incdec.ptr1.5, align 1
  %incdec.ptr.6 = getelementptr i8, i8* %from, i64 7
  %incdec.ptr1.6 = getelementptr i8, i8* %to, i64 7
  %dec.6 = add i64 %count, -7
  %tobool.6 = icmp ne i64 %dec.6, 0
  %14 = ptrtoint i8* %incdec.ptr.6 to i64
  %and.6 = and i64 %14, 7
  %cmp.6 = icmp ne i64 %and.6, 0
  %15 = and i1 %tobool.6, %cmp.6
  br i1 %15, label %while.body.7, label %while.cond2.preheader

while.body.7:                                     ; preds = %while.body.6
  %call.7 = call fastcc i8 @__raw_readb(i8* noundef %incdec.ptr.6) #1
  store i8 %call.7, i8* %incdec.ptr1.6, align 1
  %incdec.ptr.7 = getelementptr i8, i8* %from, i64 8
  %incdec.ptr1.7 = getelementptr i8, i8* %to, i64 8
  %dec.7 = add i64 %count, -8
  br label %while.cond2.preheader

while.cond8.preheader:                            ; preds = %while.body4, %while.cond2.preheader
  %to.addr.1.lcssa = phi i8* [ %to.addr.0.lcssa, %while.cond2.preheader ], [ %add.ptr6, %while.body4 ]
  %from.addr.1.lcssa = phi i8* [ %from.addr.0.lcssa, %while.cond2.preheader ], [ %add.ptr, %while.body4 ]
  %count.addr.1.lcssa = phi i64 [ %count.addr.0.lcssa, %while.cond2.preheader ], [ %sub, %while.body4 ]
  %tobool9.not47 = icmp eq i64 %count.addr.1.lcssa, 0
  br i1 %tobool9.not47, label %while.end15, label %while.body10

while.body4:                                      ; preds = %while.cond2.preheader, %while.body4
  %count.addr.143 = phi i64 [ %sub, %while.body4 ], [ %count.addr.0.lcssa, %while.cond2.preheader ]
  %from.addr.142 = phi i8* [ %add.ptr, %while.body4 ], [ %from.addr.0.lcssa, %while.cond2.preheader ]
  %to.addr.141 = phi i8* [ %add.ptr6, %while.body4 ], [ %to.addr.0.lcssa, %while.cond2.preheader ]
  %call5 = call fastcc i64 @__raw_readq(i8* noundef %from.addr.142) #1
  %16 = bitcast i8* %to.addr.141 to i64*
  store i64 %call5, i64* %16, align 8
  %add.ptr = getelementptr i8, i8* %from.addr.142, i64 8
  %add.ptr6 = getelementptr i8, i8* %to.addr.141, i64 8
  %sub = add i64 %count.addr.143, -8
  %cmp3 = icmp ugt i64 %sub, 7
  br i1 %cmp3, label %while.body4, label %while.cond8.preheader

while.body10:                                     ; preds = %while.cond8.preheader, %while.body10
  %count.addr.250 = phi i64 [ %dec14, %while.body10 ], [ %count.addr.1.lcssa, %while.cond8.preheader ]
  %from.addr.249 = phi i8* [ %incdec.ptr12, %while.body10 ], [ %from.addr.1.lcssa, %while.cond8.preheader ]
  %to.addr.248 = phi i8* [ %incdec.ptr13, %while.body10 ], [ %to.addr.1.lcssa, %while.cond8.preheader ]
  %call11 = call fastcc i8 @__raw_readb(i8* noundef %from.addr.249) #1
  store i8 %call11, i8* %to.addr.248, align 1
  %incdec.ptr12 = getelementptr i8, i8* %from.addr.249, i64 1
  %incdec.ptr13 = getelementptr i8, i8* %to.addr.248, i64 1
  %dec14 = add i64 %count.addr.250, -1
  %tobool9.not = icmp eq i64 %dec14, 0
  br i1 %tobool9.not, label %while.end15, label %while.body10

while.end15:                                      ; preds = %while.body10, %while.cond8.preheader
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8 @__raw_readb(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call i8 asm sideeffect ".if 1 == 1\0A661:\0A\09ldrb ${0:w}, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldarb ${0:w}, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %addr) #2, !srcloc !7
  ret i8 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_readq(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09ldr $0, [$1]\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 56\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09ldar $0, [$1]\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,r"(i8* %addr) #2, !srcloc !8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__memcpy_toio(i8* noundef %to, i8* nocapture noundef readonly %from, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %tobool30 = icmp ne i64 %count, 0
  %0 = ptrtoint i8* %to to i64
  %and31 = and i64 %0, 7
  %cmp32 = icmp ne i64 %and31, 0
  %1 = and i1 %tobool30, %cmp32
  br i1 %1, label %while.body, label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %entry
  %to.addr.0.lcssa = phi i8* [ %to, %entry ], [ %incdec.ptr1, %while.body ], [ %incdec.ptr1.1, %while.body.1 ], [ %incdec.ptr1.2, %while.body.2 ], [ %incdec.ptr1.3, %while.body.3 ], [ %incdec.ptr1.4, %while.body.4 ], [ %incdec.ptr1.5, %while.body.5 ], [ %incdec.ptr1.6, %while.body.6 ], [ %incdec.ptr1.7, %while.body.7 ]
  %from.addr.0.lcssa = phi i8* [ %from, %entry ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ]
  %count.addr.0.lcssa = phi i64 [ %count, %entry ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %cmp338 = icmp ugt i64 %count.addr.0.lcssa, 7
  br i1 %cmp338, label %while.body4, label %while.cond7.preheader

while.body:                                       ; preds = %entry
  %2 = load i8, i8* %from, align 1
  call fastcc void @__raw_writeb(i8 noundef %2, i8* noundef %to) #1
  %incdec.ptr = getelementptr i8, i8* %from, i64 1
  %incdec.ptr1 = getelementptr i8, i8* %to, i64 1
  %dec = add i64 %count, -1
  %tobool = icmp ne i64 %dec, 0
  %3 = ptrtoint i8* %incdec.ptr1 to i64
  %and = and i64 %3, 7
  %cmp = icmp ne i64 %and, 0
  %4 = and i1 %tobool, %cmp
  br i1 %4, label %while.body.1, label %while.cond2.preheader

while.body.1:                                     ; preds = %while.body
  %5 = load i8, i8* %incdec.ptr, align 1
  call fastcc void @__raw_writeb(i8 noundef %5, i8* noundef %incdec.ptr1) #1
  %incdec.ptr.1 = getelementptr i8, i8* %from, i64 2
  %incdec.ptr1.1 = getelementptr i8, i8* %to, i64 2
  %dec.1 = add i64 %count, -2
  %tobool.1 = icmp ne i64 %dec.1, 0
  %6 = ptrtoint i8* %incdec.ptr1.1 to i64
  %and.1 = and i64 %6, 7
  %cmp.1 = icmp ne i64 %and.1, 0
  %7 = and i1 %tobool.1, %cmp.1
  br i1 %7, label %while.body.2, label %while.cond2.preheader

while.body.2:                                     ; preds = %while.body.1
  %8 = load i8, i8* %incdec.ptr.1, align 1
  call fastcc void @__raw_writeb(i8 noundef %8, i8* noundef %incdec.ptr1.1) #1
  %incdec.ptr.2 = getelementptr i8, i8* %from, i64 3
  %incdec.ptr1.2 = getelementptr i8, i8* %to, i64 3
  %dec.2 = add i64 %count, -3
  %tobool.2 = icmp ne i64 %dec.2, 0
  %9 = ptrtoint i8* %incdec.ptr1.2 to i64
  %and.2 = and i64 %9, 7
  %cmp.2 = icmp ne i64 %and.2, 0
  %10 = and i1 %tobool.2, %cmp.2
  br i1 %10, label %while.body.3, label %while.cond2.preheader

while.body.3:                                     ; preds = %while.body.2
  %11 = load i8, i8* %incdec.ptr.2, align 1
  call fastcc void @__raw_writeb(i8 noundef %11, i8* noundef %incdec.ptr1.2) #1
  %incdec.ptr.3 = getelementptr i8, i8* %from, i64 4
  %incdec.ptr1.3 = getelementptr i8, i8* %to, i64 4
  %dec.3 = add i64 %count, -4
  %tobool.3 = icmp ne i64 %dec.3, 0
  %12 = ptrtoint i8* %incdec.ptr1.3 to i64
  %and.3 = and i64 %12, 7
  %cmp.3 = icmp ne i64 %and.3, 0
  %13 = and i1 %tobool.3, %cmp.3
  br i1 %13, label %while.body.4, label %while.cond2.preheader

while.body.4:                                     ; preds = %while.body.3
  %14 = load i8, i8* %incdec.ptr.3, align 1
  call fastcc void @__raw_writeb(i8 noundef %14, i8* noundef %incdec.ptr1.3) #1
  %incdec.ptr.4 = getelementptr i8, i8* %from, i64 5
  %incdec.ptr1.4 = getelementptr i8, i8* %to, i64 5
  %dec.4 = add i64 %count, -5
  %tobool.4 = icmp ne i64 %dec.4, 0
  %15 = ptrtoint i8* %incdec.ptr1.4 to i64
  %and.4 = and i64 %15, 7
  %cmp.4 = icmp ne i64 %and.4, 0
  %16 = and i1 %tobool.4, %cmp.4
  br i1 %16, label %while.body.5, label %while.cond2.preheader

while.body.5:                                     ; preds = %while.body.4
  %17 = load i8, i8* %incdec.ptr.4, align 1
  call fastcc void @__raw_writeb(i8 noundef %17, i8* noundef %incdec.ptr1.4) #1
  %incdec.ptr.5 = getelementptr i8, i8* %from, i64 6
  %incdec.ptr1.5 = getelementptr i8, i8* %to, i64 6
  %dec.5 = add i64 %count, -6
  %tobool.5 = icmp ne i64 %dec.5, 0
  %18 = ptrtoint i8* %incdec.ptr1.5 to i64
  %and.5 = and i64 %18, 7
  %cmp.5 = icmp ne i64 %and.5, 0
  %19 = and i1 %tobool.5, %cmp.5
  br i1 %19, label %while.body.6, label %while.cond2.preheader

while.body.6:                                     ; preds = %while.body.5
  %20 = load i8, i8* %incdec.ptr.5, align 1
  call fastcc void @__raw_writeb(i8 noundef %20, i8* noundef %incdec.ptr1.5) #1
  %incdec.ptr.6 = getelementptr i8, i8* %from, i64 7
  %incdec.ptr1.6 = getelementptr i8, i8* %to, i64 7
  %dec.6 = add i64 %count, -7
  %tobool.6 = icmp ne i64 %dec.6, 0
  %21 = ptrtoint i8* %incdec.ptr1.6 to i64
  %and.6 = and i64 %21, 7
  %cmp.6 = icmp ne i64 %and.6, 0
  %22 = and i1 %tobool.6, %cmp.6
  br i1 %22, label %while.body.7, label %while.cond2.preheader

while.body.7:                                     ; preds = %while.body.6
  %23 = load i8, i8* %incdec.ptr.6, align 1
  call fastcc void @__raw_writeb(i8 noundef %23, i8* noundef %incdec.ptr1.6) #1
  %incdec.ptr.7 = getelementptr i8, i8* %from, i64 8
  %incdec.ptr1.7 = getelementptr i8, i8* %to, i64 8
  %dec.7 = add i64 %count, -8
  br label %while.cond2.preheader

while.cond7.preheader:                            ; preds = %while.body4, %while.cond2.preheader
  %to.addr.1.lcssa = phi i8* [ %to.addr.0.lcssa, %while.cond2.preheader ], [ %add.ptr5, %while.body4 ]
  %from.addr.1.lcssa = phi i8* [ %from.addr.0.lcssa, %while.cond2.preheader ], [ %add.ptr, %while.body4 ]
  %count.addr.1.lcssa = phi i64 [ %count.addr.0.lcssa, %while.cond2.preheader ], [ %sub, %while.body4 ]
  %tobool8.not45 = icmp eq i64 %count.addr.1.lcssa, 0
  br i1 %tobool8.not45, label %while.end13, label %while.body9

while.body4:                                      ; preds = %while.cond2.preheader, %while.body4
  %count.addr.141 = phi i64 [ %sub, %while.body4 ], [ %count.addr.0.lcssa, %while.cond2.preheader ]
  %from.addr.140 = phi i8* [ %add.ptr, %while.body4 ], [ %from.addr.0.lcssa, %while.cond2.preheader ]
  %to.addr.139 = phi i8* [ %add.ptr5, %while.body4 ], [ %to.addr.0.lcssa, %while.cond2.preheader ]
  %24 = bitcast i8* %from.addr.140 to i64*
  %25 = load i64, i64* %24, align 8
  call fastcc void @__raw_writeq(i64 noundef %25, i8* noundef %to.addr.139) #1
  %add.ptr = getelementptr i8, i8* %from.addr.140, i64 8
  %add.ptr5 = getelementptr i8, i8* %to.addr.139, i64 8
  %sub = add i64 %count.addr.141, -8
  %cmp3 = icmp ugt i64 %sub, 7
  br i1 %cmp3, label %while.body4, label %while.cond7.preheader

while.body9:                                      ; preds = %while.cond7.preheader, %while.body9
  %count.addr.248 = phi i64 [ %dec12, %while.body9 ], [ %count.addr.1.lcssa, %while.cond7.preheader ]
  %from.addr.247 = phi i8* [ %incdec.ptr10, %while.body9 ], [ %from.addr.1.lcssa, %while.cond7.preheader ]
  %to.addr.246 = phi i8* [ %incdec.ptr11, %while.body9 ], [ %to.addr.1.lcssa, %while.cond7.preheader ]
  %26 = load i8, i8* %from.addr.247, align 1
  call fastcc void @__raw_writeb(i8 noundef %26, i8* noundef %to.addr.246) #1
  %incdec.ptr10 = getelementptr i8, i8* %from.addr.247, i64 1
  %incdec.ptr11 = getelementptr i8, i8* %to.addr.246, i64 1
  %dec12 = add i64 %count.addr.248, -1
  %tobool8.not = icmp eq i64 %dec12, 0
  br i1 %tobool8.not, label %while.end13, label %while.body9

while.end13:                                      ; preds = %while.body9, %while.cond7.preheader
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_writeb(i8 noundef %val, i8* noundef %addr) unnamed_addr #0 {
entry:
  call void asm sideeffect "strb ${0:w}, [$1]", "rZ,r"(i8 %val, i8* %addr) #2, !srcloc !9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_writeq(i64 noundef %val, i8* noundef %addr) unnamed_addr #0 {
entry:
  call void asm sideeffect "str ${0:x}, [$1]", "rZ,r"(i64 %val, i8* %addr) #2, !srcloc !10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__memset_io(i8* noundef %dst, i32 noundef %c, i64 noundef %count) local_unnamed_addr #0 {
entry:
  %conv = trunc i32 %c to i8
  %conv.mask = and i32 %c, 255
  %narrow54 = mul nuw i32 %conv.mask, 16843009
  %or3 = zext i32 %narrow54 to i64
  %or5 = mul nuw i64 %or3, 4294967297
  %tobool40 = icmp ne i64 %count, 0
  %0 = ptrtoint i8* %dst to i64
  %and41 = and i64 %0, 7
  %cmp42 = icmp ne i64 %and41, 0
  %1 = and i1 %tobool40, %cmp42
  br i1 %1, label %while.body, label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %while.body, %while.body.1, %while.body.2, %while.body.3, %while.body.4, %while.body.5, %while.body.6, %while.body.7, %entry
  %dst.addr.0.lcssa = phi i8* [ %dst, %entry ], [ %incdec.ptr, %while.body ], [ %incdec.ptr.1, %while.body.1 ], [ %incdec.ptr.2, %while.body.2 ], [ %incdec.ptr.3, %while.body.3 ], [ %incdec.ptr.4, %while.body.4 ], [ %incdec.ptr.5, %while.body.5 ], [ %incdec.ptr.6, %while.body.6 ], [ %incdec.ptr.7, %while.body.7 ]
  %count.addr.0.lcssa = phi i64 [ %count, %entry ], [ %dec, %while.body ], [ %dec.1, %while.body.1 ], [ %dec.2, %while.body.2 ], [ %dec.3, %while.body.3 ], [ %dec.4, %while.body.4 ], [ %dec.5, %while.body.5 ], [ %dec.6, %while.body.6 ], [ %dec.7, %while.body.7 ]
  %cmp946 = icmp ugt i64 %count.addr.0.lcssa, 7
  br i1 %cmp946, label %while.body11, label %while.cond13.preheader

while.body:                                       ; preds = %entry
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %dst) #1
  %incdec.ptr = getelementptr i8, i8* %dst, i64 1
  %dec = add i64 %count, -1
  %tobool = icmp ne i64 %dec, 0
  %2 = ptrtoint i8* %incdec.ptr to i64
  %and = and i64 %2, 7
  %cmp = icmp ne i64 %and, 0
  %3 = and i1 %tobool, %cmp
  br i1 %3, label %while.body.1, label %while.cond8.preheader

while.body.1:                                     ; preds = %while.body
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr) #1
  %incdec.ptr.1 = getelementptr i8, i8* %dst, i64 2
  %dec.1 = add i64 %count, -2
  %tobool.1 = icmp ne i64 %dec.1, 0
  %4 = ptrtoint i8* %incdec.ptr.1 to i64
  %and.1 = and i64 %4, 7
  %cmp.1 = icmp ne i64 %and.1, 0
  %5 = and i1 %tobool.1, %cmp.1
  br i1 %5, label %while.body.2, label %while.cond8.preheader

while.body.2:                                     ; preds = %while.body.1
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr.1) #1
  %incdec.ptr.2 = getelementptr i8, i8* %dst, i64 3
  %dec.2 = add i64 %count, -3
  %tobool.2 = icmp ne i64 %dec.2, 0
  %6 = ptrtoint i8* %incdec.ptr.2 to i64
  %and.2 = and i64 %6, 7
  %cmp.2 = icmp ne i64 %and.2, 0
  %7 = and i1 %tobool.2, %cmp.2
  br i1 %7, label %while.body.3, label %while.cond8.preheader

while.body.3:                                     ; preds = %while.body.2
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr.2) #1
  %incdec.ptr.3 = getelementptr i8, i8* %dst, i64 4
  %dec.3 = add i64 %count, -4
  %tobool.3 = icmp ne i64 %dec.3, 0
  %8 = ptrtoint i8* %incdec.ptr.3 to i64
  %and.3 = and i64 %8, 7
  %cmp.3 = icmp ne i64 %and.3, 0
  %9 = and i1 %tobool.3, %cmp.3
  br i1 %9, label %while.body.4, label %while.cond8.preheader

while.body.4:                                     ; preds = %while.body.3
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr.3) #1
  %incdec.ptr.4 = getelementptr i8, i8* %dst, i64 5
  %dec.4 = add i64 %count, -5
  %tobool.4 = icmp ne i64 %dec.4, 0
  %10 = ptrtoint i8* %incdec.ptr.4 to i64
  %and.4 = and i64 %10, 7
  %cmp.4 = icmp ne i64 %and.4, 0
  %11 = and i1 %tobool.4, %cmp.4
  br i1 %11, label %while.body.5, label %while.cond8.preheader

while.body.5:                                     ; preds = %while.body.4
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr.4) #1
  %incdec.ptr.5 = getelementptr i8, i8* %dst, i64 6
  %dec.5 = add i64 %count, -6
  %tobool.5 = icmp ne i64 %dec.5, 0
  %12 = ptrtoint i8* %incdec.ptr.5 to i64
  %and.5 = and i64 %12, 7
  %cmp.5 = icmp ne i64 %and.5, 0
  %13 = and i1 %tobool.5, %cmp.5
  br i1 %13, label %while.body.6, label %while.cond8.preheader

while.body.6:                                     ; preds = %while.body.5
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr.5) #1
  %incdec.ptr.6 = getelementptr i8, i8* %dst, i64 7
  %dec.6 = add i64 %count, -7
  %tobool.6 = icmp ne i64 %dec.6, 0
  %14 = ptrtoint i8* %incdec.ptr.6 to i64
  %and.6 = and i64 %14, 7
  %cmp.6 = icmp ne i64 %and.6, 0
  %15 = and i1 %tobool.6, %cmp.6
  br i1 %15, label %while.body.7, label %while.cond8.preheader

while.body.7:                                     ; preds = %while.body.6
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %incdec.ptr.6) #1
  %incdec.ptr.7 = getelementptr i8, i8* %dst, i64 8
  %dec.7 = add i64 %count, -8
  br label %while.cond8.preheader

while.cond13.preheader:                           ; preds = %while.body11, %while.cond8.preheader
  %dst.addr.1.lcssa = phi i8* [ %dst.addr.0.lcssa, %while.cond8.preheader ], [ %add.ptr, %while.body11 ]
  %count.addr.1.lcssa = phi i64 [ %count.addr.0.lcssa, %while.cond8.preheader ], [ %sub, %while.body11 ]
  %tobool14.not51 = icmp eq i64 %count.addr.1.lcssa, 0
  br i1 %tobool14.not51, label %while.end19, label %while.body15

while.body11:                                     ; preds = %while.cond8.preheader, %while.body11
  %count.addr.148 = phi i64 [ %sub, %while.body11 ], [ %count.addr.0.lcssa, %while.cond8.preheader ]
  %dst.addr.147 = phi i8* [ %add.ptr, %while.body11 ], [ %dst.addr.0.lcssa, %while.cond8.preheader ]
  call fastcc void @__raw_writeq(i64 noundef %or5, i8* noundef %dst.addr.147) #1
  %add.ptr = getelementptr i8, i8* %dst.addr.147, i64 8
  %sub = add i64 %count.addr.148, -8
  %cmp9 = icmp ugt i64 %sub, 7
  br i1 %cmp9, label %while.body11, label %while.cond13.preheader

while.body15:                                     ; preds = %while.cond13.preheader, %while.body15
  %count.addr.253 = phi i64 [ %dec18, %while.body15 ], [ %count.addr.1.lcssa, %while.cond13.preheader ]
  %dst.addr.252 = phi i8* [ %incdec.ptr17, %while.body15 ], [ %dst.addr.1.lcssa, %while.cond13.preheader ]
  call fastcc void @__raw_writeb(i8 noundef %conv, i8* noundef %dst.addr.252) #1
  %incdec.ptr17 = getelementptr i8, i8* %dst.addr.252, i64 1
  %dec18 = add i64 %count.addr.253, -1
  %tobool14.not = icmp eq i64 %dec18, 0
  br i1 %tobool14.not, label %while.end19, label %while.body15

while.end19:                                      ; preds = %while.body15, %while.cond13.preheader
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nobuiltin "no-builtins" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2151121109, i64 2151121156, i64 2151121162, i64 2151121199, i64 2151121217, i64 2151122139, i64 2151122187, i64 2151122235, i64 2151122298, i64 2151122347, i64 2151121295, i64 2151121320, i64 2151121346, i64 2151121352, i64 2151121389, i64 2151121395, i64 2151121445, i64 2151121491, i64 2151121524}
!8 = !{i64 2151126141, i64 2151126188, i64 2151126194, i64 2151126231, i64 2151126249, i64 2151127167, i64 2151127215, i64 2151127263, i64 2151127326, i64 2151127375, i64 2151126327, i64 2151126352, i64 2151126378, i64 2151126384, i64 2151126421, i64 2151126427, i64 2151126477, i64 2151126523, i64 2151126556}
!9 = !{i64 960371}
!10 = !{i64 960886}
