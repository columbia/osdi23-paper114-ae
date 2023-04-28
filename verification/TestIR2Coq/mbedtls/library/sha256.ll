; ModuleID = 'sha256.c'
source_filename = "sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_sha256_context = type { [2 x i32], [8 x i32], [64 x i8], i32 }
%struct.anon = type { i32, i32, [64 x i32], [8 x i32] }

@K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@.str = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  SHA-%d test #%d: \00", align 1
@sha256_test_buf = internal constant [3 x [57 x i8]] [[57 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", [57 x i8] zeroinitializer], align 16
@sha256_test_buflen = internal constant [3 x i64] [i64 3, i64 56, i64 1000], align 16
@sha256_test_sum = internal constant [6 x [32 x i8]] [[32 x i8] c"#\09}\224\05\D8\22\86B\A4w\BD\A2U\B3*\AD\BC\E4\BD\A0\B3\F7\E3l\9D\A7\00\00\00\00", [32 x i8] c"u8\8B\16Q'v\CC]\BA]\A1\FD\89\01P\B0\C6E\\\B4\F5\8B\19RR%%\00\00\00\00", [32 x i8] c" yFU\98\0C\91\D8\BB\B4\C1\EA\97a\8AK\F0?BX\19H\B2\EEN\E7\ADg\00\00\00\00", [32 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD", [32 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1", [32 x i8] c"\CD\C7n\\\99\14\FB\92\81\A1\C7\E2\84\D7>g\F1\80\9AH\A4\97 \0E\04m9\CC\C7\11,\D0"], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_sha256_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 108) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_sha256_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_sha256_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 108) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha256_clone(%struct.mbedtls_sha256_context* noundef %dst, %struct.mbedtls_sha256_context* noundef %src) #0 {
entry:
  %dst.addr = alloca %struct.mbedtls_sha256_context*, align 8
  %src.addr = alloca %struct.mbedtls_sha256_context*, align 8
  store %struct.mbedtls_sha256_context* %dst, %struct.mbedtls_sha256_context** %dst.addr, align 8
  store %struct.mbedtls_sha256_context* %src, %struct.mbedtls_sha256_context** %src.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %dst.addr, align 8
  %1 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %src.addr, align 8
  %2 = bitcast %struct.mbedtls_sha256_context* %0 to i8*
  %3 = bitcast %struct.mbedtls_sha256_context* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 108, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %ctx, i32 noundef %is224) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  %is224.addr = alloca i32, align 4
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  store i32 %is224, i32* %is224.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %total3, i64 0, i64 1
  store i32 0, i32* %arrayidx4, align 4
  %2 = load i32, i32* %is224.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  %3 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %state, i64 0, i64 0
  store i32 1779033703, i32* %arrayidx5, align 4
  %4 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %state6, i64 0, i64 1
  store i32 -1150833019, i32* %arrayidx7, align 4
  %5 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %state8, i64 0, i64 2
  store i32 1013904242, i32* %arrayidx9, align 4
  %6 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state10 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %state10, i64 0, i64 3
  store i32 -1521486534, i32* %arrayidx11, align 4
  %7 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state12 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %7, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* %state12, i64 0, i64 4
  store i32 1359893119, i32* %arrayidx13, align 4
  %8 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state14 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %8, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %state14, i64 0, i64 5
  store i32 -1694144372, i32* %arrayidx15, align 4
  %9 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state16 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %state16, i64 0, i64 6
  store i32 528734635, i32* %arrayidx17, align 4
  %10 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state18 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %10, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %state18, i64 0, i64 7
  store i32 1541459225, i32* %arrayidx19, align 4
  br label %if.end

if.else:                                          ; preds = %do.end2
  %11 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state20 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %11, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* %state20, i64 0, i64 0
  store i32 -1056596264, i32* %arrayidx21, align 4
  %12 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state22 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %12, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %state22, i64 0, i64 1
  store i32 914150663, i32* %arrayidx23, align 4
  %13 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state24 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %13, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %state24, i64 0, i64 2
  store i32 812702999, i32* %arrayidx25, align 4
  %14 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state26 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %14, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %state26, i64 0, i64 3
  store i32 -150054599, i32* %arrayidx27, align 4
  %15 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state28 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %15, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %state28, i64 0, i64 4
  store i32 -4191439, i32* %arrayidx29, align 4
  %16 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state30 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %16, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %state30, i64 0, i64 5
  store i32 1750603025, i32* %arrayidx31, align 4
  %17 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state32 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %17, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %state32, i64 0, i64 6
  store i32 1694076839, i32* %arrayidx33, align 4
  %18 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state34 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %18, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %state34, i64 0, i64 7
  store i32 -1090891868, i32* %arrayidx35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %is224.addr, align 4
  %20 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %is22436 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %20, i32 0, i32 3
  store i32 %19, i32* %is22436, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %data) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  %data.addr = alloca i8*, align 8
  %local = alloca %struct.anon, align 4
  %i = alloca i32, align 4
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end2
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %1, i32 0, i32 1
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %state, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %A = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %4 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %A, i64 0, i64 %idxprom3
  store i32 %3, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp ult i32 %6, 16
  br i1 %cmp6, label %for.body7, label %for.end32

for.body7:                                        ; preds = %for.cond5
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i32, i32* %i, align 4
  %mul = mul i32 4, %8
  %idxprom8 = zext i32 %mul to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %9 to i32
  %shl = shl i32 %conv, 24
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i32, i32* %i, align 4
  %mul10 = mul i32 4, %11
  %add = add i32 %mul10, 1
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11
  %12 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %shl14 = shl i32 %conv13, 16
  %or = or i32 %shl, %shl14
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i32, i32* %i, align 4
  %mul15 = mul i32 4, %14
  %add16 = add i32 %mul15, 2
  %idxprom17 = zext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or, %shl20
  %16 = load i8*, i8** %data.addr, align 8
  %17 = load i32, i32* %i, align 4
  %mul22 = mul i32 4, %17
  %add23 = add i32 %mul22, 3
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %16, i64 %idxprom24
  %18 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %or27 = or i32 %or21, %conv26
  %W = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %19 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [64 x i32], [64 x i32]* %W, i64 0, i64 %idxprom28
  store i32 %or27, i32* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body7
  %20 = load i32, i32* %i, align 4
  %inc31 = add i32 %20, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond5, !llvm.loop !6

for.end32:                                        ; preds = %for.cond5
  store i32 0, i32* %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc864, %for.end32
  %21 = load i32, i32* %i, align 4
  %cmp34 = icmp ult i32 %21, 16
  br i1 %cmp34, label %for.body36, label %for.end866

for.body36:                                       ; preds = %for.cond33
  br label %do.body37

do.body37:                                        ; preds = %for.body36
  %A38 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %A38, i64 0, i64 7
  %22 = load i32, i32* %arrayidx39, align 4
  %A40 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %A40, i64 0, i64 4
  %23 = load i32, i32* %arrayidx41, align 4
  %and = and i32 %23, -1
  %shr = lshr i32 %and, 6
  %A42 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %A42, i64 0, i64 4
  %24 = load i32, i32* %arrayidx43, align 4
  %shl44 = shl i32 %24, 26
  %or45 = or i32 %shr, %shl44
  %A46 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %A46, i64 0, i64 4
  %25 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %25, -1
  %shr49 = lshr i32 %and48, 11
  %A50 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %A50, i64 0, i64 4
  %26 = load i32, i32* %arrayidx51, align 4
  %shl52 = shl i32 %26, 21
  %or53 = or i32 %shr49, %shl52
  %xor = xor i32 %or45, %or53
  %A54 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %A54, i64 0, i64 4
  %27 = load i32, i32* %arrayidx55, align 4
  %and56 = and i32 %27, -1
  %shr57 = lshr i32 %and56, 25
  %A58 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %A58, i64 0, i64 4
  %28 = load i32, i32* %arrayidx59, align 4
  %shl60 = shl i32 %28, 7
  %or61 = or i32 %shr57, %shl60
  %xor62 = xor i32 %xor, %or61
  %add63 = add i32 %22, %xor62
  %A64 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %A64, i64 0, i64 6
  %29 = load i32, i32* %arrayidx65, align 4
  %A66 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx67 = getelementptr inbounds [8 x i32], [8 x i32]* %A66, i64 0, i64 4
  %30 = load i32, i32* %arrayidx67, align 4
  %A68 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx69 = getelementptr inbounds [8 x i32], [8 x i32]* %A68, i64 0, i64 5
  %31 = load i32, i32* %arrayidx69, align 4
  %A70 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %A70, i64 0, i64 6
  %32 = load i32, i32* %arrayidx71, align 4
  %xor72 = xor i32 %31, %32
  %and73 = and i32 %30, %xor72
  %xor74 = xor i32 %29, %and73
  %add75 = add i32 %add63, %xor74
  %33 = load i32, i32* %i, align 4
  %add76 = add i32 %33, 0
  %idxprom77 = zext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom77
  %34 = load i32, i32* %arrayidx78, align 4
  %add79 = add i32 %add75, %34
  %W80 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %35 = load i32, i32* %i, align 4
  %add81 = add i32 %35, 0
  %idxprom82 = zext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [64 x i32], [64 x i32]* %W80, i64 0, i64 %idxprom82
  %36 = load i32, i32* %arrayidx83, align 4
  %add84 = add i32 %add79, %36
  %temp1 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add84, i32* %temp1, align 4
  %A85 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* %A85, i64 0, i64 0
  %37 = load i32, i32* %arrayidx86, align 4
  %and87 = and i32 %37, -1
  %shr88 = lshr i32 %and87, 2
  %A89 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %A89, i64 0, i64 0
  %38 = load i32, i32* %arrayidx90, align 4
  %shl91 = shl i32 %38, 30
  %or92 = or i32 %shr88, %shl91
  %A93 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx94 = getelementptr inbounds [8 x i32], [8 x i32]* %A93, i64 0, i64 0
  %39 = load i32, i32* %arrayidx94, align 4
  %and95 = and i32 %39, -1
  %shr96 = lshr i32 %and95, 13
  %A97 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx98 = getelementptr inbounds [8 x i32], [8 x i32]* %A97, i64 0, i64 0
  %40 = load i32, i32* %arrayidx98, align 4
  %shl99 = shl i32 %40, 19
  %or100 = or i32 %shr96, %shl99
  %xor101 = xor i32 %or92, %or100
  %A102 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %A102, i64 0, i64 0
  %41 = load i32, i32* %arrayidx103, align 4
  %and104 = and i32 %41, -1
  %shr105 = lshr i32 %and104, 22
  %A106 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %A106, i64 0, i64 0
  %42 = load i32, i32* %arrayidx107, align 4
  %shl108 = shl i32 %42, 10
  %or109 = or i32 %shr105, %shl108
  %xor110 = xor i32 %xor101, %or109
  %A111 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx112 = getelementptr inbounds [8 x i32], [8 x i32]* %A111, i64 0, i64 0
  %43 = load i32, i32* %arrayidx112, align 4
  %A113 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* %A113, i64 0, i64 1
  %44 = load i32, i32* %arrayidx114, align 4
  %and115 = and i32 %43, %44
  %A116 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx117 = getelementptr inbounds [8 x i32], [8 x i32]* %A116, i64 0, i64 2
  %45 = load i32, i32* %arrayidx117, align 4
  %A118 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx119 = getelementptr inbounds [8 x i32], [8 x i32]* %A118, i64 0, i64 0
  %46 = load i32, i32* %arrayidx119, align 4
  %A120 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx121 = getelementptr inbounds [8 x i32], [8 x i32]* %A120, i64 0, i64 1
  %47 = load i32, i32* %arrayidx121, align 4
  %or122 = or i32 %46, %47
  %and123 = and i32 %45, %or122
  %or124 = or i32 %and115, %and123
  %add125 = add i32 %xor110, %or124
  %temp2 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add125, i32* %temp2, align 4
  %temp1126 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %48 = load i32, i32* %temp1126, align 4
  %A127 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx128 = getelementptr inbounds [8 x i32], [8 x i32]* %A127, i64 0, i64 3
  %49 = load i32, i32* %arrayidx128, align 4
  %add129 = add i32 %49, %48
  store i32 %add129, i32* %arrayidx128, align 4
  %temp1130 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %50 = load i32, i32* %temp1130, align 4
  %temp2131 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %51 = load i32, i32* %temp2131, align 4
  %add132 = add i32 %50, %51
  %A133 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %A133, i64 0, i64 7
  store i32 %add132, i32* %arrayidx134, align 4
  br label %do.end135

do.end135:                                        ; preds = %do.body37
  br label %do.body136

do.body136:                                       ; preds = %do.end135
  %A137 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx138 = getelementptr inbounds [8 x i32], [8 x i32]* %A137, i64 0, i64 6
  %52 = load i32, i32* %arrayidx138, align 4
  %A139 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx140 = getelementptr inbounds [8 x i32], [8 x i32]* %A139, i64 0, i64 3
  %53 = load i32, i32* %arrayidx140, align 4
  %and141 = and i32 %53, -1
  %shr142 = lshr i32 %and141, 6
  %A143 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx144 = getelementptr inbounds [8 x i32], [8 x i32]* %A143, i64 0, i64 3
  %54 = load i32, i32* %arrayidx144, align 4
  %shl145 = shl i32 %54, 26
  %or146 = or i32 %shr142, %shl145
  %A147 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx148 = getelementptr inbounds [8 x i32], [8 x i32]* %A147, i64 0, i64 3
  %55 = load i32, i32* %arrayidx148, align 4
  %and149 = and i32 %55, -1
  %shr150 = lshr i32 %and149, 11
  %A151 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %A151, i64 0, i64 3
  %56 = load i32, i32* %arrayidx152, align 4
  %shl153 = shl i32 %56, 21
  %or154 = or i32 %shr150, %shl153
  %xor155 = xor i32 %or146, %or154
  %A156 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx157 = getelementptr inbounds [8 x i32], [8 x i32]* %A156, i64 0, i64 3
  %57 = load i32, i32* %arrayidx157, align 4
  %and158 = and i32 %57, -1
  %shr159 = lshr i32 %and158, 25
  %A160 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx161 = getelementptr inbounds [8 x i32], [8 x i32]* %A160, i64 0, i64 3
  %58 = load i32, i32* %arrayidx161, align 4
  %shl162 = shl i32 %58, 7
  %or163 = or i32 %shr159, %shl162
  %xor164 = xor i32 %xor155, %or163
  %add165 = add i32 %52, %xor164
  %A166 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx167 = getelementptr inbounds [8 x i32], [8 x i32]* %A166, i64 0, i64 5
  %59 = load i32, i32* %arrayidx167, align 4
  %A168 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* %A168, i64 0, i64 3
  %60 = load i32, i32* %arrayidx169, align 4
  %A170 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx171 = getelementptr inbounds [8 x i32], [8 x i32]* %A170, i64 0, i64 4
  %61 = load i32, i32* %arrayidx171, align 4
  %A172 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx173 = getelementptr inbounds [8 x i32], [8 x i32]* %A172, i64 0, i64 5
  %62 = load i32, i32* %arrayidx173, align 4
  %xor174 = xor i32 %61, %62
  %and175 = and i32 %60, %xor174
  %xor176 = xor i32 %59, %and175
  %add177 = add i32 %add165, %xor176
  %63 = load i32, i32* %i, align 4
  %add178 = add i32 %63, 1
  %idxprom179 = zext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom179
  %64 = load i32, i32* %arrayidx180, align 4
  %add181 = add i32 %add177, %64
  %W182 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %65 = load i32, i32* %i, align 4
  %add183 = add i32 %65, 1
  %idxprom184 = zext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds [64 x i32], [64 x i32]* %W182, i64 0, i64 %idxprom184
  %66 = load i32, i32* %arrayidx185, align 4
  %add186 = add i32 %add181, %66
  %temp1187 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add186, i32* %temp1187, align 4
  %A188 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx189 = getelementptr inbounds [8 x i32], [8 x i32]* %A188, i64 0, i64 7
  %67 = load i32, i32* %arrayidx189, align 4
  %and190 = and i32 %67, -1
  %shr191 = lshr i32 %and190, 2
  %A192 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx193 = getelementptr inbounds [8 x i32], [8 x i32]* %A192, i64 0, i64 7
  %68 = load i32, i32* %arrayidx193, align 4
  %shl194 = shl i32 %68, 30
  %or195 = or i32 %shr191, %shl194
  %A196 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* %A196, i64 0, i64 7
  %69 = load i32, i32* %arrayidx197, align 4
  %and198 = and i32 %69, -1
  %shr199 = lshr i32 %and198, 13
  %A200 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx201 = getelementptr inbounds [8 x i32], [8 x i32]* %A200, i64 0, i64 7
  %70 = load i32, i32* %arrayidx201, align 4
  %shl202 = shl i32 %70, 19
  %or203 = or i32 %shr199, %shl202
  %xor204 = xor i32 %or195, %or203
  %A205 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx206 = getelementptr inbounds [8 x i32], [8 x i32]* %A205, i64 0, i64 7
  %71 = load i32, i32* %arrayidx206, align 4
  %and207 = and i32 %71, -1
  %shr208 = lshr i32 %and207, 22
  %A209 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx210 = getelementptr inbounds [8 x i32], [8 x i32]* %A209, i64 0, i64 7
  %72 = load i32, i32* %arrayidx210, align 4
  %shl211 = shl i32 %72, 10
  %or212 = or i32 %shr208, %shl211
  %xor213 = xor i32 %xor204, %or212
  %A214 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx215 = getelementptr inbounds [8 x i32], [8 x i32]* %A214, i64 0, i64 7
  %73 = load i32, i32* %arrayidx215, align 4
  %A216 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx217 = getelementptr inbounds [8 x i32], [8 x i32]* %A216, i64 0, i64 0
  %74 = load i32, i32* %arrayidx217, align 4
  %and218 = and i32 %73, %74
  %A219 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx220 = getelementptr inbounds [8 x i32], [8 x i32]* %A219, i64 0, i64 1
  %75 = load i32, i32* %arrayidx220, align 4
  %A221 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx222 = getelementptr inbounds [8 x i32], [8 x i32]* %A221, i64 0, i64 7
  %76 = load i32, i32* %arrayidx222, align 4
  %A223 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx224 = getelementptr inbounds [8 x i32], [8 x i32]* %A223, i64 0, i64 0
  %77 = load i32, i32* %arrayidx224, align 4
  %or225 = or i32 %76, %77
  %and226 = and i32 %75, %or225
  %or227 = or i32 %and218, %and226
  %add228 = add i32 %xor213, %or227
  %temp2229 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add228, i32* %temp2229, align 4
  %temp1230 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %78 = load i32, i32* %temp1230, align 4
  %A231 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx232 = getelementptr inbounds [8 x i32], [8 x i32]* %A231, i64 0, i64 2
  %79 = load i32, i32* %arrayidx232, align 4
  %add233 = add i32 %79, %78
  store i32 %add233, i32* %arrayidx232, align 4
  %temp1234 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %80 = load i32, i32* %temp1234, align 4
  %temp2235 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %81 = load i32, i32* %temp2235, align 4
  %add236 = add i32 %80, %81
  %A237 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx238 = getelementptr inbounds [8 x i32], [8 x i32]* %A237, i64 0, i64 6
  store i32 %add236, i32* %arrayidx238, align 4
  br label %do.end239

do.end239:                                        ; preds = %do.body136
  br label %do.body240

do.body240:                                       ; preds = %do.end239
  %A241 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx242 = getelementptr inbounds [8 x i32], [8 x i32]* %A241, i64 0, i64 5
  %82 = load i32, i32* %arrayidx242, align 4
  %A243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx244 = getelementptr inbounds [8 x i32], [8 x i32]* %A243, i64 0, i64 2
  %83 = load i32, i32* %arrayidx244, align 4
  %and245 = and i32 %83, -1
  %shr246 = lshr i32 %and245, 6
  %A247 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx248 = getelementptr inbounds [8 x i32], [8 x i32]* %A247, i64 0, i64 2
  %84 = load i32, i32* %arrayidx248, align 4
  %shl249 = shl i32 %84, 26
  %or250 = or i32 %shr246, %shl249
  %A251 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx252 = getelementptr inbounds [8 x i32], [8 x i32]* %A251, i64 0, i64 2
  %85 = load i32, i32* %arrayidx252, align 4
  %and253 = and i32 %85, -1
  %shr254 = lshr i32 %and253, 11
  %A255 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx256 = getelementptr inbounds [8 x i32], [8 x i32]* %A255, i64 0, i64 2
  %86 = load i32, i32* %arrayidx256, align 4
  %shl257 = shl i32 %86, 21
  %or258 = or i32 %shr254, %shl257
  %xor259 = xor i32 %or250, %or258
  %A260 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx261 = getelementptr inbounds [8 x i32], [8 x i32]* %A260, i64 0, i64 2
  %87 = load i32, i32* %arrayidx261, align 4
  %and262 = and i32 %87, -1
  %shr263 = lshr i32 %and262, 25
  %A264 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx265 = getelementptr inbounds [8 x i32], [8 x i32]* %A264, i64 0, i64 2
  %88 = load i32, i32* %arrayidx265, align 4
  %shl266 = shl i32 %88, 7
  %or267 = or i32 %shr263, %shl266
  %xor268 = xor i32 %xor259, %or267
  %add269 = add i32 %82, %xor268
  %A270 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx271 = getelementptr inbounds [8 x i32], [8 x i32]* %A270, i64 0, i64 4
  %89 = load i32, i32* %arrayidx271, align 4
  %A272 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx273 = getelementptr inbounds [8 x i32], [8 x i32]* %A272, i64 0, i64 2
  %90 = load i32, i32* %arrayidx273, align 4
  %A274 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx275 = getelementptr inbounds [8 x i32], [8 x i32]* %A274, i64 0, i64 3
  %91 = load i32, i32* %arrayidx275, align 4
  %A276 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx277 = getelementptr inbounds [8 x i32], [8 x i32]* %A276, i64 0, i64 4
  %92 = load i32, i32* %arrayidx277, align 4
  %xor278 = xor i32 %91, %92
  %and279 = and i32 %90, %xor278
  %xor280 = xor i32 %89, %and279
  %add281 = add i32 %add269, %xor280
  %93 = load i32, i32* %i, align 4
  %add282 = add i32 %93, 2
  %idxprom283 = zext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom283
  %94 = load i32, i32* %arrayidx284, align 4
  %add285 = add i32 %add281, %94
  %W286 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %95 = load i32, i32* %i, align 4
  %add287 = add i32 %95, 2
  %idxprom288 = zext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds [64 x i32], [64 x i32]* %W286, i64 0, i64 %idxprom288
  %96 = load i32, i32* %arrayidx289, align 4
  %add290 = add i32 %add285, %96
  %temp1291 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add290, i32* %temp1291, align 4
  %A292 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx293 = getelementptr inbounds [8 x i32], [8 x i32]* %A292, i64 0, i64 6
  %97 = load i32, i32* %arrayidx293, align 4
  %and294 = and i32 %97, -1
  %shr295 = lshr i32 %and294, 2
  %A296 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx297 = getelementptr inbounds [8 x i32], [8 x i32]* %A296, i64 0, i64 6
  %98 = load i32, i32* %arrayidx297, align 4
  %shl298 = shl i32 %98, 30
  %or299 = or i32 %shr295, %shl298
  %A300 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx301 = getelementptr inbounds [8 x i32], [8 x i32]* %A300, i64 0, i64 6
  %99 = load i32, i32* %arrayidx301, align 4
  %and302 = and i32 %99, -1
  %shr303 = lshr i32 %and302, 13
  %A304 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx305 = getelementptr inbounds [8 x i32], [8 x i32]* %A304, i64 0, i64 6
  %100 = load i32, i32* %arrayidx305, align 4
  %shl306 = shl i32 %100, 19
  %or307 = or i32 %shr303, %shl306
  %xor308 = xor i32 %or299, %or307
  %A309 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx310 = getelementptr inbounds [8 x i32], [8 x i32]* %A309, i64 0, i64 6
  %101 = load i32, i32* %arrayidx310, align 4
  %and311 = and i32 %101, -1
  %shr312 = lshr i32 %and311, 22
  %A313 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx314 = getelementptr inbounds [8 x i32], [8 x i32]* %A313, i64 0, i64 6
  %102 = load i32, i32* %arrayidx314, align 4
  %shl315 = shl i32 %102, 10
  %or316 = or i32 %shr312, %shl315
  %xor317 = xor i32 %xor308, %or316
  %A318 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx319 = getelementptr inbounds [8 x i32], [8 x i32]* %A318, i64 0, i64 6
  %103 = load i32, i32* %arrayidx319, align 4
  %A320 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx321 = getelementptr inbounds [8 x i32], [8 x i32]* %A320, i64 0, i64 7
  %104 = load i32, i32* %arrayidx321, align 4
  %and322 = and i32 %103, %104
  %A323 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx324 = getelementptr inbounds [8 x i32], [8 x i32]* %A323, i64 0, i64 0
  %105 = load i32, i32* %arrayidx324, align 4
  %A325 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx326 = getelementptr inbounds [8 x i32], [8 x i32]* %A325, i64 0, i64 6
  %106 = load i32, i32* %arrayidx326, align 4
  %A327 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx328 = getelementptr inbounds [8 x i32], [8 x i32]* %A327, i64 0, i64 7
  %107 = load i32, i32* %arrayidx328, align 4
  %or329 = or i32 %106, %107
  %and330 = and i32 %105, %or329
  %or331 = or i32 %and322, %and330
  %add332 = add i32 %xor317, %or331
  %temp2333 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add332, i32* %temp2333, align 4
  %temp1334 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %108 = load i32, i32* %temp1334, align 4
  %A335 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx336 = getelementptr inbounds [8 x i32], [8 x i32]* %A335, i64 0, i64 1
  %109 = load i32, i32* %arrayidx336, align 4
  %add337 = add i32 %109, %108
  store i32 %add337, i32* %arrayidx336, align 4
  %temp1338 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %110 = load i32, i32* %temp1338, align 4
  %temp2339 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %111 = load i32, i32* %temp2339, align 4
  %add340 = add i32 %110, %111
  %A341 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx342 = getelementptr inbounds [8 x i32], [8 x i32]* %A341, i64 0, i64 5
  store i32 %add340, i32* %arrayidx342, align 4
  br label %do.end343

