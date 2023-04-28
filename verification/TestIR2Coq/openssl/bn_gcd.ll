; ModuleID = 'crypto/bn/bn_gcd.c'
source_filename = "crypto/bn/bn_gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_gcd.c\00", align 1
@__func__.BN_mod_inverse = private unnamed_addr constant [15 x i8] c"BN_mod_inverse\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @int_bn_mod_inverse(%struct.bignum_st* noundef %in, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef %ctx, i32* nocapture noundef writeonly %pnoinv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %n, i64 noundef 1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %n) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %pnoinv, align 4, !tbaa !4
  br label %cleanup283

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %pnoinv, align 4, !tbaa !4
  %call3 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %a, i32 noundef 4) #4
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %lor.lhs.false4, label %if.then7

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %n, i32 noundef 4) #4
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  %call8 = tail call fastcc %struct.bignum_st* @bn_mod_inverse_no_branch(%struct.bignum_st* noundef %in, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef %ctx, i32* noundef nonnull %pnoinv) #5
  br label %cleanup283

if.end9:                                          ; preds = %lor.lhs.false4
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call11 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end9
  %cmp20 = icmp eq %struct.bignum_st* %in, null
  br i1 %cmp20, label %if.end23, label %if.end26

if.end23:                                         ; preds = %if.end19
  %call22 = tail call %struct.bignum_st* @BN_new() #4
  %cmp24 = icmp eq %struct.bignum_st* %call22, null
  br i1 %cmp24, label %err, label %if.end26

if.end26:                                         ; preds = %if.end19, %if.end23
  %R.0459 = phi %struct.bignum_st* [ %call22, %if.end23 ], [ %in, %if.end19 ]
  %call27 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call12, i64 noundef 1) #4
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call15) #4
  %call28 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %a) #4
  %cmp29 = icmp eq %struct.bignum_st* %call28, null
  br i1 %cmp29, label %err, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call32 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %n) #4
  %cmp33 = icmp eq %struct.bignum_st* %call32, null
  br i1 %cmp33, label %err, label %if.end35

if.end35:                                         ; preds = %if.end31
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call10, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !8
  %neg36 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call11, i64 0, i32 3
  %0 = load i32, i32* %neg36, align 8, !tbaa !8
  %tobool37.not = icmp eq i32 %0, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %if.then41

lor.lhs.false38:                                  ; preds = %if.end35
  %call39 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %call10) #4
  %cmp40 = icmp sgt i32 %call39, -1
  br i1 %cmp40, label %if.then41, label %if.end46

if.then41:                                        ; preds = %lor.lhs.false38, %if.end35
  %call42 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %call10, %struct.bignum_ctx* noundef %ctx) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.then41, %lor.lhs.false38
  %call47 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %n) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.else126, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end46
  %call49 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %n) #4
  %cmp50 = icmp slt i32 %call49, 2049
  br i1 %cmp50, label %while.cond.preheader, label %if.else126

while.cond.preheader:                             ; preds = %land.lhs.true
  %call52492 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call11) #4
  %tobool53.not493 = icmp eq i32 %call52492, 0
  br i1 %tobool53.not493, label %while.cond54, label %if.then251

while.cond54:                                     ; preds = %while.cond.preheader, %while.cond54.backedge
  %shift.0 = phi i32 [ %shift.0.be, %while.cond54.backedge ], [ 0, %while.cond.preheader ]
  %call55 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %call11, i32 noundef %shift.0) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %while.body58, label %while.end

while.body58:                                     ; preds = %while.cond54
  %inc = add nuw nsw i32 %shift.0, 1
  %call59 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call12) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %if.then61

if.then61:                                        ; preds = %while.body58
  %call62 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call12, %struct.bignum_st* noundef %call12, %struct.bignum_st* noundef %n) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end66

if.end66:                                         ; preds = %if.then61, %while.body58
  %call67 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call12, %struct.bignum_st* noundef %call12) #4
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %while.cond54.backedge

while.cond54.backedge:                            ; preds = %if.end66, %if.end124
  %shift.0.be = phi i32 [ %inc, %if.end66 ], [ 0, %if.end124 ]
  br label %while.cond54, !llvm.loop !11

while.end:                                        ; preds = %while.cond54
  %cmp71.not = icmp eq i32 %shift.0, 0
  br i1 %cmp71.not, label %while.cond78.preheader, label %if.then72

if.then72:                                        ; preds = %while.end
  %call73 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call11, i32 noundef %shift.0) #4
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %while.cond78.preheader

while.cond78.preheader:                           ; preds = %if.then72, %while.end
  br label %while.cond78

while.cond78:                                     ; preds = %while.cond78.preheader, %if.end91
  %shift.1 = phi i32 [ %inc83, %if.end91 ], [ 0, %while.cond78.preheader ]
  %call79 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %call10, i32 noundef %shift.1) #4
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %while.body82, label %while.end96

