; ModuleID = 'crypto/asn1/a_time.c'
source_filename = "crypto/asn1/a_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.bio_st = type opaque

@ASN1_TIME_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 5, i64 49152, %struct.ASN1_TEMPLATE_st* null, i64 0, i8* null, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"ASN1_TIME\00", align 1
@ossl_asn1_time_to_tm.min = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@ossl_asn1_time_to_tm.max = internal unnamed_addr constant [9 x i32] [i32 99, i32 99, i32 12, i32 31, i32 23, i32 59, i32 59, i32 12, i32 59], align 16
@ossl_asn1_time_to_tm.mdays = internal unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"%04d%02d%02d%02d%02d%02dZ\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%02d%02d%02d%02d%02d%02dZ\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"crypto/asn1/a_time.c\00", align 1
@__func__.ASN1_TIME_adj = private unnamed_addr constant [14 x i8] c"ASN1_TIME_adj\00", align 1
@__func__.ASN1_TIME_set_string_X509 = private unnamed_addr constant [26 x i8] c"ASN1_TIME_set_string_X509\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Bad time value\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%4d-%02d-%02d %02d:%02d:%02d%.*s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s %2d %02d:%02d:%02d%.*s %d%s\00", align 1
@_asn1_mon = internal constant [12 x [4 x i8]] [[4 x i8] c"Jan\00", [4 x i8] c"Feb\00", [4 x i8] c"Mar\00", [4 x i8] c"Apr\00", [4 x i8] c"May\00", [4 x i8] c"Jun\00", [4 x i8] c"Jul\00", [4 x i8] c"Aug\00", [4 x i8] c"Sep\00", [4 x i8] c"Oct\00", [4 x i8] c"Nov\00", [4 x i8] c"Dec\00"], align 16
@.str.9 = private unnamed_addr constant [5 x i8] c" GMT\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%4d-%02d-%02d %02d:%02d:%02d%s\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"%s %2d %02d:%02d:%02d %d%s\00", align 1
@determine_days.ydays = internal unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ASN1_TIME_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_TIME_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_TIME(%struct.asn1_string_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_TIME_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ASN1_TIME(%struct.asn1_string_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_TIME_it.local_it) #8
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_TIME_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ASN1_TIME_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ASN1_TIME_free(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_TIME_it.local_it) #8
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_TIME_dup(%struct.asn1_string_st* noundef %x) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.asn1_string_st* %x to i8*
  %call1 = tail call i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef nonnull @ASN1_TIME_it.local_it, i8* noundef %0) #8
  %1 = bitcast i8* %call1 to %struct.asn1_string_st*
  ret %struct.asn1_string_st* %1
}

declare i8* @ASN1_item_dup(%struct.ASN1_ITEM_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_time_to_tm(%struct.tm* noundef writeonly %tm, %struct.asn1_string_st* nocapture noundef readonly %d) local_unnamed_addr #1 {
entry:
  %tmp = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %d, i64 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !4
  switch i32 %1, label %cleanup279 [
    i32 23, label %if.then
    i32 24, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %d, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !11
  %and = and i64 %2, 256
  %tobool.not = icmp eq i64 %and, 0
  %spec.select417 = select i1 %tobool.not, i32 11, i32 13
  br label %if.end13

if.then4:                                         ; preds = %entry
  %flags5 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %d, i64 0, i32 3
  %3 = load i64, i64* %flags5, align 8, !tbaa !11
  %and6 = and i64 %3, 256
  %tobool7.not = icmp eq i64 %and6, 0
  %.418 = select i1 %tobool7.not, i32 13, i32 15
  br label %if.end13

if.end13:                                         ; preds = %if.then, %if.then4
  %tobool165.not = phi i1 [ %tobool.not, %if.then ], [ %tobool7.not, %if.then4 ]
  %end.0 = phi i32 [ 6, %if.then ], [ 7, %if.then4 ]
  %btz.0 = phi i32 [ 5, %if.then ], [ 6, %if.then4 ]
  %min_l.0 = phi i32 [ %spec.select417, %if.then ], [ %.418, %if.then4 ]
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %d, i64 0, i32 0
  %4 = load i32, i32* %length, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %d, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !13
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 56) #8
  %cmp14 = icmp slt i32 %4, %min_l.0
  br i1 %cmp14, label %cleanup279, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tmp, i64 0, i32 0
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tmp, i64 0, i32 1
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tmp, i64 0, i32 2
  %tm_mon102 = getelementptr inbounds %struct.tm, %struct.tm* %tmp, i64 0, i32 4
  %tm_year106 = getelementptr inbounds %struct.tm, %struct.tm* %tmp, i64 0, i32 5
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tmp, i64 0, i32 3
  %6 = zext i32 %4 to i64
  %7 = shl nuw nsw i32 %end.0, 1
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %i.0430 = phi i32 [ 0, %for.cond.preheader ], [ %add68, %for.inc ]
  %cmp19 = icmp eq i32 %i.0430, %btz.0
  %or.cond = select i1 %tobool165.not, i1 %cmp19, i1 false
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %indvars.iv
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !14
  br i1 %or.cond, label %land.lhs.true20, label %if.end35

land.lhs.true20:                                  ; preds = %for.body
  switch i8 %8, label %if.end35 [
    i8 90, label %for.end.split.loop.exit
    i8 43, label %for.end.split.loop.exit
    i8 45, label %for.end.split.loop.exit
  ]

if.end35:                                         ; preds = %for.body, %land.lhs.true20
  %call38 = call i32 @ossl_ascii_isdigit(i8 noundef signext %8) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup279, label %if.end41

if.end41:                                         ; preds = %if.end35
  %arrayidx37 = getelementptr inbounds i8, i8* %5, i64 %indvars.iv
  %9 = load i8, i8* %arrayidx37, align 1, !tbaa !14
  %conv44 = sext i8 %9 to i32
  %10 = or i64 %indvars.iv, 1
  %cmp46 = icmp eq i64 %10, %6
  br i1 %cmp46, label %cleanup279, label %if.end49

if.end49:                                         ; preds = %if.end41
  %arrayidx51 = getelementptr inbounds i8, i8* %5, i64 %10
  %11 = load i8, i8* %arrayidx51, align 1, !tbaa !14
  %call52 = call i32 @ossl_ascii_isdigit(i8 noundef signext %11) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup279, label %if.end55

if.end55:                                         ; preds = %if.end49
  %12 = mul nsw i32 %conv44, 10
  %mul = add nsw i32 %12, -480
  %13 = load i8, i8* %arrayidx51, align 1, !tbaa !14
  %conv58 = sext i8 %13 to i32
  %add = add nsw i32 %mul, %conv58
  %sub59 = add nsw i32 %add, -48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp61 = icmp eq i64 %indvars.iv.next, %6
  br i1 %cmp61, label %cleanup279, label %if.end64

if.end64:                                         ; preds = %if.end55
  %14 = load i32, i32* %type, align 4, !tbaa !4
  %cmp66 = icmp eq i32 %14, 23
  %add68 = add nuw nsw i32 %i.0430, 1
  %cond = select i1 %cmp66, i32 %add68, i32 %i.0430
  %idxprom69 = zext i32 %cond to i64
  %arrayidx70 = getelementptr inbounds [9 x i32], [9 x i32]* @ossl_asn1_time_to_tm.min, i64 0, i64 %idxprom69
  %15 = load i32, i32* %arrayidx70, align 4, !tbaa !15
  %cmp71 = icmp slt i32 %sub59, %15
  br i1 %cmp71, label %cleanup279, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.end64
  %arrayidx75 = getelementptr inbounds [9 x i32], [9 x i32]* @ossl_asn1_time_to_tm.max, i64 0, i64 %idxprom69
  %16 = load i32, i32* %arrayidx75, align 4, !tbaa !15
  %cmp76 = icmp sgt i32 %sub59, %16
  br i1 %cmp76, label %cleanup279, label %if.end79

if.end79:                                         ; preds = %lor.lhs.false73
  switch i32 %cond, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb82
    i32 2, label %sw.bb99
    i32 3, label %sw.bb101
    i32 4, label %sw.bb119
    i32 5, label %sw.bb120
    i32 6, label %sw.bb121
  ]