do.end343:                                        ; preds = %do.body240
  br label %do.body344

do.body344:                                       ; preds = %do.end343
  %A345 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx346 = getelementptr inbounds [8 x i32], [8 x i32]* %A345, i64 0, i64 4
  %112 = load i32, i32* %arrayidx346, align 4
  %A347 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx348 = getelementptr inbounds [8 x i32], [8 x i32]* %A347, i64 0, i64 1
  %113 = load i32, i32* %arrayidx348, align 4
  %and349 = and i32 %113, -1
  %shr350 = lshr i32 %and349, 6
  %A351 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx352 = getelementptr inbounds [8 x i32], [8 x i32]* %A351, i64 0, i64 1
  %114 = load i32, i32* %arrayidx352, align 4
  %shl353 = shl i32 %114, 26
  %or354 = or i32 %shr350, %shl353
  %A355 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx356 = getelementptr inbounds [8 x i32], [8 x i32]* %A355, i64 0, i64 1
  %115 = load i32, i32* %arrayidx356, align 4
  %and357 = and i32 %115, -1
  %shr358 = lshr i32 %and357, 11
  %A359 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx360 = getelementptr inbounds [8 x i32], [8 x i32]* %A359, i64 0, i64 1
  %116 = load i32, i32* %arrayidx360, align 4
  %shl361 = shl i32 %116, 21
  %or362 = or i32 %shr358, %shl361
  %xor363 = xor i32 %or354, %or362
  %A364 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx365 = getelementptr inbounds [8 x i32], [8 x i32]* %A364, i64 0, i64 1
  %117 = load i32, i32* %arrayidx365, align 4
  %and366 = and i32 %117, -1
  %shr367 = lshr i32 %and366, 25
  %A368 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx369 = getelementptr inbounds [8 x i32], [8 x i32]* %A368, i64 0, i64 1
  %118 = load i32, i32* %arrayidx369, align 4
  %shl370 = shl i32 %118, 7
  %or371 = or i32 %shr367, %shl370
  %xor372 = xor i32 %xor363, %or371
  %add373 = add i32 %112, %xor372
  %A374 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx375 = getelementptr inbounds [8 x i32], [8 x i32]* %A374, i64 0, i64 3
  %119 = load i32, i32* %arrayidx375, align 4
  %A376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx377 = getelementptr inbounds [8 x i32], [8 x i32]* %A376, i64 0, i64 1
  %120 = load i32, i32* %arrayidx377, align 4
  %A378 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx379 = getelementptr inbounds [8 x i32], [8 x i32]* %A378, i64 0, i64 2
  %121 = load i32, i32* %arrayidx379, align 4
  %A380 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx381 = getelementptr inbounds [8 x i32], [8 x i32]* %A380, i64 0, i64 3
  %122 = load i32, i32* %arrayidx381, align 4
  %xor382 = xor i32 %121, %122
  %and383 = and i32 %120, %xor382
  %xor384 = xor i32 %119, %and383
  %add385 = add i32 %add373, %xor384
  %123 = load i32, i32* %i, align 4
  %add386 = add i32 %123, 3
  %idxprom387 = zext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom387
  %124 = load i32, i32* %arrayidx388, align 4
  %add389 = add i32 %add385, %124
  %W390 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %125 = load i32, i32* %i, align 4
  %add391 = add i32 %125, 3
  %idxprom392 = zext i32 %add391 to i64
  %arrayidx393 = getelementptr inbounds [64 x i32], [64 x i32]* %W390, i64 0, i64 %idxprom392
  %126 = load i32, i32* %arrayidx393, align 4
  %add394 = add i32 %add389, %126
  %temp1395 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add394, i32* %temp1395, align 4
  %A396 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx397 = getelementptr inbounds [8 x i32], [8 x i32]* %A396, i64 0, i64 5
  %127 = load i32, i32* %arrayidx397, align 4
  %and398 = and i32 %127, -1
  %shr399 = lshr i32 %and398, 2
  %A400 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx401 = getelementptr inbounds [8 x i32], [8 x i32]* %A400, i64 0, i64 5
  %128 = load i32, i32* %arrayidx401, align 4
  %shl402 = shl i32 %128, 30
  %or403 = or i32 %shr399, %shl402
  %A404 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx405 = getelementptr inbounds [8 x i32], [8 x i32]* %A404, i64 0, i64 5
  %129 = load i32, i32* %arrayidx405, align 4
  %and406 = and i32 %129, -1
  %shr407 = lshr i32 %and406, 13
  %A408 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx409 = getelementptr inbounds [8 x i32], [8 x i32]* %A408, i64 0, i64 5
  %130 = load i32, i32* %arrayidx409, align 4
  %shl410 = shl i32 %130, 19
  %or411 = or i32 %shr407, %shl410
  %xor412 = xor i32 %or403, %or411
  %A413 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx414 = getelementptr inbounds [8 x i32], [8 x i32]* %A413, i64 0, i64 5
  %131 = load i32, i32* %arrayidx414, align 4
  %and415 = and i32 %131, -1
  %shr416 = lshr i32 %and415, 22
  %A417 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx418 = getelementptr inbounds [8 x i32], [8 x i32]* %A417, i64 0, i64 5
  %132 = load i32, i32* %arrayidx418, align 4
  %shl419 = shl i32 %132, 10
  %or420 = or i32 %shr416, %shl419
  %xor421 = xor i32 %xor412, %or420
  %A422 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx423 = getelementptr inbounds [8 x i32], [8 x i32]* %A422, i64 0, i64 5
  %133 = load i32, i32* %arrayidx423, align 4
  %A424 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx425 = getelementptr inbounds [8 x i32], [8 x i32]* %A424, i64 0, i64 6
  %134 = load i32, i32* %arrayidx425, align 4
  %and426 = and i32 %133, %134
  %A427 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx428 = getelementptr inbounds [8 x i32], [8 x i32]* %A427, i64 0, i64 7
  %135 = load i32, i32* %arrayidx428, align 4
  %A429 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx430 = getelementptr inbounds [8 x i32], [8 x i32]* %A429, i64 0, i64 5
  %136 = load i32, i32* %arrayidx430, align 4
  %A431 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx432 = getelementptr inbounds [8 x i32], [8 x i32]* %A431, i64 0, i64 6
  %137 = load i32, i32* %arrayidx432, align 4
  %or433 = or i32 %136, %137
  %and434 = and i32 %135, %or433
  %or435 = or i32 %and426, %and434
  %add436 = add i32 %xor421, %or435
  %temp2437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add436, i32* %temp2437, align 4
  %temp1438 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %138 = load i32, i32* %temp1438, align 4
  %A439 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx440 = getelementptr inbounds [8 x i32], [8 x i32]* %A439, i64 0, i64 0
  %139 = load i32, i32* %arrayidx440, align 4
  %add441 = add i32 %139, %138
  store i32 %add441, i32* %arrayidx440, align 4
  %temp1442 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %140 = load i32, i32* %temp1442, align 4
  %temp2443 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %141 = load i32, i32* %temp2443, align 4
  %add444 = add i32 %140, %141
  %A445 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx446 = getelementptr inbounds [8 x i32], [8 x i32]* %A445, i64 0, i64 4
  store i32 %add444, i32* %arrayidx446, align 4
  br label %do.end447

do.end447:                                        ; preds = %do.body344
  br label %do.body448

do.body448:                                       ; preds = %do.end447
  %A449 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx450 = getelementptr inbounds [8 x i32], [8 x i32]* %A449, i64 0, i64 3
  %142 = load i32, i32* %arrayidx450, align 4
  %A451 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx452 = getelementptr inbounds [8 x i32], [8 x i32]* %A451, i64 0, i64 0
  %143 = load i32, i32* %arrayidx452, align 4
  %and453 = and i32 %143, -1
  %shr454 = lshr i32 %and453, 6
  %A455 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx456 = getelementptr inbounds [8 x i32], [8 x i32]* %A455, i64 0, i64 0
  %144 = load i32, i32* %arrayidx456, align 4
  %shl457 = shl i32 %144, 26
  %or458 = or i32 %shr454, %shl457
  %A459 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx460 = getelementptr inbounds [8 x i32], [8 x i32]* %A459, i64 0, i64 0
  %145 = load i32, i32* %arrayidx460, align 4
  %and461 = and i32 %145, -1
  %shr462 = lshr i32 %and461, 11
  %A463 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx464 = getelementptr inbounds [8 x i32], [8 x i32]* %A463, i64 0, i64 0
  %146 = load i32, i32* %arrayidx464, align 4
  %shl465 = shl i32 %146, 21
  %or466 = or i32 %shr462, %shl465
  %xor467 = xor i32 %or458, %or466
  %A468 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx469 = getelementptr inbounds [8 x i32], [8 x i32]* %A468, i64 0, i64 0
  %147 = load i32, i32* %arrayidx469, align 4
  %and470 = and i32 %147, -1
  %shr471 = lshr i32 %and470, 25
  %A472 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx473 = getelementptr inbounds [8 x i32], [8 x i32]* %A472, i64 0, i64 0
  %148 = load i32, i32* %arrayidx473, align 4
  %shl474 = shl i32 %148, 7
  %or475 = or i32 %shr471, %shl474
  %xor476 = xor i32 %xor467, %or475
  %add477 = add i32 %142, %xor476
  %A478 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx479 = getelementptr inbounds [8 x i32], [8 x i32]* %A478, i64 0, i64 2
  %149 = load i32, i32* %arrayidx479, align 4
  %A480 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx481 = getelementptr inbounds [8 x i32], [8 x i32]* %A480, i64 0, i64 0
  %150 = load i32, i32* %arrayidx481, align 4
  %A482 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx483 = getelementptr inbounds [8 x i32], [8 x i32]* %A482, i64 0, i64 1
  %151 = load i32, i32* %arrayidx483, align 4
  %A484 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx485 = getelementptr inbounds [8 x i32], [8 x i32]* %A484, i64 0, i64 2
  %152 = load i32, i32* %arrayidx485, align 4
  %xor486 = xor i32 %151, %152
  %and487 = and i32 %150, %xor486
  %xor488 = xor i32 %149, %and487
  %add489 = add i32 %add477, %xor488
  %153 = load i32, i32* %i, align 4
  %add490 = add i32 %153, 4
  %idxprom491 = zext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom491
  %154 = load i32, i32* %arrayidx492, align 4
  %add493 = add i32 %add489, %154
  %W494 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %155 = load i32, i32* %i, align 4
  %add495 = add i32 %155, 4
  %idxprom496 = zext i32 %add495 to i64
  %arrayidx497 = getelementptr inbounds [64 x i32], [64 x i32]* %W494, i64 0, i64 %idxprom496
  %156 = load i32, i32* %arrayidx497, align 4
  %add498 = add i32 %add493, %156
  %temp1499 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add498, i32* %temp1499, align 4
  %A500 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx501 = getelementptr inbounds [8 x i32], [8 x i32]* %A500, i64 0, i64 4
  %157 = load i32, i32* %arrayidx501, align 4
  %and502 = and i32 %157, -1
  %shr503 = lshr i32 %and502, 2
  %A504 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx505 = getelementptr inbounds [8 x i32], [8 x i32]* %A504, i64 0, i64 4
  %158 = load i32, i32* %arrayidx505, align 4
  %shl506 = shl i32 %158, 30
  %or507 = or i32 %shr503, %shl506
  %A508 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx509 = getelementptr inbounds [8 x i32], [8 x i32]* %A508, i64 0, i64 4
  %159 = load i32, i32* %arrayidx509, align 4
  %and510 = and i32 %159, -1
  %shr511 = lshr i32 %and510, 13
  %A512 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx513 = getelementptr inbounds [8 x i32], [8 x i32]* %A512, i64 0, i64 4
  %160 = load i32, i32* %arrayidx513, align 4
  %shl514 = shl i32 %160, 19
  %or515 = or i32 %shr511, %shl514
  %xor516 = xor i32 %or507, %or515
  %A517 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx518 = getelementptr inbounds [8 x i32], [8 x i32]* %A517, i64 0, i64 4
  %161 = load i32, i32* %arrayidx518, align 4
  %and519 = and i32 %161, -1
  %shr520 = lshr i32 %and519, 22
  %A521 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx522 = getelementptr inbounds [8 x i32], [8 x i32]* %A521, i64 0, i64 4
  %162 = load i32, i32* %arrayidx522, align 4
  %shl523 = shl i32 %162, 10
  %or524 = or i32 %shr520, %shl523
  %xor525 = xor i32 %xor516, %or524
  %A526 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx527 = getelementptr inbounds [8 x i32], [8 x i32]* %A526, i64 0, i64 4
  %163 = load i32, i32* %arrayidx527, align 4
  %A528 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx529 = getelementptr inbounds [8 x i32], [8 x i32]* %A528, i64 0, i64 5
  %164 = load i32, i32* %arrayidx529, align 4
  %and530 = and i32 %163, %164
  %A531 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx532 = getelementptr inbounds [8 x i32], [8 x i32]* %A531, i64 0, i64 6
  %165 = load i32, i32* %arrayidx532, align 4
  %A533 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx534 = getelementptr inbounds [8 x i32], [8 x i32]* %A533, i64 0, i64 4
  %166 = load i32, i32* %arrayidx534, align 4
  %A535 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx536 = getelementptr inbounds [8 x i32], [8 x i32]* %A535, i64 0, i64 5
  %167 = load i32, i32* %arrayidx536, align 4
  %or537 = or i32 %166, %167
  %and538 = and i32 %165, %or537
  %or539 = or i32 %and530, %and538
  %add540 = add i32 %xor525, %or539
  %temp2541 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add540, i32* %temp2541, align 4
  %temp1542 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %168 = load i32, i32* %temp1542, align 4
  %A543 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx544 = getelementptr inbounds [8 x i32], [8 x i32]* %A543, i64 0, i64 7
  %169 = load i32, i32* %arrayidx544, align 4
  %add545 = add i32 %169, %168
  store i32 %add545, i32* %arrayidx544, align 4
  %temp1546 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %170 = load i32, i32* %temp1546, align 4
  %temp2547 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %171 = load i32, i32* %temp2547, align 4
  %add548 = add i32 %170, %171
  %A549 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx550 = getelementptr inbounds [8 x i32], [8 x i32]* %A549, i64 0, i64 3
  store i32 %add548, i32* %arrayidx550, align 4
  br label %do.end551

do.end551:                                        ; preds = %do.body448
  br label %do.body552

do.body552:                                       ; preds = %do.end551
  %A553 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx554 = getelementptr inbounds [8 x i32], [8 x i32]* %A553, i64 0, i64 2
  %172 = load i32, i32* %arrayidx554, align 4
  %A555 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx556 = getelementptr inbounds [8 x i32], [8 x i32]* %A555, i64 0, i64 7
  %173 = load i32, i32* %arrayidx556, align 4
  %and557 = and i32 %173, -1
  %shr558 = lshr i32 %and557, 6
  %A559 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx560 = getelementptr inbounds [8 x i32], [8 x i32]* %A559, i64 0, i64 7
  %174 = load i32, i32* %arrayidx560, align 4
  %shl561 = shl i32 %174, 26
  %or562 = or i32 %shr558, %shl561
  %A563 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx564 = getelementptr inbounds [8 x i32], [8 x i32]* %A563, i64 0, i64 7
  %175 = load i32, i32* %arrayidx564, align 4
  %and565 = and i32 %175, -1
  %shr566 = lshr i32 %and565, 11
  %A567 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx568 = getelementptr inbounds [8 x i32], [8 x i32]* %A567, i64 0, i64 7
  %176 = load i32, i32* %arrayidx568, align 4
  %shl569 = shl i32 %176, 21
  %or570 = or i32 %shr566, %shl569
  %xor571 = xor i32 %or562, %or570
  %A572 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx573 = getelementptr inbounds [8 x i32], [8 x i32]* %A572, i64 0, i64 7
  %177 = load i32, i32* %arrayidx573, align 4
  %and574 = and i32 %177, -1
  %shr575 = lshr i32 %and574, 25
  %A576 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx577 = getelementptr inbounds [8 x i32], [8 x i32]* %A576, i64 0, i64 7
  %178 = load i32, i32* %arrayidx577, align 4
  %shl578 = shl i32 %178, 7
  %or579 = or i32 %shr575, %shl578
  %xor580 = xor i32 %xor571, %or579
  %add581 = add i32 %172, %xor580
  %A582 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx583 = getelementptr inbounds [8 x i32], [8 x i32]* %A582, i64 0, i64 1
  %179 = load i32, i32* %arrayidx583, align 4
  %A584 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx585 = getelementptr inbounds [8 x i32], [8 x i32]* %A584, i64 0, i64 7
  %180 = load i32, i32* %arrayidx585, align 4
  %A586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx587 = getelementptr inbounds [8 x i32], [8 x i32]* %A586, i64 0, i64 0
  %181 = load i32, i32* %arrayidx587, align 4
  %A588 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx589 = getelementptr inbounds [8 x i32], [8 x i32]* %A588, i64 0, i64 1
  %182 = load i32, i32* %arrayidx589, align 4
  %xor590 = xor i32 %181, %182
  %and591 = and i32 %180, %xor590
  %xor592 = xor i32 %179, %and591
  %add593 = add i32 %add581, %xor592
  %183 = load i32, i32* %i, align 4
  %add594 = add i32 %183, 5
  %idxprom595 = zext i32 %add594 to i64
  %arrayidx596 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom595
  %184 = load i32, i32* %arrayidx596, align 4
  %add597 = add i32 %add593, %184
  %W598 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %185 = load i32, i32* %i, align 4
  %add599 = add i32 %185, 5
  %idxprom600 = zext i32 %add599 to i64
  %arrayidx601 = getelementptr inbounds [64 x i32], [64 x i32]* %W598, i64 0, i64 %idxprom600
  %186 = load i32, i32* %arrayidx601, align 4
  %add602 = add i32 %add597, %186
  %temp1603 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add602, i32* %temp1603, align 4
  %A604 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx605 = getelementptr inbounds [8 x i32], [8 x i32]* %A604, i64 0, i64 3
  %187 = load i32, i32* %arrayidx605, align 4
  %and606 = and i32 %187, -1
  %shr607 = lshr i32 %and606, 2
  %A608 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx609 = getelementptr inbounds [8 x i32], [8 x i32]* %A608, i64 0, i64 3
  %188 = load i32, i32* %arrayidx609, align 4
  %shl610 = shl i32 %188, 30
  %or611 = or i32 %shr607, %shl610
  %A612 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx613 = getelementptr inbounds [8 x i32], [8 x i32]* %A612, i64 0, i64 3
  %189 = load i32, i32* %arrayidx613, align 4
  %and614 = and i32 %189, -1
  %shr615 = lshr i32 %and614, 13
  %A616 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx617 = getelementptr inbounds [8 x i32], [8 x i32]* %A616, i64 0, i64 3
  %190 = load i32, i32* %arrayidx617, align 4
  %shl618 = shl i32 %190, 19
  %or619 = or i32 %shr615, %shl618
  %xor620 = xor i32 %or611, %or619
  %A621 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx622 = getelementptr inbounds [8 x i32], [8 x i32]* %A621, i64 0, i64 3
  %191 = load i32, i32* %arrayidx622, align 4
  %and623 = and i32 %191, -1
  %shr624 = lshr i32 %and623, 22
  %A625 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx626 = getelementptr inbounds [8 x i32], [8 x i32]* %A625, i64 0, i64 3
  %192 = load i32, i32* %arrayidx626, align 4
  %shl627 = shl i32 %192, 10
  %or628 = or i32 %shr624, %shl627
  %xor629 = xor i32 %xor620, %or628
  %A630 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx631 = getelementptr inbounds [8 x i32], [8 x i32]* %A630, i64 0, i64 3
  %193 = load i32, i32* %arrayidx631, align 4
  %A632 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx633 = getelementptr inbounds [8 x i32], [8 x i32]* %A632, i64 0, i64 4
  %194 = load i32, i32* %arrayidx633, align 4
  %and634 = and i32 %193, %194
  %A635 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx636 = getelementptr inbounds [8 x i32], [8 x i32]* %A635, i64 0, i64 5
  %195 = load i32, i32* %arrayidx636, align 4
  %A637 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx638 = getelementptr inbounds [8 x i32], [8 x i32]* %A637, i64 0, i64 3
  %196 = load i32, i32* %arrayidx638, align 4
  %A639 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx640 = getelementptr inbounds [8 x i32], [8 x i32]* %A639, i64 0, i64 4
  %197 = load i32, i32* %arrayidx640, align 4
  %or641 = or i32 %196, %197
  %and642 = and i32 %195, %or641
  %or643 = or i32 %and634, %and642
  %add644 = add i32 %xor629, %or643
  %temp2645 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add644, i32* %temp2645, align 4
  %temp1646 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %198 = load i32, i32* %temp1646, align 4
  %A647 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx648 = getelementptr inbounds [8 x i32], [8 x i32]* %A647, i64 0, i64 6
  %199 = load i32, i32* %arrayidx648, align 4
  %add649 = add i32 %199, %198
  store i32 %add649, i32* %arrayidx648, align 4
  %temp1650 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %200 = load i32, i32* %temp1650, align 4
  %temp2651 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %201 = load i32, i32* %temp2651, align 4
  %add652 = add i32 %200, %201
  %A653 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx654 = getelementptr inbounds [8 x i32], [8 x i32]* %A653, i64 0, i64 2
  store i32 %add652, i32* %arrayidx654, align 4
  br label %do.end655

do.end655:                                        ; preds = %do.body552
  br label %do.body656