while.body82:                                     ; preds = %while.cond78
  %inc83 = add nuw nsw i32 %shift.1, 1
  %call84 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %call15) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %if.then86

if.then86:                                        ; preds = %while.body82
  %call87 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %n) #4
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end91

if.end91:                                         ; preds = %if.then86, %while.body82
  %call92 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15) #4
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %while.cond78, !llvm.loop !13

while.end96:                                      ; preds = %while.cond78
  %cmp97.not = icmp eq i32 %shift.1, 0
  br i1 %cmp97.not, label %if.end103, label %if.then98

if.then98:                                        ; preds = %while.end96
  %call99 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, i32 noundef %shift.1) #4
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end103

if.end103:                                        ; preds = %if.then98, %while.end96
  %call104 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call10) #4
  %cmp105 = icmp sgt i32 %call104, -1
  br i1 %cmp105, label %if.then106, label %if.else115

if.then106:                                       ; preds = %if.end103
  %call107 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call12, %struct.bignum_st* noundef %call12, %struct.bignum_st* noundef %call15) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %if.end110

if.end110:                                        ; preds = %if.then106
  %call111 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %call10) #4
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %if.end124

if.else115:                                       ; preds = %if.end103
  %call116 = tail call i32 @BN_uadd(%struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call15, %struct.bignum_st* noundef %call12) #4
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %if.end119

if.end119:                                        ; preds = %if.else115
  %call120 = tail call i32 @BN_usub(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call11) #4
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %if.end124

if.end124:                                        ; preds = %if.end119, %if.end110
  %call52 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call11) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %while.cond54.backedge, label %if.then251

if.else126:                                       ; preds = %land.lhs.true, %if.end46
  %call128494 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call11) #4
  %tobool129.not495 = icmp eq i32 %call128494, 0
  br i1 %tobool129.not495, label %while.body131.lr.ph, label %if.then251

while.body131.lr.ph:                              ; preds = %if.else126
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call13, i64 0, i32 1
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call13, i64 0, i32 0
  br label %while.body131

while.body131:                                    ; preds = %while.body131.lr.ph, %cleanup245
  %sign.0501.neg = phi i32 [ 1, %while.body131.lr.ph ], [ %sign.0501, %cleanup245 ]
  %sign.0501 = phi i32 [ -1, %while.body131.lr.ph ], [ %sign.0501.neg, %cleanup245 ]
  %A.0500 = phi %struct.bignum_st* [ %call10, %while.body131.lr.ph ], [ %B.0499, %cleanup245 ]
  %B.0499 = phi %struct.bignum_st* [ %call11, %while.body131.lr.ph ], [ %M.0498, %cleanup245 ]
  %M.0498 = phi %struct.bignum_st* [ %call14, %while.body131.lr.ph ], [ %Y.0497, %cleanup245 ]
  %Y.0497 = phi %struct.bignum_st* [ %call15, %while.body131.lr.ph ], [ %X.0496, %cleanup245 ]
  %X.0496 = phi %struct.bignum_st* [ %call12, %while.body131.lr.ph ], [ %A.0500, %cleanup245 ]
  %call132 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %A.0500) #4
  %call133 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %B.0499) #4
  %cmp134 = icmp eq i32 %call132, %call133
  br i1 %cmp134, label %if.then135, label %if.else144

if.then135:                                       ; preds = %while.body131
  %call136 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call13, i64 noundef 1) #4
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %if.end139

if.end139:                                        ; preds = %if.then135
  %call140 = tail call i32 @BN_sub(%struct.bignum_st* noundef %M.0498, %struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %B.0499) #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %if.end197

if.else144:                                       ; preds = %while.body131
  %call145 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %A.0500) #4
  %call146 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %B.0499) #4
  %add = add nsw i32 %call146, 1
  %cmp147 = icmp eq i32 %call145, %add
  br i1 %cmp147, label %if.then148, label %if.else191

if.then148:                                       ; preds = %if.else144
  %call149 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef nonnull %call16, %struct.bignum_st* noundef %B.0499) #4
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %if.end152

if.end152:                                        ; preds = %if.then148
  %call153 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef nonnull %call16) #4
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.then155, label %if.else164

if.then155:                                       ; preds = %if.end152
  %call156 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call13, i64 noundef 1) #4
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %if.end159

if.end159:                                        ; preds = %if.then155
  %call160 = tail call i32 @BN_sub(%struct.bignum_st* noundef %M.0498, %struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %B.0499) #4
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %if.end197

if.else164:                                       ; preds = %if.end152
  %call165 = tail call i32 @BN_sub(%struct.bignum_st* noundef %M.0498, %struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef nonnull %call16) #4
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %err, label %if.end168

