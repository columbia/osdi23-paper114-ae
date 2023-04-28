; ModuleID = 'sha512.c'
source_filename = "sha512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.anon = type { i64, i64, [80 x i64], [8 x i64] }

@K = internal constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@.str = private unnamed_addr constant [26 x i8] c"Buffer allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  SHA-%d test #%d: \00", align 1
@sha512_test_buf = internal constant [3 x [113 x i8]] [[113 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [113 x i8] c"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu\00", [113 x i8] zeroinitializer], align 16
@sha512_test_buflen = internal constant [3 x i64] [i64 3, i64 112, i64 1000], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@sha512_test_sum = internal constant <{ <{ [48 x i8], [16 x i8] }>, <{ [48 x i8], [16 x i8] }>, <{ [48 x i8], [16 x i8] }>, [64 x i8], [64 x i8], [64 x i8] }> <{ <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\CB\00u?E\A3^\8B\B5\A0=i\9A\C6P\07',2\AB\0E\DE\D1c\1A\8B`ZC\FF[\ED\80\86\07+\A1\E7\CC#X\BA\EC\A14\C8%\A7", [16 x i8] zeroinitializer }>, <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\093\0C3\F7\11G\E8=\19/\C7\82\CD\1BGS\11\1B\17;;\05\D2/\A0\80\86\E3\B0\F7\12\FC\C7\C7\1AU~-\B9f\C3\E9\FA\91t`9", [16 x i8] zeroinitializer }>, <{ [48 x i8], [16 x i8] }> <{ [48 x i8] c"\9D\0E\18\09qdt\CB\08n\83N1\0AJ\1C\ED\14\9E\9C\00\F2HRyr\CE\C5pL*[\07\B8\B3\DC8\EC\C4\EB\AE\97\DD\D8\7F=\89\85", [16 x i8] zeroinitializer }>, [64 x i8] c"\DD\AF5\A1\93az\BA\CCAsI\AE A1\12\E6\FAN\89\A9~\A2\0A\9E\EE\E6KU\D3\9A!\92\99*'O\C1\A86\BA<#\A3\FE\EB\BDEMD#d<\E8\0E*\9A\C9O\A5L\A4\9F", [64 x i8] c"\8E\95\9Bu\DA\E3\13\DA\8C\F4\F7(\14\FC\14?\8Fwy\C6\EB\9F\7F\A1r\99\AE\AD\B6\88\90\18P\1D(\9EI\00\F7\E43\1B\99\DE\C4\B5C:\C7\D3)\EE\B6\DD&T^\96\E5[\87K\E9\09", [64 x i8] c"\E7\18H=\0C\E7idN.B\C7\BC\15\B4c\8E\1F\98\B1; D(V2\A8\03\AF\A9s\EB\DE\0F\F2D\87~\A6\0AL\B0C,\E5w\C3\1B\EB\00\9C\\,I\AA.N\AD\B2\17\AD\8C\C0\9B" }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_sha512_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 216) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_sha512_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_sha512_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 216) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha512_clone(%struct.mbedtls_sha512_context* noundef %dst, %struct.mbedtls_sha512_context* noundef %src) #0 {
entry:
  %dst.addr = alloca %struct.mbedtls_sha512_context*, align 8
  %src.addr = alloca %struct.mbedtls_sha512_context*, align 8
  store %struct.mbedtls_sha512_context* %dst, %struct.mbedtls_sha512_context** %dst.addr, align 8
  store %struct.mbedtls_sha512_context* %src, %struct.mbedtls_sha512_context** %src.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %dst.addr, align 8
  %1 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %src.addr, align 8
  %2 = bitcast %struct.mbedtls_sha512_context* %0 to i8*
  %3 = bitcast %struct.mbedtls_sha512_context* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 216, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %ctx, i32 noundef %is384) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  %is384.addr = alloca i32, align 4
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  store i32 %is384, i32* %is384.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i64 0, i64 0
  store i64 0, i64* %arrayidx, align 8
  %1 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total3 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %total3, i64 0, i64 1
  store i64 0, i64* %arrayidx4, align 8
  %2 = load i32, i32* %is384.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  %3 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [8 x i64], [8 x i64]* %state, i64 0, i64 0
  store i64 7640891576956012808, i64* %arrayidx5, align 8
  %4 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [8 x i64], [8 x i64]* %state6, i64 0, i64 1
  store i64 -4942790177534073029, i64* %arrayidx7, align 8
  %5 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [8 x i64], [8 x i64]* %state8, i64 0, i64 2
  store i64 4354685564936845355, i64* %arrayidx9, align 8
  %6 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state10 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [8 x i64], [8 x i64]* %state10, i64 0, i64 3
  store i64 -6534734903238641935, i64* %arrayidx11, align 8
  %7 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state12 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %7, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [8 x i64], [8 x i64]* %state12, i64 0, i64 4
  store i64 5840696475078001361, i64* %arrayidx13, align 8
  %8 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state14 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %8, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [8 x i64], [8 x i64]* %state14, i64 0, i64 5
  store i64 -7276294671716946913, i64* %arrayidx15, align 8
  %9 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state16 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [8 x i64], [8 x i64]* %state16, i64 0, i64 6
  store i64 2270897969802886507, i64* %arrayidx17, align 8
  %10 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state18 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %10, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [8 x i64], [8 x i64]* %state18, i64 0, i64 7
  store i64 6620516959819538809, i64* %arrayidx19, align 8
  br label %if.end

if.else:                                          ; preds = %do.end2
  %11 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state20 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %11, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [8 x i64], [8 x i64]* %state20, i64 0, i64 0
  store i64 -3766243637369397544, i64* %arrayidx21, align 8
  %12 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state22 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %12, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [8 x i64], [8 x i64]* %state22, i64 0, i64 1
  store i64 7105036623409894663, i64* %arrayidx23, align 8
  %13 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state24 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %13, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [8 x i64], [8 x i64]* %state24, i64 0, i64 2
  store i64 -7973340178411365097, i64* %arrayidx25, align 8
  %14 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state26 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %14, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [8 x i64], [8 x i64]* %state26, i64 0, i64 3
  store i64 1526699215303891257, i64* %arrayidx27, align 8
  %15 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state28 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %15, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [8 x i64], [8 x i64]* %state28, i64 0, i64 4
  store i64 7436329637833083697, i64* %arrayidx29, align 8
  %16 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state30 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %16, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [8 x i64], [8 x i64]* %state30, i64 0, i64 5
  store i64 -8163818279084223215, i64* %arrayidx31, align 8
  %17 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state32 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %17, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [8 x i64], [8 x i64]* %state32, i64 0, i64 6
  store i64 -2662702644619276377, i64* %arrayidx33, align 8
  %18 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state34 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %18, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [8 x i64], [8 x i64]* %state34, i64 0, i64 7
  store i64 5167115440072839076, i64* %arrayidx35, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %is384.addr, align 4
  %20 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %is38436 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %20, i32 0, i32 3
  store i32 %19, i32* %is38436, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %data) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %local = alloca %struct.anon, align 8
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
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
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %1, i32 0, i32 1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %state, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %A = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [8 x i64], [8 x i64]* %A, i64 0, i64 %idxprom3
  store i64 %3, i64* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc59, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %6, 16
  br i1 %cmp6, label %for.body7, label %for.end61

for.body7:                                        ; preds = %for.cond5
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i32, i32* %i, align 4
  %shl = shl i32 %8, 3
  %idxprom8 = sext i32 %shl to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %9 to i64
  %shl10 = shl i64 %conv, 56
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i32, i32* %i, align 4
  %shl11 = shl i32 %11, 3
  %add = add nsw i32 %shl11, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %12 to i64
  %shl15 = shl i64 %conv14, 48
  %or = or i64 %shl10, %shl15
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i32, i32* %i, align 4
  %shl16 = shl i32 %14, 3
  %add17 = add nsw i32 %shl16, 2
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %13, i64 %idxprom18
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i64
  %shl21 = shl i64 %conv20, 40
  %or22 = or i64 %or, %shl21
  %16 = load i8*, i8** %data.addr, align 8
  %17 = load i32, i32* %i, align 4
  %shl23 = shl i32 %17, 3
  %add24 = add nsw i32 %shl23, 3
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %16, i64 %idxprom25
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %18 to i64
  %shl28 = shl i64 %conv27, 32
  %or29 = or i64 %or22, %shl28
  %19 = load i8*, i8** %data.addr, align 8
  %20 = load i32, i32* %i, align 4
  %shl30 = shl i32 %20, 3
  %add31 = add nsw i32 %shl30, 4
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %19, i64 %idxprom32
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i64
  %shl35 = shl i64 %conv34, 24
  %or36 = or i64 %or29, %shl35
  %22 = load i8*, i8** %data.addr, align 8
  %23 = load i32, i32* %i, align 4
  %shl37 = shl i32 %23, 3
  %add38 = add nsw i32 %shl37, 5
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %22, i64 %idxprom39
  %24 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %24 to i64
  %shl42 = shl i64 %conv41, 16
  %or43 = or i64 %or36, %shl42
  %25 = load i8*, i8** %data.addr, align 8
  %26 = load i32, i32* %i, align 4
  %shl44 = shl i32 %26, 3
  %add45 = add nsw i32 %shl44, 6
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %25, i64 %idxprom46
  %27 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %27 to i64
  %shl49 = shl i64 %conv48, 8
  %or50 = or i64 %or43, %shl49
  %28 = load i8*, i8** %data.addr, align 8
  %29 = load i32, i32* %i, align 4
  %shl51 = shl i32 %29, 3
  %add52 = add nsw i32 %shl51, 7
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, i8* %28, i64 %idxprom53
  %30 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %30 to i64
  %or56 = or i64 %or50, %conv55
  %W = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %31 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %31 to i64
  %arrayidx58 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %idxprom57
  store i64 %or56, i64* %arrayidx58, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.body7
  %32 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %32, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond5, !llvm.loop !6

for.end61:                                        ; preds = %for.cond5
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc135, %for.end61
  %33 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %33, 80
  br i1 %cmp63, label %for.body65, label %for.end137

for.body65:                                       ; preds = %for.cond62
  %W66 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %34 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %34, 2
  %idxprom67 = sext i32 %sub to i64
  %arrayidx68 = getelementptr inbounds [80 x i64], [80 x i64]* %W66, i64 0, i64 %idxprom67
  %35 = load i64, i64* %arrayidx68, align 8
  %shr = lshr i64 %35, 19
  %W69 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %36 = load i32, i32* %i, align 4
  %sub70 = sub nsw i32 %36, 2
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [80 x i64], [80 x i64]* %W69, i64 0, i64 %idxprom71
  %37 = load i64, i64* %arrayidx72, align 8
  %shl73 = shl i64 %37, 45
  %or74 = or i64 %shr, %shl73
  %W75 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %38 = load i32, i32* %i, align 4
  %sub76 = sub nsw i32 %38, 2
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [80 x i64], [80 x i64]* %W75, i64 0, i64 %idxprom77
  %39 = load i64, i64* %arrayidx78, align 8
  %shr79 = lshr i64 %39, 61
  %W80 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %40 = load i32, i32* %i, align 4
  %sub81 = sub nsw i32 %40, 2
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [80 x i64], [80 x i64]* %W80, i64 0, i64 %idxprom82
  %41 = load i64, i64* %arrayidx83, align 8
  %shl84 = shl i64 %41, 3
  %or85 = or i64 %shr79, %shl84
  %xor = xor i64 %or74, %or85
  %W86 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %42 = load i32, i32* %i, align 4
  %sub87 = sub nsw i32 %42, 2
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds [80 x i64], [80 x i64]* %W86, i64 0, i64 %idxprom88
  %43 = load i64, i64* %arrayidx89, align 8
  %shr90 = lshr i64 %43, 6
  %xor91 = xor i64 %xor, %shr90
  %W92 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %44 = load i32, i32* %i, align 4
  %sub93 = sub nsw i32 %44, 7
  %idxprom94 = sext i32 %sub93 to i64
  %arrayidx95 = getelementptr inbounds [80 x i64], [80 x i64]* %W92, i64 0, i64 %idxprom94
  %45 = load i64, i64* %arrayidx95, align 8
  %add96 = add i64 %xor91, %45
  %W97 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %46 = load i32, i32* %i, align 4
  %sub98 = sub nsw i32 %46, 15
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [80 x i64], [80 x i64]* %W97, i64 0, i64 %idxprom99
  %47 = load i64, i64* %arrayidx100, align 8
  %shr101 = lshr i64 %47, 1
  %W102 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %48 = load i32, i32* %i, align 4
  %sub103 = sub nsw i32 %48, 15
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds [80 x i64], [80 x i64]* %W102, i64 0, i64 %idxprom104
  %49 = load i64, i64* %arrayidx105, align 8
  %shl106 = shl i64 %49, 63
  %or107 = or i64 %shr101, %shl106
  %W108 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %50 = load i32, i32* %i, align 4
  %sub109 = sub nsw i32 %50, 15
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds [80 x i64], [80 x i64]* %W108, i64 0, i64 %idxprom110
  %51 = load i64, i64* %arrayidx111, align 8
  %shr112 = lshr i64 %51, 8
  %W113 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %52 = load i32, i32* %i, align 4
  %sub114 = sub nsw i32 %52, 15
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [80 x i64], [80 x i64]* %W113, i64 0, i64 %idxprom115
  %53 = load i64, i64* %arrayidx116, align 8
  %shl117 = shl i64 %53, 56
  %or118 = or i64 %shr112, %shl117
  %xor119 = xor i64 %or107, %or118
  %W120 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %54 = load i32, i32* %i, align 4
  %sub121 = sub nsw i32 %54, 15
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds [80 x i64], [80 x i64]* %W120, i64 0, i64 %idxprom122
  %55 = load i64, i64* %arrayidx123, align 8
  %shr124 = lshr i64 %55, 7
  %xor125 = xor i64 %xor119, %shr124
  %add126 = add i64 %add96, %xor125
  %W127 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %56 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %56, 16
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [80 x i64], [80 x i64]* %W127, i64 0, i64 %idxprom129
  %57 = load i64, i64* %arrayidx130, align 8
  %add131 = add i64 %add126, %57
  %W132 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %58 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %58 to i64
  %arrayidx134 = getelementptr inbounds [80 x i64], [80 x i64]* %W132, i64 0, i64 %idxprom133
  store i64 %add131, i64* %arrayidx134, align 8
  br label %for.inc135

for.inc135:                                       ; preds = %for.body65
  %59 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %59, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond62, !llvm.loop !7

for.end137:                                       ; preds = %for.cond62
  store i32 0, i32* %i, align 4
  br label %do.body138

do.body138:                                       ; preds = %do.cond, %for.end137
  br label %do.body139

