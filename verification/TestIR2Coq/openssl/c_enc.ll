; ModuleID = 'crypto/cast/c_enc.c'
source_filename = "crypto/cast/c_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast_key_st = type { [32 x i32], i32 }

@CAST_S_table0 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table1 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table2 = external local_unnamed_addr constant [256 x i32], align 16
@CAST_S_table3 = external local_unnamed_addr constant [256 x i32], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @CAST_encrypt(i32* nocapture noundef %data, %struct.cast_key_st* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 0
  %0 = load i32, i32* %data, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds i32, i32* %data, i64 1
  %1 = load i32, i32* %arrayidx3, align 4, !tbaa !4
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %add = add i32 %2, %1
  %arrayidx5 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 1
  %3 = load i32, i32* %arrayidx5, align 4, !tbaa !4
  %shl = shl i32 %add, %3
  %sub = sub i32 0, %3
  %and8 = and i32 %sub, 31
  %shr = lshr i32 %add, %and8
  %or965 = or i32 %shr, %shl
  %shr11 = lshr i32 %or965, 8
  %and12 = and i32 %shr11, 255
  %idxprom = zext i32 %and12 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx13, align 4, !tbaa !4
  %and14 = and i32 %or965, 255
  %idxprom15 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom15
  %5 = load i32, i32* %arrayidx16, align 4, !tbaa !4
  %shr17 = lshr i32 %or965, 24
  %idxprom19 = zext i32 %shr17 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom19
  %6 = load i32, i32* %arrayidx20, align 4, !tbaa !4
  %shr21 = lshr i32 %or965, 16
  %and22 = and i32 %shr21, 255
  %idxprom23 = zext i32 %and22 to i64
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom23
  %7 = load i32, i32* %arrayidx24, align 4, !tbaa !4
  %xor = xor i32 %5, %4
  %sub28 = sub i32 %xor, %6
  %add31 = add i32 %sub28, %7
  %xor34 = xor i32 %add31, %0
  %arrayidx40 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 2
  %8 = load i32, i32* %arrayidx40, align 4, !tbaa !4
  %xor41 = xor i32 %xor34, %8
  %arrayidx43 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 3
  %9 = load i32, i32* %arrayidx43, align 4, !tbaa !4
  %shl44 = shl i32 %xor41, %9
  %sub48 = sub i32 0, %9
  %and49 = and i32 %sub48, 31
  %shr50 = lshr i32 %xor41, %and49
  %or52966 = or i32 %shl44, %shr50
  %shr54 = lshr i32 %or52966, 8
  %and55 = and i32 %shr54, 255
  %idxprom56 = zext i32 %and55 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom56
  %10 = load i32, i32* %arrayidx57, align 4, !tbaa !4
  %and58 = and i32 %or52966, 255
  %idxprom59 = zext i32 %and58 to i64
  %arrayidx60 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom59
  %11 = load i32, i32* %arrayidx60, align 4, !tbaa !4
  %shr61 = lshr i32 %or52966, 24
  %idxprom63 = zext i32 %shr61 to i64
  %arrayidx64 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom63
  %12 = load i32, i32* %arrayidx64, align 4, !tbaa !4
  %shr65 = lshr i32 %or52966, 16
  %and66 = and i32 %shr65, 255
  %idxprom67 = zext i32 %and66 to i64
  %arrayidx68 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom67
  %13 = load i32, i32* %arrayidx68, align 4, !tbaa !4
  %sub69 = sub i32 %10, %11
  %add73 = add i32 %sub69, %12
  %and77 = xor i32 %13, %1
  %xor79 = xor i32 %and77, %add73
  %arrayidx85 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 4
  %14 = load i32, i32* %arrayidx85, align 4, !tbaa !4
  %sub86 = sub i32 %14, %xor79
  %arrayidx88 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 5
  %15 = load i32, i32* %arrayidx88, align 4, !tbaa !4
  %shl89 = shl i32 %sub86, %15
  %sub93 = sub i32 0, %15
  %and94 = and i32 %sub93, 31
  %shr95 = lshr i32 %sub86, %and94
  %or97967 = or i32 %shl89, %shr95
  %shr99 = lshr i32 %or97967, 8
  %and100 = and i32 %shr99, 255
  %idxprom101 = zext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom101
  %16 = load i32, i32* %arrayidx102, align 4, !tbaa !4
  %and103 = and i32 %or97967, 255
  %idxprom104 = zext i32 %and103 to i64
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom104
  %17 = load i32, i32* %arrayidx105, align 4, !tbaa !4
  %shr106 = lshr i32 %or97967, 24
  %idxprom108 = zext i32 %shr106 to i64
  %arrayidx109 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom108
  %18 = load i32, i32* %arrayidx109, align 4, !tbaa !4
  %shr110 = lshr i32 %or97967, 16
  %and111 = and i32 %shr110, 255
  %idxprom112 = zext i32 %and111 to i64
  %arrayidx113 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom112
  %19 = load i32, i32* %arrayidx113, align 4, !tbaa !4
  %add114 = add i32 %17, %16
  %xor118968 = xor i32 %add114, %18
  %sub121 = sub i32 %xor118968, %19
  %xor124 = xor i32 %sub121, %xor34
  %arrayidx130 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 6
  %20 = load i32, i32* %arrayidx130, align 4, !tbaa !4
  %add131 = add i32 %xor124, %20
  %arrayidx133 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 7
  %21 = load i32, i32* %arrayidx133, align 4, !tbaa !4
  %shl134 = shl i32 %add131, %21
  %sub138 = sub i32 0, %21
  %and139 = and i32 %sub138, 31
  %shr140 = lshr i32 %add131, %and139
  %or142969 = or i32 %shl134, %shr140
  %shr144 = lshr i32 %or142969, 8
  %and145 = and i32 %shr144, 255
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom146
  %22 = load i32, i32* %arrayidx147, align 4, !tbaa !4
  %and148 = and i32 %or142969, 255
  %idxprom149 = zext i32 %and148 to i64
  %arrayidx150 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom149
  %23 = load i32, i32* %arrayidx150, align 4, !tbaa !4
  %shr151 = lshr i32 %or142969, 24
  %idxprom153 = zext i32 %shr151 to i64
  %arrayidx154 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom153
  %24 = load i32, i32* %arrayidx154, align 4, !tbaa !4
  %shr155 = lshr i32 %or142969, 16
  %and156 = and i32 %shr155, 255
  %idxprom157 = zext i32 %and156 to i64
  %arrayidx158 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom157
  %25 = load i32, i32* %arrayidx158, align 4, !tbaa !4
  %xor159 = xor i32 %23, %22
  %sub163 = sub i32 %xor159, %24
  %add166 = add i32 %sub163, %25
  %xor169 = xor i32 %add166, %xor79
  %arrayidx175 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 8
  %26 = load i32, i32* %arrayidx175, align 4, !tbaa !4
  %xor176 = xor i32 %xor169, %26
  %arrayidx178 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 9
  %27 = load i32, i32* %arrayidx178, align 4, !tbaa !4
  %shl179 = shl i32 %xor176, %27
  %sub183 = sub i32 0, %27
  %and184 = and i32 %sub183, 31
  %shr185 = lshr i32 %xor176, %and184
  %or187970 = or i32 %shl179, %shr185
  %shr189 = lshr i32 %or187970, 8
  %and190 = and i32 %shr189, 255
  %idxprom191 = zext i32 %and190 to i64
  %arrayidx192 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom191
  %28 = load i32, i32* %arrayidx192, align 4, !tbaa !4
  %and193 = and i32 %or187970, 255
  %idxprom194 = zext i32 %and193 to i64
  %arrayidx195 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom194
  %29 = load i32, i32* %arrayidx195, align 4, !tbaa !4
  %shr196 = lshr i32 %or187970, 24
  %idxprom198 = zext i32 %shr196 to i64
  %arrayidx199 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom198
  %30 = load i32, i32* %arrayidx199, align 4, !tbaa !4
  %shr200 = lshr i32 %or187970, 16
  %and201 = and i32 %shr200, 255
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom202
  %31 = load i32, i32* %arrayidx203, align 4, !tbaa !4
  %sub204 = sub i32 %28, %29
  %add208 = add i32 %sub204, %30
  %and212 = xor i32 %31, %xor124
  %xor214 = xor i32 %and212, %add208
  %arrayidx220 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 10
  %32 = load i32, i32* %arrayidx220, align 4, !tbaa !4
  %sub221 = sub i32 %32, %xor214
  %arrayidx223 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 11
  %33 = load i32, i32* %arrayidx223, align 4, !tbaa !4
  %shl224 = shl i32 %sub221, %33
  %sub228 = sub i32 0, %33
  %and229 = and i32 %sub228, 31
  %shr230 = lshr i32 %sub221, %and229
  %or232971 = or i32 %shl224, %shr230
  %shr234 = lshr i32 %or232971, 8
  %and235 = and i32 %shr234, 255
  %idxprom236 = zext i32 %and235 to i64
  %arrayidx237 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom236
  %34 = load i32, i32* %arrayidx237, align 4, !tbaa !4
  %and238 = and i32 %or232971, 255
  %idxprom239 = zext i32 %and238 to i64
  %arrayidx240 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom239
  %35 = load i32, i32* %arrayidx240, align 4, !tbaa !4
  %shr241 = lshr i32 %or232971, 24
  %idxprom243 = zext i32 %shr241 to i64
  %arrayidx244 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom243
  %36 = load i32, i32* %arrayidx244, align 4, !tbaa !4
  %shr245 = lshr i32 %or232971, 16
  %and246 = and i32 %shr245, 255
  %idxprom247 = zext i32 %and246 to i64
  %arrayidx248 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom247
  %37 = load i32, i32* %arrayidx248, align 4, !tbaa !4
  %add249 = add i32 %35, %34
  %xor253972 = xor i32 %add249, %36
  %sub256 = sub i32 %xor253972, %37
  %xor259 = xor i32 %sub256, %xor169
  %arrayidx265 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 12
  %38 = load i32, i32* %arrayidx265, align 4, !tbaa !4
  %add266 = add i32 %xor259, %38
  %arrayidx268 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 13
  %39 = load i32, i32* %arrayidx268, align 4, !tbaa !4
  %shl269 = shl i32 %add266, %39
  %sub273 = sub i32 0, %39
  %and274 = and i32 %sub273, 31
  %shr275 = lshr i32 %add266, %and274
  %or277973 = or i32 %shl269, %shr275
  %shr279 = lshr i32 %or277973, 8
  %and280 = and i32 %shr279, 255
  %idxprom281 = zext i32 %and280 to i64
  %arrayidx282 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom281
  %40 = load i32, i32* %arrayidx282, align 4, !tbaa !4
  %and283 = and i32 %or277973, 255
  %idxprom284 = zext i32 %and283 to i64
  %arrayidx285 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom284
  %41 = load i32, i32* %arrayidx285, align 4, !tbaa !4
  %shr286 = lshr i32 %or277973, 24
  %idxprom288 = zext i32 %shr286 to i64
  %arrayidx289 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom288
  %42 = load i32, i32* %arrayidx289, align 4, !tbaa !4
  %shr290 = lshr i32 %or277973, 16
  %and291 = and i32 %shr290, 255
  %idxprom292 = zext i32 %and291 to i64
  %arrayidx293 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom292
  %43 = load i32, i32* %arrayidx293, align 4, !tbaa !4
  %xor294 = xor i32 %41, %40
  %sub298 = sub i32 %xor294, %42
  %add301 = add i32 %sub298, %43
  %xor304 = xor i32 %add301, %xor214
  %arrayidx310 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 14
  %44 = load i32, i32* %arrayidx310, align 4, !tbaa !4
  %xor311 = xor i32 %xor304, %44
  %arrayidx313 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 15
  %45 = load i32, i32* %arrayidx313, align 4, !tbaa !4
  %shl314 = shl i32 %xor311, %45
  %sub318 = sub i32 0, %45
  %and319 = and i32 %sub318, 31
  %shr320 = lshr i32 %xor311, %and319
  %or322974 = or i32 %shl314, %shr320
  %shr324 = lshr i32 %or322974, 8
  %and325 = and i32 %shr324, 255
  %idxprom326 = zext i32 %and325 to i64
  %arrayidx327 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom326
  %46 = load i32, i32* %arrayidx327, align 4, !tbaa !4
  %and328 = and i32 %or322974, 255
  %idxprom329 = zext i32 %and328 to i64
  %arrayidx330 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom329
  %47 = load i32, i32* %arrayidx330, align 4, !tbaa !4
  %shr331 = lshr i32 %or322974, 24
  %idxprom333 = zext i32 %shr331 to i64
  %arrayidx334 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom333
  %48 = load i32, i32* %arrayidx334, align 4, !tbaa !4
  %shr335 = lshr i32 %or322974, 16
  %and336 = and i32 %shr335, 255
  %idxprom337 = zext i32 %and336 to i64
  %arrayidx338 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom337
  %49 = load i32, i32* %arrayidx338, align 4, !tbaa !4
  %sub339 = sub i32 %46, %47
  %add343 = add i32 %sub339, %48
  %and347 = xor i32 %49, %xor259
  %xor349 = xor i32 %and347, %add343
  %arrayidx355 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 16
  %50 = load i32, i32* %arrayidx355, align 4, !tbaa !4
  %sub356 = sub i32 %50, %xor349
  %arrayidx358 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 17
  %51 = load i32, i32* %arrayidx358, align 4, !tbaa !4
  %shl359 = shl i32 %sub356, %51
  %sub363 = sub i32 0, %51
  %and364 = and i32 %sub363, 31
  %shr365 = lshr i32 %sub356, %and364
  %or367975 = or i32 %shl359, %shr365
  %shr369 = lshr i32 %or367975, 8
  %and370 = and i32 %shr369, 255
  %idxprom371 = zext i32 %and370 to i64
  %arrayidx372 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom371
  %52 = load i32, i32* %arrayidx372, align 4, !tbaa !4
  %and373 = and i32 %or367975, 255
  %idxprom374 = zext i32 %and373 to i64
  %arrayidx375 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom374
  %53 = load i32, i32* %arrayidx375, align 4, !tbaa !4
  %shr376 = lshr i32 %or367975, 24
  %idxprom378 = zext i32 %shr376 to i64
  %arrayidx379 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom378
  %54 = load i32, i32* %arrayidx379, align 4, !tbaa !4
  %shr380 = lshr i32 %or367975, 16
  %and381 = and i32 %shr380, 255
  %idxprom382 = zext i32 %and381 to i64
  %arrayidx383 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom382
  %55 = load i32, i32* %arrayidx383, align 4, !tbaa !4
  %add384 = add i32 %53, %52
  %xor388976 = xor i32 %add384, %54
  %sub391 = sub i32 %xor388976, %55
  %xor394 = xor i32 %sub391, %xor304
  %arrayidx400 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 18
  %56 = load i32, i32* %arrayidx400, align 4, !tbaa !4
  %add401 = add i32 %xor394, %56
  %arrayidx403 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 19
  %57 = load i32, i32* %arrayidx403, align 4, !tbaa !4
  %shl404 = shl i32 %add401, %57
  %sub408 = sub i32 0, %57
  %and409 = and i32 %sub408, 31
  %shr410 = lshr i32 %add401, %and409
  %or412977 = or i32 %shl404, %shr410
  %shr414 = lshr i32 %or412977, 8
  %and415 = and i32 %shr414, 255
  %idxprom416 = zext i32 %and415 to i64
  %arrayidx417 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom416
  %58 = load i32, i32* %arrayidx417, align 4, !tbaa !4
  %and418 = and i32 %or412977, 255
  %idxprom419 = zext i32 %and418 to i64
  %arrayidx420 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom419
  %59 = load i32, i32* %arrayidx420, align 4, !tbaa !4
  %shr421 = lshr i32 %or412977, 24
  %idxprom423 = zext i32 %shr421 to i64
  %arrayidx424 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom423
  %60 = load i32, i32* %arrayidx424, align 4, !tbaa !4
  %shr425 = lshr i32 %or412977, 16
  %and426 = and i32 %shr425, 255
  %idxprom427 = zext i32 %and426 to i64
  %arrayidx428 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom427
  %61 = load i32, i32* %arrayidx428, align 4, !tbaa !4
  %xor429 = xor i32 %59, %58
  %sub433 = sub i32 %xor429, %60
  %add436 = add i32 %sub433, %61
  %xor439 = xor i32 %add436, %xor349
  %arrayidx445 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 20
  %62 = load i32, i32* %arrayidx445, align 4, !tbaa !4
  %xor446 = xor i32 %xor439, %62
  %arrayidx448 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 21
  %63 = load i32, i32* %arrayidx448, align 4, !tbaa !4
  %shl449 = shl i32 %xor446, %63
  %sub453 = sub i32 0, %63
  %and454 = and i32 %sub453, 31
  %shr455 = lshr i32 %xor446, %and454
  %or457978 = or i32 %shl449, %shr455
  %shr459 = lshr i32 %or457978, 8
  %and460 = and i32 %shr459, 255
  %idxprom461 = zext i32 %and460 to i64
  %arrayidx462 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom461
  %64 = load i32, i32* %arrayidx462, align 4, !tbaa !4
  %and463 = and i32 %or457978, 255
  %idxprom464 = zext i32 %and463 to i64
  %arrayidx465 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom464
  %65 = load i32, i32* %arrayidx465, align 4, !tbaa !4
  %shr466 = lshr i32 %or457978, 24
  %idxprom468 = zext i32 %shr466 to i64
  %arrayidx469 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom468
  %66 = load i32, i32* %arrayidx469, align 4, !tbaa !4
  %shr470 = lshr i32 %or457978, 16
  %and471 = and i32 %shr470, 255
  %idxprom472 = zext i32 %and471 to i64
  %arrayidx473 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom472
  %67 = load i32, i32* %arrayidx473, align 4, !tbaa !4
  %sub474 = sub i32 %64, %65
  %add478 = add i32 %sub474, %66
  %and482 = xor i32 %67, %xor394
  %xor484 = xor i32 %and482, %add478
  %arrayidx490 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 22
  %68 = load i32, i32* %arrayidx490, align 4, !tbaa !4
  %sub491 = sub i32 %68, %xor484
  %arrayidx493 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 23
  %69 = load i32, i32* %arrayidx493, align 4, !tbaa !4
  %shl494 = shl i32 %sub491, %69
  %sub498 = sub i32 0, %69
  %and499 = and i32 %sub498, 31
  %shr500 = lshr i32 %sub491, %and499
  %or502979 = or i32 %shl494, %shr500
  %shr504 = lshr i32 %or502979, 8
  %and505 = and i32 %shr504, 255
  %idxprom506 = zext i32 %and505 to i64
  %arrayidx507 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom506
  %70 = load i32, i32* %arrayidx507, align 4, !tbaa !4
  %and508 = and i32 %or502979, 255
  %idxprom509 = zext i32 %and508 to i64
  %arrayidx510 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom509
  %71 = load i32, i32* %arrayidx510, align 4, !tbaa !4
  %shr511 = lshr i32 %or502979, 24
  %idxprom513 = zext i32 %shr511 to i64
  %arrayidx514 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom513
  %72 = load i32, i32* %arrayidx514, align 4, !tbaa !4
  %shr515 = lshr i32 %or502979, 16
  %and516 = and i32 %shr515, 255
  %idxprom517 = zext i32 %and516 to i64
  %arrayidx518 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom517
  %73 = load i32, i32* %arrayidx518, align 4, !tbaa !4
  %add519 = add i32 %71, %70
  %xor523980 = xor i32 %add519, %72
  %sub526 = sub i32 %xor523980, %73
  %xor529 = xor i32 %sub526, %xor439
  %short_key = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 1
  %74 = load i32, i32* %short_key, align 4, !tbaa !8
  %tobool.not = icmp eq i32 %74, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx535 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 24
  %75 = load i32, i32* %arrayidx535, align 4, !tbaa !4
  %add536 = add i32 %75, %xor529
  %arrayidx538 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 25
  %76 = load i32, i32* %arrayidx538, align 4, !tbaa !4
  %shl539 = shl i32 %add536, %76
  %sub543 = sub i32 0, %76
  %and544 = and i32 %sub543, 31
  %shr545 = lshr i32 %add536, %and544
  %or547981 = or i32 %shr545, %shl539
  %shr549 = lshr i32 %or547981, 8
  %and550 = and i32 %shr549, 255
  %idxprom551 = zext i32 %and550 to i64
  %arrayidx552 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom551
  %77 = load i32, i32* %arrayidx552, align 4, !tbaa !4
  %and553 = and i32 %or547981, 255
  %idxprom554 = zext i32 %and553 to i64
  %arrayidx555 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom554
  %78 = load i32, i32* %arrayidx555, align 4, !tbaa !4
  %shr556 = lshr i32 %or547981, 24
  %idxprom558 = zext i32 %shr556 to i64
  %arrayidx559 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom558
  %79 = load i32, i32* %arrayidx559, align 4, !tbaa !4
  %shr560 = lshr i32 %or547981, 16
  %and561 = and i32 %shr560, 255
  %idxprom562 = zext i32 %and561 to i64
  %arrayidx563 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom562
  %80 = load i32, i32* %arrayidx563, align 4, !tbaa !4
  %xor564 = xor i32 %78, %77
  %sub568 = sub i32 %xor564, %79
  %add571 = add i32 %sub568, %80
  %xor574 = xor i32 %add571, %xor484
  %arrayidx580 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 26
  %81 = load i32, i32* %arrayidx580, align 4, !tbaa !4
  %xor581 = xor i32 %xor574, %81
  %arrayidx583 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 27
  %82 = load i32, i32* %arrayidx583, align 4, !tbaa !4
  %shl584 = shl i32 %xor581, %82
  %sub588 = sub i32 0, %82
  %and589 = and i32 %sub588, 31
  %shr590 = lshr i32 %xor581, %and589
  %or592982 = or i32 %shl584, %shr590
  %shr594 = lshr i32 %or592982, 8
  %and595 = and i32 %shr594, 255
  %idxprom596 = zext i32 %and595 to i64
  %arrayidx597 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom596
  %83 = load i32, i32* %arrayidx597, align 4, !tbaa !4
  %and598 = and i32 %or592982, 255
  %idxprom599 = zext i32 %and598 to i64
  %arrayidx600 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom599
  %84 = load i32, i32* %arrayidx600, align 4, !tbaa !4
  %shr601 = lshr i32 %or592982, 24
  %idxprom603 = zext i32 %shr601 to i64
  %arrayidx604 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom603
  %85 = load i32, i32* %arrayidx604, align 4, !tbaa !4
  %shr605 = lshr i32 %or592982, 16
  %and606 = and i32 %shr605, 255
  %idxprom607 = zext i32 %and606 to i64
  %arrayidx608 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom607
  %86 = load i32, i32* %arrayidx608, align 4, !tbaa !4
  %sub609 = sub i32 %83, %84
  %add613 = add i32 %sub609, %85
  %and617 = xor i32 %86, %xor529
  %xor619 = xor i32 %and617, %add613
  %arrayidx625 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 28
  %87 = load i32, i32* %arrayidx625, align 4, !tbaa !4
  %sub626 = sub i32 %87, %xor619
  %arrayidx628 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 29
  %88 = load i32, i32* %arrayidx628, align 4, !tbaa !4
  %shl629 = shl i32 %sub626, %88
  %sub633 = sub i32 0, %88
  %and634 = and i32 %sub633, 31
  %shr635 = lshr i32 %sub626, %and634
  %or637983 = or i32 %shl629, %shr635
  %shr639 = lshr i32 %or637983, 8
  %and640 = and i32 %shr639, 255
  %idxprom641 = zext i32 %and640 to i64
  %arrayidx642 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom641
  %89 = load i32, i32* %arrayidx642, align 4, !tbaa !4
  %and643 = and i32 %or637983, 255
  %idxprom644 = zext i32 %and643 to i64
  %arrayidx645 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom644
  %90 = load i32, i32* %arrayidx645, align 4, !tbaa !4
  %shr646 = lshr i32 %or637983, 24
  %idxprom648 = zext i32 %shr646 to i64
  %arrayidx649 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom648
  %91 = load i32, i32* %arrayidx649, align 4, !tbaa !4
  %shr650 = lshr i32 %or637983, 16
  %and651 = and i32 %shr650, 255
  %idxprom652 = zext i32 %and651 to i64
  %arrayidx653 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom652
  %92 = load i32, i32* %arrayidx653, align 4, !tbaa !4
  %add654 = add i32 %90, %89
  %xor658984 = xor i32 %add654, %91
  %sub661 = sub i32 %xor658984, %92
  %xor664 = xor i32 %sub661, %xor574
  %arrayidx670 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 30
  %93 = load i32, i32* %arrayidx670, align 4, !tbaa !4
  %add671 = add i32 %xor664, %93
  %arrayidx673 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 31
  %94 = load i32, i32* %arrayidx673, align 4, !tbaa !4
  %shl674 = shl i32 %add671, %94
  %sub678 = sub i32 0, %94
  %and679 = and i32 %sub678, 31
  %shr680 = lshr i32 %add671, %and679
  %or682985 = or i32 %shl674, %shr680
  %shr684 = lshr i32 %or682985, 8
  %and685 = and i32 %shr684, 255
  %idxprom686 = zext i32 %and685 to i64
  %arrayidx687 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom686
  %95 = load i32, i32* %arrayidx687, align 4, !tbaa !4
  %and688 = and i32 %or682985, 255
  %idxprom689 = zext i32 %and688 to i64
  %arrayidx690 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom689
  %96 = load i32, i32* %arrayidx690, align 4, !tbaa !4
  %shr691 = lshr i32 %or682985, 24
  %idxprom693 = zext i32 %shr691 to i64
  %arrayidx694 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom693
  %97 = load i32, i32* %arrayidx694, align 4, !tbaa !4
  %shr695 = lshr i32 %or682985, 16
  %and696 = and i32 %shr695, 255
  %idxprom697 = zext i32 %and696 to i64
  %arrayidx698 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom697
  %98 = load i32, i32* %arrayidx698, align 4, !tbaa !4
  %xor699 = xor i32 %96, %95
  %sub703 = sub i32 %xor699, %97
  %add706 = add i32 %sub703, %98
  %xor709 = xor i32 %add706, %xor619
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %r.0 = phi i32 [ %xor529, %entry ], [ %xor709, %if.then ]
  %l.0 = phi i32 [ %xor484, %entry ], [ %xor664, %if.then ]
  store i32 %l.0, i32* %arrayidx3, align 4, !tbaa !4
  store i32 %r.0, i32* %data, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @CAST_decrypt(i32* nocapture noundef %data, %struct.cast_key_st* noundef readonly %key) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %data, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds i32, i32* %data, i64 1
  %1 = load i32, i32* %arrayidx3, align 4, !tbaa !4
  %short_key = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 1
  %2 = load i32, i32* %short_key, align 4, !tbaa !8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx4 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 30
  %3 = load i32, i32* %arrayidx4, align 4, !tbaa !4
  %add = add i32 %3, %1
  %arrayidx5 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 31
  %4 = load i32, i32* %arrayidx5, align 4, !tbaa !4
  %shl = shl i32 %add, %4
  %sub = sub i32 0, %4
  %and8 = and i32 %sub, 31
  %shr = lshr i32 %add, %and8
  %or965 = or i32 %shr, %shl
  %shr11 = lshr i32 %or965, 8
  %and12 = and i32 %shr11, 255
  %idxprom = zext i32 %and12 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx13, align 4, !tbaa !4
  %and14 = and i32 %or965, 255
  %idxprom15 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4, !tbaa !4
  %shr17 = lshr i32 %or965, 24
  %idxprom19 = zext i32 %shr17 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom19
  %7 = load i32, i32* %arrayidx20, align 4, !tbaa !4
  %shr21 = lshr i32 %or965, 16
  %and22 = and i32 %shr21, 255
  %idxprom23 = zext i32 %and22 to i64
  %arrayidx24 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom23
  %8 = load i32, i32* %arrayidx24, align 4, !tbaa !4
  %xor = xor i32 %6, %5
  %sub28 = sub i32 %xor, %7
  %add31 = add i32 %sub28, %8
  %xor34 = xor i32 %add31, %0
  %arrayidx40 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 28
  %9 = load i32, i32* %arrayidx40, align 4, !tbaa !4
  %sub41 = sub i32 %9, %xor34
  %arrayidx43 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 29
  %10 = load i32, i32* %arrayidx43, align 4, !tbaa !4
  %shl44 = shl i32 %sub41, %10
  %sub48 = sub i32 0, %10
  %and49 = and i32 %sub48, 31
  %shr50 = lshr i32 %sub41, %and49
  %or52966 = or i32 %shl44, %shr50
  %shr54 = lshr i32 %or52966, 8
  %and55 = and i32 %shr54, 255
  %idxprom56 = zext i32 %and55 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom56
  %11 = load i32, i32* %arrayidx57, align 4, !tbaa !4
  %and58 = and i32 %or52966, 255
  %idxprom59 = zext i32 %and58 to i64
  %arrayidx60 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom59
  %12 = load i32, i32* %arrayidx60, align 4, !tbaa !4
  %shr61 = lshr i32 %or52966, 24
  %idxprom63 = zext i32 %shr61 to i64
  %arrayidx64 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom63
  %13 = load i32, i32* %arrayidx64, align 4, !tbaa !4
  %shr65 = lshr i32 %or52966, 16
  %and66 = and i32 %shr65, 255
  %idxprom67 = zext i32 %and66 to i64
  %arrayidx68 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom67
  %14 = load i32, i32* %arrayidx68, align 4, !tbaa !4
  %add69 = add i32 %12, %11
  %xor73967 = xor i32 %add69, %13
  %sub76 = sub i32 %xor73967, %14
  %xor79 = xor i32 %sub76, %1
  %arrayidx85 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 26
  %15 = load i32, i32* %arrayidx85, align 4, !tbaa !4
  %xor86 = xor i32 %xor79, %15
  %arrayidx88 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 27
  %16 = load i32, i32* %arrayidx88, align 4, !tbaa !4
  %shl89 = shl i32 %xor86, %16
  %sub93 = sub i32 0, %16
  %and94 = and i32 %sub93, 31
  %shr95 = lshr i32 %xor86, %and94
  %or97968 = or i32 %shl89, %shr95
  %shr99 = lshr i32 %or97968, 8
  %and100 = and i32 %shr99, 255
  %idxprom101 = zext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom101
  %17 = load i32, i32* %arrayidx102, align 4, !tbaa !4
  %and103 = and i32 %or97968, 255
  %idxprom104 = zext i32 %and103 to i64
  %arrayidx105 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom104
  %18 = load i32, i32* %arrayidx105, align 4, !tbaa !4
  %shr106 = lshr i32 %or97968, 24
  %idxprom108 = zext i32 %shr106 to i64
  %arrayidx109 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom108
  %19 = load i32, i32* %arrayidx109, align 4, !tbaa !4
  %shr110 = lshr i32 %or97968, 16
  %and111 = and i32 %shr110, 255
  %idxprom112 = zext i32 %and111 to i64
  %arrayidx113 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom112
  %20 = load i32, i32* %arrayidx113, align 4, !tbaa !4
  %sub114 = sub i32 %17, %18
  %add118 = add i32 %sub114, %19
  %and122 = xor i32 %20, %xor34
  %xor124 = xor i32 %and122, %add118
  %arrayidx130 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 24
  %21 = load i32, i32* %arrayidx130, align 4, !tbaa !4
  %add131 = add i32 %xor124, %21
  %arrayidx133 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 25
  %22 = load i32, i32* %arrayidx133, align 4, !tbaa !4
  %shl134 = shl i32 %add131, %22
  %sub138 = sub i32 0, %22
  %and139 = and i32 %sub138, 31
  %shr140 = lshr i32 %add131, %and139
  %or142969 = or i32 %shl134, %shr140
  %shr144 = lshr i32 %or142969, 8
  %and145 = and i32 %shr144, 255
  %idxprom146 = zext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom146
  %23 = load i32, i32* %arrayidx147, align 4, !tbaa !4
  %and148 = and i32 %or142969, 255
  %idxprom149 = zext i32 %and148 to i64
  %arrayidx150 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom149
  %24 = load i32, i32* %arrayidx150, align 4, !tbaa !4
  %shr151 = lshr i32 %or142969, 24
  %idxprom153 = zext i32 %shr151 to i64
  %arrayidx154 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom153
  %25 = load i32, i32* %arrayidx154, align 4, !tbaa !4
  %shr155 = lshr i32 %or142969, 16
  %and156 = and i32 %shr155, 255
  %idxprom157 = zext i32 %and156 to i64
  %arrayidx158 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom157
  %26 = load i32, i32* %arrayidx158, align 4, !tbaa !4
  %xor159 = xor i32 %24, %23
  %sub163 = sub i32 %xor159, %25
  %add166 = add i32 %sub163, %26
  %xor169 = xor i32 %add166, %xor79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %r.0 = phi i32 [ %1, %entry ], [ %xor169, %if.then ]
  %l.0 = phi i32 [ %0, %entry ], [ %xor124, %if.then ]
  %arrayidx = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 0
  %arrayidx175 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 22
  %27 = load i32, i32* %arrayidx175, align 4, !tbaa !4
  %sub176 = sub i32 %27, %r.0
  %arrayidx178 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 23
  %28 = load i32, i32* %arrayidx178, align 4, !tbaa !4
  %shl179 = shl i32 %sub176, %28
  %sub183 = sub i32 0, %28
  %and184 = and i32 %sub183, 31
  %shr185 = lshr i32 %sub176, %and184
  %or187970 = or i32 %shr185, %shl179
  %shr189 = lshr i32 %or187970, 8
  %and190 = and i32 %shr189, 255
  %idxprom191 = zext i32 %and190 to i64
  %arrayidx192 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom191
  %29 = load i32, i32* %arrayidx192, align 4, !tbaa !4
  %and193 = and i32 %or187970, 255
  %idxprom194 = zext i32 %and193 to i64
  %arrayidx195 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom194
  %30 = load i32, i32* %arrayidx195, align 4, !tbaa !4
  %shr196 = lshr i32 %or187970, 24
  %idxprom198 = zext i32 %shr196 to i64
  %arrayidx199 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom198
  %31 = load i32, i32* %arrayidx199, align 4, !tbaa !4
  %shr200 = lshr i32 %or187970, 16
  %and201 = and i32 %shr200, 255
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom202
  %32 = load i32, i32* %arrayidx203, align 4, !tbaa !4
  %add204 = add i32 %30, %29
  %xor208971 = xor i32 %add204, %31
  %sub211 = sub i32 %xor208971, %32
  %xor214 = xor i32 %sub211, %l.0
  %arrayidx220 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 20
  %33 = load i32, i32* %arrayidx220, align 4, !tbaa !4
  %xor221 = xor i32 %xor214, %33
  %arrayidx223 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 21
  %34 = load i32, i32* %arrayidx223, align 4, !tbaa !4
  %shl224 = shl i32 %xor221, %34
  %sub228 = sub i32 0, %34
  %and229 = and i32 %sub228, 31
  %shr230 = lshr i32 %xor221, %and229
  %or232972 = or i32 %shl224, %shr230
  %shr234 = lshr i32 %or232972, 8
  %and235 = and i32 %shr234, 255
  %idxprom236 = zext i32 %and235 to i64
  %arrayidx237 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom236
  %35 = load i32, i32* %arrayidx237, align 4, !tbaa !4
  %and238 = and i32 %or232972, 255
  %idxprom239 = zext i32 %and238 to i64
  %arrayidx240 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom239
  %36 = load i32, i32* %arrayidx240, align 4, !tbaa !4
  %shr241 = lshr i32 %or232972, 24
  %idxprom243 = zext i32 %shr241 to i64
  %arrayidx244 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom243
  %37 = load i32, i32* %arrayidx244, align 4, !tbaa !4
  %shr245 = lshr i32 %or232972, 16
  %and246 = and i32 %shr245, 255
  %idxprom247 = zext i32 %and246 to i64
  %arrayidx248 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom247
  %38 = load i32, i32* %arrayidx248, align 4, !tbaa !4
  %sub249 = sub i32 %35, %36
  %add253 = add i32 %sub249, %37
  %and257 = xor i32 %38, %r.0
  %xor259 = xor i32 %and257, %add253
  %arrayidx265 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 18
  %39 = load i32, i32* %arrayidx265, align 4, !tbaa !4
  %add266 = add i32 %xor259, %39
  %arrayidx268 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 19
  %40 = load i32, i32* %arrayidx268, align 4, !tbaa !4
  %shl269 = shl i32 %add266, %40
  %sub273 = sub i32 0, %40
  %and274 = and i32 %sub273, 31
  %shr275 = lshr i32 %add266, %and274
  %or277973 = or i32 %shl269, %shr275
  %shr279 = lshr i32 %or277973, 8
  %and280 = and i32 %shr279, 255
  %idxprom281 = zext i32 %and280 to i64
  %arrayidx282 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom281
  %41 = load i32, i32* %arrayidx282, align 4, !tbaa !4
  %and283 = and i32 %or277973, 255
  %idxprom284 = zext i32 %and283 to i64
  %arrayidx285 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom284
  %42 = load i32, i32* %arrayidx285, align 4, !tbaa !4
  %shr286 = lshr i32 %or277973, 24
  %idxprom288 = zext i32 %shr286 to i64
  %arrayidx289 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom288
  %43 = load i32, i32* %arrayidx289, align 4, !tbaa !4
  %shr290 = lshr i32 %or277973, 16
  %and291 = and i32 %shr290, 255
  %idxprom292 = zext i32 %and291 to i64
  %arrayidx293 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom292
  %44 = load i32, i32* %arrayidx293, align 4, !tbaa !4
  %xor294 = xor i32 %42, %41
  %sub298 = sub i32 %xor294, %43
  %add301 = add i32 %sub298, %44
  %xor304 = xor i32 %add301, %xor214
  %arrayidx310 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 16
  %45 = load i32, i32* %arrayidx310, align 4, !tbaa !4
  %sub311 = sub i32 %45, %xor304
  %arrayidx313 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 17
  %46 = load i32, i32* %arrayidx313, align 4, !tbaa !4
  %shl314 = shl i32 %sub311, %46
  %sub318 = sub i32 0, %46
  %and319 = and i32 %sub318, 31
  %shr320 = lshr i32 %sub311, %and319
  %or322974 = or i32 %shl314, %shr320
  %shr324 = lshr i32 %or322974, 8
  %and325 = and i32 %shr324, 255
  %idxprom326 = zext i32 %and325 to i64
  %arrayidx327 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom326
  %47 = load i32, i32* %arrayidx327, align 4, !tbaa !4
  %and328 = and i32 %or322974, 255
  %idxprom329 = zext i32 %and328 to i64
  %arrayidx330 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom329
  %48 = load i32, i32* %arrayidx330, align 4, !tbaa !4
  %shr331 = lshr i32 %or322974, 24
  %idxprom333 = zext i32 %shr331 to i64
  %arrayidx334 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom333
  %49 = load i32, i32* %arrayidx334, align 4, !tbaa !4
  %shr335 = lshr i32 %or322974, 16
  %and336 = and i32 %shr335, 255
  %idxprom337 = zext i32 %and336 to i64
  %arrayidx338 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom337
  %50 = load i32, i32* %arrayidx338, align 4, !tbaa !4
  %add339 = add i32 %48, %47
  %xor343975 = xor i32 %add339, %49
  %sub346 = sub i32 %xor343975, %50
  %xor349 = xor i32 %sub346, %xor259
  %arrayidx355 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 14
  %51 = load i32, i32* %arrayidx355, align 4, !tbaa !4
  %xor356 = xor i32 %xor349, %51
  %arrayidx358 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 15
  %52 = load i32, i32* %arrayidx358, align 4, !tbaa !4
  %shl359 = shl i32 %xor356, %52
  %sub363 = sub i32 0, %52
  %and364 = and i32 %sub363, 31
  %shr365 = lshr i32 %xor356, %and364
  %or367976 = or i32 %shl359, %shr365
  %shr369 = lshr i32 %or367976, 8
  %and370 = and i32 %shr369, 255
  %idxprom371 = zext i32 %and370 to i64
  %arrayidx372 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom371
  %53 = load i32, i32* %arrayidx372, align 4, !tbaa !4
  %and373 = and i32 %or367976, 255
  %idxprom374 = zext i32 %and373 to i64
  %arrayidx375 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom374
  %54 = load i32, i32* %arrayidx375, align 4, !tbaa !4
  %shr376 = lshr i32 %or367976, 24
  %idxprom378 = zext i32 %shr376 to i64
  %arrayidx379 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom378
  %55 = load i32, i32* %arrayidx379, align 4, !tbaa !4
  %shr380 = lshr i32 %or367976, 16
  %and381 = and i32 %shr380, 255
  %idxprom382 = zext i32 %and381 to i64
  %arrayidx383 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom382
  %56 = load i32, i32* %arrayidx383, align 4, !tbaa !4
  %sub384 = sub i32 %53, %54
  %add388 = add i32 %sub384, %55
  %and392 = xor i32 %56, %xor304
  %xor394 = xor i32 %and392, %add388
  %arrayidx400 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 12
  %57 = load i32, i32* %arrayidx400, align 4, !tbaa !4
  %add401 = add i32 %xor394, %57
  %arrayidx403 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 13
  %58 = load i32, i32* %arrayidx403, align 4, !tbaa !4
  %shl404 = shl i32 %add401, %58
  %sub408 = sub i32 0, %58
  %and409 = and i32 %sub408, 31
  %shr410 = lshr i32 %add401, %and409
  %or412977 = or i32 %shl404, %shr410
  %shr414 = lshr i32 %or412977, 8
  %and415 = and i32 %shr414, 255
  %idxprom416 = zext i32 %and415 to i64
  %arrayidx417 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom416
  %59 = load i32, i32* %arrayidx417, align 4, !tbaa !4
  %and418 = and i32 %or412977, 255
  %idxprom419 = zext i32 %and418 to i64
  %arrayidx420 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom419
  %60 = load i32, i32* %arrayidx420, align 4, !tbaa !4
  %shr421 = lshr i32 %or412977, 24
  %idxprom423 = zext i32 %shr421 to i64
  %arrayidx424 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom423
  %61 = load i32, i32* %arrayidx424, align 4, !tbaa !4
  %shr425 = lshr i32 %or412977, 16
  %and426 = and i32 %shr425, 255
  %idxprom427 = zext i32 %and426 to i64
  %arrayidx428 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom427
  %62 = load i32, i32* %arrayidx428, align 4, !tbaa !4
  %xor429 = xor i32 %60, %59
  %sub433 = sub i32 %xor429, %61
  %add436 = add i32 %sub433, %62
  %xor439 = xor i32 %add436, %xor349
  %arrayidx445 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 10
  %63 = load i32, i32* %arrayidx445, align 4, !tbaa !4
  %sub446 = sub i32 %63, %xor439
  %arrayidx448 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 11
  %64 = load i32, i32* %arrayidx448, align 4, !tbaa !4
  %shl449 = shl i32 %sub446, %64
  %sub453 = sub i32 0, %64
  %and454 = and i32 %sub453, 31
  %shr455 = lshr i32 %sub446, %and454
  %or457978 = or i32 %shl449, %shr455
  %shr459 = lshr i32 %or457978, 8
  %and460 = and i32 %shr459, 255
  %idxprom461 = zext i32 %and460 to i64
  %arrayidx462 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom461
  %65 = load i32, i32* %arrayidx462, align 4, !tbaa !4
  %and463 = and i32 %or457978, 255
  %idxprom464 = zext i32 %and463 to i64
  %arrayidx465 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom464
  %66 = load i32, i32* %arrayidx465, align 4, !tbaa !4
  %shr466 = lshr i32 %or457978, 24
  %idxprom468 = zext i32 %shr466 to i64
  %arrayidx469 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom468
  %67 = load i32, i32* %arrayidx469, align 4, !tbaa !4
  %shr470 = lshr i32 %or457978, 16
  %and471 = and i32 %shr470, 255
  %idxprom472 = zext i32 %and471 to i64
  %arrayidx473 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom472
  %68 = load i32, i32* %arrayidx473, align 4, !tbaa !4
  %add474 = add i32 %66, %65
  %xor478979 = xor i32 %add474, %67
  %sub481 = sub i32 %xor478979, %68
  %xor484 = xor i32 %sub481, %xor394
  %arrayidx490 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 8
  %69 = load i32, i32* %arrayidx490, align 4, !tbaa !4
  %xor491 = xor i32 %xor484, %69
  %arrayidx493 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 9
  %70 = load i32, i32* %arrayidx493, align 4, !tbaa !4
  %shl494 = shl i32 %xor491, %70
  %sub498 = sub i32 0, %70
  %and499 = and i32 %sub498, 31
  %shr500 = lshr i32 %xor491, %and499
  %or502980 = or i32 %shl494, %shr500
  %shr504 = lshr i32 %or502980, 8
  %and505 = and i32 %shr504, 255
  %idxprom506 = zext i32 %and505 to i64
  %arrayidx507 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom506
  %71 = load i32, i32* %arrayidx507, align 4, !tbaa !4
  %and508 = and i32 %or502980, 255
  %idxprom509 = zext i32 %and508 to i64
  %arrayidx510 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom509
  %72 = load i32, i32* %arrayidx510, align 4, !tbaa !4
  %shr511 = lshr i32 %or502980, 24
  %idxprom513 = zext i32 %shr511 to i64
  %arrayidx514 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom513
  %73 = load i32, i32* %arrayidx514, align 4, !tbaa !4
  %shr515 = lshr i32 %or502980, 16
  %and516 = and i32 %shr515, 255
  %idxprom517 = zext i32 %and516 to i64
  %arrayidx518 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom517
  %74 = load i32, i32* %arrayidx518, align 4, !tbaa !4
  %sub519 = sub i32 %71, %72
  %add523 = add i32 %sub519, %73
  %and527 = xor i32 %74, %xor439
  %xor529 = xor i32 %and527, %add523
  %arrayidx535 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 6
  %75 = load i32, i32* %arrayidx535, align 4, !tbaa !4
  %add536 = add i32 %xor529, %75
  %arrayidx538 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 7
  %76 = load i32, i32* %arrayidx538, align 4, !tbaa !4
  %shl539 = shl i32 %add536, %76
  %sub543 = sub i32 0, %76
  %and544 = and i32 %sub543, 31
  %shr545 = lshr i32 %add536, %and544
  %or547981 = or i32 %shl539, %shr545
  %shr549 = lshr i32 %or547981, 8
  %and550 = and i32 %shr549, 255
  %idxprom551 = zext i32 %and550 to i64
  %arrayidx552 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom551
  %77 = load i32, i32* %arrayidx552, align 4, !tbaa !4
  %and553 = and i32 %or547981, 255
  %idxprom554 = zext i32 %and553 to i64
  %arrayidx555 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom554
  %78 = load i32, i32* %arrayidx555, align 4, !tbaa !4
  %shr556 = lshr i32 %or547981, 24
  %idxprom558 = zext i32 %shr556 to i64
  %arrayidx559 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom558
  %79 = load i32, i32* %arrayidx559, align 4, !tbaa !4
  %shr560 = lshr i32 %or547981, 16
  %and561 = and i32 %shr560, 255
  %idxprom562 = zext i32 %and561 to i64
  %arrayidx563 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom562
  %80 = load i32, i32* %arrayidx563, align 4, !tbaa !4
  %xor564 = xor i32 %78, %77
  %sub568 = sub i32 %xor564, %79
  %add571 = add i32 %sub568, %80
  %xor574 = xor i32 %add571, %xor484
  %arrayidx580 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 4
  %81 = load i32, i32* %arrayidx580, align 4, !tbaa !4
  %sub581 = sub i32 %81, %xor574
  %arrayidx583 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 5
  %82 = load i32, i32* %arrayidx583, align 4, !tbaa !4
  %shl584 = shl i32 %sub581, %82
  %sub588 = sub i32 0, %82
  %and589 = and i32 %sub588, 31
  %shr590 = lshr i32 %sub581, %and589
  %or592982 = or i32 %shl584, %shr590
  %shr594 = lshr i32 %or592982, 8
  %and595 = and i32 %shr594, 255
  %idxprom596 = zext i32 %and595 to i64
  %arrayidx597 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom596
  %83 = load i32, i32* %arrayidx597, align 4, !tbaa !4
  %and598 = and i32 %or592982, 255
  %idxprom599 = zext i32 %and598 to i64
  %arrayidx600 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom599
  %84 = load i32, i32* %arrayidx600, align 4, !tbaa !4
  %shr601 = lshr i32 %or592982, 24
  %idxprom603 = zext i32 %shr601 to i64
  %arrayidx604 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom603
  %85 = load i32, i32* %arrayidx604, align 4, !tbaa !4
  %shr605 = lshr i32 %or592982, 16
  %and606 = and i32 %shr605, 255
  %idxprom607 = zext i32 %and606 to i64
  %arrayidx608 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom607
  %86 = load i32, i32* %arrayidx608, align 4, !tbaa !4
  %add609 = add i32 %84, %83
  %xor613983 = xor i32 %add609, %85
  %sub616 = sub i32 %xor613983, %86
  %xor619 = xor i32 %sub616, %xor529
  %arrayidx625 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 2
  %87 = load i32, i32* %arrayidx625, align 4, !tbaa !4
  %xor626 = xor i32 %xor619, %87
  %arrayidx628 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 3
  %88 = load i32, i32* %arrayidx628, align 4, !tbaa !4
  %shl629 = shl i32 %xor626, %88
  %sub633 = sub i32 0, %88
  %and634 = and i32 %sub633, 31
  %shr635 = lshr i32 %xor626, %and634
  %or637984 = or i32 %shl629, %shr635
  %shr639 = lshr i32 %or637984, 8
  %and640 = and i32 %shr639, 255
  %idxprom641 = zext i32 %and640 to i64
  %arrayidx642 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom641
  %89 = load i32, i32* %arrayidx642, align 4, !tbaa !4
  %and643 = and i32 %or637984, 255
  %idxprom644 = zext i32 %and643 to i64
  %arrayidx645 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom644
  %90 = load i32, i32* %arrayidx645, align 4, !tbaa !4
  %shr646 = lshr i32 %or637984, 24
  %idxprom648 = zext i32 %shr646 to i64
  %arrayidx649 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom648
  %91 = load i32, i32* %arrayidx649, align 4, !tbaa !4
  %shr650 = lshr i32 %or637984, 16
  %and651 = and i32 %shr650, 255
  %idxprom652 = zext i32 %and651 to i64
  %arrayidx653 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom652
  %92 = load i32, i32* %arrayidx653, align 4, !tbaa !4
  %sub654 = sub i32 %89, %90
  %add658 = add i32 %sub654, %91
  %and662 = xor i32 %92, %xor574
  %xor664 = xor i32 %and662, %add658
  %93 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %add671 = add i32 %xor664, %93
  %arrayidx673 = getelementptr inbounds %struct.cast_key_st, %struct.cast_key_st* %key, i64 0, i32 0, i64 1
  %94 = load i32, i32* %arrayidx673, align 4, !tbaa !4
  %shl674 = shl i32 %add671, %94
  %sub678 = sub i32 0, %94
  %and679 = and i32 %sub678, 31
  %shr680 = lshr i32 %add671, %and679
  %or682985 = or i32 %shl674, %shr680
  %shr684 = lshr i32 %or682985, 8
  %and685 = and i32 %shr684, 255
  %idxprom686 = zext i32 %and685 to i64
  %arrayidx687 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table0, i64 0, i64 %idxprom686
  %95 = load i32, i32* %arrayidx687, align 4, !tbaa !4
  %and688 = and i32 %or682985, 255
  %idxprom689 = zext i32 %and688 to i64
  %arrayidx690 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table1, i64 0, i64 %idxprom689
  %96 = load i32, i32* %arrayidx690, align 4, !tbaa !4
  %shr691 = lshr i32 %or682985, 24
  %idxprom693 = zext i32 %shr691 to i64
  %arrayidx694 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table2, i64 0, i64 %idxprom693
  %97 = load i32, i32* %arrayidx694, align 4, !tbaa !4
  %shr695 = lshr i32 %or682985, 16
  %and696 = and i32 %shr695, 255
  %idxprom697 = zext i32 %and696 to i64
  %arrayidx698 = getelementptr inbounds [256 x i32], [256 x i32]* @CAST_S_table3, i64 0, i64 %idxprom697
  %98 = load i32, i32* %arrayidx698, align 4, !tbaa !4
  %xor699 = xor i32 %96, %95
  %sub703 = sub i32 %xor699, %97
  %add706 = add i32 %sub703, %98
  %xor709 = xor i32 %add706, %xor619
  store i32 %xor664, i32* %arrayidx3, align 4, !tbaa !4
  store i32 %xor709, i32* %data, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @CAST_cbc_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.cast_key_st* noundef %ks, i8* noundef %iv, i32 noundef %enc) local_unnamed_addr #2 {