sw.bb:                                            ; preds = %if.end79
  %mul80 = mul nsw i32 %sub59, 100
  %sub81 = add nsw i32 %mul80, -1900
  store i32 %sub81, i32* %tm_year106, align 4, !tbaa !16
  br label %for.inc

sw.bb82:                                          ; preds = %if.end79
  br i1 %cmp66, label %if.then86, label %if.else95

if.then86:                                        ; preds = %sw.bb82
  %cmp87 = icmp slt i32 %add, 98
  %add90 = add nsw i32 %add, 52
  %cond93 = select i1 %cmp87, i32 %add90, i32 %sub59
  store i32 %cond93, i32* %tm_year106, align 4, !tbaa !16
  br label %for.inc

if.else95:                                        ; preds = %sw.bb82
  %17 = load i32, i32* %tm_year106, align 4, !tbaa !16
  %add97 = add nsw i32 %17, %sub59
  store i32 %add97, i32* %tm_year106, align 4, !tbaa !16
  br label %for.inc

sw.bb99:                                          ; preds = %if.end79
  %sub100 = add nsw i32 %add, -49
  store i32 %sub100, i32* %tm_mon102, align 8, !tbaa !18
  br label %for.inc

sw.bb101:                                         ; preds = %if.end79
  %18 = load i32, i32* %tm_mon102, align 8, !tbaa !18
  %cmp103 = icmp eq i32 %18, 1
  br i1 %cmp103, label %if.then105, label %if.else110

if.then105:                                       ; preds = %sw.bb101
  %19 = load i32, i32* %tm_year106, align 4, !tbaa !16
  %add107 = add nsw i32 %19, 1900
  %call108 = call fastcc i32 @leap_year(i32 noundef %add107) #10
  %add109 = add nsw i32 %call108, 28
  br label %if.end114

if.else110:                                       ; preds = %sw.bb101
  %idxprom112 = sext i32 %18 to i64
  %arrayidx113 = getelementptr inbounds [12 x i32], [12 x i32]* @ossl_asn1_time_to_tm.mdays, i64 0, i64 %idxprom112
  %20 = load i32, i32* %arrayidx113, align 4, !tbaa !15
  br label %if.end114

if.end114:                                        ; preds = %if.else110, %if.then105
  %md.0 = phi i32 [ %add109, %if.then105 ], [ %20, %if.else110 ]
  %cmp115 = icmp sgt i32 %sub59, %md.0
  br i1 %cmp115, label %cleanup279, label %if.end118

if.end118:                                        ; preds = %if.end114
  store i32 %sub59, i32* %tm_mday, align 4, !tbaa !19
  call fastcc void @determine_days(%struct.tm* noundef nonnull %tmp) #10
  br label %for.inc

sw.bb119:                                         ; preds = %if.end79
  store i32 %sub59, i32* %tm_hour, align 8, !tbaa !20
  br label %for.inc

sw.bb120:                                         ; preds = %if.end79
  store i32 %sub59, i32* %tm_min, align 4, !tbaa !21
  br label %for.inc

sw.bb121:                                         ; preds = %if.end79
  store i32 %sub59, i32* %tm_sec, align 8, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb99, %if.end118, %sw.bb119, %sw.bb120, %sw.bb121, %if.end79, %if.else95, %if.then86
  %exitcond.not = icmp eq i32 %add68, %end.0
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !23

for.end.split.loop.exit:                          ; preds = %land.lhs.true20, %land.lhs.true20, %land.lhs.true20
  %21 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.end.split.loop.exit
  %o.0.lcssa = phi i32 [ %21, %for.end.split.loop.exit ], [ %7, %for.inc ]
  %22 = load i32, i32* %type, align 4, !tbaa !4
  %cmp124 = icmp eq i32 %22, 24
  br i1 %cmp124, label %land.lhs.true126, label %if.end156

land.lhs.true126:                                 ; preds = %for.end
  %idxprom127 = zext i32 %o.0.lcssa to i64
  %arrayidx128 = getelementptr inbounds i8, i8* %5, i64 %idxprom127
  %23 = load i8, i8* %arrayidx128, align 1, !tbaa !14
  %cmp130 = icmp eq i8 %23, 46
  br i1 %cmp130, label %if.then132, label %if.end156

