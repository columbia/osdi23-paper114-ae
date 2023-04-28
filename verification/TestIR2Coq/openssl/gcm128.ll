; ModuleID = 'crypto/modes/gcm128.c'
source_filename = "crypto/modes/gcm128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcm128_context = type { %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, [16 x %struct.u128], void (i64*, %struct.u128*)*, void (i64*, %struct.u128*, i8*, i64)*, i32, i32, void (i8*, i8*, i8*)*, i8*, [48 x i8] }
%union.anon = type { [2 x i64] }
%struct.u128 = type { i64, i64 }

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@.str = private unnamed_addr constant [22 x i8] c"crypto/modes/gcm128.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef %ctx, i8* noundef %key, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.gcm128_context* %ctx to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 440) #6
  %block1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 11
  store void (i8*, i8*, i8*)* %block, void (i8*, i8*, i8*)** %block1, align 8, !tbaa !4
  %key2 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 12
  store i8* %key, i8** %key2, align 8, !tbaa !10
  %H = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 5
  %arraydecay = bitcast %union.anon* %H to i8*
  tail call void %block(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay, i8* noundef %key) #6
  %arrayidx = getelementptr inbounds %union.anon, %union.anon* %H, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %2 = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1) #7, !srcloc !12
  store i64 %2, i64* %arrayidx, align 8, !tbaa !11
  %arrayidx13 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 5, i32 0, i64 1
  %3 = load i64, i64* %arrayidx13, align 8, !tbaa !11
  %4 = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %3) #7, !srcloc !13
  store i64 %4, i64* %arrayidx13, align 8, !tbaa !11
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @OPENSSL_ia32cap_P, i64 0, i64 1), align 4, !tbaa !14
  %and = and i32 %5, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end31, label %if.then

if.then:                                          ; preds = %entry
  %6 = and i32 %5, 272629760
  %cmp = icmp eq i32 %6, 272629760
  %arraydecay20 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  tail call void @gcm_init_avx(%struct.u128* noundef nonnull %arraydecay20, i64* noundef nonnull %arrayidx) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @gcm_init_clmul(%struct.u128* noundef nonnull %arraydecay20, i64* noundef nonnull %arrayidx) #6
  br label %cleanup

if.end31:                                         ; preds = %entry
  %arraydecay33 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call fastcc void @gcm_init_4bit(%struct.u128* noundef nonnull %arraydecay33, i64* noundef nonnull %arrayidx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else, %if.end31
  %gcm_gmult_avx.sink = phi void (i64*, %struct.u128*)* [ @gcm_gmult_avx, %if.then19 ], [ @gcm_gmult_clmul, %if.else ], [ @gcm_gmult_4bit, %if.end31 ]
  %gcm_ghash_avx.sink = phi void (i64*, %struct.u128*, i8*, i64)* [ @gcm_ghash_avx, %if.then19 ], [ @gcm_ghash_clmul, %if.else ], [ @gcm_ghash_4bit, %if.end31 ]
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  store void (i64*, %struct.u128*)* %gcm_gmult_avx.sink, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  store void (i64*, %struct.u128*, i8*, i64)* %gcm_ghash_avx.sink, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @gcm_init_avx(%struct.u128* noundef, i64* noundef) local_unnamed_addr #3

declare void @gcm_gmult_avx(i64* noundef, %struct.u128* noundef) #3

declare void @gcm_ghash_avx(i64* noundef, %struct.u128* noundef, i8* noundef, i64 noundef) #3

declare void @gcm_init_clmul(%struct.u128* noundef, i64* noundef) local_unnamed_addr #3

declare void @gcm_gmult_clmul(i64* noundef, %struct.u128* noundef) #3

declare void @gcm_ghash_clmul(i64* noundef, %struct.u128* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @gcm_init_4bit(%struct.u128* noundef %Htable, i64* nocapture noundef readonly %H) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.u128* %Htable to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !17
  %1 = load i64, i64* %H, align 8, !tbaa !17
  %arrayidx4 = getelementptr inbounds i64, i64* %H, i64 1
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !17
  %V.sroa.0.0..sroa_idx = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 8, i32 0
  store i64 %1, i64* %V.sroa.0.0..sroa_idx, align 8, !tbaa.struct !19
  %V.sroa.29.0..sroa_idx218 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 8, i32 1
  store i64 %2, i64* %V.sroa.29.0..sroa_idx218, align 8, !tbaa.struct !20
  %and = and i64 %2, 1
  %sub = sub nsw i64 0, %and
  %and8 = and i64 %sub, -2233785415175766016
  %or = tail call i64 @llvm.fshl.i64(i64 %1, i64 %2, i64 63)
  %shr13 = lshr i64 %1, 1
  %xor = xor i64 %and8, %shr13
  %V.sroa.0.0..sroa_idx207 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 4, i32 0
  store i64 %xor, i64* %V.sroa.0.0..sroa_idx207, align 8, !tbaa.struct !19
  %V.sroa.29.0..sroa_idx219 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 4, i32 1
  store i64 %or, i64* %V.sroa.29.0..sroa_idx219, align 8, !tbaa.struct !20
  %and19 = and i64 %or, 1
  %sub20 = sub nsw i64 0, %and19
  %and21 = and i64 %sub20, -2233785415175766016
  %or26 = tail call i64 @llvm.fshl.i64(i64 %shr13, i64 %or, i64 63)
  %shr29 = lshr i64 %xor, 1
  %xor30 = xor i64 %shr29, %and21
  %V.sroa.0.0..sroa_idx209 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 2, i32 0
  store i64 %xor30, i64* %V.sroa.0.0..sroa_idx209, align 8, !tbaa.struct !19
  %V.sroa.29.0..sroa_idx221 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 2, i32 1
  store i64 %or26, i64* %V.sroa.29.0..sroa_idx221, align 8, !tbaa.struct !20
  %and38 = and i64 %or26, 1
  %sub39 = sub nsw i64 0, %and38
  %and40 = and i64 %sub39, -2233785415175766016
  %or45 = tail call i64 @llvm.fshl.i64(i64 %shr29, i64 %or26, i64 63)
  %shr48 = lshr i64 %xor30, 1
  %xor49 = xor i64 %shr48, %and40
  %V.sroa.0.0..sroa_idx211 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 1, i32 0
  store i64 %xor49, i64* %V.sroa.0.0..sroa_idx211, align 8, !tbaa.struct !19
  %V.sroa.29.0..sroa_idx223 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 1, i32 1
  store i64 %or45, i64* %V.sroa.29.0..sroa_idx223, align 8, !tbaa.struct !20
  %xor57 = xor i64 %xor49, %xor30
  %hi59 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 3, i32 0
  store i64 %xor57, i64* %hi59, align 8, !tbaa !21
  %xor63 = xor i64 %or45, %or26
  %lo65 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 3, i32 1
  store i64 %xor63, i64* %lo65, align 8, !tbaa !23
  %xor70 = xor i64 %xor49, %xor
  %hi72 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 5, i32 0
  store i64 %xor70, i64* %hi72, align 8, !tbaa !21
  %xor76 = xor i64 %or45, %or
  %lo78 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 5, i32 1
  store i64 %xor76, i64* %lo78, align 8, !tbaa !23
  %xor82 = xor i64 %xor30, %xor
  %hi84 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 6, i32 0
  store i64 %xor82, i64* %hi84, align 8, !tbaa !21
  %xor88 = xor i64 %or26, %or
  %lo90 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 6, i32 1
  store i64 %xor88, i64* %lo90, align 8, !tbaa !23
  %xor94 = xor i64 %xor57, %xor
  %hi96 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 7, i32 0
  store i64 %xor94, i64* %hi96, align 8, !tbaa !21
  %xor100 = xor i64 %xor63, %or
  %lo102 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 7, i32 1
  store i64 %xor100, i64* %lo102, align 8, !tbaa !23
  %xor107 = xor i64 %xor49, %1
  %hi109 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 9, i32 0
  store i64 %xor107, i64* %hi109, align 8, !tbaa !21
  %xor113 = xor i64 %or45, %2
  %lo115 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 9, i32 1
  store i64 %xor113, i64* %lo115, align 8, !tbaa !23
  %xor119 = xor i64 %xor30, %1
  %hi121 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 10, i32 0
  store i64 %xor119, i64* %hi121, align 8, !tbaa !21
  %xor125 = xor i64 %or26, %2
  %lo127 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 10, i32 1
  store i64 %xor125, i64* %lo127, align 8, !tbaa !23
  %xor131 = xor i64 %xor57, %1
  %hi133 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 11, i32 0
  store i64 %xor131, i64* %hi133, align 8, !tbaa !21
  %xor137 = xor i64 %xor63, %2
  %lo139 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 11, i32 1
  store i64 %xor137, i64* %lo139, align 8, !tbaa !23
  %xor143 = xor i64 %xor, %1
  %hi145 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 12, i32 0
  store i64 %xor143, i64* %hi145, align 8, !tbaa !21
  %xor149 = xor i64 %or, %2
  %lo151 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 12, i32 1
  store i64 %xor149, i64* %lo151, align 8, !tbaa !23
  %xor155 = xor i64 %xor70, %1
  %hi157 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 13, i32 0
  store i64 %xor155, i64* %hi157, align 8, !tbaa !21
  %xor161 = xor i64 %xor76, %2
  %lo163 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 13, i32 1
  store i64 %xor161, i64* %lo163, align 8, !tbaa !23
  %xor167 = xor i64 %xor82, %1
  %hi169 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 14, i32 0
  store i64 %xor167, i64* %hi169, align 8, !tbaa !21
  %xor173 = xor i64 %xor88, %2
  %lo175 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 14, i32 1
  store i64 %xor173, i64* %lo175, align 8, !tbaa !23
  %xor179 = xor i64 %xor94, %1
  %hi181 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 15, i32 0
  store i64 %xor179, i64* %hi181, align 8, !tbaa !21
  %xor185 = xor i64 %xor100, %2
  %lo187 = getelementptr inbounds %struct.u128, %struct.u128* %Htable, i64 15, i32 1
  store i64 %xor185, i64* %lo187, align 8, !tbaa !23
  ret void
}

declare void @gcm_gmult_4bit(i64* noundef, %struct.u128* noundef) #3

declare void @gcm_ghash_4bit(i64* noundef, %struct.u128* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef %ctx, i8* noundef %iv, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %0 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 0
  %1 = bitcast i64* %arrayidx to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %1, align 8, !tbaa !11
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  store i32 0, i32* %ares, align 4, !tbaa !24
  %mres = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 9
  store i32 0, i32* %mres, align 8, !tbaa !25
  %cmp = icmp eq i64 %len, 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %c = bitcast %struct.gcm128_context* %ctx to [16 x i8]*
  %arraydecay = bitcast %struct.gcm128_context* %ctx to i8*
  %call = tail call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %iv, i64 noundef 12) #6
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 12
  store i8 0, i8* %arrayidx7, align 4, !tbaa !11
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 13
  store i8 0, i8* %arrayidx10, align 1, !tbaa !11
  %arrayidx13 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 14
  store i8 0, i8* %arrayidx13, align 2, !tbaa !11
  %arrayidx16 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 15
  store i8 1, i8* %arrayidx16, align 1, !tbaa !11
  br label %if.end80

if.else:                                          ; preds = %entry
  %Xi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arrayidx18 = getelementptr inbounds %union.anon, %union.anon* %Xi, i64 0, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 1
  %2 = bitcast %union.anon* %Xi to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %2, align 8, !tbaa !11
  %cmp22163 = icmp ugt i64 %len, 15
  br i1 %cmp22163, label %for.cond.preheader.lr.ph, label %while.end

for.cond.preheader.lr.ph:                         ; preds = %if.else
  %c26 = bitcast %union.anon* %Xi to [16 x i8]*
  %arraydecay33 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arrayidx27 = bitcast %union.anon* %Xi to i8*
  %arrayidx27.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 1
  %arrayidx27.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 2
  %arrayidx27.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 3
  %arrayidx27.4 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 4
  %arrayidx27.5 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 5
  %arrayidx27.6 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 6
  %arrayidx27.7 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 7
  %arrayidx27.8 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 1
  %3 = bitcast i64* %arrayidx27.8 to i8*
  %arrayidx27.9 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 9
  %arrayidx27.10 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 10
  %arrayidx27.11 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 11
  %arrayidx27.12 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 12
  %arrayidx27.13 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 13
  %arrayidx27.14 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 14
  %arrayidx27.15 = getelementptr inbounds [16 x i8], [16 x i8]* %c26, i64 0, i64 15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %4 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre183, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %5 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre182, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %6 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre181, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %7 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre180, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %8 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre179, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %9 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre178, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %10 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre177, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %11 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre176, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %12 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre175, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %13 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre174, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %14 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre173, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %15 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre172, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %16 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre171, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %17 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre170, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %18 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre169, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %19 = phi i8 [ 0, %for.cond.preheader.lr.ph ], [ %.pre, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %iv.addr.0165 = phi i8* [ %iv, %for.cond.preheader.lr.ph ], [ %add.ptr, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %len.addr.0164 = phi i64 [ %len, %for.cond.preheader.lr.ph ], [ %sub, %for.cond.preheader.for.cond.preheader_crit_edge ]
  %20 = load i8, i8* %iv.addr.0165, align 1, !tbaa !11
  %xor161 = xor i8 %19, %20
  store i8 %xor161, i8* %arrayidx27, align 1, !tbaa !11
  %arrayidx24.1 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 1
  %21 = load i8, i8* %arrayidx24.1, align 1, !tbaa !11
  %xor161.1 = xor i8 %18, %21
  store i8 %xor161.1, i8* %arrayidx27.1, align 1, !tbaa !11
  %arrayidx24.2 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 2
  %22 = load i8, i8* %arrayidx24.2, align 1, !tbaa !11
  %xor161.2 = xor i8 %17, %22
  store i8 %xor161.2, i8* %arrayidx27.2, align 1, !tbaa !11
  %arrayidx24.3 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 3
  %23 = load i8, i8* %arrayidx24.3, align 1, !tbaa !11
  %xor161.3 = xor i8 %16, %23
  store i8 %xor161.3, i8* %arrayidx27.3, align 1, !tbaa !11
  %arrayidx24.4 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 4
  %24 = load i8, i8* %arrayidx24.4, align 1, !tbaa !11
  %xor161.4 = xor i8 %15, %24
  store i8 %xor161.4, i8* %arrayidx27.4, align 1, !tbaa !11
  %arrayidx24.5 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 5
  %25 = load i8, i8* %arrayidx24.5, align 1, !tbaa !11
  %xor161.5 = xor i8 %14, %25
  store i8 %xor161.5, i8* %arrayidx27.5, align 1, !tbaa !11
  %arrayidx24.6 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 6
  %26 = load i8, i8* %arrayidx24.6, align 1, !tbaa !11
  %xor161.6 = xor i8 %13, %26
  store i8 %xor161.6, i8* %arrayidx27.6, align 1, !tbaa !11
  %arrayidx24.7 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 7
  %27 = load i8, i8* %arrayidx24.7, align 1, !tbaa !11
  %xor161.7 = xor i8 %12, %27
  store i8 %xor161.7, i8* %arrayidx27.7, align 1, !tbaa !11
  %arrayidx24.8 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 8
  %28 = load i8, i8* %arrayidx24.8, align 1, !tbaa !11
  %xor161.8 = xor i8 %11, %28
  store i8 %xor161.8, i8* %3, align 1, !tbaa !11
  %arrayidx24.9 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 9
  %29 = load i8, i8* %arrayidx24.9, align 1, !tbaa !11
  %xor161.9 = xor i8 %10, %29
  store i8 %xor161.9, i8* %arrayidx27.9, align 1, !tbaa !11
  %arrayidx24.10 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 10
  %30 = load i8, i8* %arrayidx24.10, align 1, !tbaa !11
  %xor161.10 = xor i8 %9, %30
  store i8 %xor161.10, i8* %arrayidx27.10, align 1, !tbaa !11
  %arrayidx24.11 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 11
  %31 = load i8, i8* %arrayidx24.11, align 1, !tbaa !11
  %xor161.11 = xor i8 %8, %31
  store i8 %xor161.11, i8* %arrayidx27.11, align 1, !tbaa !11
  %arrayidx24.12 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 12
  %32 = load i8, i8* %arrayidx24.12, align 1, !tbaa !11
  %xor161.12 = xor i8 %7, %32
  store i8 %xor161.12, i8* %arrayidx27.12, align 1, !tbaa !11
  %arrayidx24.13 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 13
  %33 = load i8, i8* %arrayidx24.13, align 1, !tbaa !11
  %xor161.13 = xor i8 %6, %33
  store i8 %xor161.13, i8* %arrayidx27.13, align 1, !tbaa !11
  %arrayidx24.14 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 14
  %34 = load i8, i8* %arrayidx24.14, align 1, !tbaa !11
  %xor161.14 = xor i8 %5, %34
  store i8 %xor161.14, i8* %arrayidx27.14, align 1, !tbaa !11
  %arrayidx24.15 = getelementptr inbounds i8, i8* %iv.addr.0165, i64 15
  %35 = load i8, i8* %arrayidx24.15, align 1, !tbaa !11
  %xor161.15 = xor i8 %4, %35
  store i8 %xor161.15, i8* %arrayidx27.15, align 1, !tbaa !11
  tail call void %0(i64* noundef nonnull %arrayidx18, %struct.u128* noundef nonnull %arraydecay33) #6
  %add.ptr = getelementptr inbounds i8, i8* %iv.addr.0165, i64 16
  %sub = add i64 %len.addr.0164, -16
  %cmp22 = icmp ugt i64 %sub, 15
  br i1 %cmp22, label %for.cond.preheader.for.cond.preheader_crit_edge, label %while.end, !llvm.loop !26

for.cond.preheader.for.cond.preheader_crit_edge:  ; preds = %for.cond.preheader
  %.pre = load i8, i8* %arrayidx27, align 1, !tbaa !11
  %.pre169 = load i8, i8* %arrayidx27.1, align 1, !tbaa !11
  %.pre170 = load i8, i8* %arrayidx27.2, align 1, !tbaa !11
  %.pre171 = load i8, i8* %arrayidx27.3, align 1, !tbaa !11
  %.pre172 = load i8, i8* %arrayidx27.4, align 1, !tbaa !11
  %.pre173 = load i8, i8* %arrayidx27.5, align 1, !tbaa !11
  %.pre174 = load i8, i8* %arrayidx27.6, align 1, !tbaa !11
  %.pre175 = load i8, i8* %arrayidx27.7, align 1, !tbaa !11
  %.pre176 = load i8, i8* %3, align 1, !tbaa !11
  %.pre177 = load i8, i8* %arrayidx27.9, align 1, !tbaa !11
  %.pre178 = load i8, i8* %arrayidx27.10, align 1, !tbaa !11
  %.pre179 = load i8, i8* %arrayidx27.11, align 1, !tbaa !11
  %.pre180 = load i8, i8* %arrayidx27.12, align 1, !tbaa !11
  %.pre181 = load i8, i8* %arrayidx27.13, align 1, !tbaa !11
  %.pre182 = load i8, i8* %arrayidx27.14, align 1, !tbaa !11
  %.pre183 = load i8, i8* %arrayidx27.15, align 1, !tbaa !11
  br label %for.cond.preheader

while.end:                                        ; preds = %for.cond.preheader, %if.else
  %len.addr.0.lcssa = phi i64 [ %len, %if.else ], [ %sub, %for.cond.preheader ]
  %iv.addr.0.lcssa = phi i8* [ %iv, %if.else ], [ %add.ptr, %for.cond.preheader ]
  %tobool.not = icmp eq i64 %len.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %iter.check

iter.check:                                       ; preds = %while.end
  %c42 = bitcast %union.anon* %Xi to [16 x i8]*
  %min.iters.check = icmp ult i64 %len.addr.0.lcssa, 8
  br i1 %min.iters.check, label %for.body38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %scevgep185 = bitcast i64* %scevgep to i8*
  %scevgep186 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 8
  %scevgep186187 = bitcast i64* %scevgep186 to i8*
  %uglygep = getelementptr i8, i8* %scevgep186187, i64 %len.addr.0.lcssa
  %scevgep188 = getelementptr i8, i8* %iv.addr.0.lcssa, i64 %len.addr.0.lcssa
  %bound0 = icmp ugt i8* %scevgep188, %scevgep185
  %bound1 = icmp ult i8* %iv.addr.0.lcssa, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check189 = icmp ult i64 %len.addr.0.lcssa, 32
  br i1 %min.iters.check189, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %len.addr.0.lcssa, -32
  %36 = add i64 %n.vec, -32
  %37 = lshr exact i64 %36, 5
  %38 = add nuw nsw i64 %37, 1
  %xtraiter = and i64 %38, 1
  %39 = icmp eq i64 %36, 0
  br i1 %39, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %38, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %40 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %index
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !11, !alias.scope !28
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load190 = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !11, !alias.scope !28
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %index
  %45 = bitcast i8* %44 to <16 x i8>*
  %wide.load191 = load <16 x i8>, <16 x i8>* %45, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %46 = getelementptr inbounds i8, i8* %44, i64 16
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load192 = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %48 = xor <16 x i8> %wide.load191, %wide.load
  %49 = xor <16 x i8> %wide.load192, %wide.load190
  %50 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %48, <16 x i8>* %50, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %51 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %49, <16 x i8>* %51, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %index.next = or i64 %index, 32
  %52 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %index.next
  %53 = bitcast i8* %52 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %53, align 1, !tbaa !11, !alias.scope !28
  %54 = getelementptr inbounds i8, i8* %52, i64 16
  %55 = bitcast i8* %54 to <16 x i8>*
  %wide.load190.1 = load <16 x i8>, <16 x i8>* %55, align 1, !tbaa !11, !alias.scope !28
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %index.next
  %57 = bitcast i8* %56 to <16 x i8>*
  %wide.load191.1 = load <16 x i8>, <16 x i8>* %57, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %58 = getelementptr inbounds i8, i8* %56, i64 16
  %59 = bitcast i8* %58 to <16 x i8>*
  %wide.load192.1 = load <16 x i8>, <16 x i8>* %59, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %60 = xor <16 x i8> %wide.load191.1, %wide.load.1
  %61 = xor <16 x i8> %wide.load192.1, %wide.load190.1
  %62 = bitcast i8* %56 to <16 x i8>*
  store <16 x i8> %60, <16 x i8>* %62, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %63 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %61, <16 x i8>* %63, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !33

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %64 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %index.unr
  %65 = bitcast i8* %64 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %65, align 1, !tbaa !11, !alias.scope !28
  %66 = getelementptr inbounds i8, i8* %64, i64 16
  %67 = bitcast i8* %66 to <16 x i8>*
  %wide.load190.epil = load <16 x i8>, <16 x i8>* %67, align 1, !tbaa !11, !alias.scope !28
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %index.unr
  %69 = bitcast i8* %68 to <16 x i8>*
  %wide.load191.epil = load <16 x i8>, <16 x i8>* %69, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %70 = getelementptr inbounds i8, i8* %68, i64 16
  %71 = bitcast i8* %70 to <16 x i8>*
  %wide.load192.epil = load <16 x i8>, <16 x i8>* %71, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %72 = xor <16 x i8> %wide.load191.epil, %wide.load.epil
  %73 = xor <16 x i8> %wide.load192.epil, %wide.load190.epil
  %74 = bitcast i8* %68 to <16 x i8>*
  store <16 x i8> %72, <16 x i8>* %74, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  %75 = bitcast i8* %70 to <16 x i8>*
  store <16 x i8> %73, <16 x i8>* %75, align 1, !tbaa !11, !alias.scope !31, !noalias !28
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.0.lcssa, %n.vec
  br i1 %cmp.n, label %for.end49, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %len.addr.0.lcssa, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body38.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec194 = and i64 %len.addr.0.lcssa, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index196 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ]
  %76 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %index196
  %77 = bitcast i8* %76 to <8 x i8>*
  %wide.load197 = load <8 x i8>, <8 x i8>* %77, align 1, !tbaa !11
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %index196
  %79 = bitcast i8* %78 to <8 x i8>*
  %wide.load198 = load <8 x i8>, <8 x i8>* %79, align 1, !tbaa !11
  %80 = xor <8 x i8> %wide.load198, %wide.load197
  %81 = bitcast i8* %78 to <8 x i8>*
  store <8 x i8> %80, <8 x i8>* %81, align 1, !tbaa !11
  %index.next199 = add nuw i64 %index196, 8
  %82 = icmp eq i64 %index.next199, %n.vec194
  br i1 %82, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n195 = icmp eq i64 %len.addr.0.lcssa, %n.vec194
  br i1 %cmp.n195, label %for.end49, label %for.body38.preheader

for.body38.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %i.1168.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec194, %vec.epilog.middle.block ]
  %83 = xor i64 %i.1168.ph, -1
  %84 = add i64 %len.addr.0.lcssa, %83
  %xtraiter200 = and i64 %len.addr.0.lcssa, 3
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %for.body38.prol.loopexit, label %for.body38.prol

for.body38.prol:                                  ; preds = %for.body38.preheader, %for.body38.prol
  %i.1168.prol = phi i64 [ %inc48.prol, %for.body38.prol ], [ %i.1168.ph, %for.body38.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body38.prol ], [ 0, %for.body38.preheader ]
  %arrayidx39.prol = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %i.1168.prol
  %85 = load i8, i8* %arrayidx39.prol, align 1, !tbaa !11
  %arrayidx43.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %i.1168.prol
  %86 = load i8, i8* %arrayidx43.prol, align 1, !tbaa !11
  %xor45160.prol = xor i8 %86, %85
  store i8 %xor45160.prol, i8* %arrayidx43.prol, align 1, !tbaa !11
  %inc48.prol = add nuw i64 %i.1168.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter200
  br i1 %prol.iter.cmp.not, label %for.body38.prol.loopexit, label %for.body38.prol, !llvm.loop !37

for.body38.prol.loopexit:                         ; preds = %for.body38.prol, %for.body38.preheader
  %i.1168.unr = phi i64 [ %i.1168.ph, %for.body38.preheader ], [ %inc48.prol, %for.body38.prol ]
  %87 = icmp ult i64 %84, 3
  br i1 %87, label %for.end49, label %for.body38

for.body38:                                       ; preds = %for.body38.prol.loopexit, %for.body38
  %i.1168 = phi i64 [ %inc48.3, %for.body38 ], [ %i.1168.unr, %for.body38.prol.loopexit ]
  %arrayidx39 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %i.1168
  %88 = load i8, i8* %arrayidx39, align 1, !tbaa !11
  %arrayidx43 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %i.1168
  %89 = load i8, i8* %arrayidx43, align 1, !tbaa !11
  %xor45160 = xor i8 %89, %88
  store i8 %xor45160, i8* %arrayidx43, align 1, !tbaa !11
  %inc48 = add nuw i64 %i.1168, 1
  %arrayidx39.1 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %inc48
  %90 = load i8, i8* %arrayidx39.1, align 1, !tbaa !11
  %arrayidx43.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %inc48
  %91 = load i8, i8* %arrayidx43.1, align 1, !tbaa !11
  %xor45160.1 = xor i8 %91, %90
  store i8 %xor45160.1, i8* %arrayidx43.1, align 1, !tbaa !11
  %inc48.1 = add nuw i64 %i.1168, 2
  %arrayidx39.2 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %inc48.1
  %92 = load i8, i8* %arrayidx39.2, align 1, !tbaa !11
  %arrayidx43.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %inc48.1
  %93 = load i8, i8* %arrayidx43.2, align 1, !tbaa !11
  %xor45160.2 = xor i8 %93, %92
  store i8 %xor45160.2, i8* %arrayidx43.2, align 1, !tbaa !11
  %inc48.2 = add nuw i64 %i.1168, 3
  %arrayidx39.3 = getelementptr inbounds i8, i8* %iv.addr.0.lcssa, i64 %inc48.2
  %94 = load i8, i8* %arrayidx39.3, align 1, !tbaa !11
  %arrayidx43.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c42, i64 0, i64 %inc48.2
  %95 = load i8, i8* %arrayidx43.3, align 1, !tbaa !11
  %xor45160.3 = xor i8 %95, %94
  store i8 %xor45160.3, i8* %arrayidx43.3, align 1, !tbaa !11
  %inc48.3 = add nuw i64 %i.1168, 4
  %exitcond.not.3 = icmp eq i64 %inc48.3, %len.addr.0.lcssa
  br i1 %exitcond.not.3, label %for.end49, label %for.body38, !llvm.loop !39

for.end49:                                        ; preds = %for.body38.prol.loopexit, %for.body38, %vec.epilog.middle.block, %middle.block
  %arraydecay54 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %0(i64* noundef nonnull %arrayidx18, %struct.u128* noundef nonnull %arraydecay54) #6
  br label %if.end

if.end:                                           ; preds = %for.end49, %while.end
  %shl = shl i64 %len, 3
  %96 = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %shl) #7, !srcloc !40
  %97 = load i64, i64* %arrayidx21, align 8, !tbaa !11
  %xor58 = xor i64 %97, %96
  store i64 %xor58, i64* %arrayidx21, align 8, !tbaa !11
  %arraydecay63 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %0(i64* noundef nonnull %arrayidx18, %struct.u128* noundef nonnull %arraydecay63) #6
  %d = bitcast %union.anon* %Xi to [4 x i32]*
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i64 0, i64 3
  %98 = load i32, i32* %arrayidx66, align 4, !tbaa !11
  %99 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %98) #7, !srcloc !41
  %100 = bitcast %union.anon* %Xi to <2 x i64>*
  %101 = load <2 x i64>, <2 x i64>* %100, align 8, !tbaa !11
  %102 = bitcast %struct.gcm128_context* %ctx to <2 x i64>*
  store <2 x i64> %101, <2 x i64>* %102, align 8, !tbaa !11
  %phi.bo = add i32 %99, 1
  br label %if.end80

