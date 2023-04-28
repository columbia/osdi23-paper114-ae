; ModuleID = 'crypto/bn/asm/x86_64-gcc.c'
source_filename = "crypto/bn/asm/x86_64-gcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define i64 @bn_mul_add_words(i64* noundef %rp, i64* noundef %ap, i32 noundef %num, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not154 = icmp ult i32 %num, 4
  br i1 %tobool.not154, label %do.body41, label %do.body

do.body:                                          ; preds = %while.cond.preheader, %do.body
  %rp.addr.0158 = phi i64* [ %add.ptr38, %do.body ], [ %rp, %while.cond.preheader ]
  %ap.addr.0157 = phi i64* [ %add.ptr, %do.body ], [ %ap, %while.cond.preheader ]
  %num.addr.0156 = phi i32 [ %sub, %do.body ], [ %num, %while.cond.preheader ]
  %c1.0155 = phi i64 [ %11, %do.body ], [ 0, %while.cond.preheader ]
  %0 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* elementtype(i64) %ap.addr.0157) #2, !srcloc !4
  %asmresult = extractvalue { i64, i64 } %0, 0
  %asmresult1 = extractvalue { i64, i64 } %0, 1
  %1 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult, i32 0, i64 %c1.0155, i64 %asmresult1) #2, !srcloc !5
  %asmresult2 = extractvalue { i64, i64 } %1, 0
  %asmresult3 = extractvalue { i64, i64 } %1, 1
  %2 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* elementtype(i64) %rp.addr.0158, i64 %asmresult2, i32 0, i64* elementtype(i64) %rp.addr.0158, i64 %asmresult3) #3, !srcloc !6
  %arrayidx8 = getelementptr inbounds i64, i64* %ap.addr.0157, i64 1
  %3 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* nonnull elementtype(i64) %arrayidx8) #2, !srcloc !7
  %asmresult9 = extractvalue { i64, i64 } %3, 0
  %asmresult10 = extractvalue { i64, i64 } %3, 1
  %4 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult9, i32 0, i64 %2, i64 %asmresult10) #2, !srcloc !8
  %asmresult11 = extractvalue { i64, i64 } %4, 0
  %asmresult12 = extractvalue { i64, i64 } %4, 1
  %arrayidx13 = getelementptr inbounds i64, i64* %rp.addr.0158, i64 1
  %5 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* nonnull elementtype(i64) %arrayidx13, i64 %asmresult11, i32 0, i64* nonnull elementtype(i64) %arrayidx13, i64 %asmresult12) #3, !srcloc !9
  %arrayidx19 = getelementptr inbounds i64, i64* %ap.addr.0157, i64 2
  %6 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* nonnull elementtype(i64) %arrayidx19) #2, !srcloc !10
  %asmresult20 = extractvalue { i64, i64 } %6, 0
  %asmresult21 = extractvalue { i64, i64 } %6, 1
  %7 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult20, i32 0, i64 %5, i64 %asmresult21) #2, !srcloc !11
  %asmresult22 = extractvalue { i64, i64 } %7, 0
  %asmresult23 = extractvalue { i64, i64 } %7, 1
  %arrayidx24 = getelementptr inbounds i64, i64* %rp.addr.0158, i64 2
  %8 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* nonnull elementtype(i64) %arrayidx24, i64 %asmresult22, i32 0, i64* nonnull elementtype(i64) %arrayidx24, i64 %asmresult23) #3, !srcloc !12
  %arrayidx30 = getelementptr inbounds i64, i64* %ap.addr.0157, i64 3
  %9 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* nonnull elementtype(i64) %arrayidx30) #2, !srcloc !13
  %asmresult31 = extractvalue { i64, i64 } %9, 0
  %asmresult32 = extractvalue { i64, i64 } %9, 1
  %10 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult31, i32 0, i64 %8, i64 %asmresult32) #2, !srcloc !14
  %asmresult33 = extractvalue { i64, i64 } %10, 0
  %asmresult34 = extractvalue { i64, i64 } %10, 1
  %arrayidx35 = getelementptr inbounds i64, i64* %rp.addr.0158, i64 3
  %11 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* nonnull elementtype(i64) %arrayidx35, i64 %asmresult33, i32 0, i64* nonnull elementtype(i64) %arrayidx35, i64 %asmresult34) #3, !srcloc !15
  %add.ptr = getelementptr inbounds i64, i64* %ap.addr.0157, i64 4
  %add.ptr38 = getelementptr inbounds i64, i64* %rp.addr.0158, i64 4
  %sub = add nsw i32 %num.addr.0156, -4
  %tobool.not = icmp ult i32 %sub, 4
  br i1 %tobool.not, label %while.end, label %do.body, !llvm.loop !16

while.end:                                        ; preds = %do.body
  %tobool39.not = icmp eq i32 %sub, 0
  br i1 %tobool39.not, label %cleanup, label %do.body41

do.body41:                                        ; preds = %while.cond.preheader, %while.end
  %rp.addr.0.lcssa170 = phi i64* [ %add.ptr38, %while.end ], [ %rp, %while.cond.preheader ]
  %ap.addr.0.lcssa169 = phi i64* [ %add.ptr, %while.end ], [ %ap, %while.cond.preheader ]
  %num.addr.0.lcssa168 = phi i32 [ %sub, %while.end ], [ %num, %while.cond.preheader ]
  %c1.0.lcssa167 = phi i64 [ %11, %while.end ], [ 0, %while.cond.preheader ]
  %12 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* elementtype(i64) %ap.addr.0.lcssa169) #2, !srcloc !18
  %asmresult45 = extractvalue { i64, i64 } %12, 0
  %asmresult46 = extractvalue { i64, i64 } %12, 1
  %13 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult45, i32 0, i64 %c1.0.lcssa167, i64 %asmresult46) #2, !srcloc !19
  %asmresult47 = extractvalue { i64, i64 } %13, 0
  %asmresult48 = extractvalue { i64, i64 } %13, 1
  %14 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* elementtype(i64) %rp.addr.0.lcssa170, i64 %asmresult47, i32 0, i64* elementtype(i64) %rp.addr.0.lcssa170, i64 %asmresult48) #3, !srcloc !20
  %cmp52 = icmp eq i32 %num.addr.0.lcssa168, 1
  br i1 %cmp52, label %cleanup, label %do.body55

do.body55:                                        ; preds = %do.body41
  %arrayidx58 = getelementptr inbounds i64, i64* %ap.addr.0.lcssa169, i64 1
  %15 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* nonnull elementtype(i64) %arrayidx58) #2, !srcloc !21
  %asmresult59 = extractvalue { i64, i64 } %15, 0
  %asmresult60 = extractvalue { i64, i64 } %15, 1
  %16 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult59, i32 0, i64 %14, i64 %asmresult60) #2, !srcloc !22
  %asmresult61 = extractvalue { i64, i64 } %16, 0
  %asmresult62 = extractvalue { i64, i64 } %16, 1
  %arrayidx63 = getelementptr inbounds i64, i64* %rp.addr.0.lcssa170, i64 1
  %17 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* nonnull elementtype(i64) %arrayidx63, i64 %asmresult61, i32 0, i64* nonnull elementtype(i64) %arrayidx63, i64 %asmresult62) #3, !srcloc !23
  %cmp67 = icmp eq i32 %num.addr.0.lcssa168, 2
  br i1 %cmp67, label %cleanup, label %do.body70

do.body70:                                        ; preds = %do.body55
  %arrayidx73 = getelementptr inbounds i64, i64* %ap.addr.0.lcssa169, i64 2
  %18 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !24
  %asmresult74 = extractvalue { i64, i64 } %18, 0
  %asmresult75 = extractvalue { i64, i64 } %18, 1
  %19 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult74, i32 0, i64 %17, i64 %asmresult75) #2, !srcloc !25
  %asmresult76 = extractvalue { i64, i64 } %19, 0
  %asmresult77 = extractvalue { i64, i64 } %19, 1
  %arrayidx78 = getelementptr inbounds i64, i64* %rp.addr.0.lcssa170, i64 2
  %20 = tail call i64 asm "addq $2,$0; adcq $3,$1", "=*m,={dx},r,imr,*m,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64* nonnull elementtype(i64) %arrayidx78, i64 %asmresult76, i32 0, i64* nonnull elementtype(i64) %arrayidx78, i64 %asmresult77) #3, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.body55, %do.body41, %entry, %do.body70
  %retval.0 = phi i64 [ %20, %do.body70 ], [ 0, %entry ], [ %14, %do.body41 ], [ %17, %do.body55 ], [ %11, %while.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @bn_mul_words(i64* nocapture noundef writeonly %rp, i64* nocapture noundef readonly %ap, i32 noundef %num, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not146 = icmp ult i32 %num, 4
  br i1 %tobool.not146, label %do.body41, label %do.body

do.body:                                          ; preds = %while.cond.preheader, %do.body
  %rp.addr.0150 = phi i64* [ %add.ptr38, %do.body ], [ %rp, %while.cond.preheader ]
  %ap.addr.0149 = phi i64* [ %add.ptr, %do.body ], [ %ap, %while.cond.preheader ]
  %num.addr.0148 = phi i32 [ %sub, %do.body ], [ %num, %while.cond.preheader ]
  %c1.0147 = phi i64 [ %asmresult34, %do.body ], [ 0, %while.cond.preheader ]
  %0 = load i64, i64* %ap.addr.0149, align 8, !tbaa !27
  %1 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %0) #2, !srcloc !31
  %asmresult = extractvalue { i64, i64 } %1, 0
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  %2 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult, i32 0, i64 %c1.0147, i64 %asmresult1) #2, !srcloc !32
  %asmresult2 = extractvalue { i64, i64 } %2, 0
  %asmresult3 = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult2, i64* %rp.addr.0150, align 8, !tbaa !27
  %arrayidx8 = getelementptr inbounds i64, i64* %ap.addr.0149, i64 1
  %3 = load i64, i64* %arrayidx8, align 8, !tbaa !27
  %4 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %3) #2, !srcloc !33
  %asmresult9 = extractvalue { i64, i64 } %4, 0
  %asmresult10 = extractvalue { i64, i64 } %4, 1
  %5 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult9, i32 0, i64 %asmresult3, i64 %asmresult10) #2, !srcloc !34
  %asmresult11 = extractvalue { i64, i64 } %5, 0
  %asmresult12 = extractvalue { i64, i64 } %5, 1
  %arrayidx13 = getelementptr inbounds i64, i64* %rp.addr.0150, i64 1
  store i64 %asmresult11, i64* %arrayidx13, align 8, !tbaa !27
  %arrayidx19 = getelementptr inbounds i64, i64* %ap.addr.0149, i64 2
  %6 = load i64, i64* %arrayidx19, align 8, !tbaa !27
  %7 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %6) #2, !srcloc !35
  %asmresult20 = extractvalue { i64, i64 } %7, 0
  %asmresult21 = extractvalue { i64, i64 } %7, 1
  %8 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult20, i32 0, i64 %asmresult12, i64 %asmresult21) #2, !srcloc !36
  %asmresult22 = extractvalue { i64, i64 } %8, 0
  %asmresult23 = extractvalue { i64, i64 } %8, 1
  %arrayidx24 = getelementptr inbounds i64, i64* %rp.addr.0150, i64 2
  store i64 %asmresult22, i64* %arrayidx24, align 8, !tbaa !27
  %arrayidx30 = getelementptr inbounds i64, i64* %ap.addr.0149, i64 3
  %9 = load i64, i64* %arrayidx30, align 8, !tbaa !27
  %10 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %9) #2, !srcloc !37
  %asmresult31 = extractvalue { i64, i64 } %10, 0
  %asmresult32 = extractvalue { i64, i64 } %10, 1
  %11 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult31, i32 0, i64 %asmresult23, i64 %asmresult32) #2, !srcloc !38
  %asmresult33 = extractvalue { i64, i64 } %11, 0
  %asmresult34 = extractvalue { i64, i64 } %11, 1
  %arrayidx35 = getelementptr inbounds i64, i64* %rp.addr.0150, i64 3
  store i64 %asmresult33, i64* %arrayidx35, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds i64, i64* %ap.addr.0149, i64 4
  %add.ptr38 = getelementptr inbounds i64, i64* %rp.addr.0150, i64 4
  %sub = add nsw i32 %num.addr.0148, -4
  %tobool.not = icmp ult i32 %sub, 4
  br i1 %tobool.not, label %while.end, label %do.body, !llvm.loop !39

while.end:                                        ; preds = %do.body
  %asmresult34.le = extractvalue { i64, i64 } %11, 1
  %tobool39.not = icmp eq i32 %sub, 0
  br i1 %tobool39.not, label %cleanup, label %do.body41

do.body41:                                        ; preds = %while.cond.preheader, %while.end
  %rp.addr.0.lcssa162 = phi i64* [ %add.ptr38, %while.end ], [ %rp, %while.cond.preheader ]
  %ap.addr.0.lcssa161 = phi i64* [ %add.ptr, %while.end ], [ %ap, %while.cond.preheader ]
  %num.addr.0.lcssa160 = phi i32 [ %sub, %while.end ], [ %num, %while.cond.preheader ]
  %c1.0.lcssa159 = phi i64 [ %asmresult34.le, %while.end ], [ 0, %while.cond.preheader ]
  %12 = load i64, i64* %ap.addr.0.lcssa161, align 8, !tbaa !27
  %13 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %12) #2, !srcloc !40
  %asmresult45 = extractvalue { i64, i64 } %13, 0
  %asmresult46 = extractvalue { i64, i64 } %13, 1
  %14 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult45, i32 0, i64 %c1.0.lcssa159, i64 %asmresult46) #2, !srcloc !41
  %asmresult47 = extractvalue { i64, i64 } %14, 0
  %asmresult48 = extractvalue { i64, i64 } %14, 1
  store i64 %asmresult47, i64* %rp.addr.0.lcssa162, align 8, !tbaa !27
  %cmp52 = icmp eq i32 %num.addr.0.lcssa160, 1
  br i1 %cmp52, label %cleanup, label %do.body55

do.body55:                                        ; preds = %do.body41
  %arrayidx58 = getelementptr inbounds i64, i64* %ap.addr.0.lcssa161, i64 1
  %15 = load i64, i64* %arrayidx58, align 8, !tbaa !27
  %16 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %15) #2, !srcloc !42
  %asmresult59 = extractvalue { i64, i64 } %16, 0
  %asmresult60 = extractvalue { i64, i64 } %16, 1
  %17 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult59, i32 0, i64 %asmresult48, i64 %asmresult60) #2, !srcloc !43
  %asmresult61 = extractvalue { i64, i64 } %17, 0
  %asmresult62 = extractvalue { i64, i64 } %17, 1
  %arrayidx63 = getelementptr inbounds i64, i64* %rp.addr.0.lcssa162, i64 1
  store i64 %asmresult61, i64* %arrayidx63, align 8, !tbaa !27
  %cmp67 = icmp eq i32 %num.addr.0.lcssa160, 2
  br i1 %cmp67, label %cleanup, label %do.body70

