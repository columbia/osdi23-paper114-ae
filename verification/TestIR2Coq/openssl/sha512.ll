; ModuleID = 'crypto/sha/sha512.c'
source_filename = "crypto/sha/sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA512state_st = type { [8 x i64], i64, i64, %union.anon, i32, i32 }
%union.anon = type { [16 x i64] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @sha512_224_init(%struct.SHA512state_st* nocapture noundef writeonly %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHA512state_st* %c to <2 x i64>*
  store <2 x i64> <i64 -8341449602262348382, i64 8350123849800275158>, <2 x i64>* %0, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 2160240930085379202, i64 7466358040605728719>, <2 x i64>* %1, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 4
  %2 = bitcast i64* %arrayidx8 to <2 x i64>*
  store <2 x i64> <i64 1111592415079452072, i64 8638871050018654530>, <2 x i64>* %2, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 6
  %3 = bitcast i64* %arrayidx12 to <2 x i64>*
  store <2 x i64> <i64 4583966954114332360, i64 1230299281376055969>, <2 x i64>* %3, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 1
  %4 = bitcast i64* %Nl to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 4
  store i32 0, i32* %num, align 8, !tbaa !8
  %md_len = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 5
  store i32 28, i32* %md_len, align 4, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @sha512_256_init(%struct.SHA512state_st* nocapture noundef writeonly %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHA512state_st* %c to <2 x i64>*
  store <2 x i64> <i64 2463787394917988140, i64 -6965556091613846334>, <2 x i64>* %0, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 2563595384472711505, i64 -7622211418569250115>, <2 x i64>* %1, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 4
  %2 = bitcast i64* %arrayidx8 to <2 x i64>*
  store <2 x i64> <i64 -7626776825740460061, i64 -4729309413028513390>, <2 x i64>* %2, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 6
  %3 = bitcast i64* %arrayidx12 to <2 x i64>*
  store <2 x i64> <i64 3098927326965381290, i64 1060366662362279074>, <2 x i64>* %3, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 1
  %4 = bitcast i64* %Nl to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 4
  store i32 0, i32* %num, align 8, !tbaa !8
  %md_len = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 5
  store i32 32, i32* %md_len, align 4, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SHA384_Init(%struct.SHA512state_st* nocapture noundef writeonly %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHA512state_st* %c to <2 x i64>*
  store <2 x i64> <i64 -3766243637369397544, i64 7105036623409894663>, <2 x i64>* %0, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 -7973340178411365097, i64 1526699215303891257>, <2 x i64>* %1, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 4
  %2 = bitcast i64* %arrayidx8 to <2 x i64>*
  store <2 x i64> <i64 7436329637833083697, i64 -8163818279084223215>, <2 x i64>* %2, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 6
  %3 = bitcast i64* %arrayidx12 to <2 x i64>*
  store <2 x i64> <i64 -2662702644619276377, i64 5167115440072839076>, <2 x i64>* %3, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 1
  %4 = bitcast i64* %Nl to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 4
  store i32 0, i32* %num, align 8, !tbaa !8
  %md_len = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 5
  store i32 48, i32* %md_len, align 4, !tbaa !11
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SHA512_Init(%struct.SHA512state_st* nocapture noundef writeonly %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHA512state_st* %c to <2 x i64>*
  store <2 x i64> <i64 7640891576956012808, i64 -4942790177534073029>, <2 x i64>* %0, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 4354685564936845355, i64 -6534734903238641935>, <2 x i64>* %1, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 4
  %2 = bitcast i64* %arrayidx8 to <2 x i64>*
  store <2 x i64> <i64 5840696475078001361, i64 -7276294671716946913>, <2 x i64>* %2, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 6
  %3 = bitcast i64* %arrayidx12 to <2 x i64>*
  store <2 x i64> <i64 2270897969802886507, i64 6620516959819538809>, <2 x i64>* %3, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 1
  %4 = bitcast i64* %Nl to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 4
  store i32 0, i32* %num, align 8, !tbaa !8
  %md_len = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 5
  store i32 64, i32* %md_len, align 4, !tbaa !11
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA512_Final(i8* noundef writeonly %md, %struct.SHA512state_st* noundef %c) local_unnamed_addr #1 {
entry:
  %u = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 3
  %arraydecay = bitcast %union.anon* %u to i8*
  %num = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 4
  %0 = load i32, i32* %num, align 8, !tbaa !8
  %conv = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %arraydecay, i64 %conv
  store i8 -128, i8* %arrayidx, align 1, !tbaa !12
  %inc = add nuw nsw i64 %conv, 1
  %cmp = icmp ugt i32 %0, 111
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %inc
  %sub = sub nsw i64 127, %conv
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #5
  tail call void @sha512_block_data_order(%struct.SHA512state_st* noundef nonnull %c, i8* noundef nonnull %arraydecay, i64 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.0 = phi i64 [ 0, %if.then ], [ %inc, %entry ]
  %add.ptr3 = getelementptr inbounds i8, i8* %arraydecay, i64 %n.0
  %sub4 = sub nsw i64 112, %n.0
  %call5 = tail call i8* @memset(i8* noundef nonnull %add.ptr3, i32 noundef 0, i64 noundef %sub4) #5
  %Nl = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 1
  %1 = load i64, i64* %Nl, align 8, !tbaa !13
  %conv6 = trunc i64 %1 to i8
  %arrayidx7 = getelementptr inbounds i8, i8* %arraydecay, i64 127
  store i8 %conv6, i8* %arrayidx7, align 1, !tbaa !12
  %shr = lshr i64 %1, 8
  %conv9 = trunc i64 %shr to i8
  %arrayidx10 = getelementptr inbounds i8, i8* %arraydecay, i64 126
  store i8 %conv9, i8* %arrayidx10, align 1, !tbaa !12
  %shr12 = lshr i64 %1, 16
  %conv13 = trunc i64 %shr12 to i8
  %arrayidx14 = getelementptr inbounds i8, i8* %arraydecay, i64 125
  store i8 %conv13, i8* %arrayidx14, align 1, !tbaa !12
  %shr16 = lshr i64 %1, 24
  %conv17 = trunc i64 %shr16 to i8
  %arrayidx18 = getelementptr inbounds i8, i8* %arraydecay, i64 124
  store i8 %conv17, i8* %arrayidx18, align 1, !tbaa !12
  %shr20 = lshr i64 %1, 32
  %conv21 = trunc i64 %shr20 to i8
  %arrayidx22 = getelementptr inbounds i8, i8* %arraydecay, i64 123
  store i8 %conv21, i8* %arrayidx22, align 1, !tbaa !12
  %shr24 = lshr i64 %1, 40
  %conv25 = trunc i64 %shr24 to i8
  %arrayidx26 = getelementptr inbounds i8, i8* %arraydecay, i64 122
  store i8 %conv25, i8* %arrayidx26, align 1, !tbaa !12
  %shr28 = lshr i64 %1, 48
  %conv29 = trunc i64 %shr28 to i8
  %arrayidx30 = getelementptr inbounds i8, i8* %arraydecay, i64 121
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !12
  %shr32 = lshr i64 %1, 56
  %conv33 = trunc i64 %shr32 to i8
  %arrayidx34 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 3, i32 0, i64 15
  %2 = bitcast i64* %arrayidx34 to i8*
  store i8 %conv33, i8* %2, align 1, !tbaa !12
  %Nh = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 2
  %3 = load i64, i64* %Nh, align 8, !tbaa !14
  %conv35 = trunc i64 %3 to i8
  %arrayidx36 = getelementptr inbounds i8, i8* %arraydecay, i64 119
  store i8 %conv35, i8* %arrayidx36, align 1, !tbaa !12
  %shr38 = lshr i64 %3, 8
  %conv39 = trunc i64 %shr38 to i8
  %arrayidx40 = getelementptr inbounds i8, i8* %arraydecay, i64 118
  store i8 %conv39, i8* %arrayidx40, align 1, !tbaa !12
  %shr42 = lshr i64 %3, 16
  %conv43 = trunc i64 %shr42 to i8
  %arrayidx44 = getelementptr inbounds i8, i8* %arraydecay, i64 117
  store i8 %conv43, i8* %arrayidx44, align 1, !tbaa !12
  %shr46 = lshr i64 %3, 24
  %conv47 = trunc i64 %shr46 to i8
  %arrayidx48 = getelementptr inbounds i8, i8* %arraydecay, i64 116
  store i8 %conv47, i8* %arrayidx48, align 1, !tbaa !12
  %shr50 = lshr i64 %3, 32
  %conv51 = trunc i64 %shr50 to i8
  %arrayidx52 = getelementptr inbounds i8, i8* %arraydecay, i64 115
  store i8 %conv51, i8* %arrayidx52, align 1, !tbaa !12
  %shr54 = lshr i64 %3, 40
  %conv55 = trunc i64 %shr54 to i8
  %arrayidx56 = getelementptr inbounds i8, i8* %arraydecay, i64 114
  store i8 %conv55, i8* %arrayidx56, align 1, !tbaa !12
  %shr58 = lshr i64 %3, 48
  %conv59 = trunc i64 %shr58 to i8
  %arrayidx60 = getelementptr inbounds i8, i8* %arraydecay, i64 113
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !12
  %shr62 = lshr i64 %3, 56
  %conv63 = trunc i64 %shr62 to i8
  %arrayidx64 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 3, i32 0, i64 14
  %4 = bitcast i64* %arrayidx64 to i8*
  store i8 %conv63, i8* %4, align 1, !tbaa !12
  tail call void @sha512_block_data_order(%struct.SHA512state_st* noundef nonnull %c, i8* noundef nonnull %arraydecay, i64 noundef 1) #5
  %cmp65 = icmp eq i8* %md, null
  br i1 %cmp65, label %cleanup, label %if.end68

if.end68:                                         ; preds = %if.end
  %md_len = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 5
  %5 = load i32, i32* %md_len, align 4, !tbaa !11
  %6 = add i32 %5, -28
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 30)
  switch i32 %7, label %cleanup [
    i32 0, label %for.body.preheader
    i32 1, label %for.body114.preheader
    i32 5, label %for.body148.preheader
    i32 9, label %for.body182.preheader
  ]

for.body182.preheader:                            ; preds = %if.end68
  %arrayidx185 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 0
  %8 = load i64, i64* %arrayidx185, align 8, !tbaa !4
  %shr186 = lshr i64 %8, 56
  %conv187 = trunc i64 %shr186 to i8
  %incdec.ptr188 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv187, i8* %md, align 1, !tbaa !12
  %shr189 = lshr i64 %8, 48
  %conv190 = trunc i64 %shr189 to i8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv190, i8* %incdec.ptr188, align 1, !tbaa !12
  %shr192 = lshr i64 %8, 40
  %conv193 = trunc i64 %shr192 to i8
  %incdec.ptr194 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv193, i8* %incdec.ptr191, align 1, !tbaa !12
  %shr195 = lshr i64 %8, 32
  %conv196 = trunc i64 %shr195 to i8
  %incdec.ptr197 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv196, i8* %incdec.ptr194, align 1, !tbaa !12
  %shr198 = lshr i64 %8, 24
  %conv199 = trunc i64 %shr198 to i8
  %incdec.ptr200 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv199, i8* %incdec.ptr197, align 1, !tbaa !12
  %shr201 = lshr i64 %8, 16
  %conv202 = trunc i64 %shr201 to i8
  %incdec.ptr203 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv202, i8* %incdec.ptr200, align 1, !tbaa !12
  %shr204 = lshr i64 %8, 8
  %conv205 = trunc i64 %shr204 to i8
  %incdec.ptr206 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv205, i8* %incdec.ptr203, align 1, !tbaa !12
  %conv207 = trunc i64 %8 to i8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv207, i8* %incdec.ptr206, align 1, !tbaa !12
  %arrayidx185.1 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 1
  %9 = load i64, i64* %arrayidx185.1, align 8, !tbaa !4
  %shr186.1 = lshr i64 %9, 56
  %conv187.1 = trunc i64 %shr186.1 to i8
  %incdec.ptr188.1 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv187.1, i8* %incdec.ptr208, align 1, !tbaa !12
  %shr189.1 = lshr i64 %9, 48
  %conv190.1 = trunc i64 %shr189.1 to i8
  %incdec.ptr191.1 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv190.1, i8* %incdec.ptr188.1, align 1, !tbaa !12
  %shr192.1 = lshr i64 %9, 40
  %conv193.1 = trunc i64 %shr192.1 to i8
  %incdec.ptr194.1 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv193.1, i8* %incdec.ptr191.1, align 1, !tbaa !12
  %shr195.1 = lshr i64 %9, 32
  %conv196.1 = trunc i64 %shr195.1 to i8
  %incdec.ptr197.1 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv196.1, i8* %incdec.ptr194.1, align 1, !tbaa !12
  %shr198.1 = lshr i64 %9, 24
  %conv199.1 = trunc i64 %shr198.1 to i8
  %incdec.ptr200.1 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv199.1, i8* %incdec.ptr197.1, align 1, !tbaa !12
  %shr201.1 = lshr i64 %9, 16
  %conv202.1 = trunc i64 %shr201.1 to i8
  %incdec.ptr203.1 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv202.1, i8* %incdec.ptr200.1, align 1, !tbaa !12
  %shr204.1 = lshr i64 %9, 8
  %conv205.1 = trunc i64 %shr204.1 to i8
  %incdec.ptr206.1 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv205.1, i8* %incdec.ptr203.1, align 1, !tbaa !12
  %conv207.1 = trunc i64 %9 to i8
  %incdec.ptr208.1 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv207.1, i8* %incdec.ptr206.1, align 1, !tbaa !12
  %arrayidx185.2 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %10 = load i64, i64* %arrayidx185.2, align 8, !tbaa !4
  %shr186.2 = lshr i64 %10, 56
  %conv187.2 = trunc i64 %shr186.2 to i8
  %incdec.ptr188.2 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv187.2, i8* %incdec.ptr208.1, align 1, !tbaa !12
  %shr189.2 = lshr i64 %10, 48
  %conv190.2 = trunc i64 %shr189.2 to i8
  %incdec.ptr191.2 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv190.2, i8* %incdec.ptr188.2, align 1, !tbaa !12
  %shr192.2 = lshr i64 %10, 40
  %conv193.2 = trunc i64 %shr192.2 to i8
  %incdec.ptr194.2 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv193.2, i8* %incdec.ptr191.2, align 1, !tbaa !12
  %shr195.2 = lshr i64 %10, 32
  %conv196.2 = trunc i64 %shr195.2 to i8
  %incdec.ptr197.2 = getelementptr inbounds i8, i8* %md, i64 20
  store i8 %conv196.2, i8* %incdec.ptr194.2, align 1, !tbaa !12
  %shr198.2 = lshr i64 %10, 24
  %conv199.2 = trunc i64 %shr198.2 to i8
  %incdec.ptr200.2 = getelementptr inbounds i8, i8* %md, i64 21
  store i8 %conv199.2, i8* %incdec.ptr197.2, align 1, !tbaa !12
  %shr201.2 = lshr i64 %10, 16
  %conv202.2 = trunc i64 %shr201.2 to i8
  %incdec.ptr203.2 = getelementptr inbounds i8, i8* %md, i64 22
  store i8 %conv202.2, i8* %incdec.ptr200.2, align 1, !tbaa !12
  %shr204.2 = lshr i64 %10, 8
  %conv205.2 = trunc i64 %shr204.2 to i8
  %incdec.ptr206.2 = getelementptr inbounds i8, i8* %md, i64 23
  store i8 %conv205.2, i8* %incdec.ptr203.2, align 1, !tbaa !12
  %conv207.2 = trunc i64 %10 to i8
  %incdec.ptr208.2 = getelementptr inbounds i8, i8* %md, i64 24
  store i8 %conv207.2, i8* %incdec.ptr206.2, align 1, !tbaa !12
  %arrayidx185.3 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 3
  %11 = load i64, i64* %arrayidx185.3, align 8, !tbaa !4
  %shr186.3 = lshr i64 %11, 56
  %conv187.3 = trunc i64 %shr186.3 to i8
  %incdec.ptr188.3 = getelementptr inbounds i8, i8* %md, i64 25
  store i8 %conv187.3, i8* %incdec.ptr208.2, align 1, !tbaa !12
  %shr189.3 = lshr i64 %11, 48
  %conv190.3 = trunc i64 %shr189.3 to i8
  %incdec.ptr191.3 = getelementptr inbounds i8, i8* %md, i64 26
  store i8 %conv190.3, i8* %incdec.ptr188.3, align 1, !tbaa !12
  %shr192.3 = lshr i64 %11, 40
  %conv193.3 = trunc i64 %shr192.3 to i8
  %incdec.ptr194.3 = getelementptr inbounds i8, i8* %md, i64 27
  store i8 %conv193.3, i8* %incdec.ptr191.3, align 1, !tbaa !12
  %shr195.3 = lshr i64 %11, 32
  %conv196.3 = trunc i64 %shr195.3 to i8
  %incdec.ptr197.3 = getelementptr inbounds i8, i8* %md, i64 28
  store i8 %conv196.3, i8* %incdec.ptr194.3, align 1, !tbaa !12
  %shr198.3 = lshr i64 %11, 24
  %conv199.3 = trunc i64 %shr198.3 to i8
  %incdec.ptr200.3 = getelementptr inbounds i8, i8* %md, i64 29
  store i8 %conv199.3, i8* %incdec.ptr197.3, align 1, !tbaa !12
  %shr201.3 = lshr i64 %11, 16
  %conv202.3 = trunc i64 %shr201.3 to i8
  %incdec.ptr203.3 = getelementptr inbounds i8, i8* %md, i64 30
  store i8 %conv202.3, i8* %incdec.ptr200.3, align 1, !tbaa !12
  %shr204.3 = lshr i64 %11, 8
  %conv205.3 = trunc i64 %shr204.3 to i8
  %incdec.ptr206.3 = getelementptr inbounds i8, i8* %md, i64 31
  store i8 %conv205.3, i8* %incdec.ptr203.3, align 1, !tbaa !12
  %conv207.3 = trunc i64 %11 to i8
  %incdec.ptr208.3 = getelementptr inbounds i8, i8* %md, i64 32
  store i8 %conv207.3, i8* %incdec.ptr206.3, align 1, !tbaa !12
  %arrayidx185.4 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 4
  %12 = load i64, i64* %arrayidx185.4, align 8, !tbaa !4
  %shr186.4 = lshr i64 %12, 56
  %conv187.4 = trunc i64 %shr186.4 to i8
  %incdec.ptr188.4 = getelementptr inbounds i8, i8* %md, i64 33
  store i8 %conv187.4, i8* %incdec.ptr208.3, align 1, !tbaa !12
  %shr189.4 = lshr i64 %12, 48
  %conv190.4 = trunc i64 %shr189.4 to i8
  %incdec.ptr191.4 = getelementptr inbounds i8, i8* %md, i64 34
  store i8 %conv190.4, i8* %incdec.ptr188.4, align 1, !tbaa !12
  %shr192.4 = lshr i64 %12, 40
  %conv193.4 = trunc i64 %shr192.4 to i8
  %incdec.ptr194.4 = getelementptr inbounds i8, i8* %md, i64 35
  store i8 %conv193.4, i8* %incdec.ptr191.4, align 1, !tbaa !12
  %shr195.4 = lshr i64 %12, 32
  %conv196.4 = trunc i64 %shr195.4 to i8
  %incdec.ptr197.4 = getelementptr inbounds i8, i8* %md, i64 36
  store i8 %conv196.4, i8* %incdec.ptr194.4, align 1, !tbaa !12
  %shr198.4 = lshr i64 %12, 24
  %conv199.4 = trunc i64 %shr198.4 to i8
  %incdec.ptr200.4 = getelementptr inbounds i8, i8* %md, i64 37
  store i8 %conv199.4, i8* %incdec.ptr197.4, align 1, !tbaa !12
  %shr201.4 = lshr i64 %12, 16
  %conv202.4 = trunc i64 %shr201.4 to i8
  %incdec.ptr203.4 = getelementptr inbounds i8, i8* %md, i64 38
  store i8 %conv202.4, i8* %incdec.ptr200.4, align 1, !tbaa !12
  %shr204.4 = lshr i64 %12, 8
  %conv205.4 = trunc i64 %shr204.4 to i8
  %incdec.ptr206.4 = getelementptr inbounds i8, i8* %md, i64 39
  store i8 %conv205.4, i8* %incdec.ptr203.4, align 1, !tbaa !12
  %conv207.4 = trunc i64 %12 to i8
  %incdec.ptr208.4 = getelementptr inbounds i8, i8* %md, i64 40
  store i8 %conv207.4, i8* %incdec.ptr206.4, align 1, !tbaa !12
  %arrayidx185.5 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 5
  %13 = load i64, i64* %arrayidx185.5, align 8, !tbaa !4
  %shr186.5 = lshr i64 %13, 56
  %conv187.5 = trunc i64 %shr186.5 to i8
  %incdec.ptr188.5 = getelementptr inbounds i8, i8* %md, i64 41
  store i8 %conv187.5, i8* %incdec.ptr208.4, align 1, !tbaa !12
  %shr189.5 = lshr i64 %13, 48
  %conv190.5 = trunc i64 %shr189.5 to i8
  %incdec.ptr191.5 = getelementptr inbounds i8, i8* %md, i64 42
  store i8 %conv190.5, i8* %incdec.ptr188.5, align 1, !tbaa !12
  %shr192.5 = lshr i64 %13, 40
  %conv193.5 = trunc i64 %shr192.5 to i8
  %incdec.ptr194.5 = getelementptr inbounds i8, i8* %md, i64 43
  store i8 %conv193.5, i8* %incdec.ptr191.5, align 1, !tbaa !12
  %shr195.5 = lshr i64 %13, 32
  %conv196.5 = trunc i64 %shr195.5 to i8
  %incdec.ptr197.5 = getelementptr inbounds i8, i8* %md, i64 44
  store i8 %conv196.5, i8* %incdec.ptr194.5, align 1, !tbaa !12
  %shr198.5 = lshr i64 %13, 24
  %conv199.5 = trunc i64 %shr198.5 to i8
  %incdec.ptr200.5 = getelementptr inbounds i8, i8* %md, i64 45
  store i8 %conv199.5, i8* %incdec.ptr197.5, align 1, !tbaa !12
  %shr201.5 = lshr i64 %13, 16
  %conv202.5 = trunc i64 %shr201.5 to i8
  %incdec.ptr203.5 = getelementptr inbounds i8, i8* %md, i64 46
  store i8 %conv202.5, i8* %incdec.ptr200.5, align 1, !tbaa !12
  %shr204.5 = lshr i64 %13, 8
  %conv205.5 = trunc i64 %shr204.5 to i8
  %incdec.ptr206.5 = getelementptr inbounds i8, i8* %md, i64 47
  store i8 %conv205.5, i8* %incdec.ptr203.5, align 1, !tbaa !12
  %conv207.5 = trunc i64 %13 to i8
  %incdec.ptr208.5 = getelementptr inbounds i8, i8* %md, i64 48
  store i8 %conv207.5, i8* %incdec.ptr206.5, align 1, !tbaa !12
  %arrayidx185.6 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 6
  %14 = load i64, i64* %arrayidx185.6, align 8, !tbaa !4
  %shr186.6 = lshr i64 %14, 56
  %conv187.6 = trunc i64 %shr186.6 to i8
  %incdec.ptr188.6 = getelementptr inbounds i8, i8* %md, i64 49
  store i8 %conv187.6, i8* %incdec.ptr208.5, align 1, !tbaa !12
  %shr189.6 = lshr i64 %14, 48
  %conv190.6 = trunc i64 %shr189.6 to i8
  %incdec.ptr191.6 = getelementptr inbounds i8, i8* %md, i64 50
  store i8 %conv190.6, i8* %incdec.ptr188.6, align 1, !tbaa !12
  %shr192.6 = lshr i64 %14, 40
  %conv193.6 = trunc i64 %shr192.6 to i8
  %incdec.ptr194.6 = getelementptr inbounds i8, i8* %md, i64 51
  store i8 %conv193.6, i8* %incdec.ptr191.6, align 1, !tbaa !12
  %shr195.6 = lshr i64 %14, 32
  %conv196.6 = trunc i64 %shr195.6 to i8
  %incdec.ptr197.6 = getelementptr inbounds i8, i8* %md, i64 52
  store i8 %conv196.6, i8* %incdec.ptr194.6, align 1, !tbaa !12
  %shr198.6 = lshr i64 %14, 24
  %conv199.6 = trunc i64 %shr198.6 to i8
  %incdec.ptr200.6 = getelementptr inbounds i8, i8* %md, i64 53
  store i8 %conv199.6, i8* %incdec.ptr197.6, align 1, !tbaa !12
  %shr201.6 = lshr i64 %14, 16
  %conv202.6 = trunc i64 %shr201.6 to i8
  %incdec.ptr203.6 = getelementptr inbounds i8, i8* %md, i64 54
  store i8 %conv202.6, i8* %incdec.ptr200.6, align 1, !tbaa !12
  %shr204.6 = lshr i64 %14, 8
  %conv205.6 = trunc i64 %shr204.6 to i8
  %incdec.ptr206.6 = getelementptr inbounds i8, i8* %md, i64 55
  store i8 %conv205.6, i8* %incdec.ptr203.6, align 1, !tbaa !12
  %conv207.6 = trunc i64 %14 to i8
  %incdec.ptr208.6 = getelementptr inbounds i8, i8* %md, i64 56
  store i8 %conv207.6, i8* %incdec.ptr206.6, align 1, !tbaa !12
  %arrayidx185.7 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 7
  %15 = load i64, i64* %arrayidx185.7, align 8, !tbaa !4
  %shr186.7 = lshr i64 %15, 56
  %conv187.7 = trunc i64 %shr186.7 to i8
  %incdec.ptr188.7 = getelementptr inbounds i8, i8* %md, i64 57
  store i8 %conv187.7, i8* %incdec.ptr208.6, align 1, !tbaa !12
  %shr189.7 = lshr i64 %15, 48
  %conv190.7 = trunc i64 %shr189.7 to i8
  %incdec.ptr191.7 = getelementptr inbounds i8, i8* %md, i64 58
  store i8 %conv190.7, i8* %incdec.ptr188.7, align 1, !tbaa !12
  %shr192.7 = lshr i64 %15, 40
  %conv193.7 = trunc i64 %shr192.7 to i8
  %incdec.ptr194.7 = getelementptr inbounds i8, i8* %md, i64 59
  store i8 %conv193.7, i8* %incdec.ptr191.7, align 1, !tbaa !12
  %shr195.7 = lshr i64 %15, 32
  %conv196.7 = trunc i64 %shr195.7 to i8
  %incdec.ptr197.7 = getelementptr inbounds i8, i8* %md, i64 60
  store i8 %conv196.7, i8* %incdec.ptr194.7, align 1, !tbaa !12
  %shr198.7 = lshr i64 %15, 24
  %conv199.7 = trunc i64 %shr198.7 to i8
  %incdec.ptr200.7 = getelementptr inbounds i8, i8* %md, i64 61
  store i8 %conv199.7, i8* %incdec.ptr197.7, align 1, !tbaa !12
  %shr201.7 = lshr i64 %15, 16
  %conv202.7 = trunc i64 %shr201.7 to i8
  %incdec.ptr203.7 = getelementptr inbounds i8, i8* %md, i64 62
  store i8 %conv202.7, i8* %incdec.ptr200.7, align 1, !tbaa !12
  %shr204.7 = lshr i64 %15, 8
  %conv205.7 = trunc i64 %shr204.7 to i8
  %incdec.ptr206.7 = getelementptr inbounds i8, i8* %md, i64 63
  store i8 %conv205.7, i8* %incdec.ptr203.7, align 1, !tbaa !12
  br label %cleanup.sink.split

for.body148.preheader:                            ; preds = %if.end68
  %arrayidx151 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 0
  %16 = load i64, i64* %arrayidx151, align 8, !tbaa !4
  %shr152 = lshr i64 %16, 56
  %conv153 = trunc i64 %shr152 to i8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv153, i8* %md, align 1, !tbaa !12
  %shr155 = lshr i64 %16, 48
  %conv156 = trunc i64 %shr155 to i8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv156, i8* %incdec.ptr154, align 1, !tbaa !12
  %shr158 = lshr i64 %16, 40
  %conv159 = trunc i64 %shr158 to i8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv159, i8* %incdec.ptr157, align 1, !tbaa !12
  %shr161 = lshr i64 %16, 32
  %conv162 = trunc i64 %shr161 to i8
  %incdec.ptr163 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv162, i8* %incdec.ptr160, align 1, !tbaa !12
  %shr164 = lshr i64 %16, 24
  %conv165 = trunc i64 %shr164 to i8
  %incdec.ptr166 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv165, i8* %incdec.ptr163, align 1, !tbaa !12
  %shr167 = lshr i64 %16, 16
  %conv168 = trunc i64 %shr167 to i8
  %incdec.ptr169 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv168, i8* %incdec.ptr166, align 1, !tbaa !12
  %shr170 = lshr i64 %16, 8
  %conv171 = trunc i64 %shr170 to i8
  %incdec.ptr172 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv171, i8* %incdec.ptr169, align 1, !tbaa !12
  %conv173 = trunc i64 %16 to i8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv173, i8* %incdec.ptr172, align 1, !tbaa !12
  %arrayidx151.1 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 1
  %17 = load i64, i64* %arrayidx151.1, align 8, !tbaa !4
  %shr152.1 = lshr i64 %17, 56
  %conv153.1 = trunc i64 %shr152.1 to i8
  %incdec.ptr154.1 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv153.1, i8* %incdec.ptr174, align 1, !tbaa !12
  %shr155.1 = lshr i64 %17, 48
  %conv156.1 = trunc i64 %shr155.1 to i8
  %incdec.ptr157.1 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv156.1, i8* %incdec.ptr154.1, align 1, !tbaa !12
  %shr158.1 = lshr i64 %17, 40
  %conv159.1 = trunc i64 %shr158.1 to i8
  %incdec.ptr160.1 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv159.1, i8* %incdec.ptr157.1, align 1, !tbaa !12
  %shr161.1 = lshr i64 %17, 32
  %conv162.1 = trunc i64 %shr161.1 to i8
  %incdec.ptr163.1 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv162.1, i8* %incdec.ptr160.1, align 1, !tbaa !12
  %shr164.1 = lshr i64 %17, 24
  %conv165.1 = trunc i64 %shr164.1 to i8
  %incdec.ptr166.1 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv165.1, i8* %incdec.ptr163.1, align 1, !tbaa !12
  %shr167.1 = lshr i64 %17, 16
  %conv168.1 = trunc i64 %shr167.1 to i8
  %incdec.ptr169.1 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv168.1, i8* %incdec.ptr166.1, align 1, !tbaa !12
  %shr170.1 = lshr i64 %17, 8
  %conv171.1 = trunc i64 %shr170.1 to i8
  %incdec.ptr172.1 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv171.1, i8* %incdec.ptr169.1, align 1, !tbaa !12
  %conv173.1 = trunc i64 %17 to i8
  %incdec.ptr174.1 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv173.1, i8* %incdec.ptr172.1, align 1, !tbaa !12
  %arrayidx151.2 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %18 = load i64, i64* %arrayidx151.2, align 8, !tbaa !4
  %shr152.2 = lshr i64 %18, 56
  %conv153.2 = trunc i64 %shr152.2 to i8
  %incdec.ptr154.2 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv153.2, i8* %incdec.ptr174.1, align 1, !tbaa !12
  %shr155.2 = lshr i64 %18, 48
  %conv156.2 = trunc i64 %shr155.2 to i8
  %incdec.ptr157.2 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv156.2, i8* %incdec.ptr154.2, align 1, !tbaa !12
  %shr158.2 = lshr i64 %18, 40
  %conv159.2 = trunc i64 %shr158.2 to i8
  %incdec.ptr160.2 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv159.2, i8* %incdec.ptr157.2, align 1, !tbaa !12
  %shr161.2 = lshr i64 %18, 32
  %conv162.2 = trunc i64 %shr161.2 to i8
  %incdec.ptr163.2 = getelementptr inbounds i8, i8* %md, i64 20
  store i8 %conv162.2, i8* %incdec.ptr160.2, align 1, !tbaa !12
  %shr164.2 = lshr i64 %18, 24
  %conv165.2 = trunc i64 %shr164.2 to i8
  %incdec.ptr166.2 = getelementptr inbounds i8, i8* %md, i64 21
  store i8 %conv165.2, i8* %incdec.ptr163.2, align 1, !tbaa !12
  %shr167.2 = lshr i64 %18, 16
  %conv168.2 = trunc i64 %shr167.2 to i8
  %incdec.ptr169.2 = getelementptr inbounds i8, i8* %md, i64 22
  store i8 %conv168.2, i8* %incdec.ptr166.2, align 1, !tbaa !12
  %shr170.2 = lshr i64 %18, 8
  %conv171.2 = trunc i64 %shr170.2 to i8
  %incdec.ptr172.2 = getelementptr inbounds i8, i8* %md, i64 23
  store i8 %conv171.2, i8* %incdec.ptr169.2, align 1, !tbaa !12
  %conv173.2 = trunc i64 %18 to i8
  %incdec.ptr174.2 = getelementptr inbounds i8, i8* %md, i64 24
  store i8 %conv173.2, i8* %incdec.ptr172.2, align 1, !tbaa !12
  %arrayidx151.3 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 3
  %19 = load i64, i64* %arrayidx151.3, align 8, !tbaa !4
  %shr152.3 = lshr i64 %19, 56
  %conv153.3 = trunc i64 %shr152.3 to i8
  %incdec.ptr154.3 = getelementptr inbounds i8, i8* %md, i64 25
  store i8 %conv153.3, i8* %incdec.ptr174.2, align 1, !tbaa !12
  %shr155.3 = lshr i64 %19, 48
  %conv156.3 = trunc i64 %shr155.3 to i8
  %incdec.ptr157.3 = getelementptr inbounds i8, i8* %md, i64 26
  store i8 %conv156.3, i8* %incdec.ptr154.3, align 1, !tbaa !12
  %shr158.3 = lshr i64 %19, 40
  %conv159.3 = trunc i64 %shr158.3 to i8
  %incdec.ptr160.3 = getelementptr inbounds i8, i8* %md, i64 27
  store i8 %conv159.3, i8* %incdec.ptr157.3, align 1, !tbaa !12
  %shr161.3 = lshr i64 %19, 32
  %conv162.3 = trunc i64 %shr161.3 to i8
  %incdec.ptr163.3 = getelementptr inbounds i8, i8* %md, i64 28
  store i8 %conv162.3, i8* %incdec.ptr160.3, align 1, !tbaa !12
  %shr164.3 = lshr i64 %19, 24
  %conv165.3 = trunc i64 %shr164.3 to i8
  %incdec.ptr166.3 = getelementptr inbounds i8, i8* %md, i64 29
  store i8 %conv165.3, i8* %incdec.ptr163.3, align 1, !tbaa !12
  %shr167.3 = lshr i64 %19, 16
  %conv168.3 = trunc i64 %shr167.3 to i8
  %incdec.ptr169.3 = getelementptr inbounds i8, i8* %md, i64 30
  store i8 %conv168.3, i8* %incdec.ptr166.3, align 1, !tbaa !12
  %shr170.3 = lshr i64 %19, 8
  %conv171.3 = trunc i64 %shr170.3 to i8
  %incdec.ptr172.3 = getelementptr inbounds i8, i8* %md, i64 31
  store i8 %conv171.3, i8* %incdec.ptr169.3, align 1, !tbaa !12
  %conv173.3 = trunc i64 %19 to i8
  %incdec.ptr174.3 = getelementptr inbounds i8, i8* %md, i64 32
  store i8 %conv173.3, i8* %incdec.ptr172.3, align 1, !tbaa !12
  %arrayidx151.4 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 4
  %20 = load i64, i64* %arrayidx151.4, align 8, !tbaa !4
  %shr152.4 = lshr i64 %20, 56
  %conv153.4 = trunc i64 %shr152.4 to i8
  %incdec.ptr154.4 = getelementptr inbounds i8, i8* %md, i64 33
  store i8 %conv153.4, i8* %incdec.ptr174.3, align 1, !tbaa !12
  %shr155.4 = lshr i64 %20, 48
  %conv156.4 = trunc i64 %shr155.4 to i8
  %incdec.ptr157.4 = getelementptr inbounds i8, i8* %md, i64 34
  store i8 %conv156.4, i8* %incdec.ptr154.4, align 1, !tbaa !12
  %shr158.4 = lshr i64 %20, 40
  %conv159.4 = trunc i64 %shr158.4 to i8
  %incdec.ptr160.4 = getelementptr inbounds i8, i8* %md, i64 35
  store i8 %conv159.4, i8* %incdec.ptr157.4, align 1, !tbaa !12
  %shr161.4 = lshr i64 %20, 32
  %conv162.4 = trunc i64 %shr161.4 to i8
  %incdec.ptr163.4 = getelementptr inbounds i8, i8* %md, i64 36
  store i8 %conv162.4, i8* %incdec.ptr160.4, align 1, !tbaa !12
  %shr164.4 = lshr i64 %20, 24
  %conv165.4 = trunc i64 %shr164.4 to i8
  %incdec.ptr166.4 = getelementptr inbounds i8, i8* %md, i64 37
  store i8 %conv165.4, i8* %incdec.ptr163.4, align 1, !tbaa !12
  %shr167.4 = lshr i64 %20, 16
  %conv168.4 = trunc i64 %shr167.4 to i8
  %incdec.ptr169.4 = getelementptr inbounds i8, i8* %md, i64 38
  store i8 %conv168.4, i8* %incdec.ptr166.4, align 1, !tbaa !12
  %shr170.4 = lshr i64 %20, 8
  %conv171.4 = trunc i64 %shr170.4 to i8
  %incdec.ptr172.4 = getelementptr inbounds i8, i8* %md, i64 39
  store i8 %conv171.4, i8* %incdec.ptr169.4, align 1, !tbaa !12
  %conv173.4 = trunc i64 %20 to i8
  %incdec.ptr174.4 = getelementptr inbounds i8, i8* %md, i64 40
  store i8 %conv173.4, i8* %incdec.ptr172.4, align 1, !tbaa !12
  %arrayidx151.5 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 5
  %21 = load i64, i64* %arrayidx151.5, align 8, !tbaa !4
  %shr152.5 = lshr i64 %21, 56
  %conv153.5 = trunc i64 %shr152.5 to i8
  %incdec.ptr154.5 = getelementptr inbounds i8, i8* %md, i64 41
  store i8 %conv153.5, i8* %incdec.ptr174.4, align 1, !tbaa !12
  %shr155.5 = lshr i64 %21, 48
  %conv156.5 = trunc i64 %shr155.5 to i8
  %incdec.ptr157.5 = getelementptr inbounds i8, i8* %md, i64 42
  store i8 %conv156.5, i8* %incdec.ptr154.5, align 1, !tbaa !12
  %shr158.5 = lshr i64 %21, 40
  %conv159.5 = trunc i64 %shr158.5 to i8
  %incdec.ptr160.5 = getelementptr inbounds i8, i8* %md, i64 43
  store i8 %conv159.5, i8* %incdec.ptr157.5, align 1, !tbaa !12
  %shr161.5 = lshr i64 %21, 32
  %conv162.5 = trunc i64 %shr161.5 to i8
  %incdec.ptr163.5 = getelementptr inbounds i8, i8* %md, i64 44
  store i8 %conv162.5, i8* %incdec.ptr160.5, align 1, !tbaa !12
  %shr164.5 = lshr i64 %21, 24
  %conv165.5 = trunc i64 %shr164.5 to i8
  %incdec.ptr166.5 = getelementptr inbounds i8, i8* %md, i64 45
  store i8 %conv165.5, i8* %incdec.ptr163.5, align 1, !tbaa !12
  %shr167.5 = lshr i64 %21, 16
  %conv168.5 = trunc i64 %shr167.5 to i8
  %incdec.ptr169.5 = getelementptr inbounds i8, i8* %md, i64 46
  store i8 %conv168.5, i8* %incdec.ptr166.5, align 1, !tbaa !12
  %shr170.5 = lshr i64 %21, 8
  %conv171.5 = trunc i64 %shr170.5 to i8
  %incdec.ptr172.5 = getelementptr inbounds i8, i8* %md, i64 47
  store i8 %conv171.5, i8* %incdec.ptr169.5, align 1, !tbaa !12
  br label %cleanup.sink.split

for.body114.preheader:                            ; preds = %if.end68
  %arrayidx117 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 0
  %22 = load i64, i64* %arrayidx117, align 8, !tbaa !4
  %shr118 = lshr i64 %22, 56
  %conv119 = trunc i64 %shr118 to i8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv119, i8* %md, align 1, !tbaa !12
  %shr121 = lshr i64 %22, 48
  %conv122 = trunc i64 %shr121 to i8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv122, i8* %incdec.ptr120, align 1, !tbaa !12
  %shr124 = lshr i64 %22, 40
  %conv125 = trunc i64 %shr124 to i8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv125, i8* %incdec.ptr123, align 1, !tbaa !12
  %shr127 = lshr i64 %22, 32
  %conv128 = trunc i64 %shr127 to i8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv128, i8* %incdec.ptr126, align 1, !tbaa !12
  %shr130 = lshr i64 %22, 24
  %conv131 = trunc i64 %shr130 to i8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv131, i8* %incdec.ptr129, align 1, !tbaa !12
  %shr133 = lshr i64 %22, 16
  %conv134 = trunc i64 %shr133 to i8
  %incdec.ptr135 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv134, i8* %incdec.ptr132, align 1, !tbaa !12
  %shr136 = lshr i64 %22, 8
  %conv137 = trunc i64 %shr136 to i8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv137, i8* %incdec.ptr135, align 1, !tbaa !12
  %conv139 = trunc i64 %22 to i8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv139, i8* %incdec.ptr138, align 1, !tbaa !12
  %arrayidx117.1 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 1
  %23 = load i64, i64* %arrayidx117.1, align 8, !tbaa !4
  %shr118.1 = lshr i64 %23, 56
  %conv119.1 = trunc i64 %shr118.1 to i8
  %incdec.ptr120.1 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv119.1, i8* %incdec.ptr140, align 1, !tbaa !12
  %shr121.1 = lshr i64 %23, 48
  %conv122.1 = trunc i64 %shr121.1 to i8
  %incdec.ptr123.1 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv122.1, i8* %incdec.ptr120.1, align 1, !tbaa !12
  %shr124.1 = lshr i64 %23, 40
  %conv125.1 = trunc i64 %shr124.1 to i8
  %incdec.ptr126.1 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv125.1, i8* %incdec.ptr123.1, align 1, !tbaa !12
  %shr127.1 = lshr i64 %23, 32
  %conv128.1 = trunc i64 %shr127.1 to i8
  %incdec.ptr129.1 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv128.1, i8* %incdec.ptr126.1, align 1, !tbaa !12
  %shr130.1 = lshr i64 %23, 24
  %conv131.1 = trunc i64 %shr130.1 to i8
  %incdec.ptr132.1 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv131.1, i8* %incdec.ptr129.1, align 1, !tbaa !12
  %shr133.1 = lshr i64 %23, 16
  %conv134.1 = trunc i64 %shr133.1 to i8
  %incdec.ptr135.1 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv134.1, i8* %incdec.ptr132.1, align 1, !tbaa !12
  %shr136.1 = lshr i64 %23, 8
  %conv137.1 = trunc i64 %shr136.1 to i8
  %incdec.ptr138.1 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv137.1, i8* %incdec.ptr135.1, align 1, !tbaa !12
  %conv139.1 = trunc i64 %23 to i8
  %incdec.ptr140.1 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv139.1, i8* %incdec.ptr138.1, align 1, !tbaa !12
  %arrayidx117.2 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %24 = load i64, i64* %arrayidx117.2, align 8, !tbaa !4
  %shr118.2 = lshr i64 %24, 56
  %conv119.2 = trunc i64 %shr118.2 to i8
  %incdec.ptr120.2 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv119.2, i8* %incdec.ptr140.1, align 1, !tbaa !12
  %shr121.2 = lshr i64 %24, 48
  %conv122.2 = trunc i64 %shr121.2 to i8
  %incdec.ptr123.2 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv122.2, i8* %incdec.ptr120.2, align 1, !tbaa !12
  %shr124.2 = lshr i64 %24, 40
  %conv125.2 = trunc i64 %shr124.2 to i8
  %incdec.ptr126.2 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv125.2, i8* %incdec.ptr123.2, align 1, !tbaa !12
  %shr127.2 = lshr i64 %24, 32
  %conv128.2 = trunc i64 %shr127.2 to i8
  %incdec.ptr129.2 = getelementptr inbounds i8, i8* %md, i64 20
  store i8 %conv128.2, i8* %incdec.ptr126.2, align 1, !tbaa !12
  %shr130.2 = lshr i64 %24, 24
  %conv131.2 = trunc i64 %shr130.2 to i8
  %incdec.ptr132.2 = getelementptr inbounds i8, i8* %md, i64 21
  store i8 %conv131.2, i8* %incdec.ptr129.2, align 1, !tbaa !12
  %shr133.2 = lshr i64 %24, 16
  %conv134.2 = trunc i64 %shr133.2 to i8
  %incdec.ptr135.2 = getelementptr inbounds i8, i8* %md, i64 22
  store i8 %conv134.2, i8* %incdec.ptr132.2, align 1, !tbaa !12
  %shr136.2 = lshr i64 %24, 8
  %conv137.2 = trunc i64 %shr136.2 to i8
  %incdec.ptr138.2 = getelementptr inbounds i8, i8* %md, i64 23
  store i8 %conv137.2, i8* %incdec.ptr135.2, align 1, !tbaa !12
  %conv139.2 = trunc i64 %24 to i8
  %incdec.ptr140.2 = getelementptr inbounds i8, i8* %md, i64 24
  store i8 %conv139.2, i8* %incdec.ptr138.2, align 1, !tbaa !12
  %arrayidx117.3 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 3
  %25 = load i64, i64* %arrayidx117.3, align 8, !tbaa !4
  %shr118.3 = lshr i64 %25, 56
  %conv119.3 = trunc i64 %shr118.3 to i8
  %incdec.ptr120.3 = getelementptr inbounds i8, i8* %md, i64 25
  store i8 %conv119.3, i8* %incdec.ptr140.2, align 1, !tbaa !12
  %shr121.3 = lshr i64 %25, 48
  %conv122.3 = trunc i64 %shr121.3 to i8
  %incdec.ptr123.3 = getelementptr inbounds i8, i8* %md, i64 26
  store i8 %conv122.3, i8* %incdec.ptr120.3, align 1, !tbaa !12
  %shr124.3 = lshr i64 %25, 40
  %conv125.3 = trunc i64 %shr124.3 to i8
  %incdec.ptr126.3 = getelementptr inbounds i8, i8* %md, i64 27
  store i8 %conv125.3, i8* %incdec.ptr123.3, align 1, !tbaa !12
  %shr127.3 = lshr i64 %25, 32
  %conv128.3 = trunc i64 %shr127.3 to i8
  %incdec.ptr129.3 = getelementptr inbounds i8, i8* %md, i64 28
  store i8 %conv128.3, i8* %incdec.ptr126.3, align 1, !tbaa !12
  %shr130.3 = lshr i64 %25, 24
  %conv131.3 = trunc i64 %shr130.3 to i8
  %incdec.ptr132.3 = getelementptr inbounds i8, i8* %md, i64 29
  store i8 %conv131.3, i8* %incdec.ptr129.3, align 1, !tbaa !12
  %shr133.3 = lshr i64 %25, 16
  %conv134.3 = trunc i64 %shr133.3 to i8
  %incdec.ptr135.3 = getelementptr inbounds i8, i8* %md, i64 30
  store i8 %conv134.3, i8* %incdec.ptr132.3, align 1, !tbaa !12
  %shr136.3 = lshr i64 %25, 8
  %conv137.3 = trunc i64 %shr136.3 to i8
  %incdec.ptr138.3 = getelementptr inbounds i8, i8* %md, i64 31
  store i8 %conv137.3, i8* %incdec.ptr135.3, align 1, !tbaa !12
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %if.end68
  %arrayidx71 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 0
  %26 = load i64, i64* %arrayidx71, align 8, !tbaa !4
  %shr72 = lshr i64 %26, 56
  %conv73 = trunc i64 %shr72 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv73, i8* %md, align 1, !tbaa !12
  %shr74 = lshr i64 %26, 48
  %conv75 = trunc i64 %shr74 to i8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv75, i8* %incdec.ptr, align 1, !tbaa !12
  %shr77 = lshr i64 %26, 40
  %conv78 = trunc i64 %shr77 to i8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv78, i8* %incdec.ptr76, align 1, !tbaa !12
  %shr80 = lshr i64 %26, 32
  %conv81 = trunc i64 %shr80 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv81, i8* %incdec.ptr79, align 1, !tbaa !12
  %shr83 = lshr i64 %26, 24
  %conv84 = trunc i64 %shr83 to i8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv84, i8* %incdec.ptr82, align 1, !tbaa !12
  %shr86 = lshr i64 %26, 16
  %conv87 = trunc i64 %shr86 to i8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv87, i8* %incdec.ptr85, align 1, !tbaa !12
  %shr89 = lshr i64 %26, 8
  %conv90 = trunc i64 %shr89 to i8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv90, i8* %incdec.ptr88, align 1, !tbaa !12
  %conv92 = trunc i64 %26 to i8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv92, i8* %incdec.ptr91, align 1, !tbaa !12
  %arrayidx71.1 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 1
  %27 = load i64, i64* %arrayidx71.1, align 8, !tbaa !4
  %shr72.1 = lshr i64 %27, 56
  %conv73.1 = trunc i64 %shr72.1 to i8
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv73.1, i8* %incdec.ptr93, align 1, !tbaa !12
  %shr74.1 = lshr i64 %27, 48
  %conv75.1 = trunc i64 %shr74.1 to i8
  %incdec.ptr76.1 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv75.1, i8* %incdec.ptr.1, align 1, !tbaa !12
  %shr77.1 = lshr i64 %27, 40
  %conv78.1 = trunc i64 %shr77.1 to i8
  %incdec.ptr79.1 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv78.1, i8* %incdec.ptr76.1, align 1, !tbaa !12
  %shr80.1 = lshr i64 %27, 32
  %conv81.1 = trunc i64 %shr80.1 to i8
  %incdec.ptr82.1 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv81.1, i8* %incdec.ptr79.1, align 1, !tbaa !12
  %shr83.1 = lshr i64 %27, 24
  %conv84.1 = trunc i64 %shr83.1 to i8
  %incdec.ptr85.1 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv84.1, i8* %incdec.ptr82.1, align 1, !tbaa !12
  %shr86.1 = lshr i64 %27, 16
  %conv87.1 = trunc i64 %shr86.1 to i8
  %incdec.ptr88.1 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv87.1, i8* %incdec.ptr85.1, align 1, !tbaa !12
  %shr89.1 = lshr i64 %27, 8
  %conv90.1 = trunc i64 %shr89.1 to i8
  %incdec.ptr91.1 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv90.1, i8* %incdec.ptr88.1, align 1, !tbaa !12
  %conv92.1 = trunc i64 %27 to i8
  %incdec.ptr93.1 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv92.1, i8* %incdec.ptr91.1, align 1, !tbaa !12
  %arrayidx71.2 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 2
  %28 = load i64, i64* %arrayidx71.2, align 8, !tbaa !4
  %shr72.2 = lshr i64 %28, 56
  %conv73.2 = trunc i64 %shr72.2 to i8
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv73.2, i8* %incdec.ptr93.1, align 1, !tbaa !12
  %shr74.2 = lshr i64 %28, 48
  %conv75.2 = trunc i64 %shr74.2 to i8
  %incdec.ptr76.2 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv75.2, i8* %incdec.ptr.2, align 1, !tbaa !12
  %shr77.2 = lshr i64 %28, 40
  %conv78.2 = trunc i64 %shr77.2 to i8
  %incdec.ptr79.2 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv78.2, i8* %incdec.ptr76.2, align 1, !tbaa !12
  %shr80.2 = lshr i64 %28, 32
  %conv81.2 = trunc i64 %shr80.2 to i8
  %incdec.ptr82.2 = getelementptr inbounds i8, i8* %md, i64 20
  store i8 %conv81.2, i8* %incdec.ptr79.2, align 1, !tbaa !12
  %shr83.2 = lshr i64 %28, 24
  %conv84.2 = trunc i64 %shr83.2 to i8
  %incdec.ptr85.2 = getelementptr inbounds i8, i8* %md, i64 21
  store i8 %conv84.2, i8* %incdec.ptr82.2, align 1, !tbaa !12
  %shr86.2 = lshr i64 %28, 16
  %conv87.2 = trunc i64 %shr86.2 to i8
  %incdec.ptr88.2 = getelementptr inbounds i8, i8* %md, i64 22
  store i8 %conv87.2, i8* %incdec.ptr85.2, align 1, !tbaa !12
  %shr89.2 = lshr i64 %28, 8
  %conv90.2 = trunc i64 %shr89.2 to i8
  %incdec.ptr91.2 = getelementptr inbounds i8, i8* %md, i64 23
  store i8 %conv90.2, i8* %incdec.ptr88.2, align 1, !tbaa !12
  %conv92.2 = trunc i64 %28 to i8
  %incdec.ptr93.2 = getelementptr inbounds i8, i8* %md, i64 24
  store i8 %conv92.2, i8* %incdec.ptr91.2, align 1, !tbaa !12
  %arrayidx97 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 0, i64 3
  %29 = load i64, i64* %arrayidx97, align 8, !tbaa !4
  %shr98 = lshr i64 %29, 56
  %conv99 = trunc i64 %shr98 to i8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %md, i64 25
  store i8 %conv99, i8* %incdec.ptr93.2, align 1, !tbaa !12
  %shr101 = lshr i64 %29, 48
  %conv102 = trunc i64 %shr101 to i8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %md, i64 26
  store i8 %conv102, i8* %incdec.ptr100, align 1, !tbaa !12
  %shr104 = lshr i64 %29, 40
  %conv105 = trunc i64 %shr104 to i8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %md, i64 27
  store i8 %conv105, i8* %incdec.ptr103, align 1, !tbaa !12
  %shr107 = lshr i64 %29, 32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.preheader, %for.body114.preheader, %for.body148.preheader, %for.body182.preheader
  %.sink = phi i64 [ %15, %for.body182.preheader ], [ %21, %for.body148.preheader ], [ %25, %for.body114.preheader ], [ %shr107, %for.body.preheader ]
  %incdec.ptr206.7.sink = phi i8* [ %incdec.ptr206.7, %for.body182.preheader ], [ %incdec.ptr172.5, %for.body148.preheader ], [ %incdec.ptr138.3, %for.body114.preheader ], [ %incdec.ptr106, %for.body.preheader ]
  %conv207.7 = trunc i64 %.sink to i8
  store i8 %conv207.7, i8* %incdec.ptr206.7.sink, align 1, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end68, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end68 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @sha512_block_data_order(%struct.SHA512state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @SHA384_Final(i8* noundef %md, %struct.SHA512state_st* noundef %c) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @SHA512_Final(i8* noundef %md, %struct.SHA512state_st* noundef %c) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA512_Update(%struct.SHA512state_st* noundef %c, i8* noundef %_data, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %u = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 3
  %arraydecay = bitcast %union.anon* %u to i8*
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup41, label %if.end

if.end:                                           ; preds = %entry
  %Nl = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 1
  %0 = load i64, i64* %Nl, align 8, !tbaa !13
  %shl = shl i64 %len, 3
  %add = add i64 %0, %shl
  %cmp3 = icmp ult i64 %add, %0
  %Nh = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 2
  %1 = load i64, i64* %Nh, align 8, !tbaa !14
  %inc = zext i1 %cmp3 to i64
  %2 = add i64 %1, %inc
  %shr = lshr i64 %len, 61
  %Nh6 = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 2
  %add7 = add i64 %2, %shr
  store i64 %add7, i64* %Nh6, align 8, !tbaa !14
  store i64 %add, i64* %Nl, align 8, !tbaa !13
  %num = getelementptr inbounds %struct.SHA512state_st, %struct.SHA512state_st* %c, i64 0, i32 4
  %3 = load i32, i32* %num, align 8, !tbaa !8
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %if.end27, label %if.then10

if.then10:                                        ; preds = %if.end
  %conv = zext i32 %3 to i64
  %sub = sub nsw i64 128, %conv
  %cmp12 = icmp ugt i64 %sub, %len
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %conv
  br i1 %cmp12, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then10
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %_data, i64 noundef %len) #5
  %conv16 = trunc i64 %len to i32
  %4 = load i32, i32* %num, align 8, !tbaa !8
  %add18 = add i32 %4, %conv16
  br label %cleanup41.sink.split

cleanup:                                          ; preds = %if.then10
  %call22 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %_data, i64 noundef %sub) #5
  store i32 0, i32* %num, align 8, !tbaa !8
  %sub24 = sub i64 %len, %sub
  %add.ptr25 = getelementptr inbounds i8, i8* %_data, i64 %sub
  tail call void @sha512_block_data_order(%struct.SHA512state_st* noundef nonnull %c, i8* noundef nonnull %arraydecay, i64 noundef 1) #5
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %if.end
  %len.addr.1 = phi i64 [ %sub24, %cleanup ], [ %len, %if.end ]
  %data.1 = phi i8* [ %add.ptr25, %cleanup ], [ %_data, %if.end ]
  %cmp28 = icmp ugt i64 %len.addr.1, 127
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end27
  %div = lshr i64 %len.addr.1, 7
  tail call void @sha512_block_data_order(%struct.SHA512state_st* noundef nonnull %c, i8* noundef %data.1, i64 noundef %div) #5
  %add.ptr31 = getelementptr inbounds i8, i8* %data.1, i64 %len.addr.1
  %rem = and i64 %len.addr.1, 127
  %idx.neg = sub nsw i64 0, %rem
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 %idx.neg
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end27
  %len.addr.2 = phi i64 [ %rem, %if.then30 ], [ %len.addr.1, %if.end27 ]
  %data.2 = phi i8* [ %add.ptr32, %if.then30 ], [ %data.1, %if.end27 ]
  %cmp34.not = icmp eq i64 %len.addr.2, 0
  br i1 %cmp34.not, label %cleanup41, label %if.then36

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %data.2, i64 noundef %len.addr.2) #5
  %conv38 = trunc i64 %len.addr.2 to i32
  br label %cleanup41.sink.split

cleanup41.sink.split:                             ; preds = %if.then36, %cleanup.thread
  %add18.sink = phi i32 [ %add18, %cleanup.thread ], [ %conv38, %if.then36 ]
  store i32 %add18.sink, i32* %num, align 8, !tbaa !8
  br label %cleanup41

cleanup41:                                        ; preds = %cleanup41.sink.split, %if.end33, %entry
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SHA384_Update(%struct.SHA512state_st* noundef %c, i8* noundef %data, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @SHA512_Update(%struct.SHA512state_st* noundef %c, i8* noundef %data, i64 noundef %len) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @SHA512_Transform(%struct.SHA512state_st* noundef %c, i8* noundef %data) local_unnamed_addr #1 {
entry:
  tail call void @sha512_block_data_order(%struct.SHA512state_st* noundef %c, i8* noundef %data, i64 noundef 1) #5
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 208}
!9 = !{!"SHA512state_st", !6, i64 0, !5, i64 64, !5, i64 72, !6, i64 80, !10, i64 208, !10, i64 212}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !10, i64 212}
!12 = !{!6, !6, i64 0}
!13 = !{!9, !5, i64 64}
!14 = !{!9, !5, i64 72}
