; ModuleID = 'crypto/bn/rsaz_exp_x2.c'
source_filename = "crypto/bn/rsaz_exp_x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"crypto/bn/rsaz_exp_x2.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsaz_mod_exp_avx512_x2(i64* nocapture noundef %res1, i64* nocapture noundef readonly %base1, i64* noundef %exp1, i64* nocapture noundef readonly %m1, i64* nocapture noundef readonly %rr1, i64 noundef %k0_1, i64* nocapture noundef %res2, i64* nocapture noundef readonly %base2, i64* noundef %exp2, i64* nocapture noundef readonly %m2, i64* nocapture noundef readonly %rr2, i64 noundef %k0_2, i32 noundef %factor_size) local_unnamed_addr #0 {
entry:
  %exp = alloca [2 x i64*], align 16
  %k0 = alloca [2 x i64], align 16
  %add = add nsw i32 %factor_size, 2
  %call = tail call fastcc i32 @number_of_digits(i32 noundef %add) #9
  %mul = mul nsw i32 %call, 52
  %sub = sub nsw i32 %mul, %factor_size
  %mul1 = shl nsw i32 %sub, 2
  %mul2 = mul nsw i32 %call, 7
  %conv = sext i32 %mul2 to i64
  %mul3 = shl nsw i64 %conv, 3
  %0 = bitcast [2 x i64*]* %exp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = bitcast [2 x i64]* %k0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  %cond = icmp eq i32 %factor_size, 1024
  br i1 %cond, label %sw.bb, label %if.end37

sw.bb:                                            ; preds = %entry
  %add4 = add nsw i64 %mul3, 64
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef %add4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 162) #11
  %cmp = icmp eq i8* %call5, null
  br i1 %cmp, label %if.end37, label %err

err:                                              ; preds = %sw.bb
  %2 = ptrtoint i8* %call5 to i64
  %and = and i64 %2, 63
  %sub7 = sub nuw nsw i64 64, %and
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 %sub7
  %3 = bitcast i8* %add.ptr to i64*
  %idx.ext = sext i32 %call to i64
  %add.ptr9 = getelementptr inbounds i64, i64* %3, i64 %idx.ext
  %mul10 = shl nsw i32 %call, 1
  %idx.ext11 = sext i32 %mul10 to i64
  %add.ptr12 = getelementptr inbounds i64, i64* %3, i64 %idx.ext11
  %mul13 = mul nsw i32 %call, 3
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i64, i64* %3, i64 %idx.ext14
  %mul16 = shl nsw i32 %call, 2
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i64, i64* %3, i64 %idx.ext17
  %mul19 = mul nsw i32 %call, 5
  %idx.ext20 = sext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i64, i64* %3, i64 %idx.ext20
  %mul22 = mul nsw i32 %call, 6
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i64, i64* %3, i64 %idx.ext23
  tail call fastcc void @to_words52(i64* noundef nonnull %3, i32 noundef %call, i64* noundef %base1) #9
  tail call fastcc void @to_words52(i64* noundef nonnull %add.ptr9, i32 noundef %call, i64* noundef %base2) #9
  tail call fastcc void @to_words52(i64* noundef nonnull %add.ptr12, i32 noundef %call, i64* noundef %m1) #9
  tail call fastcc void @to_words52(i64* noundef nonnull %add.ptr15, i32 noundef %call, i64* noundef %m2) #9
  tail call fastcc void @to_words52(i64* noundef nonnull %add.ptr18, i32 noundef %call, i64* noundef %rr1) #9
  tail call fastcc void @to_words52(i64* noundef nonnull %add.ptr21, i32 noundef %call, i64* noundef %rr2) #9
  %4 = bitcast i64* %add.ptr24 to i8*
  %mul26 = shl nsw i64 %idx.ext, 3
  %call27 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef %mul26) #11
  %div = sdiv i32 %sub, 13
  %mul28 = shl nsw i32 %div, 6
  %rem = srem i32 %mul1, 52
  %add29 = add nsw i32 %mul28, %rem
  tail call fastcc void @set_bit(i64* noundef nonnull %add.ptr24, i32 noundef %add29) #9
  tail call void @ossl_rsaz_amm52x20_x1_256(i64* noundef nonnull %add.ptr18, i64* noundef nonnull %add.ptr18, i64* noundef nonnull %add.ptr18, i64* noundef nonnull %add.ptr12, i64 noundef %k0_1) #11
  tail call void @ossl_rsaz_amm52x20_x1_256(i64* noundef nonnull %add.ptr18, i64* noundef nonnull %add.ptr18, i64* noundef nonnull %add.ptr24, i64* noundef nonnull %add.ptr12, i64 noundef %k0_1) #11
  tail call void @ossl_rsaz_amm52x20_x1_256(i64* noundef nonnull %add.ptr21, i64* noundef nonnull %add.ptr21, i64* noundef nonnull %add.ptr21, i64* noundef nonnull %add.ptr15, i64 noundef %k0_2) #11
  tail call void @ossl_rsaz_amm52x20_x1_256(i64* noundef nonnull %add.ptr21, i64* noundef nonnull %add.ptr21, i64* noundef nonnull %add.ptr24, i64* noundef nonnull %add.ptr15, i64 noundef %k0_2) #11
  %arrayidx = getelementptr inbounds [2 x i64*], [2 x i64*]* %exp, i64 0, i64 0
  store i64* %exp1, i64** %arrayidx, align 16, !tbaa !4
  %arrayidx30 = getelementptr inbounds [2 x i64*], [2 x i64*]* %exp, i64 0, i64 1
  store i64* %exp2, i64** %arrayidx30, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds [2 x i64], [2 x i64]* %k0, i64 0, i64 0
  store i64 %k0_1, i64* %arrayidx31, align 16, !tbaa !8
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %k0, i64 0, i64 1
  store i64 %k0_2, i64* %arrayidx32, align 8, !tbaa !8
  call fastcc void @RSAZ_exp52x20_x2_256(i64* noundef nonnull %add.ptr18, i64* noundef nonnull %3, i64** noundef nonnull %arrayidx, i64* noundef nonnull %add.ptr12, i64* noundef nonnull %add.ptr18, i64* noundef nonnull %arrayidx31) #9
  call fastcc void @from_words52(i64* noundef %res1, i64* noundef nonnull %add.ptr18) #9
  call fastcc void @from_words52(i64* noundef %res2, i64* noundef nonnull %add.ptr21) #9
  call void @OPENSSL_cleanse(i8* noundef nonnull %call5, i64 noundef %mul3) #11
  call void @CRYPTO_free(i8* noundef nonnull %call5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 226) #11
  br label %if.end37