if.then132:                                       ; preds = %land.lhs.true126
  br i1 %tobool165.not, label %if.end135, label %cleanup279

if.end135:                                        ; preds = %if.then132
  %inc136 = or i32 %o.0.lcssa, 1
  %cmp141431 = icmp slt i32 %inc136, %4
  br i1 %cmp141431, label %land.rhs.preheader, label %cleanup279

land.rhs.preheader:                               ; preds = %if.end135
  %24 = zext i32 %inc136 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv440 = phi i64 [ %24, %land.rhs.preheader ], [ %indvars.iv.next441, %while.body ]
  %arrayidx144 = getelementptr inbounds i8, i8* %5, i64 %indvars.iv440
  %25 = load i8, i8* %arrayidx144, align 1, !tbaa !14
  %call145 = call i32 @ossl_ascii_isdigit(i8 noundef signext %25) #8
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1
  %26 = trunc i64 %indvars.iv.next441 to i32
  %cmp141 = icmp sgt i32 %4, %26
  br i1 %cmp141, label %land.rhs, label %cleanup279, !llvm.loop !25

while.end:                                        ; preds = %land.rhs
  %27 = trunc i64 %indvars.iv440 to i32
  %cmp148 = icmp eq i32 %inc136, %27
  %cmp152 = icmp eq i32 %4, %27
  %or.cond419 = select i1 %cmp148, i1 true, i1 %cmp152
  br i1 %or.cond419, label %cleanup279, label %if.end156

if.end156:                                        ; preds = %while.end, %land.lhs.true126, %for.end
  %o.2 = phi i32 [ %o.0.lcssa, %land.lhs.true126 ], [ %o.0.lcssa, %for.end ], [ %27, %while.end ]
  %idxprom157 = sext i32 %o.2 to i64
  %arrayidx158 = getelementptr inbounds i8, i8* %5, i64 %idxprom157
  %28 = load i8, i8* %arrayidx158, align 1, !tbaa !14
  %cmp160 = icmp eq i8 %28, 90
  br i1 %cmp160, label %if.then162, label %if.else164

if.then162:                                       ; preds = %if.end156
  %inc163 = add nsw i32 %o.2, 1
  br label %if.end270

if.else164:                                       ; preds = %if.end156
  br i1 %tobool165.not, label %land.lhs.true166, label %cleanup279

land.lhs.true166:                                 ; preds = %if.else164
  switch i8 %28, label %cleanup279 [
    i8 43, label %if.then178
    i8 45, label %if.then178
  ]

if.then178:                                       ; preds = %land.lhs.true166, %land.lhs.true166
  %cmp182 = icmp eq i8 %28, 45
  %add186 = add nsw i32 %o.2, 5
  %cmp187.not = icmp eq i32 %add186, %4
  br i1 %cmp187.not, label %for.cond191.preheader, label %cleanup279

for.cond191.preheader:                            ; preds = %if.then178
  %inc185 = add i32 %o.2, 1
  %cmp238.not = icmp eq %struct.tm* %tm, null
  %29 = sext i32 %inc185 to i64
  %arrayidx197 = getelementptr inbounds i8, i8* %5, i64 %29
  %30 = load i8, i8* %arrayidx197, align 1, !tbaa !14
  %call198 = call i32 @ossl_ascii_isdigit(i8 noundef signext %30) #8
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %cleanup279, label %if.end201

if.end201:                                        ; preds = %for.cond191.preheader
  %31 = load i8, i8* %arrayidx197, align 1, !tbaa !14
  %32 = add nsw i64 %29, 1
  %arrayidx208 = getelementptr inbounds i8, i8* %5, i64 %32
  %33 = load i8, i8* %arrayidx208, align 1, !tbaa !14
  %call209 = call i32 @ossl_ascii_isdigit(i8 noundef signext %33) #8
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %cleanup279, label %if.end212

if.end212:                                        ; preds = %if.end201
  %conv204 = sext i8 %31 to i32
  %34 = mul nsw i32 %conv204, 10
  %35 = load i8, i8* %arrayidx208, align 1, !tbaa !14
  %conv216 = sext i8 %35 to i32
  %add217 = add nsw i32 %34, -528
  %sub218 = add nsw i32 %add217, %conv216
  %36 = load i32, i32* %type, align 4, !tbaa !4
  %cmp220 = icmp eq i32 %36, 23
  %add223 = add nuw nsw i32 %end.0, 1
  %cond226 = select i1 %cmp220, i32 %add223, i32 %end.0
  %idxprom227 = zext i32 %cond226 to i64
  %arrayidx228 = getelementptr inbounds [9 x i32], [9 x i32]* @ossl_asn1_time_to_tm.min, i64 0, i64 %idxprom227
  %37 = load i32, i32* %arrayidx228, align 4, !tbaa !15
  %cmp229 = icmp slt i32 %sub218, %37
  br i1 %cmp229, label %cleanup279, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %if.end212
  %arrayidx233 = getelementptr inbounds [9 x i32], [9 x i32]* @ossl_asn1_time_to_tm.max, i64 0, i64 %idxprom227
  %38 = load i32, i32* %arrayidx233, align 4, !tbaa !15
  %cmp234 = icmp sgt i32 %sub218, %38
  br i1 %cmp234, label %cleanup279, label %if.end237

if.end237:                                        ; preds = %lor.lhs.false231
  %mul244 = mul nsw i32 %sub218, 3600
  %indvars.iv.next444 = add nsw i64 %29, 2
  %arrayidx197.1 = getelementptr inbounds i8, i8* %5, i64 %indvars.iv.next444
  %39 = load i8, i8* %arrayidx197.1, align 1, !tbaa !14
  %call198.1 = call i32 @ossl_ascii_isdigit(i8 noundef signext %39) #8
  %tobool199.not.1 = icmp eq i32 %call198.1, 0
  br i1 %tobool199.not.1, label %cleanup279, label %if.end201.1

