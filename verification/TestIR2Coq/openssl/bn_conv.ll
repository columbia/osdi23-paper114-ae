; ModuleID = 'crypto/bn/bn_conv.c'
source_filename = "crypto/bn/bn_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_conv.c\00", align 1
@__func__.BN_bn2hex = private unnamed_addr constant [10 x i8] c"BN_bn2hex\00", align 1
@Hex = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@__func__.BN_bn2dec = private unnamed_addr constant [10 x i8] c"BN_bn2dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%019lu\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @BN_bn2hex(%struct.bignum_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 24) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %mul2 = shl nsw i32 %0, 4
  %add = or i32 %mul2, 2
  %conv = sext i32 %add to i64
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 25) #3
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BN_bn2hex, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %1 = load i32, i32* %neg, align 8, !tbaa !10
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  %incdec.ptr = getelementptr inbounds i8, i8* %call3, i64 1
  store i8 45, i8* %call3, align 1, !tbaa !11
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %p.0 = phi i8* [ %incdec.ptr, %if.then8 ], [ %call3, %if.end6 ]
  %2 = load i32, i32* %top, align 8, !tbaa !4
  %cmp1164 = icmp sgt i32 %2, 0
  br i1 %cmp1164, label %for.cond13.preheader.lr.ph, label %for.end33

for.cond13.preheader.lr.ph:                       ; preds = %if.end9
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %3 = zext i32 %2 to i64
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond13.preheader.lr.ph, %for.inc.7
  %indvars.iv = phi i64 [ %3, %for.cond13.preheader.lr.ph ], [ %indvars.iv.next, %for.inc.7 ]
  %p.166 = phi i8* [ %p.0, %for.cond13.preheader.lr.ph ], [ %p.3.7, %for.inc.7 ]
  %z.065 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %z.2.7, %for.inc.7 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %4 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %indvars.iv.next
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %tobool18 = icmp ne i32 %z.065, 0
  %cmp19 = icmp ugt i64 %5, 72057594037927935
  %or.cond = select i1 %tobool18, i1 true, i1 %cmp19
  br i1 %or.cond, label %for.inc.thread, label %for.inc

for.inc.thread:                                   ; preds = %for.cond13.preheader
  %shr = lshr i64 %5, 56
  %6 = lshr i64 %5, 60
  %arrayidx24 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx24, align 1, !tbaa !11
  %incdec.ptr25 = getelementptr inbounds i8, i8* %p.166, i64 1
  store i8 %7, i8* %p.166, align 1, !tbaa !11
  %and26 = and i64 %shr, 15
  %arrayidx28 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26
  %8 = load i8, i8* %arrayidx28, align 1, !tbaa !11
  %incdec.ptr29 = getelementptr inbounds i8, i8* %p.166, i64 2
  store i8 %8, i8* %incdec.ptr25, align 1, !tbaa !11
  %.pre = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.1.phi.trans.insert = getelementptr inbounds i64, i64* %.pre, i64 %indvars.iv.next
  %.pre70 = load i64, i64* %arrayidx.1.phi.trans.insert, align 8, !tbaa !13
  %shr.184 = lshr i64 %.pre70, 48
  %conv17.185 = and i64 %shr.184, 255
  br label %if.then21.1

for.inc:                                          ; preds = %for.cond13.preheader
  %shr.1 = lshr i64 %5, 48
  %cmp19.1.not = icmp ult i64 %5, 281474976710656
  br i1 %cmp19.1.not, label %for.inc.1, label %if.then21.1

if.then21.1:                                      ; preds = %for.inc.thread, %for.inc
  %conv17.190 = phi i64 [ %conv17.185, %for.inc.thread ], [ %shr.1, %for.inc ]
  %shr.189 = phi i64 [ %shr.184, %for.inc.thread ], [ %shr.1, %for.inc ]
  %p.388 = phi i8* [ %incdec.ptr29, %for.inc.thread ], [ %p.166, %for.inc ]
  %9 = lshr i64 %conv17.190, 4
  %arrayidx24.1 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx24.1, align 1, !tbaa !11
  %incdec.ptr25.1 = getelementptr inbounds i8, i8* %p.388, i64 1
  store i8 %10, i8* %p.388, align 1, !tbaa !11
  %and26.1 = and i64 %shr.189, 15
  %arrayidx28.1 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.1
  %11 = load i8, i8* %arrayidx28.1, align 1, !tbaa !11
  %incdec.ptr29.1 = getelementptr inbounds i8, i8* %p.388, i64 2
  store i8 %11, i8* %incdec.ptr25.1, align 1, !tbaa !11
  %.pre71 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.2.phi.trans.insert = getelementptr inbounds i64, i64* %.pre71, i64 %indvars.iv.next
  %.pre72 = load i64, i64* %arrayidx.2.phi.trans.insert, align 8, !tbaa !13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then21.1, %for.inc
  %or.cond.191 = phi i1 [ true, %if.then21.1 ], [ false, %for.inc ]
  %12 = phi i64 [ %.pre72, %if.then21.1 ], [ %5, %for.inc ]
  %p.3.1 = phi i8* [ %incdec.ptr29.1, %if.then21.1 ], [ %p.166, %for.inc ]
  %shr.2 = lshr i64 %12, 40
  %13 = trunc i64 %shr.2 to i32
  %conv17.2 = and i32 %13, 255
  %cmp19.2 = icmp ne i32 %conv17.2, 0
  %or.cond.2 = select i1 %or.cond.191, i1 true, i1 %cmp19.2
  br i1 %or.cond.2, label %for.inc.2.thread, label %for.inc.2