if.end37:                                         ; preds = %entry, %sw.bb, %err
  %ret.0123 = phi i32 [ 1, %err ], [ 0, %sw.bb ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %ret.0123
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @number_of_digits(i32 noundef %bitsize) unnamed_addr #2 {
entry:
  %sub = add nsw i32 %bitsize, 51
  %div = sdiv i32 %sub, 52
  ret i32 %div
}

declare void @ossl_rsaz_amm52x20_x1_256(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @RSAZ_exp52x20_x2_256(i64* noundef %out, i64* noundef %base, i64** nocapture noundef readonly %exp, i64* noundef %m, i64* noundef %rr, i64* noundef %k0) unnamed_addr #0 {
entry:
  %red_Y = alloca [2 x [20 x i64]], align 64
  %red_X = alloca [2 x [20 x i64]], align 64
  %expz = alloca [2 x [17 x i64]], align 64
  %red_table = alloca [32 x [2 x [20 x i64]]], align 64
  %0 = bitcast [2 x [20 x i64]]* %red_Y to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %0) #10
  %1 = bitcast [2 x [20 x i64]]* %red_X to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %1) #10
  %2 = bitcast [2 x [17 x i64]]* %expz to i8*
  call void @llvm.lifetime.start.p0i8(i64 272, i8* nonnull %2) #10
  %3 = bitcast [32 x [2 x [20 x i64]]]* %red_table to i8*
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #10
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 320) #11
  %call2 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 10240) #11
  %call4 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 320) #11
  %arrayidx5 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* %red_X, i64 0, i64 0, i64 0
  store i64 1, i64* %arrayidx5, align 64, !tbaa !8
  %arrayidx7 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* %red_X, i64 0, i64 1, i64 0
  store i64 1, i64* %arrayidx7, align 32, !tbaa !8
  %arraydecay10 = getelementptr inbounds [32 x [2 x [20 x i64]]], [32 x [2 x [20 x i64]]]* %red_table, i64 0, i64 0, i64 0, i64 0
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay10, i64* noundef nonnull %arrayidx5, i64* noundef %rr, i64* noundef %m, i64* noundef %k0) #11
  %arraydecay14 = getelementptr inbounds [32 x [2 x [20 x i64]]], [32 x [2 x [20 x i64]]]* %red_table, i64 0, i64 1, i64 0, i64 0
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay14, i64* noundef %base, i64* noundef %rr, i64* noundef %m, i64* noundef %k0) #11
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %4 = shl nuw nsw i64 %indvars.iv, 1
  %arraydecay17 = getelementptr inbounds [32 x [2 x [20 x i64]]], [32 x [2 x [20 x i64]]]* %red_table, i64 0, i64 %4, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [32 x [2 x [20 x i64]]], [32 x [2 x [20 x i64]]]* %red_table, i64 0, i64 %indvars.iv, i64 0, i64 0
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay17, i64* noundef nonnull %arraydecay22, i64* noundef nonnull %arraydecay22, i64* noundef %m, i64* noundef %k0) #11
  %5 = or i64 %4, 1
  %arraydecay33 = getelementptr inbounds [32 x [2 x [20 x i64]]], [32 x [2 x [20 x i64]]]* %red_table, i64 0, i64 %5, i64 0, i64 0
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay33, i64* noundef nonnull %arraydecay17, i64* noundef nonnull %arraydecay14, i64* noundef %m, i64* noundef %k0) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.body
  %6 = bitcast i64** %exp to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !4
  %call45 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef %7, i64 noundef 128) #11
  %arrayidx47 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 0, i64 16
  store i64 0, i64* %arrayidx47, align 64, !tbaa !8
  %arrayidx48 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 1
  %8 = bitcast [17 x i64]* %arrayidx48 to i8*
  %arrayidx50 = getelementptr inbounds i64*, i64** %exp, i64 1
  %9 = bitcast i64** %arrayidx50 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !4
  %call51 = call i8* @memcpy(i8* noundef nonnull %8, i8* noundef %10, i64 noundef 128) #11
  %arrayidx53 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 1, i64 16
  store i64 0, i64* %arrayidx53, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 0, i64 15
  %11 = load i64, i64* %arrayidx57, align 8, !tbaa !8
  %arrayidx60 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 1, i64 15
  %12 = load i64, i64* %arrayidx60, align 64, !tbaa !8
  %shr = lshr i64 %11, 60
  %shr62 = lshr i64 %12, 60
  %arraydecay64 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* %red_Y, i64 0, i64 0, i64 0
  %conv = trunc i64 %shr to i32
  call void @ossl_extract_multiplier_2x20_win5(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay10, i32 noundef %conv, i32 noundef 0) #11
  %arraydecay67 = getelementptr inbounds [2 x [20 x i64]], [2 x [20 x i64]]* %red_Y, i64 0, i64 1, i64 0
  %conv69 = trunc i64 %shr62 to i32
  call void @ossl_extract_multiplier_2x20_win5(i64* noundef nonnull %arraydecay67, i64* noundef nonnull %arraydecay10, i32 noundef %conv69, i32 noundef 1) #11
  br label %for.body74