do.body70:                                        ; preds = %do.body55
  %arrayidx73 = getelementptr inbounds i64, i64* %ap.addr.0.lcssa161, i64 2
  %18 = load i64, i64* %arrayidx73, align 8, !tbaa !27
  %19 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},imr,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %w, i64 %18) #2, !srcloc !44
  %asmresult74 = extractvalue { i64, i64 } %19, 0
  %asmresult75 = extractvalue { i64, i64 } %19, 1
  %20 = tail call { i64, i64 } asm "addq $2,$0; adcq $3,$1", "=r,={dx},{ax},imr,0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult74, i32 0, i64 %asmresult62, i64 %asmresult75) #2, !srcloc !45
  %asmresult76 = extractvalue { i64, i64 } %20, 0
  %asmresult77 = extractvalue { i64, i64 } %20, 1
  %arrayidx78 = getelementptr inbounds i64, i64* %rp.addr.0.lcssa162, i64 2
  store i64 %asmresult76, i64* %arrayidx78, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.body70, %do.body55, %do.body41, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %asmresult48, %do.body41 ], [ %asmresult62, %do.body55 ], [ %asmresult77, %do.body70 ], [ %asmresult34.le, %while.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @bn_sqr_words(i64* nocapture noundef writeonly %r, i64* nocapture noundef readonly %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %if.end44, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %tobool.not71 = icmp ult i32 %n, 4
  br i1 %tobool.not71, label %if.then21, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %n.addr.074 = phi i32 [ %sub, %while.body ], [ %n, %while.cond.preheader ]
  %a.addr.073 = phi i64* [ %add.ptr, %while.body ], [ %a, %while.cond.preheader ]
  %r.addr.072 = phi i64* [ %add.ptr19, %while.body ], [ %r, %while.cond.preheader ]
  %arrayidx1 = getelementptr inbounds i64, i64* %r.addr.072, i64 1
  %0 = load i64, i64* %a.addr.073, align 8, !tbaa !27
  %1 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0) #4, !srcloc !46
  %asmresult = extractvalue { i64, i64 } %1, 0
  %asmresult3 = extractvalue { i64, i64 } %1, 1
  store i64 %asmresult, i64* %r.addr.072, align 8, !tbaa !27
  store i64 %asmresult3, i64* %arrayidx1, align 8, !tbaa !27
  %arrayidx4 = getelementptr inbounds i64, i64* %r.addr.072, i64 2
  %arrayidx5 = getelementptr inbounds i64, i64* %r.addr.072, i64 3
  %arrayidx6 = getelementptr inbounds i64, i64* %a.addr.073, i64 1
  %2 = load i64, i64* %arrayidx6, align 8, !tbaa !27
  %3 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %2) #4, !srcloc !47
  %asmresult7 = extractvalue { i64, i64 } %3, 0
  %asmresult8 = extractvalue { i64, i64 } %3, 1
  store i64 %asmresult7, i64* %arrayidx4, align 8, !tbaa !27
  store i64 %asmresult8, i64* %arrayidx5, align 8, !tbaa !27
  %arrayidx9 = getelementptr inbounds i64, i64* %r.addr.072, i64 4
  %arrayidx10 = getelementptr inbounds i64, i64* %r.addr.072, i64 5
  %arrayidx11 = getelementptr inbounds i64, i64* %a.addr.073, i64 2
  %4 = load i64, i64* %arrayidx11, align 8, !tbaa !27
  %5 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %4) #4, !srcloc !48
  %asmresult12 = extractvalue { i64, i64 } %5, 0
  %asmresult13 = extractvalue { i64, i64 } %5, 1
  store i64 %asmresult12, i64* %arrayidx9, align 8, !tbaa !27
  store i64 %asmresult13, i64* %arrayidx10, align 8, !tbaa !27
  %arrayidx14 = getelementptr inbounds i64, i64* %r.addr.072, i64 6
  %arrayidx15 = getelementptr inbounds i64, i64* %r.addr.072, i64 7
  %arrayidx16 = getelementptr inbounds i64, i64* %a.addr.073, i64 3
  %6 = load i64, i64* %arrayidx16, align 8, !tbaa !27
  %7 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %6) #4, !srcloc !49
  %asmresult17 = extractvalue { i64, i64 } %7, 0
  %asmresult18 = extractvalue { i64, i64 } %7, 1
  store i64 %asmresult17, i64* %arrayidx14, align 8, !tbaa !27
  store i64 %asmresult18, i64* %arrayidx15, align 8, !tbaa !27
  %add.ptr = getelementptr inbounds i64, i64* %a.addr.073, i64 4
  %add.ptr19 = getelementptr inbounds i64, i64* %r.addr.072, i64 8
  %sub = add nsw i32 %n.addr.074, -4
  %tobool.not = icmp ult i32 %sub, 4
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !50

while.end:                                        ; preds = %while.body
  %tobool20.not = icmp eq i32 %sub, 0
  br i1 %tobool20.not, label %if.end44, label %if.then21

if.then21:                                        ; preds = %while.cond.preheader, %while.end
  %n.addr.0.lcssa83 = phi i32 [ %sub, %while.end ], [ %n, %while.cond.preheader ]
  %a.addr.0.lcssa82 = phi i64* [ %add.ptr, %while.end ], [ %a, %while.cond.preheader ]
  %r.addr.0.lcssa81 = phi i64* [ %add.ptr19, %while.end ], [ %r, %while.cond.preheader ]
  %arrayidx23 = getelementptr inbounds i64, i64* %r.addr.0.lcssa81, i64 1
  %8 = load i64, i64* %a.addr.0.lcssa82, align 8, !tbaa !27
  %9 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %8) #4, !srcloc !51
  %asmresult25 = extractvalue { i64, i64 } %9, 0
  %asmresult26 = extractvalue { i64, i64 } %9, 1
  store i64 %asmresult25, i64* %r.addr.0.lcssa81, align 8, !tbaa !27
  store i64 %asmresult26, i64* %arrayidx23, align 8, !tbaa !27
  %cmp27 = icmp eq i32 %n.addr.0.lcssa83, 1
  br i1 %cmp27, label %if.end44, label %if.end29

if.end29:                                         ; preds = %if.then21
  %arrayidx30 = getelementptr inbounds i64, i64* %r.addr.0.lcssa81, i64 2
  %arrayidx31 = getelementptr inbounds i64, i64* %r.addr.0.lcssa81, i64 3
  %arrayidx32 = getelementptr inbounds i64, i64* %a.addr.0.lcssa82, i64 1
  %10 = load i64, i64* %arrayidx32, align 8, !tbaa !27
  %11 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %10) #4, !srcloc !52
  %asmresult33 = extractvalue { i64, i64 } %11, 0
  %asmresult34 = extractvalue { i64, i64 } %11, 1
  store i64 %asmresult33, i64* %arrayidx30, align 8, !tbaa !27
  store i64 %asmresult34, i64* %arrayidx31, align 8, !tbaa !27
  %cmp36 = icmp eq i32 %n.addr.0.lcssa83, 2
  br i1 %cmp36, label %if.end44, label %if.end38

if.end38:                                         ; preds = %if.end29
  %arrayidx39 = getelementptr inbounds i64, i64* %r.addr.0.lcssa81, i64 4
  %arrayidx40 = getelementptr inbounds i64, i64* %r.addr.0.lcssa81, i64 5
  %arrayidx41 = getelementptr inbounds i64, i64* %a.addr.0.lcssa82, i64 2
  %12 = load i64, i64* %arrayidx41, align 8, !tbaa !27
  %13 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %12) #4, !srcloc !53
  %asmresult42 = extractvalue { i64, i64 } %13, 0
  %asmresult43 = extractvalue { i64, i64 } %13, 1
  store i64 %asmresult42, i64* %arrayidx39, align 8, !tbaa !27
  store i64 %asmresult43, i64* %arrayidx40, align 8, !tbaa !27
  br label %if.end44

if.end44:                                         ; preds = %if.end29, %if.then21, %entry, %if.end38, %while.end
  ret void
}