for.inc.2.thread:                                 ; preds = %for.inc.1
  %14 = lshr i32 %conv17.2, 4
  %15 = zext i32 %14 to i64
  %arrayidx24.2 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %15
  %16 = load i8, i8* %arrayidx24.2, align 1, !tbaa !11
  %incdec.ptr25.2 = getelementptr inbounds i8, i8* %p.3.1, i64 1
  store i8 %16, i8* %p.3.1, align 1, !tbaa !11
  %and26.2 = and i64 %shr.2, 15
  %arrayidx28.2 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.2
  %17 = load i8, i8* %arrayidx28.2, align 1, !tbaa !11
  %incdec.ptr29.2 = getelementptr inbounds i8, i8* %p.3.1, i64 2
  store i8 %17, i8* %incdec.ptr25.2, align 1, !tbaa !11
  %.pre73 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.3.phi.trans.insert = getelementptr inbounds i64, i64* %.pre73, i64 %indvars.iv.next
  %.pre74 = load i64, i64* %arrayidx.3.phi.trans.insert, align 8, !tbaa !13
  %shr.394 = lshr i64 %.pre74, 32
  %18 = trunc i64 %shr.394 to i32
  %conv17.395 = and i32 %18, 255
  br label %if.then21.3

for.inc.2:                                        ; preds = %for.inc.1
  %shr.3 = lshr i64 %12, 32
  %19 = trunc i64 %shr.3 to i32
  %conv17.3 = and i32 %19, 255
  %cmp19.3.not = icmp eq i32 %conv17.3, 0
  br i1 %cmp19.3.not, label %for.inc.3, label %if.then21.3

if.then21.3:                                      ; preds = %for.inc.2.thread, %for.inc.2
  %conv17.3100 = phi i32 [ %conv17.395, %for.inc.2.thread ], [ %conv17.3, %for.inc.2 ]
  %shr.399 = phi i64 [ %shr.394, %for.inc.2.thread ], [ %shr.3, %for.inc.2 ]
  %p.3.298 = phi i8* [ %incdec.ptr29.2, %for.inc.2.thread ], [ %p.3.1, %for.inc.2 ]
  %20 = lshr i32 %conv17.3100, 4
  %21 = zext i32 %20 to i64
  %arrayidx24.3 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %21
  %22 = load i8, i8* %arrayidx24.3, align 1, !tbaa !11
  %incdec.ptr25.3 = getelementptr inbounds i8, i8* %p.3.298, i64 1
  store i8 %22, i8* %p.3.298, align 1, !tbaa !11
  %and26.3 = and i64 %shr.399, 15
  %arrayidx28.3 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.3
  %23 = load i8, i8* %arrayidx28.3, align 1, !tbaa !11
  %incdec.ptr29.3 = getelementptr inbounds i8, i8* %p.3.298, i64 2
  store i8 %23, i8* %incdec.ptr25.3, align 1, !tbaa !11
  %.pre75 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.4.phi.trans.insert = getelementptr inbounds i64, i64* %.pre75, i64 %indvars.iv.next
  %.pre76 = load i64, i64* %arrayidx.4.phi.trans.insert, align 8, !tbaa !13
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then21.3, %for.inc.2
  %or.cond.3101 = phi i1 [ true, %if.then21.3 ], [ false, %for.inc.2 ]
  %24 = phi i64 [ %.pre76, %if.then21.3 ], [ %12, %for.inc.2 ]
  %p.3.3 = phi i8* [ %incdec.ptr29.3, %if.then21.3 ], [ %p.3.1, %for.inc.2 ]
  %shr.4 = lshr i64 %24, 24
  %25 = trunc i64 %shr.4 to i32
  %conv17.4 = and i32 %25, 255
  %cmp19.4 = icmp ne i32 %conv17.4, 0
  %or.cond.4 = select i1 %or.cond.3101, i1 true, i1 %cmp19.4
  br i1 %or.cond.4, label %for.inc.4.thread, label %for.inc.4