do.body656:                                       ; preds = %do.end655
  %A657 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx658 = getelementptr inbounds [8 x i32], [8 x i32]* %A657, i64 0, i64 1
  %202 = load i32, i32* %arrayidx658, align 4
  %A659 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx660 = getelementptr inbounds [8 x i32], [8 x i32]* %A659, i64 0, i64 6
  %203 = load i32, i32* %arrayidx660, align 4
  %and661 = and i32 %203, -1
  %shr662 = lshr i32 %and661, 6
  %A663 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx664 = getelementptr inbounds [8 x i32], [8 x i32]* %A663, i64 0, i64 6
  %204 = load i32, i32* %arrayidx664, align 4
  %shl665 = shl i32 %204, 26
  %or666 = or i32 %shr662, %shl665
  %A667 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx668 = getelementptr inbounds [8 x i32], [8 x i32]* %A667, i64 0, i64 6
  %205 = load i32, i32* %arrayidx668, align 4
  %and669 = and i32 %205, -1
  %shr670 = lshr i32 %and669, 11
  %A671 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx672 = getelementptr inbounds [8 x i32], [8 x i32]* %A671, i64 0, i64 6
  %206 = load i32, i32* %arrayidx672, align 4
  %shl673 = shl i32 %206, 21
  %or674 = or i32 %shr670, %shl673
  %xor675 = xor i32 %or666, %or674
  %A676 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx677 = getelementptr inbounds [8 x i32], [8 x i32]* %A676, i64 0, i64 6
  %207 = load i32, i32* %arrayidx677, align 4
  %and678 = and i32 %207, -1
  %shr679 = lshr i32 %and678, 25
  %A680 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx681 = getelementptr inbounds [8 x i32], [8 x i32]* %A680, i64 0, i64 6
  %208 = load i32, i32* %arrayidx681, align 4
  %shl682 = shl i32 %208, 7
  %or683 = or i32 %shr679, %shl682
  %xor684 = xor i32 %xor675, %or683
  %add685 = add i32 %202, %xor684
  %A686 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx687 = getelementptr inbounds [8 x i32], [8 x i32]* %A686, i64 0, i64 0
  %209 = load i32, i32* %arrayidx687, align 4
  %A688 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx689 = getelementptr inbounds [8 x i32], [8 x i32]* %A688, i64 0, i64 6
  %210 = load i32, i32* %arrayidx689, align 4
  %A690 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx691 = getelementptr inbounds [8 x i32], [8 x i32]* %A690, i64 0, i64 7
  %211 = load i32, i32* %arrayidx691, align 4
  %A692 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx693 = getelementptr inbounds [8 x i32], [8 x i32]* %A692, i64 0, i64 0
  %212 = load i32, i32* %arrayidx693, align 4
  %xor694 = xor i32 %211, %212
  %and695 = and i32 %210, %xor694
  %xor696 = xor i32 %209, %and695
  %add697 = add i32 %add685, %xor696
  %213 = load i32, i32* %i, align 4
  %add698 = add i32 %213, 6
  %idxprom699 = zext i32 %add698 to i64
  %arrayidx700 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom699
  %214 = load i32, i32* %arrayidx700, align 4
  %add701 = add i32 %add697, %214
  %W702 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %215 = load i32, i32* %i, align 4
  %add703 = add i32 %215, 6
  %idxprom704 = zext i32 %add703 to i64
  %arrayidx705 = getelementptr inbounds [64 x i32], [64 x i32]* %W702, i64 0, i64 %idxprom704
  %216 = load i32, i32* %arrayidx705, align 4
  %add706 = add i32 %add701, %216
  %temp1707 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add706, i32* %temp1707, align 4
  %A708 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx709 = getelementptr inbounds [8 x i32], [8 x i32]* %A708, i64 0, i64 2
  %217 = load i32, i32* %arrayidx709, align 4
  %and710 = and i32 %217, -1
  %shr711 = lshr i32 %and710, 2
  %A712 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx713 = getelementptr inbounds [8 x i32], [8 x i32]* %A712, i64 0, i64 2
  %218 = load i32, i32* %arrayidx713, align 4
  %shl714 = shl i32 %218, 30
  %or715 = or i32 %shr711, %shl714
  %A716 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx717 = getelementptr inbounds [8 x i32], [8 x i32]* %A716, i64 0, i64 2
  %219 = load i32, i32* %arrayidx717, align 4
  %and718 = and i32 %219, -1
  %shr719 = lshr i32 %and718, 13
  %A720 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx721 = getelementptr inbounds [8 x i32], [8 x i32]* %A720, i64 0, i64 2
  %220 = load i32, i32* %arrayidx721, align 4
  %shl722 = shl i32 %220, 19
  %or723 = or i32 %shr719, %shl722
  %xor724 = xor i32 %or715, %or723
  %A725 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx726 = getelementptr inbounds [8 x i32], [8 x i32]* %A725, i64 0, i64 2
  %221 = load i32, i32* %arrayidx726, align 4
  %and727 = and i32 %221, -1
  %shr728 = lshr i32 %and727, 22
  %A729 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx730 = getelementptr inbounds [8 x i32], [8 x i32]* %A729, i64 0, i64 2
  %222 = load i32, i32* %arrayidx730, align 4
  %shl731 = shl i32 %222, 10
  %or732 = or i32 %shr728, %shl731
  %xor733 = xor i32 %xor724, %or732
  %A734 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx735 = getelementptr inbounds [8 x i32], [8 x i32]* %A734, i64 0, i64 2
  %223 = load i32, i32* %arrayidx735, align 4
  %A736 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx737 = getelementptr inbounds [8 x i32], [8 x i32]* %A736, i64 0, i64 3
  %224 = load i32, i32* %arrayidx737, align 4
  %and738 = and i32 %223, %224
  %A739 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx740 = getelementptr inbounds [8 x i32], [8 x i32]* %A739, i64 0, i64 4
  %225 = load i32, i32* %arrayidx740, align 4
  %A741 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx742 = getelementptr inbounds [8 x i32], [8 x i32]* %A741, i64 0, i64 2
  %226 = load i32, i32* %arrayidx742, align 4
  %A743 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx744 = getelementptr inbounds [8 x i32], [8 x i32]* %A743, i64 0, i64 3
  %227 = load i32, i32* %arrayidx744, align 4
  %or745 = or i32 %226, %227
  %and746 = and i32 %225, %or745
  %or747 = or i32 %and738, %and746
  %add748 = add i32 %xor733, %or747
  %temp2749 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add748, i32* %temp2749, align 4
  %temp1750 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %228 = load i32, i32* %temp1750, align 4
  %A751 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx752 = getelementptr inbounds [8 x i32], [8 x i32]* %A751, i64 0, i64 5
  %229 = load i32, i32* %arrayidx752, align 4
  %add753 = add i32 %229, %228
  store i32 %add753, i32* %arrayidx752, align 4
  %temp1754 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %230 = load i32, i32* %temp1754, align 4
  %temp2755 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %231 = load i32, i32* %temp2755, align 4
  %add756 = add i32 %230, %231
  %A757 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx758 = getelementptr inbounds [8 x i32], [8 x i32]* %A757, i64 0, i64 1
  store i32 %add756, i32* %arrayidx758, align 4
  br label %do.end759

do.end759:                                        ; preds = %do.body656
  br label %do.body760

do.body760:                                       ; preds = %do.end759
  %A761 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx762 = getelementptr inbounds [8 x i32], [8 x i32]* %A761, i64 0, i64 0
  %232 = load i32, i32* %arrayidx762, align 4
  %A763 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx764 = getelementptr inbounds [8 x i32], [8 x i32]* %A763, i64 0, i64 5
  %233 = load i32, i32* %arrayidx764, align 4
  %and765 = and i32 %233, -1
  %shr766 = lshr i32 %and765, 6
  %A767 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx768 = getelementptr inbounds [8 x i32], [8 x i32]* %A767, i64 0, i64 5
  %234 = load i32, i32* %arrayidx768, align 4
  %shl769 = shl i32 %234, 26
  %or770 = or i32 %shr766, %shl769
  %A771 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx772 = getelementptr inbounds [8 x i32], [8 x i32]* %A771, i64 0, i64 5
  %235 = load i32, i32* %arrayidx772, align 4
  %and773 = and i32 %235, -1
  %shr774 = lshr i32 %and773, 11
  %A775 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx776 = getelementptr inbounds [8 x i32], [8 x i32]* %A775, i64 0, i64 5
  %236 = load i32, i32* %arrayidx776, align 4
  %shl777 = shl i32 %236, 21
  %or778 = or i32 %shr774, %shl777
  %xor779 = xor i32 %or770, %or778
  %A780 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx781 = getelementptr inbounds [8 x i32], [8 x i32]* %A780, i64 0, i64 5
  %237 = load i32, i32* %arrayidx781, align 4
  %and782 = and i32 %237, -1
  %shr783 = lshr i32 %and782, 25
  %A784 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx785 = getelementptr inbounds [8 x i32], [8 x i32]* %A784, i64 0, i64 5
  %238 = load i32, i32* %arrayidx785, align 4
  %shl786 = shl i32 %238, 7
  %or787 = or i32 %shr783, %shl786
  %xor788 = xor i32 %xor779, %or787
  %add789 = add i32 %232, %xor788
  %A790 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx791 = getelementptr inbounds [8 x i32], [8 x i32]* %A790, i64 0, i64 7
  %239 = load i32, i32* %arrayidx791, align 4
  %A792 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx793 = getelementptr inbounds [8 x i32], [8 x i32]* %A792, i64 0, i64 5
  %240 = load i32, i32* %arrayidx793, align 4
  %A794 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx795 = getelementptr inbounds [8 x i32], [8 x i32]* %A794, i64 0, i64 6
  %241 = load i32, i32* %arrayidx795, align 4
  %A796 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx797 = getelementptr inbounds [8 x i32], [8 x i32]* %A796, i64 0, i64 7
  %242 = load i32, i32* %arrayidx797, align 4
  %xor798 = xor i32 %241, %242
  %and799 = and i32 %240, %xor798
  %xor800 = xor i32 %239, %and799
  %add801 = add i32 %add789, %xor800
  %243 = load i32, i32* %i, align 4
  %add802 = add i32 %243, 7
  %idxprom803 = zext i32 %add802 to i64
  %arrayidx804 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom803
  %244 = load i32, i32* %arrayidx804, align 4
  %add805 = add i32 %add801, %244
  %W806 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %245 = load i32, i32* %i, align 4
  %add807 = add i32 %245, 7
  %idxprom808 = zext i32 %add807 to i64
  %arrayidx809 = getelementptr inbounds [64 x i32], [64 x i32]* %W806, i64 0, i64 %idxprom808
  %246 = load i32, i32* %arrayidx809, align 4
  %add810 = add i32 %add805, %246
  %temp1811 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add810, i32* %temp1811, align 4
  %A812 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx813 = getelementptr inbounds [8 x i32], [8 x i32]* %A812, i64 0, i64 1
  %247 = load i32, i32* %arrayidx813, align 4
  %and814 = and i32 %247, -1
  %shr815 = lshr i32 %and814, 2
  %A816 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx817 = getelementptr inbounds [8 x i32], [8 x i32]* %A816, i64 0, i64 1
  %248 = load i32, i32* %arrayidx817, align 4
  %shl818 = shl i32 %248, 30
  %or819 = or i32 %shr815, %shl818
  %A820 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx821 = getelementptr inbounds [8 x i32], [8 x i32]* %A820, i64 0, i64 1
  %249 = load i32, i32* %arrayidx821, align 4
  %and822 = and i32 %249, -1
  %shr823 = lshr i32 %and822, 13
  %A824 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx825 = getelementptr inbounds [8 x i32], [8 x i32]* %A824, i64 0, i64 1
  %250 = load i32, i32* %arrayidx825, align 4
  %shl826 = shl i32 %250, 19
  %or827 = or i32 %shr823, %shl826
  %xor828 = xor i32 %or819, %or827
  %A829 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx830 = getelementptr inbounds [8 x i32], [8 x i32]* %A829, i64 0, i64 1
  %251 = load i32, i32* %arrayidx830, align 4
  %and831 = and i32 %251, -1
  %shr832 = lshr i32 %and831, 22
  %A833 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx834 = getelementptr inbounds [8 x i32], [8 x i32]* %A833, i64 0, i64 1
  %252 = load i32, i32* %arrayidx834, align 4
  %shl835 = shl i32 %252, 10
  %or836 = or i32 %shr832, %shl835
  %xor837 = xor i32 %xor828, %or836
  %A838 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx839 = getelementptr inbounds [8 x i32], [8 x i32]* %A838, i64 0, i64 1
  %253 = load i32, i32* %arrayidx839, align 4
  %A840 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx841 = getelementptr inbounds [8 x i32], [8 x i32]* %A840, i64 0, i64 2
  %254 = load i32, i32* %arrayidx841, align 4
  %and842 = and i32 %253, %254
  %A843 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx844 = getelementptr inbounds [8 x i32], [8 x i32]* %A843, i64 0, i64 3
  %255 = load i32, i32* %arrayidx844, align 4
  %A845 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx846 = getelementptr inbounds [8 x i32], [8 x i32]* %A845, i64 0, i64 1
  %256 = load i32, i32* %arrayidx846, align 4
  %A847 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx848 = getelementptr inbounds [8 x i32], [8 x i32]* %A847, i64 0, i64 2
  %257 = load i32, i32* %arrayidx848, align 4
  %or849 = or i32 %256, %257
  %and850 = and i32 %255, %or849
  %or851 = or i32 %and842, %and850
  %add852 = add i32 %xor837, %or851
  %temp2853 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add852, i32* %temp2853, align 4
  %temp1854 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %258 = load i32, i32* %temp1854, align 4
  %A855 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx856 = getelementptr inbounds [8 x i32], [8 x i32]* %A855, i64 0, i64 4
  %259 = load i32, i32* %arrayidx856, align 4
  %add857 = add i32 %259, %258
  store i32 %add857, i32* %arrayidx856, align 4
  %temp1858 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %260 = load i32, i32* %temp1858, align 4
  %temp2859 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %261 = load i32, i32* %temp2859, align 4
  %add860 = add i32 %260, %261
  %A861 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx862 = getelementptr inbounds [8 x i32], [8 x i32]* %A861, i64 0, i64 0
  store i32 %add860, i32* %arrayidx862, align 4
  br label %do.end863

do.end863:                                        ; preds = %do.body760
  br label %for.inc864

for.inc864:                                       ; preds = %do.end863
  %262 = load i32, i32* %i, align 4
  %add865 = add i32 %262, 8
  store i32 %add865, i32* %i, align 4
  br label %for.cond33, !llvm.loop !7

for.end866:                                       ; preds = %for.cond33
  store i32 16, i32* %i, align 4
  br label %for.cond867

for.cond867:                                      ; preds = %for.inc2398, %for.end866
  %263 = load i32, i32* %i, align 4
  %cmp868 = icmp ult i32 %263, 64
  br i1 %cmp868, label %for.body870, label %for.end2400

for.body870:                                      ; preds = %for.cond867
  br label %do.body871

do.body871:                                       ; preds = %for.body870
  %A872 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx873 = getelementptr inbounds [8 x i32], [8 x i32]* %A872, i64 0, i64 7
  %264 = load i32, i32* %arrayidx873, align 4
  %A874 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx875 = getelementptr inbounds [8 x i32], [8 x i32]* %A874, i64 0, i64 4
  %265 = load i32, i32* %arrayidx875, align 4
  %and876 = and i32 %265, -1
  %shr877 = lshr i32 %and876, 6
  %A878 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx879 = getelementptr inbounds [8 x i32], [8 x i32]* %A878, i64 0, i64 4
  %266 = load i32, i32* %arrayidx879, align 4
  %shl880 = shl i32 %266, 26
  %or881 = or i32 %shr877, %shl880
  %A882 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx883 = getelementptr inbounds [8 x i32], [8 x i32]* %A882, i64 0, i64 4
  %267 = load i32, i32* %arrayidx883, align 4
  %and884 = and i32 %267, -1
  %shr885 = lshr i32 %and884, 11
  %A886 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx887 = getelementptr inbounds [8 x i32], [8 x i32]* %A886, i64 0, i64 4
  %268 = load i32, i32* %arrayidx887, align 4
  %shl888 = shl i32 %268, 21
  %or889 = or i32 %shr885, %shl888
  %xor890 = xor i32 %or881, %or889
  %A891 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx892 = getelementptr inbounds [8 x i32], [8 x i32]* %A891, i64 0, i64 4
  %269 = load i32, i32* %arrayidx892, align 4
  %and893 = and i32 %269, -1
  %shr894 = lshr i32 %and893, 25
  %A895 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx896 = getelementptr inbounds [8 x i32], [8 x i32]* %A895, i64 0, i64 4
  %270 = load i32, i32* %arrayidx896, align 4
  %shl897 = shl i32 %270, 7
  %or898 = or i32 %shr894, %shl897
  %xor899 = xor i32 %xor890, %or898
  %add900 = add i32 %264, %xor899
  %A901 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx902 = getelementptr inbounds [8 x i32], [8 x i32]* %A901, i64 0, i64 6
  %271 = load i32, i32* %arrayidx902, align 4
  %A903 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx904 = getelementptr inbounds [8 x i32], [8 x i32]* %A903, i64 0, i64 4
  %272 = load i32, i32* %arrayidx904, align 4
  %A905 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx906 = getelementptr inbounds [8 x i32], [8 x i32]* %A905, i64 0, i64 5
  %273 = load i32, i32* %arrayidx906, align 4
  %A907 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx908 = getelementptr inbounds [8 x i32], [8 x i32]* %A907, i64 0, i64 6
  %274 = load i32, i32* %arrayidx908, align 4
  %xor909 = xor i32 %273, %274
  %and910 = and i32 %272, %xor909
  %xor911 = xor i32 %271, %and910
  %add912 = add i32 %add900, %xor911
  %275 = load i32, i32* %i, align 4
  %add913 = add i32 %275, 0
  %idxprom914 = zext i32 %add913 to i64
  %arrayidx915 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom914
  %276 = load i32, i32* %arrayidx915, align 4
  %add916 = add i32 %add912, %276
  %W917 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %277 = load i32, i32* %i, align 4
  %add918 = add i32 %277, 0
  %sub = sub i32 %add918, 2
  %idxprom919 = zext i32 %sub to i64
  %arrayidx920 = getelementptr inbounds [64 x i32], [64 x i32]* %W917, i64 0, i64 %idxprom919
  %278 = load i32, i32* %arrayidx920, align 4
  %and921 = and i32 %278, -1
  %shr922 = lshr i32 %and921, 17
  %W923 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %279 = load i32, i32* %i, align 4
  %add924 = add i32 %279, 0
  %sub925 = sub i32 %add924, 2
  %idxprom926 = zext i32 %sub925 to i64
  %arrayidx927 = getelementptr inbounds [64 x i32], [64 x i32]* %W923, i64 0, i64 %idxprom926
  %280 = load i32, i32* %arrayidx927, align 4
  %shl928 = shl i32 %280, 15
  %or929 = or i32 %shr922, %shl928
  %W930 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %281 = load i32, i32* %i, align 4
  %add931 = add i32 %281, 0
  %sub932 = sub i32 %add931, 2
  %idxprom933 = zext i32 %sub932 to i64
  %arrayidx934 = getelementptr inbounds [64 x i32], [64 x i32]* %W930, i64 0, i64 %idxprom933
  %282 = load i32, i32* %arrayidx934, align 4
  %and935 = and i32 %282, -1
  %shr936 = lshr i32 %and935, 19
  %W937 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %283 = load i32, i32* %i, align 4
  %add938 = add i32 %283, 0
  %sub939 = sub i32 %add938, 2
  %idxprom940 = zext i32 %sub939 to i64
  %arrayidx941 = getelementptr inbounds [64 x i32], [64 x i32]* %W937, i64 0, i64 %idxprom940
  %284 = load i32, i32* %arrayidx941, align 4
  %shl942 = shl i32 %284, 13
  %or943 = or i32 %shr936, %shl942
  %xor944 = xor i32 %or929, %or943
  %W945 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %285 = load i32, i32* %i, align 4
  %add946 = add i32 %285, 0
  %sub947 = sub i32 %add946, 2
  %idxprom948 = zext i32 %sub947 to i64
  %arrayidx949 = getelementptr inbounds [64 x i32], [64 x i32]* %W945, i64 0, i64 %idxprom948
  %286 = load i32, i32* %arrayidx949, align 4
  %and950 = and i32 %286, -1
  %shr951 = lshr i32 %and950, 10
  %xor952 = xor i32 %xor944, %shr951
  %W953 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %287 = load i32, i32* %i, align 4
  %add954 = add i32 %287, 0
  %sub955 = sub i32 %add954, 7
  %idxprom956 = zext i32 %sub955 to i64
  %arrayidx957 = getelementptr inbounds [64 x i32], [64 x i32]* %W953, i64 0, i64 %idxprom956
  %288 = load i32, i32* %arrayidx957, align 4
  %add958 = add i32 %xor952, %288
  %W959 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %289 = load i32, i32* %i, align 4
  %add960 = add i32 %289, 0
  %sub961 = sub i32 %add960, 15
  %idxprom962 = zext i32 %sub961 to i64
  %arrayidx963 = getelementptr inbounds [64 x i32], [64 x i32]* %W959, i64 0, i64 %idxprom962
  %290 = load i32, i32* %arrayidx963, align 4
  %and964 = and i32 %290, -1
  %shr965 = lshr i32 %and964, 7
  %W966 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %291 = load i32, i32* %i, align 4
  %add967 = add i32 %291, 0
  %sub968 = sub i32 %add967, 15
  %idxprom969 = zext i32 %sub968 to i64
  %arrayidx970 = getelementptr inbounds [64 x i32], [64 x i32]* %W966, i64 0, i64 %idxprom969
  %292 = load i32, i32* %arrayidx970, align 4
  %shl971 = shl i32 %292, 25
  %or972 = or i32 %shr965, %shl971
  %W973 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %293 = load i32, i32* %i, align 4
  %add974 = add i32 %293, 0
  %sub975 = sub i32 %add974, 15
  %idxprom976 = zext i32 %sub975 to i64
  %arrayidx977 = getelementptr inbounds [64 x i32], [64 x i32]* %W973, i64 0, i64 %idxprom976
  %294 = load i32, i32* %arrayidx977, align 4
  %and978 = and i32 %294, -1
  %shr979 = lshr i32 %and978, 18
  %W980 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %295 = load i32, i32* %i, align 4
  %add981 = add i32 %295, 0
  %sub982 = sub i32 %add981, 15
  %idxprom983 = zext i32 %sub982 to i64
  %arrayidx984 = getelementptr inbounds [64 x i32], [64 x i32]* %W980, i64 0, i64 %idxprom983
  %296 = load i32, i32* %arrayidx984, align 4
  %shl985 = shl i32 %296, 14
  %or986 = or i32 %shr979, %shl985
  %xor987 = xor i32 %or972, %or986
  %W988 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %297 = load i32, i32* %i, align 4
  %add989 = add i32 %297, 0
  %sub990 = sub i32 %add989, 15
  %idxprom991 = zext i32 %sub990 to i64
  %arrayidx992 = getelementptr inbounds [64 x i32], [64 x i32]* %W988, i64 0, i64 %idxprom991
  %298 = load i32, i32* %arrayidx992, align 4
  %and993 = and i32 %298, -1
  %shr994 = lshr i32 %and993, 3
  %xor995 = xor i32 %xor987, %shr994
  %add996 = add i32 %add958, %xor995
  %W997 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %299 = load i32, i32* %i, align 4
  %add998 = add i32 %299, 0
  %sub999 = sub i32 %add998, 16
  %idxprom1000 = zext i32 %sub999 to i64
  %arrayidx1001 = getelementptr inbounds [64 x i32], [64 x i32]* %W997, i64 0, i64 %idxprom1000
  %300 = load i32, i32* %arrayidx1001, align 4
  %add1002 = add i32 %add996, %300
  %W1003 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %301 = load i32, i32* %i, align 4
  %add1004 = add i32 %301, 0
  %idxprom1005 = zext i32 %add1004 to i64
  %arrayidx1006 = getelementptr inbounds [64 x i32], [64 x i32]* %W1003, i64 0, i64 %idxprom1005
  store i32 %add1002, i32* %arrayidx1006, align 4
  %add1007 = add i32 %add916, %add1002
  %temp11008 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add1007, i32* %temp11008, align 4
  %A1009 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1010 = getelementptr inbounds [8 x i32], [8 x i32]* %A1009, i64 0, i64 0
  %302 = load i32, i32* %arrayidx1010, align 4
  %and1011 = and i32 %302, -1
  %shr1012 = lshr i32 %and1011, 2
  %A1013 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1014 = getelementptr inbounds [8 x i32], [8 x i32]* %A1013, i64 0, i64 0
  %303 = load i32, i32* %arrayidx1014, align 4
  %shl1015 = shl i32 %303, 30
  %or1016 = or i32 %shr1012, %shl1015
  %A1017 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1018 = getelementptr inbounds [8 x i32], [8 x i32]* %A1017, i64 0, i64 0
  %304 = load i32, i32* %arrayidx1018, align 4
  %and1019 = and i32 %304, -1
  %shr1020 = lshr i32 %and1019, 13
  %A1021 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1022 = getelementptr inbounds [8 x i32], [8 x i32]* %A1021, i64 0, i64 0
  %305 = load i32, i32* %arrayidx1022, align 4
  %shl1023 = shl i32 %305, 19
  %or1024 = or i32 %shr1020, %shl1023
  %xor1025 = xor i32 %or1016, %or1024
  %A1026 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1027 = getelementptr inbounds [8 x i32], [8 x i32]* %A1026, i64 0, i64 0
  %306 = load i32, i32* %arrayidx1027, align 4
  %and1028 = and i32 %306, -1
  %shr1029 = lshr i32 %and1028, 22
  %A1030 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1031 = getelementptr inbounds [8 x i32], [8 x i32]* %A1030, i64 0, i64 0
  %307 = load i32, i32* %arrayidx1031, align 4
  %shl1032 = shl i32 %307, 10
  %or1033 = or i32 %shr1029, %shl1032
  %xor1034 = xor i32 %xor1025, %or1033
  %A1035 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1036 = getelementptr inbounds [8 x i32], [8 x i32]* %A1035, i64 0, i64 0
  %308 = load i32, i32* %arrayidx1036, align 4
  %A1037 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1038 = getelementptr inbounds [8 x i32], [8 x i32]* %A1037, i64 0, i64 1
  %309 = load i32, i32* %arrayidx1038, align 4
  %and1039 = and i32 %308, %309
  %A1040 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1041 = getelementptr inbounds [8 x i32], [8 x i32]* %A1040, i64 0, i64 2
  %310 = load i32, i32* %arrayidx1041, align 4
  %A1042 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1043 = getelementptr inbounds [8 x i32], [8 x i32]* %A1042, i64 0, i64 0
  %311 = load i32, i32* %arrayidx1043, align 4
  %A1044 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1045 = getelementptr inbounds [8 x i32], [8 x i32]* %A1044, i64 0, i64 1
  %312 = load i32, i32* %arrayidx1045, align 4
  %or1046 = or i32 %311, %312
  %and1047 = and i32 %310, %or1046
  %or1048 = or i32 %and1039, %and1047
  %add1049 = add i32 %xor1034, %or1048
  %temp21050 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1049, i32* %temp21050, align 4
  %temp11051 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %313 = load i32, i32* %temp11051, align 4
  %A1052 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1053 = getelementptr inbounds [8 x i32], [8 x i32]* %A1052, i64 0, i64 3
  %314 = load i32, i32* %arrayidx1053, align 4
  %add1054 = add i32 %314, %313
  store i32 %add1054, i32* %arrayidx1053, align 4
  %temp11055 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %315 = load i32, i32* %temp11055, align 4
  %temp21056 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %316 = load i32, i32* %temp21056, align 4
  %add1057 = add i32 %315, %316
  %A1058 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1059 = getelementptr inbounds [8 x i32], [8 x i32]* %A1058, i64 0, i64 7
  store i32 %add1057, i32* %arrayidx1059, align 4
  br label %do.end1060

do.end1060:                                       ; preds = %do.body871
  br label %do.body1061