do.body139:                                       ; preds = %do.body138
  %A140 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx141 = getelementptr inbounds [8 x i64], [8 x i64]* %A140, i64 0, i64 7
  %60 = load i64, i64* %arrayidx141, align 8
  %A142 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx143 = getelementptr inbounds [8 x i64], [8 x i64]* %A142, i64 0, i64 4
  %61 = load i64, i64* %arrayidx143, align 8
  %shr144 = lshr i64 %61, 14
  %A145 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx146 = getelementptr inbounds [8 x i64], [8 x i64]* %A145, i64 0, i64 4
  %62 = load i64, i64* %arrayidx146, align 8
  %shl147 = shl i64 %62, 50
  %or148 = or i64 %shr144, %shl147
  %A149 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [8 x i64], [8 x i64]* %A149, i64 0, i64 4
  %63 = load i64, i64* %arrayidx150, align 8
  %shr151 = lshr i64 %63, 18
  %A152 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx153 = getelementptr inbounds [8 x i64], [8 x i64]* %A152, i64 0, i64 4
  %64 = load i64, i64* %arrayidx153, align 8
  %shl154 = shl i64 %64, 46
  %or155 = or i64 %shr151, %shl154
  %xor156 = xor i64 %or148, %or155
  %A157 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx158 = getelementptr inbounds [8 x i64], [8 x i64]* %A157, i64 0, i64 4
  %65 = load i64, i64* %arrayidx158, align 8
  %shr159 = lshr i64 %65, 41
  %A160 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx161 = getelementptr inbounds [8 x i64], [8 x i64]* %A160, i64 0, i64 4
  %66 = load i64, i64* %arrayidx161, align 8
  %shl162 = shl i64 %66, 23
  %or163 = or i64 %shr159, %shl162
  %xor164 = xor i64 %xor156, %or163
  %add165 = add i64 %60, %xor164
  %A166 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx167 = getelementptr inbounds [8 x i64], [8 x i64]* %A166, i64 0, i64 6
  %67 = load i64, i64* %arrayidx167, align 8
  %A168 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx169 = getelementptr inbounds [8 x i64], [8 x i64]* %A168, i64 0, i64 4
  %68 = load i64, i64* %arrayidx169, align 8
  %A170 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx171 = getelementptr inbounds [8 x i64], [8 x i64]* %A170, i64 0, i64 5
  %69 = load i64, i64* %arrayidx171, align 8
  %A172 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx173 = getelementptr inbounds [8 x i64], [8 x i64]* %A172, i64 0, i64 6
  %70 = load i64, i64* %arrayidx173, align 8
  %xor174 = xor i64 %69, %70
  %and = and i64 %68, %xor174
  %xor175 = xor i64 %67, %and
  %add176 = add i64 %add165, %xor175
  %71 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %71 to i64
  %arrayidx178 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom177
  %72 = load i64, i64* %arrayidx178, align 8
  %add179 = add i64 %add176, %72
  %W180 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %73 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %73 to i64
  %arrayidx182 = getelementptr inbounds [80 x i64], [80 x i64]* %W180, i64 0, i64 %idxprom181
  %74 = load i64, i64* %arrayidx182, align 8
  %add183 = add i64 %add179, %74
  %temp1 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add183, i64* %temp1, align 8
  %A184 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx185 = getelementptr inbounds [8 x i64], [8 x i64]* %A184, i64 0, i64 0
  %75 = load i64, i64* %arrayidx185, align 8
  %shr186 = lshr i64 %75, 28
  %A187 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx188 = getelementptr inbounds [8 x i64], [8 x i64]* %A187, i64 0, i64 0
  %76 = load i64, i64* %arrayidx188, align 8
  %shl189 = shl i64 %76, 36
  %or190 = or i64 %shr186, %shl189
  %A191 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx192 = getelementptr inbounds [8 x i64], [8 x i64]* %A191, i64 0, i64 0
  %77 = load i64, i64* %arrayidx192, align 8
  %shr193 = lshr i64 %77, 34
  %A194 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx195 = getelementptr inbounds [8 x i64], [8 x i64]* %A194, i64 0, i64 0
  %78 = load i64, i64* %arrayidx195, align 8
  %shl196 = shl i64 %78, 30
  %or197 = or i64 %shr193, %shl196
  %xor198 = xor i64 %or190, %or197
  %A199 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx200 = getelementptr inbounds [8 x i64], [8 x i64]* %A199, i64 0, i64 0
  %79 = load i64, i64* %arrayidx200, align 8
  %shr201 = lshr i64 %79, 39
  %A202 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx203 = getelementptr inbounds [8 x i64], [8 x i64]* %A202, i64 0, i64 0
  %80 = load i64, i64* %arrayidx203, align 8
  %shl204 = shl i64 %80, 25
  %or205 = or i64 %shr201, %shl204
  %xor206 = xor i64 %xor198, %or205
  %A207 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx208 = getelementptr inbounds [8 x i64], [8 x i64]* %A207, i64 0, i64 0
  %81 = load i64, i64* %arrayidx208, align 8
  %A209 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx210 = getelementptr inbounds [8 x i64], [8 x i64]* %A209, i64 0, i64 1
  %82 = load i64, i64* %arrayidx210, align 8
  %and211 = and i64 %81, %82
  %A212 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx213 = getelementptr inbounds [8 x i64], [8 x i64]* %A212, i64 0, i64 2
  %83 = load i64, i64* %arrayidx213, align 8
  %A214 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx215 = getelementptr inbounds [8 x i64], [8 x i64]* %A214, i64 0, i64 0
  %84 = load i64, i64* %arrayidx215, align 8
  %A216 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx217 = getelementptr inbounds [8 x i64], [8 x i64]* %A216, i64 0, i64 1
  %85 = load i64, i64* %arrayidx217, align 8
  %or218 = or i64 %84, %85
  %and219 = and i64 %83, %or218
  %or220 = or i64 %and211, %and219
  %add221 = add i64 %xor206, %or220
  %temp2 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add221, i64* %temp2, align 8
  %temp1222 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %86 = load i64, i64* %temp1222, align 8
  %A223 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx224 = getelementptr inbounds [8 x i64], [8 x i64]* %A223, i64 0, i64 3
  %87 = load i64, i64* %arrayidx224, align 8
  %add225 = add i64 %87, %86
  store i64 %add225, i64* %arrayidx224, align 8
  %temp1226 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %88 = load i64, i64* %temp1226, align 8
  %temp2227 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %89 = load i64, i64* %temp2227, align 8
  %add228 = add i64 %88, %89
  %A229 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx230 = getelementptr inbounds [8 x i64], [8 x i64]* %A229, i64 0, i64 7
  store i64 %add228, i64* %arrayidx230, align 8
  br label %do.end231

do.end231:                                        ; preds = %do.body139
  %90 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %90, 1
  store i32 %inc232, i32* %i, align 4
  br label %do.body233

do.body233:                                       ; preds = %do.end231
  %A234 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx235 = getelementptr inbounds [8 x i64], [8 x i64]* %A234, i64 0, i64 6
  %91 = load i64, i64* %arrayidx235, align 8
  %A236 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx237 = getelementptr inbounds [8 x i64], [8 x i64]* %A236, i64 0, i64 3
  %92 = load i64, i64* %arrayidx237, align 8
  %shr238 = lshr i64 %92, 14
  %A239 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx240 = getelementptr inbounds [8 x i64], [8 x i64]* %A239, i64 0, i64 3
  %93 = load i64, i64* %arrayidx240, align 8
  %shl241 = shl i64 %93, 50
  %or242 = or i64 %shr238, %shl241
  %A243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx244 = getelementptr inbounds [8 x i64], [8 x i64]* %A243, i64 0, i64 3
  %94 = load i64, i64* %arrayidx244, align 8
  %shr245 = lshr i64 %94, 18
  %A246 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx247 = getelementptr inbounds [8 x i64], [8 x i64]* %A246, i64 0, i64 3
  %95 = load i64, i64* %arrayidx247, align 8
  %shl248 = shl i64 %95, 46
  %or249 = or i64 %shr245, %shl248
  %xor250 = xor i64 %or242, %or249
  %A251 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx252 = getelementptr inbounds [8 x i64], [8 x i64]* %A251, i64 0, i64 3
  %96 = load i64, i64* %arrayidx252, align 8
  %shr253 = lshr i64 %96, 41
  %A254 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx255 = getelementptr inbounds [8 x i64], [8 x i64]* %A254, i64 0, i64 3
  %97 = load i64, i64* %arrayidx255, align 8
  %shl256 = shl i64 %97, 23
  %or257 = or i64 %shr253, %shl256
  %xor258 = xor i64 %xor250, %or257
  %add259 = add i64 %91, %xor258
  %A260 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx261 = getelementptr inbounds [8 x i64], [8 x i64]* %A260, i64 0, i64 5
  %98 = load i64, i64* %arrayidx261, align 8
  %A262 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx263 = getelementptr inbounds [8 x i64], [8 x i64]* %A262, i64 0, i64 3
  %99 = load i64, i64* %arrayidx263, align 8
  %A264 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx265 = getelementptr inbounds [8 x i64], [8 x i64]* %A264, i64 0, i64 4
  %100 = load i64, i64* %arrayidx265, align 8
  %A266 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx267 = getelementptr inbounds [8 x i64], [8 x i64]* %A266, i64 0, i64 5
  %101 = load i64, i64* %arrayidx267, align 8
  %xor268 = xor i64 %100, %101
  %and269 = and i64 %99, %xor268
  %xor270 = xor i64 %98, %and269
  %add271 = add i64 %add259, %xor270
  %102 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %102 to i64
  %arrayidx273 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom272
  %103 = load i64, i64* %arrayidx273, align 8
  %add274 = add i64 %add271, %103
  %W275 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %104 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %104 to i64
  %arrayidx277 = getelementptr inbounds [80 x i64], [80 x i64]* %W275, i64 0, i64 %idxprom276
  %105 = load i64, i64* %arrayidx277, align 8
  %add278 = add i64 %add274, %105
  %temp1279 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add278, i64* %temp1279, align 8
  %A280 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx281 = getelementptr inbounds [8 x i64], [8 x i64]* %A280, i64 0, i64 7
  %106 = load i64, i64* %arrayidx281, align 8
  %shr282 = lshr i64 %106, 28
  %A283 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx284 = getelementptr inbounds [8 x i64], [8 x i64]* %A283, i64 0, i64 7
  %107 = load i64, i64* %arrayidx284, align 8
  %shl285 = shl i64 %107, 36
  %or286 = or i64 %shr282, %shl285
  %A287 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx288 = getelementptr inbounds [8 x i64], [8 x i64]* %A287, i64 0, i64 7
  %108 = load i64, i64* %arrayidx288, align 8
  %shr289 = lshr i64 %108, 34
  %A290 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx291 = getelementptr inbounds [8 x i64], [8 x i64]* %A290, i64 0, i64 7
  %109 = load i64, i64* %arrayidx291, align 8
  %shl292 = shl i64 %109, 30
  %or293 = or i64 %shr289, %shl292
  %xor294 = xor i64 %or286, %or293
  %A295 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx296 = getelementptr inbounds [8 x i64], [8 x i64]* %A295, i64 0, i64 7
  %110 = load i64, i64* %arrayidx296, align 8
  %shr297 = lshr i64 %110, 39
  %A298 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx299 = getelementptr inbounds [8 x i64], [8 x i64]* %A298, i64 0, i64 7
  %111 = load i64, i64* %arrayidx299, align 8
  %shl300 = shl i64 %111, 25
  %or301 = or i64 %shr297, %shl300
  %xor302 = xor i64 %xor294, %or301
  %A303 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx304 = getelementptr inbounds [8 x i64], [8 x i64]* %A303, i64 0, i64 7
  %112 = load i64, i64* %arrayidx304, align 8
  %A305 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx306 = getelementptr inbounds [8 x i64], [8 x i64]* %A305, i64 0, i64 0
  %113 = load i64, i64* %arrayidx306, align 8
  %and307 = and i64 %112, %113
  %A308 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx309 = getelementptr inbounds [8 x i64], [8 x i64]* %A308, i64 0, i64 1
  %114 = load i64, i64* %arrayidx309, align 8
  %A310 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx311 = getelementptr inbounds [8 x i64], [8 x i64]* %A310, i64 0, i64 7
  %115 = load i64, i64* %arrayidx311, align 8
  %A312 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx313 = getelementptr inbounds [8 x i64], [8 x i64]* %A312, i64 0, i64 0
  %116 = load i64, i64* %arrayidx313, align 8
  %or314 = or i64 %115, %116
  %and315 = and i64 %114, %or314
  %or316 = or i64 %and307, %and315
  %add317 = add i64 %xor302, %or316
  %temp2318 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add317, i64* %temp2318, align 8
  %temp1319 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %117 = load i64, i64* %temp1319, align 8
  %A320 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx321 = getelementptr inbounds [8 x i64], [8 x i64]* %A320, i64 0, i64 2
  %118 = load i64, i64* %arrayidx321, align 8
  %add322 = add i64 %118, %117
  store i64 %add322, i64* %arrayidx321, align 8
  %temp1323 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %119 = load i64, i64* %temp1323, align 8
  %temp2324 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %120 = load i64, i64* %temp2324, align 8
  %add325 = add i64 %119, %120
  %A326 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx327 = getelementptr inbounds [8 x i64], [8 x i64]* %A326, i64 0, i64 6
  store i64 %add325, i64* %arrayidx327, align 8
  br label %do.end328

do.end328:                                        ; preds = %do.body233
  %121 = load i32, i32* %i, align 4
  %inc329 = add nsw i32 %121, 1
  store i32 %inc329, i32* %i, align 4
  br label %do.body330