if.end201.1:                                      ; preds = %if.end237
  %40 = load i8, i8* %arrayidx197.1, align 1, !tbaa !14
  %41 = add nsw i64 %29, 3
  %arrayidx208.1 = getelementptr inbounds i8, i8* %5, i64 %41
  %42 = load i8, i8* %arrayidx208.1, align 1, !tbaa !14
  %call209.1 = call i32 @ossl_ascii_isdigit(i8 noundef signext %42) #8
  %tobool210.not.1 = icmp eq i32 %call209.1, 0
  br i1 %tobool210.not.1, label %cleanup279, label %if.end212.1

if.end212.1:                                      ; preds = %if.end201.1
  %conv204.1 = sext i8 %40 to i32
  %43 = mul nsw i32 %conv204.1, 10
  %44 = load i8, i8* %arrayidx208.1, align 1, !tbaa !14
  %conv216.1 = sext i8 %44 to i32
  %add217.1 = add nsw i32 %43, -528
  %sub218.1 = add nsw i32 %add217.1, %conv216.1
  %45 = load i32, i32* %type, align 4, !tbaa !4
  %cmp220.1 = icmp eq i32 %45, 23
  %add223.1 = add nuw nsw i32 %end.0, 2
  %cond226.1 = select i1 %cmp220.1, i32 %add223.1, i32 %add223
  %idxprom227.1 = zext i32 %cond226.1 to i64
  %arrayidx228.1 = getelementptr inbounds [9 x i32], [9 x i32]* @ossl_asn1_time_to_tm.min, i64 0, i64 %idxprom227.1
  %46 = load i32, i32* %arrayidx228.1, align 4, !tbaa !15
  %cmp229.1 = icmp slt i32 %sub218.1, %46
  br i1 %cmp229.1, label %cleanup279, label %lor.lhs.false231.1

lor.lhs.false231.1:                               ; preds = %if.end212.1
  %arrayidx233.1 = getelementptr inbounds [9 x i32], [9 x i32]* @ossl_asn1_time_to_tm.max, i64 0, i64 %idxprom227.1
  %47 = load i32, i32* %arrayidx233.1, align 4, !tbaa !15
  %cmp234.1 = icmp sgt i32 %sub218.1, %47
  br i1 %cmp234.1, label %cleanup279, label %if.end237.1

if.end237.1:                                      ; preds = %lor.lhs.false231.1
  %mul250.1 = mul nsw i32 %sub218.1, 60
  %48 = add nsw i32 %mul244, %mul250.1
  %indvars.iv.next444.1 = add i32 %o.2, 5
  %tobool259.not457 = icmp eq i32 %48, 0
  %tobool259.not = select i1 %cmp238.not, i1 true, i1 %tobool259.not457
  br i1 %tobool259.not, label %if.end270, label %land.lhs.true260

land.lhs.true260:                                 ; preds = %if.end237.1
  %49 = sub nsw i32 0, %48
  %50 = select i1 %cmp182, i32 %48, i32 %49
  %conv262 = sext i32 %50 to i64
  %call263 = call i32 @OPENSSL_gmtime_adj(%struct.tm* noundef nonnull %tmp, i32 noundef 0, i64 noundef %conv262) #8
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %cleanup279, label %if.end270

if.end270:                                        ; preds = %land.lhs.true260, %if.end237.1, %if.then162
  %o.5 = phi i32 [ %inc163, %if.then162 ], [ %indvars.iv.next444.1, %if.end237.1 ], [ %indvars.iv.next444.1, %land.lhs.true260 ]
  %cmp271 = icmp eq i32 %o.5, %4
  br i1 %cmp271, label %if.then273, label %cleanup279

if.then273:                                       ; preds = %if.end270
  %cmp274.not = icmp eq %struct.tm* %tm, null
  br i1 %cmp274.not, label %cleanup279, label %if.then276

if.then276:                                       ; preds = %if.then273
  %51 = bitcast %struct.tm* %tm to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %51, i8* noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !26
  br label %cleanup279