do.body1061:                                      ; preds = %do.end1060
  %A1062 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1063 = getelementptr inbounds [8 x i32], [8 x i32]* %A1062, i64 0, i64 6
  %317 = load i32, i32* %arrayidx1063, align 4
  %A1064 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1065 = getelementptr inbounds [8 x i32], [8 x i32]* %A1064, i64 0, i64 3
  %318 = load i32, i32* %arrayidx1065, align 4
  %and1066 = and i32 %318, -1
  %shr1067 = lshr i32 %and1066, 6
  %A1068 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1069 = getelementptr inbounds [8 x i32], [8 x i32]* %A1068, i64 0, i64 3
  %319 = load i32, i32* %arrayidx1069, align 4
  %shl1070 = shl i32 %319, 26
  %or1071 = or i32 %shr1067, %shl1070
  %A1072 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1073 = getelementptr inbounds [8 x i32], [8 x i32]* %A1072, i64 0, i64 3
  %320 = load i32, i32* %arrayidx1073, align 4
  %and1074 = and i32 %320, -1
  %shr1075 = lshr i32 %and1074, 11
  %A1076 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1077 = getelementptr inbounds [8 x i32], [8 x i32]* %A1076, i64 0, i64 3
  %321 = load i32, i32* %arrayidx1077, align 4
  %shl1078 = shl i32 %321, 21
  %or1079 = or i32 %shr1075, %shl1078
  %xor1080 = xor i32 %or1071, %or1079
  %A1081 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1082 = getelementptr inbounds [8 x i32], [8 x i32]* %A1081, i64 0, i64 3
  %322 = load i32, i32* %arrayidx1082, align 4
  %and1083 = and i32 %322, -1
  %shr1084 = lshr i32 %and1083, 25
  %A1085 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1086 = getelementptr inbounds [8 x i32], [8 x i32]* %A1085, i64 0, i64 3
  %323 = load i32, i32* %arrayidx1086, align 4
  %shl1087 = shl i32 %323, 7
  %or1088 = or i32 %shr1084, %shl1087
  %xor1089 = xor i32 %xor1080, %or1088
  %add1090 = add i32 %317, %xor1089
  %A1091 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1092 = getelementptr inbounds [8 x i32], [8 x i32]* %A1091, i64 0, i64 5
  %324 = load i32, i32* %arrayidx1092, align 4
  %A1093 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1094 = getelementptr inbounds [8 x i32], [8 x i32]* %A1093, i64 0, i64 3
  %325 = load i32, i32* %arrayidx1094, align 4
  %A1095 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1096 = getelementptr inbounds [8 x i32], [8 x i32]* %A1095, i64 0, i64 4
  %326 = load i32, i32* %arrayidx1096, align 4
  %A1097 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1098 = getelementptr inbounds [8 x i32], [8 x i32]* %A1097, i64 0, i64 5
  %327 = load i32, i32* %arrayidx1098, align 4
  %xor1099 = xor i32 %326, %327
  %and1100 = and i32 %325, %xor1099
  %xor1101 = xor i32 %324, %and1100
  %add1102 = add i32 %add1090, %xor1101
  %328 = load i32, i32* %i, align 4
  %add1103 = add i32 %328, 1
  %idxprom1104 = zext i32 %add1103 to i64
  %arrayidx1105 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom1104
  %329 = load i32, i32* %arrayidx1105, align 4
  %add1106 = add i32 %add1102, %329
  %W1107 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %330 = load i32, i32* %i, align 4
  %add1108 = add i32 %330, 1
  %sub1109 = sub i32 %add1108, 2
  %idxprom1110 = zext i32 %sub1109 to i64
  %arrayidx1111 = getelementptr inbounds [64 x i32], [64 x i32]* %W1107, i64 0, i64 %idxprom1110
  %331 = load i32, i32* %arrayidx1111, align 4
  %and1112 = and i32 %331, -1
  %shr1113 = lshr i32 %and1112, 17
  %W1114 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %332 = load i32, i32* %i, align 4
  %add1115 = add i32 %332, 1
  %sub1116 = sub i32 %add1115, 2
  %idxprom1117 = zext i32 %sub1116 to i64
  %arrayidx1118 = getelementptr inbounds [64 x i32], [64 x i32]* %W1114, i64 0, i64 %idxprom1117
  %333 = load i32, i32* %arrayidx1118, align 4
  %shl1119 = shl i32 %333, 15
  %or1120 = or i32 %shr1113, %shl1119
  %W1121 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %334 = load i32, i32* %i, align 4
  %add1122 = add i32 %334, 1
  %sub1123 = sub i32 %add1122, 2
  %idxprom1124 = zext i32 %sub1123 to i64
  %arrayidx1125 = getelementptr inbounds [64 x i32], [64 x i32]* %W1121, i64 0, i64 %idxprom1124
  %335 = load i32, i32* %arrayidx1125, align 4
  %and1126 = and i32 %335, -1
  %shr1127 = lshr i32 %and1126, 19
  %W1128 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %336 = load i32, i32* %i, align 4
  %add1129 = add i32 %336, 1
  %sub1130 = sub i32 %add1129, 2
  %idxprom1131 = zext i32 %sub1130 to i64
  %arrayidx1132 = getelementptr inbounds [64 x i32], [64 x i32]* %W1128, i64 0, i64 %idxprom1131
  %337 = load i32, i32* %arrayidx1132, align 4
  %shl1133 = shl i32 %337, 13
  %or1134 = or i32 %shr1127, %shl1133
  %xor1135 = xor i32 %or1120, %or1134
  %W1136 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %338 = load i32, i32* %i, align 4
  %add1137 = add i32 %338, 1
  %sub1138 = sub i32 %add1137, 2
  %idxprom1139 = zext i32 %sub1138 to i64
  %arrayidx1140 = getelementptr inbounds [64 x i32], [64 x i32]* %W1136, i64 0, i64 %idxprom1139
  %339 = load i32, i32* %arrayidx1140, align 4
  %and1141 = and i32 %339, -1
  %shr1142 = lshr i32 %and1141, 10
  %xor1143 = xor i32 %xor1135, %shr1142
  %W1144 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %340 = load i32, i32* %i, align 4
  %add1145 = add i32 %340, 1
  %sub1146 = sub i32 %add1145, 7
  %idxprom1147 = zext i32 %sub1146 to i64
  %arrayidx1148 = getelementptr inbounds [64 x i32], [64 x i32]* %W1144, i64 0, i64 %idxprom1147
  %341 = load i32, i32* %arrayidx1148, align 4
  %add1149 = add i32 %xor1143, %341
  %W1150 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %342 = load i32, i32* %i, align 4
  %add1151 = add i32 %342, 1
  %sub1152 = sub i32 %add1151, 15
  %idxprom1153 = zext i32 %sub1152 to i64
  %arrayidx1154 = getelementptr inbounds [64 x i32], [64 x i32]* %W1150, i64 0, i64 %idxprom1153
  %343 = load i32, i32* %arrayidx1154, align 4
  %and1155 = and i32 %343, -1
  %shr1156 = lshr i32 %and1155, 7
  %W1157 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %344 = load i32, i32* %i, align 4
  %add1158 = add i32 %344, 1
  %sub1159 = sub i32 %add1158, 15
  %idxprom1160 = zext i32 %sub1159 to i64
  %arrayidx1161 = getelementptr inbounds [64 x i32], [64 x i32]* %W1157, i64 0, i64 %idxprom1160
  %345 = load i32, i32* %arrayidx1161, align 4
  %shl1162 = shl i32 %345, 25
  %or1163 = or i32 %shr1156, %shl1162
  %W1164 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %346 = load i32, i32* %i, align 4
  %add1165 = add i32 %346, 1
  %sub1166 = sub i32 %add1165, 15
  %idxprom1167 = zext i32 %sub1166 to i64
  %arrayidx1168 = getelementptr inbounds [64 x i32], [64 x i32]* %W1164, i64 0, i64 %idxprom1167
  %347 = load i32, i32* %arrayidx1168, align 4
  %and1169 = and i32 %347, -1
  %shr1170 = lshr i32 %and1169, 18
  %W1171 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %348 = load i32, i32* %i, align 4
  %add1172 = add i32 %348, 1
  %sub1173 = sub i32 %add1172, 15
  %idxprom1174 = zext i32 %sub1173 to i64
  %arrayidx1175 = getelementptr inbounds [64 x i32], [64 x i32]* %W1171, i64 0, i64 %idxprom1174
  %349 = load i32, i32* %arrayidx1175, align 4
  %shl1176 = shl i32 %349, 14
  %or1177 = or i32 %shr1170, %shl1176
  %xor1178 = xor i32 %or1163, %or1177
  %W1179 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %350 = load i32, i32* %i, align 4
  %add1180 = add i32 %350, 1
  %sub1181 = sub i32 %add1180, 15
  %idxprom1182 = zext i32 %sub1181 to i64
  %arrayidx1183 = getelementptr inbounds [64 x i32], [64 x i32]* %W1179, i64 0, i64 %idxprom1182
  %351 = load i32, i32* %arrayidx1183, align 4
  %and1184 = and i32 %351, -1
  %shr1185 = lshr i32 %and1184, 3
  %xor1186 = xor i32 %xor1178, %shr1185
  %add1187 = add i32 %add1149, %xor1186
  %W1188 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %352 = load i32, i32* %i, align 4
  %add1189 = add i32 %352, 1
  %sub1190 = sub i32 %add1189, 16
  %idxprom1191 = zext i32 %sub1190 to i64
  %arrayidx1192 = getelementptr inbounds [64 x i32], [64 x i32]* %W1188, i64 0, i64 %idxprom1191
  %353 = load i32, i32* %arrayidx1192, align 4
  %add1193 = add i32 %add1187, %353
  %W1194 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %354 = load i32, i32* %i, align 4
  %add1195 = add i32 %354, 1
  %idxprom1196 = zext i32 %add1195 to i64
  %arrayidx1197 = getelementptr inbounds [64 x i32], [64 x i32]* %W1194, i64 0, i64 %idxprom1196
  store i32 %add1193, i32* %arrayidx1197, align 4
  %add1198 = add i32 %add1106, %add1193
  %temp11199 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add1198, i32* %temp11199, align 4
  %A1200 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1201 = getelementptr inbounds [8 x i32], [8 x i32]* %A1200, i64 0, i64 7
  %355 = load i32, i32* %arrayidx1201, align 4
  %and1202 = and i32 %355, -1
  %shr1203 = lshr i32 %and1202, 2
  %A1204 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1205 = getelementptr inbounds [8 x i32], [8 x i32]* %A1204, i64 0, i64 7
  %356 = load i32, i32* %arrayidx1205, align 4
  %shl1206 = shl i32 %356, 30
  %or1207 = or i32 %shr1203, %shl1206
  %A1208 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1209 = getelementptr inbounds [8 x i32], [8 x i32]* %A1208, i64 0, i64 7
  %357 = load i32, i32* %arrayidx1209, align 4
  %and1210 = and i32 %357, -1
  %shr1211 = lshr i32 %and1210, 13
  %A1212 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1213 = getelementptr inbounds [8 x i32], [8 x i32]* %A1212, i64 0, i64 7
  %358 = load i32, i32* %arrayidx1213, align 4
  %shl1214 = shl i32 %358, 19
  %or1215 = or i32 %shr1211, %shl1214
  %xor1216 = xor i32 %or1207, %or1215
  %A1217 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1218 = getelementptr inbounds [8 x i32], [8 x i32]* %A1217, i64 0, i64 7
  %359 = load i32, i32* %arrayidx1218, align 4
  %and1219 = and i32 %359, -1
  %shr1220 = lshr i32 %and1219, 22
  %A1221 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1222 = getelementptr inbounds [8 x i32], [8 x i32]* %A1221, i64 0, i64 7
  %360 = load i32, i32* %arrayidx1222, align 4
  %shl1223 = shl i32 %360, 10
  %or1224 = or i32 %shr1220, %shl1223
  %xor1225 = xor i32 %xor1216, %or1224
  %A1226 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1227 = getelementptr inbounds [8 x i32], [8 x i32]* %A1226, i64 0, i64 7
  %361 = load i32, i32* %arrayidx1227, align 4
  %A1228 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1229 = getelementptr inbounds [8 x i32], [8 x i32]* %A1228, i64 0, i64 0
  %362 = load i32, i32* %arrayidx1229, align 4
  %and1230 = and i32 %361, %362
  %A1231 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1232 = getelementptr inbounds [8 x i32], [8 x i32]* %A1231, i64 0, i64 1
  %363 = load i32, i32* %arrayidx1232, align 4
  %A1233 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1234 = getelementptr inbounds [8 x i32], [8 x i32]* %A1233, i64 0, i64 7
  %364 = load i32, i32* %arrayidx1234, align 4
  %A1235 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1236 = getelementptr inbounds [8 x i32], [8 x i32]* %A1235, i64 0, i64 0
  %365 = load i32, i32* %arrayidx1236, align 4
  %or1237 = or i32 %364, %365
  %and1238 = and i32 %363, %or1237
  %or1239 = or i32 %and1230, %and1238
  %add1240 = add i32 %xor1225, %or1239
  %temp21241 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1240, i32* %temp21241, align 4
  %temp11242 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %366 = load i32, i32* %temp11242, align 4
  %A1243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1244 = getelementptr inbounds [8 x i32], [8 x i32]* %A1243, i64 0, i64 2
  %367 = load i32, i32* %arrayidx1244, align 4
  %add1245 = add i32 %367, %366
  store i32 %add1245, i32* %arrayidx1244, align 4
  %temp11246 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %368 = load i32, i32* %temp11246, align 4
  %temp21247 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %369 = load i32, i32* %temp21247, align 4
  %add1248 = add i32 %368, %369
  %A1249 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1250 = getelementptr inbounds [8 x i32], [8 x i32]* %A1249, i64 0, i64 6
  store i32 %add1248, i32* %arrayidx1250, align 4
  br label %do.end1251

do.end1251:                                       ; preds = %do.body1061
  br label %do.body1252

do.body1252:                                      ; preds = %do.end1251
  %A1253 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1254 = getelementptr inbounds [8 x i32], [8 x i32]* %A1253, i64 0, i64 5
  %370 = load i32, i32* %arrayidx1254, align 4
  %A1255 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1256 = getelementptr inbounds [8 x i32], [8 x i32]* %A1255, i64 0, i64 2
  %371 = load i32, i32* %arrayidx1256, align 4
  %and1257 = and i32 %371, -1
  %shr1258 = lshr i32 %and1257, 6
  %A1259 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1260 = getelementptr inbounds [8 x i32], [8 x i32]* %A1259, i64 0, i64 2
  %372 = load i32, i32* %arrayidx1260, align 4
  %shl1261 = shl i32 %372, 26
  %or1262 = or i32 %shr1258, %shl1261
  %A1263 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1264 = getelementptr inbounds [8 x i32], [8 x i32]* %A1263, i64 0, i64 2
  %373 = load i32, i32* %arrayidx1264, align 4
  %and1265 = and i32 %373, -1
  %shr1266 = lshr i32 %and1265, 11
  %A1267 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1268 = getelementptr inbounds [8 x i32], [8 x i32]* %A1267, i64 0, i64 2
  %374 = load i32, i32* %arrayidx1268, align 4
  %shl1269 = shl i32 %374, 21
  %or1270 = or i32 %shr1266, %shl1269
  %xor1271 = xor i32 %or1262, %or1270
  %A1272 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1273 = getelementptr inbounds [8 x i32], [8 x i32]* %A1272, i64 0, i64 2
  %375 = load i32, i32* %arrayidx1273, align 4
  %and1274 = and i32 %375, -1
  %shr1275 = lshr i32 %and1274, 25
  %A1276 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1277 = getelementptr inbounds [8 x i32], [8 x i32]* %A1276, i64 0, i64 2
  %376 = load i32, i32* %arrayidx1277, align 4
  %shl1278 = shl i32 %376, 7
  %or1279 = or i32 %shr1275, %shl1278
  %xor1280 = xor i32 %xor1271, %or1279
  %add1281 = add i32 %370, %xor1280
  %A1282 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1283 = getelementptr inbounds [8 x i32], [8 x i32]* %A1282, i64 0, i64 4
  %377 = load i32, i32* %arrayidx1283, align 4
  %A1284 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1285 = getelementptr inbounds [8 x i32], [8 x i32]* %A1284, i64 0, i64 2
  %378 = load i32, i32* %arrayidx1285, align 4
  %A1286 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1287 = getelementptr inbounds [8 x i32], [8 x i32]* %A1286, i64 0, i64 3
  %379 = load i32, i32* %arrayidx1287, align 4
  %A1288 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1289 = getelementptr inbounds [8 x i32], [8 x i32]* %A1288, i64 0, i64 4
  %380 = load i32, i32* %arrayidx1289, align 4
  %xor1290 = xor i32 %379, %380
  %and1291 = and i32 %378, %xor1290
  %xor1292 = xor i32 %377, %and1291
  %add1293 = add i32 %add1281, %xor1292
  %381 = load i32, i32* %i, align 4
  %add1294 = add i32 %381, 2
  %idxprom1295 = zext i32 %add1294 to i64
  %arrayidx1296 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom1295
  %382 = load i32, i32* %arrayidx1296, align 4
  %add1297 = add i32 %add1293, %382
  %W1298 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %383 = load i32, i32* %i, align 4
  %add1299 = add i32 %383, 2
  %sub1300 = sub i32 %add1299, 2
  %idxprom1301 = zext i32 %sub1300 to i64
  %arrayidx1302 = getelementptr inbounds [64 x i32], [64 x i32]* %W1298, i64 0, i64 %idxprom1301
  %384 = load i32, i32* %arrayidx1302, align 4
  %and1303 = and i32 %384, -1
  %shr1304 = lshr i32 %and1303, 17
  %W1305 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %385 = load i32, i32* %i, align 4
  %add1306 = add i32 %385, 2
  %sub1307 = sub i32 %add1306, 2
  %idxprom1308 = zext i32 %sub1307 to i64
  %arrayidx1309 = getelementptr inbounds [64 x i32], [64 x i32]* %W1305, i64 0, i64 %idxprom1308
  %386 = load i32, i32* %arrayidx1309, align 4
  %shl1310 = shl i32 %386, 15
  %or1311 = or i32 %shr1304, %shl1310
  %W1312 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %387 = load i32, i32* %i, align 4
  %add1313 = add i32 %387, 2
  %sub1314 = sub i32 %add1313, 2
  %idxprom1315 = zext i32 %sub1314 to i64
  %arrayidx1316 = getelementptr inbounds [64 x i32], [64 x i32]* %W1312, i64 0, i64 %idxprom1315
  %388 = load i32, i32* %arrayidx1316, align 4
  %and1317 = and i32 %388, -1
  %shr1318 = lshr i32 %and1317, 19
  %W1319 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %389 = load i32, i32* %i, align 4
  %add1320 = add i32 %389, 2
  %sub1321 = sub i32 %add1320, 2
  %idxprom1322 = zext i32 %sub1321 to i64
  %arrayidx1323 = getelementptr inbounds [64 x i32], [64 x i32]* %W1319, i64 0, i64 %idxprom1322
  %390 = load i32, i32* %arrayidx1323, align 4
  %shl1324 = shl i32 %390, 13
  %or1325 = or i32 %shr1318, %shl1324
  %xor1326 = xor i32 %or1311, %or1325
  %W1327 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %391 = load i32, i32* %i, align 4
  %add1328 = add i32 %391, 2
  %sub1329 = sub i32 %add1328, 2
  %idxprom1330 = zext i32 %sub1329 to i64
  %arrayidx1331 = getelementptr inbounds [64 x i32], [64 x i32]* %W1327, i64 0, i64 %idxprom1330
  %392 = load i32, i32* %arrayidx1331, align 4
  %and1332 = and i32 %392, -1
  %shr1333 = lshr i32 %and1332, 10
  %xor1334 = xor i32 %xor1326, %shr1333
  %W1335 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %393 = load i32, i32* %i, align 4
  %add1336 = add i32 %393, 2
  %sub1337 = sub i32 %add1336, 7
  %idxprom1338 = zext i32 %sub1337 to i64
  %arrayidx1339 = getelementptr inbounds [64 x i32], [64 x i32]* %W1335, i64 0, i64 %idxprom1338
  %394 = load i32, i32* %arrayidx1339, align 4
  %add1340 = add i32 %xor1334, %394
  %W1341 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %395 = load i32, i32* %i, align 4
  %add1342 = add i32 %395, 2
  %sub1343 = sub i32 %add1342, 15
  %idxprom1344 = zext i32 %sub1343 to i64
  %arrayidx1345 = getelementptr inbounds [64 x i32], [64 x i32]* %W1341, i64 0, i64 %idxprom1344
  %396 = load i32, i32* %arrayidx1345, align 4
  %and1346 = and i32 %396, -1
  %shr1347 = lshr i32 %and1346, 7
  %W1348 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %397 = load i32, i32* %i, align 4
  %add1349 = add i32 %397, 2
  %sub1350 = sub i32 %add1349, 15
  %idxprom1351 = zext i32 %sub1350 to i64
  %arrayidx1352 = getelementptr inbounds [64 x i32], [64 x i32]* %W1348, i64 0, i64 %idxprom1351
  %398 = load i32, i32* %arrayidx1352, align 4
  %shl1353 = shl i32 %398, 25
  %or1354 = or i32 %shr1347, %shl1353
  %W1355 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %399 = load i32, i32* %i, align 4
  %add1356 = add i32 %399, 2
  %sub1357 = sub i32 %add1356, 15
  %idxprom1358 = zext i32 %sub1357 to i64
  %arrayidx1359 = getelementptr inbounds [64 x i32], [64 x i32]* %W1355, i64 0, i64 %idxprom1358
  %400 = load i32, i32* %arrayidx1359, align 4
  %and1360 = and i32 %400, -1
  %shr1361 = lshr i32 %and1360, 18
  %W1362 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %401 = load i32, i32* %i, align 4
  %add1363 = add i32 %401, 2
  %sub1364 = sub i32 %add1363, 15
  %idxprom1365 = zext i32 %sub1364 to i64
  %arrayidx1366 = getelementptr inbounds [64 x i32], [64 x i32]* %W1362, i64 0, i64 %idxprom1365
  %402 = load i32, i32* %arrayidx1366, align 4
  %shl1367 = shl i32 %402, 14
  %or1368 = or i32 %shr1361, %shl1367
  %xor1369 = xor i32 %or1354, %or1368
  %W1370 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %403 = load i32, i32* %i, align 4
  %add1371 = add i32 %403, 2
  %sub1372 = sub i32 %add1371, 15
  %idxprom1373 = zext i32 %sub1372 to i64
  %arrayidx1374 = getelementptr inbounds [64 x i32], [64 x i32]* %W1370, i64 0, i64 %idxprom1373
  %404 = load i32, i32* %arrayidx1374, align 4
  %and1375 = and i32 %404, -1
  %shr1376 = lshr i32 %and1375, 3
  %xor1377 = xor i32 %xor1369, %shr1376
  %add1378 = add i32 %add1340, %xor1377
  %W1379 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %405 = load i32, i32* %i, align 4
  %add1380 = add i32 %405, 2
  %sub1381 = sub i32 %add1380, 16
  %idxprom1382 = zext i32 %sub1381 to i64
  %arrayidx1383 = getelementptr inbounds [64 x i32], [64 x i32]* %W1379, i64 0, i64 %idxprom1382
  %406 = load i32, i32* %arrayidx1383, align 4
  %add1384 = add i32 %add1378, %406
  %W1385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %407 = load i32, i32* %i, align 4
  %add1386 = add i32 %407, 2
  %idxprom1387 = zext i32 %add1386 to i64
  %arrayidx1388 = getelementptr inbounds [64 x i32], [64 x i32]* %W1385, i64 0, i64 %idxprom1387
  store i32 %add1384, i32* %arrayidx1388, align 4
  %add1389 = add i32 %add1297, %add1384
  %temp11390 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add1389, i32* %temp11390, align 4
  %A1391 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1392 = getelementptr inbounds [8 x i32], [8 x i32]* %A1391, i64 0, i64 6
  %408 = load i32, i32* %arrayidx1392, align 4
  %and1393 = and i32 %408, -1
  %shr1394 = lshr i32 %and1393, 2
  %A1395 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1396 = getelementptr inbounds [8 x i32], [8 x i32]* %A1395, i64 0, i64 6
  %409 = load i32, i32* %arrayidx1396, align 4
  %shl1397 = shl i32 %409, 30
  %or1398 = or i32 %shr1394, %shl1397
  %A1399 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1400 = getelementptr inbounds [8 x i32], [8 x i32]* %A1399, i64 0, i64 6
  %410 = load i32, i32* %arrayidx1400, align 4
  %and1401 = and i32 %410, -1
  %shr1402 = lshr i32 %and1401, 13
  %A1403 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1404 = getelementptr inbounds [8 x i32], [8 x i32]* %A1403, i64 0, i64 6
  %411 = load i32, i32* %arrayidx1404, align 4
  %shl1405 = shl i32 %411, 19
  %or1406 = or i32 %shr1402, %shl1405
  %xor1407 = xor i32 %or1398, %or1406
  %A1408 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1409 = getelementptr inbounds [8 x i32], [8 x i32]* %A1408, i64 0, i64 6
  %412 = load i32, i32* %arrayidx1409, align 4
  %and1410 = and i32 %412, -1
  %shr1411 = lshr i32 %and1410, 22
  %A1412 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1413 = getelementptr inbounds [8 x i32], [8 x i32]* %A1412, i64 0, i64 6
  %413 = load i32, i32* %arrayidx1413, align 4
  %shl1414 = shl i32 %413, 10
  %or1415 = or i32 %shr1411, %shl1414
  %xor1416 = xor i32 %xor1407, %or1415
  %A1417 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1418 = getelementptr inbounds [8 x i32], [8 x i32]* %A1417, i64 0, i64 6
  %414 = load i32, i32* %arrayidx1418, align 4
  %A1419 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1420 = getelementptr inbounds [8 x i32], [8 x i32]* %A1419, i64 0, i64 7
  %415 = load i32, i32* %arrayidx1420, align 4
  %and1421 = and i32 %414, %415
  %A1422 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1423 = getelementptr inbounds [8 x i32], [8 x i32]* %A1422, i64 0, i64 0
  %416 = load i32, i32* %arrayidx1423, align 4
  %A1424 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1425 = getelementptr inbounds [8 x i32], [8 x i32]* %A1424, i64 0, i64 6
  %417 = load i32, i32* %arrayidx1425, align 4
  %A1426 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1427 = getelementptr inbounds [8 x i32], [8 x i32]* %A1426, i64 0, i64 7
  %418 = load i32, i32* %arrayidx1427, align 4
  %or1428 = or i32 %417, %418
  %and1429 = and i32 %416, %or1428
  %or1430 = or i32 %and1421, %and1429
  %add1431 = add i32 %xor1416, %or1430
  %temp21432 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1431, i32* %temp21432, align 4
  %temp11433 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %419 = load i32, i32* %temp11433, align 4
  %A1434 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1435 = getelementptr inbounds [8 x i32], [8 x i32]* %A1434, i64 0, i64 1
  %420 = load i32, i32* %arrayidx1435, align 4
  %add1436 = add i32 %420, %419
  store i32 %add1436, i32* %arrayidx1435, align 4
  %temp11437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %421 = load i32, i32* %temp11437, align 4
  %temp21438 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %422 = load i32, i32* %temp21438, align 4
  %add1439 = add i32 %421, %422
  %A1440 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1441 = getelementptr inbounds [8 x i32], [8 x i32]* %A1440, i64 0, i64 5
  store i32 %add1439, i32* %arrayidx1441, align 4
  br label %do.end1442

