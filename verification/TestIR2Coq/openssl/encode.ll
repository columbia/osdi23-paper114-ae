; ModuleID = 'crypto/evp/encode.c'
source_filename = "crypto/evp/encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_Encode_Ctx_st = type { i32, i32, [80 x i8], i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"crypto/evp/encode.c\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"assertion failed: ctx->length <= (int)sizeof(ctx->enc_data)\00", align 1
@srpdata_ascii2bin = internal constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\E0\F0\FF\FF\F1\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\E0\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\F2>?\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\00\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF$%&'()*+,-./0123456789:;<=\FF\FF\FF\FF\FF", align 16
@data_ascii2bin = internal constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\E0\F0\FF\FF\F1\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\E0\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\F2\FF?456789:;<=\FF\FF\FF\00\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF", align 16
@srpdata_bin2ascii = internal unnamed_addr constant [65 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./\00", align 16
@data_bin2ascii = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16

; Function Attrs: noinline nounwind uwtable
define %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #8
  %0 = bitcast i8* %call to %struct.evp_Encode_Ctx_st*
  ret %struct.evp_Encode_Ctx_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_Encode_Ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 134) #8
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_ENCODE_CTX_copy(%struct.evp_Encode_Ctx_st* noundef %dctx, %struct.evp_Encode_Ctx_st* noundef %sctx) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_Encode_Ctx_st* %dctx to i8*
  %1 = bitcast %struct.evp_Encode_Ctx_st* %sctx to i8*
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef 96) #8
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_ENCODE_CTX_num(%struct.evp_Encode_Ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %num, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @evp_encode_ctx_set_flags(%struct.evp_Encode_Ctx_st* nocapture noundef writeonly %ctx, i32 noundef %flags) local_unnamed_addr #4 {
entry:
  %flags1 = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  store i32 %flags, i32* %flags1, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* nocapture noundef writeonly %ctx) local_unnamed_addr #4 {
entry:
  %length = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 1
  store i32 48, i32* %length, align 4, !tbaa !10
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  store i32 0, i32* %num, align 4, !tbaa !4
  %line_num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 3
  store i32 0, i32* %line_num, align 4, !tbaa !11
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  store i32 0, i32* %flags, align 4, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef %ctx, i8* nocapture noundef writeonly %out, i32* nocapture noundef writeonly %outl, i8* noundef %in, i32 noundef %inl) local_unnamed_addr #0 {
entry:
  store i32 0, i32* %outl, align 4, !tbaa !12
  %cmp = icmp slt i32 %inl, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !10
  %cmp1 = icmp slt i32 %0, 81
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 171) #9
  unreachable

cond.end:                                         ; preds = %if.end
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %num, align 4, !tbaa !4
  %sub = sub nsw i32 %0, %1
  %cmp3 = icmp sgt i32 %sub, %inl
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %cond.end
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 %idxprom
  %conv135 = zext i32 %inl to i64
  %call = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %in, i64 noundef %conv135) #8
  %2 = load i32, i32* %num, align 4, !tbaa !4
  %add = add nsw i32 %2, %inl
  store i32 %add, i32* %num, align 4, !tbaa !4
  br label %cleanup

if.end7:                                          ; preds = %cond.end
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %if.end33, label %if.then11