cleanup279:                                       ; preds = %if.end35, %if.end41, %if.end49, %if.end55, %lor.lhs.false73, %if.end64, %if.end114, %while.body, %if.end212, %lor.lhs.false231, %if.end201, %for.cond191.preheader, %if.end237, %if.end201.1, %if.end212.1, %lor.lhs.false231.1, %land.lhs.true260, %if.then178, %if.end13, %if.then132, %if.end135, %while.end, %if.else164, %if.end270, %land.lhs.true166, %if.then273, %if.then276, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then276 ], [ 1, %if.then273 ], [ 0, %land.lhs.true166 ], [ 0, %if.end270 ], [ 0, %if.else164 ], [ 0, %while.end ], [ 0, %if.end135 ], [ 0, %if.then132 ], [ 0, %if.end13 ], [ 0, %if.then178 ], [ 0, %land.lhs.true260 ], [ 0, %lor.lhs.false231.1 ], [ 0, %if.end212.1 ], [ 0, %if.end201.1 ], [ 0, %if.end237 ], [ 0, %for.cond191.preheader ], [ 0, %if.end201 ], [ 0, %lor.lhs.false231 ], [ 0, %if.end212 ], [ 0, %while.body ], [ 0, %if.end114 ], [ 0, %if.end64 ], [ 0, %lor.lhs.false73 ], [ 0, %if.end55 ], [ 0, %if.end49 ], [ 0, %if.end41 ], [ 0, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ossl_ascii_isdigit(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @leap_year(i32 noundef %year) unnamed_addr #0 {
entry:
  %rem = srem i32 %year, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rem1 = srem i32 %year, 100
  %cmp2.not = icmp ne i32 %rem1, 0
  %0 = and i32 %year, 3
  %cmp4 = icmp eq i32 %0, 0
  %or.cond = and i1 %cmp2.not, %cmp4
  %spec.select = zext i1 %or.cond to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @determine_days(%struct.tm* nocapture noundef %tm) unnamed_addr #5 {
entry:
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5
  %0 = load i32, i32* %tm_year, align 4, !tbaa !16
  %add = add nsw i32 %0, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 4
  %1 = load i32, i32* %tm_mon, align 8, !tbaa !18
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 3
  %2 = load i32, i32* %tm_mday, align 4, !tbaa !19
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* @determine_days.ydays, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %add1 = add i32 %2, -1
  %sub = add i32 %add1, %3
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 7
  store i32 %sub, i32* %tm_yday, align 4, !tbaa !29
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @leap_year(i32 noundef %add) #10
  %add3 = add nsw i32 %call, %sub
  store i32 %add3, i32* %tm_yday, align 4, !tbaa !29
  %add4 = add nuw nsw i32 %1, 2
  br label %if.end

if.else:                                          ; preds = %entry
  %add5 = add nsw i32 %1, 14
  %dec = add nsw i32 %0, 1899
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %m.0 = phi i32 [ %add4, %if.then ], [ %add5, %if.else ]
  %y.0 = phi i32 [ %add, %if.then ], [ %dec, %if.else ]
  %div = sdiv i32 %y.0, 100
  %rem = srem i32 %y.0, 100
  %mul = mul nsw i32 %m.0, 13
  %div6 = sdiv i32 %mul, 5
  %div9.lhs.trunc = trunc i32 %rem to i8
  %div937 = sdiv i8 %div9.lhs.trunc, 4
  %div9.sext = sext i8 %div937 to i32
  %div11 = sdiv i32 %y.0, 400
  %mul13 = mul nsw i32 %div, 5
  %add7 = add i32 %2, 6
  %add8 = add i32 %add7, %div6
  %add10 = add i32 %add8, %rem
  %add12 = add i32 %add10, %div11
  %add14 = add i32 %add12, %mul13
  %add15 = add i32 %add14, %div9.sext
  %rem16 = srem i32 %add15, 7
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 6
  store i32 %rem16, i32* %tm_wday, align 8, !tbaa !30
  ret void
}

declare i32 @OPENSSL_gmtime_adj(%struct.tm* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef %s, %struct.tm* nocapture noundef readonly %ts, i32 noundef %type) local_unnamed_addr #1 {
entry:
  switch i32 %type, label %err [
    i32 -1, label %if.then
    i32 23, label %if.then4
    i32 24, label %if.end15
  ]

if.then:                                          ; preds = %entry
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 5
  %0 = load i32, i32* %tm_year, align 4, !tbaa !16
  %call = tail call fastcc i32 @is_utc(i32 noundef %0) #10
  %tobool.not = icmp eq i32 %call, 0
  %.81 = select i1 %tobool.not, i32 24, i32 23
  br label %if.end15

if.then4:                                         ; preds = %entry
  %tm_year5 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 5
  %1 = load i32, i32* %tm_year5, align 4, !tbaa !16
  %call6 = tail call fastcc i32 @is_utc(i32 noundef %1) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end15

if.end15:                                         ; preds = %entry, %if.then, %if.then4
  %cmp29 = phi i1 [ false, %if.then4 ], [ %tobool.not, %if.then ], [ true, %entry ]
  %type.addr.0 = phi i32 [ 23, %if.then4 ], [ %.81, %if.then ], [ %type, %entry ]
  %cmp16 = icmp eq %struct.asn1_string_st* %s, null
  br i1 %cmp16, label %if.end20, label %if.end23

if.end20:                                         ; preds = %if.end15
  %call18 = tail call %struct.asn1_string_st* @ASN1_STRING_new() #8
  %cmp21 = icmp eq %struct.asn1_string_st* %call18, null
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end15, %if.end20
  %tmps.084 = phi %struct.asn1_string_st* [ %call18, %if.end20 ], [ %s, %if.end15 ]
  %call24 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %tmps.084, i8* noundef null, i32 noundef 20) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end23
  %type28 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmps.084, i64 0, i32 1
  store i32 %type.addr.0, i32* %type28, align 4, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmps.084, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !13
  %tm_year31 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 5
  %3 = load i32, i32* %tm_year31, align 4, !tbaa !16
  br i1 %cmp29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.end27
  %add = add nsw i32 %3, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 4
  %4 = load i32, i32* %tm_mon, align 8, !tbaa !18
  %add32 = add nsw i32 %4, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4, !tbaa !19
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 2
  %6 = load i32, i32* %tm_hour, align 8, !tbaa !20
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 1
  %7 = load i32, i32* %tm_min, align 4, !tbaa !21
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 0
  %8 = load i32, i32* %tm_sec, align 8, !tbaa !22
  %call33 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %2, i64 noundef 20, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef %add, i32 noundef %add32, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #8
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmps.084, i64 0, i32 0
  store i32 %call33, i32* %length, align 8, !tbaa !12
  br label %cleanup

if.else34:                                        ; preds = %if.end27
  %rem = srem i32 %3, 100
  %tm_mon36 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 4
  %9 = load i32, i32* %tm_mon36, align 8, !tbaa !18
  %add37 = add nsw i32 %9, 1
  %tm_mday38 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 3
  %10 = load i32, i32* %tm_mday38, align 4, !tbaa !19
  %tm_hour39 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 2
  %11 = load i32, i32* %tm_hour39, align 8, !tbaa !20
  %tm_min40 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 1
  %12 = load i32, i32* %tm_min40, align 4, !tbaa !21
  %tm_sec41 = getelementptr inbounds %struct.tm, %struct.tm* %ts, i64 0, i32 0
  %13 = load i32, i32* %tm_sec41, align 8, !tbaa !22
  %call42 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %2, i64 noundef 20, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 noundef %rem, i32 noundef %add37, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) #8
  %length43 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tmps.084, i64 0, i32 0
  store i32 %call42, i32* %length43, align 8, !tbaa !12
  br label %cleanup