do.end1442:                                       ; preds = %do.body1252
  br label %do.body1443

do.body1443:                                      ; preds = %do.end1442
  %A1444 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1445 = getelementptr inbounds [8 x i32], [8 x i32]* %A1444, i64 0, i64 4
  %423 = load i32, i32* %arrayidx1445, align 4
  %A1446 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1447 = getelementptr inbounds [8 x i32], [8 x i32]* %A1446, i64 0, i64 1
  %424 = load i32, i32* %arrayidx1447, align 4
  %and1448 = and i32 %424, -1
  %shr1449 = lshr i32 %and1448, 6
  %A1450 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1451 = getelementptr inbounds [8 x i32], [8 x i32]* %A1450, i64 0, i64 1
  %425 = load i32, i32* %arrayidx1451, align 4
  %shl1452 = shl i32 %425, 26
  %or1453 = or i32 %shr1449, %shl1452
  %A1454 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1455 = getelementptr inbounds [8 x i32], [8 x i32]* %A1454, i64 0, i64 1
  %426 = load i32, i32* %arrayidx1455, align 4
  %and1456 = and i32 %426, -1
  %shr1457 = lshr i32 %and1456, 11
  %A1458 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1459 = getelementptr inbounds [8 x i32], [8 x i32]* %A1458, i64 0, i64 1
  %427 = load i32, i32* %arrayidx1459, align 4
  %shl1460 = shl i32 %427, 21
  %or1461 = or i32 %shr1457, %shl1460
  %xor1462 = xor i32 %or1453, %or1461
  %A1463 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1464 = getelementptr inbounds [8 x i32], [8 x i32]* %A1463, i64 0, i64 1
  %428 = load i32, i32* %arrayidx1464, align 4
  %and1465 = and i32 %428, -1
  %shr1466 = lshr i32 %and1465, 25
  %A1467 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1468 = getelementptr inbounds [8 x i32], [8 x i32]* %A1467, i64 0, i64 1
  %429 = load i32, i32* %arrayidx1468, align 4
  %shl1469 = shl i32 %429, 7
  %or1470 = or i32 %shr1466, %shl1469
  %xor1471 = xor i32 %xor1462, %or1470
  %add1472 = add i32 %423, %xor1471
  %A1473 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1474 = getelementptr inbounds [8 x i32], [8 x i32]* %A1473, i64 0, i64 3
  %430 = load i32, i32* %arrayidx1474, align 4
  %A1475 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1476 = getelementptr inbounds [8 x i32], [8 x i32]* %A1475, i64 0, i64 1
  %431 = load i32, i32* %arrayidx1476, align 4
  %A1477 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1478 = getelementptr inbounds [8 x i32], [8 x i32]* %A1477, i64 0, i64 2
  %432 = load i32, i32* %arrayidx1478, align 4
  %A1479 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1480 = getelementptr inbounds [8 x i32], [8 x i32]* %A1479, i64 0, i64 3
  %433 = load i32, i32* %arrayidx1480, align 4
  %xor1481 = xor i32 %432, %433
  %and1482 = and i32 %431, %xor1481
  %xor1483 = xor i32 %430, %and1482
  %add1484 = add i32 %add1472, %xor1483
  %434 = load i32, i32* %i, align 4
  %add1485 = add i32 %434, 3
  %idxprom1486 = zext i32 %add1485 to i64
  %arrayidx1487 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom1486
  %435 = load i32, i32* %arrayidx1487, align 4
  %add1488 = add i32 %add1484, %435
  %W1489 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %436 = load i32, i32* %i, align 4
  %add1490 = add i32 %436, 3
  %sub1491 = sub i32 %add1490, 2
  %idxprom1492 = zext i32 %sub1491 to i64
  %arrayidx1493 = getelementptr inbounds [64 x i32], [64 x i32]* %W1489, i64 0, i64 %idxprom1492
  %437 = load i32, i32* %arrayidx1493, align 4
  %and1494 = and i32 %437, -1
  %shr1495 = lshr i32 %and1494, 17
  %W1496 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %438 = load i32, i32* %i, align 4
  %add1497 = add i32 %438, 3
  %sub1498 = sub i32 %add1497, 2
  %idxprom1499 = zext i32 %sub1498 to i64
  %arrayidx1500 = getelementptr inbounds [64 x i32], [64 x i32]* %W1496, i64 0, i64 %idxprom1499
  %439 = load i32, i32* %arrayidx1500, align 4
  %shl1501 = shl i32 %439, 15
  %or1502 = or i32 %shr1495, %shl1501
  %W1503 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %440 = load i32, i32* %i, align 4
  %add1504 = add i32 %440, 3
  %sub1505 = sub i32 %add1504, 2
  %idxprom1506 = zext i32 %sub1505 to i64
  %arrayidx1507 = getelementptr inbounds [64 x i32], [64 x i32]* %W1503, i64 0, i64 %idxprom1506
  %441 = load i32, i32* %arrayidx1507, align 4
  %and1508 = and i32 %441, -1
  %shr1509 = lshr i32 %and1508, 19
  %W1510 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %442 = load i32, i32* %i, align 4
  %add1511 = add i32 %442, 3
  %sub1512 = sub i32 %add1511, 2
  %idxprom1513 = zext i32 %sub1512 to i64
  %arrayidx1514 = getelementptr inbounds [64 x i32], [64 x i32]* %W1510, i64 0, i64 %idxprom1513
  %443 = load i32, i32* %arrayidx1514, align 4
  %shl1515 = shl i32 %443, 13
  %or1516 = or i32 %shr1509, %shl1515
  %xor1517 = xor i32 %or1502, %or1516
  %W1518 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %444 = load i32, i32* %i, align 4
  %add1519 = add i32 %444, 3
  %sub1520 = sub i32 %add1519, 2
  %idxprom1521 = zext i32 %sub1520 to i64
  %arrayidx1522 = getelementptr inbounds [64 x i32], [64 x i32]* %W1518, i64 0, i64 %idxprom1521
  %445 = load i32, i32* %arrayidx1522, align 4
  %and1523 = and i32 %445, -1
  %shr1524 = lshr i32 %and1523, 10
  %xor1525 = xor i32 %xor1517, %shr1524
  %W1526 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %446 = load i32, i32* %i, align 4
  %add1527 = add i32 %446, 3
  %sub1528 = sub i32 %add1527, 7
  %idxprom1529 = zext i32 %sub1528 to i64
  %arrayidx1530 = getelementptr inbounds [64 x i32], [64 x i32]* %W1526, i64 0, i64 %idxprom1529
  %447 = load i32, i32* %arrayidx1530, align 4
  %add1531 = add i32 %xor1525, %447
  %W1532 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %448 = load i32, i32* %i, align 4
  %add1533 = add i32 %448, 3
  %sub1534 = sub i32 %add1533, 15
  %idxprom1535 = zext i32 %sub1534 to i64
  %arrayidx1536 = getelementptr inbounds [64 x i32], [64 x i32]* %W1532, i64 0, i64 %idxprom1535
  %449 = load i32, i32* %arrayidx1536, align 4
  %and1537 = and i32 %449, -1
  %shr1538 = lshr i32 %and1537, 7
  %W1539 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %450 = load i32, i32* %i, align 4
  %add1540 = add i32 %450, 3
  %sub1541 = sub i32 %add1540, 15
  %idxprom1542 = zext i32 %sub1541 to i64
  %arrayidx1543 = getelementptr inbounds [64 x i32], [64 x i32]* %W1539, i64 0, i64 %idxprom1542
  %451 = load i32, i32* %arrayidx1543, align 4
  %shl1544 = shl i32 %451, 25
  %or1545 = or i32 %shr1538, %shl1544
  %W1546 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %452 = load i32, i32* %i, align 4
  %add1547 = add i32 %452, 3
  %sub1548 = sub i32 %add1547, 15
  %idxprom1549 = zext i32 %sub1548 to i64
  %arrayidx1550 = getelementptr inbounds [64 x i32], [64 x i32]* %W1546, i64 0, i64 %idxprom1549
  %453 = load i32, i32* %arrayidx1550, align 4
  %and1551 = and i32 %453, -1
  %shr1552 = lshr i32 %and1551, 18
  %W1553 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %454 = load i32, i32* %i, align 4
  %add1554 = add i32 %454, 3
  %sub1555 = sub i32 %add1554, 15
  %idxprom1556 = zext i32 %sub1555 to i64
  %arrayidx1557 = getelementptr inbounds [64 x i32], [64 x i32]* %W1553, i64 0, i64 %idxprom1556
  %455 = load i32, i32* %arrayidx1557, align 4
  %shl1558 = shl i32 %455, 14
  %or1559 = or i32 %shr1552, %shl1558
  %xor1560 = xor i32 %or1545, %or1559
  %W1561 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %456 = load i32, i32* %i, align 4
  %add1562 = add i32 %456, 3
  %sub1563 = sub i32 %add1562, 15
  %idxprom1564 = zext i32 %sub1563 to i64
  %arrayidx1565 = getelementptr inbounds [64 x i32], [64 x i32]* %W1561, i64 0, i64 %idxprom1564
  %457 = load i32, i32* %arrayidx1565, align 4
  %and1566 = and i32 %457, -1
  %shr1567 = lshr i32 %and1566, 3
  %xor1568 = xor i32 %xor1560, %shr1567
  %add1569 = add i32 %add1531, %xor1568
  %W1570 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %458 = load i32, i32* %i, align 4
  %add1571 = add i32 %458, 3
  %sub1572 = sub i32 %add1571, 16
  %idxprom1573 = zext i32 %sub1572 to i64
  %arrayidx1574 = getelementptr inbounds [64 x i32], [64 x i32]* %W1570, i64 0, i64 %idxprom1573
  %459 = load i32, i32* %arrayidx1574, align 4
  %add1575 = add i32 %add1569, %459
  %W1576 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %460 = load i32, i32* %i, align 4
  %add1577 = add i32 %460, 3
  %idxprom1578 = zext i32 %add1577 to i64
  %arrayidx1579 = getelementptr inbounds [64 x i32], [64 x i32]* %W1576, i64 0, i64 %idxprom1578
  store i32 %add1575, i32* %arrayidx1579, align 4
  %add1580 = add i32 %add1488, %add1575
  %temp11581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add1580, i32* %temp11581, align 4
  %A1582 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1583 = getelementptr inbounds [8 x i32], [8 x i32]* %A1582, i64 0, i64 5
  %461 = load i32, i32* %arrayidx1583, align 4
  %and1584 = and i32 %461, -1
  %shr1585 = lshr i32 %and1584, 2
  %A1586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1587 = getelementptr inbounds [8 x i32], [8 x i32]* %A1586, i64 0, i64 5
  %462 = load i32, i32* %arrayidx1587, align 4
  %shl1588 = shl i32 %462, 30
  %or1589 = or i32 %shr1585, %shl1588
  %A1590 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1591 = getelementptr inbounds [8 x i32], [8 x i32]* %A1590, i64 0, i64 5
  %463 = load i32, i32* %arrayidx1591, align 4
  %and1592 = and i32 %463, -1
  %shr1593 = lshr i32 %and1592, 13
  %A1594 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1595 = getelementptr inbounds [8 x i32], [8 x i32]* %A1594, i64 0, i64 5
  %464 = load i32, i32* %arrayidx1595, align 4
  %shl1596 = shl i32 %464, 19
  %or1597 = or i32 %shr1593, %shl1596
  %xor1598 = xor i32 %or1589, %or1597
  %A1599 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1600 = getelementptr inbounds [8 x i32], [8 x i32]* %A1599, i64 0, i64 5
  %465 = load i32, i32* %arrayidx1600, align 4
  %and1601 = and i32 %465, -1
  %shr1602 = lshr i32 %and1601, 22
  %A1603 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1604 = getelementptr inbounds [8 x i32], [8 x i32]* %A1603, i64 0, i64 5
  %466 = load i32, i32* %arrayidx1604, align 4
  %shl1605 = shl i32 %466, 10
  %or1606 = or i32 %shr1602, %shl1605
  %xor1607 = xor i32 %xor1598, %or1606
  %A1608 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1609 = getelementptr inbounds [8 x i32], [8 x i32]* %A1608, i64 0, i64 5
  %467 = load i32, i32* %arrayidx1609, align 4
  %A1610 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1611 = getelementptr inbounds [8 x i32], [8 x i32]* %A1610, i64 0, i64 6
  %468 = load i32, i32* %arrayidx1611, align 4
  %and1612 = and i32 %467, %468
  %A1613 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1614 = getelementptr inbounds [8 x i32], [8 x i32]* %A1613, i64 0, i64 7
  %469 = load i32, i32* %arrayidx1614, align 4
  %A1615 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1616 = getelementptr inbounds [8 x i32], [8 x i32]* %A1615, i64 0, i64 5
  %470 = load i32, i32* %arrayidx1616, align 4
  %A1617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1618 = getelementptr inbounds [8 x i32], [8 x i32]* %A1617, i64 0, i64 6
  %471 = load i32, i32* %arrayidx1618, align 4
  %or1619 = or i32 %470, %471
  %and1620 = and i32 %469, %or1619
  %or1621 = or i32 %and1612, %and1620
  %add1622 = add i32 %xor1607, %or1621
  %temp21623 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1622, i32* %temp21623, align 4
  %temp11624 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %472 = load i32, i32* %temp11624, align 4
  %A1625 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1626 = getelementptr inbounds [8 x i32], [8 x i32]* %A1625, i64 0, i64 0
  %473 = load i32, i32* %arrayidx1626, align 4
  %add1627 = add i32 %473, %472
  store i32 %add1627, i32* %arrayidx1626, align 4
  %temp11628 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %474 = load i32, i32* %temp11628, align 4
  %temp21629 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %475 = load i32, i32* %temp21629, align 4
  %add1630 = add i32 %474, %475
  %A1631 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1632 = getelementptr inbounds [8 x i32], [8 x i32]* %A1631, i64 0, i64 4
  store i32 %add1630, i32* %arrayidx1632, align 4
  br label %do.end1633

do.end1633:                                       ; preds = %do.body1443
  br label %do.body1634

do.body1634:                                      ; preds = %do.end1633
  %A1635 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1636 = getelementptr inbounds [8 x i32], [8 x i32]* %A1635, i64 0, i64 3
  %476 = load i32, i32* %arrayidx1636, align 4
  %A1637 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1638 = getelementptr inbounds [8 x i32], [8 x i32]* %A1637, i64 0, i64 0
  %477 = load i32, i32* %arrayidx1638, align 4
  %and1639 = and i32 %477, -1
  %shr1640 = lshr i32 %and1639, 6
  %A1641 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1642 = getelementptr inbounds [8 x i32], [8 x i32]* %A1641, i64 0, i64 0
  %478 = load i32, i32* %arrayidx1642, align 4
  %shl1643 = shl i32 %478, 26
  %or1644 = or i32 %shr1640, %shl1643
  %A1645 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1646 = getelementptr inbounds [8 x i32], [8 x i32]* %A1645, i64 0, i64 0
  %479 = load i32, i32* %arrayidx1646, align 4
  %and1647 = and i32 %479, -1
  %shr1648 = lshr i32 %and1647, 11
  %A1649 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1650 = getelementptr inbounds [8 x i32], [8 x i32]* %A1649, i64 0, i64 0
  %480 = load i32, i32* %arrayidx1650, align 4
  %shl1651 = shl i32 %480, 21
  %or1652 = or i32 %shr1648, %shl1651
  %xor1653 = xor i32 %or1644, %or1652
  %A1654 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1655 = getelementptr inbounds [8 x i32], [8 x i32]* %A1654, i64 0, i64 0
  %481 = load i32, i32* %arrayidx1655, align 4
  %and1656 = and i32 %481, -1
  %shr1657 = lshr i32 %and1656, 25
  %A1658 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1659 = getelementptr inbounds [8 x i32], [8 x i32]* %A1658, i64 0, i64 0
  %482 = load i32, i32* %arrayidx1659, align 4
  %shl1660 = shl i32 %482, 7
  %or1661 = or i32 %shr1657, %shl1660
  %xor1662 = xor i32 %xor1653, %or1661
  %add1663 = add i32 %476, %xor1662
  %A1664 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1665 = getelementptr inbounds [8 x i32], [8 x i32]* %A1664, i64 0, i64 2
  %483 = load i32, i32* %arrayidx1665, align 4
  %A1666 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1667 = getelementptr inbounds [8 x i32], [8 x i32]* %A1666, i64 0, i64 0
  %484 = load i32, i32* %arrayidx1667, align 4
  %A1668 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1669 = getelementptr inbounds [8 x i32], [8 x i32]* %A1668, i64 0, i64 1
  %485 = load i32, i32* %arrayidx1669, align 4
  %A1670 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1671 = getelementptr inbounds [8 x i32], [8 x i32]* %A1670, i64 0, i64 2
  %486 = load i32, i32* %arrayidx1671, align 4
  %xor1672 = xor i32 %485, %486
  %and1673 = and i32 %484, %xor1672
  %xor1674 = xor i32 %483, %and1673
  %add1675 = add i32 %add1663, %xor1674
  %487 = load i32, i32* %i, align 4
  %add1676 = add i32 %487, 4
  %idxprom1677 = zext i32 %add1676 to i64
  %arrayidx1678 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom1677
  %488 = load i32, i32* %arrayidx1678, align 4
  %add1679 = add i32 %add1675, %488
  %W1680 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %489 = load i32, i32* %i, align 4
  %add1681 = add i32 %489, 4
  %sub1682 = sub i32 %add1681, 2
  %idxprom1683 = zext i32 %sub1682 to i64
  %arrayidx1684 = getelementptr inbounds [64 x i32], [64 x i32]* %W1680, i64 0, i64 %idxprom1683
  %490 = load i32, i32* %arrayidx1684, align 4
  %and1685 = and i32 %490, -1
  %shr1686 = lshr i32 %and1685, 17
  %W1687 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %491 = load i32, i32* %i, align 4
  %add1688 = add i32 %491, 4
  %sub1689 = sub i32 %add1688, 2
  %idxprom1690 = zext i32 %sub1689 to i64
  %arrayidx1691 = getelementptr inbounds [64 x i32], [64 x i32]* %W1687, i64 0, i64 %idxprom1690
  %492 = load i32, i32* %arrayidx1691, align 4
  %shl1692 = shl i32 %492, 15
  %or1693 = or i32 %shr1686, %shl1692
  %W1694 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %493 = load i32, i32* %i, align 4
  %add1695 = add i32 %493, 4
  %sub1696 = sub i32 %add1695, 2
  %idxprom1697 = zext i32 %sub1696 to i64
  %arrayidx1698 = getelementptr inbounds [64 x i32], [64 x i32]* %W1694, i64 0, i64 %idxprom1697
  %494 = load i32, i32* %arrayidx1698, align 4
  %and1699 = and i32 %494, -1
  %shr1700 = lshr i32 %and1699, 19
  %W1701 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %495 = load i32, i32* %i, align 4
  %add1702 = add i32 %495, 4
  %sub1703 = sub i32 %add1702, 2
  %idxprom1704 = zext i32 %sub1703 to i64
  %arrayidx1705 = getelementptr inbounds [64 x i32], [64 x i32]* %W1701, i64 0, i64 %idxprom1704
  %496 = load i32, i32* %arrayidx1705, align 4
  %shl1706 = shl i32 %496, 13
  %or1707 = or i32 %shr1700, %shl1706
  %xor1708 = xor i32 %or1693, %or1707
  %W1709 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %497 = load i32, i32* %i, align 4
  %add1710 = add i32 %497, 4
  %sub1711 = sub i32 %add1710, 2
  %idxprom1712 = zext i32 %sub1711 to i64
  %arrayidx1713 = getelementptr inbounds [64 x i32], [64 x i32]* %W1709, i64 0, i64 %idxprom1712
  %498 = load i32, i32* %arrayidx1713, align 4
  %and1714 = and i32 %498, -1
  %shr1715 = lshr i32 %and1714, 10
  %xor1716 = xor i32 %xor1708, %shr1715
  %W1717 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %499 = load i32, i32* %i, align 4
  %add1718 = add i32 %499, 4
  %sub1719 = sub i32 %add1718, 7
  %idxprom1720 = zext i32 %sub1719 to i64
  %arrayidx1721 = getelementptr inbounds [64 x i32], [64 x i32]* %W1717, i64 0, i64 %idxprom1720
  %500 = load i32, i32* %arrayidx1721, align 4
  %add1722 = add i32 %xor1716, %500
  %W1723 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %501 = load i32, i32* %i, align 4
  %add1724 = add i32 %501, 4
  %sub1725 = sub i32 %add1724, 15
  %idxprom1726 = zext i32 %sub1725 to i64
  %arrayidx1727 = getelementptr inbounds [64 x i32], [64 x i32]* %W1723, i64 0, i64 %idxprom1726
  %502 = load i32, i32* %arrayidx1727, align 4
  %and1728 = and i32 %502, -1
  %shr1729 = lshr i32 %and1728, 7
  %W1730 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %503 = load i32, i32* %i, align 4
  %add1731 = add i32 %503, 4
  %sub1732 = sub i32 %add1731, 15
  %idxprom1733 = zext i32 %sub1732 to i64
  %arrayidx1734 = getelementptr inbounds [64 x i32], [64 x i32]* %W1730, i64 0, i64 %idxprom1733
  %504 = load i32, i32* %arrayidx1734, align 4
  %shl1735 = shl i32 %504, 25
  %or1736 = or i32 %shr1729, %shl1735
  %W1737 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %505 = load i32, i32* %i, align 4
  %add1738 = add i32 %505, 4
  %sub1739 = sub i32 %add1738, 15
  %idxprom1740 = zext i32 %sub1739 to i64
  %arrayidx1741 = getelementptr inbounds [64 x i32], [64 x i32]* %W1737, i64 0, i64 %idxprom1740
  %506 = load i32, i32* %arrayidx1741, align 4
  %and1742 = and i32 %506, -1
  %shr1743 = lshr i32 %and1742, 18
  %W1744 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %507 = load i32, i32* %i, align 4
  %add1745 = add i32 %507, 4
  %sub1746 = sub i32 %add1745, 15
  %idxprom1747 = zext i32 %sub1746 to i64
  %arrayidx1748 = getelementptr inbounds [64 x i32], [64 x i32]* %W1744, i64 0, i64 %idxprom1747
  %508 = load i32, i32* %arrayidx1748, align 4
  %shl1749 = shl i32 %508, 14
  %or1750 = or i32 %shr1743, %shl1749
  %xor1751 = xor i32 %or1736, %or1750
  %W1752 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %509 = load i32, i32* %i, align 4
  %add1753 = add i32 %509, 4
  %sub1754 = sub i32 %add1753, 15
  %idxprom1755 = zext i32 %sub1754 to i64
  %arrayidx1756 = getelementptr inbounds [64 x i32], [64 x i32]* %W1752, i64 0, i64 %idxprom1755
  %510 = load i32, i32* %arrayidx1756, align 4
  %and1757 = and i32 %510, -1
  %shr1758 = lshr i32 %and1757, 3
  %xor1759 = xor i32 %xor1751, %shr1758
  %add1760 = add i32 %add1722, %xor1759
  %W1761 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %511 = load i32, i32* %i, align 4
  %add1762 = add i32 %511, 4
  %sub1763 = sub i32 %add1762, 16
  %idxprom1764 = zext i32 %sub1763 to i64
  %arrayidx1765 = getelementptr inbounds [64 x i32], [64 x i32]* %W1761, i64 0, i64 %idxprom1764
  %512 = load i32, i32* %arrayidx1765, align 4
  %add1766 = add i32 %add1760, %512
  %W1767 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %513 = load i32, i32* %i, align 4
  %add1768 = add i32 %513, 4
  %idxprom1769 = zext i32 %add1768 to i64
  %arrayidx1770 = getelementptr inbounds [64 x i32], [64 x i32]* %W1767, i64 0, i64 %idxprom1769
  store i32 %add1766, i32* %arrayidx1770, align 4
  %add1771 = add i32 %add1679, %add1766
  %temp11772 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add1771, i32* %temp11772, align 4
  %A1773 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1774 = getelementptr inbounds [8 x i32], [8 x i32]* %A1773, i64 0, i64 4
  %514 = load i32, i32* %arrayidx1774, align 4
  %and1775 = and i32 %514, -1
  %shr1776 = lshr i32 %and1775, 2
  %A1777 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1778 = getelementptr inbounds [8 x i32], [8 x i32]* %A1777, i64 0, i64 4
  %515 = load i32, i32* %arrayidx1778, align 4
  %shl1779 = shl i32 %515, 30
  %or1780 = or i32 %shr1776, %shl1779
  %A1781 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1782 = getelementptr inbounds [8 x i32], [8 x i32]* %A1781, i64 0, i64 4
  %516 = load i32, i32* %arrayidx1782, align 4
  %and1783 = and i32 %516, -1
  %shr1784 = lshr i32 %and1783, 13
  %A1785 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1786 = getelementptr inbounds [8 x i32], [8 x i32]* %A1785, i64 0, i64 4
  %517 = load i32, i32* %arrayidx1786, align 4
  %shl1787 = shl i32 %517, 19
  %or1788 = or i32 %shr1784, %shl1787
  %xor1789 = xor i32 %or1780, %or1788
  %A1790 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1791 = getelementptr inbounds [8 x i32], [8 x i32]* %A1790, i64 0, i64 4
  %518 = load i32, i32* %arrayidx1791, align 4
  %and1792 = and i32 %518, -1
  %shr1793 = lshr i32 %and1792, 22
  %A1794 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1795 = getelementptr inbounds [8 x i32], [8 x i32]* %A1794, i64 0, i64 4
  %519 = load i32, i32* %arrayidx1795, align 4
  %shl1796 = shl i32 %519, 10
  %or1797 = or i32 %shr1793, %shl1796
  %xor1798 = xor i32 %xor1789, %or1797
  %A1799 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1800 = getelementptr inbounds [8 x i32], [8 x i32]* %A1799, i64 0, i64 4
  %520 = load i32, i32* %arrayidx1800, align 4
  %A1801 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1802 = getelementptr inbounds [8 x i32], [8 x i32]* %A1801, i64 0, i64 5
  %521 = load i32, i32* %arrayidx1802, align 4
  %and1803 = and i32 %520, %521
  %A1804 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1805 = getelementptr inbounds [8 x i32], [8 x i32]* %A1804, i64 0, i64 6
  %522 = load i32, i32* %arrayidx1805, align 4
  %A1806 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1807 = getelementptr inbounds [8 x i32], [8 x i32]* %A1806, i64 0, i64 4
  %523 = load i32, i32* %arrayidx1807, align 4
  %A1808 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1809 = getelementptr inbounds [8 x i32], [8 x i32]* %A1808, i64 0, i64 5
  %524 = load i32, i32* %arrayidx1809, align 4
  %or1810 = or i32 %523, %524
  %and1811 = and i32 %522, %or1810
  %or1812 = or i32 %and1803, %and1811
  %add1813 = add i32 %xor1798, %or1812
  %temp21814 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1813, i32* %temp21814, align 4
  %temp11815 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %525 = load i32, i32* %temp11815, align 4
  %A1816 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1817 = getelementptr inbounds [8 x i32], [8 x i32]* %A1816, i64 0, i64 7
  %526 = load i32, i32* %arrayidx1817, align 4
  %add1818 = add i32 %526, %525
  store i32 %add1818, i32* %arrayidx1817, align 4
  %temp11819 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %527 = load i32, i32* %temp11819, align 4
  %temp21820 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %528 = load i32, i32* %temp21820, align 4
  %add1821 = add i32 %527, %528
  %A1822 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1823 = getelementptr inbounds [8 x i32], [8 x i32]* %A1822, i64 0, i64 3
  store i32 %add1821, i32* %arrayidx1823, align 4
  br label %do.end1824