for.inc.4.thread:                                 ; preds = %for.inc.3
  %26 = lshr i32 %conv17.4, 4
  %27 = zext i32 %26 to i64
  %arrayidx24.4 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %27
  %28 = load i8, i8* %arrayidx24.4, align 1, !tbaa !11
  %incdec.ptr25.4 = getelementptr inbounds i8, i8* %p.3.3, i64 1
  store i8 %28, i8* %p.3.3, align 1, !tbaa !11
  %and26.4 = and i64 %shr.4, 15
  %arrayidx28.4 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.4
  %29 = load i8, i8* %arrayidx28.4, align 1, !tbaa !11
  %incdec.ptr29.4 = getelementptr inbounds i8, i8* %p.3.3, i64 2
  store i8 %29, i8* %incdec.ptr25.4, align 1, !tbaa !11
  %.pre77 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.5.phi.trans.insert = getelementptr inbounds i64, i64* %.pre77, i64 %indvars.iv.next
  %.pre78 = load i64, i64* %arrayidx.5.phi.trans.insert, align 8, !tbaa !13
  %shr.5104 = lshr i64 %.pre78, 16
  %30 = trunc i64 %shr.5104 to i32
  %conv17.5105 = and i32 %30, 255
  br label %if.then21.5

for.inc.4:                                        ; preds = %for.inc.3
  %shr.5 = lshr i64 %24, 16
  %31 = trunc i64 %shr.5 to i32
  %conv17.5 = and i32 %31, 255
  %cmp19.5.not = icmp eq i32 %conv17.5, 0
  br i1 %cmp19.5.not, label %for.inc.5, label %if.then21.5

if.then21.5:                                      ; preds = %for.inc.4.thread, %for.inc.4
  %conv17.5110 = phi i32 [ %conv17.5105, %for.inc.4.thread ], [ %conv17.5, %for.inc.4 ]
  %shr.5109 = phi i64 [ %shr.5104, %for.inc.4.thread ], [ %shr.5, %for.inc.4 ]
  %p.3.4108 = phi i8* [ %incdec.ptr29.4, %for.inc.4.thread ], [ %p.3.3, %for.inc.4 ]
  %32 = lshr i32 %conv17.5110, 4
  %33 = zext i32 %32 to i64
  %arrayidx24.5 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %33
  %34 = load i8, i8* %arrayidx24.5, align 1, !tbaa !11
  %incdec.ptr25.5 = getelementptr inbounds i8, i8* %p.3.4108, i64 1
  store i8 %34, i8* %p.3.4108, align 1, !tbaa !11
  %and26.5 = and i64 %shr.5109, 15
  %arrayidx28.5 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.5
  %35 = load i8, i8* %arrayidx28.5, align 1, !tbaa !11
  %incdec.ptr29.5 = getelementptr inbounds i8, i8* %p.3.4108, i64 2
  store i8 %35, i8* %incdec.ptr25.5, align 1, !tbaa !11
  %.pre79 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.6.phi.trans.insert = getelementptr inbounds i64, i64* %.pre79, i64 %indvars.iv.next
  %.pre80 = load i64, i64* %arrayidx.6.phi.trans.insert, align 8, !tbaa !13
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then21.5, %for.inc.4
  %or.cond.5111 = phi i1 [ true, %if.then21.5 ], [ false, %for.inc.4 ]
  %36 = phi i64 [ %.pre80, %if.then21.5 ], [ %24, %for.inc.4 ]
  %p.3.5 = phi i8* [ %incdec.ptr29.5, %if.then21.5 ], [ %p.3.3, %for.inc.4 ]
  %shr.6 = lshr i64 %36, 8
  %37 = trunc i64 %shr.6 to i32
  %conv17.6 = and i32 %37, 255
  %cmp19.6 = icmp ne i32 %conv17.6, 0
  %or.cond.6 = select i1 %or.cond.5111, i1 true, i1 %cmp19.6
  br i1 %or.cond.6, label %for.inc.6.thread, label %for.inc.6