if.end168:                                        ; preds = %if.else164
  %call169 = tail call i32 @BN_add(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef nonnull %call16, %struct.bignum_st* noundef %B.0499) #4
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %if.end172

if.end172:                                        ; preds = %if.end168
  %call173 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %call13) #4
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.then175, label %if.else180

if.then175:                                       ; preds = %if.end172
  %call176 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call13, i64 noundef 2) #4
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %if.end197

if.else180:                                       ; preds = %if.end172
  %call181 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call13, i64 noundef 3) #4
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %err, label %if.end184

if.end184:                                        ; preds = %if.else180
  %call185 = tail call i32 @BN_sub(%struct.bignum_st* noundef %M.0498, %struct.bignum_st* noundef %M.0498, %struct.bignum_st* noundef %B.0499) #4
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %err, label %if.end197

if.else191:                                       ; preds = %if.else144
  %call192 = tail call i32 @BN_div(%struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %M.0498, %struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %B.0499, %struct.bignum_ctx* noundef %ctx) #4
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %err, label %if.end197

if.end197:                                        ; preds = %if.then175, %if.end184, %if.end159, %if.else191, %if.end139
  %call198 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call13) #4
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.else205, label %if.then200

if.then200:                                       ; preds = %if.end197
  %call201 = tail call i32 @BN_add(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %X.0496, %struct.bignum_st* noundef %Y.0497) #4
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %cleanup245

if.else205:                                       ; preds = %if.end197
  %call206 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %call13, i64 noundef 2) #4
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.else213, label %if.then208

if.then208:                                       ; preds = %if.else205
  %call209 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %X.0496) #4
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %err, label %if.end239

if.else213:                                       ; preds = %if.else205
  %call214 = tail call i32 @BN_is_word(%struct.bignum_st* noundef %call13, i64 noundef 4) #4
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.else221, label %if.then216

if.then216:                                       ; preds = %if.else213
  %call217 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %X.0496, i32 noundef 2) #4
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %err, label %if.end239

if.else221:                                       ; preds = %if.else213
  %1 = load i32, i32* %top, align 8, !tbaa !14
  %cmp222 = icmp eq i32 %1, 1
  br i1 %cmp222, label %if.then223, label %if.else232

if.then223:                                       ; preds = %if.else221
  %call224 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %X.0496) #4
  %tobool225.not = icmp eq %struct.bignum_st* %call224, null
  br i1 %tobool225.not, label %err, label %if.end227

if.end227:                                        ; preds = %if.then223
  %2 = load i64*, i64** %d, align 8, !tbaa !15
  %3 = load i64, i64* %2, align 8, !tbaa !16
  %call228 = tail call i32 @BN_mul_word(%struct.bignum_st* noundef %A.0500, i64 noundef %3) #4
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %err, label %if.end239

if.else232:                                       ; preds = %if.else221
  %call233 = tail call i32 @BN_mul(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef %X.0496, %struct.bignum_ctx* noundef %ctx) #4
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %if.end239

if.end239:                                        ; preds = %if.then216, %if.else232, %if.end227, %if.then208
  %call240 = tail call i32 @BN_add(%struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %A.0500, %struct.bignum_st* noundef %Y.0497) #4
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %err, label %cleanup245

cleanup245:                                       ; preds = %if.then200, %if.end239
  %call128 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %M.0498) #4
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %while.body131, label %if.end249

if.end249:                                        ; preds = %cleanup245
  %cmp250 = icmp slt i32 %sign.0501.neg, 0
  br i1 %cmp250, label %if.then251, label %if.end256

if.then251:                                       ; preds = %if.end124, %if.else126, %while.cond.preheader, %if.end249
  %A.2483 = phi %struct.bignum_st* [ %B.0499, %if.end249 ], [ %call10, %while.cond.preheader ], [ %call10, %if.else126 ], [ %call10, %if.end124 ]
  %Y.2480 = phi %struct.bignum_st* [ %X.0496, %if.end249 ], [ %call15, %while.cond.preheader ], [ %call15, %if.else126 ], [ %call15, %if.end124 ]
  %call252 = tail call i32 @BN_sub(%struct.bignum_st* noundef %Y.2480, %struct.bignum_st* noundef %n, %struct.bignum_st* noundef %Y.2480) #4
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %err, label %if.end256

if.end256:                                        ; preds = %if.then251, %if.end249
  %A.2482 = phi %struct.bignum_st* [ %A.2483, %if.then251 ], [ %B.0499, %if.end249 ]
  %Y.2481 = phi %struct.bignum_st* [ %Y.2480, %if.then251 ], [ %X.0496, %if.end249 ]
  %call257 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %A.2482) #4
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.else276, label %if.then259

if.then259:                                       ; preds = %if.end256
  %neg260 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %Y.2481, i64 0, i32 3
  %4 = load i32, i32* %neg260, align 8, !tbaa !8
  %tobool261.not = icmp eq i32 %4, 0
  br i1 %tobool261.not, label %land.lhs.true262, label %if.else270