for.body74:                                       ; preds = %for.end, %if.end110
  %exp_bit_no.0221 = phi i32 [ 1015, %for.end ], [ %sub135, %if.end110 ]
  %div75218 = lshr i32 %exp_bit_no.0221, 6
  %rem76219 = and i32 %exp_bit_no.0221, 63
  %13 = zext i32 %div75218 to i64
  %arrayidx79 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 0, i64 %13
  %14 = load i64, i64* %arrayidx79, align 8, !tbaa !8
  %add81 = add nuw nsw i32 %div75218, 1
  %15 = zext i32 %add81 to i64
  %sh_prom84 = zext i32 %rem76219 to i64
  %shr85 = lshr i64 %14, %sh_prom84
  %cmp86 = icmp ugt i32 %rem76219, 59
  br i1 %cmp86, label %if.then, label %if.end

if.then:                                          ; preds = %for.body74
  %arrayidx83 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 0, i64 %15
  %16 = load i64, i64* %arrayidx83, align 8, !tbaa !8
  %sub88 = sub nuw nsw i32 64, %rem76219
  %sh_prom89 = zext i32 %sub88 to i64
  %shl = shl i64 %16, %sh_prom89
  %xor = xor i64 %shl, %shr85
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body74
  %red_table_idx_0.0 = phi i64 [ %xor, %if.then ], [ %shr85, %for.body74 ]
  %17 = trunc i64 %red_table_idx_0.0 to i32
  %conv93 = and i32 %17, 31
  call void @ossl_extract_multiplier_2x20_win5(i64* noundef nonnull %arrayidx5, i64* noundef nonnull %arraydecay10, i32 noundef %conv93, i32 noundef 0) #11
  %arrayidx96 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 1, i64 %13
  %18 = load i64, i64* %arrayidx96, align 8, !tbaa !8
  %shr102 = lshr i64 %18, %sh_prom84
  br i1 %cmp86, label %if.then105, label %if.end110

if.then105:                                       ; preds = %if.end
  %arrayidx100 = getelementptr inbounds [2 x [17 x i64]], [2 x [17 x i64]]* %expz, i64 0, i64 1, i64 %15
  %19 = load i64, i64* %arrayidx100, align 8, !tbaa !8
  %sub106 = sub nuw nsw i32 64, %rem76219
  %sh_prom107 = zext i32 %sub106 to i64
  %shl108 = shl i64 %19, %sh_prom107
  %xor109 = xor i64 %shl108, %shr102
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.end
  %red_table_idx_1.0 = phi i64 [ %xor109, %if.then105 ], [ %shr102, %if.end ]
  %20 = trunc i64 %red_table_idx_1.0 to i32
  %conv115 = and i32 %20, 31
  call void @ossl_extract_multiplier_2x20_win5(i64* noundef nonnull %arrayidx7, i64* noundef nonnull %arraydecay10, i32 noundef %conv115, i32 noundef 1) #11
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef %m, i64* noundef %k0) #11
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef %m, i64* noundef %k0) #11
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef %m, i64* noundef %k0) #11
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef %m, i64* noundef %k0) #11
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef %m, i64* noundef %k0) #11
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arrayidx5, i64* noundef %m, i64* noundef %k0) #11
  %sub135 = add nsw i32 %exp_bit_no.0221, -5
  %cmp72 = icmp ugt i32 %exp_bit_no.0221, 4
  br i1 %cmp72, label %for.body74, label %for.end136, !llvm.loop !12