for.inc.6.thread:                                 ; preds = %for.inc.5
  %38 = lshr i32 %conv17.6, 4
  %39 = zext i32 %38 to i64
  %arrayidx24.6 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %39
  %40 = load i8, i8* %arrayidx24.6, align 1, !tbaa !11
  %incdec.ptr25.6 = getelementptr inbounds i8, i8* %p.3.5, i64 1
  store i8 %40, i8* %p.3.5, align 1, !tbaa !11
  %and26.6 = and i64 %shr.6, 15
  %arrayidx28.6 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.6
  %41 = load i8, i8* %arrayidx28.6, align 1, !tbaa !11
  %incdec.ptr29.6 = getelementptr inbounds i8, i8* %p.3.5, i64 2
  store i8 %41, i8* %incdec.ptr25.6, align 1, !tbaa !11
  %.pre81 = load i64*, i64** %d, align 8, !tbaa !12
  %arrayidx.7.phi.trans.insert = getelementptr inbounds i64, i64* %.pre81, i64 %indvars.iv.next
  %.pre82 = load i64, i64* %arrayidx.7.phi.trans.insert, align 8, !tbaa !13
  %42 = trunc i64 %.pre82 to i32
  %conv17.7114 = and i32 %42, 255
  br label %if.then21.7

for.inc.6:                                        ; preds = %for.inc.5
  %43 = trunc i64 %36 to i32
  %conv17.7 = and i32 %43, 255
  %cmp19.7.not = icmp eq i32 %conv17.7, 0
  br i1 %cmp19.7.not, label %for.inc.7, label %if.then21.7

if.then21.7:                                      ; preds = %for.inc.6.thread, %for.inc.6
  %conv17.7118 = phi i32 [ %conv17.7114, %for.inc.6.thread ], [ %conv17.7, %for.inc.6 ]
  %p.3.6117 = phi i8* [ %incdec.ptr29.6, %for.inc.6.thread ], [ %p.3.5, %for.inc.6 ]
  %44 = phi i64 [ %.pre82, %for.inc.6.thread ], [ %36, %for.inc.6 ]
  %45 = lshr i32 %conv17.7118, 4
  %46 = zext i32 %45 to i64
  %arrayidx24.7 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %46
  %47 = load i8, i8* %arrayidx24.7, align 1, !tbaa !11
  %incdec.ptr25.7 = getelementptr inbounds i8, i8* %p.3.6117, i64 1
  store i8 %47, i8* %p.3.6117, align 1, !tbaa !11
  %and26.7 = and i64 %44, 15
  %arrayidx28.7 = getelementptr inbounds [17 x i8], [17 x i8]* @Hex, i64 0, i64 %and26.7
  %48 = load i8, i8* %arrayidx28.7, align 1, !tbaa !11
  %incdec.ptr29.7 = getelementptr inbounds i8, i8* %p.3.6117, i64 2
  store i8 %48, i8* %incdec.ptr25.7, align 1, !tbaa !11
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then21.7, %for.inc.6
  %z.2.7 = phi i32 [ 1, %if.then21.7 ], [ 0, %for.inc.6 ]
  %p.3.7 = phi i8* [ %incdec.ptr29.7, %if.then21.7 ], [ %p.3.5, %for.inc.6 ]
  %cmp11 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp11, label %for.cond13.preheader, label %for.end33, !llvm.loop !15

for.end33:                                        ; preds = %for.inc.7, %if.end9
  %p.1.lcssa = phi i8* [ %p.0, %if.end9 ], [ %p.3.7, %for.inc.7 ]
  store i8 0, i8* %p.1.lcssa, align 1, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.end33, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ %call3, %for.end33 ], [ null, %if.then5 ]
  ret i8* %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @BN_bn2dec(%struct.bignum_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %a) #3
  %mul = mul nsw i32 %call, 3
  %div = sdiv i32 %mul, 10
  %div1 = sdiv i32 %mul, 1000
  %add = add nsw i32 %div, %div1
  %add3 = add nsw i32 %add, 2
  %add4 = add nsw i32 %add, 5
  %div5 = sdiv i32 %add3, 19
  %add6 = add nsw i32 %div5, 1
  %conv = sext i32 %add6 to i64
  %mul7 = shl nsw i64 %conv, 3
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %mul7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71) #3
  %0 = bitcast i8* %call8 to i64*
  %conv9 = sext i32 %add4 to i64
  %call10 = tail call i8* @CRYPTO_malloc(i64 noundef %conv9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72) #3
  %cmp = icmp eq i8* %call10, null
  %cmp12 = icmp eq i8* %call8, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BN_bn2dec, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #3
  tail call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef null) #3
  br label %if.end71

if.end:                                           ; preds = %entry
  %call14 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %a) #3
  %cmp15 = icmp eq %struct.bignum_st* %call14, null
  br i1 %cmp15, label %if.end71.critedge134, label %if.end18

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call14) #3
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %incdec.ptr = getelementptr inbounds i8, i8* %call10, i64 1
  store i8 48, i8* %call10, align 1, !tbaa !11
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !11
  br label %err