if.end80:                                         ; preds = %if.end, %if.then
  %ctr.0 = phi i32 [ 2, %if.then ], [ %phi.bo, %if.end ]
  %arraydecay89.pre-phi = bitcast %struct.gcm128_context* %ctx to i8*
  %arrayidx83 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %103 = bitcast i64* %arrayidx83 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %103, align 8, !tbaa !11
  %block = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 11
  %104 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block, align 8, !tbaa !4
  %EK0 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 2
  %arraydecay91 = bitcast %union.anon* %EK0 to i8*
  %key = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 12
  %105 = load i8*, i8** %key, align 8, !tbaa !10
  tail call void %104(i8* noundef %arraydecay89.pre-phi, i8* noundef nonnull %arraydecay91, i8* noundef %105) #6
  %106 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %ctr.0) #7, !srcloc !42
  %d96 = bitcast %struct.gcm128_context* %ctx to [4 x i32]*
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %d96, i64 0, i64 3
  store i32 %106, i32* %arrayidx97, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef %ctx, i8* noundef %aad, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 0
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %0 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  %1 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  %arrayidx4 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 1
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !11
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %add = add i64 %3, %len
  %cmp = icmp ugt i64 %add, 2305843009213693952
  %cmp5 = icmp ult i64 %add, %len
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  %4 = load i32, i32* %ares, align 4, !tbaa !24
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.end27, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end7
  %tobool14102.not = icmp eq i64 %len, 0
  br i1 %tobool14102.not, label %cleanup.sink.split, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %Xi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %c = bitcast %union.anon* %Xi to [16 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %aad.addr.0105 = phi i8* [ %aad, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %n.0104 = phi i32 [ %4, %while.body.lr.ph ], [ %rem, %while.body ]
  %len.addr.0103 = phi i64 [ %len, %while.body.lr.ph ], [ %dec, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %aad.addr.0105, i64 1
  %5 = load i8, i8* %aad.addr.0105, align 1, !tbaa !11
  %idxprom = zext i32 %n.0104 to i64
  %arrayidx15 = getelementptr inbounds [16 x i8], [16 x i8]* %c, i64 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %xor100 = xor i8 %6, %5
  store i8 %xor100, i8* %arrayidx15, align 1, !tbaa !11
  %dec = add i64 %len.addr.0103, -1
  %add18 = add i32 %n.0104, 1
  %rem = and i32 %add18, 15
  %tobool13 = icmp ne i32 %rem, 0
  %tobool14 = icmp ne i64 %dec, 0
  %7 = select i1 %tobool13, i1 %tobool14, i1 false
  br i1 %7, label %while.body, label %while.end, !llvm.loop !43

while.end:                                        ; preds = %while.body
  %cmp19 = icmp eq i32 %rem, 0
  br i1 %cmp19, label %if.then21, label %cleanup.sink.split

if.then21:                                        ; preds = %while.end
  %arraydecay = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay24 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %0(i64* noundef nonnull %arraydecay, %struct.u128* noundef nonnull %arraydecay24) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end7
  %len.addr.1 = phi i64 [ %dec, %if.then21 ], [ %len, %if.end7 ]
  %aad.addr.1 = phi i8* [ %incdec.ptr, %if.then21 ], [ %aad, %if.end7 ]
  %and = and i64 %len.addr.1, -16
  %tobool28.not = icmp eq i64 %and, 0
  br i1 %tobool28.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.end27
  %arraydecay32 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay34 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %1(i64* noundef nonnull %arraydecay32, %struct.u128* noundef nonnull %arraydecay34, i8* noundef %aad.addr.1, i64 noundef %and) #6
  %add.ptr = getelementptr inbounds i8, i8* %aad.addr.1, i64 %and
  %sub = and i64 %len.addr.1, 15
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.end27
  %len.addr.2 = phi i64 [ %sub, %if.then29 ], [ %len.addr.1, %if.end27 ]
  %aad.addr.2 = phi i8* [ %add.ptr, %if.then29 ], [ %aad.addr.1, %if.end27 ]
  %tobool36.not = icmp eq i64 %len.addr.2, 0
  br i1 %tobool36.not, label %cleanup.sink.split, label %iter.check

iter.check:                                       ; preds = %if.end35
  %conv38 = trunc i64 %len.addr.2 to i32
  %Xi43 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %c44 = bitcast %union.anon* %Xi43 to [16 x i8]*
  %min.iters.check = icmp ult i64 %len.addr.2, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %scevgep115 = bitcast i64* %scevgep to i8*
  %scevgep116 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 8
  %scevgep116117 = bitcast i64* %scevgep116 to i8*
  %uglygep = getelementptr i8, i8* %scevgep116117, i64 %len.addr.2
  %scevgep118 = getelementptr i8, i8* %aad.addr.2, i64 %len.addr.2
  %bound0 = icmp ugt i8* %scevgep118, %scevgep115
  %bound1 = icmp ult i8* %aad.addr.2, %uglygep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %len.addr.2, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %len.addr.2, -32
  %8 = add i64 %n.vec, -32
  %9 = lshr exact i64 %8, 5
  %10 = add nuw nsw i64 %9, 1
  %xtraiter = and i64 %10, 1
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %10, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %12 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %index
  %13 = bitcast i8* %12 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %13, align 1, !tbaa !11, !alias.scope !44
  %14 = getelementptr inbounds i8, i8* %12, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  %wide.load120 = load <16 x i8>, <16 x i8>* %15, align 1, !tbaa !11, !alias.scope !44
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %index
  %17 = bitcast i8* %16 to <16 x i8>*
  %wide.load121 = load <16 x i8>, <16 x i8>* %17, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %18 = getelementptr inbounds i8, i8* %16, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  %wide.load122 = load <16 x i8>, <16 x i8>* %19, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %20 = xor <16 x i8> %wide.load121, %wide.load
  %21 = xor <16 x i8> %wide.load122, %wide.load120
  %22 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %20, <16 x i8>* %22, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %23 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %21, <16 x i8>* %23, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %index.next = or i64 %index, 32
  %24 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %index.next
  %25 = bitcast i8* %24 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %25, align 1, !tbaa !11, !alias.scope !44
  %26 = getelementptr inbounds i8, i8* %24, i64 16
  %27 = bitcast i8* %26 to <16 x i8>*
  %wide.load120.1 = load <16 x i8>, <16 x i8>* %27, align 1, !tbaa !11, !alias.scope !44
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %index.next
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load121.1 = load <16 x i8>, <16 x i8>* %29, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %30 = getelementptr inbounds i8, i8* %28, i64 16
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load122.1 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %32 = xor <16 x i8> %wide.load121.1, %wide.load.1
  %33 = xor <16 x i8> %wide.load122.1, %wide.load120.1
  %34 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> %32, <16 x i8>* %34, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %35 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> %33, <16 x i8>* %35, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !49

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %36 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %index.unr
  %37 = bitcast i8* %36 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !11, !alias.scope !44
  %38 = getelementptr inbounds i8, i8* %36, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load120.epil = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !11, !alias.scope !44
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %index.unr
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load121.epil = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load122.epil = load <16 x i8>, <16 x i8>* %43, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %44 = xor <16 x i8> %wide.load121.epil, %wide.load.epil
  %45 = xor <16 x i8> %wide.load122.epil, %wide.load120.epil
  %46 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %44, <16 x i8>* %46, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  %47 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> %45, <16 x i8>* %47, align 1, !tbaa !11, !alias.scope !47, !noalias !44
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.2, %n.vec
  br i1 %cmp.n, label %cleanup.sink.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %len.addr.2, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %len.addr.2, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ]
  %48 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %index126
  %49 = bitcast i8* %48 to <8 x i8>*
  %wide.load127 = load <8 x i8>, <8 x i8>* %49, align 1, !tbaa !11
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %index126
  %51 = bitcast i8* %50 to <8 x i8>*
  %wide.load128 = load <8 x i8>, <8 x i8>* %51, align 1, !tbaa !11
  %52 = xor <8 x i8> %wide.load128, %wide.load127
  %53 = bitcast i8* %50 to <8 x i8>*
  store <8 x i8> %52, <8 x i8>* %53, align 1, !tbaa !11
  %index.next129 = add nuw i64 %index126, 8
  %54 = icmp eq i64 %index.next129, %n.vec124
  br i1 %54, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %len.addr.2, %n.vec124
  br i1 %cmp.n125, label %cleanup.sink.split, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %i.0109.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ]
  %55 = xor i64 %i.0109.ph, -1
  %56 = add i64 %len.addr.2, %55
  %xtraiter130 = and i64 %len.addr.2, 3
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %i.0109.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %i.0109.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx41.prol = getelementptr inbounds i8, i8* %aad.addr.2, i64 %i.0109.prol
  %57 = load i8, i8* %arrayidx41.prol, align 1, !tbaa !11
  %arrayidx45.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %i.0109.prol
  %58 = load i8, i8* %arrayidx45.prol, align 1, !tbaa !11
  %xor4799.prol = xor i8 %58, %57
  store i8 %xor4799.prol, i8* %arrayidx45.prol, align 1, !tbaa !11
  %inc.prol = add nuw i64 %i.0109.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter130
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !51

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %i.0109.unr = phi i64 [ %i.0109.ph, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %59 = icmp ult i64 %56, 3
  br i1 %59, label %cleanup.sink.split, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %i.0109 = phi i64 [ %inc.3, %for.body ], [ %i.0109.unr, %for.body.prol.loopexit ]
  %arrayidx41 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %i.0109
  %60 = load i8, i8* %arrayidx41, align 1, !tbaa !11
  %arrayidx45 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %i.0109
  %61 = load i8, i8* %arrayidx45, align 1, !tbaa !11
  %xor4799 = xor i8 %61, %60
  store i8 %xor4799, i8* %arrayidx45, align 1, !tbaa !11
  %inc = add nuw i64 %i.0109, 1
  %arrayidx41.1 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %inc
  %62 = load i8, i8* %arrayidx41.1, align 1, !tbaa !11
  %arrayidx45.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %inc
  %63 = load i8, i8* %arrayidx45.1, align 1, !tbaa !11
  %xor4799.1 = xor i8 %63, %62
  store i8 %xor4799.1, i8* %arrayidx45.1, align 1, !tbaa !11
  %inc.1 = add nuw i64 %i.0109, 2
  %arrayidx41.2 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %inc.1
  %64 = load i8, i8* %arrayidx41.2, align 1, !tbaa !11
  %arrayidx45.2 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %inc.1
  %65 = load i8, i8* %arrayidx45.2, align 1, !tbaa !11
  %xor4799.2 = xor i8 %65, %64
  store i8 %xor4799.2, i8* %arrayidx45.2, align 1, !tbaa !11
  %inc.2 = add nuw i64 %i.0109, 3
  %arrayidx41.3 = getelementptr inbounds i8, i8* %aad.addr.2, i64 %inc.2
  %66 = load i8, i8* %arrayidx41.3, align 1, !tbaa !11
  %arrayidx45.3 = getelementptr inbounds [16 x i8], [16 x i8]* %c44, i64 0, i64 %inc.2
  %67 = load i8, i8* %arrayidx45.3, align 1, !tbaa !11
  %xor4799.3 = xor i8 %67, %66
  store i8 %xor4799.3, i8* %arrayidx45.3, align 1, !tbaa !11
  %inc.3 = add nuw i64 %i.0109, 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %len.addr.2
  br i1 %exitcond.not.3, label %cleanup.sink.split, label %for.body, !llvm.loop !52

cleanup.sink.split:                               ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %if.end35, %while.end, %while.cond.preheader
  %n.2.sink = phi i32 [ %rem, %while.end ], [ %4, %while.cond.preheader ], [ 0, %if.end35 ], [ %conv38, %vec.epilog.middle.block ], [ %conv38, %middle.block ], [ %conv38, %for.body ], [ %conv38, %for.body.prol.loopexit ]
  store i32 %n.2.sink, i32* %ares, align 4, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -1, %if.end ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef %ctx, i8* nocapture noundef readonly %in, i8* noundef %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 1
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %block2 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 11
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block2, align 8, !tbaa !4
  %key3 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 12
  %2 = load i8*, i8** %key3, align 8, !tbaa !10
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %3 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  %4 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  %add = add i64 %0, %len
  %cmp = icmp ugt i64 %add, 68719476704
  %cmp4 = icmp ult i64 %add, %len
  %or.cond385 = or i1 %cmp, %cmp4
  br i1 %or.cond385, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %mres8 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 9
  %5 = load i32, i32* %mres8, align 8, !tbaa !25
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  %6 = load i32, i32* %ares, align 4, !tbaa !24
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end26, label %if.then9

if.then9:                                         ; preds = %if.end
  %cmp10 = icmp eq i64 %len, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then9
  %arraydecay = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay13 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %3(i64* noundef nonnull %arraydecay, %struct.u128* noundef nonnull %arraydecay13) #6
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %arraydecay16 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %Xi17 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arraydecay18 = bitcast %union.anon* %Xi17 to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay16, i8* noundef nonnull %arraydecay18, i64 noundef 16) #6
  %7 = bitcast %union.anon* %Xi17 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !tbaa !11
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %if.end26

if.end26:                                         ; preds = %if.end15, %if.end
  %mres.0 = phi i32 [ 16, %if.end15 ], [ %5, %if.end ]
  %d = bitcast %struct.gcm128_context* %ctx to [4 x i32]*
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i64 0, i64 3
  %8 = load i32, i32* %arrayidx27, align 4, !tbaa !11
  %9 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %8) #7, !srcloc !53
  %rem = and i32 %mres.0, 15
  %tobool28.not = icmp eq i32 %rem, 0
  br i1 %tobool28.not, label %if.end55, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end26
  %tobool31397.not = icmp eq i64 %len, 0
  br i1 %tobool31397.not, label %if.else, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %EKi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c32 = bitcast %union.anon* %EKi to [16 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %in.addr.0402 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %out.addr.0401 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr36, %while.body ]
  %len.addr.0400 = phi i64 [ %len, %while.body.lr.ph ], [ %dec, %while.body ]
  %n.0399 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem41, %while.body ]
  %mres.1398 = phi i32 [ %mres.0, %while.body.lr.ph ], [ %inc, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0402, i64 1
  %10 = load i8, i8* %in.addr.0402, align 1, !tbaa !11
  %idxprom = zext i32 %n.0399 to i64
  %arrayidx33 = getelementptr inbounds [16 x i8], [16 x i8]* %c32, i64 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx33, align 1, !tbaa !11
  %xor384 = xor i8 %11, %10
  %incdec.ptr36 = getelementptr inbounds i8, i8* %out.addr.0401, i64 1
  store i8 %xor384, i8* %out.addr.0401, align 1, !tbaa !11
  %inc = add i32 %mres.1398, 1
  %idxprom38 = zext i32 %mres.1398 to i64
  %arrayidx39 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom38
  store i8 %xor384, i8* %arrayidx39, align 1, !tbaa !11
  %dec = add i64 %len.addr.0400, -1
  %add40 = add nuw nsw i32 %n.0399, 1
  %rem41 = and i32 %add40, 15
  %tobool30 = icmp ne i32 %rem41, 0
  %tobool31 = icmp ne i64 %dec, 0
  %12 = select i1 %tobool30, i1 %tobool31, i1 false
  br i1 %12, label %while.body, label %while.end, !llvm.loop !54

while.end:                                        ; preds = %while.body
  %phi.cmp = icmp eq i32 %rem41, 0
  br i1 %phi.cmp, label %if.end68.sink.split, label %if.else

if.else:                                          ; preds = %while.cond.preheader, %while.end
  %mres.1.lcssa441 = phi i32 [ %inc, %while.end ], [ %mres.0, %while.cond.preheader ]
  store i32 %mres.1.lcssa441, i32* %mres8, align 8, !tbaa !25
  br label %cleanup

if.end55:                                         ; preds = %if.end26
  %cmp56 = icmp ugt i64 %len, 15
  %tobool58 = icmp ne i32 %mres.0, 0
  %or.cond = select i1 %cmp56, i1 %tobool58, i1 false
  br i1 %or.cond, label %if.end68.sink.split, label %if.end68

if.end68.sink.split:                              ; preds = %if.end55, %while.end
  %inc.lcssa.sink = phi i32 [ %inc, %while.end ], [ %mres.0, %if.end55 ]
  %in.addr.1395.ph = phi i8* [ %incdec.ptr, %while.end ], [ %in, %if.end55 ]
  %out.addr.1394.ph = phi i8* [ %incdec.ptr36, %while.end ], [ %out, %if.end55 ]
  %len.addr.1393.ph = phi i64 [ %dec, %while.end ], [ %len, %if.end55 ]
  %arraydecay47 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay49 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arraydecay51 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %conv52 = zext i32 %inc.lcssa.sink to i64
  tail call void %4(i64* noundef nonnull %arraydecay47, %struct.u128* noundef nonnull %arraydecay49, i8* noundef nonnull %arraydecay51, i64 noundef %conv52) #6
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.end55
  %in.addr.1395 = phi i8* [ %in, %if.end55 ], [ %in.addr.1395.ph, %if.end68.sink.split ]
  %out.addr.1394 = phi i8* [ %out, %if.end55 ], [ %out.addr.1394.ph, %if.end68.sink.split ]
  %len.addr.1393 = phi i64 [ %len, %if.end55 ], [ %len.addr.1393.ph, %if.end68.sink.split ]
  %mres.3 = phi i32 [ %mres.0, %if.end55 ], [ 0, %if.end68.sink.split ]
  %cmp70412 = icmp ugt i64 %len.addr.1393, 3071
  br i1 %cmp70412, label %while.cond73.preheader.lr.ph, label %while.end105

while.cond73.preheader.lr.ph:                     ; preds = %if.end68
  %arraydecay78 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi79 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %arraydecay81 = bitcast %union.anon* %EKi79 to i8*
  %arraydecay100 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay102 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arrayidx92 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %arrayidx92.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  br label %while.cond73.preheader

while.cond73.preheader:                           ; preds = %while.cond73.preheader.lr.ph, %while.end97
  %in.addr.2416 = phi i8* [ %in.addr.1395, %while.cond73.preheader.lr.ph ], [ %add.ptr96, %while.end97 ]
  %out.addr.2415 = phi i8* [ %out.addr.1394, %while.cond73.preheader.lr.ph ], [ %add.ptr, %while.end97 ]
  %len.addr.2414 = phi i64 [ %len.addr.1393, %while.cond73.preheader.lr.ph ], [ %sub104, %while.end97 ]
  %ctr.0413 = phi i32 [ %9, %while.cond73.preheader.lr.ph ], [ %inc82, %while.end97 ]
  br label %while.body75

while.body75:                                     ; preds = %while.cond73.preheader, %while.body75
  %in.addr.3411 = phi i8* [ %in.addr.2416, %while.cond73.preheader ], [ %add.ptr96, %while.body75 ]
  %out.addr.3410 = phi i8* [ %out.addr.2415, %while.cond73.preheader ], [ %add.ptr, %while.body75 ]
  %ctr.1409 = phi i32 [ %ctr.0413, %while.cond73.preheader ], [ %inc82, %while.body75 ]
  %j.0408 = phi i64 [ 3072, %while.cond73.preheader ], [ %sub, %while.body75 ]
  %13 = bitcast i8* %out.addr.3410 to i64*
  %14 = bitcast i8* %in.addr.3411 to i64*
  tail call void %1(i8* noundef %arraydecay78, i8* noundef nonnull %arraydecay81, i8* noundef %2) #6
  %inc82 = add i32 %ctr.1409, 1
  %15 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc82) #7, !srcloc !55
  store i32 %15, i32* %arrayidx27, align 4, !tbaa !11
  %16 = load i64, i64* %14, align 1, !tbaa !56
  %17 = load i64, i64* %arrayidx92, align 8, !tbaa !11
  %xor93 = xor i64 %17, %16
  store i64 %xor93, i64* %13, align 1, !tbaa !56
  %arrayidx90.1 = getelementptr inbounds i8, i8* %in.addr.3411, i64 8
  %18 = bitcast i8* %arrayidx90.1 to i64*
  %19 = load i64, i64* %18, align 1, !tbaa !56
  %20 = load i64, i64* %arrayidx92.1, align 8, !tbaa !11
  %xor93.1 = xor i64 %20, %19
  %arrayidx94.1 = getelementptr inbounds i8, i8* %out.addr.3410, i64 8
  %21 = bitcast i8* %arrayidx94.1 to i64*
  store i64 %xor93.1, i64* %21, align 1, !tbaa !56
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.3410, i64 16
  %add.ptr96 = getelementptr inbounds i8, i8* %in.addr.3411, i64 16
  %sub = add nsw i64 %j.0408, -16
  %tobool74.not = icmp eq i64 %sub, 0
  br i1 %tobool74.not, label %while.end97, label %while.body75, !llvm.loop !58