for.end136:                                       ; preds = %if.end110
  %call138 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 320) #11
  store i64 1, i64* %arrayidx5, align 64, !tbaa !8
  store i64 1, i64* %arrayidx7, align 32, !tbaa !8
  call void @ossl_rsaz_amm52x20_x2_256(i64* noundef %out, i64* noundef nonnull %arraydecay64, i64* noundef nonnull %arrayidx5, i64* noundef %m, i64* noundef %k0) #11
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 272) #11
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 320) #11
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %0) #10
  ret void
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @to_words52(i64* nocapture noundef writeonly %out, i32 noundef %out_len, i64* nocapture noundef readonly %in) unnamed_addr #4 {
if.end23:
  %0 = bitcast i64* %in to i8*
  %1 = load i64, i64* %in, align 8, !tbaa !8
  %and = and i64 %1, 4503599627370495
  store i64 %and, i64* %out, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 6
  %2 = bitcast i8* %add.ptr to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !8
  %shr = lshr i64 %3, 4
  %and1 = and i64 %shr, 4503599627370495
  %arrayidx2 = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %and1, i64* %arrayidx2, align 8, !tbaa !8
  %add.ptr3 = getelementptr inbounds i8, i8* %0, i64 13
  %add.ptr5 = getelementptr inbounds i64, i64* %out, i64 2
  %4 = bitcast i8* %add.ptr3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !8
  %and.1 = and i64 %5, 4503599627370495
  store i64 %and.1, i64* %add.ptr5, align 8, !tbaa !8
  %add.ptr.1 = getelementptr inbounds i8, i8* %0, i64 19
  %6 = bitcast i8* %add.ptr.1 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !8
  %shr.1 = lshr i64 %7, 4
  %and1.1 = and i64 %shr.1, 4503599627370495
  %arrayidx2.1 = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %and1.1, i64* %arrayidx2.1, align 8, !tbaa !8
  %add.ptr3.1 = getelementptr inbounds i8, i8* %0, i64 26
  %add.ptr5.1 = getelementptr inbounds i64, i64* %out, i64 4
  %8 = bitcast i8* %add.ptr3.1 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !8
  %and.2 = and i64 %9, 4503599627370495
  store i64 %and.2, i64* %add.ptr5.1, align 8, !tbaa !8
  %add.ptr.210 = getelementptr inbounds i64, i64* %in, i64 4
  %10 = load i64, i64* %add.ptr.210, align 8, !tbaa !8
  %shr.2 = lshr i64 %10, 4
  %and1.2 = and i64 %shr.2, 4503599627370495
  %arrayidx2.2 = getelementptr inbounds i64, i64* %out, i64 5
  store i64 %and1.2, i64* %arrayidx2.2, align 8, !tbaa !8
  %add.ptr3.2 = getelementptr inbounds i8, i8* %0, i64 39
  %add.ptr5.2 = getelementptr inbounds i64, i64* %out, i64 6
  %11 = bitcast i8* %add.ptr3.2 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !8
  %and.3 = and i64 %12, 4503599627370495
  store i64 %and.3, i64* %add.ptr5.2, align 8, !tbaa !8
  %add.ptr.3 = getelementptr inbounds i8, i8* %0, i64 45
  %13 = bitcast i8* %add.ptr.3 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !8
  %shr.3 = lshr i64 %14, 4
  %and1.3 = and i64 %shr.3, 4503599627370495
  %arrayidx2.3 = getelementptr inbounds i64, i64* %out, i64 7
  store i64 %and1.3, i64* %arrayidx2.3, align 8, !tbaa !8
  %add.ptr3.3 = getelementptr inbounds i8, i8* %0, i64 52
  %add.ptr5.3 = getelementptr inbounds i64, i64* %out, i64 8
  %15 = bitcast i8* %add.ptr3.3 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !8
  %and.4 = and i64 %16, 4503599627370495
  store i64 %and.4, i64* %add.ptr5.3, align 8, !tbaa !8
  %add.ptr.4 = getelementptr inbounds i8, i8* %0, i64 58
  %17 = bitcast i8* %add.ptr.4 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !8
  %shr.4 = lshr i64 %18, 4
  %and1.4 = and i64 %shr.4, 4503599627370495
  %arrayidx2.4 = getelementptr inbounds i64, i64* %out, i64 9
  store i64 %and1.4, i64* %arrayidx2.4, align 8, !tbaa !8
  %add.ptr3.4 = getelementptr inbounds i8, i8* %0, i64 65
  %add.ptr5.4 = getelementptr inbounds i64, i64* %out, i64 10
  %19 = bitcast i8* %add.ptr3.4 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !8
  %and.5 = and i64 %20, 4503599627370495
  store i64 %and.5, i64* %add.ptr5.4, align 8, !tbaa !8
  %add.ptr.5 = getelementptr inbounds i8, i8* %0, i64 71
  %21 = bitcast i8* %add.ptr.5 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !8
  %shr.5 = lshr i64 %22, 4
  %and1.5 = and i64 %shr.5, 4503599627370495
  %arrayidx2.5 = getelementptr inbounds i64, i64* %out, i64 11
  store i64 %and1.5, i64* %arrayidx2.5, align 8, !tbaa !8
  %add.ptr3.5 = getelementptr inbounds i8, i8* %0, i64 78
  %add.ptr5.5 = getelementptr inbounds i64, i64* %out, i64 12
  %23 = bitcast i8* %add.ptr3.5 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !8
  %and.6 = and i64 %24, 4503599627370495
  store i64 %and.6, i64* %add.ptr5.5, align 8, !tbaa !8
  %add.ptr.6 = getelementptr inbounds i8, i8* %0, i64 84
  %25 = bitcast i8* %add.ptr.6 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !8
  %shr.6 = lshr i64 %26, 4
  %and1.6 = and i64 %shr.6, 4503599627370495
  %arrayidx2.6 = getelementptr inbounds i64, i64* %out, i64 13
  store i64 %and1.6, i64* %arrayidx2.6, align 8, !tbaa !8
  %add.ptr3.6 = getelementptr inbounds i8, i8* %0, i64 91
  %add.ptr5.6 = getelementptr inbounds i64, i64* %out, i64 14
  %27 = bitcast i8* %add.ptr3.6 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !8
  %and.7 = and i64 %28, 4503599627370495
  store i64 %and.7, i64* %add.ptr5.6, align 8, !tbaa !8
  %add.ptr.7 = getelementptr inbounds i8, i8* %0, i64 97
  %29 = bitcast i8* %add.ptr.7 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !8
  %shr.7 = lshr i64 %30, 4
  %and1.7 = and i64 %shr.7, 4503599627370495
  %arrayidx2.7 = getelementptr inbounds i64, i64* %out, i64 15
  store i64 %and1.7, i64* %arrayidx2.7, align 8, !tbaa !8
  %add.ptr3.711 = getelementptr inbounds i64, i64* %in, i64 13
  %add.ptr3.7 = bitcast i64* %add.ptr3.711 to i8*
  %add.ptr5.7 = getelementptr inbounds i64, i64* %out, i64 16
  %31 = load i64, i64* %add.ptr3.711, align 8, !tbaa !8
  %and.8 = and i64 %31, 4503599627370495
  store i64 %and.8, i64* %add.ptr5.7, align 8, !tbaa !8
  %add.ptr.8 = getelementptr inbounds i8, i8* %add.ptr3.7, i64 6
  %32 = bitcast i8* %add.ptr.8 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !8
  %shr.8 = lshr i64 %33, 4
  %and1.8 = and i64 %shr.8, 4503599627370495
  %arrayidx2.8 = getelementptr inbounds i64, i64* %out, i64 17
  store i64 %and1.8, i64* %arrayidx2.8, align 8, !tbaa !8
  %add.ptr5.8 = getelementptr inbounds i64, i64* %out, i64 18
  %add.ptr3.8 = getelementptr inbounds i8, i8* %add.ptr3.7, i64 13
  %call = tail call fastcc i64 @get_digit52(i8* noundef nonnull %add.ptr3.8, i32 noundef 7) #9
  %and7 = and i64 %call, 4503599627370495
  store i64 %and7, i64* %add.ptr5.8, align 8, !tbaa !8
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr3.7, i64 19
  %call12 = tail call fastcc i64 @get_digit52(i8* noundef nonnull %add.ptr9, i32 noundef 5) #9
  %shr13 = lshr i64 %call12, 4
  %arrayidx14 = getelementptr inbounds i64, i64* %out, i64 19
  store i64 %shr13, i64* %arrayidx14, align 8, !tbaa !8
  %add.ptr15 = getelementptr inbounds i64, i64* %out, i64 20
  %sub16 = add i32 %out_len, -20
  %cmp247 = icmp sgt i32 %sub16, 0
  br i1 %cmp247, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end23
  %34 = add i32 %out_len, -21
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  %min.iters.check = icmp ult i32 %34, 3
  br i1 %min.iters.check, label %while.body.preheader15, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %36, 8589934588
  %ind.end = getelementptr i64, i64* %add.ptr15, i64 %n.vec
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end13 = sub i32 %sub16, %cast.crd
  %37 = add nsw i64 %n.vec, -4
  %38 = lshr exact i64 %37, 2
  %39 = add nuw nsw i64 %38, 1
  %xtraiter = and i64 %39, 7
  %40 = icmp ult i64 %37, 28
  br i1 %40, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %39, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %next.gep = getelementptr i64, i64* %add.ptr15, i64 %index
  %41 = bitcast i64* %next.gep to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %41, align 8, !tbaa !8
  %42 = getelementptr i64, i64* %next.gep, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %43, align 8, !tbaa !8
  %index.next = or i64 %index, 4
  %next.gep.1 = getelementptr i64, i64* %add.ptr15, i64 %index.next
  %44 = bitcast i64* %next.gep.1 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %44, align 8, !tbaa !8
  %45 = getelementptr i64, i64* %next.gep.1, i64 2
  %46 = bitcast i64* %45 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %46, align 8, !tbaa !8
  %index.next.1 = or i64 %index, 8
  %next.gep.2 = getelementptr i64, i64* %add.ptr15, i64 %index.next.1
  %47 = bitcast i64* %next.gep.2 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %47, align 8, !tbaa !8
  %48 = getelementptr i64, i64* %next.gep.2, i64 2
  %49 = bitcast i64* %48 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %49, align 8, !tbaa !8
  %index.next.2 = or i64 %index, 12
  %next.gep.3 = getelementptr i64, i64* %add.ptr15, i64 %index.next.2
  %50 = bitcast i64* %next.gep.3 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %50, align 8, !tbaa !8
  %51 = getelementptr i64, i64* %next.gep.3, i64 2
  %52 = bitcast i64* %51 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %52, align 8, !tbaa !8
  %index.next.3 = or i64 %index, 16
  %next.gep.4 = getelementptr i64, i64* %add.ptr15, i64 %index.next.3
  %53 = bitcast i64* %next.gep.4 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %53, align 8, !tbaa !8
  %54 = getelementptr i64, i64* %next.gep.4, i64 2
  %55 = bitcast i64* %54 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %55, align 8, !tbaa !8
  %index.next.4 = or i64 %index, 20
  %next.gep.5 = getelementptr i64, i64* %add.ptr15, i64 %index.next.4
  %56 = bitcast i64* %next.gep.5 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %56, align 8, !tbaa !8
  %57 = getelementptr i64, i64* %next.gep.5, i64 2
  %58 = bitcast i64* %57 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %58, align 8, !tbaa !8
  %index.next.5 = or i64 %index, 24
  %next.gep.6 = getelementptr i64, i64* %add.ptr15, i64 %index.next.5
  %59 = bitcast i64* %next.gep.6 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %59, align 8, !tbaa !8
  %60 = getelementptr i64, i64* %next.gep.6, i64 2
  %61 = bitcast i64* %60 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %61, align 8, !tbaa !8
  %index.next.6 = or i64 %index, 28
  %next.gep.7 = getelementptr i64, i64* %add.ptr15, i64 %index.next.6
  %62 = bitcast i64* %next.gep.7 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %62, align 8, !tbaa !8
  %63 = getelementptr i64, i64* %next.gep.7, i64 2
  %64 = bitcast i64* %63 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %64, align 8, !tbaa !8
  %index.next.7 = add nuw i64 %index, 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !13

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %next.gep.epil = getelementptr i64, i64* %add.ptr15, i64 %index.epil
  %65 = bitcast i64* %next.gep.epil to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %65, align 8, !tbaa !8
  %66 = getelementptr i64, i64* %next.gep.epil, i64 2
  %67 = bitcast i64* %66 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %67, align 8, !tbaa !8
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !15

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %36, %n.vec
  br i1 %cmp.n, label %while.end, label %while.body.preheader15