if.else:                                          ; preds = %if.end18
  %call22 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %call14) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.else
  %incdec.ptr25 = getelementptr inbounds i8, i8* %call10, i64 1
  store i8 45, i8* %call10, align 1, !tbaa !11
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.else
  %p.0 = phi i8* [ %incdec.ptr25, %if.then24 ], [ %call10, %if.else ]
  %call27140 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call14) #3
  %tobool28.not141 = icmp eq i32 %call27140, 0
  br i1 %tobool28.not141, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end26
  %sub.ptr.rhs.cast = ptrtoint i8* %call8 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end38
  %lp.0142 = phi i64* [ %0, %while.body.lr.ph ], [ %incdec.ptr39, %if.end38 ]
  %sub.ptr.lhs.cast = ptrtoint i64* %lp.0142 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  %cmp30.not = icmp slt i64 %sub.ptr.div, %conv
  br i1 %cmp30.not, label %if.end33, label %if.end71.critedge133

if.end33:                                         ; preds = %while.body
  %call34 = tail call i64 @BN_div_word(%struct.bignum_st* noundef nonnull %call14, i64 noundef -8446744073709551616) #3
  store i64 %call34, i64* %lp.0142, align 8, !tbaa !13
  %cmp35 = icmp eq i64 %call34, -1
  br i1 %cmp35, label %if.end71.critedge132, label %if.end38

if.end38:                                         ; preds = %if.end33
  %incdec.ptr39 = getelementptr inbounds i64, i64* %lp.0142, i64 1
  %call27 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call14) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %while.body, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %if.end38, %if.end26
  %lp.0.lcssa = phi i64* [ %0, %if.end26 ], [ %incdec.ptr39, %if.end38 ]
  %incdec.ptr40 = getelementptr inbounds i64, i64* %lp.0.lcssa, i64 -1
  %sub.ptr.lhs.cast42 = ptrtoint i8* %p.0 to i64
  %sub.ptr.rhs.cast43 = ptrtoint i8* %call10 to i64
  %sub.ptr.sub44.neg = add i64 %conv9, %sub.ptr.rhs.cast43
  %sub = sub i64 %sub.ptr.sub44.neg, %sub.ptr.lhs.cast42
  %1 = load i64, i64* %incdec.ptr40, align 8, !tbaa !13
  %call45 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %p.0, i64 noundef %sub, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 noundef %1) #3
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end71.critedge131, label %if.end49

if.end49:                                         ; preds = %while.end
  %cmp51.not143 = icmp eq i64* %incdec.ptr40, %0
  br i1 %cmp51.not143, label %err, label %while.body53.lr.ph

while.body53.lr.ph:                               ; preds = %if.end49
  %idx.ext136 = zext i32 %call45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 %idx.ext136
  br label %while.body53

while.body53:                                     ; preds = %while.body53.lr.ph, %if.end64
  %lp.1145 = phi i64* [ %incdec.ptr40, %while.body53.lr.ph ], [ %incdec.ptr54, %if.end64 ]
  %p.1144 = phi i8* [ %add.ptr, %while.body53.lr.ph ], [ %add.ptr66, %if.end64 ]
  %incdec.ptr54 = getelementptr inbounds i64, i64* %lp.1145, i64 -1
  %sub.ptr.lhs.cast56 = ptrtoint i8* %p.1144 to i64
  %sub59 = sub i64 %sub.ptr.sub44.neg, %sub.ptr.lhs.cast56
  %2 = load i64, i64* %incdec.ptr54, align 8, !tbaa !13
  %call60 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %p.1144, i64 noundef %sub59, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 noundef %2) #3
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end71.critedge, label %if.end64

if.end64:                                         ; preds = %while.body53
  %idx.ext65137 = zext i32 %call60 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %p.1144, i64 %idx.ext65137
  %cmp51.not = icmp eq i64* %incdec.ptr54, %0
  br i1 %cmp51.not, label %err, label %while.body53, !llvm.loop !18

err:                                              ; preds = %if.end64, %if.end49, %if.then20
  tail call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call14) #3
  br label %cleanup

if.end71.critedge:                                ; preds = %while.body53
  tail call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call14) #3
  br label %if.end71

if.end71.critedge131:                             ; preds = %while.end
  tail call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call14) #3
  br label %if.end71

if.end71.critedge132:                             ; preds = %if.end33
  tail call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call14) #3
  br label %if.end71

if.end71.critedge133:                             ; preds = %while.body
  tail call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call14) #3
  br label %if.end71

if.end71.critedge134:                             ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117) #3
  tail call void @BN_free(%struct.bignum_st* noundef null) #3
  br label %if.end71

