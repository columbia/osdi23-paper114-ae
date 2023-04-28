; ModuleID = 'crypto/bn/bn_exp2.c'
source_filename = "crypto/bn/bn_exp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }

@.str = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_exp2.c\00", align 1
@__func__.BN_mod_exp2_mont = private unnamed_addr constant [17 x i8] c"BN_mod_exp2_mont\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_exp2_mont(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %a1, %struct.bignum_st* noundef %p1, %struct.bignum_st* noundef %a2, %struct.bignum_st* noundef %p2, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx, %struct.bn_mont_ctx_st* noundef %in_mont) local_unnamed_addr #0 {
entry:
  %val1 = alloca [32 x %struct.bignum_st*], align 16
  %val2 = alloca [32 x %struct.bignum_st*], align 16
  %0 = bitcast [32 x %struct.bignum_st*]* %val1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #3
  %1 = bitcast [32 x %struct.bignum_st*]* %val2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #3
  %d1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %2 = load i64*, i64** %d1, align 8, !tbaa !4
  %3 = load i64, i64* %2, align 8, !tbaa !10
  %and = and i64 %3, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BN_mod_exp2_mont, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p1) #4
  %call2 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p2) #4
  %cmp = icmp eq i32 %call, 0
  %cmp3 = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %rr, i64 noundef 1) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %call, %call2
  %cond = select i1 %cmp7, i32 %call, i32 %call2
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %arrayidx11 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val1, i64 0, i64 0
  store %struct.bignum_st* %call10, %struct.bignum_st** %arrayidx11, align 16, !tbaa !12
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %arrayidx13 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val2, i64 0, i64 0
  store %struct.bignum_st* %call12, %struct.bignum_st** %arrayidx13, align 16, !tbaa !12
  %cmp15 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end6
  %cmp18.not = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp18.not, label %if.else, label %if.end28

if.else:                                          ; preds = %if.end17
  %call20 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #4
  %cmp21 = icmp eq %struct.bn_mont_ctx_st* %call20, null
  br i1 %cmp21, label %if.then260, label %if.end23

if.end23:                                         ; preds = %if.else
  %call24 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call20, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then260, label %if.end28

if.end28:                                         ; preds = %if.end17, %if.end23
  %mont.0 = phi %struct.bn_mont_ctx_st* [ %call20, %if.end23 ], [ %in_mont, %if.end17 ]
  %cmp29 = icmp sgt i32 %call, 671
  br i1 %cmp29, label %cond.end44, label %cond.false31

cond.false31:                                     ; preds = %if.end28
  %cmp32 = icmp sgt i32 %call, 239
  br i1 %cmp32, label %cond.end44, label %cond.false34

cond.false34:                                     ; preds = %cond.false31
  %cmp35 = icmp sgt i32 %call, 79
  br i1 %cmp35, label %cond.end44, label %cond.false37

cond.false37:                                     ; preds = %cond.false34
  %cmp38 = icmp sgt i32 %call, 23
  %cond39 = select i1 %cmp38, i32 3, i32 1
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false31, %cond.false34, %cond.false37, %if.end28
  %cond45 = phi i32 [ 6, %if.end28 ], [ 5, %cond.false31 ], [ %cond39, %cond.false37 ], [ 4, %cond.false34 ]
  %cmp46 = icmp sgt i32 %call2, 671
  br i1 %cmp46, label %cond.end61, label %cond.false48

cond.false48:                                     ; preds = %cond.end44
  %cmp49 = icmp sgt i32 %call2, 239
  br i1 %cmp49, label %cond.end61, label %cond.false51

cond.false51:                                     ; preds = %cond.false48
  %cmp52 = icmp sgt i32 %call2, 79
  br i1 %cmp52, label %cond.end61, label %cond.false54

cond.false54:                                     ; preds = %cond.false51
  %cmp55 = icmp sgt i32 %call2, 23
  %cond56 = select i1 %cmp55, i32 3, i32 1
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false48, %cond.false51, %cond.false54, %cond.end44
  %cond62 = phi i32 [ 6, %cond.end44 ], [ 5, %cond.false48 ], [ %cond56, %cond.false54 ], [ 4, %cond.false51 ]
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a1, i64 0, i32 3
  %4 = load i32, i32* %neg, align 8, !tbaa !13
  %tobool63.not = icmp eq i32 %4, 0
  br i1 %tobool63.not, label %lor.lhs.false, label %if.then66