while.end97:                                      ; preds = %while.body75
  %add.ptr103 = getelementptr inbounds i8, i8* %out.addr.3410, i64 -3056
  tail call void %4(i64* noundef nonnull %arraydecay100, %struct.u128* noundef nonnull %arraydecay102, i8* noundef nonnull %add.ptr103, i64 noundef 3072) #6
  %sub104 = add i64 %len.addr.2414, -3072
  %cmp70 = icmp ugt i64 %sub104, 3071
  br i1 %cmp70, label %while.cond73.preheader, label %while.end105, !llvm.loop !59

while.end105:                                     ; preds = %while.end97, %if.end68
  %ctr.0.lcssa = phi i32 [ %9, %if.end68 ], [ %inc82, %while.end97 ]
  %len.addr.2.lcssa = phi i64 [ %len.addr.1393, %if.end68 ], [ %sub104, %while.end97 ]
  %out.addr.2.lcssa = phi i8* [ %out.addr.1394, %if.end68 ], [ %add.ptr, %while.end97 ]
  %in.addr.2.lcssa = phi i8* [ %in.addr.1395, %if.end68 ], [ %add.ptr96, %while.end97 ]
  %and = and i64 %len.addr.2.lcssa, -16
  %tobool106.not = icmp eq i64 %and, 0
  br i1 %tobool106.not, label %if.end150, label %while.body112.lr.ph

while.body112.lr.ph:                              ; preds = %while.end105
  %arraydecay117 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi118 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %arraydecay120 = bitcast %union.anon* %EKi118 to i8*
  %arrayidx134 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %arrayidx134.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  br label %while.body112

while.body112:                                    ; preds = %while.body112.lr.ph, %while.body112
  %in.addr.4426 = phi i8* [ %in.addr.2.lcssa, %while.body112.lr.ph ], [ %add.ptr141, %while.body112 ]
  %out.addr.4425 = phi i8* [ %out.addr.2.lcssa, %while.body112.lr.ph ], [ %add.ptr140, %while.body112 ]
  %len.addr.3424 = phi i64 [ %len.addr.2.lcssa, %while.body112.lr.ph ], [ %sub142, %while.body112 ]
  %ctr.2423 = phi i32 [ %ctr.0.lcssa, %while.body112.lr.ph ], [ %inc121, %while.body112 ]
  %22 = bitcast i8* %out.addr.4425 to i64*
  %23 = bitcast i8* %in.addr.4426 to i64*
  tail call void %1(i8* noundef %arraydecay117, i8* noundef nonnull %arraydecay120, i8* noundef %2) #6
  %inc121 = add i32 %ctr.2423, 1
  %24 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc121) #7, !srcloc !60
  store i32 %24, i32* %arrayidx27, align 4, !tbaa !11
  %25 = load i64, i64* %23, align 1, !tbaa !56
  %26 = load i64, i64* %arrayidx134, align 8, !tbaa !11
  %xor135 = xor i64 %26, %25
  store i64 %xor135, i64* %22, align 1, !tbaa !56
  %arrayidx131.1 = getelementptr inbounds i8, i8* %in.addr.4426, i64 8
  %27 = bitcast i8* %arrayidx131.1 to i64*
  %28 = load i64, i64* %27, align 1, !tbaa !56
  %29 = load i64, i64* %arrayidx134.1, align 8, !tbaa !11
  %xor135.1 = xor i64 %29, %28
  %arrayidx136.1 = getelementptr inbounds i8, i8* %out.addr.4425, i64 8
  %30 = bitcast i8* %arrayidx136.1 to i64*
  store i64 %xor135.1, i64* %30, align 1, !tbaa !56
  %add.ptr140 = getelementptr inbounds i8, i8* %out.addr.4425, i64 16
  %add.ptr141 = getelementptr inbounds i8, i8* %in.addr.4426, i64 16
  %sub142 = add i64 %len.addr.3424, -16
  %cmp110 = icmp ugt i64 %sub142, 15
  br i1 %cmp110, label %while.body112, label %while.end143, !llvm.loop !61

while.end143:                                     ; preds = %while.body112
  %arraydecay146 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay148 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %idx.neg = sub i64 0, %and
  %add.ptr149 = getelementptr inbounds i8, i8* %add.ptr140, i64 %idx.neg
  tail call void %4(i64* noundef nonnull %arraydecay146, %struct.u128* noundef nonnull %arraydecay148, i8* noundef nonnull %add.ptr149, i64 noundef %and) #6
  br label %if.end150

if.end150:                                        ; preds = %while.end143, %while.end105
  %ctr.3 = phi i32 [ %inc121, %while.end143 ], [ %ctr.0.lcssa, %while.end105 ]
  %len.addr.4 = phi i64 [ %sub142, %while.end143 ], [ %len.addr.2.lcssa, %while.end105 ]
  %out.addr.5 = phi i8* [ %add.ptr140, %while.end143 ], [ %out.addr.2.lcssa, %while.end105 ]
  %in.addr.5 = phi i8* [ %add.ptr141, %while.end143 ], [ %in.addr.2.lcssa, %while.end105 ]
  %tobool151.not = icmp eq i64 %len.addr.4, 0
  br i1 %tobool151.not, label %if.end187, label %if.then152