if.end71:                                         ; preds = %if.then, %if.end71.critedge134, %if.end71.critedge133, %if.end71.critedge132, %if.end71.critedge131, %if.end71.critedge
  tail call void @CRYPTO_free(i8* noundef %call10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 121) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %err
  %retval.0 = phi i8* [ %call10, %err ], [ null, %if.end71 ]
  ret i8* %retval.0
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i64 @BN_div_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_hex2bn(%struct.bignum_st** noundef %bn, i8* noundef readonly %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %a, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %a, align 1, !tbaa !11
  switch i8 %0, label %if.end7 [
    i8 0, label %cleanup
    i8 45, label %if.then6
  ]

if.then6:                                         ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8, i8* %a, i64 1
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %if.then6
  %neg.0 = phi i32 [ 1, %if.then6 ], [ 0, %lor.lhs.false ]
  %a.addr.0 = phi i8* [ %incdec.ptr, %if.then6 ], [ %a, %lor.lhs.false ]
  br label %land.rhs

land.rhs:                                         ; preds = %if.end7, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end7 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8, i8* %a.addr.0, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv10 = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv10, i32 noundef 16) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 536870912
  br i1 %exitcond.not, label %err, label %land.rhs, !llvm.loop !19

for.end:                                          ; preds = %land.rhs
  %2 = trunc i64 %indvars.iv to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %err, label %if.end17

if.end17:                                         ; preds = %for.end
  %add = add nuw nsw i32 %neg.0, %2
  %cmp18 = icmp eq %struct.bignum_st** %bn, null
  br i1 %cmp18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end17
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !20
  %cmp22 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  %call25 = tail call %struct.bignum_st* @BN_new() #3
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %cleanup, label %if.end30

if.else:                                          ; preds = %if.end21
  tail call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %4) #3
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.else
  %ret.0 = phi %struct.bignum_st* [ %call25, %if.then24 ], [ %4, %if.else ]
  %mul = shl nuw nsw i32 %2, 2
  %call31 = tail call fastcc %struct.bignum_st* @bn_expand(%struct.bignum_st* noundef nonnull %ret.0, i32 noundef %mul) #4
  %cmp32 = icmp eq %struct.bignum_st* %call31, null
  br i1 %cmp32, label %err, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end30
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.0, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then53
  %indvars.iv136 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next137, %if.then53 ]
  %indvars.iv134 = phi i64 [ %indvars.iv, %while.body.lr.ph ], [ %indvars.iv.next135, %if.then53 ]
  %5 = trunc i64 %indvars.iv134 to i32
  %umin = call i32 @llvm.umin.i32(i32 %5, i32 16)
  %6 = zext i32 %umin to i64
  br label %for.cond40

for.cond40:                                       ; preds = %while.body, %for.cond40
  %indvars.iv130 = phi i64 [ %6, %while.body ], [ %indvars.iv.next131, %for.cond40 ]
  %l.0 = phi i64 [ 0, %while.body ], [ %or, %for.cond40 ]
  %7 = sub nsw i64 %indvars.iv134, %indvars.iv130
  %arrayidx42 = getelementptr inbounds i8, i8* %a.addr.0, i64 %7
  %8 = load i8, i8* %arrayidx42, align 1, !tbaa !11
  %call45 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %8) #3
  %9 = icmp sgt i32 %call45, 0
  %spec.store.select = select i1 %9, i32 %call45, i32 0
  %shl = shl i64 %l.0, 4
  %conv50 = zext i32 %spec.store.select to i64
  %or = or i64 %shl, %conv50
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %10 = and i64 %indvars.iv130, 4294967294
  %cmp51 = icmp eq i64 %10, 0
  br i1 %cmp51, label %if.then53, label %for.cond40

if.then53:                                        ; preds = %for.cond40
  %11 = load i64*, i64** %d, align 8, !tbaa !12
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %arrayidx56 = getelementptr inbounds i64, i64* %11, i64 %indvars.iv136
  store i64 %or, i64* %arrayidx56, align 8, !tbaa !13
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -16
  %cmp36 = icmp sgt i64 %indvars.iv134, 16
  br i1 %cmp36, label %while.body, label %while.end, !llvm.loop !21

while.end:                                        ; preds = %if.then53
  %12 = trunc i64 %indvars.iv.next137 to i32
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.0, i64 0, i32 1
  store i32 %12, i32* %top, align 8, !tbaa !4
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %ret.0) #3
  store %struct.bignum_st* %ret.0, %struct.bignum_st** %bn, align 8, !tbaa !20
  %13 = load i32, i32* %top, align 8, !tbaa !4
  %cmp61.not = icmp eq i32 %13, 0
  br i1 %cmp61.not, label %cleanup, label %if.then63