land.lhs.true262:                                 ; preds = %if.then259
  %call263 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %Y.2481, %struct.bignum_st* noundef %n) #4
  %cmp264 = icmp slt i32 %call263, 0
  br i1 %cmp264, label %if.then265, label %if.else270

if.then265:                                       ; preds = %land.lhs.true262
  %call266 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %R.0459, %struct.bignum_st* noundef nonnull %Y.2481) #4
  %tobool267.not = icmp eq %struct.bignum_st* %call266, null
  br i1 %tobool267.not, label %err, label %if.end277

if.else270:                                       ; preds = %land.lhs.true262, %if.then259
  %call271 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %R.0459, %struct.bignum_st* noundef nonnull %Y.2481, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef %ctx) #4
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %err, label %if.end277

if.else276:                                       ; preds = %if.end256
  store i32 1, i32* %pnoinv, align 4, !tbaa !4
  br label %err

if.end277:                                        ; preds = %if.then265, %if.else270
  br label %err

err:                                              ; preds = %if.end119, %if.else115, %if.end110, %if.then106, %if.then98, %if.then72, %if.end66, %if.then61, %if.end91, %if.then86, %if.end239, %if.else232, %if.end227, %if.then223, %if.then216, %if.then208, %if.then200, %if.else191, %if.end184, %if.else180, %if.then175, %if.end168, %if.else164, %if.end159, %if.then155, %if.then148, %if.end139, %if.then135, %if.else270, %if.then265, %if.then251, %if.then41, %if.end31, %if.end26, %if.end23, %if.end9, %if.end277, %if.else276
  %R.1 = phi %struct.bignum_st* [ null, %if.end9 ], [ null, %if.end23 ], [ %R.0459, %if.end26 ], [ %R.0459, %if.end31 ], [ %R.0459, %if.end277 ], [ %R.0459, %if.else270 ], [ %R.0459, %if.then265 ], [ %R.0459, %if.else276 ], [ %R.0459, %if.then251 ], [ %R.0459, %if.then41 ], [ %R.0459, %if.then135 ], [ %R.0459, %if.end139 ], [ %R.0459, %if.then148 ], [ %R.0459, %if.then155 ], [ %R.0459, %if.end159 ], [ %R.0459, %if.else164 ], [ %R.0459, %if.end168 ], [ %R.0459, %if.then175 ], [ %R.0459, %if.else180 ], [ %R.0459, %if.end184 ], [ %R.0459, %if.else191 ], [ %R.0459, %if.then200 ], [ %R.0459, %if.then208 ], [ %R.0459, %if.then216 ], [ %R.0459, %if.then223 ], [ %R.0459, %if.end227 ], [ %R.0459, %if.else232 ], [ %R.0459, %if.end239 ], [ %R.0459, %if.then86 ], [ %R.0459, %if.end91 ], [ %R.0459, %if.then61 ], [ %R.0459, %if.end66 ], [ %R.0459, %if.then72 ], [ %R.0459, %if.then98 ], [ %R.0459, %if.then106 ], [ %R.0459, %if.end110 ], [ %R.0459, %if.else115 ], [ %R.0459, %if.end119 ]
  %ret.0 = phi %struct.bignum_st* [ null, %if.end9 ], [ null, %if.end23 ], [ null, %if.end26 ], [ null, %if.end31 ], [ %R.0459, %if.end277 ], [ null, %if.else270 ], [ null, %if.then265 ], [ null, %if.else276 ], [ null, %if.then251 ], [ null, %if.then41 ], [ null, %if.then135 ], [ null, %if.end139 ], [ null, %if.then148 ], [ null, %if.then155 ], [ null, %if.end159 ], [ null, %if.else164 ], [ null, %if.end168 ], [ null, %if.then175 ], [ null, %if.else180 ], [ null, %if.end184 ], [ null, %if.else191 ], [ null, %if.then200 ], [ null, %if.then208 ], [ null, %if.then216 ], [ null, %if.then223 ], [ null, %if.end227 ], [ null, %if.else232 ], [ null, %if.end239 ], [ null, %if.then86 ], [ null, %if.end91 ], [ null, %if.then61 ], [ null, %if.end66 ], [ null, %if.then72 ], [ null, %if.then98 ], [ null, %if.then106 ], [ null, %if.end110 ], [ null, %if.else115 ], [ null, %if.end119 ]
  %cmp278 = icmp eq %struct.bignum_st* %ret.0, null
  %cmp280 = icmp eq %struct.bignum_st* %in, null
  %or.cond = and i1 %cmp280, %cmp278
  br i1 %or.cond, label %if.then281, label %if.end282

if.then281:                                       ; preds = %err
  tail call void @BN_free(%struct.bignum_st* noundef %R.1) #4
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %err
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup283