if.then11:                                        ; preds = %if.end7
  %idxprom17 = sext i32 %1 to i64
  %arrayidx18 = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 %idxprom17
  %conv19 = sext i32 %sub to i64
  %call20 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx18, i8* noundef %in, i64 noundef %conv19) #8
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %conv19
  %sub21 = sub nsw i32 %inl, %sub
  %arraydecay = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 0
  %3 = load i32, i32* %length, align 4, !tbaa !10
  %call24 = tail call fastcc i32 @evp_encodeblock_int(%struct.evp_Encode_Ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef nonnull %arraydecay, i32 noundef %3) #10
  store i32 0, i32* %num, align 4, !tbaa !4
  %idx.ext26 = sext i32 %call24 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %out, i64 %idx.ext26
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  %4 = load i32, i32* %flags, align 4, !tbaa !9
  %and = and i32 %4, 1
  %cmp29 = icmp eq i32 %and, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then11
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr27, i64 1
  store i8 10, i8* %add.ptr27, align 1, !tbaa !13
  %inc = add nsw i64 %idx.ext26, 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then11
  %out.addr.0 = phi i8* [ %incdec.ptr, %if.then31 ], [ %add.ptr27, %if.then11 ]
  %total.0 = phi i64 [ %inc, %if.then31 ], [ %idx.ext26, %if.then11 ]
  store i8 0, i8* %out.addr.0, align 1, !tbaa !13
  %.pre = load i32, i32* %length, align 4, !tbaa !10
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end7
  %5 = phi i32 [ %.pre, %if.end32 ], [ %0, %if.end7 ]
  %out.addr.1 = phi i8* [ %out.addr.0, %if.end32 ], [ %out, %if.end7 ]
  %in.addr.0 = phi i8* [ %add.ptr, %if.end32 ], [ %in, %if.end7 ]
  %inl.addr.0 = phi i32 [ %sub21, %if.end32 ], [ %inl, %if.end7 ]
  %total.1 = phi i64 [ %total.0, %if.end32 ], [ 0, %if.end7 ]
  %cmp35136 = icmp sge i32 %inl.addr.0, %5
  %cmp37137 = icmp ult i64 %total.1, 2147483648
  %6 = select i1 %cmp35136, i1 %cmp37137, i1 false
  br i1 %6, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end33
  %flags50 = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end57
  %7 = phi i32 [ %5, %while.body.lr.ph ], [ %10, %if.end57 ]
  %total.2141 = phi i64 [ %total.1, %while.body.lr.ph ], [ %total.3, %if.end57 ]
  %inl.addr.1140 = phi i32 [ %inl.addr.0, %while.body.lr.ph ], [ %sub45, %if.end57 ]
  %in.addr.1139 = phi i8* [ %in.addr.0, %while.body.lr.ph ], [ %add.ptr43, %if.end57 ]
  %out.addr.2138 = phi i8* [ %out.addr.1, %while.body.lr.ph ], [ %out.addr.3, %if.end57 ]
  %call40 = tail call fastcc i32 @evp_encodeblock_int(%struct.evp_Encode_Ctx_st* noundef nonnull %ctx, i8* noundef %out.addr.2138, i8* noundef %in.addr.1139, i32 noundef %7) #10
  %8 = load i32, i32* %length, align 4, !tbaa !10
  %idx.ext42 = sext i32 %8 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %in.addr.1139, i64 %idx.ext42
  %sub45 = sub nsw i32 %inl.addr.1140, %8
  %idx.ext46 = sext i32 %call40 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %out.addr.2138, i64 %idx.ext46
  %add49 = add nsw i64 %total.2141, %idx.ext46
  %9 = load i32, i32* %flags50, align 4, !tbaa !9
  %and51 = and i32 %9, 1
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %while.body
  %incdec.ptr55 = getelementptr inbounds i8, i8* %add.ptr47, i64 1
  store i8 10, i8* %add.ptr47, align 1, !tbaa !13
  %inc56 = add nsw i64 %add49, 1
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %while.body
  %out.addr.3 = phi i8* [ %incdec.ptr55, %if.then54 ], [ %add.ptr47, %while.body ]
  %total.3 = phi i64 [ %inc56, %if.then54 ], [ %add49, %while.body ]
  store i8 0, i8* %out.addr.3, align 1, !tbaa !13
  %10 = load i32, i32* %length, align 4, !tbaa !10
  %cmp35 = icmp sge i32 %sub45, %10
  %cmp37 = icmp ult i64 %total.3, 2147483648
  %11 = select i1 %cmp35, i1 %cmp37, i1 false
  br i1 %11, label %while.body, label %while.end, !llvm.loop !14

while.end:                                        ; preds = %if.end57, %if.end33
  %in.addr.1.lcssa = phi i8* [ %in.addr.0, %if.end33 ], [ %add.ptr43, %if.end57 ]
  %inl.addr.1.lcssa = phi i32 [ %inl.addr.0, %if.end33 ], [ %sub45, %if.end57 ]
  %total.2.lcssa = phi i64 [ %total.1, %if.end33 ], [ %total.3, %if.end57 ]
  %cmp58 = icmp ugt i64 %total.2.lcssa, 2147483647
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.end
  store i32 0, i32* %outl, align 4, !tbaa !12
  br label %cleanup

if.end61:                                         ; preds = %while.end
  %cmp62.not = icmp eq i32 %inl.addr.1.lcssa, 0
  br i1 %cmp62.not, label %if.end69, label %if.then64