entry:
  %tin = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %tobool.not = icmp eq i32 %enc, 0
  %incdec.ptr236 = getelementptr inbounds i8, i8* %iv, i64 1
  %1 = load i8, i8* %iv, align 1, !tbaa !10
  %conv237 = zext i8 %1 to i32
  %shl238 = shl nuw i32 %conv237, 24
  %incdec.ptr240 = getelementptr inbounds i8, i8* %iv, i64 2
  %2 = load i8, i8* %incdec.ptr236, align 1, !tbaa !10
  %conv241 = zext i8 %2 to i32
  %shl242 = shl nuw nsw i32 %conv241, 16
  %or244 = or i32 %shl242, %shl238
  %incdec.ptr246 = getelementptr inbounds i8, i8* %iv, i64 3
  %3 = load i8, i8* %incdec.ptr240, align 1, !tbaa !10
  %conv247 = zext i8 %3 to i32
  %shl248 = shl nuw nsw i32 %conv247, 8
  %or250 = or i32 %or244, %shl248
  %incdec.ptr252 = getelementptr inbounds i8, i8* %iv, i64 4
  %4 = load i8, i8* %incdec.ptr246, align 1, !tbaa !10
  %conv253 = zext i8 %4 to i32
  %or255 = or i32 %or250, %conv253
  %incdec.ptr257 = getelementptr inbounds i8, i8* %iv, i64 5
  %5 = load i8, i8* %incdec.ptr252, align 1, !tbaa !10
  %conv258 = zext i8 %5 to i32
  %shl259 = shl nuw i32 %conv258, 24
  %incdec.ptr261 = getelementptr inbounds i8, i8* %iv, i64 6
  %6 = load i8, i8* %incdec.ptr257, align 1, !tbaa !10
  %conv262 = zext i8 %6 to i32
  %shl263 = shl nuw nsw i32 %conv262, 16
  %or265 = or i32 %shl263, %shl259
  %incdec.ptr267 = getelementptr inbounds i8, i8* %iv, i64 7
  %7 = load i8, i8* %incdec.ptr261, align 1, !tbaa !10
  %conv268 = zext i8 %7 to i32
  %shl269 = shl nuw nsw i32 %conv268, 8
  %or271 = or i32 %or265, %shl269
  %8 = load i8, i8* %incdec.ptr267, align 1, !tbaa !10
  %conv274 = zext i8 %8 to i32
  %or276 = or i32 %or271, %conv274
  %cmp281725 = icmp sgt i64 %length, 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp281725, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %l.0.in720 = phi i64 [ %length, %for.body.lr.ph ], [ %l.0, %for.body ]
  %tout1.0719 = phi i32 [ %or276, %for.body.lr.ph ], [ %18, %for.body ]
  %tout0.0718 = phi i32 [ %or255, %for.body.lr.ph ], [ %17, %for.body ]
  %in.addr.0717 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr77, %for.body ]
  %out.addr.0716 = phi i8* [ %out, %for.body.lr.ph ], [ %incdec.ptr113, %for.body ]
  %l.0 = add nsw i64 %l.0.in720, -8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %in.addr.0717, i64 1
  %9 = load i8, i8* %in.addr.0717, align 1, !tbaa !10
  %conv41 = zext i8 %9 to i32
  %shl42 = shl nuw i32 %conv41, 24
  %incdec.ptr44 = getelementptr inbounds i8, i8* %in.addr.0717, i64 2
  %10 = load i8, i8* %incdec.ptr40, align 1, !tbaa !10
  %conv45 = zext i8 %10 to i32
  %shl46 = shl nuw nsw i32 %conv45, 16
  %or48 = or i32 %shl46, %shl42
  %incdec.ptr50 = getelementptr inbounds i8, i8* %in.addr.0717, i64 3
  %11 = load i8, i8* %incdec.ptr44, align 1, !tbaa !10
  %conv51 = zext i8 %11 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  %or54 = or i32 %or48, %shl52
  %incdec.ptr56 = getelementptr inbounds i8, i8* %in.addr.0717, i64 4
  %12 = load i8, i8* %incdec.ptr50, align 1, !tbaa !10
  %conv57 = zext i8 %12 to i32
  %or59 = or i32 %or54, %conv57
  %incdec.ptr61 = getelementptr inbounds i8, i8* %in.addr.0717, i64 5
  %13 = load i8, i8* %incdec.ptr56, align 1, !tbaa !10
  %conv62 = zext i8 %13 to i32
  %shl63 = shl nuw i32 %conv62, 24
  %incdec.ptr65 = getelementptr inbounds i8, i8* %in.addr.0717, i64 6
  %14 = load i8, i8* %incdec.ptr61, align 1, !tbaa !10
  %conv66 = zext i8 %14 to i32
  %shl67 = shl nuw nsw i32 %conv66, 16
  %or69 = or i32 %shl67, %shl63
  %incdec.ptr71 = getelementptr inbounds i8, i8* %in.addr.0717, i64 7
  %15 = load i8, i8* %incdec.ptr65, align 1, !tbaa !10
  %conv72 = zext i8 %15 to i32
  %shl73 = shl nuw nsw i32 %conv72, 8
  %or75 = or i32 %or69, %shl73
  %incdec.ptr77 = getelementptr inbounds i8, i8* %in.addr.0717, i64 8
  %16 = load i8, i8* %incdec.ptr71, align 1, !tbaa !10
  %conv78 = zext i8 %16 to i32
  %or80 = or i32 %or75, %conv78
  %xor = xor i32 %or59, %tout0.0718
  %xor82 = xor i32 %or80, %tout1.0719
  store i32 %xor, i32* %arrayidx, align 4, !tbaa !4
  store i32 %xor82, i32* %arrayidx83, align 4, !tbaa !4
  call void @CAST_encrypt(i32* noundef nonnull %arrayidx, %struct.cast_key_st* noundef %ks) #4
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %18 = load i32, i32* %arrayidx83, align 4, !tbaa !4
  %shr = lshr i32 %17, 24
  %conv86 = trunc i32 %shr to i8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %out.addr.0716, i64 1
  store i8 %conv86, i8* %out.addr.0716, align 1, !tbaa !10
  %shr88 = lshr i32 %17, 16
  %conv90 = trunc i32 %shr88 to i8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %out.addr.0716, i64 2
  store i8 %conv90, i8* %incdec.ptr87, align 1, !tbaa !10
  %shr92 = lshr i32 %17, 8
  %conv94 = trunc i32 %shr92 to i8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %out.addr.0716, i64 3
  store i8 %conv94, i8* %incdec.ptr91, align 1, !tbaa !10
  %conv97 = trunc i32 %17 to i8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %out.addr.0716, i64 4
  store i8 %conv97, i8* %incdec.ptr95, align 1, !tbaa !10
  %shr99 = lshr i32 %18, 24
  %conv101 = trunc i32 %shr99 to i8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %out.addr.0716, i64 5
  store i8 %conv101, i8* %incdec.ptr98, align 1, !tbaa !10
  %shr103 = lshr i32 %18, 16
  %conv105 = trunc i32 %shr103 to i8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %out.addr.0716, i64 6
  store i8 %conv105, i8* %incdec.ptr102, align 1, !tbaa !10
  %shr107 = lshr i32 %18, 8
  %conv109 = trunc i32 %shr107 to i8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %out.addr.0716, i64 7
  store i8 %conv109, i8* %incdec.ptr106, align 1, !tbaa !10
  %conv112 = trunc i32 %18 to i8
  %incdec.ptr113 = getelementptr inbounds i8, i8* %out.addr.0716, i64 8
  store i8 %conv112, i8* %incdec.ptr110, align 1, !tbaa !10
  %cmp = icmp ugt i64 %l.0.in720, 15
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %for.body, %if.then
  %out.addr.0.lcssa = phi i8* [ %out, %if.then ], [ %incdec.ptr113, %for.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %if.then ], [ %incdec.ptr77, %for.body ]
  %tout0.0.lcssa = phi i32 [ %or255, %if.then ], [ %17, %for.body ]
  %tout1.0.lcssa = phi i32 [ %or276, %if.then ], [ %18, %for.body ]
  %l.0.in.lcssa = phi i64 [ %length, %if.then ], [ %l.0, %for.body ]
  %cmp115.not = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp115.not, label %for.end.if.end_crit_edge, label %if.then117