do.end1824:                                       ; preds = %do.body1634
  br label %do.body1825

do.body1825:                                      ; preds = %do.end1824
  %A1826 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1827 = getelementptr inbounds [8 x i32], [8 x i32]* %A1826, i64 0, i64 2
  %529 = load i32, i32* %arrayidx1827, align 4
  %A1828 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1829 = getelementptr inbounds [8 x i32], [8 x i32]* %A1828, i64 0, i64 7
  %530 = load i32, i32* %arrayidx1829, align 4
  %and1830 = and i32 %530, -1
  %shr1831 = lshr i32 %and1830, 6
  %A1832 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1833 = getelementptr inbounds [8 x i32], [8 x i32]* %A1832, i64 0, i64 7
  %531 = load i32, i32* %arrayidx1833, align 4
  %shl1834 = shl i32 %531, 26
  %or1835 = or i32 %shr1831, %shl1834
  %A1836 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1837 = getelementptr inbounds [8 x i32], [8 x i32]* %A1836, i64 0, i64 7
  %532 = load i32, i32* %arrayidx1837, align 4
  %and1838 = and i32 %532, -1
  %shr1839 = lshr i32 %and1838, 11
  %A1840 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1841 = getelementptr inbounds [8 x i32], [8 x i32]* %A1840, i64 0, i64 7
  %533 = load i32, i32* %arrayidx1841, align 4
  %shl1842 = shl i32 %533, 21
  %or1843 = or i32 %shr1839, %shl1842
  %xor1844 = xor i32 %or1835, %or1843
  %A1845 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1846 = getelementptr inbounds [8 x i32], [8 x i32]* %A1845, i64 0, i64 7
  %534 = load i32, i32* %arrayidx1846, align 4
  %and1847 = and i32 %534, -1
  %shr1848 = lshr i32 %and1847, 25
  %A1849 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1850 = getelementptr inbounds [8 x i32], [8 x i32]* %A1849, i64 0, i64 7
  %535 = load i32, i32* %arrayidx1850, align 4
  %shl1851 = shl i32 %535, 7
  %or1852 = or i32 %shr1848, %shl1851
  %xor1853 = xor i32 %xor1844, %or1852
  %add1854 = add i32 %529, %xor1853
  %A1855 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1856 = getelementptr inbounds [8 x i32], [8 x i32]* %A1855, i64 0, i64 1
  %536 = load i32, i32* %arrayidx1856, align 4
  %A1857 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1858 = getelementptr inbounds [8 x i32], [8 x i32]* %A1857, i64 0, i64 7
  %537 = load i32, i32* %arrayidx1858, align 4
  %A1859 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1860 = getelementptr inbounds [8 x i32], [8 x i32]* %A1859, i64 0, i64 0
  %538 = load i32, i32* %arrayidx1860, align 4
  %A1861 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1862 = getelementptr inbounds [8 x i32], [8 x i32]* %A1861, i64 0, i64 1
  %539 = load i32, i32* %arrayidx1862, align 4
  %xor1863 = xor i32 %538, %539
  %and1864 = and i32 %537, %xor1863
  %xor1865 = xor i32 %536, %and1864
  %add1866 = add i32 %add1854, %xor1865
  %540 = load i32, i32* %i, align 4
  %add1867 = add i32 %540, 5
  %idxprom1868 = zext i32 %add1867 to i64
  %arrayidx1869 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom1868
  %541 = load i32, i32* %arrayidx1869, align 4
  %add1870 = add i32 %add1866, %541
  %W1871 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %542 = load i32, i32* %i, align 4
  %add1872 = add i32 %542, 5
  %sub1873 = sub i32 %add1872, 2
  %idxprom1874 = zext i32 %sub1873 to i64
  %arrayidx1875 = getelementptr inbounds [64 x i32], [64 x i32]* %W1871, i64 0, i64 %idxprom1874
  %543 = load i32, i32* %arrayidx1875, align 4
  %and1876 = and i32 %543, -1
  %shr1877 = lshr i32 %and1876, 17
  %W1878 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %544 = load i32, i32* %i, align 4
  %add1879 = add i32 %544, 5
  %sub1880 = sub i32 %add1879, 2
  %idxprom1881 = zext i32 %sub1880 to i64
  %arrayidx1882 = getelementptr inbounds [64 x i32], [64 x i32]* %W1878, i64 0, i64 %idxprom1881
  %545 = load i32, i32* %arrayidx1882, align 4
  %shl1883 = shl i32 %545, 15
  %or1884 = or i32 %shr1877, %shl1883
  %W1885 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %546 = load i32, i32* %i, align 4
  %add1886 = add i32 %546, 5
  %sub1887 = sub i32 %add1886, 2
  %idxprom1888 = zext i32 %sub1887 to i64
  %arrayidx1889 = getelementptr inbounds [64 x i32], [64 x i32]* %W1885, i64 0, i64 %idxprom1888
  %547 = load i32, i32* %arrayidx1889, align 4
  %and1890 = and i32 %547, -1
  %shr1891 = lshr i32 %and1890, 19
  %W1892 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %548 = load i32, i32* %i, align 4
  %add1893 = add i32 %548, 5
  %sub1894 = sub i32 %add1893, 2
  %idxprom1895 = zext i32 %sub1894 to i64
  %arrayidx1896 = getelementptr inbounds [64 x i32], [64 x i32]* %W1892, i64 0, i64 %idxprom1895
  %549 = load i32, i32* %arrayidx1896, align 4
  %shl1897 = shl i32 %549, 13
  %or1898 = or i32 %shr1891, %shl1897
  %xor1899 = xor i32 %or1884, %or1898
  %W1900 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %550 = load i32, i32* %i, align 4
  %add1901 = add i32 %550, 5
  %sub1902 = sub i32 %add1901, 2
  %idxprom1903 = zext i32 %sub1902 to i64
  %arrayidx1904 = getelementptr inbounds [64 x i32], [64 x i32]* %W1900, i64 0, i64 %idxprom1903
  %551 = load i32, i32* %arrayidx1904, align 4
  %and1905 = and i32 %551, -1
  %shr1906 = lshr i32 %and1905, 10
  %xor1907 = xor i32 %xor1899, %shr1906
  %W1908 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %552 = load i32, i32* %i, align 4
  %add1909 = add i32 %552, 5
  %sub1910 = sub i32 %add1909, 7
  %idxprom1911 = zext i32 %sub1910 to i64
  %arrayidx1912 = getelementptr inbounds [64 x i32], [64 x i32]* %W1908, i64 0, i64 %idxprom1911
  %553 = load i32, i32* %arrayidx1912, align 4
  %add1913 = add i32 %xor1907, %553
  %W1914 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %554 = load i32, i32* %i, align 4
  %add1915 = add i32 %554, 5
  %sub1916 = sub i32 %add1915, 15
  %idxprom1917 = zext i32 %sub1916 to i64
  %arrayidx1918 = getelementptr inbounds [64 x i32], [64 x i32]* %W1914, i64 0, i64 %idxprom1917
  %555 = load i32, i32* %arrayidx1918, align 4
  %and1919 = and i32 %555, -1
  %shr1920 = lshr i32 %and1919, 7
  %W1921 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %556 = load i32, i32* %i, align 4
  %add1922 = add i32 %556, 5
  %sub1923 = sub i32 %add1922, 15
  %idxprom1924 = zext i32 %sub1923 to i64
  %arrayidx1925 = getelementptr inbounds [64 x i32], [64 x i32]* %W1921, i64 0, i64 %idxprom1924
  %557 = load i32, i32* %arrayidx1925, align 4
  %shl1926 = shl i32 %557, 25
  %or1927 = or i32 %shr1920, %shl1926
  %W1928 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %558 = load i32, i32* %i, align 4
  %add1929 = add i32 %558, 5
  %sub1930 = sub i32 %add1929, 15
  %idxprom1931 = zext i32 %sub1930 to i64
  %arrayidx1932 = getelementptr inbounds [64 x i32], [64 x i32]* %W1928, i64 0, i64 %idxprom1931
  %559 = load i32, i32* %arrayidx1932, align 4
  %and1933 = and i32 %559, -1
  %shr1934 = lshr i32 %and1933, 18
  %W1935 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %560 = load i32, i32* %i, align 4
  %add1936 = add i32 %560, 5
  %sub1937 = sub i32 %add1936, 15
  %idxprom1938 = zext i32 %sub1937 to i64
  %arrayidx1939 = getelementptr inbounds [64 x i32], [64 x i32]* %W1935, i64 0, i64 %idxprom1938
  %561 = load i32, i32* %arrayidx1939, align 4
  %shl1940 = shl i32 %561, 14
  %or1941 = or i32 %shr1934, %shl1940
  %xor1942 = xor i32 %or1927, %or1941
  %W1943 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %562 = load i32, i32* %i, align 4
  %add1944 = add i32 %562, 5
  %sub1945 = sub i32 %add1944, 15
  %idxprom1946 = zext i32 %sub1945 to i64
  %arrayidx1947 = getelementptr inbounds [64 x i32], [64 x i32]* %W1943, i64 0, i64 %idxprom1946
  %563 = load i32, i32* %arrayidx1947, align 4
  %and1948 = and i32 %563, -1
  %shr1949 = lshr i32 %and1948, 3
  %xor1950 = xor i32 %xor1942, %shr1949
  %add1951 = add i32 %add1913, %xor1950
  %W1952 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %564 = load i32, i32* %i, align 4
  %add1953 = add i32 %564, 5
  %sub1954 = sub i32 %add1953, 16
  %idxprom1955 = zext i32 %sub1954 to i64
  %arrayidx1956 = getelementptr inbounds [64 x i32], [64 x i32]* %W1952, i64 0, i64 %idxprom1955
  %565 = load i32, i32* %arrayidx1956, align 4
  %add1957 = add i32 %add1951, %565
  %W1958 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %566 = load i32, i32* %i, align 4
  %add1959 = add i32 %566, 5
  %idxprom1960 = zext i32 %add1959 to i64
  %arrayidx1961 = getelementptr inbounds [64 x i32], [64 x i32]* %W1958, i64 0, i64 %idxprom1960
  store i32 %add1957, i32* %arrayidx1961, align 4
  %add1962 = add i32 %add1870, %add1957
  %temp11963 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add1962, i32* %temp11963, align 4
  %A1964 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1965 = getelementptr inbounds [8 x i32], [8 x i32]* %A1964, i64 0, i64 3
  %567 = load i32, i32* %arrayidx1965, align 4
  %and1966 = and i32 %567, -1
  %shr1967 = lshr i32 %and1966, 2
  %A1968 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1969 = getelementptr inbounds [8 x i32], [8 x i32]* %A1968, i64 0, i64 3
  %568 = load i32, i32* %arrayidx1969, align 4
  %shl1970 = shl i32 %568, 30
  %or1971 = or i32 %shr1967, %shl1970
  %A1972 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1973 = getelementptr inbounds [8 x i32], [8 x i32]* %A1972, i64 0, i64 3
  %569 = load i32, i32* %arrayidx1973, align 4
  %and1974 = and i32 %569, -1
  %shr1975 = lshr i32 %and1974, 13
  %A1976 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1977 = getelementptr inbounds [8 x i32], [8 x i32]* %A1976, i64 0, i64 3
  %570 = load i32, i32* %arrayidx1977, align 4
  %shl1978 = shl i32 %570, 19
  %or1979 = or i32 %shr1975, %shl1978
  %xor1980 = xor i32 %or1971, %or1979
  %A1981 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1982 = getelementptr inbounds [8 x i32], [8 x i32]* %A1981, i64 0, i64 3
  %571 = load i32, i32* %arrayidx1982, align 4
  %and1983 = and i32 %571, -1
  %shr1984 = lshr i32 %and1983, 22
  %A1985 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1986 = getelementptr inbounds [8 x i32], [8 x i32]* %A1985, i64 0, i64 3
  %572 = load i32, i32* %arrayidx1986, align 4
  %shl1987 = shl i32 %572, 10
  %or1988 = or i32 %shr1984, %shl1987
  %xor1989 = xor i32 %xor1980, %or1988
  %A1990 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1991 = getelementptr inbounds [8 x i32], [8 x i32]* %A1990, i64 0, i64 3
  %573 = load i32, i32* %arrayidx1991, align 4
  %A1992 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1993 = getelementptr inbounds [8 x i32], [8 x i32]* %A1992, i64 0, i64 4
  %574 = load i32, i32* %arrayidx1993, align 4
  %and1994 = and i32 %573, %574
  %A1995 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1996 = getelementptr inbounds [8 x i32], [8 x i32]* %A1995, i64 0, i64 5
  %575 = load i32, i32* %arrayidx1996, align 4
  %A1997 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx1998 = getelementptr inbounds [8 x i32], [8 x i32]* %A1997, i64 0, i64 3
  %576 = load i32, i32* %arrayidx1998, align 4
  %A1999 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2000 = getelementptr inbounds [8 x i32], [8 x i32]* %A1999, i64 0, i64 4
  %577 = load i32, i32* %arrayidx2000, align 4
  %or2001 = or i32 %576, %577
  %and2002 = and i32 %575, %or2001
  %or2003 = or i32 %and1994, %and2002
  %add2004 = add i32 %xor1989, %or2003
  %temp22005 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add2004, i32* %temp22005, align 4
  %temp12006 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %578 = load i32, i32* %temp12006, align 4
  %A2007 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2008 = getelementptr inbounds [8 x i32], [8 x i32]* %A2007, i64 0, i64 6
  %579 = load i32, i32* %arrayidx2008, align 4
  %add2009 = add i32 %579, %578
  store i32 %add2009, i32* %arrayidx2008, align 4
  %temp12010 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %580 = load i32, i32* %temp12010, align 4
  %temp22011 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %581 = load i32, i32* %temp22011, align 4
  %add2012 = add i32 %580, %581
  %A2013 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2014 = getelementptr inbounds [8 x i32], [8 x i32]* %A2013, i64 0, i64 2
  store i32 %add2012, i32* %arrayidx2014, align 4
  br label %do.end2015

do.end2015:                                       ; preds = %do.body1825
  br label %do.body2016