if.then64:                                        ; preds = %if.end61
  %arrayidx66 = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 0
  %conv67 = sext i32 %inl.addr.1.lcssa to i64
  %call68 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx66, i8* noundef %in.addr.1.lcssa, i64 noundef %conv67) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end61
  store i32 %inl.addr.1.lcssa, i32* %num, align 4, !tbaa !4
  %conv71 = trunc i64 %total.2.lcssa to i32
  store i32 %conv71, i32* %outl, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end69, %if.then60, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %if.then60 ], [ 1, %if.end69 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @evp_encodeblock_int(%struct.evp_Encode_Ctx_st* noundef readonly %ctx, i8* nocapture noundef writeonly %t, i8* nocapture noundef readonly %f, i32 noundef %dlen) unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.evp_Encode_Ctx_st* %ctx, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !9
  %and = and i32 %0, 2
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %table.0 = phi i8* [ getelementptr inbounds ([65 x i8], [65 x i8]* @data_bin2ascii, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([65 x i8], [65 x i8]* @srpdata_bin2ascii, i64 0, i64 0), %land.lhs.true ]
  %cmp290 = icmp sgt i32 %dlen, 0
  br i1 %cmp290, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %if.end53
  %ret.096 = phi i32 [ %add, %if.end53 ], [ 0, %if.end ]
  %i.095 = phi i32 [ %sub, %if.end53 ], [ %dlen, %if.end ]
  %t.addr.094 = phi i8* [ %t.addr.1, %if.end53 ], [ %t, %if.end ]
  %f.addr.091 = phi i8* [ %add.ptr, %if.end53 ], [ %f, %if.end ]
  %cmp3 = icmp ugt i32 %i.095, 2
  %1 = load i8, i8* %f.addr.091, align 1, !tbaa !13
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  br i1 %cmp3, label %if.end53, label %if.else24

if.else24:                                        ; preds = %for.body
  %cmp28 = icmp eq i32 %i.095, 2
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.else24
  %arrayidx31 = getelementptr inbounds i8, i8* %f.addr.091, i64 1
  %2 = load i8, i8* %arrayidx31, align 1, !tbaa !13
  %conv32 = zext i8 %2 to i64
  %shl33 = shl nuw nsw i64 %conv32, 8
  %or34 = or i64 %shl33, %shl
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.else24
  %l.0 = phi i64 [ %or34, %if.then30 ], [ %shl, %if.else24 ]
  %shr36 = lshr i64 %l.0, 18
  %and37 = and i64 %shr36, 63
  %arrayidx38 = getelementptr inbounds i8, i8* %table.0, i64 %and37
  %3 = load i8, i8* %arrayidx38, align 1, !tbaa !13
  %incdec.ptr39 = getelementptr inbounds i8, i8* %t.addr.094, i64 1
  store i8 %3, i8* %t.addr.094, align 1, !tbaa !13
  %shr40 = lshr i64 %l.0, 12
  %and41 = and i64 %shr40, 63
  %arrayidx42 = getelementptr inbounds i8, i8* %table.0, i64 %and41
  %4 = load i8, i8* %arrayidx42, align 1, !tbaa !13
  %incdec.ptr43 = getelementptr inbounds i8, i8* %t.addr.094, i64 2
  store i8 %4, i8* %incdec.ptr39, align 1, !tbaa !13
  %cmp44 = icmp eq i32 %i.095, 1
  br i1 %cmp44, label %if.end53.thread, label %cond.false

cond.false:                                       ; preds = %if.end35
  %shr46 = lshr i64 %l.0, 6
  %and47 = and i64 %shr46, 63
  %arrayidx48 = getelementptr inbounds i8, i8* %table.0, i64 %and47
  %5 = load i8, i8* %arrayidx48, align 1, !tbaa !13
  br label %if.end53.thread

if.end53.thread:                                  ; preds = %cond.false, %if.end35
  %cond = phi i8 [ %5, %cond.false ], [ 61, %if.end35 ]
  %incdec.ptr51 = getelementptr inbounds i8, i8* %t.addr.094, i64 3
  store i8 %cond, i8* %incdec.ptr43, align 1, !tbaa !13
  store i8 61, i8* %incdec.ptr51, align 1, !tbaa !13
  %t.addr.198 = getelementptr inbounds i8, i8* %t.addr.094, i64 4
  %add99 = add nuw nsw i32 %ret.096, 4
  br label %for.end

if.end53:                                         ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i8, i8* %f.addr.091, i64 1
  %6 = load i8, i8* %arrayidx5, align 1, !tbaa !13
  %conv6 = zext i8 %6 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or = or i64 %shl7, %shl
  %arrayidx8 = getelementptr inbounds i8, i8* %f.addr.091, i64 2
  %7 = load i8, i8* %arrayidx8, align 1, !tbaa !13
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %shl7, %conv9
  %shr = lshr i64 %conv, 2
  %arrayidx12 = getelementptr inbounds i8, i8* %table.0, i64 %shr
  %8 = load i8, i8* %arrayidx12, align 1, !tbaa !13
  %incdec.ptr = getelementptr inbounds i8, i8* %t.addr.094, i64 1
  store i8 %8, i8* %t.addr.094, align 1, !tbaa !13
  %shr13 = lshr i64 %or, 12
  %and14 = and i64 %shr13, 63
  %arrayidx15 = getelementptr inbounds i8, i8* %table.0, i64 %and14
  %9 = load i8, i8* %arrayidx15, align 1, !tbaa !13
  %incdec.ptr16 = getelementptr inbounds i8, i8* %t.addr.094, i64 2
  store i8 %9, i8* %incdec.ptr, align 1, !tbaa !13
  %shr17 = lshr i64 %or10, 6
  %and18 = and i64 %shr17, 63
  %arrayidx19 = getelementptr inbounds i8, i8* %table.0, i64 %and18
  %10 = load i8, i8* %arrayidx19, align 1, !tbaa !13
  %incdec.ptr20 = getelementptr inbounds i8, i8* %t.addr.094, i64 3
  store i8 %10, i8* %incdec.ptr16, align 1, !tbaa !13
  %and21 = and i64 %conv9, 63
  %arrayidx22 = getelementptr inbounds i8, i8* %table.0, i64 %and21
  %11 = load i8, i8* %arrayidx22, align 1, !tbaa !13
  store i8 %11, i8* %incdec.ptr20, align 1, !tbaa !13
  %t.addr.1 = getelementptr inbounds i8, i8* %t.addr.094, i64 4
  %add = add nuw nsw i32 %ret.096, 4
  %add.ptr = getelementptr inbounds i8, i8* %f.addr.091, i64 3
  %sub = add nsw i32 %i.095, -3
  %cmp2.not = icmp eq i32 %i.095, 3
  br i1 %cmp2.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %if.end53, %if.end53.thread, %if.end
  %t.addr.0.lcssa = phi i8* [ %t, %if.end ], [ %t.addr.198, %if.end53.thread ], [ %t.addr.1, %if.end53 ]
  %ret.0.lcssa = phi i32 [ 0, %if.end ], [ %add99, %if.end53.thread ], [ %add, %if.end53 ]
  store i8 0, i8* %t.addr.0.lcssa, align 1, !tbaa !13
  ret i32 %ret.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef %ctx, i8* nocapture noundef writeonly %out, i32* nocapture noundef writeonly %outl) local_unnamed_addr #6 {
entry:
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 0
  %call = tail call fastcc i32 @evp_encodeblock_int(%struct.evp_Encode_Ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef nonnull %arraydecay, i32 noundef %0) #10
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4, !tbaa !9
  %and = and i32 %1, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %inc = add i32 %call, 1
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr inbounds i8, i8* %out, i64 %idxprom
  store i8 10, i8* %arrayidx, align 1, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %ret.0 = phi i32 [ %inc, %if.then3 ], [ %call, %if.then ]
  %idxprom4 = zext i32 %ret.0 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %out, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1, !tbaa !13
  store i32 0, i32* %num, align 4, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %ret.1 = phi i32 [ %ret.0, %if.end ], [ 0, %entry ]
  store i32 %ret.1, i32* %outl, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @EVP_EncodeBlock(i8* nocapture noundef writeonly %t, i8* nocapture noundef readonly %f, i32 noundef %dlen) local_unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @evp_encodeblock_int(%struct.evp_Encode_Ctx_st* noundef null, i8* noundef %t, i8* noundef %f, i32 noundef %dlen) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* nocapture noundef writeonly %ctx) local_unnamed_addr #4 {