; Function Attrs: nofree noinline nosync nounwind readnone uwtable
define i64 @bn_div_words(i64 noundef %h, i64 noundef %l, i64 noundef %d) local_unnamed_addr #1 {
entry:
  %0 = tail call { i64, i64 } asm "divq      $4", "={ax},={dx},{ax},{dx},r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %l, i64 %h, i64 %d) #4, !srcloc !54
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind uwtable
define i64 @bn_add_words(i64* noundef %rp, i64* noundef %ap, i64* noundef %bp, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call { i64, i32, i64 } asm sideeffect "       subq    $0,$0           \0A       jmp     1f              \0A.p2align 4                     \0A1:     movq    ($4,$2,8),$0    \0A       adcq    ($5,$2,8),$0    \0A       movq    $0,($3,$2,8)    \0A       lea     1($2),$2        \0A       dec     $1              \0A       jnz     1b              \0A       sbbq    $0,$0           \0A", "=&r,={cx},=r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %rp, i64* %ap, i64* %bp, i32 %n, i64 0) #3, !srcloc !55
  %asmresult = extractvalue { i64, i32, i64 } %0, 0
  %and = and i64 %asmresult, 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %and, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @bn_sub_words(i64* noundef %rp, i64* noundef %ap, i64* noundef %bp, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call { i64, i32, i64 } asm sideeffect "       subq    $0,$0           \0A       jmp     1f              \0A.p2align 4                     \0A1:     movq    ($4,$2,8),$0    \0A       sbbq    ($5,$2,8),$0    \0A       movq    $0,($3,$2,8)    \0A       lea     1($2),$2        \0A       dec     $1              \0A       jnz     1b              \0A       sbbq    $0,$0           \0A", "=&r,={cx},=r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %rp, i64* %ap, i64* %bp, i32 %n, i64 0) #3, !srcloc !56
  %asmresult = extractvalue { i64, i32, i64 } %0, 0
  %and = and i64 %asmresult, 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %and, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_comba8(i64* nocapture noundef writeonly %r, i64* nocapture noundef readonly %a, i64* noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !27
  %1 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64* elementtype(i64) %b) #2, !srcloc !57
  %asmresult = extractvalue { i64, i64 } %1, 0
  %asmresult2 = extractvalue { i64, i64 } %1, 1
  %2 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult, i64 %asmresult2, i32 0, i64 0, i64 0, i64 0) #2, !srcloc !58
  %asmresult3 = extractvalue { i64, i64, i64 } %2, 0
  %asmresult4 = extractvalue { i64, i64, i64 } %2, 1
  %asmresult5 = extractvalue { i64, i64, i64 } %2, 2
  store i64 %asmresult3, i64* %r, align 8, !tbaa !27
  %3 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx11 = getelementptr inbounds i64, i64* %b, i64 1
  %4 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %3, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !59
  %asmresult12 = extractvalue { i64, i64 } %4, 0
  %asmresult13 = extractvalue { i64, i64 } %4, 1
  %5 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult12, i64 %asmresult13, i32 0, i64 %asmresult4, i64 %asmresult5, i64 0) #2, !srcloc !60
  %asmresult14 = extractvalue { i64, i64, i64 } %5, 0
  %asmresult15 = extractvalue { i64, i64, i64 } %5, 1
  %asmresult16 = extractvalue { i64, i64, i64 } %5, 2
  %arrayidx22 = getelementptr inbounds i64, i64* %a, i64 1
  %6 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %7 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %6, i64* elementtype(i64) %b) #2, !srcloc !61
  %asmresult24 = extractvalue { i64, i64 } %7, 0
  %asmresult25 = extractvalue { i64, i64 } %7, 1
  %8 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult24, i64 %asmresult25, i32 0, i64 %asmresult14, i64 %asmresult15, i64 %asmresult16) #2, !srcloc !62
  %asmresult26 = extractvalue { i64, i64, i64 } %8, 0
  %asmresult27 = extractvalue { i64, i64, i64 } %8, 1
  %asmresult28 = extractvalue { i64, i64, i64 } %8, 2
  %arrayidx31 = getelementptr inbounds i64, i64* %r, i64 1
  store i64 %asmresult26, i64* %arrayidx31, align 8, !tbaa !27
  %arrayidx35 = getelementptr inbounds i64, i64* %a, i64 2
  %9 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %10 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %9, i64* elementtype(i64) %b) #2, !srcloc !63
  %asmresult37 = extractvalue { i64, i64 } %10, 0
  %asmresult38 = extractvalue { i64, i64 } %10, 1
  %11 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult37, i64 %asmresult38, i32 0, i64 %asmresult27, i64 %asmresult28, i64 0) #2, !srcloc !64
  %asmresult39 = extractvalue { i64, i64, i64 } %11, 0
  %asmresult40 = extractvalue { i64, i64, i64 } %11, 1
  %asmresult41 = extractvalue { i64, i64, i64 } %11, 2
  %12 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %13 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %12, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !65
  %asmresult49 = extractvalue { i64, i64 } %13, 0
  %asmresult50 = extractvalue { i64, i64 } %13, 1
  %14 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult49, i64 %asmresult50, i32 0, i64 %asmresult39, i64 %asmresult40, i64 %asmresult41) #2, !srcloc !66
  %asmresult51 = extractvalue { i64, i64, i64 } %14, 0
  %asmresult52 = extractvalue { i64, i64, i64 } %14, 1
  %asmresult53 = extractvalue { i64, i64, i64 } %14, 2
  %15 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx60 = getelementptr inbounds i64, i64* %b, i64 2
  %16 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %15, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !67
  %asmresult61 = extractvalue { i64, i64 } %16, 0
  %asmresult62 = extractvalue { i64, i64 } %16, 1
  %17 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult61, i64 %asmresult62, i32 0, i64 %asmresult51, i64 %asmresult52, i64 %asmresult53) #2, !srcloc !68
  %asmresult63 = extractvalue { i64, i64, i64 } %17, 0
  %asmresult64 = extractvalue { i64, i64, i64 } %17, 1
  %asmresult65 = extractvalue { i64, i64, i64 } %17, 2
  %arrayidx68 = getelementptr inbounds i64, i64* %r, i64 2
  store i64 %asmresult63, i64* %arrayidx68, align 8, !tbaa !27
  %18 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx73 = getelementptr inbounds i64, i64* %b, i64 3
  %19 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %18, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !69
  %asmresult74 = extractvalue { i64, i64 } %19, 0
  %asmresult75 = extractvalue { i64, i64 } %19, 1
  %20 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult74, i64 %asmresult75, i32 0, i64 %asmresult64, i64 %asmresult65, i64 0) #2, !srcloc !70
  %asmresult76 = extractvalue { i64, i64, i64 } %20, 0
  %asmresult77 = extractvalue { i64, i64, i64 } %20, 1
  %asmresult78 = extractvalue { i64, i64, i64 } %20, 2
  %21 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %22 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %21, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !71
  %asmresult86 = extractvalue { i64, i64 } %22, 0
  %asmresult87 = extractvalue { i64, i64 } %22, 1
  %23 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult86, i64 %asmresult87, i32 0, i64 %asmresult76, i64 %asmresult77, i64 %asmresult78) #2, !srcloc !72
  %asmresult88 = extractvalue { i64, i64, i64 } %23, 0
  %asmresult89 = extractvalue { i64, i64, i64 } %23, 1
  %asmresult90 = extractvalue { i64, i64, i64 } %23, 2
  %24 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %25 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %24, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !73
  %asmresult98 = extractvalue { i64, i64 } %25, 0
  %asmresult99 = extractvalue { i64, i64 } %25, 1
  %26 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult98, i64 %asmresult99, i32 0, i64 %asmresult88, i64 %asmresult89, i64 %asmresult90) #2, !srcloc !74
  %asmresult100 = extractvalue { i64, i64, i64 } %26, 0
  %asmresult101 = extractvalue { i64, i64, i64 } %26, 1
  %asmresult102 = extractvalue { i64, i64, i64 } %26, 2
  %arrayidx108 = getelementptr inbounds i64, i64* %a, i64 3
  %27 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %28 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %27, i64* elementtype(i64) %b) #2, !srcloc !75
  %asmresult110 = extractvalue { i64, i64 } %28, 0
  %asmresult111 = extractvalue { i64, i64 } %28, 1
  %29 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult110, i64 %asmresult111, i32 0, i64 %asmresult100, i64 %asmresult101, i64 %asmresult102) #2, !srcloc !76
  %asmresult112 = extractvalue { i64, i64, i64 } %29, 0
  %asmresult113 = extractvalue { i64, i64, i64 } %29, 1
  %asmresult114 = extractvalue { i64, i64, i64 } %29, 2
  %arrayidx117 = getelementptr inbounds i64, i64* %r, i64 3
  store i64 %asmresult112, i64* %arrayidx117, align 8, !tbaa !27
  %arrayidx121 = getelementptr inbounds i64, i64* %a, i64 4
  %30 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %31 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %30, i64* elementtype(i64) %b) #2, !srcloc !77
  %asmresult123 = extractvalue { i64, i64 } %31, 0
  %asmresult124 = extractvalue { i64, i64 } %31, 1
  %32 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult123, i64 %asmresult124, i32 0, i64 %asmresult113, i64 %asmresult114, i64 0) #2, !srcloc !78
  %asmresult125 = extractvalue { i64, i64, i64 } %32, 0
  %asmresult126 = extractvalue { i64, i64, i64 } %32, 1
  %asmresult127 = extractvalue { i64, i64, i64 } %32, 2
  %33 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %34 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %33, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !79
  %asmresult135 = extractvalue { i64, i64 } %34, 0
  %asmresult136 = extractvalue { i64, i64 } %34, 1
  %35 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult135, i64 %asmresult136, i32 0, i64 %asmresult125, i64 %asmresult126, i64 %asmresult127) #2, !srcloc !80
  %asmresult137 = extractvalue { i64, i64, i64 } %35, 0
  %asmresult138 = extractvalue { i64, i64, i64 } %35, 1
  %asmresult139 = extractvalue { i64, i64, i64 } %35, 2
  %36 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %37 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %36, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !81
  %asmresult147 = extractvalue { i64, i64 } %37, 0
  %asmresult148 = extractvalue { i64, i64 } %37, 1
  %38 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult147, i64 %asmresult148, i32 0, i64 %asmresult137, i64 %asmresult138, i64 %asmresult139) #2, !srcloc !82
  %asmresult149 = extractvalue { i64, i64, i64 } %38, 0
  %asmresult150 = extractvalue { i64, i64, i64 } %38, 1
  %asmresult151 = extractvalue { i64, i64, i64 } %38, 2
  %39 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %40 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %39, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !83
  %asmresult159 = extractvalue { i64, i64 } %40, 0
  %asmresult160 = extractvalue { i64, i64 } %40, 1
  %41 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult159, i64 %asmresult160, i32 0, i64 %asmresult149, i64 %asmresult150, i64 %asmresult151) #2, !srcloc !84
  %asmresult161 = extractvalue { i64, i64, i64 } %41, 0
  %asmresult162 = extractvalue { i64, i64, i64 } %41, 1
  %asmresult163 = extractvalue { i64, i64, i64 } %41, 2
  %42 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx170 = getelementptr inbounds i64, i64* %b, i64 4
  %43 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %42, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !85
  %asmresult171 = extractvalue { i64, i64 } %43, 0
  %asmresult172 = extractvalue { i64, i64 } %43, 1
  %44 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult171, i64 %asmresult172, i32 0, i64 %asmresult161, i64 %asmresult162, i64 %asmresult163) #2, !srcloc !86
  %asmresult173 = extractvalue { i64, i64, i64 } %44, 0
  %asmresult174 = extractvalue { i64, i64, i64 } %44, 1
  %asmresult175 = extractvalue { i64, i64, i64 } %44, 2
  %arrayidx178 = getelementptr inbounds i64, i64* %r, i64 4
  store i64 %asmresult173, i64* %arrayidx178, align 8, !tbaa !27
  %45 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx183 = getelementptr inbounds i64, i64* %b, i64 5
  %46 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %45, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !87
  %asmresult184 = extractvalue { i64, i64 } %46, 0
  %asmresult185 = extractvalue { i64, i64 } %46, 1
  %47 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult184, i64 %asmresult185, i32 0, i64 %asmresult174, i64 %asmresult175, i64 0) #2, !srcloc !88
  %asmresult186 = extractvalue { i64, i64, i64 } %47, 0
  %asmresult187 = extractvalue { i64, i64, i64 } %47, 1
  %asmresult188 = extractvalue { i64, i64, i64 } %47, 2
  %48 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %49 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %48, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !89
  %asmresult196 = extractvalue { i64, i64 } %49, 0
  %asmresult197 = extractvalue { i64, i64 } %49, 1
  %50 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult196, i64 %asmresult197, i32 0, i64 %asmresult186, i64 %asmresult187, i64 %asmresult188) #2, !srcloc !90
  %asmresult198 = extractvalue { i64, i64, i64 } %50, 0
  %asmresult199 = extractvalue { i64, i64, i64 } %50, 1
  %asmresult200 = extractvalue { i64, i64, i64 } %50, 2
  %51 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %52 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %51, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !91
  %asmresult208 = extractvalue { i64, i64 } %52, 0
  %asmresult209 = extractvalue { i64, i64 } %52, 1
  %53 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult208, i64 %asmresult209, i32 0, i64 %asmresult198, i64 %asmresult199, i64 %asmresult200) #2, !srcloc !92
  %asmresult210 = extractvalue { i64, i64, i64 } %53, 0
  %asmresult211 = extractvalue { i64, i64, i64 } %53, 1
  %asmresult212 = extractvalue { i64, i64, i64 } %53, 2
  %54 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %55 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %54, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !93
  %asmresult220 = extractvalue { i64, i64 } %55, 0
  %asmresult221 = extractvalue { i64, i64 } %55, 1
  %56 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult220, i64 %asmresult221, i32 0, i64 %asmresult210, i64 %asmresult211, i64 %asmresult212) #2, !srcloc !94
  %asmresult222 = extractvalue { i64, i64, i64 } %56, 0
  %asmresult223 = extractvalue { i64, i64, i64 } %56, 1
  %asmresult224 = extractvalue { i64, i64, i64 } %56, 2
  %57 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %58 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %57, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !95
  %asmresult232 = extractvalue { i64, i64 } %58, 0
  %asmresult233 = extractvalue { i64, i64 } %58, 1
  %59 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult232, i64 %asmresult233, i32 0, i64 %asmresult222, i64 %asmresult223, i64 %asmresult224) #2, !srcloc !96
  %asmresult234 = extractvalue { i64, i64, i64 } %59, 0
  %asmresult235 = extractvalue { i64, i64, i64 } %59, 1
  %asmresult236 = extractvalue { i64, i64, i64 } %59, 2
  %arrayidx242 = getelementptr inbounds i64, i64* %a, i64 5
  %60 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %61 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %60, i64* elementtype(i64) %b) #2, !srcloc !97
  %asmresult244 = extractvalue { i64, i64 } %61, 0
  %asmresult245 = extractvalue { i64, i64 } %61, 1
  %62 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult244, i64 %asmresult245, i32 0, i64 %asmresult234, i64 %asmresult235, i64 %asmresult236) #2, !srcloc !98
  %asmresult246 = extractvalue { i64, i64, i64 } %62, 0
  %asmresult247 = extractvalue { i64, i64, i64 } %62, 1
  %asmresult248 = extractvalue { i64, i64, i64 } %62, 2
  %arrayidx251 = getelementptr inbounds i64, i64* %r, i64 5
  store i64 %asmresult246, i64* %arrayidx251, align 8, !tbaa !27
  %arrayidx255 = getelementptr inbounds i64, i64* %a, i64 6
  %63 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %64 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %63, i64* elementtype(i64) %b) #2, !srcloc !99
  %asmresult257 = extractvalue { i64, i64 } %64, 0
  %asmresult258 = extractvalue { i64, i64 } %64, 1
  %65 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult257, i64 %asmresult258, i32 0, i64 %asmresult247, i64 %asmresult248, i64 0) #2, !srcloc !100
  %asmresult259 = extractvalue { i64, i64, i64 } %65, 0
  %asmresult260 = extractvalue { i64, i64, i64 } %65, 1
  %asmresult261 = extractvalue { i64, i64, i64 } %65, 2
  %66 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %67 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %66, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !101
  %asmresult269 = extractvalue { i64, i64 } %67, 0
  %asmresult270 = extractvalue { i64, i64 } %67, 1
  %68 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult269, i64 %asmresult270, i32 0, i64 %asmresult259, i64 %asmresult260, i64 %asmresult261) #2, !srcloc !102
  %asmresult271 = extractvalue { i64, i64, i64 } %68, 0
  %asmresult272 = extractvalue { i64, i64, i64 } %68, 1
  %asmresult273 = extractvalue { i64, i64, i64 } %68, 2
  %69 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %70 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %69, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !103
  %asmresult281 = extractvalue { i64, i64 } %70, 0
  %asmresult282 = extractvalue { i64, i64 } %70, 1
  %71 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult281, i64 %asmresult282, i32 0, i64 %asmresult271, i64 %asmresult272, i64 %asmresult273) #2, !srcloc !104
  %asmresult283 = extractvalue { i64, i64, i64 } %71, 0
  %asmresult284 = extractvalue { i64, i64, i64 } %71, 1
  %asmresult285 = extractvalue { i64, i64, i64 } %71, 2
  %72 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %73 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %72, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !105
  %asmresult293 = extractvalue { i64, i64 } %73, 0
  %asmresult294 = extractvalue { i64, i64 } %73, 1
  %74 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult293, i64 %asmresult294, i32 0, i64 %asmresult283, i64 %asmresult284, i64 %asmresult285) #2, !srcloc !106
  %asmresult295 = extractvalue { i64, i64, i64 } %74, 0
  %asmresult296 = extractvalue { i64, i64, i64 } %74, 1
  %asmresult297 = extractvalue { i64, i64, i64 } %74, 2
  %75 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %76 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %75, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !107
  %asmresult305 = extractvalue { i64, i64 } %76, 0
  %asmresult306 = extractvalue { i64, i64 } %76, 1
  %77 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult305, i64 %asmresult306, i32 0, i64 %asmresult295, i64 %asmresult296, i64 %asmresult297) #2, !srcloc !108
  %asmresult307 = extractvalue { i64, i64, i64 } %77, 0
  %asmresult308 = extractvalue { i64, i64, i64 } %77, 1
  %asmresult309 = extractvalue { i64, i64, i64 } %77, 2
  %78 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %79 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %78, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !109
  %asmresult317 = extractvalue { i64, i64 } %79, 0
  %asmresult318 = extractvalue { i64, i64 } %79, 1
  %80 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult317, i64 %asmresult318, i32 0, i64 %asmresult307, i64 %asmresult308, i64 %asmresult309) #2, !srcloc !110
  %asmresult319 = extractvalue { i64, i64, i64 } %80, 0
  %asmresult320 = extractvalue { i64, i64, i64 } %80, 1
  %asmresult321 = extractvalue { i64, i64, i64 } %80, 2
  %81 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx328 = getelementptr inbounds i64, i64* %b, i64 6
  %82 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %81, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !111
  %asmresult329 = extractvalue { i64, i64 } %82, 0
  %asmresult330 = extractvalue { i64, i64 } %82, 1
  %83 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult329, i64 %asmresult330, i32 0, i64 %asmresult319, i64 %asmresult320, i64 %asmresult321) #2, !srcloc !112
  %asmresult331 = extractvalue { i64, i64, i64 } %83, 0
  %asmresult332 = extractvalue { i64, i64, i64 } %83, 1
  %asmresult333 = extractvalue { i64, i64, i64 } %83, 2
  %arrayidx336 = getelementptr inbounds i64, i64* %r, i64 6
  store i64 %asmresult331, i64* %arrayidx336, align 8, !tbaa !27
  %84 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx341 = getelementptr inbounds i64, i64* %b, i64 7
  %85 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %84, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !113
  %asmresult342 = extractvalue { i64, i64 } %85, 0
  %asmresult343 = extractvalue { i64, i64 } %85, 1
  %86 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult342, i64 %asmresult343, i32 0, i64 %asmresult332, i64 %asmresult333, i64 0) #2, !srcloc !114
  %asmresult344 = extractvalue { i64, i64, i64 } %86, 0
  %asmresult345 = extractvalue { i64, i64, i64 } %86, 1
  %asmresult346 = extractvalue { i64, i64, i64 } %86, 2
  %87 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %88 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %87, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !115
  %asmresult354 = extractvalue { i64, i64 } %88, 0
  %asmresult355 = extractvalue { i64, i64 } %88, 1
  %89 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult354, i64 %asmresult355, i32 0, i64 %asmresult344, i64 %asmresult345, i64 %asmresult346) #2, !srcloc !116
  %asmresult356 = extractvalue { i64, i64, i64 } %89, 0
  %asmresult357 = extractvalue { i64, i64, i64 } %89, 1
  %asmresult358 = extractvalue { i64, i64, i64 } %89, 2
  %90 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %91 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %90, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !117
  %asmresult366 = extractvalue { i64, i64 } %91, 0
  %asmresult367 = extractvalue { i64, i64 } %91, 1
  %92 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult366, i64 %asmresult367, i32 0, i64 %asmresult356, i64 %asmresult357, i64 %asmresult358) #2, !srcloc !118
  %asmresult368 = extractvalue { i64, i64, i64 } %92, 0
  %asmresult369 = extractvalue { i64, i64, i64 } %92, 1
  %asmresult370 = extractvalue { i64, i64, i64 } %92, 2
  %93 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %94 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %93, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !119
  %asmresult378 = extractvalue { i64, i64 } %94, 0
  %asmresult379 = extractvalue { i64, i64 } %94, 1
  %95 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult378, i64 %asmresult379, i32 0, i64 %asmresult368, i64 %asmresult369, i64 %asmresult370) #2, !srcloc !120
  %asmresult380 = extractvalue { i64, i64, i64 } %95, 0
  %asmresult381 = extractvalue { i64, i64, i64 } %95, 1
  %asmresult382 = extractvalue { i64, i64, i64 } %95, 2
  %96 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %97 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %96, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !121
  %asmresult390 = extractvalue { i64, i64 } %97, 0
  %asmresult391 = extractvalue { i64, i64 } %97, 1
  %98 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult390, i64 %asmresult391, i32 0, i64 %asmresult380, i64 %asmresult381, i64 %asmresult382) #2, !srcloc !122
  %asmresult392 = extractvalue { i64, i64, i64 } %98, 0
  %asmresult393 = extractvalue { i64, i64, i64 } %98, 1
  %asmresult394 = extractvalue { i64, i64, i64 } %98, 2
  %99 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %100 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %99, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !123
  %asmresult402 = extractvalue { i64, i64 } %100, 0
  %asmresult403 = extractvalue { i64, i64 } %100, 1
  %101 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult402, i64 %asmresult403, i32 0, i64 %asmresult392, i64 %asmresult393, i64 %asmresult394) #2, !srcloc !124
  %asmresult404 = extractvalue { i64, i64, i64 } %101, 0
  %asmresult405 = extractvalue { i64, i64, i64 } %101, 1
  %asmresult406 = extractvalue { i64, i64, i64 } %101, 2
  %102 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %103 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %102, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !125
  %asmresult414 = extractvalue { i64, i64 } %103, 0
  %asmresult415 = extractvalue { i64, i64 } %103, 1
  %104 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult414, i64 %asmresult415, i32 0, i64 %asmresult404, i64 %asmresult405, i64 %asmresult406) #2, !srcloc !126
  %asmresult416 = extractvalue { i64, i64, i64 } %104, 0
  %asmresult417 = extractvalue { i64, i64, i64 } %104, 1
  %asmresult418 = extractvalue { i64, i64, i64 } %104, 2
  %arrayidx424 = getelementptr inbounds i64, i64* %a, i64 7
  %105 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %106 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %105, i64* elementtype(i64) %b) #2, !srcloc !127
  %asmresult426 = extractvalue { i64, i64 } %106, 0
  %asmresult427 = extractvalue { i64, i64 } %106, 1
  %107 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult426, i64 %asmresult427, i32 0, i64 %asmresult416, i64 %asmresult417, i64 %asmresult418) #2, !srcloc !128
  %asmresult428 = extractvalue { i64, i64, i64 } %107, 0
  %asmresult429 = extractvalue { i64, i64, i64 } %107, 1
  %asmresult430 = extractvalue { i64, i64, i64 } %107, 2
  %arrayidx433 = getelementptr inbounds i64, i64* %r, i64 7
  store i64 %asmresult428, i64* %arrayidx433, align 8, !tbaa !27
  %108 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %109 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %108, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !129
  %asmresult439 = extractvalue { i64, i64 } %109, 0
  %asmresult440 = extractvalue { i64, i64 } %109, 1
  %110 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult439, i64 %asmresult440, i32 0, i64 %asmresult429, i64 %asmresult430, i64 0) #2, !srcloc !130
  %asmresult441 = extractvalue { i64, i64, i64 } %110, 0
  %asmresult442 = extractvalue { i64, i64, i64 } %110, 1
  %asmresult443 = extractvalue { i64, i64, i64 } %110, 2
  %111 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %112 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %111, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !131
  %asmresult451 = extractvalue { i64, i64 } %112, 0
  %asmresult452 = extractvalue { i64, i64 } %112, 1
  %113 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult451, i64 %asmresult452, i32 0, i64 %asmresult441, i64 %asmresult442, i64 %asmresult443) #2, !srcloc !132
  %asmresult453 = extractvalue { i64, i64, i64 } %113, 0
  %asmresult454 = extractvalue { i64, i64, i64 } %113, 1
  %asmresult455 = extractvalue { i64, i64, i64 } %113, 2
  %114 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %115 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %114, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !133
  %asmresult463 = extractvalue { i64, i64 } %115, 0
  %asmresult464 = extractvalue { i64, i64 } %115, 1
  %116 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult463, i64 %asmresult464, i32 0, i64 %asmresult453, i64 %asmresult454, i64 %asmresult455) #2, !srcloc !134
  %asmresult465 = extractvalue { i64, i64, i64 } %116, 0
  %asmresult466 = extractvalue { i64, i64, i64 } %116, 1
  %asmresult467 = extractvalue { i64, i64, i64 } %116, 2
  %117 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %118 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %117, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !135
  %asmresult475 = extractvalue { i64, i64 } %118, 0
  %asmresult476 = extractvalue { i64, i64 } %118, 1
  %119 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult475, i64 %asmresult476, i32 0, i64 %asmresult465, i64 %asmresult466, i64 %asmresult467) #2, !srcloc !136
  %asmresult477 = extractvalue { i64, i64, i64 } %119, 0
  %asmresult478 = extractvalue { i64, i64, i64 } %119, 1
  %asmresult479 = extractvalue { i64, i64, i64 } %119, 2
  %120 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %121 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %120, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !137
  %asmresult487 = extractvalue { i64, i64 } %121, 0
  %asmresult488 = extractvalue { i64, i64 } %121, 1
  %122 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult487, i64 %asmresult488, i32 0, i64 %asmresult477, i64 %asmresult478, i64 %asmresult479) #2, !srcloc !138
  %asmresult489 = extractvalue { i64, i64, i64 } %122, 0
  %asmresult490 = extractvalue { i64, i64, i64 } %122, 1
  %asmresult491 = extractvalue { i64, i64, i64 } %122, 2
  %123 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %124 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %123, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !139
  %asmresult499 = extractvalue { i64, i64 } %124, 0
  %asmresult500 = extractvalue { i64, i64 } %124, 1
  %125 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult499, i64 %asmresult500, i32 0, i64 %asmresult489, i64 %asmresult490, i64 %asmresult491) #2, !srcloc !140
  %asmresult501 = extractvalue { i64, i64, i64 } %125, 0
  %asmresult502 = extractvalue { i64, i64, i64 } %125, 1
  %asmresult503 = extractvalue { i64, i64, i64 } %125, 2
  %126 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %127 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %126, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !141
  %asmresult511 = extractvalue { i64, i64 } %127, 0
  %asmresult512 = extractvalue { i64, i64 } %127, 1
  %128 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult511, i64 %asmresult512, i32 0, i64 %asmresult501, i64 %asmresult502, i64 %asmresult503) #2, !srcloc !142
  %asmresult513 = extractvalue { i64, i64, i64 } %128, 0
  %asmresult514 = extractvalue { i64, i64, i64 } %128, 1
  %asmresult515 = extractvalue { i64, i64, i64 } %128, 2
  %arrayidx518 = getelementptr inbounds i64, i64* %r, i64 8
  store i64 %asmresult513, i64* %arrayidx518, align 8, !tbaa !27
  %129 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %130 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %129, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !143
  %asmresult524 = extractvalue { i64, i64 } %130, 0
  %asmresult525 = extractvalue { i64, i64 } %130, 1
  %131 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult524, i64 %asmresult525, i32 0, i64 %asmresult514, i64 %asmresult515, i64 0) #2, !srcloc !144
  %asmresult526 = extractvalue { i64, i64, i64 } %131, 0
  %asmresult527 = extractvalue { i64, i64, i64 } %131, 1
  %asmresult528 = extractvalue { i64, i64, i64 } %131, 2
  %132 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %133 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %132, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !145
  %asmresult536 = extractvalue { i64, i64 } %133, 0
  %asmresult537 = extractvalue { i64, i64 } %133, 1
  %134 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult536, i64 %asmresult537, i32 0, i64 %asmresult526, i64 %asmresult527, i64 %asmresult528) #2, !srcloc !146
  %asmresult538 = extractvalue { i64, i64, i64 } %134, 0
  %asmresult539 = extractvalue { i64, i64, i64 } %134, 1
  %asmresult540 = extractvalue { i64, i64, i64 } %134, 2
  %135 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %136 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %135, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !147
  %asmresult548 = extractvalue { i64, i64 } %136, 0
  %asmresult549 = extractvalue { i64, i64 } %136, 1
  %137 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult548, i64 %asmresult549, i32 0, i64 %asmresult538, i64 %asmresult539, i64 %asmresult540) #2, !srcloc !148
  %asmresult550 = extractvalue { i64, i64, i64 } %137, 0
  %asmresult551 = extractvalue { i64, i64, i64 } %137, 1
  %asmresult552 = extractvalue { i64, i64, i64 } %137, 2
  %138 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %139 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %138, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !149
  %asmresult560 = extractvalue { i64, i64 } %139, 0
  %asmresult561 = extractvalue { i64, i64 } %139, 1
  %140 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult560, i64 %asmresult561, i32 0, i64 %asmresult550, i64 %asmresult551, i64 %asmresult552) #2, !srcloc !150
  %asmresult562 = extractvalue { i64, i64, i64 } %140, 0
  %asmresult563 = extractvalue { i64, i64, i64 } %140, 1
  %asmresult564 = extractvalue { i64, i64, i64 } %140, 2
  %141 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %142 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %141, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !151
  %asmresult572 = extractvalue { i64, i64 } %142, 0
  %asmresult573 = extractvalue { i64, i64 } %142, 1
  %143 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult572, i64 %asmresult573, i32 0, i64 %asmresult562, i64 %asmresult563, i64 %asmresult564) #2, !srcloc !152
  %asmresult574 = extractvalue { i64, i64, i64 } %143, 0
  %asmresult575 = extractvalue { i64, i64, i64 } %143, 1
  %asmresult576 = extractvalue { i64, i64, i64 } %143, 2
  %144 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %145 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %144, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !153
  %asmresult584 = extractvalue { i64, i64 } %145, 0
  %asmresult585 = extractvalue { i64, i64 } %145, 1
  %146 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult584, i64 %asmresult585, i32 0, i64 %asmresult574, i64 %asmresult575, i64 %asmresult576) #2, !srcloc !154
  %asmresult586 = extractvalue { i64, i64, i64 } %146, 0
  %asmresult587 = extractvalue { i64, i64, i64 } %146, 1
  %asmresult588 = extractvalue { i64, i64, i64 } %146, 2
  %arrayidx591 = getelementptr inbounds i64, i64* %r, i64 9
  store i64 %asmresult586, i64* %arrayidx591, align 8, !tbaa !27
  %147 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %148 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %147, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !155
  %asmresult597 = extractvalue { i64, i64 } %148, 0
  %asmresult598 = extractvalue { i64, i64 } %148, 1
  %149 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult597, i64 %asmresult598, i32 0, i64 %asmresult587, i64 %asmresult588, i64 0) #2, !srcloc !156
  %asmresult599 = extractvalue { i64, i64, i64 } %149, 0
  %asmresult600 = extractvalue { i64, i64, i64 } %149, 1
  %asmresult601 = extractvalue { i64, i64, i64 } %149, 2
  %150 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %151 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %150, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !157
  %asmresult609 = extractvalue { i64, i64 } %151, 0
  %asmresult610 = extractvalue { i64, i64 } %151, 1
  %152 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult609, i64 %asmresult610, i32 0, i64 %asmresult599, i64 %asmresult600, i64 %asmresult601) #2, !srcloc !158
  %asmresult611 = extractvalue { i64, i64, i64 } %152, 0
  %asmresult612 = extractvalue { i64, i64, i64 } %152, 1
  %asmresult613 = extractvalue { i64, i64, i64 } %152, 2
  %153 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %154 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %153, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !159
  %asmresult621 = extractvalue { i64, i64 } %154, 0
  %asmresult622 = extractvalue { i64, i64 } %154, 1
  %155 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult621, i64 %asmresult622, i32 0, i64 %asmresult611, i64 %asmresult612, i64 %asmresult613) #2, !srcloc !160
  %asmresult623 = extractvalue { i64, i64, i64 } %155, 0
  %asmresult624 = extractvalue { i64, i64, i64 } %155, 1
  %asmresult625 = extractvalue { i64, i64, i64 } %155, 2
  %156 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %157 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %156, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !161
  %asmresult633 = extractvalue { i64, i64 } %157, 0
  %asmresult634 = extractvalue { i64, i64 } %157, 1
  %158 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult633, i64 %asmresult634, i32 0, i64 %asmresult623, i64 %asmresult624, i64 %asmresult625) #2, !srcloc !162
  %asmresult635 = extractvalue { i64, i64, i64 } %158, 0
  %asmresult636 = extractvalue { i64, i64, i64 } %158, 1
  %asmresult637 = extractvalue { i64, i64, i64 } %158, 2
  %159 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %160 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %159, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !163
  %asmresult645 = extractvalue { i64, i64 } %160, 0
  %asmresult646 = extractvalue { i64, i64 } %160, 1
  %161 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult645, i64 %asmresult646, i32 0, i64 %asmresult635, i64 %asmresult636, i64 %asmresult637) #2, !srcloc !164
  %asmresult647 = extractvalue { i64, i64, i64 } %161, 0
  %asmresult648 = extractvalue { i64, i64, i64 } %161, 1
  %asmresult649 = extractvalue { i64, i64, i64 } %161, 2
  %arrayidx652 = getelementptr inbounds i64, i64* %r, i64 10
  store i64 %asmresult647, i64* %arrayidx652, align 8, !tbaa !27
  %162 = load i64, i64* %arrayidx121, align 8, !tbaa !27
  %163 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %162, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !165
  %asmresult658 = extractvalue { i64, i64 } %163, 0
  %asmresult659 = extractvalue { i64, i64 } %163, 1
  %164 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult658, i64 %asmresult659, i32 0, i64 %asmresult648, i64 %asmresult649, i64 0) #2, !srcloc !166
  %asmresult660 = extractvalue { i64, i64, i64 } %164, 0
  %asmresult661 = extractvalue { i64, i64, i64 } %164, 1
  %asmresult662 = extractvalue { i64, i64, i64 } %164, 2
  %165 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %166 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %165, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !167
  %asmresult670 = extractvalue { i64, i64 } %166, 0
  %asmresult671 = extractvalue { i64, i64 } %166, 1
  %167 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult670, i64 %asmresult671, i32 0, i64 %asmresult660, i64 %asmresult661, i64 %asmresult662) #2, !srcloc !168
  %asmresult672 = extractvalue { i64, i64, i64 } %167, 0
  %asmresult673 = extractvalue { i64, i64, i64 } %167, 1
  %asmresult674 = extractvalue { i64, i64, i64 } %167, 2
  %168 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %169 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %168, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !169
  %asmresult682 = extractvalue { i64, i64 } %169, 0
  %asmresult683 = extractvalue { i64, i64 } %169, 1
  %170 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult682, i64 %asmresult683, i32 0, i64 %asmresult672, i64 %asmresult673, i64 %asmresult674) #2, !srcloc !170
  %asmresult684 = extractvalue { i64, i64, i64 } %170, 0
  %asmresult685 = extractvalue { i64, i64, i64 } %170, 1
  %asmresult686 = extractvalue { i64, i64, i64 } %170, 2
  %171 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %172 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %171, i64* nonnull elementtype(i64) %arrayidx170) #2, !srcloc !171
  %asmresult694 = extractvalue { i64, i64 } %172, 0
  %asmresult695 = extractvalue { i64, i64 } %172, 1
  %173 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult694, i64 %asmresult695, i32 0, i64 %asmresult684, i64 %asmresult685, i64 %asmresult686) #2, !srcloc !172
  %asmresult696 = extractvalue { i64, i64, i64 } %173, 0
  %asmresult697 = extractvalue { i64, i64, i64 } %173, 1
  %asmresult698 = extractvalue { i64, i64, i64 } %173, 2
  %arrayidx701 = getelementptr inbounds i64, i64* %r, i64 11
  store i64 %asmresult696, i64* %arrayidx701, align 8, !tbaa !27
  %174 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %175 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %174, i64* nonnull elementtype(i64) %arrayidx183) #2, !srcloc !173
  %asmresult707 = extractvalue { i64, i64 } %175, 0
  %asmresult708 = extractvalue { i64, i64 } %175, 1
  %176 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult707, i64 %asmresult708, i32 0, i64 %asmresult697, i64 %asmresult698, i64 0) #2, !srcloc !174
  %asmresult709 = extractvalue { i64, i64, i64 } %176, 0
  %asmresult710 = extractvalue { i64, i64, i64 } %176, 1
  %asmresult711 = extractvalue { i64, i64, i64 } %176, 2
  %177 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %178 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %177, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !175
  %asmresult719 = extractvalue { i64, i64 } %178, 0
  %asmresult720 = extractvalue { i64, i64 } %178, 1
  %179 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult719, i64 %asmresult720, i32 0, i64 %asmresult709, i64 %asmresult710, i64 %asmresult711) #2, !srcloc !176
  %asmresult721 = extractvalue { i64, i64, i64 } %179, 0
  %asmresult722 = extractvalue { i64, i64, i64 } %179, 1
  %asmresult723 = extractvalue { i64, i64, i64 } %179, 2
  %180 = load i64, i64* %arrayidx242, align 8, !tbaa !27
  %181 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %180, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !177
  %asmresult731 = extractvalue { i64, i64 } %181, 0
  %asmresult732 = extractvalue { i64, i64 } %181, 1
  %182 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult731, i64 %asmresult732, i32 0, i64 %asmresult721, i64 %asmresult722, i64 %asmresult723) #2, !srcloc !178
  %asmresult733 = extractvalue { i64, i64, i64 } %182, 0
  %asmresult734 = extractvalue { i64, i64, i64 } %182, 1
  %asmresult735 = extractvalue { i64, i64, i64 } %182, 2
  %arrayidx738 = getelementptr inbounds i64, i64* %r, i64 12
  store i64 %asmresult733, i64* %arrayidx738, align 8, !tbaa !27
  %183 = load i64, i64* %arrayidx255, align 8, !tbaa !27
  %184 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %183, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !179
  %asmresult744 = extractvalue { i64, i64 } %184, 0
  %asmresult745 = extractvalue { i64, i64 } %184, 1
  %185 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult744, i64 %asmresult745, i32 0, i64 %asmresult734, i64 %asmresult735, i64 0) #2, !srcloc !180
  %asmresult746 = extractvalue { i64, i64, i64 } %185, 0
  %asmresult747 = extractvalue { i64, i64, i64 } %185, 1
  %asmresult748 = extractvalue { i64, i64, i64 } %185, 2
  %186 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %187 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %186, i64* nonnull elementtype(i64) %arrayidx328) #2, !srcloc !181
  %asmresult756 = extractvalue { i64, i64 } %187, 0
  %asmresult757 = extractvalue { i64, i64 } %187, 1
  %188 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult756, i64 %asmresult757, i32 0, i64 %asmresult746, i64 %asmresult747, i64 %asmresult748) #2, !srcloc !182
  %asmresult758 = extractvalue { i64, i64, i64 } %188, 0
  %asmresult759 = extractvalue { i64, i64, i64 } %188, 1
  %asmresult760 = extractvalue { i64, i64, i64 } %188, 2
  %arrayidx763 = getelementptr inbounds i64, i64* %r, i64 13
  store i64 %asmresult758, i64* %arrayidx763, align 8, !tbaa !27
  %189 = load i64, i64* %arrayidx424, align 8, !tbaa !27
  %190 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %189, i64* nonnull elementtype(i64) %arrayidx341) #2, !srcloc !183
  %asmresult769 = extractvalue { i64, i64 } %190, 0
  %asmresult770 = extractvalue { i64, i64 } %190, 1
  %191 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult769, i64 %asmresult770, i32 0, i64 %asmresult759, i64 %asmresult760, i64 0) #2, !srcloc !184
  %asmresult771 = extractvalue { i64, i64, i64 } %191, 0
  %asmresult772 = extractvalue { i64, i64, i64 } %191, 1
  %arrayidx776 = getelementptr inbounds i64, i64* %r, i64 14
  store i64 %asmresult771, i64* %arrayidx776, align 8, !tbaa !27
  %arrayidx777 = getelementptr inbounds i64, i64* %r, i64 15
  store i64 %asmresult772, i64* %arrayidx777, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @bn_mul_comba4(i64* nocapture noundef writeonly %r, i64* nocapture noundef readonly %a, i64* noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !27
  %1 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64* elementtype(i64) %b) #2, !srcloc !185
  %asmresult = extractvalue { i64, i64 } %1, 0
  %asmresult2 = extractvalue { i64, i64 } %1, 1
  %2 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult, i64 %asmresult2, i32 0, i64 0, i64 0, i64 0) #2, !srcloc !186
  %asmresult3 = extractvalue { i64, i64, i64 } %2, 0
  %asmresult4 = extractvalue { i64, i64, i64 } %2, 1
  %asmresult5 = extractvalue { i64, i64, i64 } %2, 2
  store i64 %asmresult3, i64* %r, align 8, !tbaa !27
  %3 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx11 = getelementptr inbounds i64, i64* %b, i64 1
  %4 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %3, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !187
  %asmresult12 = extractvalue { i64, i64 } %4, 0
  %asmresult13 = extractvalue { i64, i64 } %4, 1
  %5 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult12, i64 %asmresult13, i32 0, i64 %asmresult4, i64 %asmresult5, i64 0) #2, !srcloc !188
  %asmresult14 = extractvalue { i64, i64, i64 } %5, 0
  %asmresult15 = extractvalue { i64, i64, i64 } %5, 1
  %asmresult16 = extractvalue { i64, i64, i64 } %5, 2
  %arrayidx22 = getelementptr inbounds i64, i64* %a, i64 1
  %6 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %7 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %6, i64* elementtype(i64) %b) #2, !srcloc !189
  %asmresult24 = extractvalue { i64, i64 } %7, 0
  %asmresult25 = extractvalue { i64, i64 } %7, 1
  %8 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult24, i64 %asmresult25, i32 0, i64 %asmresult14, i64 %asmresult15, i64 %asmresult16) #2, !srcloc !190
  %asmresult26 = extractvalue { i64, i64, i64 } %8, 0
  %asmresult27 = extractvalue { i64, i64, i64 } %8, 1
  %asmresult28 = extractvalue { i64, i64, i64 } %8, 2
  %arrayidx31 = getelementptr inbounds i64, i64* %r, i64 1
  store i64 %asmresult26, i64* %arrayidx31, align 8, !tbaa !27
  %arrayidx35 = getelementptr inbounds i64, i64* %a, i64 2
  %9 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %10 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %9, i64* elementtype(i64) %b) #2, !srcloc !191
  %asmresult37 = extractvalue { i64, i64 } %10, 0
  %asmresult38 = extractvalue { i64, i64 } %10, 1
  %11 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult37, i64 %asmresult38, i32 0, i64 %asmresult27, i64 %asmresult28, i64 0) #2, !srcloc !192
  %asmresult39 = extractvalue { i64, i64, i64 } %11, 0
  %asmresult40 = extractvalue { i64, i64, i64 } %11, 1
  %asmresult41 = extractvalue { i64, i64, i64 } %11, 2
  %12 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %13 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %12, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !193
  %asmresult49 = extractvalue { i64, i64 } %13, 0
  %asmresult50 = extractvalue { i64, i64 } %13, 1
  %14 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult49, i64 %asmresult50, i32 0, i64 %asmresult39, i64 %asmresult40, i64 %asmresult41) #2, !srcloc !194
  %asmresult51 = extractvalue { i64, i64, i64 } %14, 0
  %asmresult52 = extractvalue { i64, i64, i64 } %14, 1
  %asmresult53 = extractvalue { i64, i64, i64 } %14, 2
  %15 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx60 = getelementptr inbounds i64, i64* %b, i64 2
  %16 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %15, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !195
  %asmresult61 = extractvalue { i64, i64 } %16, 0
  %asmresult62 = extractvalue { i64, i64 } %16, 1
  %17 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult61, i64 %asmresult62, i32 0, i64 %asmresult51, i64 %asmresult52, i64 %asmresult53) #2, !srcloc !196
  %asmresult63 = extractvalue { i64, i64, i64 } %17, 0
  %asmresult64 = extractvalue { i64, i64, i64 } %17, 1
  %asmresult65 = extractvalue { i64, i64, i64 } %17, 2
  %arrayidx68 = getelementptr inbounds i64, i64* %r, i64 2
  store i64 %asmresult63, i64* %arrayidx68, align 8, !tbaa !27
  %18 = load i64, i64* %a, align 8, !tbaa !27
  %arrayidx73 = getelementptr inbounds i64, i64* %b, i64 3
  %19 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %18, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !197
  %asmresult74 = extractvalue { i64, i64 } %19, 0
  %asmresult75 = extractvalue { i64, i64 } %19, 1
  %20 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult74, i64 %asmresult75, i32 0, i64 %asmresult64, i64 %asmresult65, i64 0) #2, !srcloc !198
  %asmresult76 = extractvalue { i64, i64, i64 } %20, 0
  %asmresult77 = extractvalue { i64, i64, i64 } %20, 1
  %asmresult78 = extractvalue { i64, i64, i64 } %20, 2
  %21 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %22 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %21, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !199
  %asmresult86 = extractvalue { i64, i64 } %22, 0
  %asmresult87 = extractvalue { i64, i64 } %22, 1
  %23 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult86, i64 %asmresult87, i32 0, i64 %asmresult76, i64 %asmresult77, i64 %asmresult78) #2, !srcloc !200
  %asmresult88 = extractvalue { i64, i64, i64 } %23, 0
  %asmresult89 = extractvalue { i64, i64, i64 } %23, 1
  %asmresult90 = extractvalue { i64, i64, i64 } %23, 2
  %24 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %25 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %24, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !201
  %asmresult98 = extractvalue { i64, i64 } %25, 0
  %asmresult99 = extractvalue { i64, i64 } %25, 1
  %26 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult98, i64 %asmresult99, i32 0, i64 %asmresult88, i64 %asmresult89, i64 %asmresult90) #2, !srcloc !202
  %asmresult100 = extractvalue { i64, i64, i64 } %26, 0
  %asmresult101 = extractvalue { i64, i64, i64 } %26, 1
  %asmresult102 = extractvalue { i64, i64, i64 } %26, 2
  %arrayidx108 = getelementptr inbounds i64, i64* %a, i64 3
  %27 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %28 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %27, i64* elementtype(i64) %b) #2, !srcloc !203
  %asmresult110 = extractvalue { i64, i64 } %28, 0
  %asmresult111 = extractvalue { i64, i64 } %28, 1
  %29 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult110, i64 %asmresult111, i32 0, i64 %asmresult100, i64 %asmresult101, i64 %asmresult102) #2, !srcloc !204
  %asmresult112 = extractvalue { i64, i64, i64 } %29, 0
  %asmresult113 = extractvalue { i64, i64, i64 } %29, 1
  %asmresult114 = extractvalue { i64, i64, i64 } %29, 2
  %arrayidx117 = getelementptr inbounds i64, i64* %r, i64 3
  store i64 %asmresult112, i64* %arrayidx117, align 8, !tbaa !27
  %30 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %31 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %30, i64* nonnull elementtype(i64) %arrayidx11) #2, !srcloc !205
  %asmresult123 = extractvalue { i64, i64 } %31, 0
  %asmresult124 = extractvalue { i64, i64 } %31, 1
  %32 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult123, i64 %asmresult124, i32 0, i64 %asmresult113, i64 %asmresult114, i64 0) #2, !srcloc !206
  %asmresult125 = extractvalue { i64, i64, i64 } %32, 0
  %asmresult126 = extractvalue { i64, i64, i64 } %32, 1
  %asmresult127 = extractvalue { i64, i64, i64 } %32, 2
  %33 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %34 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %33, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !207
  %asmresult135 = extractvalue { i64, i64 } %34, 0
  %asmresult136 = extractvalue { i64, i64 } %34, 1
  %35 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult135, i64 %asmresult136, i32 0, i64 %asmresult125, i64 %asmresult126, i64 %asmresult127) #2, !srcloc !208
  %asmresult137 = extractvalue { i64, i64, i64 } %35, 0
  %asmresult138 = extractvalue { i64, i64, i64 } %35, 1
  %asmresult139 = extractvalue { i64, i64, i64 } %35, 2
  %36 = load i64, i64* %arrayidx22, align 8, !tbaa !27
  %37 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %36, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !209
  %asmresult147 = extractvalue { i64, i64 } %37, 0
  %asmresult148 = extractvalue { i64, i64 } %37, 1
  %38 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult147, i64 %asmresult148, i32 0, i64 %asmresult137, i64 %asmresult138, i64 %asmresult139) #2, !srcloc !210
  %asmresult149 = extractvalue { i64, i64, i64 } %38, 0
  %asmresult150 = extractvalue { i64, i64, i64 } %38, 1
  %asmresult151 = extractvalue { i64, i64, i64 } %38, 2
  %arrayidx154 = getelementptr inbounds i64, i64* %r, i64 4
  store i64 %asmresult149, i64* %arrayidx154, align 8, !tbaa !27
  %39 = load i64, i64* %arrayidx35, align 8, !tbaa !27
  %40 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %39, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !211
  %asmresult160 = extractvalue { i64, i64 } %40, 0
  %asmresult161 = extractvalue { i64, i64 } %40, 1
  %41 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult160, i64 %asmresult161, i32 0, i64 %asmresult150, i64 %asmresult151, i64 0) #2, !srcloc !212
  %asmresult162 = extractvalue { i64, i64, i64 } %41, 0
  %asmresult163 = extractvalue { i64, i64, i64 } %41, 1
  %asmresult164 = extractvalue { i64, i64, i64 } %41, 2
  %42 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %43 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %42, i64* nonnull elementtype(i64) %arrayidx60) #2, !srcloc !213
  %asmresult172 = extractvalue { i64, i64 } %43, 0
  %asmresult173 = extractvalue { i64, i64 } %43, 1
  %44 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult172, i64 %asmresult173, i32 0, i64 %asmresult162, i64 %asmresult163, i64 %asmresult164) #2, !srcloc !214
  %asmresult174 = extractvalue { i64, i64, i64 } %44, 0
  %asmresult175 = extractvalue { i64, i64, i64 } %44, 1
  %asmresult176 = extractvalue { i64, i64, i64 } %44, 2
  %arrayidx179 = getelementptr inbounds i64, i64* %r, i64 5
  store i64 %asmresult174, i64* %arrayidx179, align 8, !tbaa !27
  %45 = load i64, i64* %arrayidx108, align 8, !tbaa !27
  %46 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %45, i64* nonnull elementtype(i64) %arrayidx73) #2, !srcloc !215
  %asmresult185 = extractvalue { i64, i64 } %46, 0
  %asmresult186 = extractvalue { i64, i64 } %46, 1
  %47 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult185, i64 %asmresult186, i32 0, i64 %asmresult175, i64 %asmresult176, i64 0) #2, !srcloc !216
  %asmresult187 = extractvalue { i64, i64, i64 } %47, 0
  %asmresult188 = extractvalue { i64, i64, i64 } %47, 1
  %arrayidx192 = getelementptr inbounds i64, i64* %r, i64 6
  store i64 %asmresult187, i64* %arrayidx192, align 8, !tbaa !27
  %arrayidx193 = getelementptr inbounds i64, i64* %r, i64 7
  store i64 %asmresult188, i64* %arrayidx193, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @bn_sqr_comba8(i64* nocapture noundef writeonly %r, i64* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !27
  %1 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0) #4, !srcloc !217
  %asmresult = extractvalue { i64, i64 } %1, 0
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  %2 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult, i64 %asmresult1, i32 0, i64 0, i64 0, i64 0) #2, !srcloc !218
  %asmresult2 = extractvalue { i64, i64, i64 } %2, 0
  %asmresult3 = extractvalue { i64, i64, i64 } %2, 1
  %asmresult4 = extractvalue { i64, i64, i64 } %2, 2
  store i64 %asmresult2, i64* %r, align 8, !tbaa !27
  %arrayidx9 = getelementptr inbounds i64, i64* %a, i64 1
  %3 = load i64, i64* %arrayidx9, align 8, !tbaa !27
  %4 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %3, i64* nonnull elementtype(i64) %a) #2, !srcloc !219
  %asmresult11 = extractvalue { i64, i64 } %4, 0
  %asmresult12 = extractvalue { i64, i64 } %4, 1
  %5 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult11, i64 %asmresult12, i32 0, i64 %asmresult3, i64 %asmresult4, i64 0) #2, !srcloc !220
  %asmresult13 = extractvalue { i64, i64, i64 } %5, 0
  %asmresult14 = extractvalue { i64, i64, i64 } %5, 1
  %asmresult15 = extractvalue { i64, i64, i64 } %5, 2
  %6 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult11, i64 %asmresult12, i32 0, i64 %asmresult13, i64 %asmresult14, i64 %asmresult15) #2, !srcloc !221
  %asmresult16 = extractvalue { i64, i64, i64 } %6, 0
  %asmresult17 = extractvalue { i64, i64, i64 } %6, 1
  %asmresult18 = extractvalue { i64, i64, i64 } %6, 2
  %arrayidx21 = getelementptr inbounds i64, i64* %r, i64 1
  store i64 %asmresult16, i64* %arrayidx21, align 8, !tbaa !27
  %7 = load i64, i64* %arrayidx9, align 8, !tbaa !27
  %8 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %7) #4, !srcloc !222
  %asmresult26 = extractvalue { i64, i64 } %8, 0
  %asmresult27 = extractvalue { i64, i64 } %8, 1
  %9 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult26, i64 %asmresult27, i32 0, i64 %asmresult17, i64 %asmresult18, i64 0) #2, !srcloc !223
  %asmresult28 = extractvalue { i64, i64, i64 } %9, 0
  %asmresult29 = extractvalue { i64, i64, i64 } %9, 1
  %asmresult30 = extractvalue { i64, i64, i64 } %9, 2
  %arrayidx36 = getelementptr inbounds i64, i64* %a, i64 2
  %10 = load i64, i64* %arrayidx36, align 8, !tbaa !27
  %11 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %10, i64* nonnull elementtype(i64) %a) #2, !srcloc !224
  %asmresult38 = extractvalue { i64, i64 } %11, 0
  %asmresult39 = extractvalue { i64, i64 } %11, 1
  %12 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult38, i64 %asmresult39, i32 0, i64 %asmresult28, i64 %asmresult29, i64 %asmresult30) #2, !srcloc !225
  %asmresult40 = extractvalue { i64, i64, i64 } %12, 0
  %asmresult41 = extractvalue { i64, i64, i64 } %12, 1
  %asmresult42 = extractvalue { i64, i64, i64 } %12, 2
  %13 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult38, i64 %asmresult39, i32 0, i64 %asmresult40, i64 %asmresult41, i64 %asmresult42) #2, !srcloc !226
  %asmresult43 = extractvalue { i64, i64, i64 } %13, 0
  %asmresult44 = extractvalue { i64, i64, i64 } %13, 1
  %asmresult45 = extractvalue { i64, i64, i64 } %13, 2
  %arrayidx48 = getelementptr inbounds i64, i64* %r, i64 2
  store i64 %asmresult43, i64* %arrayidx48, align 8, !tbaa !27
  %arrayidx52 = getelementptr inbounds i64, i64* %a, i64 3
  %14 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %15 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %14, i64* nonnull elementtype(i64) %a) #2, !srcloc !227
  %asmresult54 = extractvalue { i64, i64 } %15, 0
  %asmresult55 = extractvalue { i64, i64 } %15, 1
  %16 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult54, i64 %asmresult55, i32 0, i64 %asmresult44, i64 %asmresult45, i64 0) #2, !srcloc !228
  %asmresult56 = extractvalue { i64, i64, i64 } %16, 0
  %asmresult57 = extractvalue { i64, i64, i64 } %16, 1
  %asmresult58 = extractvalue { i64, i64, i64 } %16, 2
  %17 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult54, i64 %asmresult55, i32 0, i64 %asmresult56, i64 %asmresult57, i64 %asmresult58) #2, !srcloc !229
  %asmresult59 = extractvalue { i64, i64, i64 } %17, 0
  %asmresult60 = extractvalue { i64, i64, i64 } %17, 1
  %asmresult61 = extractvalue { i64, i64, i64 } %17, 2
  %18 = load i64, i64* %arrayidx36, align 8, !tbaa !27
  %19 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %18, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !230
  %asmresult69 = extractvalue { i64, i64 } %19, 0
  %asmresult70 = extractvalue { i64, i64 } %19, 1
  %20 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult69, i64 %asmresult70, i32 0, i64 %asmresult59, i64 %asmresult60, i64 %asmresult61) #2, !srcloc !231
  %asmresult71 = extractvalue { i64, i64, i64 } %20, 0
  %asmresult72 = extractvalue { i64, i64, i64 } %20, 1
  %asmresult73 = extractvalue { i64, i64, i64 } %20, 2
  %21 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult69, i64 %asmresult70, i32 0, i64 %asmresult71, i64 %asmresult72, i64 %asmresult73) #2, !srcloc !232
  %asmresult74 = extractvalue { i64, i64, i64 } %21, 0
  %asmresult75 = extractvalue { i64, i64, i64 } %21, 1
  %asmresult76 = extractvalue { i64, i64, i64 } %21, 2
  %arrayidx79 = getelementptr inbounds i64, i64* %r, i64 3
  store i64 %asmresult74, i64* %arrayidx79, align 8, !tbaa !27
  %22 = load i64, i64* %arrayidx36, align 8, !tbaa !27
  %23 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %22) #4, !srcloc !233
  %asmresult84 = extractvalue { i64, i64 } %23, 0
  %asmresult85 = extractvalue { i64, i64 } %23, 1
  %24 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult84, i64 %asmresult85, i32 0, i64 %asmresult75, i64 %asmresult76, i64 0) #2, !srcloc !234
  %asmresult86 = extractvalue { i64, i64, i64 } %24, 0
  %asmresult87 = extractvalue { i64, i64, i64 } %24, 1
  %asmresult88 = extractvalue { i64, i64, i64 } %24, 2
  %25 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %26 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %25, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !235
  %asmresult96 = extractvalue { i64, i64 } %26, 0
  %asmresult97 = extractvalue { i64, i64 } %26, 1
  %27 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult96, i64 %asmresult97, i32 0, i64 %asmresult86, i64 %asmresult87, i64 %asmresult88) #2, !srcloc !236
  %asmresult98 = extractvalue { i64, i64, i64 } %27, 0
  %asmresult99 = extractvalue { i64, i64, i64 } %27, 1
  %asmresult100 = extractvalue { i64, i64, i64 } %27, 2
  %28 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult96, i64 %asmresult97, i32 0, i64 %asmresult98, i64 %asmresult99, i64 %asmresult100) #2, !srcloc !237
  %asmresult101 = extractvalue { i64, i64, i64 } %28, 0
  %asmresult102 = extractvalue { i64, i64, i64 } %28, 1
  %asmresult103 = extractvalue { i64, i64, i64 } %28, 2
  %arrayidx109 = getelementptr inbounds i64, i64* %a, i64 4
  %29 = load i64, i64* %arrayidx109, align 8, !tbaa !27
  %30 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %29, i64* nonnull elementtype(i64) %a) #2, !srcloc !238
  %asmresult111 = extractvalue { i64, i64 } %30, 0
  %asmresult112 = extractvalue { i64, i64 } %30, 1
  %31 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult111, i64 %asmresult112, i32 0, i64 %asmresult101, i64 %asmresult102, i64 %asmresult103) #2, !srcloc !239
  %asmresult113 = extractvalue { i64, i64, i64 } %31, 0
  %asmresult114 = extractvalue { i64, i64, i64 } %31, 1
  %asmresult115 = extractvalue { i64, i64, i64 } %31, 2
  %32 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult111, i64 %asmresult112, i32 0, i64 %asmresult113, i64 %asmresult114, i64 %asmresult115) #2, !srcloc !240
  %asmresult116 = extractvalue { i64, i64, i64 } %32, 0
  %asmresult117 = extractvalue { i64, i64, i64 } %32, 1
  %asmresult118 = extractvalue { i64, i64, i64 } %32, 2
  %arrayidx121 = getelementptr inbounds i64, i64* %r, i64 4
  store i64 %asmresult116, i64* %arrayidx121, align 8, !tbaa !27
  %arrayidx125 = getelementptr inbounds i64, i64* %a, i64 5
  %33 = load i64, i64* %arrayidx125, align 8, !tbaa !27
  %34 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %33, i64* nonnull elementtype(i64) %a) #2, !srcloc !241
  %asmresult127 = extractvalue { i64, i64 } %34, 0
  %asmresult128 = extractvalue { i64, i64 } %34, 1
  %35 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult127, i64 %asmresult128, i32 0, i64 %asmresult117, i64 %asmresult118, i64 0) #2, !srcloc !242
  %asmresult129 = extractvalue { i64, i64, i64 } %35, 0
  %asmresult130 = extractvalue { i64, i64, i64 } %35, 1
  %asmresult131 = extractvalue { i64, i64, i64 } %35, 2
  %36 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult127, i64 %asmresult128, i32 0, i64 %asmresult129, i64 %asmresult130, i64 %asmresult131) #2, !srcloc !243
  %asmresult132 = extractvalue { i64, i64, i64 } %36, 0
  %asmresult133 = extractvalue { i64, i64, i64 } %36, 1
  %asmresult134 = extractvalue { i64, i64, i64 } %36, 2
  %37 = load i64, i64* %arrayidx109, align 8, !tbaa !27
  %38 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %37, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !244
  %asmresult142 = extractvalue { i64, i64 } %38, 0
  %asmresult143 = extractvalue { i64, i64 } %38, 1
  %39 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult142, i64 %asmresult143, i32 0, i64 %asmresult132, i64 %asmresult133, i64 %asmresult134) #2, !srcloc !245
  %asmresult144 = extractvalue { i64, i64, i64 } %39, 0
  %asmresult145 = extractvalue { i64, i64, i64 } %39, 1
  %asmresult146 = extractvalue { i64, i64, i64 } %39, 2
  %40 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult142, i64 %asmresult143, i32 0, i64 %asmresult144, i64 %asmresult145, i64 %asmresult146) #2, !srcloc !246
  %asmresult147 = extractvalue { i64, i64, i64 } %40, 0
  %asmresult148 = extractvalue { i64, i64, i64 } %40, 1
  %asmresult149 = extractvalue { i64, i64, i64 } %40, 2
  %41 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %42 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %41, i64* nonnull elementtype(i64) %arrayidx36) #2, !srcloc !247
  %asmresult157 = extractvalue { i64, i64 } %42, 0
  %asmresult158 = extractvalue { i64, i64 } %42, 1
  %43 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult157, i64 %asmresult158, i32 0, i64 %asmresult147, i64 %asmresult148, i64 %asmresult149) #2, !srcloc !248
  %asmresult159 = extractvalue { i64, i64, i64 } %43, 0
  %asmresult160 = extractvalue { i64, i64, i64 } %43, 1
  %asmresult161 = extractvalue { i64, i64, i64 } %43, 2
  %44 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult157, i64 %asmresult158, i32 0, i64 %asmresult159, i64 %asmresult160, i64 %asmresult161) #2, !srcloc !249
  %asmresult162 = extractvalue { i64, i64, i64 } %44, 0
  %asmresult163 = extractvalue { i64, i64, i64 } %44, 1
  %asmresult164 = extractvalue { i64, i64, i64 } %44, 2
  %arrayidx167 = getelementptr inbounds i64, i64* %r, i64 5
  store i64 %asmresult162, i64* %arrayidx167, align 8, !tbaa !27
  %45 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %46 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %45) #4, !srcloc !250
  %asmresult172 = extractvalue { i64, i64 } %46, 0
  %asmresult173 = extractvalue { i64, i64 } %46, 1
  %47 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult172, i64 %asmresult173, i32 0, i64 %asmresult163, i64 %asmresult164, i64 0) #2, !srcloc !251
  %asmresult174 = extractvalue { i64, i64, i64 } %47, 0
  %asmresult175 = extractvalue { i64, i64, i64 } %47, 1
  %asmresult176 = extractvalue { i64, i64, i64 } %47, 2
  %48 = load i64, i64* %arrayidx109, align 8, !tbaa !27
  %49 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %48, i64* nonnull elementtype(i64) %arrayidx36) #2, !srcloc !252
  %asmresult184 = extractvalue { i64, i64 } %49, 0
  %asmresult185 = extractvalue { i64, i64 } %49, 1
  %50 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult184, i64 %asmresult185, i32 0, i64 %asmresult174, i64 %asmresult175, i64 %asmresult176) #2, !srcloc !253
  %asmresult186 = extractvalue { i64, i64, i64 } %50, 0
  %asmresult187 = extractvalue { i64, i64, i64 } %50, 1
  %asmresult188 = extractvalue { i64, i64, i64 } %50, 2
  %51 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult184, i64 %asmresult185, i32 0, i64 %asmresult186, i64 %asmresult187, i64 %asmresult188) #2, !srcloc !254
  %asmresult189 = extractvalue { i64, i64, i64 } %51, 0
  %asmresult190 = extractvalue { i64, i64, i64 } %51, 1
  %asmresult191 = extractvalue { i64, i64, i64 } %51, 2
  %52 = load i64, i64* %arrayidx125, align 8, !tbaa !27
  %53 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %52, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !255
  %asmresult199 = extractvalue { i64, i64 } %53, 0
  %asmresult200 = extractvalue { i64, i64 } %53, 1
  %54 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult199, i64 %asmresult200, i32 0, i64 %asmresult189, i64 %asmresult190, i64 %asmresult191) #2, !srcloc !256
  %asmresult201 = extractvalue { i64, i64, i64 } %54, 0
  %asmresult202 = extractvalue { i64, i64, i64 } %54, 1
  %asmresult203 = extractvalue { i64, i64, i64 } %54, 2
  %55 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult199, i64 %asmresult200, i32 0, i64 %asmresult201, i64 %asmresult202, i64 %asmresult203) #2, !srcloc !257
  %asmresult204 = extractvalue { i64, i64, i64 } %55, 0
  %asmresult205 = extractvalue { i64, i64, i64 } %55, 1
  %asmresult206 = extractvalue { i64, i64, i64 } %55, 2
  %arrayidx212 = getelementptr inbounds i64, i64* %a, i64 6
  %56 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %57 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %56, i64* nonnull elementtype(i64) %a) #2, !srcloc !258
  %asmresult214 = extractvalue { i64, i64 } %57, 0
  %asmresult215 = extractvalue { i64, i64 } %57, 1
  %58 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult214, i64 %asmresult215, i32 0, i64 %asmresult204, i64 %asmresult205, i64 %asmresult206) #2, !srcloc !259
  %asmresult216 = extractvalue { i64, i64, i64 } %58, 0
  %asmresult217 = extractvalue { i64, i64, i64 } %58, 1
  %asmresult218 = extractvalue { i64, i64, i64 } %58, 2
  %59 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult214, i64 %asmresult215, i32 0, i64 %asmresult216, i64 %asmresult217, i64 %asmresult218) #2, !srcloc !260
  %asmresult219 = extractvalue { i64, i64, i64 } %59, 0
  %asmresult220 = extractvalue { i64, i64, i64 } %59, 1
  %asmresult221 = extractvalue { i64, i64, i64 } %59, 2
  %arrayidx224 = getelementptr inbounds i64, i64* %r, i64 6
  store i64 %asmresult219, i64* %arrayidx224, align 8, !tbaa !27
  %arrayidx228 = getelementptr inbounds i64, i64* %a, i64 7
  %60 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %61 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %60, i64* nonnull elementtype(i64) %a) #2, !srcloc !261
  %asmresult230 = extractvalue { i64, i64 } %61, 0
  %asmresult231 = extractvalue { i64, i64 } %61, 1
  %62 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult230, i64 %asmresult231, i32 0, i64 %asmresult220, i64 %asmresult221, i64 0) #2, !srcloc !262
  %asmresult232 = extractvalue { i64, i64, i64 } %62, 0
  %asmresult233 = extractvalue { i64, i64, i64 } %62, 1
  %asmresult234 = extractvalue { i64, i64, i64 } %62, 2
  %63 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult230, i64 %asmresult231, i32 0, i64 %asmresult232, i64 %asmresult233, i64 %asmresult234) #2, !srcloc !263
  %asmresult235 = extractvalue { i64, i64, i64 } %63, 0
  %asmresult236 = extractvalue { i64, i64, i64 } %63, 1
  %asmresult237 = extractvalue { i64, i64, i64 } %63, 2
  %64 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %65 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %64, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !264
  %asmresult245 = extractvalue { i64, i64 } %65, 0
  %asmresult246 = extractvalue { i64, i64 } %65, 1
  %66 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult245, i64 %asmresult246, i32 0, i64 %asmresult235, i64 %asmresult236, i64 %asmresult237) #2, !srcloc !265
  %asmresult247 = extractvalue { i64, i64, i64 } %66, 0
  %asmresult248 = extractvalue { i64, i64, i64 } %66, 1
  %asmresult249 = extractvalue { i64, i64, i64 } %66, 2
  %67 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult245, i64 %asmresult246, i32 0, i64 %asmresult247, i64 %asmresult248, i64 %asmresult249) #2, !srcloc !266
  %asmresult250 = extractvalue { i64, i64, i64 } %67, 0
  %asmresult251 = extractvalue { i64, i64, i64 } %67, 1
  %asmresult252 = extractvalue { i64, i64, i64 } %67, 2
  %68 = load i64, i64* %arrayidx125, align 8, !tbaa !27
  %69 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %68, i64* nonnull elementtype(i64) %arrayidx36) #2, !srcloc !267
  %asmresult260 = extractvalue { i64, i64 } %69, 0
  %asmresult261 = extractvalue { i64, i64 } %69, 1
  %70 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult260, i64 %asmresult261, i32 0, i64 %asmresult250, i64 %asmresult251, i64 %asmresult252) #2, !srcloc !268
  %asmresult262 = extractvalue { i64, i64, i64 } %70, 0
  %asmresult263 = extractvalue { i64, i64, i64 } %70, 1
  %asmresult264 = extractvalue { i64, i64, i64 } %70, 2
  %71 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult260, i64 %asmresult261, i32 0, i64 %asmresult262, i64 %asmresult263, i64 %asmresult264) #2, !srcloc !269
  %asmresult265 = extractvalue { i64, i64, i64 } %71, 0
  %asmresult266 = extractvalue { i64, i64, i64 } %71, 1
  %asmresult267 = extractvalue { i64, i64, i64 } %71, 2
  %72 = load i64, i64* %arrayidx109, align 8, !tbaa !27
  %73 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %72, i64* nonnull elementtype(i64) %arrayidx52) #2, !srcloc !270
  %asmresult275 = extractvalue { i64, i64 } %73, 0
  %asmresult276 = extractvalue { i64, i64 } %73, 1
  %74 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult275, i64 %asmresult276, i32 0, i64 %asmresult265, i64 %asmresult266, i64 %asmresult267) #2, !srcloc !271
  %asmresult277 = extractvalue { i64, i64, i64 } %74, 0
  %asmresult278 = extractvalue { i64, i64, i64 } %74, 1
  %asmresult279 = extractvalue { i64, i64, i64 } %74, 2
  %75 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult275, i64 %asmresult276, i32 0, i64 %asmresult277, i64 %asmresult278, i64 %asmresult279) #2, !srcloc !272
  %asmresult280 = extractvalue { i64, i64, i64 } %75, 0
  %asmresult281 = extractvalue { i64, i64, i64 } %75, 1
  %asmresult282 = extractvalue { i64, i64, i64 } %75, 2
  %arrayidx285 = getelementptr inbounds i64, i64* %r, i64 7
  store i64 %asmresult280, i64* %arrayidx285, align 8, !tbaa !27
  %76 = load i64, i64* %arrayidx109, align 8, !tbaa !27
  %77 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %76) #4, !srcloc !273
  %asmresult290 = extractvalue { i64, i64 } %77, 0
  %asmresult291 = extractvalue { i64, i64 } %77, 1
  %78 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult290, i64 %asmresult291, i32 0, i64 %asmresult281, i64 %asmresult282, i64 0) #2, !srcloc !274
  %asmresult292 = extractvalue { i64, i64, i64 } %78, 0
  %asmresult293 = extractvalue { i64, i64, i64 } %78, 1
  %asmresult294 = extractvalue { i64, i64, i64 } %78, 2
  %79 = load i64, i64* %arrayidx125, align 8, !tbaa !27
  %80 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %79, i64* nonnull elementtype(i64) %arrayidx52) #2, !srcloc !275
  %asmresult302 = extractvalue { i64, i64 } %80, 0
  %asmresult303 = extractvalue { i64, i64 } %80, 1
  %81 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult302, i64 %asmresult303, i32 0, i64 %asmresult292, i64 %asmresult293, i64 %asmresult294) #2, !srcloc !276
  %asmresult304 = extractvalue { i64, i64, i64 } %81, 0
  %asmresult305 = extractvalue { i64, i64, i64 } %81, 1
  %asmresult306 = extractvalue { i64, i64, i64 } %81, 2
  %82 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult302, i64 %asmresult303, i32 0, i64 %asmresult304, i64 %asmresult305, i64 %asmresult306) #2, !srcloc !277
  %asmresult307 = extractvalue { i64, i64, i64 } %82, 0
  %asmresult308 = extractvalue { i64, i64, i64 } %82, 1
  %asmresult309 = extractvalue { i64, i64, i64 } %82, 2
  %83 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %84 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %83, i64* nonnull elementtype(i64) %arrayidx36) #2, !srcloc !278
  %asmresult317 = extractvalue { i64, i64 } %84, 0
  %asmresult318 = extractvalue { i64, i64 } %84, 1
  %85 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult317, i64 %asmresult318, i32 0, i64 %asmresult307, i64 %asmresult308, i64 %asmresult309) #2, !srcloc !279
  %asmresult319 = extractvalue { i64, i64, i64 } %85, 0
  %asmresult320 = extractvalue { i64, i64, i64 } %85, 1
  %asmresult321 = extractvalue { i64, i64, i64 } %85, 2
  %86 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult317, i64 %asmresult318, i32 0, i64 %asmresult319, i64 %asmresult320, i64 %asmresult321) #2, !srcloc !280
  %asmresult322 = extractvalue { i64, i64, i64 } %86, 0
  %asmresult323 = extractvalue { i64, i64, i64 } %86, 1
  %asmresult324 = extractvalue { i64, i64, i64 } %86, 2
  %87 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %88 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %87, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !281
  %asmresult332 = extractvalue { i64, i64 } %88, 0
  %asmresult333 = extractvalue { i64, i64 } %88, 1
  %89 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult332, i64 %asmresult333, i32 0, i64 %asmresult322, i64 %asmresult323, i64 %asmresult324) #2, !srcloc !282
  %asmresult334 = extractvalue { i64, i64, i64 } %89, 0
  %asmresult335 = extractvalue { i64, i64, i64 } %89, 1
  %asmresult336 = extractvalue { i64, i64, i64 } %89, 2
  %90 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult332, i64 %asmresult333, i32 0, i64 %asmresult334, i64 %asmresult335, i64 %asmresult336) #2, !srcloc !283
  %asmresult337 = extractvalue { i64, i64, i64 } %90, 0
  %asmresult338 = extractvalue { i64, i64, i64 } %90, 1
  %asmresult339 = extractvalue { i64, i64, i64 } %90, 2
  %arrayidx342 = getelementptr inbounds i64, i64* %r, i64 8
  store i64 %asmresult337, i64* %arrayidx342, align 8, !tbaa !27
  %91 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %92 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %91, i64* nonnull elementtype(i64) %arrayidx36) #2, !srcloc !284
  %asmresult348 = extractvalue { i64, i64 } %92, 0
  %asmresult349 = extractvalue { i64, i64 } %92, 1
  %93 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult348, i64 %asmresult349, i32 0, i64 %asmresult338, i64 %asmresult339, i64 0) #2, !srcloc !285
  %asmresult350 = extractvalue { i64, i64, i64 } %93, 0
  %asmresult351 = extractvalue { i64, i64, i64 } %93, 1
  %asmresult352 = extractvalue { i64, i64, i64 } %93, 2
  %94 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult348, i64 %asmresult349, i32 0, i64 %asmresult350, i64 %asmresult351, i64 %asmresult352) #2, !srcloc !286
  %asmresult353 = extractvalue { i64, i64, i64 } %94, 0
  %asmresult354 = extractvalue { i64, i64, i64 } %94, 1
  %asmresult355 = extractvalue { i64, i64, i64 } %94, 2
  %95 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %96 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %95, i64* nonnull elementtype(i64) %arrayidx52) #2, !srcloc !287
  %asmresult363 = extractvalue { i64, i64 } %96, 0
  %asmresult364 = extractvalue { i64, i64 } %96, 1
  %97 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult363, i64 %asmresult364, i32 0, i64 %asmresult353, i64 %asmresult354, i64 %asmresult355) #2, !srcloc !288
  %asmresult365 = extractvalue { i64, i64, i64 } %97, 0
  %asmresult366 = extractvalue { i64, i64, i64 } %97, 1
  %asmresult367 = extractvalue { i64, i64, i64 } %97, 2
  %98 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult363, i64 %asmresult364, i32 0, i64 %asmresult365, i64 %asmresult366, i64 %asmresult367) #2, !srcloc !289
  %asmresult368 = extractvalue { i64, i64, i64 } %98, 0
  %asmresult369 = extractvalue { i64, i64, i64 } %98, 1
  %asmresult370 = extractvalue { i64, i64, i64 } %98, 2
  %99 = load i64, i64* %arrayidx125, align 8, !tbaa !27
  %100 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %99, i64* nonnull elementtype(i64) %arrayidx109) #2, !srcloc !290
  %asmresult378 = extractvalue { i64, i64 } %100, 0
  %asmresult379 = extractvalue { i64, i64 } %100, 1
  %101 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult378, i64 %asmresult379, i32 0, i64 %asmresult368, i64 %asmresult369, i64 %asmresult370) #2, !srcloc !291
  %asmresult380 = extractvalue { i64, i64, i64 } %101, 0
  %asmresult381 = extractvalue { i64, i64, i64 } %101, 1
  %asmresult382 = extractvalue { i64, i64, i64 } %101, 2
  %102 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult378, i64 %asmresult379, i32 0, i64 %asmresult380, i64 %asmresult381, i64 %asmresult382) #2, !srcloc !292
  %asmresult383 = extractvalue { i64, i64, i64 } %102, 0
  %asmresult384 = extractvalue { i64, i64, i64 } %102, 1
  %asmresult385 = extractvalue { i64, i64, i64 } %102, 2
  %arrayidx388 = getelementptr inbounds i64, i64* %r, i64 9
  store i64 %asmresult383, i64* %arrayidx388, align 8, !tbaa !27
  %103 = load i64, i64* %arrayidx125, align 8, !tbaa !27
  %104 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %103) #4, !srcloc !293
  %asmresult393 = extractvalue { i64, i64 } %104, 0
  %asmresult394 = extractvalue { i64, i64 } %104, 1
  %105 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult393, i64 %asmresult394, i32 0, i64 %asmresult384, i64 %asmresult385, i64 0) #2, !srcloc !294
  %asmresult395 = extractvalue { i64, i64, i64 } %105, 0
  %asmresult396 = extractvalue { i64, i64, i64 } %105, 1
  %asmresult397 = extractvalue { i64, i64, i64 } %105, 2
  %106 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %107 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %106, i64* nonnull elementtype(i64) %arrayidx109) #2, !srcloc !295
  %asmresult405 = extractvalue { i64, i64 } %107, 0
  %asmresult406 = extractvalue { i64, i64 } %107, 1
  %108 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult405, i64 %asmresult406, i32 0, i64 %asmresult395, i64 %asmresult396, i64 %asmresult397) #2, !srcloc !296
  %asmresult407 = extractvalue { i64, i64, i64 } %108, 0
  %asmresult408 = extractvalue { i64, i64, i64 } %108, 1
  %asmresult409 = extractvalue { i64, i64, i64 } %108, 2
  %109 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult405, i64 %asmresult406, i32 0, i64 %asmresult407, i64 %asmresult408, i64 %asmresult409) #2, !srcloc !297
  %asmresult410 = extractvalue { i64, i64, i64 } %109, 0
  %asmresult411 = extractvalue { i64, i64, i64 } %109, 1
  %asmresult412 = extractvalue { i64, i64, i64 } %109, 2
  %110 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %111 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %110, i64* nonnull elementtype(i64) %arrayidx52) #2, !srcloc !298
  %asmresult420 = extractvalue { i64, i64 } %111, 0
  %asmresult421 = extractvalue { i64, i64 } %111, 1
  %112 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult420, i64 %asmresult421, i32 0, i64 %asmresult410, i64 %asmresult411, i64 %asmresult412) #2, !srcloc !299
  %asmresult422 = extractvalue { i64, i64, i64 } %112, 0
  %asmresult423 = extractvalue { i64, i64, i64 } %112, 1
  %asmresult424 = extractvalue { i64, i64, i64 } %112, 2
  %113 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult420, i64 %asmresult421, i32 0, i64 %asmresult422, i64 %asmresult423, i64 %asmresult424) #2, !srcloc !300
  %asmresult425 = extractvalue { i64, i64, i64 } %113, 0
  %asmresult426 = extractvalue { i64, i64, i64 } %113, 1
  %asmresult427 = extractvalue { i64, i64, i64 } %113, 2
  %arrayidx430 = getelementptr inbounds i64, i64* %r, i64 10
  store i64 %asmresult425, i64* %arrayidx430, align 8, !tbaa !27
  %114 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %115 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %114, i64* nonnull elementtype(i64) %arrayidx109) #2, !srcloc !301
  %asmresult436 = extractvalue { i64, i64 } %115, 0
  %asmresult437 = extractvalue { i64, i64 } %115, 1
  %116 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult436, i64 %asmresult437, i32 0, i64 %asmresult426, i64 %asmresult427, i64 0) #2, !srcloc !302
  %asmresult438 = extractvalue { i64, i64, i64 } %116, 0
  %asmresult439 = extractvalue { i64, i64, i64 } %116, 1
  %asmresult440 = extractvalue { i64, i64, i64 } %116, 2
  %117 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult436, i64 %asmresult437, i32 0, i64 %asmresult438, i64 %asmresult439, i64 %asmresult440) #2, !srcloc !303
  %asmresult441 = extractvalue { i64, i64, i64 } %117, 0
  %asmresult442 = extractvalue { i64, i64, i64 } %117, 1
  %asmresult443 = extractvalue { i64, i64, i64 } %117, 2
  %118 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %119 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %118, i64* nonnull elementtype(i64) %arrayidx125) #2, !srcloc !304
  %asmresult451 = extractvalue { i64, i64 } %119, 0
  %asmresult452 = extractvalue { i64, i64 } %119, 1
  %120 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult451, i64 %asmresult452, i32 0, i64 %asmresult441, i64 %asmresult442, i64 %asmresult443) #2, !srcloc !305
  %asmresult453 = extractvalue { i64, i64, i64 } %120, 0
  %asmresult454 = extractvalue { i64, i64, i64 } %120, 1
  %asmresult455 = extractvalue { i64, i64, i64 } %120, 2
  %121 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult451, i64 %asmresult452, i32 0, i64 %asmresult453, i64 %asmresult454, i64 %asmresult455) #2, !srcloc !306
  %asmresult456 = extractvalue { i64, i64, i64 } %121, 0
  %asmresult457 = extractvalue { i64, i64, i64 } %121, 1
  %asmresult458 = extractvalue { i64, i64, i64 } %121, 2
  %arrayidx461 = getelementptr inbounds i64, i64* %r, i64 11
  store i64 %asmresult456, i64* %arrayidx461, align 8, !tbaa !27
  %122 = load i64, i64* %arrayidx212, align 8, !tbaa !27
  %123 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %122) #4, !srcloc !307
  %asmresult466 = extractvalue { i64, i64 } %123, 0
  %asmresult467 = extractvalue { i64, i64 } %123, 1
  %124 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult466, i64 %asmresult467, i32 0, i64 %asmresult457, i64 %asmresult458, i64 0) #2, !srcloc !308
  %asmresult468 = extractvalue { i64, i64, i64 } %124, 0
  %asmresult469 = extractvalue { i64, i64, i64 } %124, 1
  %asmresult470 = extractvalue { i64, i64, i64 } %124, 2
  %125 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %126 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %125, i64* nonnull elementtype(i64) %arrayidx125) #2, !srcloc !309
  %asmresult478 = extractvalue { i64, i64 } %126, 0
  %asmresult479 = extractvalue { i64, i64 } %126, 1
  %127 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult478, i64 %asmresult479, i32 0, i64 %asmresult468, i64 %asmresult469, i64 %asmresult470) #2, !srcloc !310
  %asmresult480 = extractvalue { i64, i64, i64 } %127, 0
  %asmresult481 = extractvalue { i64, i64, i64 } %127, 1
  %asmresult482 = extractvalue { i64, i64, i64 } %127, 2
  %128 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult478, i64 %asmresult479, i32 0, i64 %asmresult480, i64 %asmresult481, i64 %asmresult482) #2, !srcloc !311
  %asmresult483 = extractvalue { i64, i64, i64 } %128, 0
  %asmresult484 = extractvalue { i64, i64, i64 } %128, 1
  %asmresult485 = extractvalue { i64, i64, i64 } %128, 2
  %arrayidx488 = getelementptr inbounds i64, i64* %r, i64 12
  store i64 %asmresult483, i64* %arrayidx488, align 8, !tbaa !27
  %129 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %130 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %129, i64* nonnull elementtype(i64) %arrayidx212) #2, !srcloc !312
  %asmresult494 = extractvalue { i64, i64 } %130, 0
  %asmresult495 = extractvalue { i64, i64 } %130, 1
  %131 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult494, i64 %asmresult495, i32 0, i64 %asmresult484, i64 %asmresult485, i64 0) #2, !srcloc !313
  %asmresult496 = extractvalue { i64, i64, i64 } %131, 0
  %asmresult497 = extractvalue { i64, i64, i64 } %131, 1
  %asmresult498 = extractvalue { i64, i64, i64 } %131, 2
  %132 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult494, i64 %asmresult495, i32 0, i64 %asmresult496, i64 %asmresult497, i64 %asmresult498) #2, !srcloc !314
  %asmresult499 = extractvalue { i64, i64, i64 } %132, 0
  %asmresult500 = extractvalue { i64, i64, i64 } %132, 1
  %asmresult501 = extractvalue { i64, i64, i64 } %132, 2
  %arrayidx504 = getelementptr inbounds i64, i64* %r, i64 13
  store i64 %asmresult499, i64* %arrayidx504, align 8, !tbaa !27
  %133 = load i64, i64* %arrayidx228, align 8, !tbaa !27
  %134 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %133) #4, !srcloc !315
  %asmresult509 = extractvalue { i64, i64 } %134, 0
  %asmresult510 = extractvalue { i64, i64 } %134, 1
  %135 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult509, i64 %asmresult510, i32 0, i64 %asmresult500, i64 %asmresult501, i64 0) #2, !srcloc !316
  %asmresult511 = extractvalue { i64, i64, i64 } %135, 0
  %asmresult512 = extractvalue { i64, i64, i64 } %135, 1
  %arrayidx516 = getelementptr inbounds i64, i64* %r, i64 14
  store i64 %asmresult511, i64* %arrayidx516, align 8, !tbaa !27
  %arrayidx517 = getelementptr inbounds i64, i64* %r, i64 15
  store i64 %asmresult512, i64* %arrayidx517, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @bn_sqr_comba4(i64* nocapture noundef writeonly %r, i64* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* %a, align 8, !tbaa !27
  %1 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0) #4, !srcloc !317
  %asmresult = extractvalue { i64, i64 } %1, 0
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  %2 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult, i64 %asmresult1, i32 0, i64 0, i64 0, i64 0) #2, !srcloc !318
  %asmresult2 = extractvalue { i64, i64, i64 } %2, 0
  %asmresult3 = extractvalue { i64, i64, i64 } %2, 1
  %asmresult4 = extractvalue { i64, i64, i64 } %2, 2
  store i64 %asmresult2, i64* %r, align 8, !tbaa !27
  %arrayidx9 = getelementptr inbounds i64, i64* %a, i64 1
  %3 = load i64, i64* %arrayidx9, align 8, !tbaa !27
  %4 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %3, i64* nonnull elementtype(i64) %a) #2, !srcloc !319
  %asmresult11 = extractvalue { i64, i64 } %4, 0
  %asmresult12 = extractvalue { i64, i64 } %4, 1
  %5 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult11, i64 %asmresult12, i32 0, i64 %asmresult3, i64 %asmresult4, i64 0) #2, !srcloc !320
  %asmresult13 = extractvalue { i64, i64, i64 } %5, 0
  %asmresult14 = extractvalue { i64, i64, i64 } %5, 1
  %asmresult15 = extractvalue { i64, i64, i64 } %5, 2
  %6 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult11, i64 %asmresult12, i32 0, i64 %asmresult13, i64 %asmresult14, i64 %asmresult15) #2, !srcloc !321
  %asmresult16 = extractvalue { i64, i64, i64 } %6, 0
  %asmresult17 = extractvalue { i64, i64, i64 } %6, 1
  %asmresult18 = extractvalue { i64, i64, i64 } %6, 2
  %arrayidx21 = getelementptr inbounds i64, i64* %r, i64 1
  store i64 %asmresult16, i64* %arrayidx21, align 8, !tbaa !27
  %7 = load i64, i64* %arrayidx9, align 8, !tbaa !27
  %8 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %7) #4, !srcloc !322
  %asmresult26 = extractvalue { i64, i64 } %8, 0
  %asmresult27 = extractvalue { i64, i64 } %8, 1
  %9 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult26, i64 %asmresult27, i32 0, i64 %asmresult17, i64 %asmresult18, i64 0) #2, !srcloc !323
  %asmresult28 = extractvalue { i64, i64, i64 } %9, 0
  %asmresult29 = extractvalue { i64, i64, i64 } %9, 1
  %asmresult30 = extractvalue { i64, i64, i64 } %9, 2
  %arrayidx36 = getelementptr inbounds i64, i64* %a, i64 2
  %10 = load i64, i64* %arrayidx36, align 8, !tbaa !27
  %11 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %10, i64* nonnull elementtype(i64) %a) #2, !srcloc !324
  %asmresult38 = extractvalue { i64, i64 } %11, 0
  %asmresult39 = extractvalue { i64, i64 } %11, 1
  %12 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult38, i64 %asmresult39, i32 0, i64 %asmresult28, i64 %asmresult29, i64 %asmresult30) #2, !srcloc !325
  %asmresult40 = extractvalue { i64, i64, i64 } %12, 0
  %asmresult41 = extractvalue { i64, i64, i64 } %12, 1
  %asmresult42 = extractvalue { i64, i64, i64 } %12, 2
  %13 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult38, i64 %asmresult39, i32 0, i64 %asmresult40, i64 %asmresult41, i64 %asmresult42) #2, !srcloc !326
  %asmresult43 = extractvalue { i64, i64, i64 } %13, 0
  %asmresult44 = extractvalue { i64, i64, i64 } %13, 1
  %asmresult45 = extractvalue { i64, i64, i64 } %13, 2
  %arrayidx48 = getelementptr inbounds i64, i64* %r, i64 2
  store i64 %asmresult43, i64* %arrayidx48, align 8, !tbaa !27
  %arrayidx52 = getelementptr inbounds i64, i64* %a, i64 3
  %14 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %15 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %14, i64* nonnull elementtype(i64) %a) #2, !srcloc !327
  %asmresult54 = extractvalue { i64, i64 } %15, 0
  %asmresult55 = extractvalue { i64, i64 } %15, 1
  %16 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult54, i64 %asmresult55, i32 0, i64 %asmresult44, i64 %asmresult45, i64 0) #2, !srcloc !328
  %asmresult56 = extractvalue { i64, i64, i64 } %16, 0
  %asmresult57 = extractvalue { i64, i64, i64 } %16, 1
  %asmresult58 = extractvalue { i64, i64, i64 } %16, 2
  %17 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult54, i64 %asmresult55, i32 0, i64 %asmresult56, i64 %asmresult57, i64 %asmresult58) #2, !srcloc !329
  %asmresult59 = extractvalue { i64, i64, i64 } %17, 0
  %asmresult60 = extractvalue { i64, i64, i64 } %17, 1
  %asmresult61 = extractvalue { i64, i64, i64 } %17, 2
  %18 = load i64, i64* %arrayidx36, align 8, !tbaa !27
  %19 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %18, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !330
  %asmresult69 = extractvalue { i64, i64 } %19, 0
  %asmresult70 = extractvalue { i64, i64 } %19, 1
  %20 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult69, i64 %asmresult70, i32 0, i64 %asmresult59, i64 %asmresult60, i64 %asmresult61) #2, !srcloc !331
  %asmresult71 = extractvalue { i64, i64, i64 } %20, 0
  %asmresult72 = extractvalue { i64, i64, i64 } %20, 1
  %asmresult73 = extractvalue { i64, i64, i64 } %20, 2
  %21 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult69, i64 %asmresult70, i32 0, i64 %asmresult71, i64 %asmresult72, i64 %asmresult73) #2, !srcloc !332
  %asmresult74 = extractvalue { i64, i64, i64 } %21, 0
  %asmresult75 = extractvalue { i64, i64, i64 } %21, 1
  %asmresult76 = extractvalue { i64, i64, i64 } %21, 2
  %arrayidx79 = getelementptr inbounds i64, i64* %r, i64 3
  store i64 %asmresult74, i64* %arrayidx79, align 8, !tbaa !27
  %22 = load i64, i64* %arrayidx36, align 8, !tbaa !27
  %23 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %22) #4, !srcloc !333
  %asmresult84 = extractvalue { i64, i64 } %23, 0
  %asmresult85 = extractvalue { i64, i64 } %23, 1
  %24 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult84, i64 %asmresult85, i32 0, i64 %asmresult75, i64 %asmresult76, i64 0) #2, !srcloc !334
  %asmresult86 = extractvalue { i64, i64, i64 } %24, 0
  %asmresult87 = extractvalue { i64, i64, i64 } %24, 1
  %asmresult88 = extractvalue { i64, i64, i64 } %24, 2
  %25 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %26 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %25, i64* nonnull elementtype(i64) %arrayidx9) #2, !srcloc !335
  %asmresult96 = extractvalue { i64, i64 } %26, 0
  %asmresult97 = extractvalue { i64, i64 } %26, 1
  %27 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult96, i64 %asmresult97, i32 0, i64 %asmresult86, i64 %asmresult87, i64 %asmresult88) #2, !srcloc !336
  %asmresult98 = extractvalue { i64, i64, i64 } %27, 0
  %asmresult99 = extractvalue { i64, i64, i64 } %27, 1
  %asmresult100 = extractvalue { i64, i64, i64 } %27, 2
  %28 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult96, i64 %asmresult97, i32 0, i64 %asmresult98, i64 %asmresult99, i64 %asmresult100) #2, !srcloc !337
  %asmresult101 = extractvalue { i64, i64, i64 } %28, 0
  %asmresult102 = extractvalue { i64, i64, i64 } %28, 1
  %asmresult103 = extractvalue { i64, i64, i64 } %28, 2
  %arrayidx106 = getelementptr inbounds i64, i64* %r, i64 4
  store i64 %asmresult101, i64* %arrayidx106, align 8, !tbaa !27
  %29 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %30 = tail call { i64, i64 } asm "mulq $3", "={ax},={dx},{ax},*m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %29, i64* nonnull elementtype(i64) %arrayidx36) #2, !srcloc !338
  %asmresult112 = extractvalue { i64, i64 } %30, 0
  %asmresult113 = extractvalue { i64, i64 } %30, 1
  %31 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult112, i64 %asmresult113, i32 0, i64 %asmresult102, i64 %asmresult103, i64 0) #2, !srcloc !339
  %asmresult114 = extractvalue { i64, i64, i64 } %31, 0
  %asmresult115 = extractvalue { i64, i64, i64 } %31, 1
  %asmresult116 = extractvalue { i64, i64, i64 } %31, 2
  %32 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult112, i64 %asmresult113, i32 0, i64 %asmresult114, i64 %asmresult115, i64 %asmresult116) #2, !srcloc !340
  %asmresult117 = extractvalue { i64, i64, i64 } %32, 0
  %asmresult118 = extractvalue { i64, i64, i64 } %32, 1
  %asmresult119 = extractvalue { i64, i64, i64 } %32, 2
  %arrayidx122 = getelementptr inbounds i64, i64* %r, i64 5
  store i64 %asmresult117, i64* %arrayidx122, align 8, !tbaa !27
  %33 = load i64, i64* %arrayidx52, align 8, !tbaa !27
  %34 = tail call { i64, i64 } asm "mulq $2", "={ax},={dx},{ax},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %33) #4, !srcloc !341
  %asmresult127 = extractvalue { i64, i64 } %34, 0
  %asmresult128 = extractvalue { i64, i64 } %34, 1
  %35 = tail call { i64, i64, i64 } asm "addq $3,$0; adcq $4,$1; adcq $5,$2", "=r,=r,=r,r,r,imr,0,1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %asmresult127, i64 %asmresult128, i32 0, i64 %asmresult118, i64 %asmresult119, i64 0) #2, !srcloc !342
  %asmresult129 = extractvalue { i64, i64, i64 } %35, 0
  %asmresult130 = extractvalue { i64, i64, i64 } %35, 1
  %arrayidx134 = getelementptr inbounds i64, i64* %r, i64 6
  store i64 %asmresult129, i64* %arrayidx134, align 8, !tbaa !27
  %arrayidx135 = getelementptr inbounds i64, i64* %r, i64 7
  store i64 %asmresult130, i64* %arrayidx135, align 8, !tbaa !27
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{i64 2148477736}
!5 = !{i64 2148477904}
!6 = !{i64 2148478072}
!7 = !{i64 2148478390}
!8 = !{i64 2148478558}
!9 = !{i64 2148478726}
!10 = !{i64 2148479044}
!11 = !{i64 2148479212}
!12 = !{i64 2148479380}
!13 = !{i64 2148479698}
!14 = !{i64 2148479866}
!15 = !{i64 2148480034}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i64 2148480352}
!19 = !{i64 2148480520}
!20 = !{i64 2148480688}
!21 = !{i64 2148481006}
!22 = !{i64 2148481174}
!23 = !{i64 2148481342}
!24 = !{i64 2148481660}
!25 = !{i64 2148481828}
!26 = !{i64 2148481996}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{i64 2148482388}
!32 = !{i64 2148482556}
!33 = !{i64 2148482878}
!34 = !{i64 2148483046}
!35 = !{i64 2148483368}
!36 = !{i64 2148483536}
!37 = !{i64 2148483858}
!38 = !{i64 2148484026}
!39 = distinct !{!39, !17}
!40 = !{i64 2148484348}
!41 = !{i64 2148484516}
!42 = !{i64 2148484838}
!43 = !{i64 2148485006}
!44 = !{i64 2148485328}
!45 = !{i64 2148485496}
!46 = !{i64 2148485783}
!47 = !{i64 2148485941}
!48 = !{i64 2148486099}
!49 = !{i64 2148486257}
!50 = distinct !{!50, !17}
!51 = !{i64 2148486415}
!52 = !{i64 2148486573}
!53 = !{i64 2148486731}
!54 = !{i64 6234}
!55 = !{i64 6533, i64 6606, i64 6660, i64 6714, i64 6768, i64 6822, i64 6876, i64 6930, i64 6984, i64 7038}
!56 = !{i64 7440, i64 7514, i64 7568, i64 7622, i64 7676, i64 7730, i64 7784, i64 7838, i64 7892, i64 7946}
!57 = !{i64 2148487213}
!58 = !{i64 2148487381}
!59 = !{i64 2148487716}
!60 = !{i64 2148487884}
!61 = !{i64 2148488219}
!62 = !{i64 2148488387}
!63 = !{i64 2148488722}
!64 = !{i64 2148488890}
!65 = !{i64 2148489225}
!66 = !{i64 2148489393}
!67 = !{i64 2148489728}
!68 = !{i64 2148489896}
!69 = !{i64 2148490231}
!70 = !{i64 2148490399}
!71 = !{i64 2148490734}
!72 = !{i64 2148490902}
!73 = !{i64 2148491237}
!74 = !{i64 2148491405}
!75 = !{i64 2148491740}
!76 = !{i64 2148491908}
!77 = !{i64 2148492243}
!78 = !{i64 2148492411}
!79 = !{i64 2148492746}
!80 = !{i64 2148492914}
!81 = !{i64 2148493249}
!82 = !{i64 2148493417}
!83 = !{i64 2148493752}
!84 = !{i64 2148493920}
!85 = !{i64 2148494255}
!86 = !{i64 2148494423}
!87 = !{i64 2148494758}
!88 = !{i64 2148494926}
!89 = !{i64 2148495261}
!90 = !{i64 2148495429}
!91 = !{i64 2148495764}
!92 = !{i64 2148495932}
!93 = !{i64 2148496267}
!94 = !{i64 2148496435}
!95 = !{i64 2148496770}
!96 = !{i64 2148496938}
!97 = !{i64 2148497273}
!98 = !{i64 2148497441}
!99 = !{i64 2148497776}
!100 = !{i64 2148497944}
!101 = !{i64 2148498279}
!102 = !{i64 2148498447}
!103 = !{i64 2148498782}
!104 = !{i64 2148498950}
!105 = !{i64 2148499285}
!106 = !{i64 2148499453}
!107 = !{i64 2148499788}
!108 = !{i64 2148499956}
!109 = !{i64 2148500291}
!110 = !{i64 2148500459}
!111 = !{i64 2148500794}
!112 = !{i64 2148500962}
!113 = !{i64 2148501297}
!114 = !{i64 2148501465}
!115 = !{i64 2148501800}
!116 = !{i64 2148501968}
!117 = !{i64 2148502303}
!118 = !{i64 2148502471}
!119 = !{i64 2148502806}
!120 = !{i64 2148502974}
!121 = !{i64 2148503309}
!122 = !{i64 2148503477}
!123 = !{i64 2148503812}
!124 = !{i64 2148503980}
!125 = !{i64 2148504315}
!126 = !{i64 2148504483}
!127 = !{i64 2148504818}
!128 = !{i64 2148504986}
!129 = !{i64 2148505321}
!130 = !{i64 2148505489}
!131 = !{i64 2148505824}
!132 = !{i64 2148505992}
!133 = !{i64 2148506327}
!134 = !{i64 2148506495}
!135 = !{i64 2148506830}
!136 = !{i64 2148506998}
!137 = !{i64 2148507333}
!138 = !{i64 2148507501}
!139 = !{i64 2148507836}
!140 = !{i64 2148508004}
!141 = !{i64 2148508339}
!142 = !{i64 2148508507}
!143 = !{i64 2148508842}
!144 = !{i64 2148509010}
!145 = !{i64 2148509345}
!146 = !{i64 2148509513}
!147 = !{i64 2148509848}
!148 = !{i64 2148510016}
!149 = !{i64 2148510351}
!150 = !{i64 2148510519}
!151 = !{i64 2148510854}
!152 = !{i64 2148511022}
!153 = !{i64 2148511357}
!154 = !{i64 2148511525}
!155 = !{i64 2148511860}
!156 = !{i64 2148512028}
!157 = !{i64 2148512363}
!158 = !{i64 2148512531}
!159 = !{i64 2148512866}
!160 = !{i64 2148513034}
!161 = !{i64 2148513369}
!162 = !{i64 2148513537}
!163 = !{i64 2148513872}
!164 = !{i64 2148514040}
!165 = !{i64 2148514375}
!166 = !{i64 2148514543}
!167 = !{i64 2148514878}
!168 = !{i64 2148515046}
!169 = !{i64 2148515381}
!170 = !{i64 2148515549}
!171 = !{i64 2148515884}
!172 = !{i64 2148516052}
!173 = !{i64 2148516387}
!174 = !{i64 2148516555}
!175 = !{i64 2148516890}
!176 = !{i64 2148517058}
!177 = !{i64 2148517393}
!178 = !{i64 2148517561}
!179 = !{i64 2148517896}
!180 = !{i64 2148518064}
!181 = !{i64 2148518399}
!182 = !{i64 2148518567}
!183 = !{i64 2148518902}
!184 = !{i64 2148519070}
!185 = !{i64 2148519461}
!186 = !{i64 2148519629}
!187 = !{i64 2148519964}
!188 = !{i64 2148520132}
!189 = !{i64 2148520467}
!190 = !{i64 2148520635}
!191 = !{i64 2148520970}
!192 = !{i64 2148521138}
!193 = !{i64 2148521473}
!194 = !{i64 2148521641}
!195 = !{i64 2148521976}
!196 = !{i64 2148522144}
!197 = !{i64 2148522479}
!198 = !{i64 2148522647}
!199 = !{i64 2148522982}
!200 = !{i64 2148523150}
!201 = !{i64 2148523485}
!202 = !{i64 2148523653}
!203 = !{i64 2148523988}
!204 = !{i64 2148524156}
!205 = !{i64 2148524491}
!206 = !{i64 2148524659}
!207 = !{i64 2148524994}
!208 = !{i64 2148525162}
!209 = !{i64 2148525497}
!210 = !{i64 2148525665}
!211 = !{i64 2148526000}
!212 = !{i64 2148526168}
!213 = !{i64 2148526503}
!214 = !{i64 2148526671}
!215 = !{i64 2148527006}
!216 = !{i64 2148527174}
!217 = !{i64 2148527551}
!218 = !{i64 2148527719}
!219 = !{i64 2148528099}
!220 = !{i64 2148528267}
!221 = !{i64 2148528499}
!222 = !{i64 2148528855}
!223 = !{i64 2148529023}
!224 = !{i64 2148529403}
!225 = !{i64 2148529571}
!226 = !{i64 2148529803}
!227 = !{i64 2148530210}
!228 = !{i64 2148530378}
!229 = !{i64 2148530610}
!230 = !{i64 2148531017}
!231 = !{i64 2148531185}
!232 = !{i64 2148531417}
!233 = !{i64 2148531773}
!234 = !{i64 2148531941}
!235 = !{i64 2148532321}
!236 = !{i64 2148532489}
!237 = !{i64 2148532721}
!238 = !{i64 2148533128}
!239 = !{i64 2148533296}
!240 = !{i64 2148533528}
!241 = !{i64 2148533935}
!242 = !{i64 2148534103}
!243 = !{i64 2148534335}
!244 = !{i64 2148534742}
!245 = !{i64 2148534910}
!246 = !{i64 2148535142}
!247 = !{i64 2148535549}
!248 = !{i64 2148535717}
!249 = !{i64 2148535949}
!250 = !{i64 2148536305}
!251 = !{i64 2148536473}
!252 = !{i64 2148536853}
!253 = !{i64 2148537021}
!254 = !{i64 2148537253}
!255 = !{i64 2148537660}
!256 = !{i64 2148537828}
!257 = !{i64 2148538060}
!258 = !{i64 2148538467}
!259 = !{i64 2148538635}
!260 = !{i64 2148538867}
!261 = !{i64 2148539274}
!262 = !{i64 2148539442}
!263 = !{i64 2148539674}
!264 = !{i64 2148540081}
!265 = !{i64 2148540249}
!266 = !{i64 2148540481}
!267 = !{i64 2148540888}
!268 = !{i64 2148541056}
!269 = !{i64 2148541288}
!270 = !{i64 2148541695}
!271 = !{i64 2148541863}
!272 = !{i64 2148542095}
!273 = !{i64 2148542451}
!274 = !{i64 2148542619}
!275 = !{i64 2148542999}
!276 = !{i64 2148543167}
!277 = !{i64 2148543399}
!278 = !{i64 2148543806}
!279 = !{i64 2148543974}
!280 = !{i64 2148544206}
!281 = !{i64 2148544613}
!282 = !{i64 2148544781}
!283 = !{i64 2148545013}
!284 = !{i64 2148545420}
!285 = !{i64 2148545588}
!286 = !{i64 2148545820}
!287 = !{i64 2148546227}
!288 = !{i64 2148546395}
!289 = !{i64 2148546627}
!290 = !{i64 2148547034}
!291 = !{i64 2148547202}
!292 = !{i64 2148547434}
!293 = !{i64 2148547790}
!294 = !{i64 2148547958}
!295 = !{i64 2148548338}
!296 = !{i64 2148548506}
!297 = !{i64 2148548738}
!298 = !{i64 2148549145}
!299 = !{i64 2148549313}
!300 = !{i64 2148549545}
!301 = !{i64 2148549952}
!302 = !{i64 2148550120}
!303 = !{i64 2148550352}
!304 = !{i64 2148550759}
!305 = !{i64 2148550927}
!306 = !{i64 2148551159}
!307 = !{i64 2148551515}
!308 = !{i64 2148551683}
!309 = !{i64 2148552063}
!310 = !{i64 2148552231}
!311 = !{i64 2148552463}
!312 = !{i64 2148552870}
!313 = !{i64 2148553038}
!314 = !{i64 2148553270}
!315 = !{i64 2148553626}
!316 = !{i64 2148553794}
!317 = !{i64 2148554165}
!318 = !{i64 2148554333}
!319 = !{i64 2148554713}
!320 = !{i64 2148554881}
!321 = !{i64 2148555113}
!322 = !{i64 2148555469}
!323 = !{i64 2148555637}
!324 = !{i64 2148556017}
!325 = !{i64 2148556185}
!326 = !{i64 2148556417}
!327 = !{i64 2148556824}
!328 = !{i64 2148556992}
!329 = !{i64 2148557224}
!330 = !{i64 2148557631}
!331 = !{i64 2148557799}
!332 = !{i64 2148558031}
!333 = !{i64 2148558387}
!334 = !{i64 2148558555}
!335 = !{i64 2148558935}
!336 = !{i64 2148559103}
!337 = !{i64 2148559335}
!338 = !{i64 2148559742}
!339 = !{i64 2148559910}
!340 = !{i64 2148560142}
!341 = !{i64 2148560498}
!342 = !{i64 2148560666}