if.then152:                                       ; preds = %if.end150
  %arraydecay155 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi156 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c157 = bitcast %union.anon* %EKi156 to [16 x i8]*
  %arraydecay158 = bitcast %union.anon* %EKi156 to i8*
  tail call void %1(i8* noundef %arraydecay155, i8* noundef nonnull %arraydecay158, i8* noundef %2) #6
  %inc159 = add i32 %ctr.3, 1
  %31 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc159) #7, !srcloc !62
  store i32 %31, i32* %arrayidx27, align 4, !tbaa !11
  %min.iters.check = icmp ult i64 %len.addr.4, 32
  br i1 %min.iters.check, label %while.body168.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then152
  %32 = add i64 %len.addr.4, -1
  %33 = icmp ugt i64 %32, 4294967295
  %34 = trunc i64 %32 to i32
  %35 = xor i32 %mres.3, -1
  %36 = icmp ult i32 %35, %34
  %37 = or i1 %36, %33
  br i1 %37, label %while.body168.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, i8* %out.addr.5, i64 %len.addr.4
  %scevgep442 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep442443 = bitcast i64* %scevgep442 to i8*
  %38 = zext i32 %mres.3 to i64
  %uglygep = getelementptr i8, i8* %scevgep442443, i64 %38
  %scevgep444 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep444445 = bitcast i64* %scevgep444 to i8*
  %39 = add i64 %len.addr.4, %38
  %uglygep446 = getelementptr i8, i8* %scevgep444445, i64 %39
  %scevgep447 = getelementptr i8, i8* %in.addr.5, i64 %len.addr.4
  %scevgep448 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %scevgep448449 = bitcast i64* %scevgep448 to i8*
  %scevgep450 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 2
  %scevgep450451 = bitcast i64* %scevgep450 to i8*
  %uglygep452 = getelementptr i8, i8* %scevgep450451, i64 %len.addr.4
  %bound0 = icmp ult i8* %out.addr.5, %uglygep446
  %bound1 = icmp ult i8* %uglygep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0453 = icmp ult i8* %out.addr.5, %scevgep447
  %bound1454 = icmp ult i8* %in.addr.5, %scevgep
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx = or i1 %found.conflict, %found.conflict455
  %bound0456 = icmp ult i8* %out.addr.5, %uglygep452
  %bound1457 = icmp ugt i8* %scevgep, %scevgep448449
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx459 = or i1 %conflict.rdx, %found.conflict458
  %bound0460 = icmp ult i8* %uglygep, %scevgep447
  %bound1461 = icmp ult i8* %in.addr.5, %uglygep446
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %conflict.rdx459, %found.conflict462
  %bound0464 = icmp ult i8* %uglygep, %uglygep452
  %bound1465 = icmp ugt i8* %uglygep446, %scevgep448449
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx463, %found.conflict466
  br i1 %conflict.rdx467, label %while.body168.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.4, -32
  %ind.end = and i64 %len.addr.4, 31
  %ind.end469 = trunc i64 %n.vec to i32
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end471 = add i32 %mres.3, %cast.crd
  %40 = add i64 %n.vec, -32
  %41 = lshr exact i64 %40, 5
  %42 = add nuw nsw i64 %41, 1
  %xtraiter = and i64 %42, 1
  %43 = icmp eq i64 %40, 0
  br i1 %43, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %42, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %44 = trunc i64 %index to i32
  %offset.idx473 = add i32 %mres.3, %44
  %45 = and i64 %index, 4294967232
  %46 = getelementptr inbounds i8, i8* %in.addr.5, i64 %45
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !11, !alias.scope !63
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load474 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !11, !alias.scope !63
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %c157, i64 0, i64 %45
  %51 = bitcast i8* %50 to <16 x i8>*
  %wide.load475 = load <16 x i8>, <16 x i8>* %51, align 1, !tbaa !11, !alias.scope !66
  %52 = getelementptr inbounds i8, i8* %50, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  %wide.load476 = load <16 x i8>, <16 x i8>* %53, align 1, !tbaa !11, !alias.scope !66
  %54 = xor <16 x i8> %wide.load475, %wide.load
  %55 = xor <16 x i8> %wide.load476, %wide.load474
  %56 = getelementptr inbounds i8, i8* %out.addr.5, i64 %45
  %57 = bitcast i8* %56 to <16 x i8>*
  store <16 x i8> %54, <16 x i8>* %57, align 1, !tbaa !11, !alias.scope !68, !noalias !70
  %58 = getelementptr inbounds i8, i8* %56, i64 16
  %59 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %55, <16 x i8>* %59, align 1, !tbaa !11, !alias.scope !68, !noalias !70
  %60 = zext i32 %offset.idx473 to i64
  %61 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %60
  %62 = bitcast i8* %61 to <16 x i8>*
  store <16 x i8> %54, <16 x i8>* %62, align 1, !tbaa !11, !alias.scope !72, !noalias !73
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> %55, <16 x i8>* %64, align 1, !tbaa !11, !alias.scope !72, !noalias !73
  %index.next = or i64 %index, 32
  %65 = trunc i64 %index.next to i32
  %offset.idx473.1 = add i32 %mres.3, %65
  %66 = and i64 %index.next, 4294967264
  %67 = getelementptr inbounds i8, i8* %in.addr.5, i64 %66
  %68 = bitcast i8* %67 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %68, align 1, !tbaa !11, !alias.scope !63
  %69 = getelementptr inbounds i8, i8* %67, i64 16
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load474.1 = load <16 x i8>, <16 x i8>* %70, align 1, !tbaa !11, !alias.scope !63
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %c157, i64 0, i64 %66
  %72 = bitcast i8* %71 to <16 x i8>*
  %wide.load475.1 = load <16 x i8>, <16 x i8>* %72, align 1, !tbaa !11, !alias.scope !66
  %73 = getelementptr inbounds i8, i8* %71, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  %wide.load476.1 = load <16 x i8>, <16 x i8>* %74, align 1, !tbaa !11, !alias.scope !66
  %75 = xor <16 x i8> %wide.load475.1, %wide.load.1
  %76 = xor <16 x i8> %wide.load476.1, %wide.load474.1
  %77 = getelementptr inbounds i8, i8* %out.addr.5, i64 %66
  %78 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> %75, <16 x i8>* %78, align 1, !tbaa !11, !alias.scope !68, !noalias !70
  %79 = getelementptr inbounds i8, i8* %77, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %76, <16 x i8>* %80, align 1, !tbaa !11, !alias.scope !68, !noalias !70
  %81 = zext i32 %offset.idx473.1 to i64
  %82 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %81
  %83 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %75, <16 x i8>* %83, align 1, !tbaa !11, !alias.scope !72, !noalias !73
  %84 = getelementptr inbounds i8, i8* %82, i64 16
  %85 = bitcast i8* %84 to <16 x i8>*
  store <16 x i8> %76, <16 x i8>* %85, align 1, !tbaa !11, !alias.scope !72, !noalias !73
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !74

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %86 = trunc i64 %index.unr to i32
  %offset.idx473.epil = add i32 %mres.3, %86
  %87 = and i64 %index.unr, 4294967264
  %88 = getelementptr inbounds i8, i8* %in.addr.5, i64 %87
  %89 = bitcast i8* %88 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %89, align 1, !tbaa !11, !alias.scope !63
  %90 = getelementptr inbounds i8, i8* %88, i64 16
  %91 = bitcast i8* %90 to <16 x i8>*
  %wide.load474.epil = load <16 x i8>, <16 x i8>* %91, align 1, !tbaa !11, !alias.scope !63
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %c157, i64 0, i64 %87
  %93 = bitcast i8* %92 to <16 x i8>*
  %wide.load475.epil = load <16 x i8>, <16 x i8>* %93, align 1, !tbaa !11, !alias.scope !66
  %94 = getelementptr inbounds i8, i8* %92, i64 16
  %95 = bitcast i8* %94 to <16 x i8>*
  %wide.load476.epil = load <16 x i8>, <16 x i8>* %95, align 1, !tbaa !11, !alias.scope !66
  %96 = xor <16 x i8> %wide.load475.epil, %wide.load.epil
  %97 = xor <16 x i8> %wide.load476.epil, %wide.load474.epil
  %98 = getelementptr inbounds i8, i8* %out.addr.5, i64 %87
  %99 = bitcast i8* %98 to <16 x i8>*
  store <16 x i8> %96, <16 x i8>* %99, align 1, !tbaa !11, !alias.scope !68, !noalias !70
  %100 = getelementptr inbounds i8, i8* %98, i64 16
  %101 = bitcast i8* %100 to <16 x i8>*
  store <16 x i8> %97, <16 x i8>* %101, align 1, !tbaa !11, !alias.scope !68, !noalias !70
  %102 = zext i32 %offset.idx473.epil to i64
  %103 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %102
  %104 = bitcast i8* %103 to <16 x i8>*
  store <16 x i8> %96, <16 x i8>* %104, align 1, !tbaa !11, !alias.scope !72, !noalias !73
  %105 = getelementptr inbounds i8, i8* %103, i64 16
  %106 = bitcast i8* %105 to <16 x i8>*
  store <16 x i8> %97, <16 x i8>* %106, align 1, !tbaa !11, !alias.scope !72, !noalias !73
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.4, %n.vec
  br i1 %cmp.n, label %if.end187, label %while.body168.preheader

while.body168.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck, %if.then152, %middle.block
  %len.addr.5434.ph = phi i64 [ %len.addr.4, %vector.memcheck ], [ %len.addr.4, %vector.scevcheck ], [ %len.addr.4, %if.then152 ], [ %ind.end, %middle.block ]
  %n.2433.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %if.then152 ], [ %ind.end469, %middle.block ]
  %mres.4432.ph = phi i32 [ %mres.3, %vector.memcheck ], [ %mres.3, %vector.scevcheck ], [ %mres.3, %if.then152 ], [ %ind.end471, %middle.block ]
  %xtraiter477 = and i64 %len.addr.5434.ph, 1
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod478.not, label %while.body168.prol.loopexit, label %while.body168.prol

while.body168.prol:                               ; preds = %while.body168.preheader
  %dec166.prol = add i64 %len.addr.5434.ph, -1
  %idxprom169.prol = zext i32 %n.2433.ph to i64
  %arrayidx170.prol = getelementptr inbounds i8, i8* %in.addr.5, i64 %idxprom169.prol
  %107 = load i8, i8* %arrayidx170.prol, align 1, !tbaa !11
  %arrayidx175.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c157, i64 0, i64 %idxprom169.prol
  %108 = load i8, i8* %arrayidx175.prol, align 1, !tbaa !11
  %xor177383.prol = xor i8 %108, %107
  %arrayidx180.prol = getelementptr inbounds i8, i8* %out.addr.5, i64 %idxprom169.prol
  store i8 %xor177383.prol, i8* %arrayidx180.prol, align 1, !tbaa !11
  %inc182.prol = add i32 %mres.4432.ph, 1
  %idxprom183.prol = zext i32 %mres.4432.ph to i64
  %arrayidx184.prol = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom183.prol
  store i8 %xor177383.prol, i8* %arrayidx184.prol, align 1, !tbaa !11
  %inc185.prol = add i32 %n.2433.ph, 1
  br label %while.body168.prol.loopexit

while.body168.prol.loopexit:                      ; preds = %while.body168.prol, %while.body168.preheader
  %inc182.lcssa.unr = phi i32 [ undef, %while.body168.preheader ], [ %inc182.prol, %while.body168.prol ]
  %len.addr.5434.unr = phi i64 [ %len.addr.5434.ph, %while.body168.preheader ], [ %dec166.prol, %while.body168.prol ]
  %n.2433.unr = phi i32 [ %n.2433.ph, %while.body168.preheader ], [ %inc185.prol, %while.body168.prol ]
  %mres.4432.unr = phi i32 [ %mres.4432.ph, %while.body168.preheader ], [ %inc182.prol, %while.body168.prol ]
  %109 = icmp eq i64 %len.addr.5434.ph, 1
  br i1 %109, label %if.end187, label %while.body168

while.body168:                                    ; preds = %while.body168.prol.loopexit, %while.body168
  %len.addr.5434 = phi i64 [ %dec166.1, %while.body168 ], [ %len.addr.5434.unr, %while.body168.prol.loopexit ]
  %n.2433 = phi i32 [ %inc185.1, %while.body168 ], [ %n.2433.unr, %while.body168.prol.loopexit ]
  %mres.4432 = phi i32 [ %inc182.1, %while.body168 ], [ %mres.4432.unr, %while.body168.prol.loopexit ]
  %idxprom169 = zext i32 %n.2433 to i64
  %arrayidx170 = getelementptr inbounds i8, i8* %in.addr.5, i64 %idxprom169
  %110 = load i8, i8* %arrayidx170, align 1, !tbaa !11
  %arrayidx175 = getelementptr inbounds [16 x i8], [16 x i8]* %c157, i64 0, i64 %idxprom169
  %111 = load i8, i8* %arrayidx175, align 1, !tbaa !11
  %xor177383 = xor i8 %111, %110
  %arrayidx180 = getelementptr inbounds i8, i8* %out.addr.5, i64 %idxprom169
  store i8 %xor177383, i8* %arrayidx180, align 1, !tbaa !11
  %inc182 = add i32 %mres.4432, 1
  %idxprom183 = zext i32 %mres.4432 to i64
  %arrayidx184 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom183
  store i8 %xor177383, i8* %arrayidx184, align 1, !tbaa !11
  %inc185 = add i32 %n.2433, 1
  %dec166.1 = add i64 %len.addr.5434, -2
  %idxprom169.1 = zext i32 %inc185 to i64
  %arrayidx170.1 = getelementptr inbounds i8, i8* %in.addr.5, i64 %idxprom169.1
  %112 = load i8, i8* %arrayidx170.1, align 1, !tbaa !11
  %arrayidx175.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c157, i64 0, i64 %idxprom169.1
  %113 = load i8, i8* %arrayidx175.1, align 1, !tbaa !11
  %xor177383.1 = xor i8 %113, %112
  %arrayidx180.1 = getelementptr inbounds i8, i8* %out.addr.5, i64 %idxprom169.1
  store i8 %xor177383.1, i8* %arrayidx180.1, align 1, !tbaa !11
  %inc182.1 = add i32 %mres.4432, 2
  %idxprom183.1 = zext i32 %inc182 to i64
  %arrayidx184.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom183.1
  store i8 %xor177383.1, i8* %arrayidx184.1, align 1, !tbaa !11
  %inc185.1 = add i32 %n.2433, 2
  %tobool167.not.1 = icmp eq i64 %dec166.1, 0
  br i1 %tobool167.not.1, label %if.end187, label %while.body168, !llvm.loop !75

if.end187:                                        ; preds = %while.body168.prol.loopexit, %while.body168, %middle.block, %if.end150
  %mres.5 = phi i32 [ %mres.3, %if.end150 ], [ %ind.end471, %middle.block ], [ %inc182.lcssa.unr, %while.body168.prol.loopexit ], [ %inc182.1, %while.body168 ]
  store i32 %mres.5, i32* %mres8, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end187, %if.else, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end187 ], [ 0, %if.else ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef %ctx, i8* noundef %in, i8* nocapture noundef writeonly %out, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 1
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %block2 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 11
  %1 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block2, align 8, !tbaa !4
  %key3 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 12
  %2 = load i8*, i8** %key3, align 8, !tbaa !10
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %3 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  %4 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  %add = add i64 %0, %len
  %cmp = icmp ugt i64 %add, 68719476704
  %cmp4 = icmp ult i64 %add, %len
  %or.cond381 = or i1 %cmp, %cmp4
  br i1 %or.cond381, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %mres8 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 9
  %5 = load i32, i32* %mres8, align 8, !tbaa !25
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  %6 = load i32, i32* %ares, align 4, !tbaa !24
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end26, label %if.then9

if.then9:                                         ; preds = %if.end
  %cmp10 = icmp eq i64 %len, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then9
  %arraydecay = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay13 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %3(i64* noundef nonnull %arraydecay, %struct.u128* noundef nonnull %arraydecay13) #6
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %arraydecay16 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %Xi17 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arraydecay18 = bitcast %union.anon* %Xi17 to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay16, i8* noundef nonnull %arraydecay18, i64 noundef 16) #6
  %7 = bitcast %union.anon* %Xi17 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !tbaa !11
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %if.end26

if.end26:                                         ; preds = %if.end15, %if.end
  %mres.0 = phi i32 [ 16, %if.end15 ], [ %5, %if.end ]
  %d = bitcast %struct.gcm128_context* %ctx to [4 x i32]*
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i64 0, i64 3
  %8 = load i32, i32* %arrayidx27, align 4, !tbaa !11
  %9 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %8) #7, !srcloc !76
  %rem = and i32 %mres.0, 15
  %tobool28.not = icmp eq i32 %rem, 0
  br i1 %tobool28.not, label %if.end55, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end26
  %tobool31393.not = icmp eq i64 %len, 0
  br i1 %tobool31393.not, label %if.else, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %EKi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c34 = bitcast %union.anon* %EKi to [16 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %in.addr.0398 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %out.addr.0397 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr39, %while.body ]
  %len.addr.0396 = phi i64 [ %len, %while.body.lr.ph ], [ %dec, %while.body ]
  %n.0395 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem41, %while.body ]
  %mres.1394 = phi i32 [ %mres.0, %while.body.lr.ph ], [ %inc, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0398, i64 1
  %10 = load i8, i8* %in.addr.0398, align 1, !tbaa !11
  %inc = add i32 %mres.1394, 1
  %idxprom = zext i32 %mres.1394 to i64
  %arrayidx33 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom
  store i8 %10, i8* %arrayidx33, align 1, !tbaa !11
  %idxprom35 = zext i32 %n.0395 to i64
  %arrayidx36 = getelementptr inbounds [16 x i8], [16 x i8]* %c34, i64 0, i64 %idxprom35
  %11 = load i8, i8* %arrayidx36, align 1, !tbaa !11
  %xor380 = xor i8 %11, %10
  %incdec.ptr39 = getelementptr inbounds i8, i8* %out.addr.0397, i64 1
  store i8 %xor380, i8* %out.addr.0397, align 1, !tbaa !11
  %dec = add i64 %len.addr.0396, -1
  %add40 = add nuw nsw i32 %n.0395, 1
  %rem41 = and i32 %add40, 15
  %tobool30 = icmp ne i32 %rem41, 0
  %tobool31 = icmp ne i64 %dec, 0
  %12 = select i1 %tobool30, i1 %tobool31, i1 false
  br i1 %12, label %while.body, label %while.end, !llvm.loop !77

while.end:                                        ; preds = %while.body
  %phi.cmp = icmp eq i32 %rem41, 0
  br i1 %phi.cmp, label %if.end68.sink.split, label %if.else

if.else:                                          ; preds = %while.cond.preheader, %while.end
  %mres.1.lcssa437 = phi i32 [ %inc, %while.end ], [ %mres.0, %while.cond.preheader ]
  store i32 %mres.1.lcssa437, i32* %mres8, align 8, !tbaa !25
  br label %cleanup

if.end55:                                         ; preds = %if.end26
  %cmp56 = icmp ugt i64 %len, 15
  %tobool58 = icmp ne i32 %mres.0, 0
  %or.cond = select i1 %cmp56, i1 %tobool58, i1 false
  br i1 %or.cond, label %if.end68.sink.split, label %if.end68

if.end68.sink.split:                              ; preds = %if.end55, %while.end
  %inc.lcssa.sink = phi i32 [ %inc, %while.end ], [ %mres.0, %if.end55 ]
  %in.addr.1391.ph = phi i8* [ %incdec.ptr, %while.end ], [ %in, %if.end55 ]
  %out.addr.1390.ph = phi i8* [ %incdec.ptr39, %while.end ], [ %out, %if.end55 ]
  %len.addr.1389.ph = phi i64 [ %dec, %while.end ], [ %len, %if.end55 ]
  %arraydecay47 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay49 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arraydecay51 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %conv52 = zext i32 %inc.lcssa.sink to i64
  tail call void %4(i64* noundef nonnull %arraydecay47, %struct.u128* noundef nonnull %arraydecay49, i8* noundef nonnull %arraydecay51, i64 noundef %conv52) #6
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.end55
  %in.addr.1391 = phi i8* [ %in, %if.end55 ], [ %in.addr.1391.ph, %if.end68.sink.split ]
  %out.addr.1390 = phi i8* [ %out, %if.end55 ], [ %out.addr.1390.ph, %if.end68.sink.split ]
  %len.addr.1389 = phi i64 [ %len, %if.end55 ], [ %len.addr.1389.ph, %if.end68.sink.split ]
  %mres.3 = phi i32 [ %mres.0, %if.end55 ], [ 0, %if.end68.sink.split ]
  %cmp70408 = icmp ugt i64 %len.addr.1389, 3071
  br i1 %cmp70408, label %while.body72.lr.ph, label %while.end104

while.body72.lr.ph:                               ; preds = %if.end68
  %arraydecay75 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay77 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arraydecay83 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi84 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %arraydecay86 = bitcast %union.anon* %EKi84 to i8*
  %arrayidx97 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %arrayidx97.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  br label %while.body72

while.body72:                                     ; preds = %while.body72.lr.ph, %while.end102
  %in.addr.2412 = phi i8* [ %in.addr.1391, %while.body72.lr.ph ], [ %add.ptr101, %while.end102 ]
  %out.addr.2411 = phi i8* [ %out.addr.1390, %while.body72.lr.ph ], [ %add.ptr, %while.end102 ]
  %len.addr.2410 = phi i64 [ %len.addr.1389, %while.body72.lr.ph ], [ %sub103, %while.end102 ]
  %ctr.0409 = phi i32 [ %9, %while.body72.lr.ph ], [ %inc87, %while.end102 ]
  tail call void %4(i64* noundef nonnull %arraydecay75, %struct.u128* noundef nonnull %arraydecay77, i8* noundef %in.addr.2412, i64 noundef 3072) #6
  br label %while.body80

while.body80:                                     ; preds = %while.body72, %while.body80
  %in.addr.3407 = phi i8* [ %in.addr.2412, %while.body72 ], [ %add.ptr101, %while.body80 ]
  %out.addr.3406 = phi i8* [ %out.addr.2411, %while.body72 ], [ %add.ptr, %while.body80 ]
  %ctr.1405 = phi i32 [ %ctr.0409, %while.body72 ], [ %inc87, %while.body80 ]
  %j.0404 = phi i64 [ 3072, %while.body72 ], [ %sub, %while.body80 ]
  %13 = bitcast i8* %out.addr.3406 to i64*
  %14 = bitcast i8* %in.addr.3407 to i64*
  tail call void %1(i8* noundef %arraydecay83, i8* noundef nonnull %arraydecay86, i8* noundef %2) #6
  %inc87 = add i32 %ctr.1405, 1
  %15 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc87) #7, !srcloc !78
  store i32 %15, i32* %arrayidx27, align 4, !tbaa !11
  %16 = load i64, i64* %14, align 1, !tbaa !56
  %17 = load i64, i64* %arrayidx97, align 8, !tbaa !11
  %xor98 = xor i64 %17, %16
  store i64 %xor98, i64* %13, align 1, !tbaa !56
  %arrayidx95.1 = getelementptr inbounds i8, i8* %in.addr.3407, i64 8
  %18 = bitcast i8* %arrayidx95.1 to i64*
  %19 = load i64, i64* %18, align 1, !tbaa !56
  %20 = load i64, i64* %arrayidx97.1, align 8, !tbaa !11
  %xor98.1 = xor i64 %20, %19
  %arrayidx99.1 = getelementptr inbounds i8, i8* %out.addr.3406, i64 8
  %21 = bitcast i8* %arrayidx99.1 to i64*
  store i64 %xor98.1, i64* %21, align 1, !tbaa !56
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.3406, i64 16
  %add.ptr101 = getelementptr inbounds i8, i8* %in.addr.3407, i64 16
  %sub = add nsw i64 %j.0404, -16
  %tobool79.not = icmp eq i64 %sub, 0
  br i1 %tobool79.not, label %while.end102, label %while.body80, !llvm.loop !79