entry:
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  store i32 0, i32* %num, align 4, !tbaa !4
  %length = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !10
  %line_num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 3
  store i32 0, i32* %line_num, align 4, !tbaa !11
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  store i32 0, i32* %flags, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef %ctx, i8* nocapture noundef writeonly %out, i32* nocapture noundef writeonly %outl, i8* nocapture noundef readonly %in, i32 noundef %inl) local_unnamed_addr #6 {
entry:
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 0
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %entry
  %sub = add nsw i32 %0, -1
  %1 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 %1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %cmp1 = icmp eq i8 %2, 61
  br i1 %cmp1, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %cmp3 = icmp ugt i32 %0, 1
  br i1 %cmp3, label %land.lhs.true5, label %if.end14

land.lhs.true5:                                   ; preds = %if.then
  %sub6 = add nsw i32 %0, -2
  %3 = zext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 %3
  %4 = load i8, i8* %arrayidx8, align 1, !tbaa !13
  %cmp10 = icmp eq i8 %4, 61
  %spec.select = select i1 %cmp10, i32 2, i32 1
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true5, %if.then, %land.lhs.true, %entry
  %eof.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true5 ]
  %cmp15 = icmp eq i32 %inl, 0
  br i1 %cmp15, label %end, label %if.end18

if.end18:                                         ; preds = %if.end14
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  %5 = load i32, i32* %flags, align 4, !tbaa !9
  %and = and i32 %5, 2
  %cmp19.not = icmp eq i32 %and, 0
  %. = select i1 %cmp19.not, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @data_ascii2bin, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @srpdata_ascii2bin, i64 0, i64 0)
  %cmp23179 = icmp sgt i32 %inl, 0
  br i1 %cmp23179, label %for.body, label %tail