while.body.preheader15:                           ; preds = %while.body.preheader, %middle.block
  %out.addr.29.ph = phi i64* [ %add.ptr15, %while.body.preheader ], [ %ind.end, %middle.block ]
  %out_len.addr.28.ph = phi i32 [ %sub16, %while.body.preheader ], [ %ind.end13, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader15, %while.body
  %out.addr.29 = phi i64* [ %incdec.ptr26, %while.body ], [ %out.addr.29.ph, %while.body.preheader15 ]
  %out_len.addr.28 = phi i32 [ %dec25, %while.body ], [ %out_len.addr.28.ph, %while.body.preheader15 ]
  store i64 0, i64* %out.addr.29, align 8, !tbaa !8
  %dec25 = add nsw i32 %out_len.addr.28, -1
  %incdec.ptr26 = getelementptr inbounds i64, i64* %out.addr.29, i64 1
  %cmp24 = icmp ugt i32 %out_len.addr.28, 1
  br i1 %cmp24, label %while.body, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %while.body, %middle.block, %if.end23
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @set_bit(i64* nocapture noundef %a, i32 noundef %idx) unnamed_addr #6 {
entry:
  %div = sdiv i32 %idx, 64
  %rem = srem i32 %idx, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !8
  %or = or i64 %0, %shl
  store i64 %or, i64* %arrayidx, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @from_words52(i64* nocapture noundef %out, i64* nocapture noundef readonly %in) unnamed_addr #4 {
if.end24:
  %0 = bitcast i64* %out to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !8
  %arrayidx.2 = getelementptr inbounds i64, i64* %out, i64 2
  %1 = bitcast i64* %arrayidx.2 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %1, align 8, !tbaa !8
  %arrayidx.4 = getelementptr inbounds i64, i64* %out, i64 4
  %2 = bitcast i64* %arrayidx.4 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %2, align 8, !tbaa !8
  %arrayidx.6 = getelementptr inbounds i64, i64* %out, i64 6
  %3 = bitcast i64* %arrayidx.6 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 8, !tbaa !8
  %arrayidx.8 = getelementptr inbounds i64, i64* %out, i64 8
  %4 = bitcast i64* %arrayidx.8 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 8, !tbaa !8
  %arrayidx.10 = getelementptr inbounds i64, i64* %out, i64 10
  %5 = bitcast i64* %arrayidx.10 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !tbaa !8
  %arrayidx.12 = getelementptr inbounds i64, i64* %out, i64 12
  %6 = bitcast i64* %arrayidx.12 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !tbaa !8
  %arrayidx.14 = getelementptr inbounds i64, i64* %out, i64 14
  %7 = bitcast i64* %arrayidx.14 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !tbaa !8
  %8 = bitcast i64* %out to i8*
  %9 = load i64, i64* %in, align 8, !tbaa !8
  store i64 %9, i64* %out, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 6
  %arrayidx5 = getelementptr inbounds i64, i64* %in, i64 1
  %10 = load i64, i64* %arrayidx5, align 8, !tbaa !8
  %shl = shl i64 %10, 4
  %11 = bitcast i8* %add.ptr to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !8
  %xor = xor i64 %12, %shl
  store i64 %xor, i64* %11, align 8, !tbaa !8
  %add.ptr6 = getelementptr inbounds i8, i8* %8, i64 13
  %add.ptr8 = getelementptr inbounds i64, i64* %in, i64 2
  %13 = load i64, i64* %add.ptr8, align 8, !tbaa !8
  %14 = bitcast i8* %add.ptr6 to i64*
  store i64 %13, i64* %14, align 8, !tbaa !8
  %add.ptr.1 = getelementptr inbounds i8, i8* %8, i64 19
  %arrayidx5.1 = getelementptr inbounds i64, i64* %in, i64 3
  %15 = load i64, i64* %arrayidx5.1, align 8, !tbaa !8
  %shl.1 = shl i64 %15, 4
  %16 = bitcast i8* %add.ptr.1 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !8
  %xor.1 = xor i64 %17, %shl.1
  store i64 %xor.1, i64* %16, align 8, !tbaa !8
  %add.ptr6.1 = getelementptr inbounds i8, i8* %8, i64 26
  %add.ptr8.1 = getelementptr inbounds i64, i64* %in, i64 4
  %18 = load i64, i64* %add.ptr8.1, align 8, !tbaa !8
  %19 = bitcast i8* %add.ptr6.1 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !8
  %add.ptr.27 = getelementptr inbounds i64, i64* %out, i64 4
  %arrayidx5.2 = getelementptr inbounds i64, i64* %in, i64 5
  %20 = load i64, i64* %arrayidx5.2, align 8, !tbaa !8
  %shl.2 = shl i64 %20, 4
  %21 = load i64, i64* %add.ptr.27, align 8, !tbaa !8
  %xor.2 = xor i64 %21, %shl.2
  store i64 %xor.2, i64* %add.ptr.27, align 8, !tbaa !8
  %add.ptr6.2 = getelementptr inbounds i8, i8* %8, i64 39
  %add.ptr8.2 = getelementptr inbounds i64, i64* %in, i64 6
  %22 = load i64, i64* %add.ptr8.2, align 8, !tbaa !8
  %23 = bitcast i8* %add.ptr6.2 to i64*
  store i64 %22, i64* %23, align 8, !tbaa !8
  %add.ptr.3 = getelementptr inbounds i8, i8* %8, i64 45
  %arrayidx5.3 = getelementptr inbounds i64, i64* %in, i64 7
  %24 = load i64, i64* %arrayidx5.3, align 8, !tbaa !8
  %shl.3 = shl i64 %24, 4
  %25 = bitcast i8* %add.ptr.3 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !8
  %xor.3 = xor i64 %26, %shl.3
  store i64 %xor.3, i64* %25, align 8, !tbaa !8
  %add.ptr6.3 = getelementptr inbounds i8, i8* %8, i64 52
  %add.ptr8.3 = getelementptr inbounds i64, i64* %in, i64 8
  %27 = load i64, i64* %add.ptr8.3, align 8, !tbaa !8
  %28 = bitcast i8* %add.ptr6.3 to i64*
  store i64 %27, i64* %28, align 8, !tbaa !8
  %add.ptr.4 = getelementptr inbounds i8, i8* %8, i64 58
  %arrayidx5.4 = getelementptr inbounds i64, i64* %in, i64 9
  %29 = load i64, i64* %arrayidx5.4, align 8, !tbaa !8
  %shl.4 = shl i64 %29, 4
  %30 = bitcast i8* %add.ptr.4 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !8
  %xor.4 = xor i64 %31, %shl.4
  store i64 %xor.4, i64* %30, align 8, !tbaa !8
  %add.ptr6.4 = getelementptr inbounds i8, i8* %8, i64 65
  %add.ptr8.4 = getelementptr inbounds i64, i64* %in, i64 10
  %32 = load i64, i64* %add.ptr8.4, align 8, !tbaa !8
  %33 = bitcast i8* %add.ptr6.4 to i64*
  store i64 %32, i64* %33, align 8, !tbaa !8
  %add.ptr.5 = getelementptr inbounds i8, i8* %8, i64 71
  %arrayidx5.5 = getelementptr inbounds i64, i64* %in, i64 11
  %34 = load i64, i64* %arrayidx5.5, align 8, !tbaa !8
  %shl.5 = shl i64 %34, 4
  %35 = bitcast i8* %add.ptr.5 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !8
  %xor.5 = xor i64 %36, %shl.5
  store i64 %xor.5, i64* %35, align 8, !tbaa !8
  %add.ptr6.5 = getelementptr inbounds i8, i8* %8, i64 78
  %add.ptr8.5 = getelementptr inbounds i64, i64* %in, i64 12
  %37 = load i64, i64* %add.ptr8.5, align 8, !tbaa !8
  %38 = bitcast i8* %add.ptr6.5 to i64*
  store i64 %37, i64* %38, align 8, !tbaa !8
  %add.ptr.6 = getelementptr inbounds i8, i8* %8, i64 84
  %arrayidx5.6 = getelementptr inbounds i64, i64* %in, i64 13
  %39 = load i64, i64* %arrayidx5.6, align 8, !tbaa !8
  %shl.6 = shl i64 %39, 4
  %40 = bitcast i8* %add.ptr.6 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !8
  %xor.6 = xor i64 %41, %shl.6
  store i64 %xor.6, i64* %40, align 8, !tbaa !8
  %add.ptr6.6 = getelementptr inbounds i8, i8* %8, i64 91
  %add.ptr8.6 = getelementptr inbounds i64, i64* %in, i64 14
  %42 = load i64, i64* %add.ptr8.6, align 8, !tbaa !8
  %43 = bitcast i8* %add.ptr6.6 to i64*
  store i64 %42, i64* %43, align 8, !tbaa !8
  %add.ptr.7 = getelementptr inbounds i8, i8* %8, i64 97
  %arrayidx5.7 = getelementptr inbounds i64, i64* %in, i64 15
  %44 = load i64, i64* %arrayidx5.7, align 8, !tbaa !8
  %shl.7 = shl i64 %44, 4
  %45 = bitcast i8* %add.ptr.7 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !8
  %xor.7 = xor i64 %46, %shl.7
  store i64 %xor.7, i64* %45, align 8, !tbaa !8
  %add.ptr6.78 = getelementptr inbounds i64, i64* %out, i64 13
  %add.ptr6.7 = bitcast i64* %add.ptr6.78 to i8*
  %add.ptr8.7 = getelementptr inbounds i64, i64* %in, i64 16
  %47 = load i64, i64* %add.ptr8.7, align 8, !tbaa !8
  store i64 %47, i64* %add.ptr6.78, align 8, !tbaa !8
  %add.ptr.8 = getelementptr inbounds i8, i8* %add.ptr6.7, i64 6
  %arrayidx5.8 = getelementptr inbounds i64, i64* %in, i64 17
  %48 = load i64, i64* %arrayidx5.8, align 8, !tbaa !8
  %shl.8 = shl i64 %48, 4
  %49 = bitcast i8* %add.ptr.8 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !8
  %xor.8 = xor i64 %50, %shl.8
  store i64 %xor.8, i64* %49, align 8, !tbaa !8
  %add.ptr8.8 = getelementptr inbounds i64, i64* %in, i64 18
  %add.ptr6.8 = getelementptr inbounds i8, i8* %add.ptr6.7, i64 13
  %51 = load i64, i64* %add.ptr8.8, align 8, !tbaa !8
  tail call fastcc void @put_digit52(i8* noundef nonnull %add.ptr6.8, i32 noundef 7, i64 noundef %51) #9
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr6.7, i64 19
  %arrayidx16 = getelementptr inbounds i64, i64* %in, i64 19
  %52 = load i64, i64* %arrayidx16, align 8, !tbaa !8
  %shl17 = shl i64 %52, 4
  %53 = load i64, i64* %add.ptr8.8, align 8, !tbaa !8
  %shr19 = lshr i64 %53, 48
  %or = or i64 %shr19, %shl17
  tail call fastcc void @put_digit52(i8* noundef nonnull %add.ptr12, i32 noundef 5, i64 noundef %or) #9
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ossl_rsaz_amm52x20_x2_256(i64* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @ossl_extract_multiplier_2x20_win5(i64* noundef, i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i64 @get_digit52(i8* nocapture noundef readonly %in, i32 noundef %in_len) unnamed_addr #7 {
entry:
  %cmp6 = icmp sgt i32 %in_len, 0
  br i1 %cmp6, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %in_len to i64
  %1 = add nsw i64 %0, -1
  %xtraiter = and i64 %0, 3
  %2 = icmp ult i64 %1, 3
  br i1 %2, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %0, 4294967292
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ %0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %digit.08 = phi i64 [ 0, %for.body.preheader.new ], [ %add.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 4294967295
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %3
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %4 to i64
  %5 = shl i64 %digit.08, 16
  %6 = shl nuw nsw i64 %conv, 8
  %shl.1 = or i64 %5, %6
  %indvars.iv.next.1 = add i64 %indvars.iv, 4294967294
  %7 = and i64 %indvars.iv.next.1, 4294967295
  %arrayidx.1 = getelementptr inbounds i8, i8* %in, i64 %7
  %8 = load i8, i8* %arrayidx.1, align 1, !tbaa !19
  %conv.1 = zext i8 %8 to i64
  %add.1 = or i64 %shl.1, %conv.1
  %indvars.iv.next.2 = add i64 %indvars.iv, 4294967293
  %9 = and i64 %indvars.iv.next.2, 4294967295
  %arrayidx.2 = getelementptr inbounds i8, i8* %in, i64 %9
  %10 = load i8, i8* %arrayidx.2, align 1, !tbaa !19
  %conv.2 = zext i8 %10 to i64
  %11 = shl i64 %add.1, 16
  %12 = shl nuw nsw i64 %conv.2, 8
  %shl.3 = or i64 %11, %12
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %13 = and i64 %indvars.iv.next.3, 4294967295
  %arrayidx.3 = getelementptr inbounds i8, i8* %in, i64 %13
  %14 = load i8, i8* %arrayidx.3, align 1, !tbaa !19
  %conv.3 = zext i8 %14 to i64
  %add.3 = or i64 %shl.3, %conv.3
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !20

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %add.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %add.3, %for.body ]
  %indvars.iv.unr = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next.3, %for.body ]
  %digit.08.unr = phi i64 [ 0, %for.body.preheader ], [ %add.3, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.end.loopexit.unr-lcssa ]
  %digit.08.epil = phi i64 [ %add.epil, %for.body.epil ], [ %digit.08.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %shl.epil = shl i64 %digit.08.epil, 8
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, -1
  %15 = and i64 %indvars.iv.next.epil, 4294967295
  %arrayidx.epil = getelementptr inbounds i8, i8* %in, i64 %15
  %16 = load i8, i8* %arrayidx.epil, align 1, !tbaa !19
  %conv.epil = zext i8 %16 to i64
  %add.epil = or i64 %shl.epil, %conv.epil
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !21

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %entry
  %digit.0.lcssa = phi i64 [ 0, %entry ], [ %add.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %add.epil, %for.body.epil ]
  ret i64 %digit.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal fastcc void @put_digit52(i8* nocapture noundef writeonly %pStr, i32 noundef %strLen, i64 noundef %digit) unnamed_addr #8 {
entry:
  %cmp3 = icmp sgt i32 %strLen, 0
  br i1 %cmp3, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = add i32 %strLen, -1
  %xtraiter = and i32 %strLen, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %digit.addr.06.prol = phi i64 [ %shr.prol, %for.body.prol ], [ %digit, %for.body.preheader ]
  %strLen.addr.05.prol = phi i32 [ %dec.prol, %for.body.prol ], [ %strLen, %for.body.preheader ]
  %pStr.addr.04.prol = phi i8* [ %incdec.ptr.prol, %for.body.prol ], [ %pStr, %for.body.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %conv.prol = trunc i64 %digit.addr.06.prol to i8
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %pStr.addr.04.prol, i64 1
  store i8 %conv.prol, i8* %pStr.addr.04.prol, align 1, !tbaa !19
  %shr.prol = lshr i64 %digit.addr.06.prol, 8
  %dec.prol = add nsw i32 %strLen.addr.05.prol, -1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !22

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %digit.addr.06.unr = phi i64 [ %digit, %for.body.preheader ], [ %shr.prol, %for.body.prol ]
  %strLen.addr.05.unr = phi i32 [ %strLen, %for.body.preheader ], [ %dec.prol, %for.body.prol ]
  %pStr.addr.04.unr = phi i8* [ %pStr, %for.body.preheader ], [ %incdec.ptr.prol, %for.body.prol ]
  %1 = icmp ult i32 %0, 7
  br i1 %1, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %digit.addr.06 = phi i64 [ 0, %for.body ], [ %digit.addr.06.unr, %for.body.prol.loopexit ]
  %strLen.addr.05 = phi i32 [ %dec.7, %for.body ], [ %strLen.addr.05.unr, %for.body.prol.loopexit ]
  %pStr.addr.04 = phi i8* [ %incdec.ptr.7, %for.body ], [ %pStr.addr.04.unr, %for.body.prol.loopexit ]
  %conv = trunc i64 %digit.addr.06 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %pStr.addr.04, i64 1
  store i8 %conv, i8* %pStr.addr.04, align 1, !tbaa !19
  %shr = lshr i64 %digit.addr.06, 8
  %conv.1 = trunc i64 %shr to i8
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 2
  store i8 %conv.1, i8* %incdec.ptr, align 1, !tbaa !19
  %shr.1 = lshr i64 %digit.addr.06, 16
  %conv.2 = trunc i64 %shr.1 to i8
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 3
  store i8 %conv.2, i8* %incdec.ptr.1, align 1, !tbaa !19
  %shr.2 = lshr i64 %digit.addr.06, 24
  %conv.3 = trunc i64 %shr.2 to i8
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 4
  store i8 %conv.3, i8* %incdec.ptr.2, align 1, !tbaa !19
  %shr.3 = lshr i64 %digit.addr.06, 32
  %conv.4 = trunc i64 %shr.3 to i8
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 5
  store i8 %conv.4, i8* %incdec.ptr.3, align 1, !tbaa !19
  %shr.4 = lshr i64 %digit.addr.06, 40
  %conv.5 = trunc i64 %shr.4 to i8
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 6
  store i8 %conv.5, i8* %incdec.ptr.4, align 1, !tbaa !19
  %shr.5 = lshr i64 %digit.addr.06, 48
  %conv.6 = trunc i64 %shr.5 to i8
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 7
  store i8 %conv.6, i8* %incdec.ptr.5, align 1, !tbaa !19
  %shr.6 = lshr i64 %digit.addr.06, 56
  %conv.7 = trunc i64 %shr.6 to i8
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %pStr.addr.04, i64 8
  store i8 %conv.7, i8* %incdec.ptr.6, align 1, !tbaa !19
  %dec.7 = add nsw i32 %strLen.addr.05, -8
  %2 = add i32 %strLen.addr.05, -9
  %cmp.7 = icmp ult i32 %2, -2
  br i1 %cmp.7, label %for.body, label %for.end, !llvm.loop !23

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !11, !18, !14}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !11}