do.body2016:                                      ; preds = %do.end2015
  %A2017 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2018 = getelementptr inbounds [8 x i32], [8 x i32]* %A2017, i64 0, i64 1
  %582 = load i32, i32* %arrayidx2018, align 4
  %A2019 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2020 = getelementptr inbounds [8 x i32], [8 x i32]* %A2019, i64 0, i64 6
  %583 = load i32, i32* %arrayidx2020, align 4
  %and2021 = and i32 %583, -1
  %shr2022 = lshr i32 %and2021, 6
  %A2023 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2024 = getelementptr inbounds [8 x i32], [8 x i32]* %A2023, i64 0, i64 6
  %584 = load i32, i32* %arrayidx2024, align 4
  %shl2025 = shl i32 %584, 26
  %or2026 = or i32 %shr2022, %shl2025
  %A2027 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2028 = getelementptr inbounds [8 x i32], [8 x i32]* %A2027, i64 0, i64 6
  %585 = load i32, i32* %arrayidx2028, align 4
  %and2029 = and i32 %585, -1
  %shr2030 = lshr i32 %and2029, 11
  %A2031 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2032 = getelementptr inbounds [8 x i32], [8 x i32]* %A2031, i64 0, i64 6
  %586 = load i32, i32* %arrayidx2032, align 4
  %shl2033 = shl i32 %586, 21
  %or2034 = or i32 %shr2030, %shl2033
  %xor2035 = xor i32 %or2026, %or2034
  %A2036 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2037 = getelementptr inbounds [8 x i32], [8 x i32]* %A2036, i64 0, i64 6
  %587 = load i32, i32* %arrayidx2037, align 4
  %and2038 = and i32 %587, -1
  %shr2039 = lshr i32 %and2038, 25
  %A2040 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2041 = getelementptr inbounds [8 x i32], [8 x i32]* %A2040, i64 0, i64 6
  %588 = load i32, i32* %arrayidx2041, align 4
  %shl2042 = shl i32 %588, 7
  %or2043 = or i32 %shr2039, %shl2042
  %xor2044 = xor i32 %xor2035, %or2043
  %add2045 = add i32 %582, %xor2044
  %A2046 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2047 = getelementptr inbounds [8 x i32], [8 x i32]* %A2046, i64 0, i64 0
  %589 = load i32, i32* %arrayidx2047, align 4
  %A2048 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2049 = getelementptr inbounds [8 x i32], [8 x i32]* %A2048, i64 0, i64 6
  %590 = load i32, i32* %arrayidx2049, align 4
  %A2050 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2051 = getelementptr inbounds [8 x i32], [8 x i32]* %A2050, i64 0, i64 7
  %591 = load i32, i32* %arrayidx2051, align 4
  %A2052 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2053 = getelementptr inbounds [8 x i32], [8 x i32]* %A2052, i64 0, i64 0
  %592 = load i32, i32* %arrayidx2053, align 4
  %xor2054 = xor i32 %591, %592
  %and2055 = and i32 %590, %xor2054
  %xor2056 = xor i32 %589, %and2055
  %add2057 = add i32 %add2045, %xor2056
  %593 = load i32, i32* %i, align 4
  %add2058 = add i32 %593, 6
  %idxprom2059 = zext i32 %add2058 to i64
  %arrayidx2060 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom2059
  %594 = load i32, i32* %arrayidx2060, align 4
  %add2061 = add i32 %add2057, %594
  %W2062 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %595 = load i32, i32* %i, align 4
  %add2063 = add i32 %595, 6
  %sub2064 = sub i32 %add2063, 2
  %idxprom2065 = zext i32 %sub2064 to i64
  %arrayidx2066 = getelementptr inbounds [64 x i32], [64 x i32]* %W2062, i64 0, i64 %idxprom2065
  %596 = load i32, i32* %arrayidx2066, align 4
  %and2067 = and i32 %596, -1
  %shr2068 = lshr i32 %and2067, 17
  %W2069 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %597 = load i32, i32* %i, align 4
  %add2070 = add i32 %597, 6
  %sub2071 = sub i32 %add2070, 2
  %idxprom2072 = zext i32 %sub2071 to i64
  %arrayidx2073 = getelementptr inbounds [64 x i32], [64 x i32]* %W2069, i64 0, i64 %idxprom2072
  %598 = load i32, i32* %arrayidx2073, align 4
  %shl2074 = shl i32 %598, 15
  %or2075 = or i32 %shr2068, %shl2074
  %W2076 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %599 = load i32, i32* %i, align 4
  %add2077 = add i32 %599, 6
  %sub2078 = sub i32 %add2077, 2
  %idxprom2079 = zext i32 %sub2078 to i64
  %arrayidx2080 = getelementptr inbounds [64 x i32], [64 x i32]* %W2076, i64 0, i64 %idxprom2079
  %600 = load i32, i32* %arrayidx2080, align 4
  %and2081 = and i32 %600, -1
  %shr2082 = lshr i32 %and2081, 19
  %W2083 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %601 = load i32, i32* %i, align 4
  %add2084 = add i32 %601, 6
  %sub2085 = sub i32 %add2084, 2
  %idxprom2086 = zext i32 %sub2085 to i64
  %arrayidx2087 = getelementptr inbounds [64 x i32], [64 x i32]* %W2083, i64 0, i64 %idxprom2086
  %602 = load i32, i32* %arrayidx2087, align 4
  %shl2088 = shl i32 %602, 13
  %or2089 = or i32 %shr2082, %shl2088
  %xor2090 = xor i32 %or2075, %or2089
  %W2091 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %603 = load i32, i32* %i, align 4
  %add2092 = add i32 %603, 6
  %sub2093 = sub i32 %add2092, 2
  %idxprom2094 = zext i32 %sub2093 to i64
  %arrayidx2095 = getelementptr inbounds [64 x i32], [64 x i32]* %W2091, i64 0, i64 %idxprom2094
  %604 = load i32, i32* %arrayidx2095, align 4
  %and2096 = and i32 %604, -1
  %shr2097 = lshr i32 %and2096, 10
  %xor2098 = xor i32 %xor2090, %shr2097
  %W2099 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %605 = load i32, i32* %i, align 4
  %add2100 = add i32 %605, 6
  %sub2101 = sub i32 %add2100, 7
  %idxprom2102 = zext i32 %sub2101 to i64
  %arrayidx2103 = getelementptr inbounds [64 x i32], [64 x i32]* %W2099, i64 0, i64 %idxprom2102
  %606 = load i32, i32* %arrayidx2103, align 4
  %add2104 = add i32 %xor2098, %606
  %W2105 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %607 = load i32, i32* %i, align 4
  %add2106 = add i32 %607, 6
  %sub2107 = sub i32 %add2106, 15
  %idxprom2108 = zext i32 %sub2107 to i64
  %arrayidx2109 = getelementptr inbounds [64 x i32], [64 x i32]* %W2105, i64 0, i64 %idxprom2108
  %608 = load i32, i32* %arrayidx2109, align 4
  %and2110 = and i32 %608, -1
  %shr2111 = lshr i32 %and2110, 7
  %W2112 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %609 = load i32, i32* %i, align 4
  %add2113 = add i32 %609, 6
  %sub2114 = sub i32 %add2113, 15
  %idxprom2115 = zext i32 %sub2114 to i64
  %arrayidx2116 = getelementptr inbounds [64 x i32], [64 x i32]* %W2112, i64 0, i64 %idxprom2115
  %610 = load i32, i32* %arrayidx2116, align 4
  %shl2117 = shl i32 %610, 25
  %or2118 = or i32 %shr2111, %shl2117
  %W2119 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %611 = load i32, i32* %i, align 4
  %add2120 = add i32 %611, 6
  %sub2121 = sub i32 %add2120, 15
  %idxprom2122 = zext i32 %sub2121 to i64
  %arrayidx2123 = getelementptr inbounds [64 x i32], [64 x i32]* %W2119, i64 0, i64 %idxprom2122
  %612 = load i32, i32* %arrayidx2123, align 4
  %and2124 = and i32 %612, -1
  %shr2125 = lshr i32 %and2124, 18
  %W2126 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %613 = load i32, i32* %i, align 4
  %add2127 = add i32 %613, 6
  %sub2128 = sub i32 %add2127, 15
  %idxprom2129 = zext i32 %sub2128 to i64
  %arrayidx2130 = getelementptr inbounds [64 x i32], [64 x i32]* %W2126, i64 0, i64 %idxprom2129
  %614 = load i32, i32* %arrayidx2130, align 4
  %shl2131 = shl i32 %614, 14
  %or2132 = or i32 %shr2125, %shl2131
  %xor2133 = xor i32 %or2118, %or2132
  %W2134 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %615 = load i32, i32* %i, align 4
  %add2135 = add i32 %615, 6
  %sub2136 = sub i32 %add2135, 15
  %idxprom2137 = zext i32 %sub2136 to i64
  %arrayidx2138 = getelementptr inbounds [64 x i32], [64 x i32]* %W2134, i64 0, i64 %idxprom2137
  %616 = load i32, i32* %arrayidx2138, align 4
  %and2139 = and i32 %616, -1
  %shr2140 = lshr i32 %and2139, 3
  %xor2141 = xor i32 %xor2133, %shr2140
  %add2142 = add i32 %add2104, %xor2141
  %W2143 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %617 = load i32, i32* %i, align 4
  %add2144 = add i32 %617, 6
  %sub2145 = sub i32 %add2144, 16
  %idxprom2146 = zext i32 %sub2145 to i64
  %arrayidx2147 = getelementptr inbounds [64 x i32], [64 x i32]* %W2143, i64 0, i64 %idxprom2146
  %618 = load i32, i32* %arrayidx2147, align 4
  %add2148 = add i32 %add2142, %618
  %W2149 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %619 = load i32, i32* %i, align 4
  %add2150 = add i32 %619, 6
  %idxprom2151 = zext i32 %add2150 to i64
  %arrayidx2152 = getelementptr inbounds [64 x i32], [64 x i32]* %W2149, i64 0, i64 %idxprom2151
  store i32 %add2148, i32* %arrayidx2152, align 4
  %add2153 = add i32 %add2061, %add2148
  %temp12154 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add2153, i32* %temp12154, align 4
  %A2155 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2156 = getelementptr inbounds [8 x i32], [8 x i32]* %A2155, i64 0, i64 2
  %620 = load i32, i32* %arrayidx2156, align 4
  %and2157 = and i32 %620, -1
  %shr2158 = lshr i32 %and2157, 2
  %A2159 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2160 = getelementptr inbounds [8 x i32], [8 x i32]* %A2159, i64 0, i64 2
  %621 = load i32, i32* %arrayidx2160, align 4
  %shl2161 = shl i32 %621, 30
  %or2162 = or i32 %shr2158, %shl2161
  %A2163 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2164 = getelementptr inbounds [8 x i32], [8 x i32]* %A2163, i64 0, i64 2
  %622 = load i32, i32* %arrayidx2164, align 4
  %and2165 = and i32 %622, -1
  %shr2166 = lshr i32 %and2165, 13
  %A2167 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2168 = getelementptr inbounds [8 x i32], [8 x i32]* %A2167, i64 0, i64 2
  %623 = load i32, i32* %arrayidx2168, align 4
  %shl2169 = shl i32 %623, 19
  %or2170 = or i32 %shr2166, %shl2169
  %xor2171 = xor i32 %or2162, %or2170
  %A2172 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2173 = getelementptr inbounds [8 x i32], [8 x i32]* %A2172, i64 0, i64 2
  %624 = load i32, i32* %arrayidx2173, align 4
  %and2174 = and i32 %624, -1
  %shr2175 = lshr i32 %and2174, 22
  %A2176 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2177 = getelementptr inbounds [8 x i32], [8 x i32]* %A2176, i64 0, i64 2
  %625 = load i32, i32* %arrayidx2177, align 4
  %shl2178 = shl i32 %625, 10
  %or2179 = or i32 %shr2175, %shl2178
  %xor2180 = xor i32 %xor2171, %or2179
  %A2181 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2182 = getelementptr inbounds [8 x i32], [8 x i32]* %A2181, i64 0, i64 2
  %626 = load i32, i32* %arrayidx2182, align 4
  %A2183 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2184 = getelementptr inbounds [8 x i32], [8 x i32]* %A2183, i64 0, i64 3
  %627 = load i32, i32* %arrayidx2184, align 4
  %and2185 = and i32 %626, %627
  %A2186 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2187 = getelementptr inbounds [8 x i32], [8 x i32]* %A2186, i64 0, i64 4
  %628 = load i32, i32* %arrayidx2187, align 4
  %A2188 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2189 = getelementptr inbounds [8 x i32], [8 x i32]* %A2188, i64 0, i64 2
  %629 = load i32, i32* %arrayidx2189, align 4
  %A2190 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2191 = getelementptr inbounds [8 x i32], [8 x i32]* %A2190, i64 0, i64 3
  %630 = load i32, i32* %arrayidx2191, align 4
  %or2192 = or i32 %629, %630
  %and2193 = and i32 %628, %or2192
  %or2194 = or i32 %and2185, %and2193
  %add2195 = add i32 %xor2180, %or2194
  %temp22196 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add2195, i32* %temp22196, align 4
  %temp12197 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %631 = load i32, i32* %temp12197, align 4
  %A2198 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2199 = getelementptr inbounds [8 x i32], [8 x i32]* %A2198, i64 0, i64 5
  %632 = load i32, i32* %arrayidx2199, align 4
  %add2200 = add i32 %632, %631
  store i32 %add2200, i32* %arrayidx2199, align 4
  %temp12201 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %633 = load i32, i32* %temp12201, align 4
  %temp22202 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %634 = load i32, i32* %temp22202, align 4
  %add2203 = add i32 %633, %634
  %A2204 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2205 = getelementptr inbounds [8 x i32], [8 x i32]* %A2204, i64 0, i64 1
  store i32 %add2203, i32* %arrayidx2205, align 4
  br label %do.end2206

do.end2206:                                       ; preds = %do.body2016
  br label %do.body2207

do.body2207:                                      ; preds = %do.end2206
  %A2208 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2209 = getelementptr inbounds [8 x i32], [8 x i32]* %A2208, i64 0, i64 0
  %635 = load i32, i32* %arrayidx2209, align 4
  %A2210 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2211 = getelementptr inbounds [8 x i32], [8 x i32]* %A2210, i64 0, i64 5
  %636 = load i32, i32* %arrayidx2211, align 4
  %and2212 = and i32 %636, -1
  %shr2213 = lshr i32 %and2212, 6
  %A2214 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2215 = getelementptr inbounds [8 x i32], [8 x i32]* %A2214, i64 0, i64 5
  %637 = load i32, i32* %arrayidx2215, align 4
  %shl2216 = shl i32 %637, 26
  %or2217 = or i32 %shr2213, %shl2216
  %A2218 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2219 = getelementptr inbounds [8 x i32], [8 x i32]* %A2218, i64 0, i64 5
  %638 = load i32, i32* %arrayidx2219, align 4
  %and2220 = and i32 %638, -1
  %shr2221 = lshr i32 %and2220, 11
  %A2222 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2223 = getelementptr inbounds [8 x i32], [8 x i32]* %A2222, i64 0, i64 5
  %639 = load i32, i32* %arrayidx2223, align 4
  %shl2224 = shl i32 %639, 21
  %or2225 = or i32 %shr2221, %shl2224
  %xor2226 = xor i32 %or2217, %or2225
  %A2227 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2228 = getelementptr inbounds [8 x i32], [8 x i32]* %A2227, i64 0, i64 5
  %640 = load i32, i32* %arrayidx2228, align 4
  %and2229 = and i32 %640, -1
  %shr2230 = lshr i32 %and2229, 25
  %A2231 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2232 = getelementptr inbounds [8 x i32], [8 x i32]* %A2231, i64 0, i64 5
  %641 = load i32, i32* %arrayidx2232, align 4
  %shl2233 = shl i32 %641, 7
  %or2234 = or i32 %shr2230, %shl2233
  %xor2235 = xor i32 %xor2226, %or2234
  %add2236 = add i32 %635, %xor2235
  %A2237 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2238 = getelementptr inbounds [8 x i32], [8 x i32]* %A2237, i64 0, i64 7
  %642 = load i32, i32* %arrayidx2238, align 4
  %A2239 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2240 = getelementptr inbounds [8 x i32], [8 x i32]* %A2239, i64 0, i64 5
  %643 = load i32, i32* %arrayidx2240, align 4
  %A2241 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2242 = getelementptr inbounds [8 x i32], [8 x i32]* %A2241, i64 0, i64 6
  %644 = load i32, i32* %arrayidx2242, align 4
  %A2243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2244 = getelementptr inbounds [8 x i32], [8 x i32]* %A2243, i64 0, i64 7
  %645 = load i32, i32* %arrayidx2244, align 4
  %xor2245 = xor i32 %644, %645
  %and2246 = and i32 %643, %xor2245
  %xor2247 = xor i32 %642, %and2246
  %add2248 = add i32 %add2236, %xor2247
  %646 = load i32, i32* %i, align 4
  %add2249 = add i32 %646, 7
  %idxprom2250 = zext i32 %add2249 to i64
  %arrayidx2251 = getelementptr inbounds [64 x i32], [64 x i32]* @K, i64 0, i64 %idxprom2250
  %647 = load i32, i32* %arrayidx2251, align 4
  %add2252 = add i32 %add2248, %647
  %W2253 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %648 = load i32, i32* %i, align 4
  %add2254 = add i32 %648, 7
  %sub2255 = sub i32 %add2254, 2
  %idxprom2256 = zext i32 %sub2255 to i64
  %arrayidx2257 = getelementptr inbounds [64 x i32], [64 x i32]* %W2253, i64 0, i64 %idxprom2256
  %649 = load i32, i32* %arrayidx2257, align 4
  %and2258 = and i32 %649, -1
  %shr2259 = lshr i32 %and2258, 17
  %W2260 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %650 = load i32, i32* %i, align 4
  %add2261 = add i32 %650, 7
  %sub2262 = sub i32 %add2261, 2
  %idxprom2263 = zext i32 %sub2262 to i64
  %arrayidx2264 = getelementptr inbounds [64 x i32], [64 x i32]* %W2260, i64 0, i64 %idxprom2263
  %651 = load i32, i32* %arrayidx2264, align 4
  %shl2265 = shl i32 %651, 15
  %or2266 = or i32 %shr2259, %shl2265
  %W2267 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %652 = load i32, i32* %i, align 4
  %add2268 = add i32 %652, 7
  %sub2269 = sub i32 %add2268, 2
  %idxprom2270 = zext i32 %sub2269 to i64
  %arrayidx2271 = getelementptr inbounds [64 x i32], [64 x i32]* %W2267, i64 0, i64 %idxprom2270
  %653 = load i32, i32* %arrayidx2271, align 4
  %and2272 = and i32 %653, -1
  %shr2273 = lshr i32 %and2272, 19
  %W2274 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %654 = load i32, i32* %i, align 4
  %add2275 = add i32 %654, 7
  %sub2276 = sub i32 %add2275, 2
  %idxprom2277 = zext i32 %sub2276 to i64
  %arrayidx2278 = getelementptr inbounds [64 x i32], [64 x i32]* %W2274, i64 0, i64 %idxprom2277
  %655 = load i32, i32* %arrayidx2278, align 4
  %shl2279 = shl i32 %655, 13
  %or2280 = or i32 %shr2273, %shl2279
  %xor2281 = xor i32 %or2266, %or2280
  %W2282 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %656 = load i32, i32* %i, align 4
  %add2283 = add i32 %656, 7
  %sub2284 = sub i32 %add2283, 2
  %idxprom2285 = zext i32 %sub2284 to i64
  %arrayidx2286 = getelementptr inbounds [64 x i32], [64 x i32]* %W2282, i64 0, i64 %idxprom2285
  %657 = load i32, i32* %arrayidx2286, align 4
  %and2287 = and i32 %657, -1
  %shr2288 = lshr i32 %and2287, 10
  %xor2289 = xor i32 %xor2281, %shr2288
  %W2290 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %658 = load i32, i32* %i, align 4
  %add2291 = add i32 %658, 7
  %sub2292 = sub i32 %add2291, 7
  %idxprom2293 = zext i32 %sub2292 to i64
  %arrayidx2294 = getelementptr inbounds [64 x i32], [64 x i32]* %W2290, i64 0, i64 %idxprom2293
  %659 = load i32, i32* %arrayidx2294, align 4
  %add2295 = add i32 %xor2289, %659
  %W2296 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %660 = load i32, i32* %i, align 4
  %add2297 = add i32 %660, 7
  %sub2298 = sub i32 %add2297, 15
  %idxprom2299 = zext i32 %sub2298 to i64
  %arrayidx2300 = getelementptr inbounds [64 x i32], [64 x i32]* %W2296, i64 0, i64 %idxprom2299
  %661 = load i32, i32* %arrayidx2300, align 4
  %and2301 = and i32 %661, -1
  %shr2302 = lshr i32 %and2301, 7
  %W2303 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %662 = load i32, i32* %i, align 4
  %add2304 = add i32 %662, 7
  %sub2305 = sub i32 %add2304, 15
  %idxprom2306 = zext i32 %sub2305 to i64
  %arrayidx2307 = getelementptr inbounds [64 x i32], [64 x i32]* %W2303, i64 0, i64 %idxprom2306
  %663 = load i32, i32* %arrayidx2307, align 4
  %shl2308 = shl i32 %663, 25
  %or2309 = or i32 %shr2302, %shl2308
  %W2310 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %664 = load i32, i32* %i, align 4
  %add2311 = add i32 %664, 7
  %sub2312 = sub i32 %add2311, 15
  %idxprom2313 = zext i32 %sub2312 to i64
  %arrayidx2314 = getelementptr inbounds [64 x i32], [64 x i32]* %W2310, i64 0, i64 %idxprom2313
  %665 = load i32, i32* %arrayidx2314, align 4
  %and2315 = and i32 %665, -1
  %shr2316 = lshr i32 %and2315, 18
  %W2317 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %666 = load i32, i32* %i, align 4
  %add2318 = add i32 %666, 7
  %sub2319 = sub i32 %add2318, 15
  %idxprom2320 = zext i32 %sub2319 to i64
  %arrayidx2321 = getelementptr inbounds [64 x i32], [64 x i32]* %W2317, i64 0, i64 %idxprom2320
  %667 = load i32, i32* %arrayidx2321, align 4
  %shl2322 = shl i32 %667, 14
  %or2323 = or i32 %shr2316, %shl2322
  %xor2324 = xor i32 %or2309, %or2323
  %W2325 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %668 = load i32, i32* %i, align 4
  %add2326 = add i32 %668, 7
  %sub2327 = sub i32 %add2326, 15
  %idxprom2328 = zext i32 %sub2327 to i64
  %arrayidx2329 = getelementptr inbounds [64 x i32], [64 x i32]* %W2325, i64 0, i64 %idxprom2328
  %669 = load i32, i32* %arrayidx2329, align 4
  %and2330 = and i32 %669, -1
  %shr2331 = lshr i32 %and2330, 3
  %xor2332 = xor i32 %xor2324, %shr2331
  %add2333 = add i32 %add2295, %xor2332
  %W2334 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %670 = load i32, i32* %i, align 4
  %add2335 = add i32 %670, 7
  %sub2336 = sub i32 %add2335, 16
  %idxprom2337 = zext i32 %sub2336 to i64
  %arrayidx2338 = getelementptr inbounds [64 x i32], [64 x i32]* %W2334, i64 0, i64 %idxprom2337
  %671 = load i32, i32* %arrayidx2338, align 4
  %add2339 = add i32 %add2333, %671
  %W2340 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %672 = load i32, i32* %i, align 4
  %add2341 = add i32 %672, 7
  %idxprom2342 = zext i32 %add2341 to i64
  %arrayidx2343 = getelementptr inbounds [64 x i32], [64 x i32]* %W2340, i64 0, i64 %idxprom2342
  store i32 %add2339, i32* %arrayidx2343, align 4
  %add2344 = add i32 %add2252, %add2339
  %temp12345 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %add2344, i32* %temp12345, align 4
  %A2346 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2347 = getelementptr inbounds [8 x i32], [8 x i32]* %A2346, i64 0, i64 1
  %673 = load i32, i32* %arrayidx2347, align 4
  %and2348 = and i32 %673, -1
  %shr2349 = lshr i32 %and2348, 2
  %A2350 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2351 = getelementptr inbounds [8 x i32], [8 x i32]* %A2350, i64 0, i64 1
  %674 = load i32, i32* %arrayidx2351, align 4
  %shl2352 = shl i32 %674, 30
  %or2353 = or i32 %shr2349, %shl2352
  %A2354 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2355 = getelementptr inbounds [8 x i32], [8 x i32]* %A2354, i64 0, i64 1
  %675 = load i32, i32* %arrayidx2355, align 4
  %and2356 = and i32 %675, -1
  %shr2357 = lshr i32 %and2356, 13
  %A2358 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2359 = getelementptr inbounds [8 x i32], [8 x i32]* %A2358, i64 0, i64 1
  %676 = load i32, i32* %arrayidx2359, align 4
  %shl2360 = shl i32 %676, 19
  %or2361 = or i32 %shr2357, %shl2360
  %xor2362 = xor i32 %or2353, %or2361
  %A2363 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2364 = getelementptr inbounds [8 x i32], [8 x i32]* %A2363, i64 0, i64 1
  %677 = load i32, i32* %arrayidx2364, align 4
  %and2365 = and i32 %677, -1
  %shr2366 = lshr i32 %and2365, 22
  %A2367 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2368 = getelementptr inbounds [8 x i32], [8 x i32]* %A2367, i64 0, i64 1
  %678 = load i32, i32* %arrayidx2368, align 4
  %shl2369 = shl i32 %678, 10
  %or2370 = or i32 %shr2366, %shl2369
  %xor2371 = xor i32 %xor2362, %or2370
  %A2372 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2373 = getelementptr inbounds [8 x i32], [8 x i32]* %A2372, i64 0, i64 1
  %679 = load i32, i32* %arrayidx2373, align 4
  %A2374 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2375 = getelementptr inbounds [8 x i32], [8 x i32]* %A2374, i64 0, i64 2
  %680 = load i32, i32* %arrayidx2375, align 4
  %and2376 = and i32 %679, %680
  %A2377 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2378 = getelementptr inbounds [8 x i32], [8 x i32]* %A2377, i64 0, i64 3
  %681 = load i32, i32* %arrayidx2378, align 4
  %A2379 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2380 = getelementptr inbounds [8 x i32], [8 x i32]* %A2379, i64 0, i64 1
  %682 = load i32, i32* %arrayidx2380, align 4
  %A2381 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2382 = getelementptr inbounds [8 x i32], [8 x i32]* %A2381, i64 0, i64 2
  %683 = load i32, i32* %arrayidx2382, align 4
  %or2383 = or i32 %682, %683
  %and2384 = and i32 %681, %or2383
  %or2385 = or i32 %and2376, %and2384
  %add2386 = add i32 %xor2371, %or2385
  %temp22387 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add2386, i32* %temp22387, align 4
  %temp12388 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %684 = load i32, i32* %temp12388, align 4
  %A2389 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2390 = getelementptr inbounds [8 x i32], [8 x i32]* %A2389, i64 0, i64 4
  %685 = load i32, i32* %arrayidx2390, align 4
  %add2391 = add i32 %685, %684
  store i32 %add2391, i32* %arrayidx2390, align 4
  %temp12392 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %686 = load i32, i32* %temp12392, align 4
  %temp22393 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %687 = load i32, i32* %temp22393, align 4
  %add2394 = add i32 %686, %687
  %A2395 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx2396 = getelementptr inbounds [8 x i32], [8 x i32]* %A2395, i64 0, i64 0
  store i32 %add2394, i32* %arrayidx2396, align 4
  br label %do.end2397

do.end2397:                                       ; preds = %do.body2207
  br label %for.inc2398

for.inc2398:                                      ; preds = %do.end2397
  %688 = load i32, i32* %i, align 4
  %add2399 = add i32 %688, 8
  store i32 %add2399, i32* %i, align 4
  br label %for.cond867, !llvm.loop !8

for.end2400:                                      ; preds = %for.cond867
  store i32 0, i32* %i, align 4
  br label %for.cond2401

for.cond2401:                                     ; preds = %for.inc2412, %for.end2400
  %689 = load i32, i32* %i, align 4
  %cmp2402 = icmp ult i32 %689, 8
  br i1 %cmp2402, label %for.body2404, label %for.end2414

for.body2404:                                     ; preds = %for.cond2401
  %A2405 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %690 = load i32, i32* %i, align 4
  %idxprom2406 = zext i32 %690 to i64
  %arrayidx2407 = getelementptr inbounds [8 x i32], [8 x i32]* %A2405, i64 0, i64 %idxprom2406
  %691 = load i32, i32* %arrayidx2407, align 4
  %692 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state2408 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %692, i32 0, i32 1
  %693 = load i32, i32* %i, align 4
  %idxprom2409 = zext i32 %693 to i64
  %arrayidx2410 = getelementptr inbounds [8 x i32], [8 x i32]* %state2408, i64 0, i64 %idxprom2409
  %694 = load i32, i32* %arrayidx2410, align 4
  %add2411 = add i32 %694, %691
  store i32 %add2411, i32* %arrayidx2410, align 4
  br label %for.inc2412

for.inc2412:                                      ; preds = %for.body2404
  %695 = load i32, i32* %i, align 4
  %inc2413 = add i32 %695, 1
  store i32 %inc2413, i32* %i, align 4
  br label %for.cond2401, !llvm.loop !9

for.end2414:                                      ; preds = %for.cond2401
  %696 = bitcast %struct.anon* %local to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %696, i64 noundef 296) #6
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fill = alloca i64, align 8
  %left = alloca i32, align 4
  %processed = alloca i64, align 8
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i64, i64* %ilen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %1 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %and = and i32 %2, 63
  store i32 %and, i32* %left, align 4
  %3 = load i32, i32* %left, align 4
  %sub = sub i32 64, %3
  %conv = zext i32 %sub to i64
  store i64 %conv, i64* %fill, align 8
  %4 = load i64, i64* %ilen.addr, align 8
  %conv3 = trunc i64 %4 to i32
  %5 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total4 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %total4, i64 0, i64 0
  %6 = load i32, i32* %arrayidx5, align 4
  %add = add i32 %6, %conv3
  store i32 %add, i32* %arrayidx5, align 4
  %7 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %total6, i64 0, i64 0
  %8 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %8, -1
  store i32 %and8, i32* %arrayidx7, align 4
  %9 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total9 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %total9, i64 0, i64 0
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i64, i64* %ilen.addr, align 8
  %conv11 = trunc i64 %11 to i32
  %cmp12 = icmp ult i32 %10, %conv11
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  %12 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total15 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %12, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %total15, i64 0, i64 1
  %13 = load i32, i32* %arrayidx16, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %arrayidx16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end
  %14 = load i32, i32* %left, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end17
  %15 = load i64, i64* %ilen.addr, align 8
  %16 = load i64, i64* %fill, align 8
  %cmp18 = icmp uge i64 %15, %16
  br i1 %cmp18, label %if.then20, label %if.end30