do.body330:                                       ; preds = %do.end328
  %A331 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx332 = getelementptr inbounds [8 x i64], [8 x i64]* %A331, i64 0, i64 5
  %122 = load i64, i64* %arrayidx332, align 8
  %A333 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx334 = getelementptr inbounds [8 x i64], [8 x i64]* %A333, i64 0, i64 2
  %123 = load i64, i64* %arrayidx334, align 8
  %shr335 = lshr i64 %123, 14
  %A336 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx337 = getelementptr inbounds [8 x i64], [8 x i64]* %A336, i64 0, i64 2
  %124 = load i64, i64* %arrayidx337, align 8
  %shl338 = shl i64 %124, 50
  %or339 = or i64 %shr335, %shl338
  %A340 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx341 = getelementptr inbounds [8 x i64], [8 x i64]* %A340, i64 0, i64 2
  %125 = load i64, i64* %arrayidx341, align 8
  %shr342 = lshr i64 %125, 18
  %A343 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx344 = getelementptr inbounds [8 x i64], [8 x i64]* %A343, i64 0, i64 2
  %126 = load i64, i64* %arrayidx344, align 8
  %shl345 = shl i64 %126, 46
  %or346 = or i64 %shr342, %shl345
  %xor347 = xor i64 %or339, %or346
  %A348 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx349 = getelementptr inbounds [8 x i64], [8 x i64]* %A348, i64 0, i64 2
  %127 = load i64, i64* %arrayidx349, align 8
  %shr350 = lshr i64 %127, 41
  %A351 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx352 = getelementptr inbounds [8 x i64], [8 x i64]* %A351, i64 0, i64 2
  %128 = load i64, i64* %arrayidx352, align 8
  %shl353 = shl i64 %128, 23
  %or354 = or i64 %shr350, %shl353
  %xor355 = xor i64 %xor347, %or354
  %add356 = add i64 %122, %xor355
  %A357 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx358 = getelementptr inbounds [8 x i64], [8 x i64]* %A357, i64 0, i64 4
  %129 = load i64, i64* %arrayidx358, align 8
  %A359 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx360 = getelementptr inbounds [8 x i64], [8 x i64]* %A359, i64 0, i64 2
  %130 = load i64, i64* %arrayidx360, align 8
  %A361 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx362 = getelementptr inbounds [8 x i64], [8 x i64]* %A361, i64 0, i64 3
  %131 = load i64, i64* %arrayidx362, align 8
  %A363 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx364 = getelementptr inbounds [8 x i64], [8 x i64]* %A363, i64 0, i64 4
  %132 = load i64, i64* %arrayidx364, align 8
  %xor365 = xor i64 %131, %132
  %and366 = and i64 %130, %xor365
  %xor367 = xor i64 %129, %and366
  %add368 = add i64 %add356, %xor367
  %133 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %133 to i64
  %arrayidx370 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom369
  %134 = load i64, i64* %arrayidx370, align 8
  %add371 = add i64 %add368, %134
  %W372 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %135 = load i32, i32* %i, align 4
  %idxprom373 = sext i32 %135 to i64
  %arrayidx374 = getelementptr inbounds [80 x i64], [80 x i64]* %W372, i64 0, i64 %idxprom373
  %136 = load i64, i64* %arrayidx374, align 8
  %add375 = add i64 %add371, %136
  %temp1376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add375, i64* %temp1376, align 8
  %A377 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx378 = getelementptr inbounds [8 x i64], [8 x i64]* %A377, i64 0, i64 6
  %137 = load i64, i64* %arrayidx378, align 8
  %shr379 = lshr i64 %137, 28
  %A380 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx381 = getelementptr inbounds [8 x i64], [8 x i64]* %A380, i64 0, i64 6
  %138 = load i64, i64* %arrayidx381, align 8
  %shl382 = shl i64 %138, 36
  %or383 = or i64 %shr379, %shl382
  %A384 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx385 = getelementptr inbounds [8 x i64], [8 x i64]* %A384, i64 0, i64 6
  %139 = load i64, i64* %arrayidx385, align 8
  %shr386 = lshr i64 %139, 34
  %A387 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx388 = getelementptr inbounds [8 x i64], [8 x i64]* %A387, i64 0, i64 6
  %140 = load i64, i64* %arrayidx388, align 8
  %shl389 = shl i64 %140, 30
  %or390 = or i64 %shr386, %shl389
  %xor391 = xor i64 %or383, %or390
  %A392 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx393 = getelementptr inbounds [8 x i64], [8 x i64]* %A392, i64 0, i64 6
  %141 = load i64, i64* %arrayidx393, align 8
  %shr394 = lshr i64 %141, 39
  %A395 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx396 = getelementptr inbounds [8 x i64], [8 x i64]* %A395, i64 0, i64 6
  %142 = load i64, i64* %arrayidx396, align 8
  %shl397 = shl i64 %142, 25
  %or398 = or i64 %shr394, %shl397
  %xor399 = xor i64 %xor391, %or398
  %A400 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx401 = getelementptr inbounds [8 x i64], [8 x i64]* %A400, i64 0, i64 6
  %143 = load i64, i64* %arrayidx401, align 8
  %A402 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx403 = getelementptr inbounds [8 x i64], [8 x i64]* %A402, i64 0, i64 7
  %144 = load i64, i64* %arrayidx403, align 8
  %and404 = and i64 %143, %144
  %A405 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx406 = getelementptr inbounds [8 x i64], [8 x i64]* %A405, i64 0, i64 0
  %145 = load i64, i64* %arrayidx406, align 8
  %A407 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx408 = getelementptr inbounds [8 x i64], [8 x i64]* %A407, i64 0, i64 6
  %146 = load i64, i64* %arrayidx408, align 8
  %A409 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx410 = getelementptr inbounds [8 x i64], [8 x i64]* %A409, i64 0, i64 7
  %147 = load i64, i64* %arrayidx410, align 8
  %or411 = or i64 %146, %147
  %and412 = and i64 %145, %or411
  %or413 = or i64 %and404, %and412
  %add414 = add i64 %xor399, %or413
  %temp2415 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add414, i64* %temp2415, align 8
  %temp1416 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %148 = load i64, i64* %temp1416, align 8
  %A417 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx418 = getelementptr inbounds [8 x i64], [8 x i64]* %A417, i64 0, i64 1
  %149 = load i64, i64* %arrayidx418, align 8
  %add419 = add i64 %149, %148
  store i64 %add419, i64* %arrayidx418, align 8
  %temp1420 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %150 = load i64, i64* %temp1420, align 8
  %temp2421 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %151 = load i64, i64* %temp2421, align 8
  %add422 = add i64 %150, %151
  %A423 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx424 = getelementptr inbounds [8 x i64], [8 x i64]* %A423, i64 0, i64 5
  store i64 %add422, i64* %arrayidx424, align 8
  br label %do.end425

do.end425:                                        ; preds = %do.body330
  %152 = load i32, i32* %i, align 4
  %inc426 = add nsw i32 %152, 1
  store i32 %inc426, i32* %i, align 4
  br label %do.body427

do.body427:                                       ; preds = %do.end425
  %A428 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx429 = getelementptr inbounds [8 x i64], [8 x i64]* %A428, i64 0, i64 4
  %153 = load i64, i64* %arrayidx429, align 8
  %A430 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx431 = getelementptr inbounds [8 x i64], [8 x i64]* %A430, i64 0, i64 1
  %154 = load i64, i64* %arrayidx431, align 8
  %shr432 = lshr i64 %154, 14
  %A433 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx434 = getelementptr inbounds [8 x i64], [8 x i64]* %A433, i64 0, i64 1
  %155 = load i64, i64* %arrayidx434, align 8
  %shl435 = shl i64 %155, 50
  %or436 = or i64 %shr432, %shl435
  %A437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx438 = getelementptr inbounds [8 x i64], [8 x i64]* %A437, i64 0, i64 1
  %156 = load i64, i64* %arrayidx438, align 8
  %shr439 = lshr i64 %156, 18
  %A440 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx441 = getelementptr inbounds [8 x i64], [8 x i64]* %A440, i64 0, i64 1
  %157 = load i64, i64* %arrayidx441, align 8
  %shl442 = shl i64 %157, 46
  %or443 = or i64 %shr439, %shl442
  %xor444 = xor i64 %or436, %or443
  %A445 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx446 = getelementptr inbounds [8 x i64], [8 x i64]* %A445, i64 0, i64 1
  %158 = load i64, i64* %arrayidx446, align 8
  %shr447 = lshr i64 %158, 41
  %A448 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx449 = getelementptr inbounds [8 x i64], [8 x i64]* %A448, i64 0, i64 1
  %159 = load i64, i64* %arrayidx449, align 8
  %shl450 = shl i64 %159, 23
  %or451 = or i64 %shr447, %shl450
  %xor452 = xor i64 %xor444, %or451
  %add453 = add i64 %153, %xor452
  %A454 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx455 = getelementptr inbounds [8 x i64], [8 x i64]* %A454, i64 0, i64 3
  %160 = load i64, i64* %arrayidx455, align 8
  %A456 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx457 = getelementptr inbounds [8 x i64], [8 x i64]* %A456, i64 0, i64 1
  %161 = load i64, i64* %arrayidx457, align 8
  %A458 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx459 = getelementptr inbounds [8 x i64], [8 x i64]* %A458, i64 0, i64 2
  %162 = load i64, i64* %arrayidx459, align 8
  %A460 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx461 = getelementptr inbounds [8 x i64], [8 x i64]* %A460, i64 0, i64 3
  %163 = load i64, i64* %arrayidx461, align 8
  %xor462 = xor i64 %162, %163
  %and463 = and i64 %161, %xor462
  %xor464 = xor i64 %160, %and463
  %add465 = add i64 %add453, %xor464
  %164 = load i32, i32* %i, align 4
  %idxprom466 = sext i32 %164 to i64
  %arrayidx467 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom466
  %165 = load i64, i64* %arrayidx467, align 8
  %add468 = add i64 %add465, %165
  %W469 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %166 = load i32, i32* %i, align 4
  %idxprom470 = sext i32 %166 to i64
  %arrayidx471 = getelementptr inbounds [80 x i64], [80 x i64]* %W469, i64 0, i64 %idxprom470
  %167 = load i64, i64* %arrayidx471, align 8
  %add472 = add i64 %add468, %167
  %temp1473 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add472, i64* %temp1473, align 8
  %A474 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx475 = getelementptr inbounds [8 x i64], [8 x i64]* %A474, i64 0, i64 5
  %168 = load i64, i64* %arrayidx475, align 8
  %shr476 = lshr i64 %168, 28
  %A477 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx478 = getelementptr inbounds [8 x i64], [8 x i64]* %A477, i64 0, i64 5
  %169 = load i64, i64* %arrayidx478, align 8
  %shl479 = shl i64 %169, 36
  %or480 = or i64 %shr476, %shl479
  %A481 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx482 = getelementptr inbounds [8 x i64], [8 x i64]* %A481, i64 0, i64 5
  %170 = load i64, i64* %arrayidx482, align 8
  %shr483 = lshr i64 %170, 34
  %A484 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx485 = getelementptr inbounds [8 x i64], [8 x i64]* %A484, i64 0, i64 5
  %171 = load i64, i64* %arrayidx485, align 8
  %shl486 = shl i64 %171, 30
  %or487 = or i64 %shr483, %shl486
  %xor488 = xor i64 %or480, %or487
  %A489 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx490 = getelementptr inbounds [8 x i64], [8 x i64]* %A489, i64 0, i64 5
  %172 = load i64, i64* %arrayidx490, align 8
  %shr491 = lshr i64 %172, 39
  %A492 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx493 = getelementptr inbounds [8 x i64], [8 x i64]* %A492, i64 0, i64 5
  %173 = load i64, i64* %arrayidx493, align 8
  %shl494 = shl i64 %173, 25
  %or495 = or i64 %shr491, %shl494
  %xor496 = xor i64 %xor488, %or495
  %A497 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx498 = getelementptr inbounds [8 x i64], [8 x i64]* %A497, i64 0, i64 5
  %174 = load i64, i64* %arrayidx498, align 8
  %A499 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx500 = getelementptr inbounds [8 x i64], [8 x i64]* %A499, i64 0, i64 6
  %175 = load i64, i64* %arrayidx500, align 8
  %and501 = and i64 %174, %175
  %A502 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx503 = getelementptr inbounds [8 x i64], [8 x i64]* %A502, i64 0, i64 7
  %176 = load i64, i64* %arrayidx503, align 8
  %A504 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx505 = getelementptr inbounds [8 x i64], [8 x i64]* %A504, i64 0, i64 5
  %177 = load i64, i64* %arrayidx505, align 8
  %A506 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx507 = getelementptr inbounds [8 x i64], [8 x i64]* %A506, i64 0, i64 6
  %178 = load i64, i64* %arrayidx507, align 8
  %or508 = or i64 %177, %178
  %and509 = and i64 %176, %or508
  %or510 = or i64 %and501, %and509
  %add511 = add i64 %xor496, %or510
  %temp2512 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add511, i64* %temp2512, align 8
  %temp1513 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %179 = load i64, i64* %temp1513, align 8
  %A514 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx515 = getelementptr inbounds [8 x i64], [8 x i64]* %A514, i64 0, i64 0
  %180 = load i64, i64* %arrayidx515, align 8
  %add516 = add i64 %180, %179
  store i64 %add516, i64* %arrayidx515, align 8
  %temp1517 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %181 = load i64, i64* %temp1517, align 8
  %temp2518 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %182 = load i64, i64* %temp2518, align 8
  %add519 = add i64 %181, %182
  %A520 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx521 = getelementptr inbounds [8 x i64], [8 x i64]* %A520, i64 0, i64 4
  store i64 %add519, i64* %arrayidx521, align 8
  br label %do.end522

do.end522:                                        ; preds = %do.body427
  %183 = load i32, i32* %i, align 4
  %inc523 = add nsw i32 %183, 1
  store i32 %inc523, i32* %i, align 4
  br label %do.body524