err:                                              ; preds = %entry, %if.end23, %if.then4
  %tmps.1 = phi %struct.asn1_string_st* [ %tmps.084, %if.end23 ], [ null, %if.then4 ], [ null, %entry ]
  %cmp45.not = icmp eq %struct.asn1_string_st* %tmps.1, %s
  br i1 %cmp45.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %err
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %tmps.1) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then46, %if.then30, %if.else34, %if.end20
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.end20 ], [ %tmps.084, %if.else34 ], [ %tmps.084, %if.then30 ], [ null, %if.then46 ], [ null, %err ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @is_utc(i32 noundef %year) unnamed_addr #0 {
entry:
  %0 = add i32 %year, -50
  %1 = icmp ult i32 %0, 100
  %. = zext i1 %1 to i32
  ret i32 %.
}

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_TIME_set(%struct.asn1_string_st* noundef %s, i64 noundef %t) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef %s, i64 noundef %t, i32 noundef 0, i64 noundef 0) #10
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef %s, i64 noundef %t, i32 noundef %offset_day, i64 noundef %offset_sec) local_unnamed_addr #1 {
entry:
  %t.addr = alloca i64, align 8
  %data = alloca %struct.tm, align 8
  store i64 %t, i64* %t.addr, align 8, !tbaa !27
  %0 = bitcast %struct.tm* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %call = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %t.addr, %struct.tm* noundef nonnull %data) #8
  %cmp = icmp eq %struct.tm* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ASN1_TIME_adj, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 173, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool = icmp ne i32 %offset_day, 0
  %tobool1 = icmp ne i64 %offset_sec, 0
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @OPENSSL_gmtime_adj(%struct.tm* noundef nonnull %call, i32 noundef %offset_day, i64 noundef %offset_sec) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %call8 = call %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef %s, %struct.tm* noundef nonnull %call, i32 noundef -1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end7, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %call8, %if.end7 ], [ null, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret %struct.asn1_string_st* %retval.0
}

declare %struct.tm* @OPENSSL_gmtime(i64* noundef, %struct.tm* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef %t) local_unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  switch i32 %0, label %return [
    i32 24, label %if.then
    i32 23, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %call = tail call i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef nonnull %t) #8
  br label %return

if.then3:                                         ; preds = %entry
  %call4 = tail call i32 @ASN1_UTCTIME_check(%struct.asn1_string_st* noundef nonnull %t) #8
  br label %return

return:                                           ; preds = %entry, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_GENERALIZEDTIME_check(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_UTCTIME_check(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef %t, %struct.asn1_string_st** noundef %out) local_unnamed_addr #1 {
entry:
  %tm = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %tm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %call = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %t, %struct.tm* noundef nonnull %tm) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq %struct.asn1_string_st** %out, null
  br i1 %cmp.not, label %if.end2.thread, label %if.end2

if.end2.thread:                                   ; preds = %if.end
  %call317 = call %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef null, %struct.tm* noundef nonnull %tm, i32 noundef 24) #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %out, align 8, !tbaa !28
  %call3 = call %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef %1, %struct.tm* noundef nonnull %tm, i32 noundef 24) #10
  %cmp5.not = icmp eq %struct.asn1_string_st* %call3, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end2
  store %struct.asn1_string_st* %call3, %struct.asn1_string_st** %out, align 8, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.end2.thread, %if.end2, %if.then6, %entry
  %retval.0 = phi %struct.asn1_string_st* [ null, %entry ], [ %call3, %if.then6 ], [ null, %if.end2 ], [ %call317, %if.end2.thread ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef readonly %s, %struct.tm* noundef %tm) local_unnamed_addr #1 {
entry:
  %now_t = alloca i64, align 8
  %cmp = icmp eq %struct.asn1_string_st* %s, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %now_t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = call i64 @time(i64* noundef nonnull %now_t) #8
  %1 = bitcast %struct.tm* %tm to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 56) #8
  %call2 = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %now_t, %struct.tm* noundef %tm) #8
  %cmp3.not = icmp ne %struct.tm* %call2, null
  %. = zext i1 %cmp3.not to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  br label %return

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @ossl_asn1_time_to_tm(%struct.tm* noundef %tm, %struct.asn1_string_st* noundef nonnull %s) #10
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %retval.1 = phi i32 [ %., %if.then ], [ %call6, %if.end5 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef %s, i8* noundef %str) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ASN1_UTCTIME_set_string(%struct.asn1_string_st* noundef %s, i8* noundef %str) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef %s, i8* noundef %str) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @ASN1_UTCTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ASN1_GENERALIZEDTIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef %s, i8* noundef %str) local_unnamed_addr #1 {
entry:
  %t = alloca %struct.asn1_string_st, align 8
  %tm = alloca %struct.tm, align 8
  %0 = bitcast %struct.asn1_string_st* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %1 = bitcast %struct.tm* %tm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #9
  %call = tail call i64 @strlen(i8* noundef %str) #11
  %conv = trunc i64 %call to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 2
  store i8* %str, i8** %data, align 8, !tbaa !13
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 3
  store i64 256, i64* %flags, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 1
  store i32 23, i32* %type, align 4, !tbaa !4
  %call1 = call i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef nonnull %t) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  store i32 24, i32* %type, align 4, !tbaa !4
  %call3 = call i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef nonnull %t) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %out, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %cmp = icmp ne %struct.asn1_string_st* %s, null
  %2 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %2, 24
  %or.cond = select i1 %cmp, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then11, label %if.end35

if.then11:                                        ; preds = %if.end6
  %call12 = call i32 @ossl_asn1_time_to_tm(%struct.tm* noundef nonnull %tm, %struct.asn1_string_st* noundef nonnull %t) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %out, label %if.end15

if.end15:                                         ; preds = %if.then11
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5
  %3 = load i32, i32* %tm_year, align 4, !tbaa !16
  %call16 = call fastcc i32 @is_utc(i32 noundef %3) #10
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %if.then18

if.then18:                                        ; preds = %if.end15
  %4 = load i32, i32* %length, align 8, !tbaa !12
  %sub = add nsw i32 %4, -2
  store i32 %sub, i32* %length, align 8, !tbaa !12
  %add = add nsw i32 %4, -1
  %conv21 = sext i32 %add to i64
  %call22 = call i8* @CRYPTO_zalloc(i64 noundef %conv21, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 noundef 422) #8
  store i8* %call22, i8** %data, align 8, !tbaa !13
  %cmp25 = icmp eq i8* %call22, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then18
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ASN1_TIME_set_string_X509, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br label %out

if.end28:                                         ; preds = %if.then18
  %add.ptr = getelementptr inbounds i8, i8* %str, i64 2
  %5 = load i32, i32* %length, align 8, !tbaa !12
  %conv31 = sext i32 %5 to i64
  %call32 = call i8* @memcpy(i8* noundef nonnull %call22, i8* noundef nonnull %add.ptr, i64 noundef %conv31) #8
  store i32 23, i32* %type, align 4, !tbaa !4
  br label %lor.lhs.false