while.end102:                                     ; preds = %while.body80
  %sub103 = add i64 %len.addr.2410, -3072
  %cmp70 = icmp ugt i64 %sub103, 3071
  br i1 %cmp70, label %while.body72, label %while.end104, !llvm.loop !80

while.end104:                                     ; preds = %while.end102, %if.end68
  %ctr.0.lcssa = phi i32 [ %9, %if.end68 ], [ %inc87, %while.end102 ]
  %len.addr.2.lcssa = phi i64 [ %len.addr.1389, %if.end68 ], [ %sub103, %while.end102 ]
  %out.addr.2.lcssa = phi i8* [ %out.addr.1390, %if.end68 ], [ %add.ptr, %while.end102 ]
  %in.addr.2.lcssa = phi i8* [ %in.addr.1391, %if.end68 ], [ %add.ptr101, %while.end102 ]
  %and = and i64 %len.addr.2.lcssa, -16
  %tobool105.not = icmp eq i64 %and, 0
  br i1 %tobool105.not, label %if.end147, label %while.body115.lr.ph

while.body115.lr.ph:                              ; preds = %while.end104
  %arraydecay109 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay111 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %4(i64* noundef nonnull %arraydecay109, %struct.u128* noundef nonnull %arraydecay111, i8* noundef %in.addr.2.lcssa, i64 noundef %and) #6
  %arraydecay120 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi121 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %arraydecay123 = bitcast %union.anon* %EKi121 to i8*
  %arrayidx137 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %arrayidx137.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 1
  br label %while.body115

while.body115:                                    ; preds = %while.body115.lr.ph, %while.body115
  %in.addr.4422 = phi i8* [ %in.addr.2.lcssa, %while.body115.lr.ph ], [ %add.ptr144, %while.body115 ]
  %out.addr.4421 = phi i8* [ %out.addr.2.lcssa, %while.body115.lr.ph ], [ %add.ptr143, %while.body115 ]
  %len.addr.3420 = phi i64 [ %len.addr.2.lcssa, %while.body115.lr.ph ], [ %sub145, %while.body115 ]
  %ctr.2419 = phi i32 [ %ctr.0.lcssa, %while.body115.lr.ph ], [ %inc124, %while.body115 ]
  %22 = bitcast i8* %out.addr.4421 to i64*
  %23 = bitcast i8* %in.addr.4422 to i64*
  tail call void %1(i8* noundef %arraydecay120, i8* noundef nonnull %arraydecay123, i8* noundef %2) #6
  %inc124 = add i32 %ctr.2419, 1
  %24 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc124) #7, !srcloc !81
  store i32 %24, i32* %arrayidx27, align 4, !tbaa !11
  %25 = load i64, i64* %23, align 1, !tbaa !56
  %26 = load i64, i64* %arrayidx137, align 8, !tbaa !11
  %xor138 = xor i64 %26, %25
  store i64 %xor138, i64* %22, align 1, !tbaa !56
  %arrayidx134.1 = getelementptr inbounds i8, i8* %in.addr.4422, i64 8
  %27 = bitcast i8* %arrayidx134.1 to i64*
  %28 = load i64, i64* %27, align 1, !tbaa !56
  %29 = load i64, i64* %arrayidx137.1, align 8, !tbaa !11
  %xor138.1 = xor i64 %29, %28
  %arrayidx139.1 = getelementptr inbounds i8, i8* %out.addr.4421, i64 8
  %30 = bitcast i8* %arrayidx139.1 to i64*
  store i64 %xor138.1, i64* %30, align 1, !tbaa !56
  %add.ptr143 = getelementptr inbounds i8, i8* %out.addr.4421, i64 16
  %add.ptr144 = getelementptr inbounds i8, i8* %in.addr.4422, i64 16
  %sub145 = add i64 %len.addr.3420, -16
  %cmp113 = icmp ugt i64 %sub145, 15
  br i1 %cmp113, label %while.body115, label %if.end147, !llvm.loop !82

if.end147:                                        ; preds = %while.body115, %while.end104
  %ctr.3 = phi i32 [ %ctr.0.lcssa, %while.end104 ], [ %inc124, %while.body115 ]
  %len.addr.4 = phi i64 [ %len.addr.2.lcssa, %while.end104 ], [ %sub145, %while.body115 ]
  %out.addr.5 = phi i8* [ %out.addr.2.lcssa, %while.end104 ], [ %add.ptr143, %while.body115 ]
  %in.addr.5 = phi i8* [ %in.addr.2.lcssa, %while.end104 ], [ %add.ptr144, %while.body115 ]
  %tobool148.not = icmp eq i64 %len.addr.4, 0
  br i1 %tobool148.not, label %if.end184, label %if.then149

if.then149:                                       ; preds = %if.end147
  %arraydecay152 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi153 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c154 = bitcast %union.anon* %EKi153 to [16 x i8]*
  %arraydecay155 = bitcast %union.anon* %EKi153 to i8*
  tail call void %1(i8* noundef %arraydecay152, i8* noundef nonnull %arraydecay155, i8* noundef %2) #6
  %inc156 = add i32 %ctr.3, 1
  %31 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc156) #7, !srcloc !83
  store i32 %31, i32* %arrayidx27, align 4, !tbaa !11
  %min.iters.check = icmp ult i64 %len.addr.4, 32
  br i1 %min.iters.check, label %while.body165.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then149
  %32 = add i64 %len.addr.4, -1
  %33 = trunc i64 %32 to i32
  %34 = xor i32 %mres.3, -1
  %35 = icmp ult i32 %34, %33
  %36 = icmp ugt i64 %32, 4294967295
  %37 = or i1 %35, %36
  br i1 %37, label %while.body165.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep438 = bitcast i64* %scevgep to i8*
  %38 = zext i32 %mres.3 to i64
  %uglygep = getelementptr i8, i8* %scevgep438, i64 %38
  %scevgep439 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep439440 = bitcast i64* %scevgep439 to i8*
  %39 = add i64 %len.addr.4, %38
  %uglygep441 = getelementptr i8, i8* %scevgep439440, i64 %39
  %scevgep442 = getelementptr i8, i8* %out.addr.5, i64 %len.addr.4
  %scevgep443 = getelementptr i8, i8* %in.addr.5, i64 %len.addr.4
  %scevgep444 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %scevgep444445 = bitcast i64* %scevgep444 to i8*
  %scevgep446 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 2
  %scevgep446447 = bitcast i64* %scevgep446 to i8*
  %uglygep448 = getelementptr i8, i8* %scevgep446447, i64 %len.addr.4
  %bound0 = icmp ult i8* %uglygep, %scevgep442
  %bound1 = icmp ult i8* %out.addr.5, %uglygep441
  %found.conflict = and i1 %bound0, %bound1
  %bound0449 = icmp ult i8* %uglygep, %scevgep443
  %bound1450 = icmp ult i8* %in.addr.5, %uglygep441
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx = or i1 %found.conflict, %found.conflict451
  %bound0452 = icmp ult i8* %uglygep, %uglygep448
  %bound1453 = icmp ugt i8* %uglygep441, %scevgep444445
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx455 = or i1 %conflict.rdx, %found.conflict454
  %bound0456 = icmp ult i8* %out.addr.5, %scevgep443
  %bound1457 = icmp ult i8* %in.addr.5, %scevgep442
  %found.conflict458 = and i1 %bound0456, %bound1457
  %conflict.rdx459 = or i1 %conflict.rdx455, %found.conflict458
  %bound0460 = icmp ult i8* %out.addr.5, %uglygep448
  %bound1461 = icmp ugt i8* %scevgep442, %scevgep444445
  %found.conflict462 = and i1 %bound0460, %bound1461
  %conflict.rdx463 = or i1 %conflict.rdx459, %found.conflict462
  br i1 %conflict.rdx463, label %while.body165.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.4, -32
  %ind.end = and i64 %len.addr.4, 31
  %ind.end465 = trunc i64 %n.vec to i32
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end467 = add i32 %mres.3, %cast.crd
  %40 = add i64 %n.vec, -32
  %41 = lshr exact i64 %40, 5
  %42 = add nuw nsw i64 %41, 1
  %xtraiter = and i64 %42, 1
  %43 = icmp eq i64 %40, 0
  br i1 %43, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %42, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %44 = trunc i64 %index to i32
  %offset.idx469 = add i32 %mres.3, %44
  %45 = and i64 %index, 4294967232
  %46 = getelementptr inbounds i8, i8* %in.addr.5, i64 %45
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %47, align 1, !tbaa !11, !alias.scope !84
  %48 = getelementptr inbounds i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  %wide.load470 = load <16 x i8>, <16 x i8>* %49, align 1, !tbaa !11, !alias.scope !84
  %50 = zext i32 %offset.idx469 to i64
  %51 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %50
  %52 = bitcast i8* %51 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %52, align 1, !tbaa !11, !alias.scope !87, !noalias !89
  %53 = getelementptr inbounds i8, i8* %51, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  store <16 x i8> %wide.load470, <16 x i8>* %54, align 1, !tbaa !11, !alias.scope !87, !noalias !89
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %c154, i64 0, i64 %45
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load471 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !11, !alias.scope !92
  %57 = getelementptr inbounds i8, i8* %55, i64 16
  %58 = bitcast i8* %57 to <16 x i8>*
  %wide.load472 = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !11, !alias.scope !92
  %59 = xor <16 x i8> %wide.load471, %wide.load
  %60 = xor <16 x i8> %wide.load472, %wide.load470
  %61 = getelementptr inbounds i8, i8* %out.addr.5, i64 %45
  %62 = bitcast i8* %61 to <16 x i8>*
  store <16 x i8> %59, <16 x i8>* %62, align 1, !tbaa !11, !alias.scope !93, !noalias !94
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> %60, <16 x i8>* %64, align 1, !tbaa !11, !alias.scope !93, !noalias !94
  %index.next = or i64 %index, 32
  %65 = trunc i64 %index.next to i32
  %offset.idx469.1 = add i32 %mres.3, %65
  %66 = and i64 %index.next, 4294967264
  %67 = getelementptr inbounds i8, i8* %in.addr.5, i64 %66
  %68 = bitcast i8* %67 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %68, align 1, !tbaa !11, !alias.scope !84
  %69 = getelementptr inbounds i8, i8* %67, i64 16
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load470.1 = load <16 x i8>, <16 x i8>* %70, align 1, !tbaa !11, !alias.scope !84
  %71 = zext i32 %offset.idx469.1 to i64
  %72 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %71
  %73 = bitcast i8* %72 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %73, align 1, !tbaa !11, !alias.scope !87, !noalias !89
  %74 = getelementptr inbounds i8, i8* %72, i64 16
  %75 = bitcast i8* %74 to <16 x i8>*
  store <16 x i8> %wide.load470.1, <16 x i8>* %75, align 1, !tbaa !11, !alias.scope !87, !noalias !89
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %c154, i64 0, i64 %66
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load471.1 = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !11, !alias.scope !92
  %78 = getelementptr inbounds i8, i8* %76, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load472.1 = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !11, !alias.scope !92
  %80 = xor <16 x i8> %wide.load471.1, %wide.load.1
  %81 = xor <16 x i8> %wide.load472.1, %wide.load470.1
  %82 = getelementptr inbounds i8, i8* %out.addr.5, i64 %66
  %83 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %80, <16 x i8>* %83, align 1, !tbaa !11, !alias.scope !93, !noalias !94
  %84 = getelementptr inbounds i8, i8* %82, i64 16
  %85 = bitcast i8* %84 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %85, align 1, !tbaa !11, !alias.scope !93, !noalias !94
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !95

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %86 = trunc i64 %index.unr to i32
  %offset.idx469.epil = add i32 %mres.3, %86
  %87 = and i64 %index.unr, 4294967264
  %88 = getelementptr inbounds i8, i8* %in.addr.5, i64 %87
  %89 = bitcast i8* %88 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %89, align 1, !tbaa !11, !alias.scope !84
  %90 = getelementptr inbounds i8, i8* %88, i64 16
  %91 = bitcast i8* %90 to <16 x i8>*
  %wide.load470.epil = load <16 x i8>, <16 x i8>* %91, align 1, !tbaa !11, !alias.scope !84
  %92 = zext i32 %offset.idx469.epil to i64
  %93 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %92
  %94 = bitcast i8* %93 to <16 x i8>*
  store <16 x i8> %wide.load.epil, <16 x i8>* %94, align 1, !tbaa !11, !alias.scope !87, !noalias !89
  %95 = getelementptr inbounds i8, i8* %93, i64 16
  %96 = bitcast i8* %95 to <16 x i8>*
  store <16 x i8> %wide.load470.epil, <16 x i8>* %96, align 1, !tbaa !11, !alias.scope !87, !noalias !89
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %c154, i64 0, i64 %87
  %98 = bitcast i8* %97 to <16 x i8>*
  %wide.load471.epil = load <16 x i8>, <16 x i8>* %98, align 1, !tbaa !11, !alias.scope !92
  %99 = getelementptr inbounds i8, i8* %97, i64 16
  %100 = bitcast i8* %99 to <16 x i8>*
  %wide.load472.epil = load <16 x i8>, <16 x i8>* %100, align 1, !tbaa !11, !alias.scope !92
  %101 = xor <16 x i8> %wide.load471.epil, %wide.load.epil
  %102 = xor <16 x i8> %wide.load472.epil, %wide.load470.epil
  %103 = getelementptr inbounds i8, i8* %out.addr.5, i64 %87
  %104 = bitcast i8* %103 to <16 x i8>*
  store <16 x i8> %101, <16 x i8>* %104, align 1, !tbaa !11, !alias.scope !93, !noalias !94
  %105 = getelementptr inbounds i8, i8* %103, i64 16
  %106 = bitcast i8* %105 to <16 x i8>*
  store <16 x i8> %102, <16 x i8>* %106, align 1, !tbaa !11, !alias.scope !93, !noalias !94
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.4, %n.vec
  br i1 %cmp.n, label %if.end184, label %while.body165.preheader

while.body165.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck, %if.then149, %middle.block
  %len.addr.5430.ph = phi i64 [ %len.addr.4, %vector.memcheck ], [ %len.addr.4, %vector.scevcheck ], [ %len.addr.4, %if.then149 ], [ %ind.end, %middle.block ]
  %n.2429.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %if.then149 ], [ %ind.end465, %middle.block ]
  %mres.4428.ph = phi i32 [ %mres.3, %vector.memcheck ], [ %mres.3, %vector.scevcheck ], [ %mres.3, %if.then149 ], [ %ind.end467, %middle.block ]
  %xtraiter473 = and i64 %len.addr.5430.ph, 1
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %while.body165.prol.loopexit, label %while.body165.prol

while.body165.prol:                               ; preds = %while.body165.preheader
  %dec163.prol = add i64 %len.addr.5430.ph, -1
  %idxprom166.prol = zext i32 %n.2429.ph to i64
  %arrayidx167.prol = getelementptr inbounds i8, i8* %in.addr.5, i64 %idxprom166.prol
  %107 = load i8, i8* %arrayidx167.prol, align 1, !tbaa !11
  %inc169.prol = add i32 %mres.4428.ph, 1
  %idxprom170.prol = zext i32 %mres.4428.ph to i64
  %arrayidx171.prol = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom170.prol
  store i8 %107, i8* %arrayidx171.prol, align 1, !tbaa !11
  %arrayidx176.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c154, i64 0, i64 %idxprom166.prol
  %108 = load i8, i8* %arrayidx176.prol, align 1, !tbaa !11
  %xor178379.prol = xor i8 %108, %107
  %arrayidx181.prol = getelementptr inbounds i8, i8* %out.addr.5, i64 %idxprom166.prol
  store i8 %xor178379.prol, i8* %arrayidx181.prol, align 1, !tbaa !11
  %inc182.prol = add i32 %n.2429.ph, 1
  br label %while.body165.prol.loopexit

while.body165.prol.loopexit:                      ; preds = %while.body165.prol, %while.body165.preheader
  %inc169.lcssa.unr = phi i32 [ undef, %while.body165.preheader ], [ %inc169.prol, %while.body165.prol ]
  %len.addr.5430.unr = phi i64 [ %len.addr.5430.ph, %while.body165.preheader ], [ %dec163.prol, %while.body165.prol ]
  %n.2429.unr = phi i32 [ %n.2429.ph, %while.body165.preheader ], [ %inc182.prol, %while.body165.prol ]
  %mres.4428.unr = phi i32 [ %mres.4428.ph, %while.body165.preheader ], [ %inc169.prol, %while.body165.prol ]
  %109 = icmp eq i64 %len.addr.5430.ph, 1
  br i1 %109, label %if.end184, label %while.body165

while.body165:                                    ; preds = %while.body165.prol.loopexit, %while.body165
  %len.addr.5430 = phi i64 [ %dec163.1, %while.body165 ], [ %len.addr.5430.unr, %while.body165.prol.loopexit ]
  %n.2429 = phi i32 [ %inc182.1, %while.body165 ], [ %n.2429.unr, %while.body165.prol.loopexit ]
  %mres.4428 = phi i32 [ %inc169.1, %while.body165 ], [ %mres.4428.unr, %while.body165.prol.loopexit ]
  %idxprom166 = zext i32 %n.2429 to i64
  %arrayidx167 = getelementptr inbounds i8, i8* %in.addr.5, i64 %idxprom166
  %110 = load i8, i8* %arrayidx167, align 1, !tbaa !11
  %inc169 = add i32 %mres.4428, 1
  %idxprom170 = zext i32 %mres.4428 to i64
  %arrayidx171 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom170
  store i8 %110, i8* %arrayidx171, align 1, !tbaa !11
  %arrayidx176 = getelementptr inbounds [16 x i8], [16 x i8]* %c154, i64 0, i64 %idxprom166
  %111 = load i8, i8* %arrayidx176, align 1, !tbaa !11
  %xor178379 = xor i8 %111, %110
  %arrayidx181 = getelementptr inbounds i8, i8* %out.addr.5, i64 %idxprom166
  store i8 %xor178379, i8* %arrayidx181, align 1, !tbaa !11
  %inc182 = add i32 %n.2429, 1
  %dec163.1 = add i64 %len.addr.5430, -2
  %idxprom166.1 = zext i32 %inc182 to i64
  %arrayidx167.1 = getelementptr inbounds i8, i8* %in.addr.5, i64 %idxprom166.1
  %112 = load i8, i8* %arrayidx167.1, align 1, !tbaa !11
  %inc169.1 = add i32 %mres.4428, 2
  %idxprom170.1 = zext i32 %inc169 to i64
  %arrayidx171.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom170.1
  store i8 %112, i8* %arrayidx171.1, align 1, !tbaa !11
  %arrayidx176.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c154, i64 0, i64 %idxprom166.1
  %113 = load i8, i8* %arrayidx176.1, align 1, !tbaa !11
  %xor178379.1 = xor i8 %113, %112
  %arrayidx181.1 = getelementptr inbounds i8, i8* %out.addr.5, i64 %idxprom166.1
  store i8 %xor178379.1, i8* %arrayidx181.1, align 1, !tbaa !11
  %inc182.1 = add i32 %n.2429, 2
  %tobool164.not.1 = icmp eq i64 %dec163.1, 0
  br i1 %tobool164.not.1, label %if.end184, label %while.body165, !llvm.loop !96