do.body524:                                       ; preds = %do.end522
  %A525 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx526 = getelementptr inbounds [8 x i64], [8 x i64]* %A525, i64 0, i64 3
  %184 = load i64, i64* %arrayidx526, align 8
  %A527 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx528 = getelementptr inbounds [8 x i64], [8 x i64]* %A527, i64 0, i64 0
  %185 = load i64, i64* %arrayidx528, align 8
  %shr529 = lshr i64 %185, 14
  %A530 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx531 = getelementptr inbounds [8 x i64], [8 x i64]* %A530, i64 0, i64 0
  %186 = load i64, i64* %arrayidx531, align 8
  %shl532 = shl i64 %186, 50
  %or533 = or i64 %shr529, %shl532
  %A534 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx535 = getelementptr inbounds [8 x i64], [8 x i64]* %A534, i64 0, i64 0
  %187 = load i64, i64* %arrayidx535, align 8
  %shr536 = lshr i64 %187, 18
  %A537 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx538 = getelementptr inbounds [8 x i64], [8 x i64]* %A537, i64 0, i64 0
  %188 = load i64, i64* %arrayidx538, align 8
  %shl539 = shl i64 %188, 46
  %or540 = or i64 %shr536, %shl539
  %xor541 = xor i64 %or533, %or540
  %A542 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx543 = getelementptr inbounds [8 x i64], [8 x i64]* %A542, i64 0, i64 0
  %189 = load i64, i64* %arrayidx543, align 8
  %shr544 = lshr i64 %189, 41
  %A545 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx546 = getelementptr inbounds [8 x i64], [8 x i64]* %A545, i64 0, i64 0
  %190 = load i64, i64* %arrayidx546, align 8
  %shl547 = shl i64 %190, 23
  %or548 = or i64 %shr544, %shl547
  %xor549 = xor i64 %xor541, %or548
  %add550 = add i64 %184, %xor549
  %A551 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx552 = getelementptr inbounds [8 x i64], [8 x i64]* %A551, i64 0, i64 2
  %191 = load i64, i64* %arrayidx552, align 8
  %A553 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx554 = getelementptr inbounds [8 x i64], [8 x i64]* %A553, i64 0, i64 0
  %192 = load i64, i64* %arrayidx554, align 8
  %A555 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx556 = getelementptr inbounds [8 x i64], [8 x i64]* %A555, i64 0, i64 1
  %193 = load i64, i64* %arrayidx556, align 8
  %A557 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx558 = getelementptr inbounds [8 x i64], [8 x i64]* %A557, i64 0, i64 2
  %194 = load i64, i64* %arrayidx558, align 8
  %xor559 = xor i64 %193, %194
  %and560 = and i64 %192, %xor559
  %xor561 = xor i64 %191, %and560
  %add562 = add i64 %add550, %xor561
  %195 = load i32, i32* %i, align 4
  %idxprom563 = sext i32 %195 to i64
  %arrayidx564 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom563
  %196 = load i64, i64* %arrayidx564, align 8
  %add565 = add i64 %add562, %196
  %W566 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %197 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %197 to i64
  %arrayidx568 = getelementptr inbounds [80 x i64], [80 x i64]* %W566, i64 0, i64 %idxprom567
  %198 = load i64, i64* %arrayidx568, align 8
  %add569 = add i64 %add565, %198
  %temp1570 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add569, i64* %temp1570, align 8
  %A571 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx572 = getelementptr inbounds [8 x i64], [8 x i64]* %A571, i64 0, i64 4
  %199 = load i64, i64* %arrayidx572, align 8
  %shr573 = lshr i64 %199, 28
  %A574 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx575 = getelementptr inbounds [8 x i64], [8 x i64]* %A574, i64 0, i64 4
  %200 = load i64, i64* %arrayidx575, align 8
  %shl576 = shl i64 %200, 36
  %or577 = or i64 %shr573, %shl576
  %A578 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx579 = getelementptr inbounds [8 x i64], [8 x i64]* %A578, i64 0, i64 4
  %201 = load i64, i64* %arrayidx579, align 8
  %shr580 = lshr i64 %201, 34
  %A581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx582 = getelementptr inbounds [8 x i64], [8 x i64]* %A581, i64 0, i64 4
  %202 = load i64, i64* %arrayidx582, align 8
  %shl583 = shl i64 %202, 30
  %or584 = or i64 %shr580, %shl583
  %xor585 = xor i64 %or577, %or584
  %A586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx587 = getelementptr inbounds [8 x i64], [8 x i64]* %A586, i64 0, i64 4
  %203 = load i64, i64* %arrayidx587, align 8
  %shr588 = lshr i64 %203, 39
  %A589 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx590 = getelementptr inbounds [8 x i64], [8 x i64]* %A589, i64 0, i64 4
  %204 = load i64, i64* %arrayidx590, align 8
  %shl591 = shl i64 %204, 25
  %or592 = or i64 %shr588, %shl591
  %xor593 = xor i64 %xor585, %or592
  %A594 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx595 = getelementptr inbounds [8 x i64], [8 x i64]* %A594, i64 0, i64 4
  %205 = load i64, i64* %arrayidx595, align 8
  %A596 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx597 = getelementptr inbounds [8 x i64], [8 x i64]* %A596, i64 0, i64 5
  %206 = load i64, i64* %arrayidx597, align 8
  %and598 = and i64 %205, %206
  %A599 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx600 = getelementptr inbounds [8 x i64], [8 x i64]* %A599, i64 0, i64 6
  %207 = load i64, i64* %arrayidx600, align 8
  %A601 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx602 = getelementptr inbounds [8 x i64], [8 x i64]* %A601, i64 0, i64 4
  %208 = load i64, i64* %arrayidx602, align 8
  %A603 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx604 = getelementptr inbounds [8 x i64], [8 x i64]* %A603, i64 0, i64 5
  %209 = load i64, i64* %arrayidx604, align 8
  %or605 = or i64 %208, %209
  %and606 = and i64 %207, %or605
  %or607 = or i64 %and598, %and606
  %add608 = add i64 %xor593, %or607
  %temp2609 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add608, i64* %temp2609, align 8
  %temp1610 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %210 = load i64, i64* %temp1610, align 8
  %A611 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx612 = getelementptr inbounds [8 x i64], [8 x i64]* %A611, i64 0, i64 7
  %211 = load i64, i64* %arrayidx612, align 8
  %add613 = add i64 %211, %210
  store i64 %add613, i64* %arrayidx612, align 8
  %temp1614 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %212 = load i64, i64* %temp1614, align 8
  %temp2615 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %213 = load i64, i64* %temp2615, align 8
  %add616 = add i64 %212, %213
  %A617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx618 = getelementptr inbounds [8 x i64], [8 x i64]* %A617, i64 0, i64 3
  store i64 %add616, i64* %arrayidx618, align 8
  br label %do.end619

do.end619:                                        ; preds = %do.body524
  %214 = load i32, i32* %i, align 4
  %inc620 = add nsw i32 %214, 1
  store i32 %inc620, i32* %i, align 4
  br label %do.body621

do.body621:                                       ; preds = %do.end619
  %A622 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx623 = getelementptr inbounds [8 x i64], [8 x i64]* %A622, i64 0, i64 2
  %215 = load i64, i64* %arrayidx623, align 8
  %A624 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx625 = getelementptr inbounds [8 x i64], [8 x i64]* %A624, i64 0, i64 7
  %216 = load i64, i64* %arrayidx625, align 8
  %shr626 = lshr i64 %216, 14
  %A627 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx628 = getelementptr inbounds [8 x i64], [8 x i64]* %A627, i64 0, i64 7
  %217 = load i64, i64* %arrayidx628, align 8
  %shl629 = shl i64 %217, 50
  %or630 = or i64 %shr626, %shl629
  %A631 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx632 = getelementptr inbounds [8 x i64], [8 x i64]* %A631, i64 0, i64 7
  %218 = load i64, i64* %arrayidx632, align 8
  %shr633 = lshr i64 %218, 18
  %A634 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx635 = getelementptr inbounds [8 x i64], [8 x i64]* %A634, i64 0, i64 7
  %219 = load i64, i64* %arrayidx635, align 8
  %shl636 = shl i64 %219, 46
  %or637 = or i64 %shr633, %shl636
  %xor638 = xor i64 %or630, %or637
  %A639 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx640 = getelementptr inbounds [8 x i64], [8 x i64]* %A639, i64 0, i64 7
  %220 = load i64, i64* %arrayidx640, align 8
  %shr641 = lshr i64 %220, 41
  %A642 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx643 = getelementptr inbounds [8 x i64], [8 x i64]* %A642, i64 0, i64 7
  %221 = load i64, i64* %arrayidx643, align 8
  %shl644 = shl i64 %221, 23
  %or645 = or i64 %shr641, %shl644
  %xor646 = xor i64 %xor638, %or645
  %add647 = add i64 %215, %xor646
  %A648 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx649 = getelementptr inbounds [8 x i64], [8 x i64]* %A648, i64 0, i64 1
  %222 = load i64, i64* %arrayidx649, align 8
  %A650 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx651 = getelementptr inbounds [8 x i64], [8 x i64]* %A650, i64 0, i64 7
  %223 = load i64, i64* %arrayidx651, align 8
  %A652 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx653 = getelementptr inbounds [8 x i64], [8 x i64]* %A652, i64 0, i64 0
  %224 = load i64, i64* %arrayidx653, align 8
  %A654 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx655 = getelementptr inbounds [8 x i64], [8 x i64]* %A654, i64 0, i64 1
  %225 = load i64, i64* %arrayidx655, align 8
  %xor656 = xor i64 %224, %225
  %and657 = and i64 %223, %xor656
  %xor658 = xor i64 %222, %and657
  %add659 = add i64 %add647, %xor658
  %226 = load i32, i32* %i, align 4
  %idxprom660 = sext i32 %226 to i64
  %arrayidx661 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom660
  %227 = load i64, i64* %arrayidx661, align 8
  %add662 = add i64 %add659, %227
  %W663 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %228 = load i32, i32* %i, align 4
  %idxprom664 = sext i32 %228 to i64
  %arrayidx665 = getelementptr inbounds [80 x i64], [80 x i64]* %W663, i64 0, i64 %idxprom664
  %229 = load i64, i64* %arrayidx665, align 8
  %add666 = add i64 %add662, %229
  %temp1667 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add666, i64* %temp1667, align 8
  %A668 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx669 = getelementptr inbounds [8 x i64], [8 x i64]* %A668, i64 0, i64 3
  %230 = load i64, i64* %arrayidx669, align 8
  %shr670 = lshr i64 %230, 28
  %A671 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx672 = getelementptr inbounds [8 x i64], [8 x i64]* %A671, i64 0, i64 3
  %231 = load i64, i64* %arrayidx672, align 8
  %shl673 = shl i64 %231, 36
  %or674 = or i64 %shr670, %shl673
  %A675 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx676 = getelementptr inbounds [8 x i64], [8 x i64]* %A675, i64 0, i64 3
  %232 = load i64, i64* %arrayidx676, align 8
  %shr677 = lshr i64 %232, 34
  %A678 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx679 = getelementptr inbounds [8 x i64], [8 x i64]* %A678, i64 0, i64 3
  %233 = load i64, i64* %arrayidx679, align 8
  %shl680 = shl i64 %233, 30
  %or681 = or i64 %shr677, %shl680
  %xor682 = xor i64 %or674, %or681
  %A683 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx684 = getelementptr inbounds [8 x i64], [8 x i64]* %A683, i64 0, i64 3
  %234 = load i64, i64* %arrayidx684, align 8
  %shr685 = lshr i64 %234, 39
  %A686 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx687 = getelementptr inbounds [8 x i64], [8 x i64]* %A686, i64 0, i64 3
  %235 = load i64, i64* %arrayidx687, align 8
  %shl688 = shl i64 %235, 25
  %or689 = or i64 %shr685, %shl688
  %xor690 = xor i64 %xor682, %or689
  %A691 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx692 = getelementptr inbounds [8 x i64], [8 x i64]* %A691, i64 0, i64 3
  %236 = load i64, i64* %arrayidx692, align 8
  %A693 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx694 = getelementptr inbounds [8 x i64], [8 x i64]* %A693, i64 0, i64 4
  %237 = load i64, i64* %arrayidx694, align 8
  %and695 = and i64 %236, %237
  %A696 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx697 = getelementptr inbounds [8 x i64], [8 x i64]* %A696, i64 0, i64 5
  %238 = load i64, i64* %arrayidx697, align 8
  %A698 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx699 = getelementptr inbounds [8 x i64], [8 x i64]* %A698, i64 0, i64 3
  %239 = load i64, i64* %arrayidx699, align 8
  %A700 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx701 = getelementptr inbounds [8 x i64], [8 x i64]* %A700, i64 0, i64 4
  %240 = load i64, i64* %arrayidx701, align 8
  %or702 = or i64 %239, %240
  %and703 = and i64 %238, %or702
  %or704 = or i64 %and695, %and703
  %add705 = add i64 %xor690, %or704
  %temp2706 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add705, i64* %temp2706, align 8
  %temp1707 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %241 = load i64, i64* %temp1707, align 8
  %A708 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx709 = getelementptr inbounds [8 x i64], [8 x i64]* %A708, i64 0, i64 6
  %242 = load i64, i64* %arrayidx709, align 8
  %add710 = add i64 %242, %241
  store i64 %add710, i64* %arrayidx709, align 8
  %temp1711 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %243 = load i64, i64* %temp1711, align 8
  %temp2712 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %244 = load i64, i64* %temp2712, align 8
  %add713 = add i64 %243, %244
  %A714 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx715 = getelementptr inbounds [8 x i64], [8 x i64]* %A714, i64 0, i64 2
  store i64 %add713, i64* %arrayidx715, align 8
  br label %do.end716

do.end716:                                        ; preds = %do.body621
  %245 = load i32, i32* %i, align 4
  %inc717 = add nsw i32 %245, 1
  store i32 %inc717, i32* %i, align 4
  br label %do.body718

