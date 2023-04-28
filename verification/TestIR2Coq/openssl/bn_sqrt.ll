; ModuleID = 'crypto/bn/bn_sqrt.c'
source_filename = "crypto/bn/bn_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/bn/bn_sqrt.c\00", align 1
@__func__.BN_mod_sqrt = private unnamed_addr constant [12 x i8] c"BN_mod_sqrt\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_mod_sqrt(%struct.bignum_st* noundef %in, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %p) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %p, i64 noundef 1) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end21, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %p, i64 noundef 2) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end20, label %if.then5

if.then5:                                         ; preds = %if.then
  %cmp = icmp eq %struct.bignum_st* %in, null
  br i1 %cmp, label %if.end, label %if.end10

if.end:                                           ; preds = %if.then5
  %call7 = tail call %struct.bignum_st* @BN_new() #2
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %if.then307, label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %ret.0532 = phi %struct.bignum_st* [ %call7, %if.end ], [ %in, %if.then5 ]
  %call11 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %a, i32 noundef 0) #2
  %conv = sext i32 %call11 to i64
  %call12 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %ret.0532, i64 noundef %conv) #2
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end10
  %cmp15.not = icmp eq %struct.bignum_st* %ret.0532, %in
  br i1 %cmp15.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.then14
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %ret.0532) #2
  br label %cleanup

if.end20:                                         ; preds = %if.then
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BN_mod_sqrt, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 112, i8* noundef null) #2
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #2
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %if.then27

lor.lhs.false24:                                  ; preds = %if.end21
  %call25 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %a) #2
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end47, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false24, %if.end21
  %cmp28 = icmp eq %struct.bignum_st* %in, null
  br i1 %cmp28, label %if.end32, label %if.end36

if.end32:                                         ; preds = %if.then27
  %call31 = tail call %struct.bignum_st* @BN_new() #2
  %cmp33 = icmp eq %struct.bignum_st* %call31, null
  br i1 %cmp33, label %if.then307, label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end32
  %ret.1535 = phi %struct.bignum_st* [ %call31, %if.end32 ], [ %in, %if.then27 ]
  %call37 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %a) #2
  %conv38 = sext i32 %call37 to i64
  %call39 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %ret.1535, i64 noundef %conv38) #2
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %cleanup

if.then41:                                        ; preds = %if.end36
  %cmp42.not = icmp eq %struct.bignum_st* %ret.1535, %in
  br i1 %cmp42.not, label %cleanup, label %if.then44

if.then44:                                        ; preds = %if.then41
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %ret.1535) #2
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false24
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #2
  %call48 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call49 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call50 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call51 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call52 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %call53 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #2
  %cmp54 = icmp eq %struct.bignum_st* %call53, null
  br i1 %cmp54, label %if.then314, label %if.end57

if.end57:                                         ; preds = %if.end47
  %cmp58 = icmp eq %struct.bignum_st* %in, null
  br i1 %cmp58, label %if.end62, label %if.end66

if.end62:                                         ; preds = %if.end57
  %call61 = tail call %struct.bignum_st* @BN_new() #2
  %cmp63 = icmp eq %struct.bignum_st* %call61, null
  br i1 %cmp63, label %if.then307, label %if.end66

if.end66:                                         ; preds = %if.end57, %if.end62
  %ret.2538 = phi %struct.bignum_st* [ %call61, %if.end62 ], [ %in, %if.end57 ]
  %call67 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then307, label %while.cond

while.cond:                                       ; preds = %if.end66, %while.cond
  %e.0 = phi i32 [ %inc, %while.cond ], [ 1, %if.end66 ]
  %call71 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %p, i32 noundef %e.0) #2
  %tobool72.not = icmp eq i32 %call71, 0
  %inc = add nuw nsw i32 %e.0, 1
  br i1 %tobool72.not, label %while.cond, label %while.end, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  switch i32 %e.0, label %if.end129 [
    i32 1, label %if.then75
    i32 2, label %if.then91
  ]

if.then75:                                        ; preds = %while.end
  %call76 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %p, i32 noundef 2) #2
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then307, label %if.end79

if.end79:                                         ; preds = %if.then75
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call50, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !6
  %call80 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call50, i64 noundef 1) #2
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then307, label %if.end83

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %ret.2538, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef nonnull %call50, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then307, label %if.then294

if.then91:                                        ; preds = %while.end
  %call92 = tail call i32 @BN_mod_lshift1_quick(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %p) #2
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then307, label %if.end95

if.end95:                                         ; preds = %if.then91
  %call96 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %p, i32 noundef 3) #2
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then307, label %if.end99

if.end99:                                         ; preds = %if.end95
  %neg100 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call50, i64 0, i32 3
  store i32 0, i32* %neg100, align 8, !tbaa !6
  %call101 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then307, label %if.end104