if.end35:                                         ; preds = %if.end6
  %cmp36 = icmp eq %struct.asn1_string_st* %s, null
  br i1 %cmp36, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28, %if.end15, %if.end35
  %call38 = call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef nonnull %s, %struct.asn1_string_st* noundef nonnull %t) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false, %if.end35
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false
  %rv.0 = phi i32 [ 1, %if.then40 ], [ 0, %lor.lhs.false ]
  %6 = load i8*, i8** %data, align 8, !tbaa !13
  %cmp43.not = icmp eq i8* %6, %str
  br i1 %cmp43.not, label %out, label %if.then45

if.then45:                                        ; preds = %if.end41
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 noundef 436) #8
  br label %out

out:                                              ; preds = %if.end41, %if.then45, %if.then11, %if.then, %if.then27
  %rv.1 = phi i32 [ 0, %if.then27 ], [ %rv.0, %if.then45 ], [ %rv.0, %if.end41 ], [ 0, %if.then11 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %rv.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #7

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_diff(i32* noundef %pday, i32* noundef %psec, %struct.asn1_string_st* noundef %from, %struct.asn1_string_st* noundef %to) local_unnamed_addr #1 {
entry:
  %tm_from = alloca %struct.tm, align 8
  %tm_to = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %tm_from to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %1 = bitcast %struct.tm* %tm_to to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #9
  %call = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %from, %struct.tm* noundef nonnull %tm_from) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %to, %struct.tm* noundef nonnull %tm_to) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @OPENSSL_gmtime_diff(i32* noundef %pday, i32* noundef %psec, %struct.tm* noundef nonnull %tm_from, %struct.tm* noundef nonnull %tm_to) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @OPENSSL_gmtime_diff(i32* noundef, i32* noundef, %struct.tm* noundef, %struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_print(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef readonly %tm) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %tm, i64 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef readonly %tm, i64 noundef %flags) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @ossl_asn1_time_print_ex(%struct.bio_st* noundef %bp, %struct.asn1_string_st* noundef %tm, i64 noundef %flags) #10
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_time_print_ex(%struct.bio_st* noundef %bp, %struct.asn1_string_st* nocapture noundef readonly %tm, i64 noundef %flags) local_unnamed_addr #1 {
entry:
  %stm = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %stm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %call = call i32 @ossl_asn1_time_to_tm(%struct.tm* noundef nonnull %stm, %struct.asn1_string_st* noundef %tm) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef 14) #8
  %tobool2.not = icmp ne i32 %call1, 0
  %cond = sext i1 %tobool2.not to i32
  br label %cleanup84

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tm, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tm, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !13
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %cmp = icmp eq i8 %3, 90
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %tm, i64 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %4, 24
  br i1 %cmp6, label %if.then8, label %if.else50

if.then8:                                         ; preds = %if.end
  %cmp10 = icmp sgt i32 %1, 15
  br i1 %cmp10, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.then8
  %arrayidx12 = getelementptr inbounds i8, i8* %2, i64 14
  %5 = load i8, i8* %arrayidx12, align 1, !tbaa !14
  %cmp14 = icmp eq i8 %5, 46
  br i1 %cmp14, label %land.rhs.preheader, label %if.end24

land.rhs.preheader:                               ; preds = %land.lhs.true
  %6 = add nsw i32 %1, -14
  %wide.trip.count = zext i32 %6 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %indvars.iv = phi i64 [ 1, %land.rhs.preheader ], [ %indvars.iv.next, %while.body ]
  %arrayidx21 = getelementptr inbounds i8, i8* %arrayidx12, i64 %indvars.iv
  %7 = load i8, i8* %arrayidx21, align 1, !tbaa !14
  %call22 = call i32 @ossl_ascii_isdigit(i8 noundef signext %7) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end24.loopexit.split.loop.exit, label %while.body

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end24, label %land.rhs, !llvm.loop !31

if.end24.loopexit.split.loop.exit:                ; preds = %land.rhs
  %8 = trunc i64 %indvars.iv to i32
  br label %if.end24

if.end24:                                         ; preds = %while.body, %if.end24.loopexit.split.loop.exit, %land.lhs.true, %if.then8
  %f.0 = phi i8* [ null, %land.lhs.true ], [ null, %if.then8 ], [ %arrayidx12, %if.end24.loopexit.split.loop.exit ], [ %arrayidx12, %while.body ]
  %f_len.1 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.then8 ], [ %8, %if.end24.loopexit.split.loop.exit ], [ %6, %while.body ]
  %and = and i64 %flags, 15
  %cmp25 = icmp eq i64 %and, 1
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 5
  %9 = load i32, i32* %tm_year, align 4, !tbaa !16
  %add28 = add nsw i32 %9, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 4
  %10 = load i32, i32* %tm_mon, align 8, !tbaa !18
  %add29 = add nsw i32 %10, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 3
  %11 = load i32, i32* %tm_mday, align 4, !tbaa !19
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 2
  %12 = load i32, i32* %tm_hour, align 8, !tbaa !20
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 1
  %13 = load i32, i32* %tm_min, align 4, !tbaa !21
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 0
  %14 = load i32, i32* %tm_sec, align 8, !tbaa !22
  %cond31 = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 noundef %add28, i32 noundef %add29, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %f_len.1, i8* noundef %f.0, i8* noundef %cond31) #8
  br label %cleanup

if.else:                                          ; preds = %if.end24
  %tm_mon35 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 4
  %15 = load i32, i32* %tm_mon35, align 8, !tbaa !18
  %idxprom36 = sext i32 %15 to i64
  %arraydecay = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @_asn1_mon, i64 0, i64 %idxprom36, i64 0
  %tm_mday38 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 3
  %16 = load i32, i32* %tm_mday38, align 4, !tbaa !19
  %tm_hour39 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 2
  %17 = load i32, i32* %tm_hour39, align 8, !tbaa !20
  %tm_min40 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 1
  %18 = load i32, i32* %tm_min40, align 4, !tbaa !21
  %tm_sec41 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 0
  %19 = load i32, i32* %tm_sec41, align 8, !tbaa !22
  %tm_year42 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 5
  %20 = load i32, i32* %tm_year42, align 4, !tbaa !16
  %add43 = add nsw i32 %20, 1900
  %cond45 = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %call46 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %arraydecay, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %f_len.1, i8* noundef %f.0, i32 noundef %add43, i8* noundef %cond45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27
  %retval.0.in.in = phi i32 [ %call32, %if.then27 ], [ %call46, %if.else ]
  %retval.0.in = icmp sgt i32 %retval.0.in.in, 0
  %retval.0 = zext i1 %retval.0.in to i32
  br label %cleanup84