for.body:                                         ; preds = %if.end18, %for.inc
  %cmp23186 = phi i1 [ %cmp23, %for.inc ], [ true, %if.end18 ]
  %out.addr.0185 = phi i8* [ %out.addr.1, %for.inc ], [ %out, %if.end18 ]
  %n.0184 = phi i32 [ %n.2, %for.inc ], [ %0, %if.end18 ]
  %in.addr.0183 = phi i8* [ %incdec.ptr, %for.inc ], [ %in, %if.end18 ]
  %i.0182 = phi i32 [ %inc81, %for.inc ], [ 0, %if.end18 ]
  %ret.0181 = phi i32 [ %ret.1, %for.inc ], [ 0, %if.end18 ]
  %eof.1180 = phi i32 [ %eof.2174, %for.inc ], [ %eof.0, %if.end18 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0183, i64 1
  %6 = load i8, i8* %in.addr.0183, align 1, !tbaa !13
  %call = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %6, i8* noundef %.) #10
  %conv27 = zext i8 %call to i32
  %cmp28 = icmp eq i8 %call, -1
  br i1 %cmp28, label %end, label %if.end31

if.end31:                                         ; preds = %for.body
  %cmp32 = icmp eq i8 %6, 61
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.end31
  %inc35 = add nsw i32 %eof.1180, 1
  br label %if.end44

if.else36:                                        ; preds = %if.end31
  %cmp37 = icmp sgt i32 %eof.1180, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.end48

land.lhs.true39:                                  ; preds = %if.else36
  %7 = and i32 %conv27, 236
  %cmp40 = icmp eq i32 %7, 224
  br i1 %cmp40, label %if.end44, label %end

if.end44:                                         ; preds = %land.lhs.true39, %if.then34
  %eof.2 = phi i32 [ %inc35, %if.then34 ], [ %eof.1180, %land.lhs.true39 ]
  %cmp45 = icmp sgt i32 %eof.2, 2
  br i1 %cmp45, label %end, label %if.end48

if.end48:                                         ; preds = %if.else36, %if.end44
  %eof.2174 = phi i32 [ %eof.2, %if.end44 ], [ 0, %if.else36 ]
  %cmp49 = icmp eq i8 %call, -14
  br i1 %cmp49, label %tail, label %if.end52

if.end52:                                         ; preds = %if.end48
  %8 = and i32 %conv27, 236
  %cmp54 = icmp eq i32 %8, 224
  br i1 %cmp54, label %if.end67, label %if.then56

if.then56:                                        ; preds = %if.end52
  %cmp57 = icmp sgt i32 %n.0184, 63
  br i1 %cmp57, label %end, label %cond.end

cond.end:                                         ; preds = %if.then56
  %inc64 = add nsw i32 %n.0184, 1
  %idxprom65 = sext i32 %n.0184 to i64
  %arrayidx66 = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 %idxprom65
  store i8 %6, i8* %arrayidx66, align 1, !tbaa !13
  br label %if.end67

if.end67:                                         ; preds = %cond.end, %if.end52
  %n.1 = phi i32 [ %n.0184, %if.end52 ], [ %inc64, %cond.end ]
  %cmp68 = icmp eq i32 %n.1, 64
  br i1 %cmp68, label %if.then70, label %for.inc

if.then70:                                        ; preds = %if.end67
  %call71 = tail call fastcc i32 @evp_decodeblock_int(%struct.evp_Encode_Ctx_st* noundef %ctx, i8* noundef %out.addr.0185, i8* noundef nonnull %arraydecay, i32 noundef 64) #10
  %cmp72 = icmp slt i32 %call71, 0
  %cmp74 = icmp slt i32 %call71, %eof.2174
  %or.cond = select i1 %cmp72, i1 true, i1 %cmp74
  br i1 %or.cond, label %end, label %if.end77

if.end77:                                         ; preds = %if.then70
  %sub78 = sub nsw i32 %call71, %eof.2174
  %add = add nsw i32 %sub78, %ret.0181
  %idx.ext = sext i32 %sub78 to i64
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.0185, i64 %idx.ext
  br label %for.inc