for.end.if.end_crit_edge:                         ; preds = %for.end
  %.pre = lshr i32 %tout0.0.lcssa, 24
  %.pre737 = trunc i32 %.pre to i8
  %.pre738 = lshr i32 %tout0.0.lcssa, 16
  %.pre739 = trunc i32 %.pre738 to i8
  %.pre740 = lshr i32 %tout0.0.lcssa, 8
  %.pre741 = trunc i32 %.pre740 to i8
  %.pre742 = trunc i32 %tout0.0.lcssa to i8
  %.pre743 = lshr i32 %tout1.0.lcssa, 24
  %.pre744 = trunc i32 %.pre743 to i8
  %.pre745 = lshr i32 %tout1.0.lcssa, 16
  %.pre746 = trunc i32 %.pre745 to i8
  %.pre747 = lshr i32 %tout1.0.lcssa, 8
  %.pre748 = trunc i32 %.pre747 to i8
  %.pre749 = trunc i32 %tout1.0.lcssa to i8
  br label %if.end

if.then117:                                       ; preds = %for.end
  %add.ptr118 = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 1, label %sw.bb162
    i64 7, label %sw.bb123
    i64 6, label %sw.bb130
    i64 5, label %sw.bb137
    i64 4, label %sw.bb144
    i64 3, label %sw.bb148
    i64 2, label %sw.bb155
  ]