if.end184:                                        ; preds = %while.body165.prol.loopexit, %while.body165, %middle.block, %if.end147
  %mres.5 = phi i32 [ %mres.3, %if.end147 ], [ %ind.end467, %middle.block ], [ %inc169.lcssa.unr, %while.body165.prol.loopexit ], [ %inc169.1, %while.body165 ]
  store i32 %mres.5, i32* %mres8, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end184, %if.else, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %if.end184 ], [ 0, %if.else ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_gcm128_encrypt_ctr32(%struct.gcm128_context* noundef %ctx, i8* noundef %in, i8* noundef %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*)* nocapture noundef readonly %stream) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 1
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %key2 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 12
  %1 = load i8*, i8** %key2, align 8, !tbaa !10
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %2 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  %3 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  %add = add i64 %0, %len
  %cmp = icmp ugt i64 %add, 68719476704
  %cmp3 = icmp ult i64 %add, %len
  %or.cond271 = or i1 %cmp, %cmp3
  br i1 %or.cond271, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %mres7 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 9
  %4 = load i32, i32* %mres7, align 8, !tbaa !25
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  %5 = load i32, i32* %ares, align 4, !tbaa !24
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end25, label %if.then8

if.then8:                                         ; preds = %if.end
  %cmp9 = icmp eq i64 %len, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.then8
  %arraydecay = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay12 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %2(i64* noundef nonnull %arraydecay, %struct.u128* noundef nonnull %arraydecay12) #6
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %cleanup

if.end14:                                         ; preds = %if.then8
  %arraydecay15 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %Xi16 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arraydecay17 = bitcast %union.anon* %Xi16 to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay15, i8* noundef nonnull %arraydecay17, i64 noundef 16) #6
  %6 = bitcast %union.anon* %Xi16 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !tbaa !11
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %if.end25

if.end25:                                         ; preds = %if.end14, %if.end
  %mres.0 = phi i32 [ 16, %if.end14 ], [ %4, %if.end ]
  %d = bitcast %struct.gcm128_context* %ctx to [4 x i32]*
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i64 0, i64 3
  %7 = load i32, i32* %arrayidx26, align 4, !tbaa !11
  %8 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %7) #7, !srcloc !97
  %rem = and i32 %mres.0, 15
  %tobool27.not = icmp eq i32 %rem, 0
  br i1 %tobool27.not, label %if.end54, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end25
  %tobool30283.not = icmp eq i64 %len, 0
  br i1 %tobool30283.not, label %if.else, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %EKi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c31 = bitcast %union.anon* %EKi to [16 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %in.addr.0288 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %out.addr.0287 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr35, %while.body ]
  %len.addr.0286 = phi i64 [ %len, %while.body.lr.ph ], [ %dec, %while.body ]
  %n.0285 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem40, %while.body ]
  %mres.1284 = phi i32 [ %mres.0, %while.body.lr.ph ], [ %inc, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0288, i64 1
  %9 = load i8, i8* %in.addr.0288, align 1, !tbaa !11
  %idxprom = zext i32 %n.0285 to i64
  %arrayidx32 = getelementptr inbounds [16 x i8], [16 x i8]* %c31, i64 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx32, align 1, !tbaa !11
  %xor270 = xor i8 %10, %9
  %incdec.ptr35 = getelementptr inbounds i8, i8* %out.addr.0287, i64 1
  store i8 %xor270, i8* %out.addr.0287, align 1, !tbaa !11
  %inc = add i32 %mres.1284, 1
  %idxprom37 = zext i32 %mres.1284 to i64
  %arrayidx38 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom37
  store i8 %xor270, i8* %arrayidx38, align 1, !tbaa !11
  %dec = add i64 %len.addr.0286, -1
  %add39 = add nuw nsw i32 %n.0285, 1
  %rem40 = and i32 %add39, 15
  %tobool29 = icmp ne i32 %rem40, 0
  %tobool30 = icmp ne i64 %dec, 0
  %11 = select i1 %tobool29, i1 %tobool30, i1 false
  br i1 %11, label %while.body, label %while.end, !llvm.loop !98

while.end:                                        ; preds = %while.body
  %phi.cmp = icmp eq i32 %rem40, 0
  br i1 %phi.cmp, label %if.end67.sink.split, label %if.else

if.else:                                          ; preds = %while.cond.preheader, %while.end
  %mres.1.lcssa312 = phi i32 [ %inc, %while.end ], [ %mres.0, %while.cond.preheader ]
  store i32 %mres.1.lcssa312, i32* %mres7, align 8, !tbaa !25
  br label %cleanup

if.end54:                                         ; preds = %if.end25
  %cmp55 = icmp ugt i64 %len, 15
  %tobool57 = icmp ne i32 %mres.0, 0
  %or.cond = select i1 %cmp55, i1 %tobool57, i1 false
  br i1 %or.cond, label %if.end67.sink.split, label %if.end67

if.end67.sink.split:                              ; preds = %if.end54, %while.end
  %inc.lcssa.sink = phi i32 [ %inc, %while.end ], [ %mres.0, %if.end54 ]
  %in.addr.1281.ph = phi i8* [ %incdec.ptr, %while.end ], [ %in, %if.end54 ]
  %out.addr.1280.ph = phi i8* [ %incdec.ptr35, %while.end ], [ %out, %if.end54 ]
  %len.addr.1279.ph = phi i64 [ %dec, %while.end ], [ %len, %if.end54 ]
  %arraydecay46 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay48 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arraydecay50 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %conv51 = zext i32 %inc.lcssa.sink to i64
  tail call void %3(i64* noundef nonnull %arraydecay46, %struct.u128* noundef nonnull %arraydecay48, i8* noundef nonnull %arraydecay50, i64 noundef %conv51) #6
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.end54
  %in.addr.1281 = phi i8* [ %in, %if.end54 ], [ %in.addr.1281.ph, %if.end67.sink.split ]
  %out.addr.1280 = phi i8* [ %out, %if.end54 ], [ %out.addr.1280.ph, %if.end67.sink.split ]
  %len.addr.1279 = phi i64 [ %len, %if.end54 ], [ %len.addr.1279.ph, %if.end67.sink.split ]
  %mres.3 = phi i32 [ %mres.0, %if.end54 ], [ 0, %if.end67.sink.split ]
  %cmp69293 = icmp ugt i64 %len.addr.1279, 3071
  br i1 %cmp69293, label %while.body71.lr.ph, label %while.end87

while.body71.lr.ph:                               ; preds = %if.end67
  %arraydecay74 = bitcast %struct.gcm128_context* %ctx to i8*
  %arraydecay83 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay85 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  br label %while.body71

while.body71:                                     ; preds = %while.body71.lr.ph, %while.body71
  %in.addr.2297 = phi i8* [ %in.addr.1281, %while.body71.lr.ph ], [ %add.ptr86, %while.body71 ]
  %out.addr.2296 = phi i8* [ %out.addr.1280, %while.body71.lr.ph ], [ %add.ptr, %while.body71 ]
  %len.addr.2295 = phi i64 [ %len.addr.1279, %while.body71.lr.ph ], [ %sub, %while.body71 ]
  %ctr.0294 = phi i32 [ %8, %while.body71.lr.ph ], [ %add75, %while.body71 ]
  tail call void %stream(i8* noundef %in.addr.2297, i8* noundef %out.addr.2296, i64 noundef 192, i8* noundef %1, i8* noundef %arraydecay74) #6
  %add75 = add i32 %ctr.0294, 192
  %12 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %add75) #7, !srcloc !99
  store i32 %12, i32* %arrayidx26, align 4, !tbaa !11
  tail call void %3(i64* noundef nonnull %arraydecay83, %struct.u128* noundef nonnull %arraydecay85, i8* noundef %out.addr.2296, i64 noundef 3072) #6
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.2296, i64 3072
  %add.ptr86 = getelementptr inbounds i8, i8* %in.addr.2297, i64 3072
  %sub = add i64 %len.addr.2295, -3072
  %cmp69 = icmp ugt i64 %sub, 3071
  br i1 %cmp69, label %while.body71, label %while.end87, !llvm.loop !100

while.end87:                                      ; preds = %while.body71, %if.end67
  %ctr.0.lcssa = phi i32 [ %8, %if.end67 ], [ %add75, %while.body71 ]
  %len.addr.2.lcssa = phi i64 [ %len.addr.1279, %if.end67 ], [ %sub, %while.body71 ]
  %out.addr.2.lcssa = phi i8* [ %out.addr.1280, %if.end67 ], [ %add.ptr, %while.body71 ]
  %in.addr.2.lcssa = phi i8* [ %in.addr.1281, %if.end67 ], [ %add.ptr86, %while.body71 ]
  %and = and i64 %len.addr.2.lcssa, -16
  %tobool88.not = icmp eq i64 %and, 0
  br i1 %tobool88.not, label %if.end108, label %if.then89

if.then89:                                        ; preds = %while.end87
  %div = lshr i64 %len.addr.2.lcssa, 4
  %arraydecay92 = bitcast %struct.gcm128_context* %ctx to i8*
  tail call void %stream(i8* noundef %in.addr.2.lcssa, i8* noundef %out.addr.2.lcssa, i64 noundef %div, i8* noundef %1, i8* noundef %arraydecay92) #6
  %conv93 = trunc i64 %div to i32
  %add94 = add i32 %ctr.0.lcssa, %conv93
  %13 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %add94) #7, !srcloc !101
  store i32 %13, i32* %arrayidx26, align 4, !tbaa !11
  %add.ptr100 = getelementptr inbounds i8, i8* %in.addr.2.lcssa, i64 %and
  %sub101 = and i64 %len.addr.2.lcssa, 15
  %arraydecay104 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay106 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %3(i64* noundef nonnull %arraydecay104, %struct.u128* noundef nonnull %arraydecay106, i8* noundef %out.addr.2.lcssa, i64 noundef %and) #6
  %add.ptr107 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %and
  br label %if.end108

if.end108:                                        ; preds = %if.then89, %while.end87
  %ctr.1 = phi i32 [ %add94, %if.then89 ], [ %ctr.0.lcssa, %while.end87 ]
  %len.addr.3 = phi i64 [ %sub101, %if.then89 ], [ %len.addr.2.lcssa, %while.end87 ]
  %out.addr.3 = phi i8* [ %add.ptr107, %if.then89 ], [ %out.addr.2.lcssa, %while.end87 ]
  %in.addr.3 = phi i8* [ %add.ptr100, %if.then89 ], [ %in.addr.2.lcssa, %while.end87 ]
  %tobool109.not = icmp eq i64 %len.addr.3, 0
  br i1 %tobool109.not, label %if.end145, label %if.then110

if.then110:                                       ; preds = %if.end108
  %block = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 11
  %14 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block, align 8, !tbaa !4
  %arraydecay113 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi114 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c115 = bitcast %union.anon* %EKi114 to [16 x i8]*
  %arraydecay116 = bitcast %union.anon* %EKi114 to i8*
  tail call void %14(i8* noundef %arraydecay113, i8* noundef nonnull %arraydecay116, i8* noundef %1) #6
  %inc117 = add i32 %ctr.1, 1
  %15 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc117) #7, !srcloc !102
  store i32 %15, i32* %arrayidx26, align 4, !tbaa !11
  %min.iters.check = icmp ult i64 %len.addr.3, 32
  br i1 %min.iters.check, label %while.body126.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then110
  %16 = add i64 %len.addr.3, -1
  %17 = icmp ugt i64 %16, 4294967295
  %18 = trunc i64 %16 to i32
  %19 = xor i32 %mres.3, -1
  %20 = icmp ult i32 %19, %18
  %21 = or i1 %20, %17
  br i1 %21, label %while.body126.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, i8* %out.addr.3, i64 %len.addr.3
  %scevgep313 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep313314 = bitcast i64* %scevgep313 to i8*
  %22 = zext i32 %mres.3 to i64
  %uglygep = getelementptr i8, i8* %scevgep313314, i64 %22
  %scevgep315 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep315316 = bitcast i64* %scevgep315 to i8*
  %23 = add i64 %len.addr.3, %22
  %uglygep317 = getelementptr i8, i8* %scevgep315316, i64 %23
  %scevgep318 = getelementptr i8, i8* %in.addr.3, i64 %len.addr.3
  %scevgep319 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %scevgep319320 = bitcast i64* %scevgep319 to i8*
  %scevgep321 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 2
  %scevgep321322 = bitcast i64* %scevgep321 to i8*
  %uglygep323 = getelementptr i8, i8* %scevgep321322, i64 %len.addr.3
  %bound0 = icmp ult i8* %out.addr.3, %uglygep317
  %bound1 = icmp ult i8* %uglygep, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0324 = icmp ult i8* %out.addr.3, %scevgep318
  %bound1325 = icmp ult i8* %in.addr.3, %scevgep
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx = or i1 %found.conflict, %found.conflict326
  %bound0327 = icmp ult i8* %out.addr.3, %uglygep323
  %bound1328 = icmp ugt i8* %scevgep, %scevgep319320
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %conflict.rdx, %found.conflict329
  %bound0331 = icmp ult i8* %uglygep, %scevgep318
  %bound1332 = icmp ult i8* %in.addr.3, %uglygep317
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx330, %found.conflict333
  %bound0335 = icmp ult i8* %uglygep, %uglygep323
  %bound1336 = icmp ugt i8* %uglygep317, %scevgep319320
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %conflict.rdx334, %found.conflict337
  br i1 %conflict.rdx338, label %while.body126.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.3, -32
  %ind.end = and i64 %len.addr.3, 31
  %ind.end340 = trunc i64 %n.vec to i32
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end342 = add i32 %mres.3, %cast.crd
  %24 = add i64 %n.vec, -32
  %25 = lshr exact i64 %24, 5
  %26 = add nuw nsw i64 %25, 1
  %xtraiter = and i64 %26, 1
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %26, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %28 = trunc i64 %index to i32
  %offset.idx344 = add i32 %mres.3, %28
  %29 = and i64 %index, 4294967232
  %30 = getelementptr inbounds i8, i8* %in.addr.3, i64 %29
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !11, !alias.scope !103
  %32 = getelementptr inbounds i8, i8* %30, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load345 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !11, !alias.scope !103
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %29
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load346 = load <16 x i8>, <16 x i8>* %35, align 1, !tbaa !11, !alias.scope !106
  %36 = getelementptr inbounds i8, i8* %34, i64 16
  %37 = bitcast i8* %36 to <16 x i8>*
  %wide.load347 = load <16 x i8>, <16 x i8>* %37, align 1, !tbaa !11, !alias.scope !106
  %38 = xor <16 x i8> %wide.load346, %wide.load
  %39 = xor <16 x i8> %wide.load347, %wide.load345
  %40 = getelementptr inbounds i8, i8* %out.addr.3, i64 %29
  %41 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %41, align 1, !tbaa !11, !alias.scope !108, !noalias !110
  %42 = getelementptr inbounds i8, i8* %40, i64 16
  %43 = bitcast i8* %42 to <16 x i8>*
  store <16 x i8> %39, <16 x i8>* %43, align 1, !tbaa !11, !alias.scope !108, !noalias !110
  %44 = zext i32 %offset.idx344 to i64
  %45 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %44
  %46 = bitcast i8* %45 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %46, align 1, !tbaa !11, !alias.scope !112, !noalias !113
  %47 = getelementptr inbounds i8, i8* %45, i64 16
  %48 = bitcast i8* %47 to <16 x i8>*
  store <16 x i8> %39, <16 x i8>* %48, align 1, !tbaa !11, !alias.scope !112, !noalias !113
  %index.next = or i64 %index, 32
  %49 = trunc i64 %index.next to i32
  %offset.idx344.1 = add i32 %mres.3, %49
  %50 = and i64 %index.next, 4294967264
  %51 = getelementptr inbounds i8, i8* %in.addr.3, i64 %50
  %52 = bitcast i8* %51 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %52, align 1, !tbaa !11, !alias.scope !103
  %53 = getelementptr inbounds i8, i8* %51, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  %wide.load345.1 = load <16 x i8>, <16 x i8>* %54, align 1, !tbaa !11, !alias.scope !103
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %50
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load346.1 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !11, !alias.scope !106
  %57 = getelementptr inbounds i8, i8* %55, i64 16
  %58 = bitcast i8* %57 to <16 x i8>*
  %wide.load347.1 = load <16 x i8>, <16 x i8>* %58, align 1, !tbaa !11, !alias.scope !106
  %59 = xor <16 x i8> %wide.load346.1, %wide.load.1
  %60 = xor <16 x i8> %wide.load347.1, %wide.load345.1
  %61 = getelementptr inbounds i8, i8* %out.addr.3, i64 %50
  %62 = bitcast i8* %61 to <16 x i8>*
  store <16 x i8> %59, <16 x i8>* %62, align 1, !tbaa !11, !alias.scope !108, !noalias !110
  %63 = getelementptr inbounds i8, i8* %61, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  store <16 x i8> %60, <16 x i8>* %64, align 1, !tbaa !11, !alias.scope !108, !noalias !110
  %65 = zext i32 %offset.idx344.1 to i64
  %66 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %65
  %67 = bitcast i8* %66 to <16 x i8>*
  store <16 x i8> %59, <16 x i8>* %67, align 1, !tbaa !11, !alias.scope !112, !noalias !113
  %68 = getelementptr inbounds i8, i8* %66, i64 16
  %69 = bitcast i8* %68 to <16 x i8>*
  store <16 x i8> %60, <16 x i8>* %69, align 1, !tbaa !11, !alias.scope !112, !noalias !113
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !114

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %70 = trunc i64 %index.unr to i32
  %offset.idx344.epil = add i32 %mres.3, %70
  %71 = and i64 %index.unr, 4294967264
  %72 = getelementptr inbounds i8, i8* %in.addr.3, i64 %71
  %73 = bitcast i8* %72 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %73, align 1, !tbaa !11, !alias.scope !103
  %74 = getelementptr inbounds i8, i8* %72, i64 16
  %75 = bitcast i8* %74 to <16 x i8>*
  %wide.load345.epil = load <16 x i8>, <16 x i8>* %75, align 1, !tbaa !11, !alias.scope !103
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %71
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load346.epil = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !11, !alias.scope !106
  %78 = getelementptr inbounds i8, i8* %76, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load347.epil = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !11, !alias.scope !106
  %80 = xor <16 x i8> %wide.load346.epil, %wide.load.epil
  %81 = xor <16 x i8> %wide.load347.epil, %wide.load345.epil
  %82 = getelementptr inbounds i8, i8* %out.addr.3, i64 %71
  %83 = bitcast i8* %82 to <16 x i8>*
  store <16 x i8> %80, <16 x i8>* %83, align 1, !tbaa !11, !alias.scope !108, !noalias !110
  %84 = getelementptr inbounds i8, i8* %82, i64 16
  %85 = bitcast i8* %84 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %85, align 1, !tbaa !11, !alias.scope !108, !noalias !110
  %86 = zext i32 %offset.idx344.epil to i64
  %87 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %86
  %88 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %80, <16 x i8>* %88, align 1, !tbaa !11, !alias.scope !112, !noalias !113
  %89 = getelementptr inbounds i8, i8* %87, i64 16
  %90 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %90, align 1, !tbaa !11, !alias.scope !112, !noalias !113
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.3, %n.vec
  br i1 %cmp.n, label %if.end145, label %while.body126.preheader