if.else50:                                        ; preds = %if.end
  %and51 = and i64 %flags, 15
  %cmp52 = icmp eq i64 %and51, 1
  br i1 %cmp52, label %if.then54, label %if.else68

if.then54:                                        ; preds = %if.else50
  %tm_year55 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 5
  %21 = load i32, i32* %tm_year55, align 4, !tbaa !16
  %add56 = add nsw i32 %21, 1900
  %tm_mon57 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 4
  %22 = load i32, i32* %tm_mon57, align 8, !tbaa !18
  %add58 = add nsw i32 %22, 1
  %tm_mday59 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 3
  %23 = load i32, i32* %tm_mday59, align 4, !tbaa !19
  %tm_hour60 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 2
  %24 = load i32, i32* %tm_hour60, align 8, !tbaa !20
  %tm_min61 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 1
  %25 = load i32, i32* %tm_min61, align 4, !tbaa !21
  %tm_sec62 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 0
  %26 = load i32, i32* %tm_sec62, align 8, !tbaa !22
  %cond64 = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %call65 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 noundef %add56, i32 noundef %add58, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i8* noundef %cond64) #8
  %cmp66 = icmp sgt i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  br label %cleanup84

if.else68:                                        ; preds = %if.else50
  %tm_mon69 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 4
  %27 = load i32, i32* %tm_mon69, align 8, !tbaa !18
  %idxprom70 = sext i32 %27 to i64
  %arraydecay72 = getelementptr inbounds [12 x [4 x i8]], [12 x [4 x i8]]* @_asn1_mon, i64 0, i64 %idxprom70, i64 0
  %tm_mday73 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 3
  %28 = load i32, i32* %tm_mday73, align 4, !tbaa !19
  %tm_hour74 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 2
  %29 = load i32, i32* %tm_hour74, align 8, !tbaa !20
  %tm_min75 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 1
  %30 = load i32, i32* %tm_min75, align 4, !tbaa !21
  %tm_sec76 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 0
  %31 = load i32, i32* %tm_sec76, align 8, !tbaa !22
  %tm_year77 = getelementptr inbounds %struct.tm, %struct.tm* %stm, i64 0, i32 5
  %32 = load i32, i32* %tm_year77, align 4, !tbaa !16
  %add78 = add nsw i32 %32, 1900
  %cond80 = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %call81 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %arraydecay72, i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %add78, i8* noundef %cond80) #8
  %cmp82 = icmp sgt i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  br label %cleanup84

cleanup84:                                        ; preds = %if.else68, %if.then54, %cleanup, %if.then
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %conv67, %if.then54 ], [ %conv83, %if.else68 ], [ %cond, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.1
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef %s, i64 noundef %t) local_unnamed_addr #1 {
entry:
  %t.addr = alloca i64, align 8
  %stm = alloca %struct.tm, align 8
  %ttm = alloca %struct.tm, align 8
  %day = alloca i32, align 4
  %sec = alloca i32, align 4
  store i64 %t, i64* %t.addr, align 8, !tbaa !27
  %0 = bitcast %struct.tm* %stm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %1 = bitcast %struct.tm* %ttm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #9
  %2 = bitcast i32* %day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %3 = bitcast i32* %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %call = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %s, %struct.tm* noundef nonnull %stm) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %t.addr, %struct.tm* noundef nonnull %ttm) #8
  %tobool2.not = icmp eq %struct.tm* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @OPENSSL_gmtime_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.tm* noundef nonnull %ttm, %struct.tm* noundef nonnull %stm) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end4
  %4 = load i32, i32* %day, align 4, !tbaa !15
  %cmp = icmp sgt i32 %4, 0
  %5 = load i32, i32* %sec, align 4
  %cmp9 = icmp sgt i32 %5, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end8
  %cmp12 = icmp slt i32 %4, 0
  %cmp14 = icmp slt i32 %5, 0
  %or.cond20 = select i1 %cmp12, i1 true, i1 %cmp14
  %. = sext i1 %or.cond20 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end4 ], [ 1, %if.end8 ], [ %., %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_normalize(%struct.asn1_string_st* noundef %t) local_unnamed_addr #1 {
entry:
  %tm = alloca %struct.tm, align 8
  %0 = bitcast %struct.tm* %tm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %call = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %t, %struct.tm* noundef nonnull %tm) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.asn1_string_st* @ossl_asn1_time_from_tm(%struct.asn1_string_st* noundef %t, %struct.tm* noundef nonnull %tm, i32 noundef -1) #10
  %cmp = icmp ne %struct.asn1_string_st* %call1, null
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef %a, %struct.asn1_string_st* noundef %b) local_unnamed_addr #1 {
entry:
  %day = alloca i32, align 4
  %sec = alloca i32, align 4
  %0 = bitcast i32* %day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %call = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef %b, %struct.asn1_string_st* noundef %a) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %day, align 4, !tbaa !15
  %cmp = icmp sgt i32 %2, 0
  %3 = load i32, i32* %sec, align 4
  %cmp1 = icmp sgt i32 %3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp slt i32 %2, 0
  %cmp6 = icmp slt i32 %3, 0
  %or.cond10 = select i1 %cmp4, i1 true, i1 %cmp6
  %. = sext i1 %or.cond10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ 1, %if.end ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !10, i64 16}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !9, i64 8}
!14 = !{!7, !7, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !6, i64 20}
!17 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !9, i64 48}
!18 = !{!17, !6, i64 16}
!19 = !{!17, !6, i64 12}
!20 = !{!17, !6, i64 8}
!21 = !{!17, !6, i64 4}
!22 = !{!17, !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 40, i64 8, !27, i64 48, i64 8, !28}
!27 = !{!10, !10, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!17, !6, i64 28}
!30 = !{!17, !6, i64 24}
!31 = distinct !{!31, !24}