for.inc:                                          ; preds = %if.end67, %if.end77
  %ret.1 = phi i32 [ %add, %if.end77 ], [ %ret.0181, %if.end67 ]
  %n.2 = phi i32 [ 0, %if.end77 ], [ %n.1, %if.end67 ]
  %out.addr.1 = phi i8* [ %add.ptr, %if.end77 ], [ %out.addr.0185, %if.end67 ]
  %inc81 = add nuw nsw i32 %i.0182, 1
  %cmp23 = icmp slt i32 %inc81, %inl
  %exitcond.not = icmp eq i32 %inc81, %inl
  br i1 %exitcond.not, label %tail, label %for.body, !llvm.loop !17

tail:                                             ; preds = %for.inc, %if.end48, %if.end18
  %ret.0.lcssa = phi i32 [ 0, %if.end18 ], [ %ret.0181, %if.end48 ], [ %ret.1, %for.inc ]
  %n.0.lcssa = phi i32 [ %0, %if.end18 ], [ %n.0184, %if.end48 ], [ %n.2, %for.inc ]
  %out.addr.0.lcssa = phi i8* [ %out, %if.end18 ], [ %out.addr.0185, %if.end48 ], [ %out.addr.1, %for.inc ]
  %cmp23.lcssa = phi i1 [ false, %if.end18 ], [ %cmp23186, %if.end48 ], [ %cmp23, %for.inc ]
  %eof.3 = phi i32 [ %eof.0, %if.end18 ], [ %eof.2174, %if.end48 ], [ %eof.2174, %for.inc ]
  %cmp82 = icmp sgt i32 %n.0.lcssa, 0
  br i1 %cmp82, label %if.then84, label %if.end103

if.then84:                                        ; preds = %tail
  %and85 = and i32 %n.0.lcssa, 3
  %cmp86 = icmp eq i32 %and85, 0
  br i1 %cmp86, label %if.then88, label %if.else99

if.then88:                                        ; preds = %if.then84
  %call89 = tail call fastcc i32 @evp_decodeblock_int(%struct.evp_Encode_Ctx_st* noundef %ctx, i8* noundef %out.addr.0.lcssa, i8* noundef nonnull %arraydecay, i32 noundef %n.0.lcssa) #10
  %cmp90 = icmp slt i32 %call89, 0
  %cmp93 = icmp slt i32 %call89, %eof.3
  %or.cond171 = select i1 %cmp90, i1 true, i1 %cmp93
  br i1 %or.cond171, label %end, label %if.end96

if.end96:                                         ; preds = %if.then88
  %sub97 = sub i32 %ret.0.lcssa, %eof.3
  %add98 = add i32 %sub97, %call89
  br label %if.end103

if.else99:                                        ; preds = %if.then84
  br i1 %cmp23.lcssa, label %end, label %if.end103

if.end103:                                        ; preds = %if.end96, %if.else99, %tail
  %ret.2 = phi i32 [ %add98, %if.end96 ], [ %ret.0.lcssa, %if.else99 ], [ %ret.0.lcssa, %tail ]
  %n.3 = phi i32 [ 0, %if.end96 ], [ %n.0.lcssa, %if.else99 ], [ %n.0.lcssa, %tail ]
  %cmp105 = icmp ne i32 %n.3, 0
  %tobool107 = icmp eq i32 %eof.3, 0
  %9 = select i1 %cmp105, i1 true, i1 %tobool107
  %not.cmp23 = xor i1 %cmp23.lcssa, true
  %narrow = select i1 %not.cmp23, i1 %9, i1 false
  %10 = zext i1 %narrow to i32
  br label %end

end:                                              ; preds = %if.then70, %if.then56, %if.end44, %land.lhs.true39, %for.body, %if.else99, %if.then88, %if.end14, %if.end103
  %rv.0 = phi i32 [ %10, %if.end103 ], [ 0, %if.end14 ], [ -1, %if.then88 ], [ -1, %if.else99 ], [ -1, %for.body ], [ -1, %land.lhs.true39 ], [ -1, %if.end44 ], [ -1, %if.then56 ], [ -1, %if.then70 ]
  %ret.3 = phi i32 [ %ret.2, %if.end103 ], [ 0, %if.end14 ], [ %ret.0.lcssa, %if.then88 ], [ %ret.0.lcssa, %if.else99 ], [ %ret.0181, %for.body ], [ %ret.0181, %land.lhs.true39 ], [ %ret.0181, %if.end44 ], [ %ret.0181, %if.then56 ], [ %ret.0181, %if.then70 ]
  %n.4 = phi i32 [ %n.3, %if.end103 ], [ %0, %if.end14 ], [ 0, %if.then88 ], [ %n.0.lcssa, %if.else99 ], [ 0, %if.then70 ], [ %n.0184, %if.then56 ], [ %n.0184, %if.end44 ], [ %n.0184, %land.lhs.true39 ], [ %n.0184, %for.body ]
  store i32 %ret.3, i32* %outl, align 4, !tbaa !12
  store i32 %n.4, i32* %num, align 4, !tbaa !4
  ret i32 %rv.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %a, i8* nocapture noundef readonly %table) unnamed_addr #3 {