while.body126.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck, %if.then110, %middle.block
  %len.addr.4305.ph = phi i64 [ %len.addr.3, %vector.memcheck ], [ %len.addr.3, %vector.scevcheck ], [ %len.addr.3, %if.then110 ], [ %ind.end, %middle.block ]
  %n.2304.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %if.then110 ], [ %ind.end340, %middle.block ]
  %mres.4303.ph = phi i32 [ %mres.3, %vector.memcheck ], [ %mres.3, %vector.scevcheck ], [ %mres.3, %if.then110 ], [ %ind.end342, %middle.block ]
  %xtraiter348 = and i64 %len.addr.4305.ph, 1
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %while.body126.prol.loopexit, label %while.body126.prol

while.body126.prol:                               ; preds = %while.body126.preheader
  %dec124.prol = add i64 %len.addr.4305.ph, -1
  %idxprom127.prol = zext i32 %n.2304.ph to i64
  %arrayidx128.prol = getelementptr inbounds i8, i8* %in.addr.3, i64 %idxprom127.prol
  %91 = load i8, i8* %arrayidx128.prol, align 1, !tbaa !11
  %arrayidx133.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %idxprom127.prol
  %92 = load i8, i8* %arrayidx133.prol, align 1, !tbaa !11
  %xor135269.prol = xor i8 %92, %91
  %arrayidx138.prol = getelementptr inbounds i8, i8* %out.addr.3, i64 %idxprom127.prol
  store i8 %xor135269.prol, i8* %arrayidx138.prol, align 1, !tbaa !11
  %inc140.prol = add i32 %mres.4303.ph, 1
  %idxprom141.prol = zext i32 %mres.4303.ph to i64
  %arrayidx142.prol = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom141.prol
  store i8 %xor135269.prol, i8* %arrayidx142.prol, align 1, !tbaa !11
  %inc143.prol = add i32 %n.2304.ph, 1
  br label %while.body126.prol.loopexit

while.body126.prol.loopexit:                      ; preds = %while.body126.prol, %while.body126.preheader
  %inc140.lcssa.unr = phi i32 [ undef, %while.body126.preheader ], [ %inc140.prol, %while.body126.prol ]
  %len.addr.4305.unr = phi i64 [ %len.addr.4305.ph, %while.body126.preheader ], [ %dec124.prol, %while.body126.prol ]
  %n.2304.unr = phi i32 [ %n.2304.ph, %while.body126.preheader ], [ %inc143.prol, %while.body126.prol ]
  %mres.4303.unr = phi i32 [ %mres.4303.ph, %while.body126.preheader ], [ %inc140.prol, %while.body126.prol ]
  %93 = icmp eq i64 %len.addr.4305.ph, 1
  br i1 %93, label %if.end145, label %while.body126

while.body126:                                    ; preds = %while.body126.prol.loopexit, %while.body126
  %len.addr.4305 = phi i64 [ %dec124.1, %while.body126 ], [ %len.addr.4305.unr, %while.body126.prol.loopexit ]
  %n.2304 = phi i32 [ %inc143.1, %while.body126 ], [ %n.2304.unr, %while.body126.prol.loopexit ]
  %mres.4303 = phi i32 [ %inc140.1, %while.body126 ], [ %mres.4303.unr, %while.body126.prol.loopexit ]
  %idxprom127 = zext i32 %n.2304 to i64
  %arrayidx128 = getelementptr inbounds i8, i8* %in.addr.3, i64 %idxprom127
  %94 = load i8, i8* %arrayidx128, align 1, !tbaa !11
  %arrayidx133 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %idxprom127
  %95 = load i8, i8* %arrayidx133, align 1, !tbaa !11
  %xor135269 = xor i8 %95, %94
  %arrayidx138 = getelementptr inbounds i8, i8* %out.addr.3, i64 %idxprom127
  store i8 %xor135269, i8* %arrayidx138, align 1, !tbaa !11
  %inc140 = add i32 %mres.4303, 1
  %idxprom141 = zext i32 %mres.4303 to i64
  %arrayidx142 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom141
  store i8 %xor135269, i8* %arrayidx142, align 1, !tbaa !11
  %inc143 = add i32 %n.2304, 1
  %dec124.1 = add i64 %len.addr.4305, -2
  %idxprom127.1 = zext i32 %inc143 to i64
  %arrayidx128.1 = getelementptr inbounds i8, i8* %in.addr.3, i64 %idxprom127.1
  %96 = load i8, i8* %arrayidx128.1, align 1, !tbaa !11
  %arrayidx133.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %idxprom127.1
  %97 = load i8, i8* %arrayidx133.1, align 1, !tbaa !11
  %xor135269.1 = xor i8 %97, %96
  %arrayidx138.1 = getelementptr inbounds i8, i8* %out.addr.3, i64 %idxprom127.1
  store i8 %xor135269.1, i8* %arrayidx138.1, align 1, !tbaa !11
  %inc140.1 = add i32 %mres.4303, 2
  %idxprom141.1 = zext i32 %inc140 to i64
  %arrayidx142.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom141.1
  store i8 %xor135269.1, i8* %arrayidx142.1, align 1, !tbaa !11
  %inc143.1 = add i32 %n.2304, 2
  %tobool125.not.1 = icmp eq i64 %dec124.1, 0
  br i1 %tobool125.not.1, label %if.end145, label %while.body126, !llvm.loop !115

if.end145:                                        ; preds = %while.body126.prol.loopexit, %while.body126, %middle.block, %if.end108
  %mres.5 = phi i32 [ %mres.3, %if.end108 ], [ %ind.end342, %middle.block ], [ %inc140.lcssa.unr, %while.body126.prol.loopexit ], [ %inc140.1, %while.body126 ]
  store i32 %mres.5, i32* %mres7, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end145, %if.else, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.end145 ], [ 0, %if.else ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_gcm128_decrypt_ctr32(%struct.gcm128_context* noundef %ctx, i8* noundef %in, i8* noundef %out, i64 noundef %len, void (i8*, i8*, i64, i8*, i8*)* nocapture noundef readonly %stream) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 1
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %key2 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 12
  %1 = load i8*, i8** %key2, align 8, !tbaa !10
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %2 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  %3 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  %add = add i64 %0, %len
  %cmp = icmp ugt i64 %add, 68719476704
  %cmp3 = icmp ult i64 %add, %len
  %or.cond271 = or i1 %cmp, %cmp3
  br i1 %or.cond271, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %mres7 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 9
  %4 = load i32, i32* %mres7, align 8, !tbaa !25
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  %5 = load i32, i32* %ares, align 4, !tbaa !24
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end25, label %if.then8

if.then8:                                         ; preds = %if.end
  %cmp9 = icmp eq i64 %len, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.then8
  %arraydecay = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay12 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %2(i64* noundef nonnull %arraydecay, %struct.u128* noundef nonnull %arraydecay12) #6
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %cleanup

if.end14:                                         ; preds = %if.then8
  %arraydecay15 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %Xi16 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arraydecay17 = bitcast %union.anon* %Xi16 to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay15, i8* noundef nonnull %arraydecay17, i64 noundef 16) #6
  %6 = bitcast %union.anon* %Xi16 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !tbaa !11
  store i32 0, i32* %ares, align 4, !tbaa !24
  br label %if.end25

if.end25:                                         ; preds = %if.end14, %if.end
  %mres.0 = phi i32 [ 16, %if.end14 ], [ %4, %if.end ]
  %d = bitcast %struct.gcm128_context* %ctx to [4 x i32]*
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %d, i64 0, i64 3
  %7 = load i32, i32* %arrayidx26, align 4, !tbaa !11
  %8 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %7) #7, !srcloc !116
  %rem = and i32 %mres.0, 15
  %tobool27.not = icmp eq i32 %rem, 0
  br i1 %tobool27.not, label %if.end54, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end25
  %tobool30283.not = icmp eq i64 %len, 0
  br i1 %tobool30283.not, label %if.else, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %EKi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c33 = bitcast %union.anon* %EKi to [16 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %in.addr.0288 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %out.addr.0287 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr38, %while.body ]
  %len.addr.0286 = phi i64 [ %len, %while.body.lr.ph ], [ %dec, %while.body ]
  %n.0285 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem40, %while.body ]
  %mres.1284 = phi i32 [ %mres.0, %while.body.lr.ph ], [ %inc, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0288, i64 1
  %9 = load i8, i8* %in.addr.0288, align 1, !tbaa !11
  %inc = add i32 %mres.1284, 1
  %idxprom = zext i32 %mres.1284 to i64
  %arrayidx32 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom
  store i8 %9, i8* %arrayidx32, align 1, !tbaa !11
  %idxprom34 = zext i32 %n.0285 to i64
  %arrayidx35 = getelementptr inbounds [16 x i8], [16 x i8]* %c33, i64 0, i64 %idxprom34
  %10 = load i8, i8* %arrayidx35, align 1, !tbaa !11
  %xor270 = xor i8 %10, %9
  %incdec.ptr38 = getelementptr inbounds i8, i8* %out.addr.0287, i64 1
  store i8 %xor270, i8* %out.addr.0287, align 1, !tbaa !11
  %dec = add i64 %len.addr.0286, -1
  %add39 = add nuw nsw i32 %n.0285, 1
  %rem40 = and i32 %add39, 15
  %tobool29 = icmp ne i32 %rem40, 0
  %tobool30 = icmp ne i64 %dec, 0
  %11 = select i1 %tobool29, i1 %tobool30, i1 false
  br i1 %11, label %while.body, label %while.end, !llvm.loop !117

while.end:                                        ; preds = %while.body
  %phi.cmp = icmp eq i32 %rem40, 0
  br i1 %phi.cmp, label %if.end67.sink.split, label %if.else

if.else:                                          ; preds = %while.cond.preheader, %while.end
  %mres.1.lcssa312 = phi i32 [ %inc, %while.end ], [ %mres.0, %while.cond.preheader ]
  store i32 %mres.1.lcssa312, i32* %mres7, align 8, !tbaa !25
  br label %cleanup

if.end54:                                         ; preds = %if.end25
  %cmp55 = icmp ugt i64 %len, 15
  %tobool57 = icmp ne i32 %mres.0, 0
  %or.cond = select i1 %cmp55, i1 %tobool57, i1 false
  br i1 %or.cond, label %if.end67.sink.split, label %if.end67

if.end67.sink.split:                              ; preds = %if.end54, %while.end
  %inc.lcssa.sink = phi i32 [ %inc, %while.end ], [ %mres.0, %if.end54 ]
  %in.addr.1281.ph = phi i8* [ %incdec.ptr, %while.end ], [ %in, %if.end54 ]
  %out.addr.1280.ph = phi i8* [ %incdec.ptr38, %while.end ], [ %out, %if.end54 ]
  %len.addr.1279.ph = phi i64 [ %dec, %while.end ], [ %len, %if.end54 ]
  %arraydecay46 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay48 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arraydecay50 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %conv51 = zext i32 %inc.lcssa.sink to i64
  tail call void %3(i64* noundef nonnull %arraydecay46, %struct.u128* noundef nonnull %arraydecay48, i8* noundef nonnull %arraydecay50, i64 noundef %conv51) #6
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.end54
  %in.addr.1281 = phi i8* [ %in, %if.end54 ], [ %in.addr.1281.ph, %if.end67.sink.split ]
  %out.addr.1280 = phi i8* [ %out, %if.end54 ], [ %out.addr.1280.ph, %if.end67.sink.split ]
  %len.addr.1279 = phi i64 [ %len, %if.end54 ], [ %len.addr.1279.ph, %if.end67.sink.split ]
  %mres.3 = phi i32 [ %mres.0, %if.end54 ], [ 0, %if.end67.sink.split ]
  %cmp69293 = icmp ugt i64 %len.addr.1279, 3071
  br i1 %cmp69293, label %while.body71.lr.ph, label %while.end87

while.body71.lr.ph:                               ; preds = %if.end67
  %arraydecay74 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay76 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %arraydecay79 = bitcast %struct.gcm128_context* %ctx to i8*
  br label %while.body71

while.body71:                                     ; preds = %while.body71.lr.ph, %while.body71
  %in.addr.2297 = phi i8* [ %in.addr.1281, %while.body71.lr.ph ], [ %add.ptr86, %while.body71 ]
  %out.addr.2296 = phi i8* [ %out.addr.1280, %while.body71.lr.ph ], [ %add.ptr, %while.body71 ]
  %len.addr.2295 = phi i64 [ %len.addr.1279, %while.body71.lr.ph ], [ %sub, %while.body71 ]
  %ctr.0294 = phi i32 [ %8, %while.body71.lr.ph ], [ %add80, %while.body71 ]
  tail call void %3(i64* noundef nonnull %arraydecay74, %struct.u128* noundef nonnull %arraydecay76, i8* noundef %in.addr.2297, i64 noundef 3072) #6
  tail call void %stream(i8* noundef %in.addr.2297, i8* noundef %out.addr.2296, i64 noundef 192, i8* noundef %1, i8* noundef %arraydecay79) #6
  %add80 = add i32 %ctr.0294, 192
  %12 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %add80) #7, !srcloc !118
  store i32 %12, i32* %arrayidx26, align 4, !tbaa !11
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.2296, i64 3072
  %add.ptr86 = getelementptr inbounds i8, i8* %in.addr.2297, i64 3072
  %sub = add i64 %len.addr.2295, -3072
  %cmp69 = icmp ugt i64 %sub, 3071
  br i1 %cmp69, label %while.body71, label %while.end87, !llvm.loop !119

while.end87:                                      ; preds = %while.body71, %if.end67
  %ctr.0.lcssa = phi i32 [ %8, %if.end67 ], [ %add80, %while.body71 ]
  %len.addr.2.lcssa = phi i64 [ %len.addr.1279, %if.end67 ], [ %sub, %while.body71 ]
  %out.addr.2.lcssa = phi i8* [ %out.addr.1280, %if.end67 ], [ %add.ptr, %while.body71 ]
  %in.addr.2.lcssa = phi i8* [ %in.addr.1281, %if.end67 ], [ %add.ptr86, %while.body71 ]
  %and = and i64 %len.addr.2.lcssa, -16
  %tobool88.not = icmp eq i64 %and, 0
  br i1 %tobool88.not, label %if.end108, label %if.then89

if.then89:                                        ; preds = %while.end87
  %div = lshr i64 %len.addr.2.lcssa, 4
  %arraydecay92 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay94 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %3(i64* noundef nonnull %arraydecay92, %struct.u128* noundef nonnull %arraydecay94, i8* noundef %in.addr.2.lcssa, i64 noundef %and) #6
  %arraydecay97 = bitcast %struct.gcm128_context* %ctx to i8*
  tail call void %stream(i8* noundef %in.addr.2.lcssa, i8* noundef %out.addr.2.lcssa, i64 noundef %div, i8* noundef %1, i8* noundef %arraydecay97) #6
  %conv98 = trunc i64 %div to i32
  %add99 = add i32 %ctr.0.lcssa, %conv98
  %13 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %add99) #7, !srcloc !120
  store i32 %13, i32* %arrayidx26, align 4, !tbaa !11
  %add.ptr105 = getelementptr inbounds i8, i8* %out.addr.2.lcssa, i64 %and
  %add.ptr106 = getelementptr inbounds i8, i8* %in.addr.2.lcssa, i64 %and
  %sub107 = and i64 %len.addr.2.lcssa, 15
  br label %if.end108

if.end108:                                        ; preds = %if.then89, %while.end87
  %ctr.1 = phi i32 [ %add99, %if.then89 ], [ %ctr.0.lcssa, %while.end87 ]
  %len.addr.3 = phi i64 [ %sub107, %if.then89 ], [ %len.addr.2.lcssa, %while.end87 ]
  %out.addr.3 = phi i8* [ %add.ptr105, %if.then89 ], [ %out.addr.2.lcssa, %while.end87 ]
  %in.addr.3 = phi i8* [ %add.ptr106, %if.then89 ], [ %in.addr.2.lcssa, %while.end87 ]
  %tobool109.not = icmp eq i64 %len.addr.3, 0
  br i1 %tobool109.not, label %if.end145, label %if.then110