if.end104:                                        ; preds = %if.end99
  %call105 = tail call i32 @BN_mod_sqr(%struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then307, label %if.end108

if.end108:                                        ; preds = %if.end104
  %call109 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then307, label %if.end112

if.end112:                                        ; preds = %if.end108
  %call113 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call51, i64 noundef 1) #2
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then307, label %if.end116

if.end116:                                        ; preds = %if.end112
  %call117 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then307, label %if.end120

if.end120:                                        ; preds = %if.end116
  %call121 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then307, label %if.end124

if.end124:                                        ; preds = %if.end120
  %call125 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %ret.2538, %struct.bignum_st* noundef %call52) #2
  %tobool126.not = icmp eq %struct.bignum_st* %call125, null
  br i1 %tobool126.not, label %if.then307, label %if.then294

if.end129:                                        ; preds = %while.end
  %call130 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %p) #2
  %tobool131.not = icmp eq %struct.bignum_st* %call130, null
  br i1 %tobool131.not, label %if.then307, label %if.end133

if.end133:                                        ; preds = %if.end129
  %neg134 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call50, i64 0, i32 3
  store i32 0, i32* %neg134, align 8, !tbaa !6
  %neg152 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %p, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end133
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ 2, %if.end133 ]
  %cmp135 = icmp ult i64 %indvars.iv, 22
  br i1 %cmp135, label %if.then137, label %if.else

if.then137:                                       ; preds = %do.body
  %call139 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call53, i64 noundef %indvars.iv) #2
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then307, label %if.end168

if.else:                                          ; preds = %do.body
  %call143 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %p) #2
  %call144 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef nonnull %call53, i32 noundef %call143, i32 noundef 0, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #2
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then307, label %if.end147

if.end147:                                        ; preds = %if.else
  %call148 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %p) #2
  %cmp149 = icmp sgt i32 %call148, -1
  br i1 %cmp149, label %if.then151, label %if.end158

if.then151:                                       ; preds = %if.end147
  %0 = load i32, i32* %neg152, align 8, !tbaa !6
  %tobool153.not = icmp eq i32 %0, 0
  %cond = select i1 %tobool153.not, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_sub, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_add
  %call154 = tail call i32 %cond(%struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %p) #2, !callees !12
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then307, label %if.end158

if.end158:                                        ; preds = %if.then151, %if.end147
  %call159 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call53) #2
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end168, label %if.then161

if.then161:                                       ; preds = %if.end158
  %call163 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call53, i64 noundef %indvars.iv) #2
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then307, label %if.end168

if.end168:                                        ; preds = %if.end158, %if.then161, %if.then137
  %call169 = tail call i32 @BN_kronecker(%struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %call50, %struct.bignum_ctx* noundef %ctx) #2
  %cmp170 = icmp slt i32 %call169, -1
  br i1 %cmp170, label %if.then307, label %if.end173

if.end173:                                        ; preds = %if.end168
  switch i32 %call169, label %if.then307.sink.split.loopexit584 [
    i32 0, label %if.then307.sink.split
    i32 1, label %land.rhs
    i32 -1, label %if.end186
  ]

land.rhs:                                         ; preds = %if.end173
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 82
  br i1 %exitcond.not, label %if.then307.sink.split.loopexit584, label %do.body, !llvm.loop !13

if.end186:                                        ; preds = %if.end173
  %call187 = tail call i32 @BN_rshift(%struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %call50, i32 noundef %e.0) #2
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then307, label %if.end190

if.end190:                                        ; preds = %if.end186
  %call191 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %call50, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.then307, label %if.end194

if.end194:                                        ; preds = %if.end190
  %call195 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %call53) #2
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.then307.sink.split

if.end198:                                        ; preds = %if.end194
  %call199 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call50) #2
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then307, label %if.end202

if.end202:                                        ; preds = %if.end198
  %call203 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call51) #2
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.else219, label %if.then205

if.then205:                                       ; preds = %if.end202
  %call206 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then307, label %if.end209

if.end209:                                        ; preds = %if.then205
  %call210 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call51) #2
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.else213, label %if.then314.sink.split

if.else213:                                       ; preds = %if.end209
  %call214 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call52, i64 noundef 1) #2
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then307, label %if.end228

if.else219:                                       ; preds = %if.end202
  %call220 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then307, label %if.end223

if.end223:                                        ; preds = %if.else219
  %call224 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call52) #2
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end228, label %if.then314.sink.split