cleanup283:                                       ; preds = %if.end282, %if.then7, %if.then
  %retval.0 = phi %struct.bignum_st* [ null, %if.then ], [ %call8, %if.then7 ], [ %ret.0, %if.end282 ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BN_abs_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_get_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @bn_mod_inverse_no_branch(%struct.bignum_st* noundef %in, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef %ctx, i32* nocapture noundef writeonly %pnoinv) unnamed_addr #0 {
entry:
  %local_B = alloca %struct.bignum_st, align 8
  %local_A = alloca %struct.bignum_st, align 8
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp7 = icmp eq %struct.bignum_st* %in, null
  br i1 %cmp7, label %if.end10, label %if.end13

if.end10:                                         ; preds = %if.end
  %call9 = tail call %struct.bignum_st* @BN_new() #4
  %cmp11 = icmp eq %struct.bignum_st* %call9, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end, %if.end10
  %R.0163 = phi %struct.bignum_st* [ %call9, %if.end10 ], [ %in, %if.end ]
  %call14 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 1) #4
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call5) #4
  %call15 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %a) #4
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %n) #4
  %cmp20 = icmp eq %struct.bignum_st* %call19, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !8
  %neg23 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call1, i64 0, i32 3
  %0 = load i32, i32* %neg23, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then26

lor.lhs.false:                                    ; preds = %if.end22
  %call24 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call) #4
  %cmp25 = icmp sgt i32 %call24, -1
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %lor.lhs.false, %if.end22
  %1 = bitcast %struct.bignum_st* %local_B to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6
  call void @bn_init(%struct.bignum_st* noundef nonnull %local_B) #4
  call void @BN_with_flags(%struct.bignum_st* noundef nonnull %local_B, %struct.bignum_st* noundef nonnull %call1, i32 noundef 4) #4
  %call27 = call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %local_B, %struct.bignum_st* noundef nonnull %call, %struct.bignum_ctx* noundef %ctx) #4
  %tobool28.not = icmp eq i32 %call27, 0
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6
  br i1 %tobool28.not, label %err, label %if.end31

if.end31:                                         ; preds = %if.then26, %lor.lhs.false
  %2 = bitcast %struct.bignum_st* %local_A to i8*
  %call32193 = call i32 @BN_is_zero(%struct.bignum_st* noundef %call1) #4
  %tobool33.not194 = icmp eq i32 %call32193, 0
  br i1 %tobool33.not194, label %while.body, label %while.end

while.body:                                       ; preds = %if.end31, %cleanup49
  %sign.0200.neg = phi i32 [ %sign.0200, %cleanup49 ], [ 1, %if.end31 ]
  %sign.0200 = phi i32 [ %sign.0200.neg, %cleanup49 ], [ -1, %if.end31 ]
  %A.0199 = phi %struct.bignum_st* [ %B.0198, %cleanup49 ], [ %call, %if.end31 ]
  %B.0198 = phi %struct.bignum_st* [ %M.0197, %cleanup49 ], [ %call1, %if.end31 ]
  %M.0197 = phi %struct.bignum_st* [ %Y.0196, %cleanup49 ], [ %call4, %if.end31 ]
  %Y.0196 = phi %struct.bignum_st* [ %X.0195, %cleanup49 ], [ %call5, %if.end31 ]
  %X.0195 = phi %struct.bignum_st* [ %A.0199, %cleanup49 ], [ %call2, %if.end31 ]
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #6
  call void @bn_init(%struct.bignum_st* noundef nonnull %local_A) #4
  call void @BN_with_flags(%struct.bignum_st* noundef nonnull %local_A, %struct.bignum_st* noundef %A.0199, i32 noundef 4) #4
  %call34 = call i32 @BN_div(%struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %M.0197, %struct.bignum_st* noundef nonnull %local_A, %struct.bignum_st* noundef %B.0198, %struct.bignum_ctx* noundef %ctx) #4
  %tobool35.not = icmp eq i32 %call34, 0
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #6
  br i1 %tobool35.not, label %err, label %cleanup.cont40

cleanup.cont40:                                   ; preds = %while.body
  %call41 = call i32 @BN_mul(%struct.bignum_st* noundef %A.0199, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %X.0195, %struct.bignum_ctx* noundef %ctx) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %cleanup.cont40
  %call45 = call i32 @BN_add(%struct.bignum_st* noundef %A.0199, %struct.bignum_st* noundef %A.0199, %struct.bignum_st* noundef %Y.0196) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %cleanup49

cleanup49:                                        ; preds = %if.end44
  %call32 = call i32 @BN_is_zero(%struct.bignum_st* noundef %M.0197) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %while.body, label %while.end