lor.lhs.false:                                    ; preds = %cond.end61
  %call64 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a1, %struct.bignum_st* noundef nonnull %m) #4
  %cmp65 = icmp sgt i32 %call64, -1
  br i1 %cmp65, label %if.then66, label %if.end74

if.then66:                                        ; preds = %lor.lhs.false, %cond.end61
  %call68 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef nonnull %a1, %struct.bignum_st* noundef nonnull %m, %struct.bignum_ctx* noundef %ctx) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.then66, %lor.lhs.false
  %a_mod_m.0 = phi %struct.bignum_st* [ %a1, %lor.lhs.false ], [ %call10, %if.then66 ]
  %call75 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a_mod_m.0) #4
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end74
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rr) #4
  br label %err

if.end78:                                         ; preds = %if.end74
  %call80 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %a_mod_m.0, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %if.end83

if.end83:                                         ; preds = %if.end78
  %cmp84 = icmp ugt i32 %cond45, 1
  br i1 %cmp84, label %if.then85, label %if.end106

if.then85:                                        ; preds = %if.end83
  %call88 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %if.end91

if.end91:                                         ; preds = %if.then85
  %sub = add nsw i32 %cond45, -1
  %shl = shl nuw nsw i32 1, %sub
  %wide.trip.count = zext i32 %shl to i64
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false96
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end106, label %for.body, !llvm.loop !14

for.body:                                         ; preds = %if.end91, %for.cond
  %indvars.iv = phi i64 [ 1, %if.end91 ], [ %indvars.iv.next, %for.cond ]
  %call93 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %arrayidx94 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val1, i64 0, i64 %indvars.iv
  store %struct.bignum_st* %call93, %struct.bignum_st** %arrayidx94, align 8, !tbaa !12
  %cmp95 = icmp eq %struct.bignum_st* %call93, null
  br i1 %cmp95, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %for.body
  %5 = add nsw i64 %indvars.iv, -1
  %arrayidx101 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val1, i64 0, i64 %5
  %6 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx101, align 8, !tbaa !12
  %call102 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef nonnull %call93, %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %call8, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool103.not = icmp eq i32 %call102, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool103.not, label %err, label %for.cond

if.end106:                                        ; preds = %for.cond, %if.end83
  %neg107 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a2, i64 0, i32 3
  %7 = load i32, i32* %neg107, align 8, !tbaa !13
  %tobool108.not = icmp eq i32 %7, 0
  br i1 %tobool108.not, label %lor.lhs.false109, label %if.then112

lor.lhs.false109:                                 ; preds = %if.end106
  %call110 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a2, %struct.bignum_st* noundef %m) #4
  %cmp111 = icmp sgt i32 %call110, -1
  br i1 %cmp111, label %if.then112, label %if.end120

if.then112:                                       ; preds = %lor.lhs.false109, %if.end106
  %call114 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %a2, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %if.end120

if.end120:                                        ; preds = %if.then112, %lor.lhs.false109
  %a_mod_m.1 = phi %struct.bignum_st* [ %a2, %lor.lhs.false109 ], [ %call12, %if.then112 ]
  %call121 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a_mod_m.1) #4
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.then123

if.then123:                                       ; preds = %if.end120
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %rr) #4
  br label %err

if.end124:                                        ; preds = %if.end120
  %call126 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef %a_mod_m.1, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %if.end129

if.end129:                                        ; preds = %if.end124
  %cmp130 = icmp ugt i32 %cond62, 1
  br i1 %cmp130, label %if.then131, label %if.end160

if.then131:                                       ; preds = %if.end129
  %call134 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef nonnull %call12, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err, label %if.end137

if.end137:                                        ; preds = %if.then131
  %sub138 = add nsw i32 %cond62, -1
  %shl139 = shl nuw i32 1, %sub138
  %cmp141438 = icmp sgt i32 %shl139, 1
  br i1 %cmp141438, label %for.body142.preheader, label %if.end160

for.body142.preheader:                            ; preds = %if.end137
  %wide.trip.count465 = zext i32 %shl139 to i64
  br label %for.body142