entry:
  %tobool.not = icmp sgt i8 %a, -1
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %idxprom = zext i8 %a to i64
  %arrayidx = getelementptr inbounds i8, i8* %table, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %0, %if.end ], [ -1, %entry ]
  ret i8 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @evp_decodeblock_int(%struct.evp_Encode_Ctx_st* noundef readonly %ctx, i8* nocapture noundef writeonly %t, i8* nocapture noundef readonly %f, i32 noundef %n) unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.evp_Encode_Ctx_st* %ctx, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !9
  %and = and i32 %0, 2
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.else, label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %table.0 = phi i8* [ getelementptr inbounds ([128 x i8], [128 x i8]* @data_ascii2bin, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([128 x i8], [128 x i8]* @srpdata_ascii2bin, i64 0, i64 0), %land.lhs.true ]
  %cmp2117 = icmp sgt i32 %n, 0
  br i1 %cmp2117, label %land.rhs.preheader, label %while.end

land.rhs.preheader:                               ; preds = %if.end
  %1 = add nsw i32 %n, -1
  %2 = zext i32 %1 to i64
  %3 = add nuw nsw i64 %2, 1
  %scevgep = getelementptr i8, i8* %f, i64 %3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %f.addr.0119 = phi i8* [ %incdec.ptr, %while.body ], [ %f, %land.rhs.preheader ]
  %n.addr.0118 = phi i32 [ %dec, %while.body ], [ %n, %land.rhs.preheader ]
  %4 = load i8, i8* %f.addr.0119, align 1, !tbaa !13
  %call = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %4, i8* noundef %table.0) #10
  %cmp3 = icmp eq i8 %call, -32
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %f.addr.0119, i64 1
  %dec = add nsw i32 %n.addr.0118, -1
  %cmp2 = icmp sgt i32 %n.addr.0118, 1
  br i1 %cmp2, label %land.rhs, label %while.end, !llvm.loop !18

while.end:                                        ; preds = %land.rhs, %while.body, %if.end
  %n.addr.0.lcssa = phi i32 [ %n, %if.end ], [ 0, %while.body ], [ %n.addr.0118, %land.rhs ]
  %f.addr.0.lcssa = phi i8* [ %f, %if.end ], [ %scevgep, %while.body ], [ %f.addr.0119, %land.rhs ]
  %5 = zext i32 %n.addr.0.lcssa to i64
  %smin = call i32 @llvm.smin.i32(i32 %n.addr.0.lcssa, i32 3)
  br label %while.cond5

while.cond5:                                      ; preds = %land.rhs8, %while.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs8 ], [ %5, %while.end ]
  %6 = trunc i64 %indvars.iv to i32
  %cmp6 = icmp sgt i32 %6, 3
  br i1 %cmp6, label %land.rhs8, label %while.end16

land.rhs8:                                        ; preds = %while.cond5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %7 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i8, i8* %f.addr.0.lcssa, i64 %7
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %call9 = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %8, i8* noundef %table.0) #10
  %9 = and i8 %call9, -20
  %cmp11 = icmp eq i8 %9, -32
  br i1 %cmp11, label %while.cond5, label %while.end16.split.loop.exit131, !llvm.loop !19

while.end16.split.loop.exit131:                   ; preds = %land.rhs8
  %10 = trunc i64 %indvars.iv to i32
  br label %while.end16