do.body718:                                       ; preds = %do.end716
  %A719 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx720 = getelementptr inbounds [8 x i64], [8 x i64]* %A719, i64 0, i64 1
  %246 = load i64, i64* %arrayidx720, align 8
  %A721 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx722 = getelementptr inbounds [8 x i64], [8 x i64]* %A721, i64 0, i64 6
  %247 = load i64, i64* %arrayidx722, align 8
  %shr723 = lshr i64 %247, 14
  %A724 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx725 = getelementptr inbounds [8 x i64], [8 x i64]* %A724, i64 0, i64 6
  %248 = load i64, i64* %arrayidx725, align 8
  %shl726 = shl i64 %248, 50
  %or727 = or i64 %shr723, %shl726
  %A728 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx729 = getelementptr inbounds [8 x i64], [8 x i64]* %A728, i64 0, i64 6
  %249 = load i64, i64* %arrayidx729, align 8
  %shr730 = lshr i64 %249, 18
  %A731 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx732 = getelementptr inbounds [8 x i64], [8 x i64]* %A731, i64 0, i64 6
  %250 = load i64, i64* %arrayidx732, align 8
  %shl733 = shl i64 %250, 46
  %or734 = or i64 %shr730, %shl733
  %xor735 = xor i64 %or727, %or734
  %A736 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx737 = getelementptr inbounds [8 x i64], [8 x i64]* %A736, i64 0, i64 6
  %251 = load i64, i64* %arrayidx737, align 8
  %shr738 = lshr i64 %251, 41
  %A739 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx740 = getelementptr inbounds [8 x i64], [8 x i64]* %A739, i64 0, i64 6
  %252 = load i64, i64* %arrayidx740, align 8
  %shl741 = shl i64 %252, 23
  %or742 = or i64 %shr738, %shl741
  %xor743 = xor i64 %xor735, %or742
  %add744 = add i64 %246, %xor743
  %A745 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx746 = getelementptr inbounds [8 x i64], [8 x i64]* %A745, i64 0, i64 0
  %253 = load i64, i64* %arrayidx746, align 8
  %A747 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx748 = getelementptr inbounds [8 x i64], [8 x i64]* %A747, i64 0, i64 6
  %254 = load i64, i64* %arrayidx748, align 8
  %A749 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx750 = getelementptr inbounds [8 x i64], [8 x i64]* %A749, i64 0, i64 7
  %255 = load i64, i64* %arrayidx750, align 8
  %A751 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx752 = getelementptr inbounds [8 x i64], [8 x i64]* %A751, i64 0, i64 0
  %256 = load i64, i64* %arrayidx752, align 8
  %xor753 = xor i64 %255, %256
  %and754 = and i64 %254, %xor753
  %xor755 = xor i64 %253, %and754
  %add756 = add i64 %add744, %xor755
  %257 = load i32, i32* %i, align 4
  %idxprom757 = sext i32 %257 to i64
  %arrayidx758 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom757
  %258 = load i64, i64* %arrayidx758, align 8
  %add759 = add i64 %add756, %258
  %W760 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %259 = load i32, i32* %i, align 4
  %idxprom761 = sext i32 %259 to i64
  %arrayidx762 = getelementptr inbounds [80 x i64], [80 x i64]* %W760, i64 0, i64 %idxprom761
  %260 = load i64, i64* %arrayidx762, align 8
  %add763 = add i64 %add759, %260
  %temp1764 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add763, i64* %temp1764, align 8
  %A765 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx766 = getelementptr inbounds [8 x i64], [8 x i64]* %A765, i64 0, i64 2
  %261 = load i64, i64* %arrayidx766, align 8
  %shr767 = lshr i64 %261, 28
  %A768 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx769 = getelementptr inbounds [8 x i64], [8 x i64]* %A768, i64 0, i64 2
  %262 = load i64, i64* %arrayidx769, align 8
  %shl770 = shl i64 %262, 36
  %or771 = or i64 %shr767, %shl770
  %A772 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx773 = getelementptr inbounds [8 x i64], [8 x i64]* %A772, i64 0, i64 2
  %263 = load i64, i64* %arrayidx773, align 8
  %shr774 = lshr i64 %263, 34
  %A775 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx776 = getelementptr inbounds [8 x i64], [8 x i64]* %A775, i64 0, i64 2
  %264 = load i64, i64* %arrayidx776, align 8
  %shl777 = shl i64 %264, 30
  %or778 = or i64 %shr774, %shl777
  %xor779 = xor i64 %or771, %or778
  %A780 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx781 = getelementptr inbounds [8 x i64], [8 x i64]* %A780, i64 0, i64 2
  %265 = load i64, i64* %arrayidx781, align 8
  %shr782 = lshr i64 %265, 39
  %A783 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx784 = getelementptr inbounds [8 x i64], [8 x i64]* %A783, i64 0, i64 2
  %266 = load i64, i64* %arrayidx784, align 8
  %shl785 = shl i64 %266, 25
  %or786 = or i64 %shr782, %shl785
  %xor787 = xor i64 %xor779, %or786
  %A788 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx789 = getelementptr inbounds [8 x i64], [8 x i64]* %A788, i64 0, i64 2
  %267 = load i64, i64* %arrayidx789, align 8
  %A790 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx791 = getelementptr inbounds [8 x i64], [8 x i64]* %A790, i64 0, i64 3
  %268 = load i64, i64* %arrayidx791, align 8
  %and792 = and i64 %267, %268
  %A793 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx794 = getelementptr inbounds [8 x i64], [8 x i64]* %A793, i64 0, i64 4
  %269 = load i64, i64* %arrayidx794, align 8
  %A795 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx796 = getelementptr inbounds [8 x i64], [8 x i64]* %A795, i64 0, i64 2
  %270 = load i64, i64* %arrayidx796, align 8
  %A797 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx798 = getelementptr inbounds [8 x i64], [8 x i64]* %A797, i64 0, i64 3
  %271 = load i64, i64* %arrayidx798, align 8
  %or799 = or i64 %270, %271
  %and800 = and i64 %269, %or799
  %or801 = or i64 %and792, %and800
  %add802 = add i64 %xor787, %or801
  %temp2803 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add802, i64* %temp2803, align 8
  %temp1804 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %272 = load i64, i64* %temp1804, align 8
  %A805 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx806 = getelementptr inbounds [8 x i64], [8 x i64]* %A805, i64 0, i64 5
  %273 = load i64, i64* %arrayidx806, align 8
  %add807 = add i64 %273, %272
  store i64 %add807, i64* %arrayidx806, align 8
  %temp1808 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %274 = load i64, i64* %temp1808, align 8
  %temp2809 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %275 = load i64, i64* %temp2809, align 8
  %add810 = add i64 %274, %275
  %A811 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx812 = getelementptr inbounds [8 x i64], [8 x i64]* %A811, i64 0, i64 1
  store i64 %add810, i64* %arrayidx812, align 8
  br label %do.end813

do.end813:                                        ; preds = %do.body718
  %276 = load i32, i32* %i, align 4
  %inc814 = add nsw i32 %276, 1
  store i32 %inc814, i32* %i, align 4
  br label %do.body815

do.body815:                                       ; preds = %do.end813
  %A816 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx817 = getelementptr inbounds [8 x i64], [8 x i64]* %A816, i64 0, i64 0
  %277 = load i64, i64* %arrayidx817, align 8
  %A818 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx819 = getelementptr inbounds [8 x i64], [8 x i64]* %A818, i64 0, i64 5
  %278 = load i64, i64* %arrayidx819, align 8
  %shr820 = lshr i64 %278, 14
  %A821 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx822 = getelementptr inbounds [8 x i64], [8 x i64]* %A821, i64 0, i64 5
  %279 = load i64, i64* %arrayidx822, align 8
  %shl823 = shl i64 %279, 50
  %or824 = or i64 %shr820, %shl823
  %A825 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx826 = getelementptr inbounds [8 x i64], [8 x i64]* %A825, i64 0, i64 5
  %280 = load i64, i64* %arrayidx826, align 8
  %shr827 = lshr i64 %280, 18
  %A828 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx829 = getelementptr inbounds [8 x i64], [8 x i64]* %A828, i64 0, i64 5
  %281 = load i64, i64* %arrayidx829, align 8
  %shl830 = shl i64 %281, 46
  %or831 = or i64 %shr827, %shl830
  %xor832 = xor i64 %or824, %or831
  %A833 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx834 = getelementptr inbounds [8 x i64], [8 x i64]* %A833, i64 0, i64 5
  %282 = load i64, i64* %arrayidx834, align 8
  %shr835 = lshr i64 %282, 41
  %A836 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx837 = getelementptr inbounds [8 x i64], [8 x i64]* %A836, i64 0, i64 5
  %283 = load i64, i64* %arrayidx837, align 8
  %shl838 = shl i64 %283, 23
  %or839 = or i64 %shr835, %shl838
  %xor840 = xor i64 %xor832, %or839
  %add841 = add i64 %277, %xor840
  %A842 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx843 = getelementptr inbounds [8 x i64], [8 x i64]* %A842, i64 0, i64 7
  %284 = load i64, i64* %arrayidx843, align 8
  %A844 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx845 = getelementptr inbounds [8 x i64], [8 x i64]* %A844, i64 0, i64 5
  %285 = load i64, i64* %arrayidx845, align 8
  %A846 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx847 = getelementptr inbounds [8 x i64], [8 x i64]* %A846, i64 0, i64 6
  %286 = load i64, i64* %arrayidx847, align 8
  %A848 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx849 = getelementptr inbounds [8 x i64], [8 x i64]* %A848, i64 0, i64 7
  %287 = load i64, i64* %arrayidx849, align 8
  %xor850 = xor i64 %286, %287
  %and851 = and i64 %285, %xor850
  %xor852 = xor i64 %284, %and851
  %add853 = add i64 %add841, %xor852
  %288 = load i32, i32* %i, align 4
  %idxprom854 = sext i32 %288 to i64
  %arrayidx855 = getelementptr inbounds [80 x i64], [80 x i64]* @K, i64 0, i64 %idxprom854
  %289 = load i64, i64* %arrayidx855, align 8
  %add856 = add i64 %add853, %289
  %W857 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %290 = load i32, i32* %i, align 4
  %idxprom858 = sext i32 %290 to i64
  %arrayidx859 = getelementptr inbounds [80 x i64], [80 x i64]* %W857, i64 0, i64 %idxprom858
  %291 = load i64, i64* %arrayidx859, align 8
  %add860 = add i64 %add856, %291
  %temp1861 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i64 %add860, i64* %temp1861, align 8
  %A862 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx863 = getelementptr inbounds [8 x i64], [8 x i64]* %A862, i64 0, i64 1
  %292 = load i64, i64* %arrayidx863, align 8
  %shr864 = lshr i64 %292, 28
  %A865 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx866 = getelementptr inbounds [8 x i64], [8 x i64]* %A865, i64 0, i64 1
  %293 = load i64, i64* %arrayidx866, align 8
  %shl867 = shl i64 %293, 36
  %or868 = or i64 %shr864, %shl867
  %A869 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx870 = getelementptr inbounds [8 x i64], [8 x i64]* %A869, i64 0, i64 1
  %294 = load i64, i64* %arrayidx870, align 8
  %shr871 = lshr i64 %294, 34
  %A872 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx873 = getelementptr inbounds [8 x i64], [8 x i64]* %A872, i64 0, i64 1
  %295 = load i64, i64* %arrayidx873, align 8
  %shl874 = shl i64 %295, 30
  %or875 = or i64 %shr871, %shl874
  %xor876 = xor i64 %or868, %or875
  %A877 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx878 = getelementptr inbounds [8 x i64], [8 x i64]* %A877, i64 0, i64 1
  %296 = load i64, i64* %arrayidx878, align 8
  %shr879 = lshr i64 %296, 39
  %A880 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx881 = getelementptr inbounds [8 x i64], [8 x i64]* %A880, i64 0, i64 1
  %297 = load i64, i64* %arrayidx881, align 8
  %shl882 = shl i64 %297, 25
  %or883 = or i64 %shr879, %shl882
  %xor884 = xor i64 %xor876, %or883
  %A885 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx886 = getelementptr inbounds [8 x i64], [8 x i64]* %A885, i64 0, i64 1
  %298 = load i64, i64* %arrayidx886, align 8
  %A887 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx888 = getelementptr inbounds [8 x i64], [8 x i64]* %A887, i64 0, i64 2
  %299 = load i64, i64* %arrayidx888, align 8
  %and889 = and i64 %298, %299
  %A890 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx891 = getelementptr inbounds [8 x i64], [8 x i64]* %A890, i64 0, i64 3
  %300 = load i64, i64* %arrayidx891, align 8
  %A892 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx893 = getelementptr inbounds [8 x i64], [8 x i64]* %A892, i64 0, i64 1
  %301 = load i64, i64* %arrayidx893, align 8
  %A894 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx895 = getelementptr inbounds [8 x i64], [8 x i64]* %A894, i64 0, i64 2
  %302 = load i64, i64* %arrayidx895, align 8
  %or896 = or i64 %301, %302
  %and897 = and i64 %300, %or896
  %or898 = or i64 %and889, %and897
  %add899 = add i64 %xor884, %or898
  %temp2900 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i64 %add899, i64* %temp2900, align 8
  %temp1901 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %303 = load i64, i64* %temp1901, align 8
  %A902 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx903 = getelementptr inbounds [8 x i64], [8 x i64]* %A902, i64 0, i64 4
  %304 = load i64, i64* %arrayidx903, align 8
  %add904 = add i64 %304, %303
  store i64 %add904, i64* %arrayidx903, align 8
  %temp1905 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %305 = load i64, i64* %temp1905, align 8
  %temp2906 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %306 = load i64, i64* %temp2906, align 8
  %add907 = add i64 %305, %306
  %A908 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %arrayidx909 = getelementptr inbounds [8 x i64], [8 x i64]* %A908, i64 0, i64 0
  store i64 %add907, i64* %arrayidx909, align 8
  br label %do.end910

do.end910:                                        ; preds = %do.body815
  %307 = load i32, i32* %i, align 4
  %inc911 = add nsw i32 %307, 1
  store i32 %inc911, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.end910
  %308 = load i32, i32* %i, align 4
  %cmp912 = icmp slt i32 %308, 80
  br i1 %cmp912, label %do.body138, label %do.end914, !llvm.loop !8

do.end914:                                        ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %for.cond915

for.cond915:                                      ; preds = %for.inc926, %do.end914
  %309 = load i32, i32* %i, align 4
  %cmp916 = icmp slt i32 %309, 8
  br i1 %cmp916, label %for.body918, label %for.end928

for.body918:                                      ; preds = %for.cond915
  %A919 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %310 = load i32, i32* %i, align 4
  %idxprom920 = sext i32 %310 to i64
  %arrayidx921 = getelementptr inbounds [8 x i64], [8 x i64]* %A919, i64 0, i64 %idxprom920
  %311 = load i64, i64* %arrayidx921, align 8
  %312 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state922 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %312, i32 0, i32 1
  %313 = load i32, i32* %i, align 4
  %idxprom923 = sext i32 %313 to i64
  %arrayidx924 = getelementptr inbounds [8 x i64], [8 x i64]* %state922, i64 0, i64 %idxprom923
  %314 = load i64, i64* %arrayidx924, align 8
  %add925 = add i64 %314, %311
  store i64 %add925, i64* %arrayidx924, align 8
  br label %for.inc926

for.inc926:                                       ; preds = %for.body918
  %315 = load i32, i32* %i, align 4
  %inc927 = add nsw i32 %315, 1
  store i32 %inc927, i32* %i, align 4
  br label %for.cond915, !llvm.loop !9

for.end928:                                       ; preds = %for.cond915
  %316 = bitcast %struct.anon* %local to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %316, i64 noundef 720) #6
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fill = alloca i64, align 8
  %left = alloca i32, align 4
  %processed = alloca i64, align 8
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
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
  %1 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i64 0, i64 0
  %2 = load i64, i64* %arrayidx, align 8
  %and = and i64 %2, 127
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %left, align 4
  %3 = load i32, i32* %left, align 4
  %sub = sub i32 128, %3
  %conv3 = zext i32 %sub to i64
  store i64 %conv3, i64* %fill, align 8
  %4 = load i64, i64* %ilen.addr, align 8
  %5 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total4 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i64], [2 x i64]* %total4, i64 0, i64 0
  %6 = load i64, i64* %arrayidx5, align 8
  %add = add i64 %6, %4
  store i64 %add, i64* %arrayidx5, align 8
  %7 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %total6, i64 0, i64 0
  %8 = load i64, i64* %arrayidx7, align 8
  %9 = load i64, i64* %ilen.addr, align 8
  %cmp8 = icmp ult i64 %8, %9
  br i1 %cmp8, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %10 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total11 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* %total11, i64 0, i64 1
  %11 = load i64, i64* %arrayidx12, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %arrayidx12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  %12 = load i32, i32* %left, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end13
  %13 = load i64, i64* %ilen.addr, align 8
  %14 = load i64, i64* %fill, align 8
  %cmp14 = icmp uge i64 %13, %14
  br i1 %cmp14, label %if.then16, label %if.end26