if.then110:                                       ; preds = %if.end108
  %block = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 11
  %14 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %block, align 8, !tbaa !4
  %arraydecay113 = bitcast %struct.gcm128_context* %ctx to i8*
  %EKi114 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1
  %c115 = bitcast %union.anon* %EKi114 to [16 x i8]*
  %arraydecay116 = bitcast %union.anon* %EKi114 to i8*
  tail call void %14(i8* noundef %arraydecay113, i8* noundef nonnull %arraydecay116, i8* noundef %1) #6
  %inc117 = add i32 %ctr.1, 1
  %15 = tail call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %inc117) #7, !srcloc !121
  store i32 %15, i32* %arrayidx26, align 4, !tbaa !11
  %min.iters.check = icmp ult i64 %len.addr.3, 32
  br i1 %min.iters.check, label %while.body126.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %if.then110
  %16 = add i64 %len.addr.3, -1
  %17 = trunc i64 %16 to i32
  %18 = xor i32 %mres.3, -1
  %19 = icmp ult i32 %18, %17
  %20 = icmp ugt i64 %16, 4294967295
  %21 = or i1 %19, %20
  br i1 %21, label %while.body126.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep313 = bitcast i64* %scevgep to i8*
  %22 = zext i32 %mres.3 to i64
  %uglygep = getelementptr i8, i8* %scevgep313, i64 %22
  %scevgep314 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 49
  %scevgep314315 = bitcast i64* %scevgep314 to i8*
  %23 = add i64 %len.addr.3, %22
  %uglygep316 = getelementptr i8, i8* %scevgep314315, i64 %23
  %scevgep317 = getelementptr i8, i8* %out.addr.3, i64 %len.addr.3
  %scevgep318 = getelementptr i8, i8* %in.addr.3, i64 %len.addr.3
  %scevgep319 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 1, i32 0, i64 0
  %scevgep319320 = bitcast i64* %scevgep319 to i8*
  %scevgep321 = getelementptr %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 0, i32 0, i64 2
  %scevgep321322 = bitcast i64* %scevgep321 to i8*
  %uglygep323 = getelementptr i8, i8* %scevgep321322, i64 %len.addr.3
  %bound0 = icmp ult i8* %uglygep, %scevgep317
  %bound1 = icmp ult i8* %out.addr.3, %uglygep316
  %found.conflict = and i1 %bound0, %bound1
  %bound0324 = icmp ult i8* %uglygep, %scevgep318
  %bound1325 = icmp ult i8* %in.addr.3, %uglygep316
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx = or i1 %found.conflict, %found.conflict326
  %bound0327 = icmp ult i8* %uglygep, %uglygep323
  %bound1328 = icmp ugt i8* %uglygep316, %scevgep319320
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %conflict.rdx, %found.conflict329
  %bound0331 = icmp ult i8* %out.addr.3, %scevgep318
  %bound1332 = icmp ult i8* %in.addr.3, %scevgep317
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx330, %found.conflict333
  %bound0335 = icmp ult i8* %out.addr.3, %uglygep323
  %bound1336 = icmp ugt i8* %scevgep317, %scevgep319320
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %conflict.rdx334, %found.conflict337
  br i1 %conflict.rdx338, label %while.body126.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %len.addr.3, -32
  %ind.end = and i64 %len.addr.3, 31
  %ind.end340 = trunc i64 %n.vec to i32
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end342 = add i32 %mres.3, %cast.crd
  %24 = add i64 %n.vec, -32
  %25 = lshr exact i64 %24, 5
  %26 = add nuw nsw i64 %25, 1
  %xtraiter = and i64 %26, 1
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %26, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %28 = trunc i64 %index to i32
  %offset.idx344 = add i32 %mres.3, %28
  %29 = and i64 %index, 4294967232
  %30 = getelementptr inbounds i8, i8* %in.addr.3, i64 %29
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !11, !alias.scope !122
  %32 = getelementptr inbounds i8, i8* %30, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load345 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !11, !alias.scope !122
  %34 = zext i32 %offset.idx344 to i64
  %35 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %34
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %36, align 1, !tbaa !11, !alias.scope !125, !noalias !127
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %wide.load345, <16 x i8>* %38, align 1, !tbaa !11, !alias.scope !125, !noalias !127
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %29
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load346 = load <16 x i8>, <16 x i8>* %40, align 1, !tbaa !11, !alias.scope !130
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  %wide.load347 = load <16 x i8>, <16 x i8>* %42, align 1, !tbaa !11, !alias.scope !130
  %43 = xor <16 x i8> %wide.load346, %wide.load
  %44 = xor <16 x i8> %wide.load347, %wide.load345
  %45 = getelementptr inbounds i8, i8* %out.addr.3, i64 %29
  %46 = bitcast i8* %45 to <16 x i8>*
  store <16 x i8> %43, <16 x i8>* %46, align 1, !tbaa !11, !alias.scope !131, !noalias !132
  %47 = getelementptr inbounds i8, i8* %45, i64 16
  %48 = bitcast i8* %47 to <16 x i8>*
  store <16 x i8> %44, <16 x i8>* %48, align 1, !tbaa !11, !alias.scope !131, !noalias !132
  %index.next = or i64 %index, 32
  %49 = trunc i64 %index.next to i32
  %offset.idx344.1 = add i32 %mres.3, %49
  %50 = and i64 %index.next, 4294967264
  %51 = getelementptr inbounds i8, i8* %in.addr.3, i64 %50
  %52 = bitcast i8* %51 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %52, align 1, !tbaa !11, !alias.scope !122
  %53 = getelementptr inbounds i8, i8* %51, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  %wide.load345.1 = load <16 x i8>, <16 x i8>* %54, align 1, !tbaa !11, !alias.scope !122
  %55 = zext i32 %offset.idx344.1 to i64
  %56 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %55
  %57 = bitcast i8* %56 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %57, align 1, !tbaa !11, !alias.scope !125, !noalias !127
  %58 = getelementptr inbounds i8, i8* %56, i64 16
  %59 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %wide.load345.1, <16 x i8>* %59, align 1, !tbaa !11, !alias.scope !125, !noalias !127
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %50
  %61 = bitcast i8* %60 to <16 x i8>*
  %wide.load346.1 = load <16 x i8>, <16 x i8>* %61, align 1, !tbaa !11, !alias.scope !130
  %62 = getelementptr inbounds i8, i8* %60, i64 16
  %63 = bitcast i8* %62 to <16 x i8>*
  %wide.load347.1 = load <16 x i8>, <16 x i8>* %63, align 1, !tbaa !11, !alias.scope !130
  %64 = xor <16 x i8> %wide.load346.1, %wide.load.1
  %65 = xor <16 x i8> %wide.load347.1, %wide.load345.1
  %66 = getelementptr inbounds i8, i8* %out.addr.3, i64 %50
  %67 = bitcast i8* %66 to <16 x i8>*
  store <16 x i8> %64, <16 x i8>* %67, align 1, !tbaa !11, !alias.scope !131, !noalias !132
  %68 = getelementptr inbounds i8, i8* %66, i64 16
  %69 = bitcast i8* %68 to <16 x i8>*
  store <16 x i8> %65, <16 x i8>* %69, align 1, !tbaa !11, !alias.scope !131, !noalias !132
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !133

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %70 = trunc i64 %index.unr to i32
  %offset.idx344.epil = add i32 %mres.3, %70
  %71 = and i64 %index.unr, 4294967264
  %72 = getelementptr inbounds i8, i8* %in.addr.3, i64 %71
  %73 = bitcast i8* %72 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %73, align 1, !tbaa !11, !alias.scope !122
  %74 = getelementptr inbounds i8, i8* %72, i64 16
  %75 = bitcast i8* %74 to <16 x i8>*
  %wide.load345.epil = load <16 x i8>, <16 x i8>* %75, align 1, !tbaa !11, !alias.scope !122
  %76 = zext i32 %offset.idx344.epil to i64
  %77 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %76
  %78 = bitcast i8* %77 to <16 x i8>*
  store <16 x i8> %wide.load.epil, <16 x i8>* %78, align 1, !tbaa !11, !alias.scope !125, !noalias !127
  %79 = getelementptr inbounds i8, i8* %77, i64 16
  %80 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %wide.load345.epil, <16 x i8>* %80, align 1, !tbaa !11, !alias.scope !125, !noalias !127
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %71
  %82 = bitcast i8* %81 to <16 x i8>*
  %wide.load346.epil = load <16 x i8>, <16 x i8>* %82, align 1, !tbaa !11, !alias.scope !130
  %83 = getelementptr inbounds i8, i8* %81, i64 16
  %84 = bitcast i8* %83 to <16 x i8>*
  %wide.load347.epil = load <16 x i8>, <16 x i8>* %84, align 1, !tbaa !11, !alias.scope !130
  %85 = xor <16 x i8> %wide.load346.epil, %wide.load.epil
  %86 = xor <16 x i8> %wide.load347.epil, %wide.load345.epil
  %87 = getelementptr inbounds i8, i8* %out.addr.3, i64 %71
  %88 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %88, align 1, !tbaa !11, !alias.scope !131, !noalias !132
  %89 = getelementptr inbounds i8, i8* %87, i64 16
  %90 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %86, <16 x i8>* %90, align 1, !tbaa !11, !alias.scope !131, !noalias !132
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %len.addr.3, %n.vec
  br i1 %cmp.n, label %if.end145, label %while.body126.preheader

while.body126.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck, %if.then110, %middle.block
  %len.addr.4305.ph = phi i64 [ %len.addr.3, %vector.memcheck ], [ %len.addr.3, %vector.scevcheck ], [ %len.addr.3, %if.then110 ], [ %ind.end, %middle.block ]
  %n.2304.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %if.then110 ], [ %ind.end340, %middle.block ]
  %mres.4303.ph = phi i32 [ %mres.3, %vector.memcheck ], [ %mres.3, %vector.scevcheck ], [ %mres.3, %if.then110 ], [ %ind.end342, %middle.block ]
  %xtraiter348 = and i64 %len.addr.4305.ph, 1
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %while.body126.prol.loopexit, label %while.body126.prol

while.body126.prol:                               ; preds = %while.body126.preheader
  %dec124.prol = add i64 %len.addr.4305.ph, -1
  %idxprom127.prol = zext i32 %n.2304.ph to i64
  %arrayidx128.prol = getelementptr inbounds i8, i8* %in.addr.3, i64 %idxprom127.prol
  %91 = load i8, i8* %arrayidx128.prol, align 1, !tbaa !11
  %inc130.prol = add i32 %mres.4303.ph, 1
  %idxprom131.prol = zext i32 %mres.4303.ph to i64
  %arrayidx132.prol = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom131.prol
  store i8 %91, i8* %arrayidx132.prol, align 1, !tbaa !11
  %arrayidx137.prol = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %idxprom127.prol
  %92 = load i8, i8* %arrayidx137.prol, align 1, !tbaa !11
  %xor139269.prol = xor i8 %92, %91
  %arrayidx142.prol = getelementptr inbounds i8, i8* %out.addr.3, i64 %idxprom127.prol
  store i8 %xor139269.prol, i8* %arrayidx142.prol, align 1, !tbaa !11
  %inc143.prol = add i32 %n.2304.ph, 1
  br label %while.body126.prol.loopexit

while.body126.prol.loopexit:                      ; preds = %while.body126.prol, %while.body126.preheader
  %inc130.lcssa.unr = phi i32 [ undef, %while.body126.preheader ], [ %inc130.prol, %while.body126.prol ]
  %len.addr.4305.unr = phi i64 [ %len.addr.4305.ph, %while.body126.preheader ], [ %dec124.prol, %while.body126.prol ]
  %n.2304.unr = phi i32 [ %n.2304.ph, %while.body126.preheader ], [ %inc143.prol, %while.body126.prol ]
  %mres.4303.unr = phi i32 [ %mres.4303.ph, %while.body126.preheader ], [ %inc130.prol, %while.body126.prol ]
  %93 = icmp eq i64 %len.addr.4305.ph, 1
  br i1 %93, label %if.end145, label %while.body126

while.body126:                                    ; preds = %while.body126.prol.loopexit, %while.body126
  %len.addr.4305 = phi i64 [ %dec124.1, %while.body126 ], [ %len.addr.4305.unr, %while.body126.prol.loopexit ]
  %n.2304 = phi i32 [ %inc143.1, %while.body126 ], [ %n.2304.unr, %while.body126.prol.loopexit ]
  %mres.4303 = phi i32 [ %inc130.1, %while.body126 ], [ %mres.4303.unr, %while.body126.prol.loopexit ]
  %idxprom127 = zext i32 %n.2304 to i64
  %arrayidx128 = getelementptr inbounds i8, i8* %in.addr.3, i64 %idxprom127
  %94 = load i8, i8* %arrayidx128, align 1, !tbaa !11
  %inc130 = add i32 %mres.4303, 1
  %idxprom131 = zext i32 %mres.4303 to i64
  %arrayidx132 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom131
  store i8 %94, i8* %arrayidx132, align 1, !tbaa !11
  %arrayidx137 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %idxprom127
  %95 = load i8, i8* %arrayidx137, align 1, !tbaa !11
  %xor139269 = xor i8 %95, %94
  %arrayidx142 = getelementptr inbounds i8, i8* %out.addr.3, i64 %idxprom127
  store i8 %xor139269, i8* %arrayidx142, align 1, !tbaa !11
  %inc143 = add i32 %n.2304, 1
  %dec124.1 = add i64 %len.addr.4305, -2
  %idxprom127.1 = zext i32 %inc143 to i64
  %arrayidx128.1 = getelementptr inbounds i8, i8* %in.addr.3, i64 %idxprom127.1
  %96 = load i8, i8* %arrayidx128.1, align 1, !tbaa !11
  %inc130.1 = add i32 %mres.4303, 2
  %idxprom131.1 = zext i32 %inc130 to i64
  %arrayidx132.1 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idxprom131.1
  store i8 %96, i8* %arrayidx132.1, align 1, !tbaa !11
  %arrayidx137.1 = getelementptr inbounds [16 x i8], [16 x i8]* %c115, i64 0, i64 %idxprom127.1
  %97 = load i8, i8* %arrayidx137.1, align 1, !tbaa !11
  %xor139269.1 = xor i8 %97, %96
  %arrayidx142.1 = getelementptr inbounds i8, i8* %out.addr.3, i64 %idxprom127.1
  store i8 %xor139269.1, i8* %arrayidx142.1, align 1, !tbaa !11
  %inc143.1 = add i32 %n.2304, 2
  %tobool125.not.1 = icmp eq i64 %dec124.1, 0
  br i1 %tobool125.not.1, label %if.end145, label %while.body126, !llvm.loop !134

if.end145:                                        ; preds = %while.body126.prol.loopexit, %while.body126, %middle.block, %if.end108
  %mres.5 = phi i32 [ %mres.3, %if.end108 ], [ %ind.end342, %middle.block ], [ %inc130.lcssa.unr, %while.body126.prol.loopexit ], [ %inc130.1, %while.body126 ]
  store i32 %mres.5, i32* %mres7, align 8, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end145, %if.else, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.end145 ], [ 0, %if.else ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %bitlen = alloca %struct.u128, align 8
  %arrayidx = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %shl = shl i64 %0, 3
  %arrayidx4 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 3, i32 0, i64 1
  %1 = load i64, i64* %arrayidx4, align 8, !tbaa !11
  %shl5 = shl i64 %1, 3
  %gmult = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 7
  %2 = load void (i64*, %struct.u128*)*, void (i64*, %struct.u128*)** %gmult, align 8, !tbaa !15
  %ghash = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 8
  %3 = load void (i64*, %struct.u128*, i8*, i64)*, void (i64*, %struct.u128*, i8*, i64)** %ghash, align 8, !tbaa !16
  %4 = bitcast %struct.u128* %bitlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %mres6 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 9
  %5 = load i32, i32* %mres6, align 8, !tbaa !25
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %5, 15
  %and = and i32 %add, -16
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idx.ext
  %sub = sub i32 %and, %5
  %conv = zext i32 %sub to i64
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %conv) #6
  %cmp = icmp eq i32 %and, 48
  br i1 %cmp, label %if.then9, label %if.end24

if.then9:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %arraydecay11 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay12 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %3(i64* noundef nonnull %arraydecay11, %struct.u128* noundef nonnull %arraydecay12, i8* noundef nonnull %arraydecay, i64 noundef 48) #6
  br label %if.end24

if.else:                                          ; preds = %entry
  %ares = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 10
  %6 = load i32, i32* %ares, align 4, !tbaa !24
  %tobool16.not = icmp eq i32 %6, 0
  br i1 %tobool16.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.else
  %arraydecay20 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4, i32 0, i64 0
  %arraydecay22 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  tail call void %2(i64* noundef nonnull %arraydecay20, %struct.u128* noundef nonnull %arraydecay22) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then, %if.then9, %if.else, %if.then17
  %mres.1 = phi i32 [ 0, %if.then17 ], [ 0, %if.else ], [ 0, %if.then9 ], [ %and, %if.then ]
  %7 = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %shl) #7, !srcloc !135
  %8 = tail call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %shl5) #7, !srcloc !136
  %hi = getelementptr inbounds %struct.u128, %struct.u128* %bitlen, i64 0, i32 0
  store i64 %7, i64* %hi, align 8, !tbaa !21
  %lo = getelementptr inbounds %struct.u128, %struct.u128* %bitlen, i64 0, i32 1
  store i64 %8, i64* %lo, align 8, !tbaa !23
  %arraydecay28 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 0
  %idx.ext29 = zext i32 %mres.1 to i64
  %add.ptr30 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 13, i64 %idx.ext29
  %call31 = call i8* @memcpy(i8* noundef nonnull %add.ptr30, i8* noundef nonnull %4, i64 noundef 16) #6
  %add33 = add i32 %mres.1, 16
  %Xi35 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arraydecay37 = getelementptr inbounds %union.anon, %union.anon* %Xi35, i64 0, i32 0, i64 0
  %arraydecay39 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 6, i64 0
  %conv42 = zext i32 %add33 to i64
  call void %3(i64* noundef nonnull %arraydecay37, %struct.u128* noundef nonnull %arraydecay39, i8* noundef nonnull %arraydecay28, i64 noundef %conv42) #6
  %arrayidx44 = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 2, i32 0, i64 0
  %9 = bitcast i64* %arrayidx44 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8, !tbaa !11
  %11 = bitcast %union.anon* %Xi35 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !11
  %13 = xor <2 x i64> %12, %10
  %14 = bitcast %union.anon* %Xi35 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %14, align 8, !tbaa !11
  %tobool55 = icmp ne i8* %tag, null
  %cmp56 = icmp ult i64 %len, 17
  %or.cond = and i1 %tobool55, %cmp56
  br i1 %or.cond, label %if.then58, label %cleanup

if.then58:                                        ; preds = %if.end24
  %arraydecay60 = bitcast %union.anon* %Xi35 to i8*
  %call61 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %arraydecay60, i8* noundef nonnull %tag, i64 noundef %len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then58
  %retval.0 = phi i32 [ %call61, %if.then58 ], [ -1, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  ret i32 %retval.0
}

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_gcm128_tag(%struct.gcm128_context* noundef %ctx, i8* noundef %tag, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef %ctx, i8* noundef null, i64 noundef 0) #8
  %Xi = getelementptr inbounds %struct.gcm128_context, %struct.gcm128_context* %ctx, i64 0, i32 4
  %arraydecay = bitcast %union.anon* %Xi to i8*
  %0 = icmp ult i64 %len, 16
  %cond = select i1 %0, i64 %len, i64 16
  %call1 = tail call i8* @memcpy(i8* noundef %tag, i8* noundef nonnull %arraydecay, i64 noundef %cond) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.gcm128_context* @CRYPTO_gcm128_new(i8* noundef %key, void (i8*, i8*, i8*)* noundef %block) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 440, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 1849) #6
  %0 = bitcast i8* %call to %struct.gcm128_context*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef nonnull %0, i8* noundef %key, void (i8*, i8*, i8*)* noundef %block) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.gcm128_context* %0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_gcm128_release(%struct.gcm128_context* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.gcm128_context* %ctx to i8*
  tail call void @CRYPTO_clear_free(i8* noundef %0, i64 noundef 440, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 1857) #6
  ret void
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind readnone }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 376}
!5 = !{!"gcm128_context", !6, i64 0, !6, i64 16, !6, i64 32, !6, i64 48, !6, i64 64, !6, i64 80, !6, i64 96, !8, i64 352, !8, i64 360, !9, i64 368, !9, i64 372, !8, i64 376, !8, i64 384, !6, i64 392}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!5, !8, i64 384}
!11 = !{!6, !6, i64 0}
!12 = !{i64 2148504055}
!13 = !{i64 2148504221}
!14 = !{!9, !9, i64 0}
!15 = !{!5, !8, i64 352}
!16 = !{!5, !8, i64 360}
!17 = !{!18, !18, i64 0}
!18 = !{!"long long", !6, i64 0}
!19 = !{i64 0, i64 8, !17, i64 8, i64 8, !17}
!20 = !{i64 0, i64 8, !17}
!21 = !{!22, !18, i64 0}
!22 = !{!"", !18, i64 0, !18, i64 8}
!23 = !{!22, !18, i64 8}
!24 = !{!5, !9, i64 372}
!25 = !{!5, !9, i64 368}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !27, !34}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = distinct !{!35, !27, !34, !36}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !27, !34}
!40 = !{i64 2148504719}
!41 = !{i64 2148504948}
!42 = !{i64 2148505139}
!43 = distinct !{!43, !27}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !27, !34}
!50 = distinct !{!50, !27, !34, !36}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !27, !34}
!53 = !{i64 2148505610}
!54 = distinct !{!54, !27}
!55 = !{i64 2148505951}
!56 = !{!57, !57, i64 0}
!57 = !{!"long", !6, i64 0}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = !{i64 2148506237}
!61 = distinct !{!61, !27}
!62 = !{i64 2148506482}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = !{!69}
!69 = distinct !{!69, !65}
!70 = !{!71, !64, !67}
!71 = distinct !{!71, !65}
!72 = !{!71}
!73 = !{!64, !67}
!74 = distinct !{!74, !27, !34}
!75 = distinct !{!75, !27, !34}
!76 = !{i64 2148507093}
!77 = distinct !{!77, !27}
!78 = !{i64 2148507508}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !27}
!81 = !{i64 2148507757}
!82 = distinct !{!82, !27}
!83 = !{i64 2148507939}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!88}
!88 = distinct !{!88, !86}
!89 = !{!90, !85, !91}
!90 = distinct !{!90, !86}
!91 = distinct !{!91, !86}
!92 = !{!91}
!93 = !{!90}
!94 = !{!85, !91}
!95 = distinct !{!95, !27, !34}
!96 = distinct !{!96, !27, !34}
!97 = !{i64 2148508550}
!98 = distinct !{!98, !27}
!99 = !{i64 2148508900}
!100 = distinct !{!100, !27}
!101 = !{i64 2148509184}
!102 = !{i64 2148509425}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = !{!109}
!109 = distinct !{!109, !105}
!110 = !{!111, !104, !107}
!111 = distinct !{!111, !105}
!112 = !{!111}
!113 = !{!104, !107}
!114 = distinct !{!114, !27, !34}
!115 = distinct !{!115, !27, !34}
!116 = !{i64 2148509777}
!117 = distinct !{!117, !27}
!118 = !{i64 2148510201}
!119 = distinct !{!119, !27}
!120 = !{i64 2148510468}
!121 = !{i64 2148510650}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128, !123, !129}
!128 = distinct !{!128, !124}
!129 = distinct !{!129, !124}
!130 = !{!129}
!131 = !{!128}
!132 = !{!123, !129}
!133 = distinct !{!133, !27, !34}
!134 = distinct !{!134, !27, !34}
!135 = !{i64 2148511054}
!136 = !{i64 2148511213}