if.then63:                                        ; preds = %while.end
  %neg64 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.0, i64 0, i32 3
  store i32 %neg.0, i32* %neg64, align 8, !tbaa !10
  br label %cleanup

err:                                              ; preds = %for.inc, %if.end30, %for.end
  %ret.1 = phi %struct.bignum_st* [ null, %for.end ], [ %ret.0, %if.end30 ], [ null, %for.inc ]
  %14 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !20
  %cmp66 = icmp eq %struct.bignum_st* %14, null
  br i1 %cmp66, label %if.then68, label %cleanup

if.then68:                                        ; preds = %err
  tail call void @BN_free(%struct.bignum_st* noundef %ret.1) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then68, %while.end, %if.then63, %if.then24, %if.end17, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add, %if.end17 ], [ 0, %if.then24 ], [ %add, %if.then63 ], [ %add, %while.end ], [ 0, %if.then68 ], [ 0, %err ]
  ret i32 %retval.0
}

declare i32 @ossl_ctype_check(i32 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @bn_expand(%struct.bignum_st* noundef %a, i32 noundef %bits) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %bits, 2147483584
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %bits, 63
  %div = sdiv i32 %sub, 64
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %0 = load i32, i32* %dmax, align 4, !tbaa !22
  %cmp1.not = icmp sgt i32 %div, %0
  br i1 %cmp1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %call = tail call %struct.bignum_st* @bn_expand2(%struct.bignum_st* noundef nonnull %a, i32 noundef %div) #3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi %struct.bignum_st* [ %call, %if.end3 ], [ null, %entry ], [ %a, %if.end ]
  ret %struct.bignum_st* %retval.0
}

declare i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #1

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_dec2bn(%struct.bignum_st** noundef %bn, i8* noundef readonly %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %a, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %a, align 1, !tbaa !11
  switch i8 %0, label %if.end7 [
    i8 0, label %cleanup
    i8 45, label %if.then6
  ]

if.then6:                                         ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8, i8* %a, i64 1
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %if.then6
  %a.addr.0 = phi i8* [ %incdec.ptr, %if.then6 ], [ %a, %lor.lhs.false ]
  %neg.0 = phi i32 [ 1, %if.then6 ], [ 0, %lor.lhs.false ]
  br label %land.rhs

land.rhs:                                         ; preds = %if.end7, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end7 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8, i8* %a.addr.0, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv10 = sext i8 %1 to i32
  %call = tail call i32 @ossl_ctype_check(i32 noundef %conv10, i32 noundef 4) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 536870912
  br i1 %exitcond.not, label %err, label %land.rhs, !llvm.loop !23

for.end:                                          ; preds = %land.rhs
  %2 = trunc i64 %indvars.iv to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %err, label %if.end17

if.end17:                                         ; preds = %for.end
  %add = add nuw nsw i32 %neg.0, %2
  %cmp18 = icmp eq %struct.bignum_st** %bn, null
  br i1 %cmp18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end17
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !20
  %cmp22 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  %call25 = tail call %struct.bignum_st* @BN_new() #3
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %cleanup, label %if.end30

if.else:                                          ; preds = %if.end21
  tail call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %4) #3
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.else
  %ret.0 = phi %struct.bignum_st* [ %call25, %if.then24 ], [ %4, %if.else ]
  %mul = shl nuw nsw i32 %2, 2
  %call31 = tail call fastcc %struct.bignum_st* @bn_expand(%struct.bignum_st* noundef nonnull %ret.0, i32 noundef %mul) #4
  %cmp32 = icmp eq %struct.bignum_st* %call31, null
  br i1 %cmp32, label %err, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end30
  %rem = urem i32 %2, 19
  %cmp36 = icmp eq i32 %rem, 0
  %sub = sub nuw nsw i32 19, %rem
  %spec.store.select = select i1 %cmp36, i32 0, i32 %sub
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end59
  %dec119.in = phi i32 [ %dec119, %if.end59 ], [ %2, %while.body.preheader ]
  %j.0118 = phi i32 [ %j.1, %if.end59 ], [ %spec.store.select, %while.body.preheader ]
  %l.0117 = phi i64 [ %l.1, %if.end59 ], [ 0, %while.body.preheader ]
  %a.addr.1116 = phi i8* [ %incdec.ptr47, %if.end59 ], [ %a.addr.0, %while.body.preheader ]
  %dec119 = add nsw i32 %dec119.in, -1
  %mul42 = mul i64 %l.0117, 10
  %5 = load i8, i8* %a.addr.1116, align 1, !tbaa !11
  %conv43 = sext i8 %5 to i64
  %sub44 = add i64 %mul42, -48
  %add46 = add i64 %sub44, %conv43
  %incdec.ptr47 = getelementptr inbounds i8, i8* %a.addr.1116, i64 1
  %inc48 = add nsw i32 %j.0118, 1
  %cmp49 = icmp eq i32 %inc48, 19
  br i1 %cmp49, label %if.then51, label %if.end59