for.cond140:                                      ; preds = %lor.lhs.false147
  %exitcond466.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count465
  br i1 %exitcond466.not, label %if.end160, label %for.body142, !llvm.loop !16

for.body142:                                      ; preds = %for.body142.preheader, %for.cond140
  %indvars.iv461 = phi i64 [ 1, %for.body142.preheader ], [ %indvars.iv.next462, %for.cond140 ]
  %call143 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %arrayidx145 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val2, i64 0, i64 %indvars.iv461
  store %struct.bignum_st* %call143, %struct.bignum_st** %arrayidx145, align 8, !tbaa !12
  %cmp146 = icmp eq %struct.bignum_st* %call143, null
  br i1 %cmp146, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %for.body142
  %8 = add nsw i64 %indvars.iv461, -1
  %arrayidx152 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val2, i64 0, i64 %8
  %9 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx152, align 8, !tbaa !12
  %call153 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef nonnull %call143, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %call8, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool154.not = icmp eq i32 %call153, 0
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1
  br i1 %tobool154.not, label %err, label %for.cond140

if.end160:                                        ; preds = %for.cond140, %if.end137, %if.end129
  %call161 = tail call %struct.bignum_st* @BN_value_one() #4
  %call162 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call161, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %err, label %for.cond167.preheader

for.cond167.preheader:                            ; preds = %if.end160
  %cmp168448 = icmp sgt i32 %cond, 0
  br i1 %cmp168448, label %for.body169, label %for.end254

for.body169:                                      ; preds = %for.cond167.preheader, %for.inc252
  %r_is_one.0455 = phi i32 [ %r_is_one.2, %for.inc252 ], [ 1, %for.cond167.preheader ]
  %wvalue2.0454 = phi i32 [ %wvalue2.4, %for.inc252 ], [ 0, %for.cond167.preheader ]
  %wvalue1.0453 = phi i32 [ %wvalue1.4, %for.inc252 ], [ 0, %for.cond167.preheader ]
  %b.0.in451 = phi i32 [ %b.0456, %for.inc252 ], [ %cond, %for.cond167.preheader ]
  %wpos2.0450 = phi i32 [ %wpos2.1, %for.inc252 ], [ 0, %for.cond167.preheader ]
  %wpos1.0449 = phi i32 [ %wpos1.1, %for.inc252 ], [ 0, %for.cond167.preheader ]
  %b.0456 = add nsw i32 %b.0.in451, -1
  %tobool170.not = icmp eq i32 %r_is_one.0455, 0
  br i1 %tobool170.not, label %if.then171, label %if.end176

if.then171:                                       ; preds = %for.body169
  %call172 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call9, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %err, label %if.end176

if.end176:                                        ; preds = %if.then171, %for.body169
  %tobool177.not = icmp eq i32 %wvalue1.0453, 0
  br i1 %tobool177.not, label %if.then178, label %if.end199

if.then178:                                       ; preds = %if.end176
  %call179 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p1, i32 noundef %b.0456) #4
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end199, label %if.then181

if.then181:                                       ; preds = %if.then178
  %sub182 = sub nsw i32 %b.0456, %cond45
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then181
  %i.2.in = phi i32 [ %sub182, %if.then181 ], [ %i.2, %while.cond ]
  %i.2 = add nsw i32 %i.2.in, 1
  %call183 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p1, i32 noundef %i.2) #4
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %while.cond, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %sub186 = add nsw i32 %b.0.in451, -2
  %cmp188.not.not440 = icmp sgt i32 %sub186, %i.2.in
  br i1 %cmp188.not.not440, label %for.body189, label %if.end199

for.body189:                                      ; preds = %while.end, %for.body189
  %i.3442 = phi i32 [ %dec, %for.body189 ], [ %sub186, %while.end ]
  %wvalue1.1441 = phi i32 [ %spec.select, %for.body189 ], [ 1, %while.end ]
  %shl190 = shl i32 %wvalue1.1441, 1
  %call191 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p1, i32 noundef %i.3442) #4
  %tobool192.not = icmp ne i32 %call191, 0
  %inc194 = zext i1 %tobool192.not to i32
  %spec.select = or i32 %shl190, %inc194
  %dec = add nsw i32 %i.3442, -1
  %cmp188.not.not = icmp sgt i32 %dec, %i.2.in
  br i1 %cmp188.not.not, label %for.body189, label %if.end199, !llvm.loop !18