sw.bb123:                                         ; preds = %if.then117
  %incdec.ptr124 = getelementptr inbounds i8, i8* %add.ptr118, i64 -1
  %19 = load i8, i8* %incdec.ptr124, align 1, !tbaa !10
  %conv125 = zext i8 %19 to i32
  %shl126 = shl nuw nsw i32 %conv125, 8
  br label %sw.bb130

sw.bb130:                                         ; preds = %if.then117, %sw.bb123
  %in.addr.2 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr124, %sw.bb123 ]
  %tin1.1 = phi i32 [ 0, %if.then117 ], [ %shl126, %sw.bb123 ]
  %incdec.ptr131 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %20 = load i8, i8* %incdec.ptr131, align 1, !tbaa !10
  %conv132 = zext i8 %20 to i32
  %shl133 = shl nuw nsw i32 %conv132, 16
  %or135 = or i32 %shl133, %tin1.1
  br label %sw.bb137

sw.bb137:                                         ; preds = %if.then117, %sw.bb130
  %in.addr.3 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr131, %sw.bb130 ]
  %tin1.2 = phi i32 [ 0, %if.then117 ], [ %or135, %sw.bb130 ]
  %incdec.ptr138 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %21 = load i8, i8* %incdec.ptr138, align 1, !tbaa !10
  %conv139 = zext i8 %21 to i32
  %shl140 = shl nuw i32 %conv139, 24
  %or142 = or i32 %shl140, %tin1.2
  br label %sw.bb144