if.then16:                                        ; preds = %land.lhs.true
  %15 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %15, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i64 0, i64 0
  %16 = load i32, i32* %left, align 4
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i64, i64* %fill, align 8
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %17, i64 noundef %18) #5
  %19 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %20 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer17 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %20, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer17, i64 0, i64 0
  %call19 = call i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %19, i8* noundef %arraydecay18) #6
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then16
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then16
  %22 = load i64, i64* %fill, align 8
  %23 = load i8*, i8** %input.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %add.ptr24, i8** %input.addr, align 8
  %24 = load i64, i64* %fill, align 8
  %25 = load i64, i64* %ilen.addr, align 8
  %sub25 = sub i64 %25, %24
  store i64 %sub25, i64* %ilen.addr, align 8
  store i32 0, i32* %left, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %land.lhs.true, %if.end13
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end26
  %26 = load i64, i64* %ilen.addr, align 8
  %cmp27 = icmp uge i64 %26, 128
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %28 = load i8*, i8** %input.addr, align 8
  %29 = load i64, i64* %ilen.addr, align 8
  %call29 = call i64 @mbedtls_internal_sha512_process_many(%struct.mbedtls_sha512_context* noundef %27, i8* noundef %28, i64 noundef %29) #6
  store i64 %call29, i64* %processed, align 8
  %30 = load i64, i64* %processed, align 8
  %cmp30 = icmp ult i64 %30, 128
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body
  %31 = load i64, i64* %processed, align 8
  %32 = load i8*, i8** %input.addr, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %add.ptr34, i8** %input.addr, align 8
  %33 = load i64, i64* %processed, align 8
  %34 = load i64, i64* %ilen.addr, align 8
  %sub35 = sub i64 %34, %33
  store i64 %sub35, i64* %ilen.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %35 = load i64, i64* %ilen.addr, align 8
  %cmp36 = icmp ugt i64 %35, 0
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %while.end
  %36 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer39 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %36, i32 0, i32 2
  %arraydecay40 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer39, i64 0, i64 0
  %37 = load i32, i32* %left, align 4
  %idx.ext41 = zext i32 %37 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay40, i64 %idx.ext41
  %38 = load i8*, i8** %input.addr, align 8
  %39 = load i64, i64* %ilen.addr, align 8
  %call43 = call i8* @memcpy(i8* noundef %add.ptr42, i8* noundef %38, i64 noundef %39) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then32, %if.then22, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_internal_sha512_process_many(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %processed = alloca i64, align 8
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %processed, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp uge i64 %0, 128
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %call = call i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %1, i8* noundef %2) #6
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 128
  store i8* %add.ptr, i8** %data.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %4, 128
  store i64 %sub, i64* %len.addr, align 8
  %5 = load i64, i64* %processed, align 8
  %add = add i64 %5, 128
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
define dso_local i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_sha512_context*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %used = alloca i32, align 4
  %high = alloca i64, align 8
  %low = alloca i64, align 8
  store %struct.mbedtls_sha512_context* %ctx, %struct.mbedtls_sha512_context** %ctx.addr, align 8
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
  %0 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %total, i64 0, i64 0
  %1 = load i64, i64* %arrayidx, align 8
  %and = and i64 %1, 127
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %used, align 4
  %2 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %2, i32 0, i32 2
  %3 = load i32, i32* %used, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %used, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i64 0, i64 %idxprom
  store i8 -128, i8* %arrayidx3, align 1
  %4 = load i32, i32* %used, align 4
  %cmp = icmp ule i32 %4, 112
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end2
  %5 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer5, i64 0, i64 0
  %6 = load i32, i32* %used, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %7 = load i32, i32* %used, align 4
  %sub = sub i32 112, %7
  %conv6 = zext i32 %sub to i64
  %call = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv6) #5
  br label %if.end23