if.end199:                                        ; preds = %for.body189, %while.end, %if.then178, %if.end176
  %wpos1.1 = phi i32 [ %wpos1.0449, %if.end176 ], [ %wpos1.0449, %if.then178 ], [ %i.2, %while.end ], [ %i.2, %for.body189 ]
  %wvalue1.3 = phi i32 [ %wvalue1.0453, %if.end176 ], [ 0, %if.then178 ], [ 1, %while.end ], [ %spec.select, %for.body189 ]
  %tobool200.not = icmp eq i32 %wvalue2.0454, 0
  br i1 %tobool200.not, label %if.then201, label %if.end228

if.then201:                                       ; preds = %if.end199
  %call202 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p2, i32 noundef %b.0456) #4
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end228, label %if.then204

if.then204:                                       ; preds = %if.then201
  %sub205 = sub nsw i32 %b.0456, %cond62
  br label %while.cond207

while.cond207:                                    ; preds = %while.cond207, %if.then204
  %i.4.in = phi i32 [ %sub205, %if.then204 ], [ %i.4, %while.cond207 ]
  %i.4 = add nsw i32 %i.4.in, 1
  %call208 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p2, i32 noundef %i.4) #4
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %while.cond207, label %while.end213, !llvm.loop !19

while.end213:                                     ; preds = %while.cond207
  %sub214 = add nsw i32 %b.0.in451, -2
  %cmp216.not.not443 = icmp sgt i32 %sub214, %i.4.in
  br i1 %cmp216.not.not443, label %for.body217, label %if.end228

for.body217:                                      ; preds = %while.end213, %for.body217
  %i.5445 = phi i32 [ %dec225, %for.body217 ], [ %sub214, %while.end213 ]
  %wvalue2.1444 = phi i32 [ %spec.select426, %for.body217 ], [ 1, %while.end213 ]
  %shl218 = shl i32 %wvalue2.1444, 1
  %call219 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p2, i32 noundef %i.5445) #4
  %tobool220.not = icmp ne i32 %call219, 0
  %inc222 = zext i1 %tobool220.not to i32
  %spec.select426 = or i32 %shl218, %inc222
  %dec225 = add nsw i32 %i.5445, -1
  %cmp216.not.not = icmp sgt i32 %dec225, %i.4.in
  br i1 %cmp216.not.not, label %for.body217, label %if.end228, !llvm.loop !20

if.end228:                                        ; preds = %for.body217, %while.end213, %if.then201, %if.end199
  %wpos2.1 = phi i32 [ %wpos2.0450, %if.end199 ], [ %wpos2.0450, %if.then201 ], [ %i.4, %while.end213 ], [ %i.4, %for.body217 ]
  %wvalue2.3 = phi i32 [ %wvalue2.0454, %if.end199 ], [ 0, %if.then201 ], [ 1, %while.end213 ], [ %spec.select426, %for.body217 ]
  %tobool229.not = icmp eq i32 %wvalue1.3, 0
  br i1 %tobool229.not, label %if.end239, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %if.end228
  %cmp231 = icmp eq i32 %b.0456, %wpos1.1
  br i1 %cmp231, label %if.then232, label %if.end239

if.then232:                                       ; preds = %land.lhs.true230
  %shr = ashr i32 %wvalue1.3, 1
  %idxprom233 = sext i32 %shr to i64
  %arrayidx234 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val1, i64 0, i64 %idxprom233
  %10 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx234, align 8, !tbaa !12
  %call235 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %10, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %err, label %if.end239

if.end239:                                        ; preds = %if.then232, %land.lhs.true230, %if.end228
  %wvalue1.4 = phi i32 [ %wvalue1.3, %land.lhs.true230 ], [ 0, %if.end228 ], [ 0, %if.then232 ]
  %r_is_one.1 = phi i32 [ %r_is_one.0455, %land.lhs.true230 ], [ %r_is_one.0455, %if.end228 ], [ 0, %if.then232 ]
  %tobool240.not = icmp eq i32 %wvalue2.3, 0
  br i1 %tobool240.not, label %for.inc252, label %land.lhs.true241