while.end:                                        ; preds = %cleanup49, %if.end31
  %Y.0.lcssa = phi %struct.bignum_st* [ %call5, %if.end31 ], [ %X.0195, %cleanup49 ]
  %A.0.lcssa = phi %struct.bignum_st* [ %call, %if.end31 ], [ %B.0198, %cleanup49 ]
  %sign.0.lcssa = phi i32 [ -1, %if.end31 ], [ %sign.0200.neg, %cleanup49 ]
  %cmp52 = icmp slt i32 %sign.0.lcssa, 0
  br i1 %cmp52, label %if.then53, label %if.end58

if.then53:                                        ; preds = %while.end
  %call54 = call i32 @BN_sub(%struct.bignum_st* noundef %Y.0.lcssa, %struct.bignum_st* noundef %n, %struct.bignum_st* noundef %Y.0.lcssa) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.then53, %while.end
  %call59 = call i32 @BN_is_one(%struct.bignum_st* noundef %A.0.lcssa) #4
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err.sink.split, label %if.then61

if.then61:                                        ; preds = %if.end58
  %neg62 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %Y.0.lcssa, i64 0, i32 3
  %3 = load i32, i32* %neg62, align 8, !tbaa !8
  %tobool63.not = icmp eq i32 %3, 0
  br i1 %tobool63.not, label %land.lhs.true, label %if.else71

land.lhs.true:                                    ; preds = %if.then61
  %call64 = call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %Y.0.lcssa, %struct.bignum_st* noundef %n) #4
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.else71

if.then66:                                        ; preds = %land.lhs.true
  %call67 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %R.0163, %struct.bignum_st* noundef nonnull %Y.0.lcssa) #4
  %tobool68.not = icmp eq %struct.bignum_st* %call67, null
  br i1 %tobool68.not, label %err, label %err.sink.split

if.else71:                                        ; preds = %land.lhs.true, %if.then61
  %call72 = call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %R.0163, %struct.bignum_st* noundef nonnull %Y.0.lcssa, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef %ctx) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %err.sink.split

err.sink.split:                                   ; preds = %if.else71, %if.then66, %if.end58
  %.sink = phi i32 [ 1, %if.end58 ], [ 0, %if.then66 ], [ 0, %if.else71 ]
  %ret.0.ph = phi %struct.bignum_st* [ null, %if.end58 ], [ %R.0163, %if.then66 ], [ %R.0163, %if.else71 ]
  store i32 %.sink, i32* %pnoinv, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %while.body, %if.end44, %cleanup.cont40, %err.sink.split, %if.then26, %if.else71, %if.then66, %if.then53, %if.end18, %if.end13, %if.end10, %entry
  %R.1 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end10 ], [ %R.0163, %if.end13 ], [ %R.0163, %if.end18 ], [ %R.0163, %if.then26 ], [ %R.0163, %if.else71 ], [ %R.0163, %if.then66 ], [ %R.0163, %if.then53 ], [ %R.0163, %err.sink.split ], [ %R.0163, %cleanup.cont40 ], [ %R.0163, %if.end44 ], [ %R.0163, %while.body ]
  %ret.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %if.end10 ], [ null, %if.end13 ], [ null, %if.end18 ], [ null, %if.then26 ], [ null, %if.else71 ], [ null, %if.then66 ], [ null, %if.then53 ], [ %ret.0.ph, %err.sink.split ], [ null, %cleanup.cont40 ], [ null, %if.end44 ], [ null, %while.body ]
  %cmp79 = icmp eq %struct.bignum_st* %ret.0, null
  %cmp81 = icmp eq %struct.bignum_st* %in, null
  %or.cond = and i1 %cmp81, %cmp79
  br i1 %or.cond, label %if.then82, label %if.end83

if.then82:                                        ; preds = %err
  call void @BN_free(%struct.bignum_st* noundef %R.1) #4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %err
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret %struct.bignum_st* %ret.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_uadd(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_usub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_mod_inverse(%struct.bignum_st* noundef %in, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %noinv = alloca i32, align 4
  %0 = bitcast i32* %noinv to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %noinv, align 4, !tbaa !4
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #4
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.BN_mod_inverse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.then, %entry
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %call4 = call %struct.bignum_st* @int_bn_mod_inverse(%struct.bignum_st* noundef %in, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %n, %struct.bignum_ctx* noundef nonnull %ctx.addr.0, i32* noundef nonnull %noinv) #5
  %1 = load i32, i32* %noinv, align 4, !tbaa !4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.BN_mod_inverse, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 108, i8* noundef null) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2
  %retval.0 = phi %struct.bignum_st* [ null, %if.then2 ], [ %call4, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret %struct.bignum_st* %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_gcd(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %in_a, %struct.bignum_st* noundef %in_b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %in_b) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %in_a) #4
  %cmp = icmp ne %struct.bignum_st* %call1, null
  %conv = zext i1 %cmp to i32
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %in_a) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %in_b) #4
  %cmp6 = icmp ne %struct.bignum_st* %call5, null
  %conv7 = zext i1 %cmp6 to i32
  %neg8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg8, align 8, !tbaa !8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call11 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp12 = icmp eq %struct.bignum_st* %call11, null
  br i1 %cmp12, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %call14 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %in_b) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %call17 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %in_a) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false16
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 2
  %0 = load i32, i32* %dmax, align 4, !tbaa !18
  %cmp21245 = icmp sgt i32 %0, 0
  br i1 %cmp21245, label %land.rhs.lr.ph, label %for.end38

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %dmax23 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call11, i64 0, i32 2
  %1 = load i32, i32* %dmax23, align 4, !tbaa !18
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %d26 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call11, i64 0, i32 0
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  %wide.trip.count255 = zext i32 %0 to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc36
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.inc36 ]
  %shifts.0248 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add.3, %for.inc36 ]
  %bit.0247 = phi i32 [ 1, %land.rhs.lr.ph ], [ %conv35.3, %for.inc36 ]
  %exitcond254.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond254.not, label %for.end38, label %for.body