if.else:                                          ; preds = %do.end2
  %8 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer7 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %8, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer7, i64 0, i64 0
  %9 = load i32, i32* %used, align 4
  %idx.ext9 = zext i32 %9 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay8, i64 %idx.ext9
  %10 = load i32, i32* %used, align 4
  %sub11 = sub i32 128, %10
  %conv12 = zext i32 %sub11 to i64
  %call13 = call i8* @memset(i8* noundef %add.ptr10, i32 noundef 0, i64 noundef %conv12) #5
  %11 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %12 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer14 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %12, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer14, i64 0, i64 0
  %call16 = call i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %11, i8* noundef %arraydecay15) #6
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %14 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer20 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %14, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer20, i64 0, i64 0
  %call22 = call i8* @memset(i8* noundef %arraydecay21, i32 noundef 0, i64 noundef 112) #5
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then
  %15 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total24 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %15, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %total24, i64 0, i64 0
  %16 = load i64, i64* %arrayidx25, align 8
  %shr = lshr i64 %16, 61
  %17 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total26 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %17, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %total26, i64 0, i64 1
  %18 = load i64, i64* %arrayidx27, align 8
  %shl = shl i64 %18, 3
  %or = or i64 %shr, %shl
  store i64 %or, i64* %high, align 8
  %19 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %total28 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %19, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %total28, i64 0, i64 0
  %20 = load i64, i64* %arrayidx29, align 8
  %shl30 = shl i64 %20, 3
  store i64 %shl30, i64* %low, align 8
  %21 = load i64, i64* %high, align 8
  %shr31 = lshr i64 %21, 56
  %and32 = and i64 %shr31, 255
  %conv33 = trunc i64 %and32 to i8
  %22 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer34 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %22, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer34, i64 0, i64 112
  store i8 %conv33, i8* %arrayidx35, align 8
  %23 = load i64, i64* %high, align 8
  %shr36 = lshr i64 %23, 48
  %and37 = and i64 %shr36, 255
  %conv38 = trunc i64 %and37 to i8
  %24 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer39 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %24, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer39, i64 0, i64 113
  store i8 %conv38, i8* %arrayidx40, align 1
  %25 = load i64, i64* %high, align 8
  %shr41 = lshr i64 %25, 40
  %and42 = and i64 %shr41, 255
  %conv43 = trunc i64 %and42 to i8
  %26 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer44 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %26, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer44, i64 0, i64 114
  store i8 %conv43, i8* %arrayidx45, align 2
  %27 = load i64, i64* %high, align 8
  %shr46 = lshr i64 %27, 32
  %and47 = and i64 %shr46, 255
  %conv48 = trunc i64 %and47 to i8
  %28 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer49 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %28, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer49, i64 0, i64 115
  store i8 %conv48, i8* %arrayidx50, align 1
  %29 = load i64, i64* %high, align 8
  %shr51 = lshr i64 %29, 24
  %and52 = and i64 %shr51, 255
  %conv53 = trunc i64 %and52 to i8
  %30 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer54 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %30, i32 0, i32 2
  %arrayidx55 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer54, i64 0, i64 116
  store i8 %conv53, i8* %arrayidx55, align 4
  %31 = load i64, i64* %high, align 8
  %shr56 = lshr i64 %31, 16
  %and57 = and i64 %shr56, 255
  %conv58 = trunc i64 %and57 to i8
  %32 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer59 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %32, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer59, i64 0, i64 117
  store i8 %conv58, i8* %arrayidx60, align 1
  %33 = load i64, i64* %high, align 8
  %shr61 = lshr i64 %33, 8
  %and62 = and i64 %shr61, 255
  %conv63 = trunc i64 %and62 to i8
  %34 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer64 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %34, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer64, i64 0, i64 118
  store i8 %conv63, i8* %arrayidx65, align 2
  %35 = load i64, i64* %high, align 8
  %and66 = and i64 %35, 255
  %conv67 = trunc i64 %and66 to i8
  %36 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer68 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %36, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer68, i64 0, i64 119
  store i8 %conv67, i8* %arrayidx69, align 1
  %37 = load i64, i64* %low, align 8
  %shr70 = lshr i64 %37, 56
  %and71 = and i64 %shr70, 255
  %conv72 = trunc i64 %and71 to i8
  %38 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer73 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %38, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer73, i64 0, i64 120
  store i8 %conv72, i8* %arrayidx74, align 8
  %39 = load i64, i64* %low, align 8
  %shr75 = lshr i64 %39, 48
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %40 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer78 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %40, i32 0, i32 2
  %arrayidx79 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer78, i64 0, i64 121
  store i8 %conv77, i8* %arrayidx79, align 1
  %41 = load i64, i64* %low, align 8
  %shr80 = lshr i64 %41, 40
  %and81 = and i64 %shr80, 255
  %conv82 = trunc i64 %and81 to i8
  %42 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer83 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %42, i32 0, i32 2
  %arrayidx84 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer83, i64 0, i64 122
  store i8 %conv82, i8* %arrayidx84, align 2
  %43 = load i64, i64* %low, align 8
  %shr85 = lshr i64 %43, 32
  %and86 = and i64 %shr85, 255
  %conv87 = trunc i64 %and86 to i8
  %44 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer88 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %44, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer88, i64 0, i64 123
  store i8 %conv87, i8* %arrayidx89, align 1
  %45 = load i64, i64* %low, align 8
  %shr90 = lshr i64 %45, 24
  %and91 = and i64 %shr90, 255
  %conv92 = trunc i64 %and91 to i8
  %46 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer93 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %46, i32 0, i32 2
  %arrayidx94 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer93, i64 0, i64 124
  store i8 %conv92, i8* %arrayidx94, align 4
  %47 = load i64, i64* %low, align 8
  %shr95 = lshr i64 %47, 16
  %and96 = and i64 %shr95, 255
  %conv97 = trunc i64 %and96 to i8
  %48 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer98 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %48, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer98, i64 0, i64 125
  store i8 %conv97, i8* %arrayidx99, align 1
  %49 = load i64, i64* %low, align 8
  %shr100 = lshr i64 %49, 8
  %and101 = and i64 %shr100, 255
  %conv102 = trunc i64 %and101 to i8
  %50 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer103 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %50, i32 0, i32 2
  %arrayidx104 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer103, i64 0, i64 126
  store i8 %conv102, i8* %arrayidx104, align 2
  %51 = load i64, i64* %low, align 8
  %and105 = and i64 %51, 255
  %conv106 = trunc i64 %and105 to i8
  %52 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer107 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %52, i32 0, i32 2
  %arrayidx108 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer107, i64 0, i64 127
  store i8 %conv106, i8* %arrayidx108, align 1
  %53 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %54 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %buffer109 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %54, i32 0, i32 2
  %arraydecay110 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer109, i64 0, i64 0
  %call111 = call i32 @mbedtls_internal_sha512_process(%struct.mbedtls_sha512_context* noundef %53, i8* noundef %arraydecay110) #6
  store i32 %call111, i32* %ret, align 4
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end23
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end23
  %56 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %56, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [8 x i64], [8 x i64]* %state, i64 0, i64 0
  %57 = load i64, i64* %arrayidx116, align 8
  %shr117 = lshr i64 %57, 56
  %and118 = and i64 %shr117, 255
  %conv119 = trunc i64 %and118 to i8
  %58 = load i8*, i8** %output.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %conv119, i8* %arrayidx120, align 1
  %59 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state121 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %59, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [8 x i64], [8 x i64]* %state121, i64 0, i64 0
  %60 = load i64, i64* %arrayidx122, align 8
  %shr123 = lshr i64 %60, 48
  %and124 = and i64 %shr123, 255
  %conv125 = trunc i64 %and124 to i8
  %61 = load i8*, i8** %output.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 %conv125, i8* %arrayidx126, align 1
  %62 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state127 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %62, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [8 x i64], [8 x i64]* %state127, i64 0, i64 0
  %63 = load i64, i64* %arrayidx128, align 8
  %shr129 = lshr i64 %63, 40
  %and130 = and i64 %shr129, 255
  %conv131 = trunc i64 %and130 to i8
  %64 = load i8*, i8** %output.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 %conv131, i8* %arrayidx132, align 1
  %65 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state133 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %65, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [8 x i64], [8 x i64]* %state133, i64 0, i64 0
  %66 = load i64, i64* %arrayidx134, align 8
  %shr135 = lshr i64 %66, 32
  %and136 = and i64 %shr135, 255
  %conv137 = trunc i64 %and136 to i8
  %67 = load i8*, i8** %output.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 %conv137, i8* %arrayidx138, align 1
  %68 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state139 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %68, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [8 x i64], [8 x i64]* %state139, i64 0, i64 0
  %69 = load i64, i64* %arrayidx140, align 8
  %shr141 = lshr i64 %69, 24
  %and142 = and i64 %shr141, 255
  %conv143 = trunc i64 %and142 to i8
  %70 = load i8*, i8** %output.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %70, i64 4
  store i8 %conv143, i8* %arrayidx144, align 1
  %71 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state145 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %71, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [8 x i64], [8 x i64]* %state145, i64 0, i64 0
  %72 = load i64, i64* %arrayidx146, align 8
  %shr147 = lshr i64 %72, 16
  %and148 = and i64 %shr147, 255
  %conv149 = trunc i64 %and148 to i8
  %73 = load i8*, i8** %output.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %73, i64 5
  store i8 %conv149, i8* %arrayidx150, align 1
  %74 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state151 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %74, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [8 x i64], [8 x i64]* %state151, i64 0, i64 0
  %75 = load i64, i64* %arrayidx152, align 8
  %shr153 = lshr i64 %75, 8
  %and154 = and i64 %shr153, 255
  %conv155 = trunc i64 %and154 to i8
  %76 = load i8*, i8** %output.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %76, i64 6
  store i8 %conv155, i8* %arrayidx156, align 1
  %77 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state157 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %77, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [8 x i64], [8 x i64]* %state157, i64 0, i64 0
  %78 = load i64, i64* %arrayidx158, align 8
  %and159 = and i64 %78, 255
  %conv160 = trunc i64 %and159 to i8
  %79 = load i8*, i8** %output.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %79, i64 7
  store i8 %conv160, i8* %arrayidx161, align 1
  %80 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state162 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %80, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [8 x i64], [8 x i64]* %state162, i64 0, i64 1
  %81 = load i64, i64* %arrayidx163, align 8
  %shr164 = lshr i64 %81, 56
  %and165 = and i64 %shr164, 255
  %conv166 = trunc i64 %and165 to i8
  %82 = load i8*, i8** %output.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %82, i64 8
  store i8 %conv166, i8* %arrayidx167, align 1
  %83 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state168 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %83, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [8 x i64], [8 x i64]* %state168, i64 0, i64 1
  %84 = load i64, i64* %arrayidx169, align 8
  %shr170 = lshr i64 %84, 48
  %and171 = and i64 %shr170, 255
  %conv172 = trunc i64 %and171 to i8
  %85 = load i8*, i8** %output.addr, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %85, i64 9
  store i8 %conv172, i8* %arrayidx173, align 1
  %86 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state174 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %86, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [8 x i64], [8 x i64]* %state174, i64 0, i64 1
  %87 = load i64, i64* %arrayidx175, align 8
  %shr176 = lshr i64 %87, 40
  %and177 = and i64 %shr176, 255
  %conv178 = trunc i64 %and177 to i8
  %88 = load i8*, i8** %output.addr, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %88, i64 10
  store i8 %conv178, i8* %arrayidx179, align 1
  %89 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state180 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %89, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [8 x i64], [8 x i64]* %state180, i64 0, i64 1
  %90 = load i64, i64* %arrayidx181, align 8
  %shr182 = lshr i64 %90, 32
  %and183 = and i64 %shr182, 255
  %conv184 = trunc i64 %and183 to i8
  %91 = load i8*, i8** %output.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %91, i64 11
  store i8 %conv184, i8* %arrayidx185, align 1
  %92 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state186 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %92, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [8 x i64], [8 x i64]* %state186, i64 0, i64 1
  %93 = load i64, i64* %arrayidx187, align 8
  %shr188 = lshr i64 %93, 24
  %and189 = and i64 %shr188, 255
  %conv190 = trunc i64 %and189 to i8
  %94 = load i8*, i8** %output.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %94, i64 12
  store i8 %conv190, i8* %arrayidx191, align 1
  %95 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state192 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %95, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [8 x i64], [8 x i64]* %state192, i64 0, i64 1
  %96 = load i64, i64* %arrayidx193, align 8
  %shr194 = lshr i64 %96, 16
  %and195 = and i64 %shr194, 255
  %conv196 = trunc i64 %and195 to i8
  %97 = load i8*, i8** %output.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %97, i64 13
  store i8 %conv196, i8* %arrayidx197, align 1
  %98 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state198 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %98, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [8 x i64], [8 x i64]* %state198, i64 0, i64 1
  %99 = load i64, i64* %arrayidx199, align 8
  %shr200 = lshr i64 %99, 8
  %and201 = and i64 %shr200, 255
  %conv202 = trunc i64 %and201 to i8
  %100 = load i8*, i8** %output.addr, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %100, i64 14
  store i8 %conv202, i8* %arrayidx203, align 1
  %101 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state204 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %101, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [8 x i64], [8 x i64]* %state204, i64 0, i64 1
  %102 = load i64, i64* %arrayidx205, align 8
  %and206 = and i64 %102, 255
  %conv207 = trunc i64 %and206 to i8
  %103 = load i8*, i8** %output.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %103, i64 15
  store i8 %conv207, i8* %arrayidx208, align 1
  %104 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state209 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %104, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [8 x i64], [8 x i64]* %state209, i64 0, i64 2
  %105 = load i64, i64* %arrayidx210, align 8
  %shr211 = lshr i64 %105, 56
  %and212 = and i64 %shr211, 255
  %conv213 = trunc i64 %and212 to i8
  %106 = load i8*, i8** %output.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %106, i64 16
  store i8 %conv213, i8* %arrayidx214, align 1
  %107 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state215 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %107, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [8 x i64], [8 x i64]* %state215, i64 0, i64 2
  %108 = load i64, i64* %arrayidx216, align 8
  %shr217 = lshr i64 %108, 48
  %and218 = and i64 %shr217, 255
  %conv219 = trunc i64 %and218 to i8
  %109 = load i8*, i8** %output.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %109, i64 17
  store i8 %conv219, i8* %arrayidx220, align 1
  %110 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state221 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %110, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [8 x i64], [8 x i64]* %state221, i64 0, i64 2
  %111 = load i64, i64* %arrayidx222, align 8
  %shr223 = lshr i64 %111, 40
  %and224 = and i64 %shr223, 255
  %conv225 = trunc i64 %and224 to i8
  %112 = load i8*, i8** %output.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %112, i64 18
  store i8 %conv225, i8* %arrayidx226, align 1
  %113 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state227 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %113, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [8 x i64], [8 x i64]* %state227, i64 0, i64 2
  %114 = load i64, i64* %arrayidx228, align 8
  %shr229 = lshr i64 %114, 32
  %and230 = and i64 %shr229, 255
  %conv231 = trunc i64 %and230 to i8
  %115 = load i8*, i8** %output.addr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %115, i64 19
  store i8 %conv231, i8* %arrayidx232, align 1
  %116 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state233 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %116, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [8 x i64], [8 x i64]* %state233, i64 0, i64 2
  %117 = load i64, i64* %arrayidx234, align 8
  %shr235 = lshr i64 %117, 24
  %and236 = and i64 %shr235, 255
  %conv237 = trunc i64 %and236 to i8
  %118 = load i8*, i8** %output.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %118, i64 20
  store i8 %conv237, i8* %arrayidx238, align 1
  %119 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state239 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %119, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [8 x i64], [8 x i64]* %state239, i64 0, i64 2
  %120 = load i64, i64* %arrayidx240, align 8
  %shr241 = lshr i64 %120, 16
  %and242 = and i64 %shr241, 255
  %conv243 = trunc i64 %and242 to i8
  %121 = load i8*, i8** %output.addr, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %121, i64 21
  store i8 %conv243, i8* %arrayidx244, align 1
  %122 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state245 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %122, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [8 x i64], [8 x i64]* %state245, i64 0, i64 2
  %123 = load i64, i64* %arrayidx246, align 8
  %shr247 = lshr i64 %123, 8
  %and248 = and i64 %shr247, 255
  %conv249 = trunc i64 %and248 to i8
  %124 = load i8*, i8** %output.addr, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %124, i64 22
  store i8 %conv249, i8* %arrayidx250, align 1
  %125 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state251 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %125, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [8 x i64], [8 x i64]* %state251, i64 0, i64 2
  %126 = load i64, i64* %arrayidx252, align 8
  %and253 = and i64 %126, 255
  %conv254 = trunc i64 %and253 to i8
  %127 = load i8*, i8** %output.addr, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %127, i64 23
  store i8 %conv254, i8* %arrayidx255, align 1
  %128 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state256 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %128, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [8 x i64], [8 x i64]* %state256, i64 0, i64 3
  %129 = load i64, i64* %arrayidx257, align 8
  %shr258 = lshr i64 %129, 56
  %and259 = and i64 %shr258, 255
  %conv260 = trunc i64 %and259 to i8
  %130 = load i8*, i8** %output.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %130, i64 24
  store i8 %conv260, i8* %arrayidx261, align 1
  %131 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state262 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %131, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [8 x i64], [8 x i64]* %state262, i64 0, i64 3
  %132 = load i64, i64* %arrayidx263, align 8
  %shr264 = lshr i64 %132, 48
  %and265 = and i64 %shr264, 255
  %conv266 = trunc i64 %and265 to i8
  %133 = load i8*, i8** %output.addr, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %133, i64 25
  store i8 %conv266, i8* %arrayidx267, align 1
  %134 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state268 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %134, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [8 x i64], [8 x i64]* %state268, i64 0, i64 3
  %135 = load i64, i64* %arrayidx269, align 8
  %shr270 = lshr i64 %135, 40
  %and271 = and i64 %shr270, 255
  %conv272 = trunc i64 %and271 to i8
  %136 = load i8*, i8** %output.addr, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %136, i64 26
  store i8 %conv272, i8* %arrayidx273, align 1
  %137 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state274 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %137, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [8 x i64], [8 x i64]* %state274, i64 0, i64 3
  %138 = load i64, i64* %arrayidx275, align 8
  %shr276 = lshr i64 %138, 32
  %and277 = and i64 %shr276, 255
  %conv278 = trunc i64 %and277 to i8
  %139 = load i8*, i8** %output.addr, align 8
  %arrayidx279 = getelementptr inbounds i8, i8* %139, i64 27
  store i8 %conv278, i8* %arrayidx279, align 1
  %140 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state280 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %140, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [8 x i64], [8 x i64]* %state280, i64 0, i64 3
  %141 = load i64, i64* %arrayidx281, align 8
  %shr282 = lshr i64 %141, 24
  %and283 = and i64 %shr282, 255
  %conv284 = trunc i64 %and283 to i8
  %142 = load i8*, i8** %output.addr, align 8
  %arrayidx285 = getelementptr inbounds i8, i8* %142, i64 28
  store i8 %conv284, i8* %arrayidx285, align 1
  %143 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state286 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %143, i32 0, i32 1
  %arrayidx287 = getelementptr inbounds [8 x i64], [8 x i64]* %state286, i64 0, i64 3
  %144 = load i64, i64* %arrayidx287, align 8
  %shr288 = lshr i64 %144, 16
  %and289 = and i64 %shr288, 255
  %conv290 = trunc i64 %and289 to i8
  %145 = load i8*, i8** %output.addr, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %145, i64 29
  store i8 %conv290, i8* %arrayidx291, align 1
  %146 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state292 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %146, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [8 x i64], [8 x i64]* %state292, i64 0, i64 3
  %147 = load i64, i64* %arrayidx293, align 8
  %shr294 = lshr i64 %147, 8
  %and295 = and i64 %shr294, 255
  %conv296 = trunc i64 %and295 to i8
  %148 = load i8*, i8** %output.addr, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %148, i64 30
  store i8 %conv296, i8* %arrayidx297, align 1
  %149 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state298 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %149, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [8 x i64], [8 x i64]* %state298, i64 0, i64 3
  %150 = load i64, i64* %arrayidx299, align 8
  %and300 = and i64 %150, 255
  %conv301 = trunc i64 %and300 to i8
  %151 = load i8*, i8** %output.addr, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %151, i64 31
  store i8 %conv301, i8* %arrayidx302, align 1
  %152 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state303 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %152, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [8 x i64], [8 x i64]* %state303, i64 0, i64 4
  %153 = load i64, i64* %arrayidx304, align 8
  %shr305 = lshr i64 %153, 56
  %and306 = and i64 %shr305, 255
  %conv307 = trunc i64 %and306 to i8
  %154 = load i8*, i8** %output.addr, align 8
  %arrayidx308 = getelementptr inbounds i8, i8* %154, i64 32
  store i8 %conv307, i8* %arrayidx308, align 1
  %155 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state309 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %155, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [8 x i64], [8 x i64]* %state309, i64 0, i64 4
  %156 = load i64, i64* %arrayidx310, align 8
  %shr311 = lshr i64 %156, 48
  %and312 = and i64 %shr311, 255
  %conv313 = trunc i64 %and312 to i8
  %157 = load i8*, i8** %output.addr, align 8
  %arrayidx314 = getelementptr inbounds i8, i8* %157, i64 33
  store i8 %conv313, i8* %arrayidx314, align 1
  %158 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state315 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %158, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [8 x i64], [8 x i64]* %state315, i64 0, i64 4
  %159 = load i64, i64* %arrayidx316, align 8
  %shr317 = lshr i64 %159, 40
  %and318 = and i64 %shr317, 255
  %conv319 = trunc i64 %and318 to i8
  %160 = load i8*, i8** %output.addr, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %160, i64 34
  store i8 %conv319, i8* %arrayidx320, align 1
  %161 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state321 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %161, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [8 x i64], [8 x i64]* %state321, i64 0, i64 4
  %162 = load i64, i64* %arrayidx322, align 8
  %shr323 = lshr i64 %162, 32
  %and324 = and i64 %shr323, 255
  %conv325 = trunc i64 %and324 to i8
  %163 = load i8*, i8** %output.addr, align 8
  %arrayidx326 = getelementptr inbounds i8, i8* %163, i64 35
  store i8 %conv325, i8* %arrayidx326, align 1
  %164 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state327 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %164, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [8 x i64], [8 x i64]* %state327, i64 0, i64 4
  %165 = load i64, i64* %arrayidx328, align 8
  %shr329 = lshr i64 %165, 24
  %and330 = and i64 %shr329, 255
  %conv331 = trunc i64 %and330 to i8
  %166 = load i8*, i8** %output.addr, align 8
  %arrayidx332 = getelementptr inbounds i8, i8* %166, i64 36
  store i8 %conv331, i8* %arrayidx332, align 1
  %167 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state333 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %167, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [8 x i64], [8 x i64]* %state333, i64 0, i64 4
  %168 = load i64, i64* %arrayidx334, align 8
  %shr335 = lshr i64 %168, 16
  %and336 = and i64 %shr335, 255
  %conv337 = trunc i64 %and336 to i8
  %169 = load i8*, i8** %output.addr, align 8
  %arrayidx338 = getelementptr inbounds i8, i8* %169, i64 37
  store i8 %conv337, i8* %arrayidx338, align 1
  %170 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state339 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %170, i32 0, i32 1
  %arrayidx340 = getelementptr inbounds [8 x i64], [8 x i64]* %state339, i64 0, i64 4
  %171 = load i64, i64* %arrayidx340, align 8
  %shr341 = lshr i64 %171, 8
  %and342 = and i64 %shr341, 255
  %conv343 = trunc i64 %and342 to i8
  %172 = load i8*, i8** %output.addr, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %172, i64 38
  store i8 %conv343, i8* %arrayidx344, align 1
  %173 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state345 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %173, i32 0, i32 1
  %arrayidx346 = getelementptr inbounds [8 x i64], [8 x i64]* %state345, i64 0, i64 4
  %174 = load i64, i64* %arrayidx346, align 8
  %and347 = and i64 %174, 255
  %conv348 = trunc i64 %and347 to i8
  %175 = load i8*, i8** %output.addr, align 8
  %arrayidx349 = getelementptr inbounds i8, i8* %175, i64 39
  store i8 %conv348, i8* %arrayidx349, align 1
  %176 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state350 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %176, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [8 x i64], [8 x i64]* %state350, i64 0, i64 5
  %177 = load i64, i64* %arrayidx351, align 8
  %shr352 = lshr i64 %177, 56
  %and353 = and i64 %shr352, 255
  %conv354 = trunc i64 %and353 to i8
  %178 = load i8*, i8** %output.addr, align 8
  %arrayidx355 = getelementptr inbounds i8, i8* %178, i64 40
  store i8 %conv354, i8* %arrayidx355, align 1
  %179 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state356 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %179, i32 0, i32 1
  %arrayidx357 = getelementptr inbounds [8 x i64], [8 x i64]* %state356, i64 0, i64 5
  %180 = load i64, i64* %arrayidx357, align 8
  %shr358 = lshr i64 %180, 48
  %and359 = and i64 %shr358, 255
  %conv360 = trunc i64 %and359 to i8
  %181 = load i8*, i8** %output.addr, align 8
  %arrayidx361 = getelementptr inbounds i8, i8* %181, i64 41
  store i8 %conv360, i8* %arrayidx361, align 1
  %182 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state362 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %182, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [8 x i64], [8 x i64]* %state362, i64 0, i64 5
  %183 = load i64, i64* %arrayidx363, align 8
  %shr364 = lshr i64 %183, 40
  %and365 = and i64 %shr364, 255
  %conv366 = trunc i64 %and365 to i8
  %184 = load i8*, i8** %output.addr, align 8
  %arrayidx367 = getelementptr inbounds i8, i8* %184, i64 42
  store i8 %conv366, i8* %arrayidx367, align 1
  %185 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state368 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %185, i32 0, i32 1
  %arrayidx369 = getelementptr inbounds [8 x i64], [8 x i64]* %state368, i64 0, i64 5
  %186 = load i64, i64* %arrayidx369, align 8
  %shr370 = lshr i64 %186, 32
  %and371 = and i64 %shr370, 255
  %conv372 = trunc i64 %and371 to i8
  %187 = load i8*, i8** %output.addr, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %187, i64 43
  store i8 %conv372, i8* %arrayidx373, align 1
  %188 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state374 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %188, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [8 x i64], [8 x i64]* %state374, i64 0, i64 5
  %189 = load i64, i64* %arrayidx375, align 8
  %shr376 = lshr i64 %189, 24
  %and377 = and i64 %shr376, 255
  %conv378 = trunc i64 %and377 to i8
  %190 = load i8*, i8** %output.addr, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %190, i64 44
  store i8 %conv378, i8* %arrayidx379, align 1
  %191 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state380 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %191, i32 0, i32 1
  %arrayidx381 = getelementptr inbounds [8 x i64], [8 x i64]* %state380, i64 0, i64 5
  %192 = load i64, i64* %arrayidx381, align 8
  %shr382 = lshr i64 %192, 16
  %and383 = and i64 %shr382, 255
  %conv384 = trunc i64 %and383 to i8
  %193 = load i8*, i8** %output.addr, align 8
  %arrayidx385 = getelementptr inbounds i8, i8* %193, i64 45
  store i8 %conv384, i8* %arrayidx385, align 1
  %194 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state386 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %194, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [8 x i64], [8 x i64]* %state386, i64 0, i64 5
  %195 = load i64, i64* %arrayidx387, align 8
  %shr388 = lshr i64 %195, 8
  %and389 = and i64 %shr388, 255
  %conv390 = trunc i64 %and389 to i8
  %196 = load i8*, i8** %output.addr, align 8
  %arrayidx391 = getelementptr inbounds i8, i8* %196, i64 46
  store i8 %conv390, i8* %arrayidx391, align 1
  %197 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state392 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %197, i32 0, i32 1
  %arrayidx393 = getelementptr inbounds [8 x i64], [8 x i64]* %state392, i64 0, i64 5
  %198 = load i64, i64* %arrayidx393, align 8
  %and394 = and i64 %198, 255
  %conv395 = trunc i64 %and394 to i8
  %199 = load i8*, i8** %output.addr, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %199, i64 47
  store i8 %conv395, i8* %arrayidx396, align 1
  %200 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %is384 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %200, i32 0, i32 3
  %201 = load i32, i32* %is384, align 8
  %cmp397 = icmp eq i32 %201, 0
  br i1 %cmp397, label %if.then399, label %if.end494