if.then20:                                        ; preds = %land.lhs.true
  %17 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i64 0, i64 0
  %18 = load i32, i32* %left, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %fill, align 8
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %19, i64 noundef %20) #5
  %21 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %22 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer21 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %22, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer21, i64 0, i64 0
  %call23 = call i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %21, i8* noundef %arraydecay22) #6
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then20
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then20
  %24 = load i64, i64* %fill, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %add.ptr28, i8** %input.addr, align 8
  %26 = load i64, i64* %fill, align 8
  %27 = load i64, i64* %ilen.addr, align 8
  %sub29 = sub i64 %27, %26
  store i64 %sub29, i64* %ilen.addr, align 8
  store i32 0, i32* %left, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %land.lhs.true, %if.end17
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end30
  %28 = load i64, i64* %ilen.addr, align 8
  %cmp31 = icmp uge i64 %28, 64
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %30 = load i8*, i8** %input.addr, align 8
  %31 = load i64, i64* %ilen.addr, align 8
  %call33 = call i64 @mbedtls_internal_sha256_process_many(%struct.mbedtls_sha256_context* noundef %29, i8* noundef %30, i64 noundef %31) #6
  store i64 %call33, i64* %processed, align 8
  %32 = load i64, i64* %processed, align 8
  %cmp34 = icmp ult i64 %32, 64
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %while.body
  %33 = load i64, i64* %processed, align 8
  %34 = load i8*, i8** %input.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %add.ptr38, i8** %input.addr, align 8
  %35 = load i64, i64* %processed, align 8
  %36 = load i64, i64* %ilen.addr, align 8
  %sub39 = sub i64 %36, %35
  store i64 %sub39, i64* %ilen.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %37 = load i64, i64* %ilen.addr, align 8
  %cmp40 = icmp ugt i64 %37, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %while.end
  %38 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer43 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %38, i32 0, i32 2
  %arraydecay44 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer43, i64 0, i64 0
  %39 = load i32, i32* %left, align 4
  %idx.ext45 = zext i32 %39 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %arraydecay44, i64 %idx.ext45
  %40 = load i8*, i8** %input.addr, align 8
  %41 = load i64, i64* %ilen.addr, align 8
  %call47 = call i8* @memcpy(i8* noundef %add.ptr46, i8* noundef %40, i64 noundef %41) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then36, %if.then26, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_internal_sha256_process_many(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %processed = alloca i64, align 8
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %processed, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp uge i64 %0, 64
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %1, i8* noundef %2) #6
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 64
  store i8* %add.ptr, i8** %data.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %4, 64
  store i64 %sub, i64* %len.addr, align 8
  %5 = load i64, i64* %processed, align 8
  %add = add i64 %5, 64
  store i64 %add, i64* %processed, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %6 = load i64, i64* %processed, align 8
  store i64 %6, i64* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i64, i64* %retval, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_sha256_context*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %used = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store %struct.mbedtls_sha256_context* %ctx, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 63
  store i32 %and, i32* %used, align 4
  %2 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %2, i32 0, i32 2
  %3 = load i32, i32* %used, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %used, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i64 0, i64 %idxprom
  store i8 -128, i8* %arrayidx3, align 1
  %4 = load i32, i32* %used, align 4
  %cmp = icmp ule i32 %4, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  %5 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer4 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer4, i64 0, i64 0
  %6 = load i32, i32* %used, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %7 = load i32, i32* %used, align 4
  %sub = sub i32 56, %7
  %conv = zext i32 %sub to i64
  %call = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end21

if.else:                                          ; preds = %do.end2
  %8 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %8, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer5, i64 0, i64 0
  %9 = load i32, i32* %used, align 4
  %idx.ext7 = zext i32 %9 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay6, i64 %idx.ext7
  %10 = load i32, i32* %used, align 4
  %sub9 = sub i32 64, %10
  %conv10 = zext i32 %sub9 to i64
  %call11 = call i8* @memset(i8* noundef %add.ptr8, i32 noundef 0, i64 noundef %conv10) #5
  %11 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %12 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer12 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %12, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer12, i64 0, i64 0
  %call14 = call i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %11, i8* noundef %arraydecay13) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %14 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer18 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %14, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer18, i64 0, i64 0
  %call20 = call i8* @memset(i8* noundef %arraydecay19, i32 noundef 0, i64 noundef 56) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %15 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total22 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %15, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %total22, i64 0, i64 0
  %16 = load i32, i32* %arrayidx23, align 4
  %shr = lshr i32 %16, 29
  %17 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total24 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %17, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %total24, i64 0, i64 1
  %18 = load i32, i32* %arrayidx25, align 4
  %shl = shl i32 %18, 3
  %or = or i32 %shr, %shl
  store i32 %or, i32* %high, align 4
  %19 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %total26 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %19, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %total26, i64 0, i64 0
  %20 = load i32, i32* %arrayidx27, align 4
  %shl28 = shl i32 %20, 3
  store i32 %shl28, i32* %low, align 4
  %21 = load i32, i32* %high, align 4
  %shr29 = lshr i32 %21, 24
  %and30 = and i32 %shr29, 255
  %conv31 = trunc i32 %and30 to i8
  %22 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer32 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %22, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer32, i64 0, i64 56
  store i8 %conv31, i8* %arrayidx33, align 4
  %23 = load i32, i32* %high, align 4
  %shr34 = lshr i32 %23, 16
  %and35 = and i32 %shr34, 255
  %conv36 = trunc i32 %and35 to i8
  %24 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer37 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %24, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer37, i64 0, i64 57
  store i8 %conv36, i8* %arrayidx38, align 1
  %25 = load i32, i32* %high, align 4
  %shr39 = lshr i32 %25, 8
  %and40 = and i32 %shr39, 255
  %conv41 = trunc i32 %and40 to i8
  %26 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer42 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %26, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer42, i64 0, i64 58
  store i8 %conv41, i8* %arrayidx43, align 2
  %27 = load i32, i32* %high, align 4
  %and44 = and i32 %27, 255
  %conv45 = trunc i32 %and44 to i8
  %28 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer46 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %28, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer46, i64 0, i64 59
  store i8 %conv45, i8* %arrayidx47, align 1
  %29 = load i32, i32* %low, align 4
  %shr48 = lshr i32 %29, 24
  %and49 = and i32 %shr48, 255
  %conv50 = trunc i32 %and49 to i8
  %30 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer51 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %30, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer51, i64 0, i64 60
  store i8 %conv50, i8* %arrayidx52, align 4
  %31 = load i32, i32* %low, align 4
  %shr53 = lshr i32 %31, 16
  %and54 = and i32 %shr53, 255
  %conv55 = trunc i32 %and54 to i8
  %32 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer56 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %32, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer56, i64 0, i64 61
  store i8 %conv55, i8* %arrayidx57, align 1
  %33 = load i32, i32* %low, align 4
  %shr58 = lshr i32 %33, 8
  %and59 = and i32 %shr58, 255
  %conv60 = trunc i32 %and59 to i8
  %34 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer61 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %34, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer61, i64 0, i64 62
  store i8 %conv60, i8* %arrayidx62, align 2
  %35 = load i32, i32* %low, align 4
  %and63 = and i32 %35, 255
  %conv64 = trunc i32 %and63 to i8
  %36 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer65 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %36, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer65, i64 0, i64 63
  store i8 %conv64, i8* %arrayidx66, align 1
  %37 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %38 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %buffer67 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %38, i32 0, i32 2
  %arraydecay68 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer67, i64 0, i64 0
  %call69 = call i32 @mbedtls_internal_sha256_process(%struct.mbedtls_sha256_context* noundef %37, i8* noundef %arraydecay68) #6
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end21
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end21
  %40 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %40, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [8 x i32], [8 x i32]* %state, i64 0, i64 0
  %41 = load i32, i32* %arrayidx74, align 4
  %shr75 = lshr i32 %41, 24
  %and76 = and i32 %shr75, 255
  %conv77 = trunc i32 %and76 to i8
  %42 = load i8*, i8** %output.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %conv77, i8* %arrayidx78, align 1
  %43 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state79 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %43, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %state79, i64 0, i64 0
  %44 = load i32, i32* %arrayidx80, align 4
  %shr81 = lshr i32 %44, 16
  %and82 = and i32 %shr81, 255
  %conv83 = trunc i32 %and82 to i8
  %45 = load i8*, i8** %output.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv83, i8* %arrayidx84, align 1
  %46 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state85 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %46, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* %state85, i64 0, i64 0
  %47 = load i32, i32* %arrayidx86, align 4
  %shr87 = lshr i32 %47, 8
  %and88 = and i32 %shr87, 255
  %conv89 = trunc i32 %and88 to i8
  %48 = load i8*, i8** %output.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %conv89, i8* %arrayidx90, align 1
  %49 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state91 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %49, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [8 x i32], [8 x i32]* %state91, i64 0, i64 0
  %50 = load i32, i32* %arrayidx92, align 4
  %and93 = and i32 %50, 255
  %conv94 = trunc i32 %and93 to i8
  %51 = load i8*, i8** %output.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %conv94, i8* %arrayidx95, align 1
  %52 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state96 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %52, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %state96, i64 0, i64 1
  %53 = load i32, i32* %arrayidx97, align 4
  %shr98 = lshr i32 %53, 24
  %and99 = and i32 %shr98, 255
  %conv100 = trunc i32 %and99 to i8
  %54 = load i8*, i8** %output.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %54, i64 4
  store i8 %conv100, i8* %arrayidx101, align 1
  %55 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state102 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %55, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %state102, i64 0, i64 1
  %56 = load i32, i32* %arrayidx103, align 4
  %shr104 = lshr i32 %56, 16
  %and105 = and i32 %shr104, 255
  %conv106 = trunc i32 %and105 to i8
  %57 = load i8*, i8** %output.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %57, i64 5
  store i8 %conv106, i8* %arrayidx107, align 1
  %58 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state108 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %58, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [8 x i32], [8 x i32]* %state108, i64 0, i64 1
  %59 = load i32, i32* %arrayidx109, align 4
  %shr110 = lshr i32 %59, 8
  %and111 = and i32 %shr110, 255
  %conv112 = trunc i32 %and111 to i8
  %60 = load i8*, i8** %output.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %60, i64 6
  store i8 %conv112, i8* %arrayidx113, align 1
  %61 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state114 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %61, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [8 x i32], [8 x i32]* %state114, i64 0, i64 1
  %62 = load i32, i32* %arrayidx115, align 4
  %and116 = and i32 %62, 255
  %conv117 = trunc i32 %and116 to i8
  %63 = load i8*, i8** %output.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %63, i64 7
  store i8 %conv117, i8* %arrayidx118, align 1
  %64 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state119 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %64, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [8 x i32], [8 x i32]* %state119, i64 0, i64 2
  %65 = load i32, i32* %arrayidx120, align 4
  %shr121 = lshr i32 %65, 24
  %and122 = and i32 %shr121, 255
  %conv123 = trunc i32 %and122 to i8
  %66 = load i8*, i8** %output.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %66, i64 8
  store i8 %conv123, i8* %arrayidx124, align 1
  %67 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state125 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %67, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [8 x i32], [8 x i32]* %state125, i64 0, i64 2
  %68 = load i32, i32* %arrayidx126, align 4
  %shr127 = lshr i32 %68, 16
  %and128 = and i32 %shr127, 255
  %conv129 = trunc i32 %and128 to i8
  %69 = load i8*, i8** %output.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %69, i64 9
  store i8 %conv129, i8* %arrayidx130, align 1
  %70 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state131 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %70, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [8 x i32], [8 x i32]* %state131, i64 0, i64 2
  %71 = load i32, i32* %arrayidx132, align 4
  %shr133 = lshr i32 %71, 8
  %and134 = and i32 %shr133, 255
  %conv135 = trunc i32 %and134 to i8
  %72 = load i8*, i8** %output.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %72, i64 10
  store i8 %conv135, i8* %arrayidx136, align 1
  %73 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state137 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %73, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [8 x i32], [8 x i32]* %state137, i64 0, i64 2
  %74 = load i32, i32* %arrayidx138, align 4
  %and139 = and i32 %74, 255
  %conv140 = trunc i32 %and139 to i8
  %75 = load i8*, i8** %output.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %75, i64 11
  store i8 %conv140, i8* %arrayidx141, align 1
  %76 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state142 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %76, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [8 x i32], [8 x i32]* %state142, i64 0, i64 3
  %77 = load i32, i32* %arrayidx143, align 4
  %shr144 = lshr i32 %77, 24
  %and145 = and i32 %shr144, 255
  %conv146 = trunc i32 %and145 to i8
  %78 = load i8*, i8** %output.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %78, i64 12
  store i8 %conv146, i8* %arrayidx147, align 1
  %79 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state148 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %79, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [8 x i32], [8 x i32]* %state148, i64 0, i64 3
  %80 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %80, 16
  %and151 = and i32 %shr150, 255
  %conv152 = trunc i32 %and151 to i8
  %81 = load i8*, i8** %output.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %81, i64 13
  store i8 %conv152, i8* %arrayidx153, align 1
  %82 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state154 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %82, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [8 x i32], [8 x i32]* %state154, i64 0, i64 3
  %83 = load i32, i32* %arrayidx155, align 4
  %shr156 = lshr i32 %83, 8
  %and157 = and i32 %shr156, 255
  %conv158 = trunc i32 %and157 to i8
  %84 = load i8*, i8** %output.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %84, i64 14
  store i8 %conv158, i8* %arrayidx159, align 1
  %85 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state160 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %85, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [8 x i32], [8 x i32]* %state160, i64 0, i64 3
  %86 = load i32, i32* %arrayidx161, align 4
  %and162 = and i32 %86, 255
  %conv163 = trunc i32 %and162 to i8
  %87 = load i8*, i8** %output.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %87, i64 15
  store i8 %conv163, i8* %arrayidx164, align 1
  %88 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state165 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %88, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [8 x i32], [8 x i32]* %state165, i64 0, i64 4
  %89 = load i32, i32* %arrayidx166, align 4
  %shr167 = lshr i32 %89, 24
  %and168 = and i32 %shr167, 255
  %conv169 = trunc i32 %and168 to i8
  %90 = load i8*, i8** %output.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %90, i64 16
  store i8 %conv169, i8* %arrayidx170, align 1
  %91 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state171 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %91, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [8 x i32], [8 x i32]* %state171, i64 0, i64 4
  %92 = load i32, i32* %arrayidx172, align 4
  %shr173 = lshr i32 %92, 16
  %and174 = and i32 %shr173, 255
  %conv175 = trunc i32 %and174 to i8
  %93 = load i8*, i8** %output.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %93, i64 17
  store i8 %conv175, i8* %arrayidx176, align 1
  %94 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state177 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %94, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [8 x i32], [8 x i32]* %state177, i64 0, i64 4
  %95 = load i32, i32* %arrayidx178, align 4
  %shr179 = lshr i32 %95, 8
  %and180 = and i32 %shr179, 255
  %conv181 = trunc i32 %and180 to i8
  %96 = load i8*, i8** %output.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %96, i64 18
  store i8 %conv181, i8* %arrayidx182, align 1
  %97 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state183 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %97, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [8 x i32], [8 x i32]* %state183, i64 0, i64 4
  %98 = load i32, i32* %arrayidx184, align 4
  %and185 = and i32 %98, 255
  %conv186 = trunc i32 %and185 to i8
  %99 = load i8*, i8** %output.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %99, i64 19
  store i8 %conv186, i8* %arrayidx187, align 1
  %100 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state188 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %100, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [8 x i32], [8 x i32]* %state188, i64 0, i64 5
  %101 = load i32, i32* %arrayidx189, align 4
  %shr190 = lshr i32 %101, 24
  %and191 = and i32 %shr190, 255
  %conv192 = trunc i32 %and191 to i8
  %102 = load i8*, i8** %output.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %102, i64 20
  store i8 %conv192, i8* %arrayidx193, align 1
  %103 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state194 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %103, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %state194, i64 0, i64 5
  %104 = load i32, i32* %arrayidx195, align 4
  %shr196 = lshr i32 %104, 16
  %and197 = and i32 %shr196, 255
  %conv198 = trunc i32 %and197 to i8
  %105 = load i8*, i8** %output.addr, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %105, i64 21
  store i8 %conv198, i8* %arrayidx199, align 1
  %106 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state200 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %106, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [8 x i32], [8 x i32]* %state200, i64 0, i64 5
  %107 = load i32, i32* %arrayidx201, align 4
  %shr202 = lshr i32 %107, 8
  %and203 = and i32 %shr202, 255
  %conv204 = trunc i32 %and203 to i8
  %108 = load i8*, i8** %output.addr, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %108, i64 22
  store i8 %conv204, i8* %arrayidx205, align 1
  %109 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state206 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %109, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [8 x i32], [8 x i32]* %state206, i64 0, i64 5
  %110 = load i32, i32* %arrayidx207, align 4
  %and208 = and i32 %110, 255
  %conv209 = trunc i32 %and208 to i8
  %111 = load i8*, i8** %output.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %111, i64 23
  store i8 %conv209, i8* %arrayidx210, align 1
  %112 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state211 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %112, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [8 x i32], [8 x i32]* %state211, i64 0, i64 6
  %113 = load i32, i32* %arrayidx212, align 4
  %shr213 = lshr i32 %113, 24
  %and214 = and i32 %shr213, 255
  %conv215 = trunc i32 %and214 to i8
  %114 = load i8*, i8** %output.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %114, i64 24
  store i8 %conv215, i8* %arrayidx216, align 1
  %115 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state217 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %115, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [8 x i32], [8 x i32]* %state217, i64 0, i64 6
  %116 = load i32, i32* %arrayidx218, align 4
  %shr219 = lshr i32 %116, 16
  %and220 = and i32 %shr219, 255
  %conv221 = trunc i32 %and220 to i8
  %117 = load i8*, i8** %output.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %117, i64 25
  store i8 %conv221, i8* %arrayidx222, align 1
  %118 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state223 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %118, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [8 x i32], [8 x i32]* %state223, i64 0, i64 6
  %119 = load i32, i32* %arrayidx224, align 4
  %shr225 = lshr i32 %119, 8
  %and226 = and i32 %shr225, 255
  %conv227 = trunc i32 %and226 to i8
  %120 = load i8*, i8** %output.addr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %120, i64 26
  store i8 %conv227, i8* %arrayidx228, align 1
  %121 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state229 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %121, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [8 x i32], [8 x i32]* %state229, i64 0, i64 6
  %122 = load i32, i32* %arrayidx230, align 4
  %and231 = and i32 %122, 255
  %conv232 = trunc i32 %and231 to i8
  %123 = load i8*, i8** %output.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %123, i64 27
  store i8 %conv232, i8* %arrayidx233, align 1
  %124 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %is224 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %124, i32 0, i32 3
  %125 = load i32, i32* %is224, align 4
  %cmp234 = icmp eq i32 %125, 0
  br i1 %cmp234, label %if.then236, label %if.end260

if.then236:                                       ; preds = %if.end73
  %126 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state237 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %126, i32 0, i32 1
  %arrayidx238 = getelementptr inbounds [8 x i32], [8 x i32]* %state237, i64 0, i64 7
  %127 = load i32, i32* %arrayidx238, align 4
  %shr239 = lshr i32 %127, 24
  %and240 = and i32 %shr239, 255
  %conv241 = trunc i32 %and240 to i8
  %128 = load i8*, i8** %output.addr, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %128, i64 28
  store i8 %conv241, i8* %arrayidx242, align 1
  %129 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state243 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %129, i32 0, i32 1
  %arrayidx244 = getelementptr inbounds [8 x i32], [8 x i32]* %state243, i64 0, i64 7
  %130 = load i32, i32* %arrayidx244, align 4
  %shr245 = lshr i32 %130, 16
  %and246 = and i32 %shr245, 255
  %conv247 = trunc i32 %and246 to i8
  %131 = load i8*, i8** %output.addr, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %131, i64 29
  store i8 %conv247, i8* %arrayidx248, align 1
  %132 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state249 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %132, i32 0, i32 1
  %arrayidx250 = getelementptr inbounds [8 x i32], [8 x i32]* %state249, i64 0, i64 7
  %133 = load i32, i32* %arrayidx250, align 4
  %shr251 = lshr i32 %133, 8
  %and252 = and i32 %shr251, 255
  %conv253 = trunc i32 %and252 to i8
  %134 = load i8*, i8** %output.addr, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %134, i64 30
  store i8 %conv253, i8* %arrayidx254, align 1
  %135 = load %struct.mbedtls_sha256_context*, %struct.mbedtls_sha256_context** %ctx.addr, align 8
  %state255 = getelementptr inbounds %struct.mbedtls_sha256_context, %struct.mbedtls_sha256_context* %135, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [8 x i32], [8 x i32]* %state255, i64 0, i64 7
  %136 = load i32, i32* %arrayidx256, align 4
  %and257 = and i32 %136, 255
  %conv258 = trunc i32 %and257 to i8
  %137 = load i8*, i8** %output.addr, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %137, i64 31
  store i8 %conv258, i8* %arrayidx259, align 1
  br label %if.end260

if.end260:                                        ; preds = %if.then236, %if.end73
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end260, %if.then72, %if.then17
  %138 = load i32, i32* %retval, align 4
  ret i32 %138
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha256(i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i32 noundef %is224) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %is224.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_sha256_context, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 %is224, i32* %is224.addr, align 4
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %ctx) #6
  %0 = load i32, i32* %is224.addr, align 4
  %call = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %ctx, i32 noundef %0) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  br label %exit

if.end:                                           ; preds = %do.end4
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i64, i64* %ilen.addr, align 8
  %call5 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %1, i64 noundef %2) #6
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %exit

if.end8:                                          ; preds = %if.end
  %3 = load i8*, i8** %output.addr, align 8
  %call9 = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %3) #6
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %exit

if.end12:                                         ; preds = %if.end8
  br label %exit

exit:                                             ; preds = %if.end12, %if.then11, %if.then7, %if.then
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %ctx) #6
  %4 = load i32, i32* %ret, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha256_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %buflen = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  %sha256sum = alloca [32 x i8], align 16
  %ctx = alloca %struct.mbedtls_sha256_context, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  %call = call noalias i8* @calloc(i64 noundef 1024, i64 noundef 1) #5
  store i8* %call, i8** %buf, align 8
  %0 = load i8*, i8** %buf, align 8
  %cmp = icmp eq i8* null, %0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  call void @mbedtls_sha256_init(%struct.mbedtls_sha256_context* noundef %ctx) #6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %if.end4
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 6
  br i1 %cmp5, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %3, 3
  store i32 %rem, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %4, 3
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %k, align 4
  %5 = load i32, i32* %verbose.addr, align 4
  %cmp7 = icmp ne i32 %5, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %6, 32
  %sub = sub nsw i32 256, %mul
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %7, 1
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef %sub, i32 noundef %add) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body
  %8 = load i32, i32* %k, align 4
  %call12 = call i32 @mbedtls_sha256_starts(%struct.mbedtls_sha256_context* noundef %ctx, i32 noundef %8) #6
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %fail

if.end16:                                         ; preds = %if.end11
  %9 = load i32, i32* %j, align 4
  %cmp17 = icmp eq i32 %9, 2
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %10 = load i8*, i8** %buf, align 8
  store i32 1000, i32* %buflen, align 4
  %call20 = call i8* @memset(i8* noundef %10, i32 noundef 97, i64 noundef 1000) #5
  store i32 0, i32* %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %if.then19
  %11 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %11, 1000
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %12 = load i8*, i8** %buf, align 8
  %13 = load i32, i32* %buflen, align 4
  %conv25 = sext i32 %13 to i64
  %call26 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %12, i64 noundef %conv25) #6
  store i32 %call26, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %14, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body24
  br label %fail

if.end30:                                         ; preds = %for.body24
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond21, !llvm.loop !12

for.end:                                          ; preds = %for.cond21
  br label %if.end38

if.else:                                          ; preds = %if.end16
  %16 = load i32, i32* %j, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [3 x [57 x i8]], [3 x [57 x i8]]* @sha256_test_buf, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [57 x i8], [57 x i8]* %arrayidx, i64 0, i64 0
  %17 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [3 x i64], [3 x i64]* @sha256_test_buflen, i64 0, i64 %idxprom31
  %18 = load i64, i64* %arrayidx32, align 8
  %call33 = call i32 @mbedtls_sha256_update(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %arraydecay, i64 noundef %18) #6
  store i32 %call33, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp34 = icmp ne i32 %19, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else
  br label %fail

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %for.end
  %arraydecay39 = getelementptr inbounds [32 x i8], [32 x i8]* %sha256sum, i64 0, i64 0
  %call40 = call i32 @mbedtls_sha256_finish(%struct.mbedtls_sha256_context* noundef %ctx, i8* noundef %arraydecay39) #6
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  br label %fail

if.end44:                                         ; preds = %if.end38
  %arraydecay45 = getelementptr inbounds [32 x i8], [32 x i8]* %sha256sum, i64 0, i64 0
  %20 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %20 to i64
  %arrayidx47 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @sha256_test_sum, i64 0, i64 %idxprom46
  %arraydecay48 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx47, i64 0, i64 0
  %21 = load i32, i32* %k, align 4
  %mul49 = mul nsw i32 %21, 4
  %sub50 = sub nsw i32 32, %mul49
  %conv51 = sext i32 %sub50 to i64
  %call52 = call i32 @memcmp(i8* noundef %arraydecay45, i8* noundef %arraydecay48, i64 noundef %conv51) #7
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end44
  store i32 1, i32* %ret, align 4
  br label %fail

if.end56:                                         ; preds = %if.end44
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp57 = icmp ne i32 %22, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %call60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %23 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %23, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end64:                                        ; preds = %for.cond
  %24 = load i32, i32* %verbose.addr, align 4
  %cmp65 = icmp ne i32 %24, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end64
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.end64
  br label %exit

fail:                                             ; preds = %if.then55, %if.then43, %if.then36, %if.then29, %if.then15
  %25 = load i32, i32* %verbose.addr, align 4
  %cmp70 = icmp ne i32 %25, 0
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %fail
  %call73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #6
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %fail
  br label %exit

exit:                                             ; preds = %if.end74, %if.end69
  call void @mbedtls_sha256_free(%struct.mbedtls_sha256_context* noundef %ctx) #6
  %26 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %26) #5
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.end
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