sw.bb144:                                         ; preds = %if.then117, %sw.bb137
  %in.addr.4 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr138, %sw.bb137 ]
  %tin1.3 = phi i32 [ 0, %if.then117 ], [ %or142, %sw.bb137 ]
  %incdec.ptr145 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %22 = load i8, i8* %incdec.ptr145, align 1, !tbaa !10
  %conv146 = zext i8 %22 to i32
  br label %sw.bb148

sw.bb148:                                         ; preds = %if.then117, %sw.bb144
  %in.addr.5 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr145, %sw.bb144 ]
  %tin0.0 = phi i32 [ 0, %if.then117 ], [ %conv146, %sw.bb144 ]
  %tin1.4 = phi i32 [ 0, %if.then117 ], [ %tin1.3, %sw.bb144 ]
  %incdec.ptr149 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %23 = load i8, i8* %incdec.ptr149, align 1, !tbaa !10
  %conv150 = zext i8 %23 to i32
  %shl151 = shl nuw nsw i32 %conv150, 8
  %or153 = or i32 %shl151, %tin0.0
  br label %sw.bb155

sw.bb155:                                         ; preds = %if.then117, %sw.bb148
  %in.addr.6 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr149, %sw.bb148 ]
  %tin0.1 = phi i32 [ 0, %if.then117 ], [ %or153, %sw.bb148 ]
  %tin1.5 = phi i32 [ 0, %if.then117 ], [ %tin1.4, %sw.bb148 ]
  %incdec.ptr156 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %24 = load i8, i8* %incdec.ptr156, align 1, !tbaa !10
  %conv157 = zext i8 %24 to i32
  %shl158 = shl nuw nsw i32 %conv157, 16
  %phi.cast = or i32 %shl158, %tin0.1
  br label %sw.bb162