if.end228:                                        ; preds = %if.end223, %if.else213
  %call229 = tail call i32 @BN_mod_sqr(%struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then307, label %if.end232

if.end232:                                        ; preds = %if.end228
  %call233 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.then307, label %if.end236

if.end236:                                        ; preds = %if.end232
  %call237 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.then307, label %while.cond241

while.cond241:                                    ; preds = %if.end236, %if.end288
  %e.1 = phi i32 [ %i.1, %if.end288 ], [ %e.0, %if.end236 ]
  %call243 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call49) #2
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end250, label %if.then245

if.then245:                                       ; preds = %while.cond241
  %call246 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %ret.2538, %struct.bignum_st* noundef %call52) #2
  %tobool247.not = icmp eq %struct.bignum_st* %call246, null
  br i1 %tobool247.not, label %if.then307, label %if.then294

if.end250:                                        ; preds = %while.cond241
  %call251 = tail call i32 @BN_mod_sqr(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then307, label %while.cond255

while.cond255:                                    ; preds = %if.end250, %if.end264
  %i.1 = phi i32 [ %inc260, %if.end264 ], [ 1, %if.end250 ]
  %call256 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call51) #2
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %while.body259, label %while.end269

while.body259:                                    ; preds = %while.cond255
  %inc260 = add nuw nsw i32 %i.1, 1
  %cmp261 = icmp eq i32 %inc260, %e.1
  br i1 %cmp261, label %if.then307.sink.split, label %if.end264

if.end264:                                        ; preds = %while.body259
  %call265 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then307, label %while.cond255, !llvm.loop !14

while.end269:                                     ; preds = %while.cond255
  %call270 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef nonnull %call53) #2
  %tobool271.not = icmp eq %struct.bignum_st* %call270, null
  br i1 %tobool271.not, label %if.then307, label %if.end273

if.end273:                                        ; preds = %while.end269
  %1 = xor i32 %i.1, -1
  %sub274 = add nsw i32 %e.1, %1
  %cmp275559 = icmp sgt i32 %sub274, 0
  br i1 %cmp275559, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %j.0560, -1
  %cmp275 = icmp sgt i32 %j.0560, 1
  br i1 %cmp275, label %for.body, label %for.end, !llvm.loop !15

for.body:                                         ; preds = %if.end273, %for.cond
  %j.0560 = phi i32 [ %dec, %for.cond ], [ %sub274, %if.end273 ]
  %call277 = tail call i32 @BN_mod_sqr(%struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.then307, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end273
  %call281 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.then307, label %if.end284

if.end284:                                        ; preds = %for.end
  %call285 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.then307, label %if.end288

if.end288:                                        ; preds = %if.end284
  %call289 = tail call i32 @BN_mod_mul(%struct.bignum_st* noundef %call49, %struct.bignum_st* noundef %call49, %struct.bignum_st* noundef nonnull %call53, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.then307, label %while.cond241

if.then294:                                       ; preds = %if.end83, %if.end124, %if.then245
  %call295 = tail call i32 @BN_mod_sqr(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %ret.2538, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #2
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %if.then307, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then294
  %call300 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call52, %struct.bignum_st* noundef %call48) #2
  %cmp301.not = icmp eq i32 %call300, 0
  br i1 %cmp301.not, label %if.then314, label %if.then307.sink.split

if.then307.sink.split.loopexit584:                ; preds = %land.rhs, %if.end173
  br label %if.then307.sink.split

if.then307.sink.split:                            ; preds = %while.body259, %if.end173, %if.then307.sink.split.loopexit584, %land.lhs.true, %if.end194
  %.sink572 = phi i32 [ 229, %if.end194 ], [ 347, %land.lhs.true ], [ 214, %if.then307.sink.split.loopexit584 ], [ 202, %if.end173 ], [ 313, %while.body259 ]
  %.sink = phi i32 [ 112, %if.end194 ], [ 111, %land.lhs.true ], [ 113, %if.then307.sink.split.loopexit584 ], [ 112, %if.end173 ], [ 111, %while.body259 ]
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink572, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BN_mod_sqrt, i64 0, i64 0)) #2
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef %.sink, i8* noundef null) #2
  br label %if.then307