for.body:                                         ; preds = %land.rhs
  %2 = load i64*, i64** %d, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %indvars.iv
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !16
  %4 = load i64*, i64** %d26, align 8, !tbaa !15
  %arrayidx28 = getelementptr inbounds i64, i64* %4, i64 %indvars.iv
  %5 = load i64, i64* %arrayidx28, align 8, !tbaa !16
  %or = or i64 %5, %3
  %neg29 = xor i64 %or, -1
  br label %for.body33

for.body33:                                       ; preds = %for.body33, %for.body
  %shifts.1244 = phi i32 [ %shifts.0248, %for.body ], [ %add.3, %for.body33 ]
  %bit.1243 = phi i32 [ %bit.0247, %for.body ], [ %conv35.3, %for.body33 ]
  %mask.0242 = phi i64 [ %neg29, %for.body ], [ %shr.3, %for.body33 ]
  %j.0241 = phi i32 [ 0, %for.body ], [ %inc.3, %for.body33 ]
  %6 = trunc i64 %mask.0242 to i32
  %conv35 = and i32 %bit.1243, %6
  %add = add nsw i32 %shifts.1244, %conv35
  %shr = lshr i64 %mask.0242, 1
  %7 = trunc i64 %shr to i32
  %conv35.1 = and i32 %conv35, %7
  %add.1 = add nsw i32 %add, %conv35.1
  %shr.1 = lshr i64 %mask.0242, 2
  %8 = trunc i64 %shr.1 to i32
  %conv35.2 = and i32 %conv35.1, %8
  %add.2 = add nsw i32 %add.1, %conv35.2
  %shr.2 = lshr i64 %mask.0242, 3
  %9 = trunc i64 %shr.2 to i32
  %conv35.3 = and i32 %conv35.2, %9
  %add.3 = add nsw i32 %add.2, %conv35.3
  %shr.3 = lshr i64 %mask.0242, 4
  %inc.3 = add nuw nsw i32 %j.0241, 4
  %exitcond.not.3 = icmp eq i32 %inc.3, 64
  br i1 %exitcond.not.3, label %for.inc36, label %for.body33, !llvm.loop !19

for.inc36:                                        ; preds = %for.body33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond256.not = icmp eq i64 %indvars.iv.next, %wide.trip.count255
  br i1 %exitcond256.not, label %for.end38, label %land.rhs, !llvm.loop !20

for.end38:                                        ; preds = %land.rhs, %for.inc36, %for.cond.preheader
  %shifts.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %add.3, %for.inc36 ], [ %shifts.0248, %land.rhs ]
  %call39 = tail call i32 @BN_rshift(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r, i32 noundef %shifts.0.lcssa) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %for.end38
  %call42 = tail call i32 @BN_rshift(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %call11, i32 noundef %shifts.0.lcssa) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false41
  %top46 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  %10 = load i32, i32* %top46, align 8, !tbaa !14
  %top47 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call11, i64 0, i32 1
  %11 = load i32, i32* %top47, align 8, !tbaa !14
  %cmp48.not = icmp slt i32 %10, %11
  %. = select i1 %cmp48.not, i32 %11, i32 %10
  %add53 = add nsw i32 %., 1
  %call54 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %r, i32 noundef %add53) #4
  %cmp55 = icmp eq %struct.bignum_st* %call54, null
  br i1 %cmp55, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end45
  %call58 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call11, i32 noundef %add53) #4
  %cmp59 = icmp eq %struct.bignum_st* %call58, null
  br i1 %cmp59, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %call62 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call10, i32 noundef %add53) #4
  %cmp63 = icmp eq %struct.bignum_st* %call62, null
  br i1 %cmp63, label %err, label %if.end66