sw.bb162:                                         ; preds = %if.then117, %sw.bb155
  %in.addr.7 = phi i8* [ %add.ptr118, %if.then117 ], [ %incdec.ptr156, %sw.bb155 ]
  %tin0.2 = phi i32 [ 0, %if.then117 ], [ %phi.cast, %sw.bb155 ]
  %tin1.6 = phi i32 [ 0, %if.then117 ], [ %tin1.5, %sw.bb155 ]
  %incdec.ptr163 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %25 = load i8, i8* %incdec.ptr163, align 1, !tbaa !10
  %conv164 = zext i8 %25 to i32
  %shl165 = shl nuw i32 %conv164, 24
  %or167 = or i32 %shl165, %tin0.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb162, %if.then117
  %tin0.3 = phi i32 [ 0, %if.then117 ], [ %or167, %sw.bb162 ]
  %tin1.7 = phi i32 [ 0, %if.then117 ], [ %tin1.6, %sw.bb162 ]
  %xor169 = xor i32 %tin0.3, %tout0.0.lcssa
  %xor170 = xor i32 %tin1.7, %tout1.0.lcssa
  %arrayidx171 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %xor169, i32* %arrayidx171, align 4, !tbaa !4
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %xor170, i32* %arrayidx172, align 4, !tbaa !4
  call void @CAST_encrypt(i32* noundef nonnull %arrayidx171, %struct.cast_key_st* noundef %ks) #4
  %26 = load i32, i32* %arrayidx171, align 4, !tbaa !4
  %27 = load i32, i32* %arrayidx172, align 4, !tbaa !4
  %shr176 = lshr i32 %26, 24
  %conv178 = trunc i32 %shr176 to i8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv178, i8* %out.addr.0.lcssa, align 1, !tbaa !10
  %shr180 = lshr i32 %26, 16
  %conv182 = trunc i32 %shr180 to i8
  %incdec.ptr183 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv182, i8* %incdec.ptr179, align 1, !tbaa !10
  %shr184 = lshr i32 %26, 8
  %conv186 = trunc i32 %shr184 to i8
  %incdec.ptr187 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv186, i8* %incdec.ptr183, align 1, !tbaa !10
  %conv189 = trunc i32 %26 to i8
  %incdec.ptr190 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv189, i8* %incdec.ptr187, align 1, !tbaa !10
  %shr191 = lshr i32 %27, 24
  %conv193 = trunc i32 %shr191 to i8
  %incdec.ptr194 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv193, i8* %incdec.ptr190, align 1, !tbaa !10
  %shr195 = lshr i32 %27, 16
  %conv197 = trunc i32 %shr195 to i8
  %incdec.ptr198 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv197, i8* %incdec.ptr194, align 1, !tbaa !10
  %shr199 = lshr i32 %27, 8
  %conv201 = trunc i32 %shr199 to i8
  %incdec.ptr202 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv201, i8* %incdec.ptr198, align 1, !tbaa !10
  %conv204 = trunc i32 %27 to i8
  store i8 %conv204, i8* %incdec.ptr202, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %for.end.if.end_crit_edge, %sw.epilog
  %conv234.pre-phi = phi i8 [ %.pre749, %for.end.if.end_crit_edge ], [ %conv204, %sw.epilog ]
  %conv231.pre-phi = phi i8 [ %.pre748, %for.end.if.end_crit_edge ], [ %conv201, %sw.epilog ]
  %conv227.pre-phi = phi i8 [ %.pre746, %for.end.if.end_crit_edge ], [ %conv197, %sw.epilog ]
  %conv223.pre-phi = phi i8 [ %.pre744, %for.end.if.end_crit_edge ], [ %conv193, %sw.epilog ]
  %conv219.pre-phi = phi i8 [ %.pre742, %for.end.if.end_crit_edge ], [ %conv189, %sw.epilog ]
  %conv216.pre-phi = phi i8 [ %.pre741, %for.end.if.end_crit_edge ], [ %conv186, %sw.epilog ]
  %conv212.pre-phi = phi i8 [ %.pre739, %for.end.if.end_crit_edge ], [ %conv182, %sw.epilog ]
  %conv208.pre-phi = phi i8 [ %.pre737, %for.end.if.end_crit_edge ], [ %conv178, %sw.epilog ]
  store i8 %conv208.pre-phi, i8* %iv, align 1, !tbaa !10
  store i8 %conv212.pre-phi, i8* %incdec.ptr236, align 1, !tbaa !10
  store i8 %conv216.pre-phi, i8* %incdec.ptr240, align 1, !tbaa !10
  store i8 %conv219.pre-phi, i8* %incdec.ptr246, align 1, !tbaa !10
  store i8 %conv223.pre-phi, i8* %incdec.ptr252, align 1, !tbaa !10
  store i8 %conv227.pre-phi, i8* %incdec.ptr257, align 1, !tbaa !10
  store i8 %conv231.pre-phi, i8* %incdec.ptr261, align 1, !tbaa !10
  br label %if.end491