if.then51:                                        ; preds = %while.body
  %call52 = tail call i32 @BN_mul_word(%struct.bignum_st* noundef %ret.0, i64 noundef -8446744073709551616) #3
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %if.then51
  %call55 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %ret.0, i64 noundef %add46) #3
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false54, %while.body
  %l.1 = phi i64 [ %add46, %while.body ], [ 0, %lor.lhs.false54 ]
  %j.1 = phi i32 [ %inc48, %while.body ], [ 0, %lor.lhs.false54 ]
  %cmp40 = icmp sgt i32 %dec119.in, 1
  br i1 %cmp40, label %while.body, label %while.end, !llvm.loop !24

while.end:                                        ; preds = %if.end59
  tail call void @bn_correct_top(%struct.bignum_st* noundef %ret.0) #3
  store %struct.bignum_st* %ret.0, %struct.bignum_st** %bn, align 8, !tbaa !20
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.0, i64 0, i32 1
  %6 = load i32, i32* %top, align 8, !tbaa !4
  %cmp60.not = icmp eq i32 %6, 0
  br i1 %cmp60.not, label %cleanup, label %if.then62

if.then62:                                        ; preds = %while.end
  %neg63 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.0, i64 0, i32 3
  store i32 %neg.0, i32* %neg63, align 8, !tbaa !10
  br label %cleanup

err:                                              ; preds = %for.inc, %if.then51, %lor.lhs.false54, %if.end30, %for.end
  %ret.1 = phi %struct.bignum_st* [ null, %for.end ], [ %ret.0, %if.end30 ], [ %ret.0, %lor.lhs.false54 ], [ %ret.0, %if.then51 ], [ null, %for.inc ]
  %7 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !20
  %cmp65 = icmp eq %struct.bignum_st* %7, null
  br i1 %cmp65, label %if.then67, label %cleanup

if.then67:                                        ; preds = %err
  tail call void @BN_free(%struct.bignum_st* noundef %ret.1) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then67, %while.end, %if.then62, %if.then24, %if.end17, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add, %if.end17 ], [ 0, %if.then24 ], [ %add, %if.then62 ], [ %add, %while.end ], [ 0, %if.then67 ], [ 0, %err ]
  ret i32 %retval.0
}

declare i32 @BN_mul_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_asc2bn(%struct.bignum_st** noundef %bn, i8* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %a, align 1, !tbaa !11
  %cmp = icmp eq i8 %0, 45
  %spec.select.idx = zext i1 %cmp to i64
  %spec.select = getelementptr i8, i8* %a, i64 %spec.select.idx
  %1 = load i8, i8* %spec.select, align 1, !tbaa !11
  %cmp3 = icmp eq i8 %1, 48
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx5 = getelementptr inbounds i8, i8* %spec.select, i64 1
  %2 = load i8, i8* %arrayidx5, align 1, !tbaa !11
  switch i8 %2, label %if.else [
    i8 88, label %if.then13
    i8 120, label %if.then13
  ]

if.then13:                                        ; preds = %land.lhs.true, %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %spec.select, i64 2
  %call = tail call i32 @BN_hex2bn(%struct.bignum_st** noundef %bn, i8* noundef nonnull %add.ptr) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end20

if.else:                                          ; preds = %land.lhs.true, %entry
  %call16 = tail call i32 @BN_dec2bn(%struct.bignum_st** noundef %bn, i8* noundef nonnull %spec.select) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  %3 = load i8, i8* %a, align 1, !tbaa !11
  %cmp22 = icmp eq i8 %3, 45
  br i1 %cmp22, label %land.lhs.true24, label %cleanup

land.lhs.true24:                                  ; preds = %if.end20
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !20
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %4, i64 0, i32 1
  %5 = load i32, i32* %top, align 8, !tbaa !4
  %cmp25.not = icmp eq i32 %5, 0
  br i1 %cmp25.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %land.lhs.true24
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %4, i64 0, i32 3
  store i32 1, i32* %neg, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true24, %if.then27, %if.else, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.else ], [ 1, %if.then27 ], [ 1, %land.lhs.true24 ], [ 1, %if.end20 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @bn_expand2(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 16}
!11 = !{!7, !7, i64 0}
!12 = !{!5, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !16}
!22 = !{!5, !9, i64 12}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