if.end66:                                         ; preds = %lor.lhs.false61
  %d67 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %12 = load i64*, i64** %d67, align 8, !tbaa !15
  %13 = load i64, i64* %12, align 8, !tbaa !16
  %neg69 = and i64 %13, 1
  %and70 = xor i64 %neg69, 1
  tail call void @BN_consttime_swap(i64 noundef %and70, %struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %call11, i32 noundef %add53) #4
  %call71 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %r) #4
  %call72 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call11) #4
  %cmp73.not = icmp slt i32 %call71, %call72
  %cond78 = select i1 %cmp73.not, i32 %call72, i32 %call71
  %mul = mul i32 %cond78, 3
  %cmp81250 = icmp sgt i32 %mul, -4
  br i1 %cmp81250, label %for.body83.lr.ph, label %for.end125

for.body83.lr.ph:                                 ; preds = %if.end66
  %d86 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call11, i64 0, i32 0
  %neg103 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  %14 = add i32 %mul, 3
  %smax257 = call i32 @llvm.smax.i32(i32 %14, i32 0)
  br label %for.body83

for.cond80:                                       ; preds = %if.end109
  %inc124 = add nuw i32 %i.1251, 1
  %sub100 = add nsw i32 %conv96, -1
  %and101 = and i32 %sub100, %delta.0252
  %sub97 = sub nsw i32 0, %conv96
  %and99 = and i32 %sub97, %sub
  %or102 = or i32 %and101, %and99
  %inc105 = add nsw i32 %or102, 1
  %exitcond258.not = icmp eq i32 %i.1251, %smax257
  br i1 %exitcond258.not, label %for.end125, label %for.body83, !llvm.loop !21

for.body83:                                       ; preds = %for.body83.lr.ph, %for.cond80
  %delta.0252 = phi i32 [ 1, %for.body83.lr.ph ], [ %inc105, %for.cond80 ]
  %i.1251 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc124, %for.cond80 ]
  %sub = sub nsw i32 0, %delta.0252
  %shr84239 = lshr i32 %sub, 31
  %15 = load i64*, i64** %d86, align 8, !tbaa !15
  %16 = load i64, i64* %15, align 8, !tbaa !16
  %17 = load i32, i32* %top47, align 8, !tbaa !14
  %18 = trunc i64 %16 to i32
  %19 = and i32 %shr84239, %18
  %isneg.inv = icmp sgt i32 %17, 0
  %conv96 = select i1 %isneg.inv, i32 %19, i32 0
  %20 = load i32, i32* %neg103, align 8, !tbaa !8
  %xor = xor i32 %conv96, %20
  store i32 %xor, i32* %neg103, align 8, !tbaa !8
  %21 = zext i32 %conv96 to i64
  tail call void @BN_consttime_swap(i64 noundef %21, %struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %call11, i32 noundef %add53) #4
  %call106 = tail call i32 @BN_add(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %r) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %if.end109

if.end109:                                        ; preds = %for.body83
  %22 = load i64*, i64** %d86, align 8, !tbaa !15
  %23 = load i64, i64* %22, align 8, !tbaa !16
  %and112 = and i64 %23, 1
  %24 = load i32, i32* %top47, align 8, !tbaa !14
  %sub114 = add nsw i32 %24, -1
  %shr115 = ashr i32 %sub114, 31
  %neg116 = xor i32 %shr115, -1
  %conv117259 = zext i32 %neg116 to i64
  %and118 = and i64 %and112, %conv117259
  tail call void @BN_consttime_swap(i64 noundef %and118, %struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef %call10, i32 noundef %add53) #4
  %call119 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef nonnull %call11, %struct.bignum_st* noundef nonnull %call11) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %for.cond80

for.end125:                                       ; preds = %for.cond80, %if.end66
  %neg126 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg126, align 8, !tbaa !8
  %call127 = tail call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r, i32 noundef %shifts.0.lcssa) #4
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %for.end125
  %call130 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r) #4
  %tobool131.not = icmp ne i32 %call130, 0
  %spec.select = zext i1 %tobool131.not to i32
  br label %err

err:                                              ; preds = %if.end109, %for.body83, %lor.lhs.false129, %for.end125, %if.end45, %lor.lhs.false57, %lor.lhs.false61, %for.end38, %lor.lhs.false41, %if.end9, %lor.lhs.false, %lor.lhs.false16
  %ret.0 = phi i32 [ 0, %if.end9 ], [ 0, %if.end45 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false61 ], [ 0, %for.end125 ], [ 0, %lor.lhs.false41 ], [ 0, %for.end38 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false ], [ %spec.select, %lor.lhs.false129 ], [ 0, %for.body83 ], [ 0, %if.end109 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then4, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %conv7, %if.then4 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_consttime_swap(i64 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_init(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_with_flags(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"bignum_st", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!9, !5, i64 8}
!15 = !{!9, !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!9, !5, i64 12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