if.else:                                          ; preds = %entry
  br i1 %cmp281725, label %for.body283.lr.ph, label %for.end365

for.body283.lr.ph:                                ; preds = %if.else
  %arrayidx326 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx327 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body283

for.body283:                                      ; preds = %for.body283.lr.ph, %for.body283
  %l.1.in730 = phi i64 [ %length, %for.body283.lr.ph ], [ %l.1, %for.body283 ]
  %xor1.0729 = phi i32 [ %or276, %for.body283.lr.ph ], [ %or324, %for.body283 ]
  %xor0.0728 = phi i32 [ %or255, %for.body283.lr.ph ], [ %or303, %for.body283 ]
  %in.addr.8727 = phi i8* [ %in, %for.body283.lr.ph ], [ %incdec.ptr321, %for.body283 ]
  %out.addr.1726 = phi i8* [ %out, %for.body283.lr.ph ], [ %incdec.ptr362, %for.body283 ]
  %l.1 = add nsw i64 %l.1.in730, -8
  %incdec.ptr284 = getelementptr inbounds i8, i8* %in.addr.8727, i64 1
  %28 = load i8, i8* %in.addr.8727, align 1, !tbaa !10
  %conv285 = zext i8 %28 to i32
  %shl286 = shl nuw i32 %conv285, 24
  %incdec.ptr288 = getelementptr inbounds i8, i8* %in.addr.8727, i64 2
  %29 = load i8, i8* %incdec.ptr284, align 1, !tbaa !10
  %conv289 = zext i8 %29 to i32
  %shl290 = shl nuw nsw i32 %conv289, 16
  %or292 = or i32 %shl290, %shl286
  %incdec.ptr294 = getelementptr inbounds i8, i8* %in.addr.8727, i64 3
  %30 = load i8, i8* %incdec.ptr288, align 1, !tbaa !10
  %conv295 = zext i8 %30 to i32
  %shl296 = shl nuw nsw i32 %conv295, 8
  %or298 = or i32 %or292, %shl296
  %incdec.ptr300 = getelementptr inbounds i8, i8* %in.addr.8727, i64 4
  %31 = load i8, i8* %incdec.ptr294, align 1, !tbaa !10
  %conv301 = zext i8 %31 to i32
  %or303 = or i32 %or298, %conv301
  %incdec.ptr305 = getelementptr inbounds i8, i8* %in.addr.8727, i64 5
  %32 = load i8, i8* %incdec.ptr300, align 1, !tbaa !10
  %conv306 = zext i8 %32 to i32
  %shl307 = shl nuw i32 %conv306, 24
  %incdec.ptr309 = getelementptr inbounds i8, i8* %in.addr.8727, i64 6
  %33 = load i8, i8* %incdec.ptr305, align 1, !tbaa !10
  %conv310 = zext i8 %33 to i32
  %shl311 = shl nuw nsw i32 %conv310, 16
  %or313 = or i32 %shl311, %shl307
  %incdec.ptr315 = getelementptr inbounds i8, i8* %in.addr.8727, i64 7
  %34 = load i8, i8* %incdec.ptr309, align 1, !tbaa !10
  %conv316 = zext i8 %34 to i32
  %shl317 = shl nuw nsw i32 %conv316, 8
  %or319 = or i32 %or313, %shl317
  %incdec.ptr321 = getelementptr inbounds i8, i8* %in.addr.8727, i64 8
  %35 = load i8, i8* %incdec.ptr315, align 1, !tbaa !10
  %conv322 = zext i8 %35 to i32
  %or324 = or i32 %or319, %conv322
  store i32 %or303, i32* %arrayidx326, align 4, !tbaa !4
  store i32 %or324, i32* %arrayidx327, align 4, !tbaa !4
  call void @CAST_decrypt(i32* noundef nonnull %arrayidx326, %struct.cast_key_st* noundef %ks) #4
  %36 = load i32, i32* %arrayidx326, align 4, !tbaa !4
  %xor330 = xor i32 %36, %xor0.0728
  %37 = load i32, i32* %arrayidx327, align 4, !tbaa !4
  %xor332 = xor i32 %37, %xor1.0729
  %shr333 = lshr i32 %xor330, 24
  %conv335 = trunc i32 %shr333 to i8
  %incdec.ptr336 = getelementptr inbounds i8, i8* %out.addr.1726, i64 1
  store i8 %conv335, i8* %out.addr.1726, align 1, !tbaa !10
  %shr337 = lshr i32 %xor330, 16
  %conv339 = trunc i32 %shr337 to i8
  %incdec.ptr340 = getelementptr inbounds i8, i8* %out.addr.1726, i64 2
  store i8 %conv339, i8* %incdec.ptr336, align 1, !tbaa !10
  %shr341 = lshr i32 %xor330, 8
  %conv343 = trunc i32 %shr341 to i8
  %incdec.ptr344 = getelementptr inbounds i8, i8* %out.addr.1726, i64 3
  store i8 %conv343, i8* %incdec.ptr340, align 1, !tbaa !10
  %conv346 = trunc i32 %xor330 to i8
  %incdec.ptr347 = getelementptr inbounds i8, i8* %out.addr.1726, i64 4
  store i8 %conv346, i8* %incdec.ptr344, align 1, !tbaa !10
  %shr348 = lshr i32 %xor332, 24
  %conv350 = trunc i32 %shr348 to i8
  %incdec.ptr351 = getelementptr inbounds i8, i8* %out.addr.1726, i64 5
  store i8 %conv350, i8* %incdec.ptr347, align 1, !tbaa !10
  %shr352 = lshr i32 %xor332, 16
  %conv354 = trunc i32 %shr352 to i8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %out.addr.1726, i64 6
  store i8 %conv354, i8* %incdec.ptr351, align 1, !tbaa !10
  %shr356 = lshr i32 %xor332, 8
  %conv358 = trunc i32 %shr356 to i8
  %incdec.ptr359 = getelementptr inbounds i8, i8* %out.addr.1726, i64 7
  store i8 %conv358, i8* %incdec.ptr355, align 1, !tbaa !10
  %conv361 = trunc i32 %xor332 to i8
  %incdec.ptr362 = getelementptr inbounds i8, i8* %out.addr.1726, i64 8
  store i8 %conv361, i8* %incdec.ptr359, align 1, !tbaa !10
  %cmp281 = icmp ugt i64 %l.1.in730, 15
  br i1 %cmp281, label %for.body283, label %for.end365, !llvm.loop !13