land.lhs.true241:                                 ; preds = %if.end239
  %cmp242 = icmp eq i32 %b.0456, %wpos2.1
  br i1 %cmp242, label %if.then243, label %for.inc252

if.then243:                                       ; preds = %land.lhs.true241
  %shr244 = ashr i32 %wvalue2.3, 1
  %idxprom245 = sext i32 %shr244 to i64
  %arrayidx246 = getelementptr inbounds [32 x %struct.bignum_st*], [32 x %struct.bignum_st*]* %val2, i64 0, i64 %idxprom245
  %11 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx246, align 8, !tbaa !12
  %call247 = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %11, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %err, label %for.inc252

for.inc252:                                       ; preds = %if.then243, %if.end239, %land.lhs.true241
  %wvalue2.4 = phi i32 [ %wvalue2.3, %land.lhs.true241 ], [ 0, %if.end239 ], [ 0, %if.then243 ]
  %r_is_one.2 = phi i32 [ %r_is_one.1, %land.lhs.true241 ], [ %r_is_one.1, %if.end239 ], [ 0, %if.then243 ]
  %cmp168 = icmp sgt i32 %b.0.in451, 1
  br i1 %cmp168, label %for.body169, label %for.end254, !llvm.loop !21

for.end254:                                       ; preds = %for.inc252, %for.cond167.preheader
  %call255 = tail call i32 @BN_from_montgomery(%struct.bignum_st* noundef %rr, %struct.bignum_st* noundef %call9, %struct.bn_mont_ctx_st* noundef nonnull %mont.0, %struct.bignum_ctx* noundef %ctx) #4
  %tobool256.not = icmp ne i32 %call255, 0
  %spec.select427 = zext i1 %tobool256.not to i32
  br label %err

err:                                              ; preds = %for.body, %lor.lhs.false96, %for.body142, %lor.lhs.false147, %if.then243, %if.then232, %if.then171, %for.end254, %if.end160, %if.then131, %if.end124, %if.then112, %if.then85, %if.end78, %if.then66, %if.end6, %if.then123, %if.then77
  %ret.0 = phi i32 [ 0, %if.end6 ], [ 1, %if.then77 ], [ 1, %if.then123 ], [ 0, %if.end160 ], [ 0, %if.then131 ], [ 0, %if.end124 ], [ 0, %if.then112 ], [ 0, %if.then85 ], [ 0, %if.end78 ], [ 0, %if.then66 ], [ %spec.select427, %for.end254 ], [ 0, %if.then171 ], [ 0, %if.then232 ], [ 0, %if.then243 ], [ 0, %lor.lhs.false147 ], [ 0, %for.body142 ], [ 0, %lor.lhs.false96 ], [ 0, %for.body ]
  %mont.1 = phi %struct.bn_mont_ctx_st* [ null, %if.end6 ], [ %mont.0, %if.then77 ], [ %mont.0, %if.then123 ], [ %mont.0, %if.end160 ], [ %mont.0, %if.then131 ], [ %mont.0, %if.end124 ], [ %mont.0, %if.then112 ], [ %mont.0, %if.then85 ], [ %mont.0, %if.end78 ], [ %mont.0, %if.then66 ], [ %mont.0, %for.end254 ], [ %mont.0, %if.then171 ], [ %mont.0, %if.then232 ], [ %mont.0, %if.then243 ], [ %mont.0, %lor.lhs.false147 ], [ %mont.0, %for.body142 ], [ %mont.0, %lor.lhs.false96 ], [ %mont.0, %for.body ]
  %cmp259 = icmp eq %struct.bn_mont_ctx_st* %in_mont, null
  br i1 %cmp259, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.else, %if.end23, %err
  %mont.1433 = phi %struct.bn_mont_ctx_st* [ %mont.1, %err ], [ %call20, %if.end23 ], [ null, %if.else ]
  %ret.0432 = phi i32 [ %ret.0, %err ], [ 0, %if.end23 ], [ 0, %if.else ]
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.1433) #4
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %err
  %ret.0431 = phi i32 [ %ret.0432, %if.then260 ], [ %ret.0, %err ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end261, %if.then4, %if.then
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %ret.0431, %if.end261 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #2

declare i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_to_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_from_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!5, !9, i64 16}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