if.then307:                                       ; preds = %if.end168, %if.then161, %if.then151, %if.else, %if.then137, %if.end288, %if.end284, %for.end, %while.end269, %if.end250, %if.end264, %for.body, %if.then307.sink.split, %if.then294, %if.then245, %if.end236, %if.end232, %if.end228, %if.else219, %if.else213, %if.then205, %if.end198, %if.end190, %if.end186, %if.end129, %if.end124, %if.end120, %if.end116, %if.end112, %if.end108, %if.end104, %if.end99, %if.end95, %if.then91, %if.end83, %if.end79, %if.then75, %if.end66, %if.end62, %if.end32, %if.end
  %ret.3.ph = phi %struct.bignum_st* [ null, %if.end ], [ null, %if.end32 ], [ null, %if.end62 ], [ %ret.2538, %if.end66 ], [ %ret.2538, %if.then75 ], [ %ret.2538, %if.end79 ], [ %ret.2538, %if.end83 ], [ %ret.2538, %if.then91 ], [ %ret.2538, %if.end95 ], [ %ret.2538, %if.end99 ], [ %ret.2538, %if.end104 ], [ %ret.2538, %if.end108 ], [ %ret.2538, %if.end112 ], [ %ret.2538, %if.end116 ], [ %ret.2538, %if.end120 ], [ %ret.2538, %if.end124 ], [ %ret.2538, %if.end129 ], [ %ret.2538, %if.end186 ], [ %ret.2538, %if.end190 ], [ %ret.2538, %if.end198 ], [ %ret.2538, %if.then205 ], [ %ret.2538, %if.else213 ], [ %ret.2538, %if.else219 ], [ %ret.2538, %if.end228 ], [ %ret.2538, %if.end232 ], [ %ret.2538, %if.end236 ], [ %ret.2538, %if.then245 ], [ %ret.2538, %if.then294 ], [ %ret.2538, %if.then307.sink.split ], [ %ret.2538, %for.body ], [ %ret.2538, %if.end264 ], [ %ret.2538, %if.end250 ], [ %ret.2538, %while.end269 ], [ %ret.2538, %for.end ], [ %ret.2538, %if.end284 ], [ %ret.2538, %if.end288 ], [ %ret.2538, %if.then137 ], [ %ret.2538, %if.else ], [ %ret.2538, %if.then151 ], [ %ret.2538, %if.then161 ], [ %ret.2538, %if.end168 ]
  %tobool313.not.ph = phi i1 [ true, %if.end ], [ true, %if.end32 ], [ false, %if.end62 ], [ false, %if.end66 ], [ false, %if.then75 ], [ false, %if.end79 ], [ false, %if.end83 ], [ false, %if.then91 ], [ false, %if.end95 ], [ false, %if.end99 ], [ false, %if.end104 ], [ false, %if.end108 ], [ false, %if.end112 ], [ false, %if.end116 ], [ false, %if.end120 ], [ false, %if.end124 ], [ false, %if.end129 ], [ false, %if.end186 ], [ false, %if.end190 ], [ false, %if.end198 ], [ false, %if.then205 ], [ false, %if.else213 ], [ false, %if.else219 ], [ false, %if.end228 ], [ false, %if.end232 ], [ false, %if.end236 ], [ false, %if.then245 ], [ false, %if.then294 ], [ false, %if.then307.sink.split ], [ false, %for.body ], [ false, %if.end264 ], [ false, %if.end250 ], [ false, %while.end269 ], [ false, %for.end ], [ false, %if.end284 ], [ false, %if.end288 ], [ false, %if.then137 ], [ false, %if.else ], [ false, %if.then151 ], [ false, %if.then161 ], [ false, %if.end168 ]
  %cmp308.not = icmp eq %struct.bignum_st* %ret.3.ph, %in
  br i1 %cmp308.not, label %if.end312, label %if.then310

if.then310:                                       ; preds = %if.then307
  tail call void @BN_clear_free(%struct.bignum_st* noundef %ret.3.ph) #2
  br i1 %tobool313.not.ph, label %cleanup, label %if.then314

if.end312:                                        ; preds = %if.then307
  br i1 %tobool313.not.ph, label %cleanup, label %if.then314

if.then314.sink.split:                            ; preds = %if.end223, %if.end209
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %ret.2538) #2
  br label %if.then314

if.then314:                                       ; preds = %if.then314.sink.split, %if.end47, %land.lhs.true, %if.then310, %if.end312
  %ret.4553 = phi %struct.bignum_st* [ null, %if.end312 ], [ null, %if.then310 ], [ %ret.2538, %land.lhs.true ], [ null, %if.end47 ], [ %ret.2538, %if.then314.sink.split ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then310, %if.end312, %if.then314, %if.end36, %if.then41, %if.then44, %if.end10, %if.then14, %if.then17, %if.end20
  %retval.0 = phi %struct.bignum_st* [ null, %if.end20 ], [ null, %if.then17 ], [ null, %if.then14 ], [ %ret.0532, %if.end10 ], [ null, %if.then44 ], [ null, %if.then41 ], [ %ret.1535, %if.end36 ], [ %ret.4553, %if.then314 ], [ null, %if.end312 ], [ null, %if.then310 ]
  ret %struct.bignum_st* %retval.0
}

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_abs_is_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_rshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_lshift1_quick(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_mod_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_kronecker(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !11, i64 16}
!7 = !{!"bignum_st", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_add, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_sub}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