while.end16:                                      ; preds = %while.cond5, %while.end16.split.loop.exit131
  %n.addr.1.lcssa = phi i32 [ %10, %while.end16.split.loop.exit131 ], [ %smin, %while.cond5 ]
  %11 = and i32 %n.addr.1.lcssa, 3
  %cmp17.not = icmp eq i32 %11, 0
  br i1 %cmp17.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %while.end16
  %cmp21123 = icmp sgt i32 %n.addr.1.lcssa, 0
  br i1 %cmp21123, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end45
  %t.addr.0127 = phi i8* [ %incdec.ptr70, %if.end45 ], [ %t, %for.cond.preheader ]
  %f.addr.1126 = phi i8* [ %incdec.ptr32, %if.end45 ], [ %f.addr.0.lcssa, %for.cond.preheader ]
  %i.0125 = phi i32 [ %add71, %if.end45 ], [ 0, %for.cond.preheader ]
  %ret.0124 = phi i32 [ %add, %if.end45 ], [ 0, %for.cond.preheader ]
  %incdec.ptr23 = getelementptr inbounds i8, i8* %f.addr.1126, i64 1
  %12 = load i8, i8* %f.addr.1126, align 1, !tbaa !13
  %call24 = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %12, i8* noundef %table.0) #10
  %incdec.ptr26 = getelementptr inbounds i8, i8* %f.addr.1126, i64 2
  %13 = load i8, i8* %incdec.ptr23, align 1, !tbaa !13
  %call27 = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %13, i8* noundef %table.0) #10
  %incdec.ptr29 = getelementptr inbounds i8, i8* %f.addr.1126, i64 3
  %14 = load i8, i8* %incdec.ptr26, align 1, !tbaa !13
  %call30 = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %14, i8* noundef %table.0) #10
  %15 = load i8, i8* %incdec.ptr29, align 1, !tbaa !13
  %call33 = tail call fastcc zeroext i8 @conv_ascii2bin(i8 noundef zeroext %15, i8* noundef %table.0) #10
  %tobool.not = icmp sgt i8 %call24, -1
  %tobool37.not = icmp sgt i8 %call27, -1
  %or.cond = select i1 %tobool.not, i1 %tobool37.not, i1 false
  %tobool40.not = icmp sgt i8 %call30, -1
  %or.cond115 = select i1 %or.cond, i1 %tobool40.not, i1 false
  %tobool43.not = icmp sgt i8 %call33, -1
  %or.cond116 = select i1 %or.cond115, i1 %tobool43.not, i1 false
  br i1 %or.cond116, label %if.end45, label %cleanup

if.end45:                                         ; preds = %for.body
  %incdec.ptr32 = getelementptr inbounds i8, i8* %f.addr.1126, i64 4
  %16 = zext i8 %call24 to i64
  %shl = shl nuw nsw i64 %16, 18
  %17 = zext i8 %call27 to i64
  %shl48 = shl nuw nsw i64 %17, 12
  %or49 = or i64 %shl48, %shl
  %18 = zext i8 %call30 to i64
  %shl51 = shl nuw nsw i64 %18, 6
  %or52 = or i64 %shl51, %shl48
  %19 = lshr i64 %or49, 16
  %conv58 = trunc i64 %19 to i8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %t.addr.0127, i64 1
  store i8 %conv58, i8* %t.addr.0127, align 1, !tbaa !13
  %20 = lshr i64 %or52, 8
  %conv64 = trunc i64 %20 to i8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %t.addr.0127, i64 2
  store i8 %conv64, i8* %incdec.ptr59, align 1, !tbaa !13
  %21 = trunc i64 %shl51 to i8
  %conv66 = or i8 %call33, %21
  %incdec.ptr70 = getelementptr inbounds i8, i8* %t.addr.0127, i64 3
  store i8 %conv66, i8* %incdec.ptr65, align 1, !tbaa !13
  %add = add nuw nsw i32 %ret.0124, 3
  %add71 = add nuw nsw i32 %i.0125, 4
  %cmp21 = icmp slt i32 %add71, %n.addr.1.lcssa
  br i1 %cmp21, label %for.body, label %cleanup, !llvm.loop !20

cleanup:                                          ; preds = %for.body, %if.end45, %for.cond.preheader, %while.end16
  %retval.0 = phi i32 [ -1, %while.end16 ], [ 0, %for.cond.preheader ], [ -1, %for.body ], [ %add, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @EVP_DecodeBlock(i8* nocapture noundef writeonly %t, i8* nocapture noundef readonly %f, i32 noundef %n) local_unnamed_addr #6 {
entry:
  %call = tail call fastcc i32 @evp_decodeblock_int(%struct.evp_Encode_Ctx_st* noundef null, i8* noundef %t, i8* noundef %f, i32 noundef %n) #10
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef %ctx, i8* nocapture noundef writeonly %out, i32* nocapture noundef writeonly %outl) local_unnamed_addr #6 {
entry:
  store i32 0, i32* %outl, align 4, !tbaa !12
  %num = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_Encode_Ctx_st, %struct.evp_Encode_Ctx_st* %ctx, i64 0, i32 2, i64 0
  %call = tail call fastcc i32 @evp_decodeblock_int(%struct.evp_Encode_Ctx_st* noundef nonnull %ctx, i8* noundef %out, i8* noundef nonnull %arraydecay, i32 noundef %0) #10
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i32 0, i32* %num, align 4, !tbaa !4
  store i32 %call, i32* %outl, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_Encode_Ctx_st", !6, i64 0, !6, i64 4, !7, i64 8, !6, i64 88, !6, i64 92}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 92}
!10 = !{!5, !6, i64 4}
!11 = !{!5, !6, i64 88}
!12 = !{!6, !6, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