for.end365:                                       ; preds = %for.body283, %if.else
  %out.addr.1.lcssa = phi i8* [ %out, %if.else ], [ %incdec.ptr362, %for.body283 ]
  %in.addr.8.lcssa = phi i8* [ %in, %if.else ], [ %incdec.ptr321, %for.body283 ]
  %xor0.0.lcssa = phi i32 [ %or255, %if.else ], [ %or303, %for.body283 ]
  %xor1.0.lcssa = phi i32 [ %or276, %if.else ], [ %or324, %for.body283 ]
  %l.1.in.lcssa = phi i64 [ %length, %if.else ], [ %l.1, %for.body283 ]
  %cmp366.not = icmp eq i64 %l.1.in.lcssa, 0
  br i1 %cmp366.not, label %if.end460, label %if.then368

if.then368:                                       ; preds = %for.end365
  %incdec.ptr369 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 1
  %38 = load i8, i8* %in.addr.8.lcssa, align 1, !tbaa !10
  %conv370 = zext i8 %38 to i32
  %shl371 = shl nuw i32 %conv370, 24
  %incdec.ptr373 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 2
  %39 = load i8, i8* %incdec.ptr369, align 1, !tbaa !10
  %conv374 = zext i8 %39 to i32
  %shl375 = shl nuw nsw i32 %conv374, 16
  %or377 = or i32 %shl375, %shl371
  %incdec.ptr379 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 3
  %40 = load i8, i8* %incdec.ptr373, align 1, !tbaa !10
  %conv380 = zext i8 %40 to i32
  %shl381 = shl nuw nsw i32 %conv380, 8
  %or383 = or i32 %or377, %shl381
  %incdec.ptr385 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 4
  %41 = load i8, i8* %incdec.ptr379, align 1, !tbaa !10
  %conv386 = zext i8 %41 to i32
  %or388 = or i32 %or383, %conv386
  %incdec.ptr390 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 5
  %42 = load i8, i8* %incdec.ptr385, align 1, !tbaa !10
  %conv391 = zext i8 %42 to i32
  %shl392 = shl nuw i32 %conv391, 24
  %incdec.ptr394 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 6
  %43 = load i8, i8* %incdec.ptr390, align 1, !tbaa !10
  %conv395 = zext i8 %43 to i32
  %shl396 = shl nuw nsw i32 %conv395, 16
  %or398 = or i32 %shl396, %shl392
  %incdec.ptr400 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 7
  %44 = load i8, i8* %incdec.ptr394, align 1, !tbaa !10
  %conv401 = zext i8 %44 to i32
  %shl402 = shl nuw nsw i32 %conv401, 8
  %or404 = or i32 %or398, %shl402
  %45 = load i8, i8* %incdec.ptr400, align 1, !tbaa !10
  %conv407 = zext i8 %45 to i32
  %or409 = or i32 %or404, %conv407
  %arrayidx411 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %or388, i32* %arrayidx411, align 4, !tbaa !4
  %arrayidx412 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %or409, i32* %arrayidx412, align 4, !tbaa !4
  call void @CAST_decrypt(i32* noundef nonnull %arrayidx411, %struct.cast_key_st* noundef %ks) #4
  %46 = load i32, i32* %arrayidx411, align 4, !tbaa !4
  %xor415 = xor i32 %46, %xor0.0.lcssa
  %47 = load i32, i32* %arrayidx412, align 4, !tbaa !4
  %xor417 = xor i32 %47, %xor1.0.lcssa
  %add.ptr419 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %l.1.in.lcssa
  switch i64 %l.1.in.lcssa, label %if.end460 [
    i64 1, label %sw.bb454
    i64 7, label %sw.bb425
    i64 6, label %sw.bb430
    i64 5, label %sw.bb435
    i64 4, label %sw.bb440
    i64 3, label %sw.bb444
    i64 2, label %sw.bb449
  ]

sw.bb425:                                         ; preds = %if.then368
  %shr426 = lshr i32 %xor417, 8
  %conv428 = trunc i32 %shr426 to i8
  %incdec.ptr429 = getelementptr inbounds i8, i8* %add.ptr419, i64 -1
  store i8 %conv428, i8* %incdec.ptr429, align 1, !tbaa !10
  br label %sw.bb430

sw.bb430:                                         ; preds = %if.then368, %sw.bb425
  %out.addr.3 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr429, %sw.bb425 ]
  %shr431 = lshr i32 %xor417, 16
  %conv433 = trunc i32 %shr431 to i8
  %incdec.ptr434 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv433, i8* %incdec.ptr434, align 1, !tbaa !10
  br label %sw.bb435

sw.bb435:                                         ; preds = %if.then368, %sw.bb430
  %out.addr.4 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr434, %sw.bb430 ]
  %shr436 = lshr i32 %xor417, 24
  %conv438 = trunc i32 %shr436 to i8
  %incdec.ptr439 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv438, i8* %incdec.ptr439, align 1, !tbaa !10
  br label %sw.bb440

sw.bb440:                                         ; preds = %if.then368, %sw.bb435
  %out.addr.5 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr439, %sw.bb435 ]
  %conv442 = trunc i32 %xor415 to i8
  %incdec.ptr443 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv442, i8* %incdec.ptr443, align 1, !tbaa !10
  br label %sw.bb444

sw.bb444:                                         ; preds = %if.then368, %sw.bb440
  %out.addr.6 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr443, %sw.bb440 ]
  %shr445 = lshr i32 %xor415, 8
  %conv447 = trunc i32 %shr445 to i8
  %incdec.ptr448 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv447, i8* %incdec.ptr448, align 1, !tbaa !10
  br label %sw.bb449

sw.bb449:                                         ; preds = %if.then368, %sw.bb444
  %out.addr.7 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr448, %sw.bb444 ]
  %shr450 = lshr i32 %xor415, 16
  %conv452 = trunc i32 %shr450 to i8
  %incdec.ptr453 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv452, i8* %incdec.ptr453, align 1, !tbaa !10
  br label %sw.bb454

sw.bb454:                                         ; preds = %if.then368, %sw.bb449
  %out.addr.8 = phi i8* [ %add.ptr419, %if.then368 ], [ %incdec.ptr453, %sw.bb449 ]
  %shr455 = lshr i32 %xor415, 24
  %conv457 = trunc i32 %shr455 to i8
  %incdec.ptr458 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv457, i8* %incdec.ptr458, align 1, !tbaa !10
  br label %if.end460

if.end460:                                        ; preds = %if.then368, %sw.bb454, %for.end365
  %xor0.1 = phi i32 [ %xor0.0.lcssa, %for.end365 ], [ %or388, %sw.bb454 ], [ %or388, %if.then368 ]
  %xor1.1 = phi i32 [ %xor1.0.lcssa, %for.end365 ], [ %or409, %sw.bb454 ], [ %or409, %if.then368 ]
  %shr461 = lshr i32 %xor0.1, 24
  %conv463 = trunc i32 %shr461 to i8
  store i8 %conv463, i8* %iv, align 1, !tbaa !10
  %shr465 = lshr i32 %xor0.1, 16
  %conv467 = trunc i32 %shr465 to i8
  store i8 %conv467, i8* %incdec.ptr236, align 1, !tbaa !10
  %shr469 = lshr i32 %xor0.1, 8
  %conv471 = trunc i32 %shr469 to i8
  store i8 %conv471, i8* %incdec.ptr240, align 1, !tbaa !10
  %conv474 = trunc i32 %xor0.1 to i8
  store i8 %conv474, i8* %incdec.ptr246, align 1, !tbaa !10
  %shr476 = lshr i32 %xor1.1, 24
  %conv478 = trunc i32 %shr476 to i8
  store i8 %conv478, i8* %incdec.ptr252, align 1, !tbaa !10
  %shr480 = lshr i32 %xor1.1, 16
  %conv482 = trunc i32 %shr480 to i8
  store i8 %conv482, i8* %incdec.ptr257, align 1, !tbaa !10
  %shr484 = lshr i32 %xor1.1, 8
  %conv486 = trunc i32 %shr484 to i8
  store i8 %conv486, i8* %incdec.ptr261, align 1, !tbaa !10
  %conv489 = trunc i32 %xor1.1 to i8
  br label %if.end491

if.end491:                                        ; preds = %if.end460, %if.end
  %conv489.sink = phi i8 [ %conv489, %if.end460 ], [ %conv234.pre-phi, %if.end ]
  store i8 %conv489.sink, i8* %incdec.ptr267, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 128}
!9 = !{!"cast_key_st", !6, i64 0, !5, i64 128}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