if.then399:                                       ; preds = %if.end115
  %202 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state400 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %202, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [8 x i64], [8 x i64]* %state400, i64 0, i64 6
  %203 = load i64, i64* %arrayidx401, align 8
  %shr402 = lshr i64 %203, 56
  %and403 = and i64 %shr402, 255
  %conv404 = trunc i64 %and403 to i8
  %204 = load i8*, i8** %output.addr, align 8
  %arrayidx405 = getelementptr inbounds i8, i8* %204, i64 48
  store i8 %conv404, i8* %arrayidx405, align 1
  %205 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state406 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %205, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [8 x i64], [8 x i64]* %state406, i64 0, i64 6
  %206 = load i64, i64* %arrayidx407, align 8
  %shr408 = lshr i64 %206, 48
  %and409 = and i64 %shr408, 255
  %conv410 = trunc i64 %and409 to i8
  %207 = load i8*, i8** %output.addr, align 8
  %arrayidx411 = getelementptr inbounds i8, i8* %207, i64 49
  store i8 %conv410, i8* %arrayidx411, align 1
  %208 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state412 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %208, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [8 x i64], [8 x i64]* %state412, i64 0, i64 6
  %209 = load i64, i64* %arrayidx413, align 8
  %shr414 = lshr i64 %209, 40
  %and415 = and i64 %shr414, 255
  %conv416 = trunc i64 %and415 to i8
  %210 = load i8*, i8** %output.addr, align 8
  %arrayidx417 = getelementptr inbounds i8, i8* %210, i64 50
  store i8 %conv416, i8* %arrayidx417, align 1
  %211 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state418 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %211, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [8 x i64], [8 x i64]* %state418, i64 0, i64 6
  %212 = load i64, i64* %arrayidx419, align 8
  %shr420 = lshr i64 %212, 32
  %and421 = and i64 %shr420, 255
  %conv422 = trunc i64 %and421 to i8
  %213 = load i8*, i8** %output.addr, align 8
  %arrayidx423 = getelementptr inbounds i8, i8* %213, i64 51
  store i8 %conv422, i8* %arrayidx423, align 1
  %214 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state424 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %214, i32 0, i32 1
  %arrayidx425 = getelementptr inbounds [8 x i64], [8 x i64]* %state424, i64 0, i64 6
  %215 = load i64, i64* %arrayidx425, align 8
  %shr426 = lshr i64 %215, 24
  %and427 = and i64 %shr426, 255
  %conv428 = trunc i64 %and427 to i8
  %216 = load i8*, i8** %output.addr, align 8
  %arrayidx429 = getelementptr inbounds i8, i8* %216, i64 52
  store i8 %conv428, i8* %arrayidx429, align 1
  %217 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state430 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %217, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [8 x i64], [8 x i64]* %state430, i64 0, i64 6
  %218 = load i64, i64* %arrayidx431, align 8
  %shr432 = lshr i64 %218, 16
  %and433 = and i64 %shr432, 255
  %conv434 = trunc i64 %and433 to i8
  %219 = load i8*, i8** %output.addr, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %219, i64 53
  store i8 %conv434, i8* %arrayidx435, align 1
  %220 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state436 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %220, i32 0, i32 1
  %arrayidx437 = getelementptr inbounds [8 x i64], [8 x i64]* %state436, i64 0, i64 6
  %221 = load i64, i64* %arrayidx437, align 8
  %shr438 = lshr i64 %221, 8
  %and439 = and i64 %shr438, 255
  %conv440 = trunc i64 %and439 to i8
  %222 = load i8*, i8** %output.addr, align 8
  %arrayidx441 = getelementptr inbounds i8, i8* %222, i64 54
  store i8 %conv440, i8* %arrayidx441, align 1
  %223 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state442 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %223, i32 0, i32 1
  %arrayidx443 = getelementptr inbounds [8 x i64], [8 x i64]* %state442, i64 0, i64 6
  %224 = load i64, i64* %arrayidx443, align 8
  %and444 = and i64 %224, 255
  %conv445 = trunc i64 %and444 to i8
  %225 = load i8*, i8** %output.addr, align 8
  %arrayidx446 = getelementptr inbounds i8, i8* %225, i64 55
  store i8 %conv445, i8* %arrayidx446, align 1
  %226 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state447 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %226, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [8 x i64], [8 x i64]* %state447, i64 0, i64 7
  %227 = load i64, i64* %arrayidx448, align 8
  %shr449 = lshr i64 %227, 56
  %and450 = and i64 %shr449, 255
  %conv451 = trunc i64 %and450 to i8
  %228 = load i8*, i8** %output.addr, align 8
  %arrayidx452 = getelementptr inbounds i8, i8* %228, i64 56
  store i8 %conv451, i8* %arrayidx452, align 1
  %229 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state453 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %229, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [8 x i64], [8 x i64]* %state453, i64 0, i64 7
  %230 = load i64, i64* %arrayidx454, align 8
  %shr455 = lshr i64 %230, 48
  %and456 = and i64 %shr455, 255
  %conv457 = trunc i64 %and456 to i8
  %231 = load i8*, i8** %output.addr, align 8
  %arrayidx458 = getelementptr inbounds i8, i8* %231, i64 57
  store i8 %conv457, i8* %arrayidx458, align 1
  %232 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state459 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %232, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [8 x i64], [8 x i64]* %state459, i64 0, i64 7
  %233 = load i64, i64* %arrayidx460, align 8
  %shr461 = lshr i64 %233, 40
  %and462 = and i64 %shr461, 255
  %conv463 = trunc i64 %and462 to i8
  %234 = load i8*, i8** %output.addr, align 8
  %arrayidx464 = getelementptr inbounds i8, i8* %234, i64 58
  store i8 %conv463, i8* %arrayidx464, align 1
  %235 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state465 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %235, i32 0, i32 1
  %arrayidx466 = getelementptr inbounds [8 x i64], [8 x i64]* %state465, i64 0, i64 7
  %236 = load i64, i64* %arrayidx466, align 8
  %shr467 = lshr i64 %236, 32
  %and468 = and i64 %shr467, 255
  %conv469 = trunc i64 %and468 to i8
  %237 = load i8*, i8** %output.addr, align 8
  %arrayidx470 = getelementptr inbounds i8, i8* %237, i64 59
  store i8 %conv469, i8* %arrayidx470, align 1
  %238 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state471 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %238, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [8 x i64], [8 x i64]* %state471, i64 0, i64 7
  %239 = load i64, i64* %arrayidx472, align 8
  %shr473 = lshr i64 %239, 24
  %and474 = and i64 %shr473, 255
  %conv475 = trunc i64 %and474 to i8
  %240 = load i8*, i8** %output.addr, align 8
  %arrayidx476 = getelementptr inbounds i8, i8* %240, i64 60
  store i8 %conv475, i8* %arrayidx476, align 1
  %241 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state477 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %241, i32 0, i32 1
  %arrayidx478 = getelementptr inbounds [8 x i64], [8 x i64]* %state477, i64 0, i64 7
  %242 = load i64, i64* %arrayidx478, align 8
  %shr479 = lshr i64 %242, 16
  %and480 = and i64 %shr479, 255
  %conv481 = trunc i64 %and480 to i8
  %243 = load i8*, i8** %output.addr, align 8
  %arrayidx482 = getelementptr inbounds i8, i8* %243, i64 61
  store i8 %conv481, i8* %arrayidx482, align 1
  %244 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state483 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %244, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [8 x i64], [8 x i64]* %state483, i64 0, i64 7
  %245 = load i64, i64* %arrayidx484, align 8
  %shr485 = lshr i64 %245, 8
  %and486 = and i64 %shr485, 255
  %conv487 = trunc i64 %and486 to i8
  %246 = load i8*, i8** %output.addr, align 8
  %arrayidx488 = getelementptr inbounds i8, i8* %246, i64 62
  store i8 %conv487, i8* %arrayidx488, align 1
  %247 = load %struct.mbedtls_sha512_context*, %struct.mbedtls_sha512_context** %ctx.addr, align 8
  %state489 = getelementptr inbounds %struct.mbedtls_sha512_context, %struct.mbedtls_sha512_context* %247, i32 0, i32 1
  %arrayidx490 = getelementptr inbounds [8 x i64], [8 x i64]* %state489, i64 0, i64 7
  %248 = load i64, i64* %arrayidx490, align 8
  %and491 = and i64 %248, 255
  %conv492 = trunc i64 %and491 to i8
  %249 = load i8*, i8** %output.addr, align 8
  %arrayidx493 = getelementptr inbounds i8, i8* %249, i64 63
  store i8 %conv492, i8* %arrayidx493, align 1
  br label %if.end494

if.end494:                                        ; preds = %if.then399, %if.end115
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end494, %if.then114, %if.then19
  %250 = load i32, i32* %retval, align 4
  ret i32 %250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha512(i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i32 noundef %is384) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %is384.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_sha512_context, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 %is384, i32* %is384.addr, align 4
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
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %ctx) #6
  %0 = load i32, i32* %is384.addr, align 4
  %call = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %ctx, i32 noundef %0) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  br label %exit

if.end:                                           ; preds = %do.end4
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load i64, i64* %ilen.addr, align 8
  %call5 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %1, i64 noundef %2) #6
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %exit

if.end8:                                          ; preds = %if.end
  %3 = load i8*, i8** %output.addr, align 8
  %call9 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %3) #6
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %exit

if.end12:                                         ; preds = %if.end8
  br label %exit

exit:                                             ; preds = %if.end12, %if.then11, %if.then7, %if.then
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %ctx) #6
  %4 = load i32, i32* %ret, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha512_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %buflen = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  %sha512sum = alloca [64 x i8], align 16
  %ctx = alloca %struct.mbedtls_sha512_context, align 8
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
  call void @mbedtls_sha512_init(%struct.mbedtls_sha512_context* noundef %ctx) #6
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
  %mul = mul nsw i32 %6, 128
  %sub = sub nsw i32 512, %mul
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %7, 1
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef %sub, i32 noundef %add) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body
  %8 = load i32, i32* %k, align 4
  %call12 = call i32 @mbedtls_sha512_starts(%struct.mbedtls_sha512_context* noundef %ctx, i32 noundef %8) #6
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
  %call26 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %12, i64 noundef %conv25) #6
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
  %arrayidx = getelementptr inbounds [3 x [113 x i8]], [3 x [113 x i8]]* @sha512_test_buf, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [113 x i8], [113 x i8]* %arrayidx, i64 0, i64 0
  %17 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [3 x i64], [3 x i64]* @sha512_test_buflen, i64 0, i64 %idxprom31
  %18 = load i64, i64* %arrayidx32, align 8
  %call33 = call i32 @mbedtls_sha512_update(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %arraydecay, i64 noundef %18) #6
  store i32 %call33, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp34 = icmp ne i32 %19, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else
  br label %fail

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %for.end
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %sha512sum, i64 0, i64 0
  %call40 = call i32 @mbedtls_sha512_finish(%struct.mbedtls_sha512_context* noundef %ctx, i8* noundef %arraydecay39) #6
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  br label %fail

if.end44:                                         ; preds = %if.end38
  %arraydecay45 = getelementptr inbounds [64 x i8], [64 x i8]* %sha512sum, i64 0, i64 0
  %20 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %20 to i64
  %arrayidx47 = getelementptr inbounds [6 x [64 x i8]], [6 x [64 x i8]]* bitcast (<{ <{ [48 x i8], [16 x i8] }>, <{ [48 x i8], [16 x i8] }>, <{ [48 x i8], [16 x i8] }>, [64 x i8], [64 x i8], [64 x i8] }>* @sha512_test_sum to [6 x [64 x i8]]*), i64 0, i64 %idxprom46
  %arraydecay48 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx47, i64 0, i64 0
  %21 = load i32, i32* %k, align 4
  %mul49 = mul nsw i32 %21, 16
  %sub50 = sub nsw i32 64, %mul49
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
  call void @mbedtls_sha512_free(%struct.mbedtls_sha512_context* noundef %ctx) #6
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
