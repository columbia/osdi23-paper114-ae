; ModuleID = 'chacha20.c'
source_filename = "chacha20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }

@.str = private unnamed_addr constant [20 x i8] c"  ChaCha20 test %u \00", align 1
@test_keys = internal constant [2 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01"], align 16
@test_nonces = internal constant [2 x [12 x i8]] [[12 x i8] zeroinitializer, [12 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\02"], align 16
@test_counters = internal constant [2 x i32] [i32 0, i32 1], align 4
@test_lengths = internal constant [2 x i64] [i64 64, i64 375], align 16
@test_input = internal constant [2 x [375 x i8]] [[375 x i8] zeroinitializer, [375 x i8] c"Any submission to the IETF intended by the Contributor for publication as all or part of an IETF Internet-Draft or RFC and any statement made within the context of an IETF activity is considered an \22IETF Contribution\22. Such statements include oral statements in IETF sessions, as well as written and electronic communications made at any time or place, which are addressed to"], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"error code: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"failed (output)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@test_output = internal constant <{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }> <{ <{ [64 x i8], [311 x i8] }> <{ [64 x i8] c"v\B8\E0\AD\A0\F1=\90@]j\E5S\86\BD(\BD\D2\19\B8\A0\8D\ED\1A\A86\EF\CC\8Bw\0D\C7\DAAY|QWH\8Dw$\E0?\B8\D8J7jC\B8\F4\15\18\A1\1C\C3\87\B6i\B2\EEe\86", [311 x i8] zeroinitializer }>, [375 x i8] c"\A3\FB\F0}\F3\FA/\DEO7l\A2>\82spA`]\9FOOW\BD\8C\FF,\1DKyU\EC*\97\94\8B\D3r)\15\C8\F3\D37\F7\D3p\05\0E\9E\96\D6G\B7\C3\9FV\E01\CA^\B6%\0D@B\E0'\85\EC\EC\FAKK\B5\E8\EA\D0D\0E \B6\E8\DB\09\D8\81\A7\C6\13/B\0ERyPB\BD\FAws\D8\A9\05\14G\B3)\1C\E1A\1Ch\04eU*\A6\C4\05\B7vM^\87\BE\A8Z\D0\0F\84I\ED\8Fr\D0\D6b\AB\05&\91\CAfBK\C8m-\F8\0E\A4\1FC\AB\F97\D3%\9D\C4\B2\D0\DF\B4\8Al\919\DD\D7\F7if\E9(\E65U;\A7l\\\87\9D{5\D4\9E\B2\E6+\08q\CD\ACc\899\E2^\8A\1E\0E\F9\D5(\0F\A8\CA2\8B5\1C<vY\89\CB\CF=\AA\8Bl\CC:\AF\9F9y\C9+7 \FC\88\DC\95\ED\84\A1\BE\05\9Cd\99\B9\FD\A26\E7\E8\18\B0K\0B\C3\9C\1E\87k\19;\FEUiu?\88\12\8C\C0\8A\AA\9Bc\D1\A1o\80\EF%T\D7\18\9CA\1FXi\CAR\C5\B8?\A3o\F2\16\B9\C1\D3\00b\BE\BC\FD-\C5\BC\E0\91\194\FD\A7\9A\86\F6\E6\98\CE\D7Y\C3\FF\9Bdw3\8F=\A4\F9\CD\85\14\EA\99\82\CC\AF\B3A\B28M\D9\02\F3\D1\ABz\C6\1D\D2\9Co!\BA[\86/70\E3|\FD\C4\FD\80l\22\F2!" }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chacha20_context*, align 8
  store %struct.mbedtls_chacha20_context* %ctx, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %state, i64 0, i64 0
  %1 = bitcast i32* %arraydecay to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %1, i64 noundef 64) #4
  %2 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %2, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay1, i64 noundef 64) #4
  %3 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream_bytes_used = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %3, i32 0, i32 2
  store i64 64, i64* %keystream_bytes_used, align 8
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chacha20_context*, align 8
  store %struct.mbedtls_chacha20_context* %ctx, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %cmp = icmp ne %struct.mbedtls_chacha20_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_chacha20_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 136) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chacha20_context*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.mbedtls_chacha20_context* %ctx, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %state, i64 0, i64 0
  store i32 1634760805, i32* %arrayidx, align 8
  %1 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %state3, i64 0, i64 1
  store i32 857760878, i32* %arrayidx4, align 4
  %2 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %2, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %state5, i64 0, i64 2
  store i32 2036477234, i32* %arrayidx6, align 8
  %3 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %3, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %state7, i64 0, i64 3
  store i32 1797285236, i32* %arrayidx8, align 4
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %key.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %7 to i32
  %shl = shl i32 %conv11, 8
  %or = or i32 %conv, %shl
  %8 = load i8*, i8** %key.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %shl14 = shl i32 %conv13, 16
  %or15 = or i32 %or, %shl14
  %10 = load i8*, i8** %key.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %11 to i32
  %shl18 = shl i32 %conv17, 24
  %or19 = or i32 %or15, %shl18
  %12 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state20 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %12, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [16 x i32], [16 x i32]* %state20, i64 0, i64 4
  store i32 %or19, i32* %arrayidx21, align 8
  %13 = load i8*, i8** %key.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %13, i64 4
  %14 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %14 to i32
  %15 = load i8*, i8** %key.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %15, i64 5
  %16 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %16 to i32
  %shl26 = shl i32 %conv25, 8
  %or27 = or i32 %conv23, %shl26
  %17 = load i8*, i8** %key.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %18 to i32
  %shl30 = shl i32 %conv29, 16
  %or31 = or i32 %or27, %shl30
  %19 = load i8*, i8** %key.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %20 to i32
  %shl34 = shl i32 %conv33, 24
  %or35 = or i32 %or31, %shl34
  %21 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state36 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %21, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* %state36, i64 0, i64 5
  store i32 %or35, i32* %arrayidx37, align 4
  %22 = load i8*, i8** %key.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 8
  %23 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %23 to i32
  %24 = load i8*, i8** %key.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 9
  %25 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %shl42 = shl i32 %conv41, 8
  %or43 = or i32 %conv39, %shl42
  %26 = load i8*, i8** %key.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 10
  %27 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %27 to i32
  %shl46 = shl i32 %conv45, 16
  %or47 = or i32 %or43, %shl46
  %28 = load i8*, i8** %key.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %28, i64 11
  %29 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %29 to i32
  %shl50 = shl i32 %conv49, 24
  %or51 = or i32 %or47, %shl50
  %30 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state52 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %30, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [16 x i32], [16 x i32]* %state52, i64 0, i64 6
  store i32 %or51, i32* %arrayidx53, align 8
  %31 = load i8*, i8** %key.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %31, i64 12
  %32 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %32 to i32
  %33 = load i8*, i8** %key.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %33, i64 13
  %34 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %34 to i32
  %shl58 = shl i32 %conv57, 8
  %or59 = or i32 %conv55, %shl58
  %35 = load i8*, i8** %key.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %35, i64 14
  %36 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %36 to i32
  %shl62 = shl i32 %conv61, 16
  %or63 = or i32 %or59, %shl62
  %37 = load i8*, i8** %key.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %37, i64 15
  %38 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %38 to i32
  %shl66 = shl i32 %conv65, 24
  %or67 = or i32 %or63, %shl66
  %39 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state68 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %39, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [16 x i32], [16 x i32]* %state68, i64 0, i64 7
  store i32 %or67, i32* %arrayidx69, align 4
  %40 = load i8*, i8** %key.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %40, i64 16
  %41 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %41 to i32
  %42 = load i8*, i8** %key.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %42, i64 17
  %43 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %43 to i32
  %shl74 = shl i32 %conv73, 8
  %or75 = or i32 %conv71, %shl74
  %44 = load i8*, i8** %key.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %44, i64 18
  %45 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %45 to i32
  %shl78 = shl i32 %conv77, 16
  %or79 = or i32 %or75, %shl78
  %46 = load i8*, i8** %key.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %46, i64 19
  %47 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %47 to i32
  %shl82 = shl i32 %conv81, 24
  %or83 = or i32 %or79, %shl82
  %48 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state84 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %48, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [16 x i32], [16 x i32]* %state84, i64 0, i64 8
  store i32 %or83, i32* %arrayidx85, align 8
  %49 = load i8*, i8** %key.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %49, i64 20
  %50 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %50 to i32
  %51 = load i8*, i8** %key.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %51, i64 21
  %52 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %52 to i32
  %shl90 = shl i32 %conv89, 8
  %or91 = or i32 %conv87, %shl90
  %53 = load i8*, i8** %key.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %53, i64 22
  %54 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %54 to i32
  %shl94 = shl i32 %conv93, 16
  %or95 = or i32 %or91, %shl94
  %55 = load i8*, i8** %key.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %55, i64 23
  %56 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %56 to i32
  %shl98 = shl i32 %conv97, 24
  %or99 = or i32 %or95, %shl98
  %57 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state100 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %57, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* %state100, i64 0, i64 9
  store i32 %or99, i32* %arrayidx101, align 4
  %58 = load i8*, i8** %key.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %58, i64 24
  %59 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %59 to i32
  %60 = load i8*, i8** %key.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %60, i64 25
  %61 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %61 to i32
  %shl106 = shl i32 %conv105, 8
  %or107 = or i32 %conv103, %shl106
  %62 = load i8*, i8** %key.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %62, i64 26
  %63 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %63 to i32
  %shl110 = shl i32 %conv109, 16
  %or111 = or i32 %or107, %shl110
  %64 = load i8*, i8** %key.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %64, i64 27
  %65 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %65 to i32
  %shl114 = shl i32 %conv113, 24
  %or115 = or i32 %or111, %shl114
  %66 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state116 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %66, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [16 x i32], [16 x i32]* %state116, i64 0, i64 10
  store i32 %or115, i32* %arrayidx117, align 8
  %67 = load i8*, i8** %key.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %67, i64 28
  %68 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %68 to i32
  %69 = load i8*, i8** %key.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %69, i64 29
  %70 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %70 to i32
  %shl122 = shl i32 %conv121, 8
  %or123 = or i32 %conv119, %shl122
  %71 = load i8*, i8** %key.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %71, i64 30
  %72 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %72 to i32
  %shl126 = shl i32 %conv125, 16
  %or127 = or i32 %or123, %shl126
  %73 = load i8*, i8** %key.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %73, i64 31
  %74 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %74 to i32
  %shl130 = shl i32 %conv129, 24
  %or131 = or i32 %or127, %shl130
  %75 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state132 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %75, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [16 x i32], [16 x i32]* %state132, i64 0, i64 11
  store i32 %or131, i32* %arrayidx133, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noundef %ctx, i8* noundef %nonce, i32 noundef %counter) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chacha20_context*, align 8
  %nonce.addr = alloca i8*, align 8
  %counter.addr = alloca i32, align 4
  store %struct.mbedtls_chacha20_context* %ctx, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %counter.addr, align 4
  %1 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %state, i64 0, i64 12
  store i32 %0, i32* %arrayidx, align 8
  %2 = load i8*, i8** %nonce.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %nonce.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl = shl i32 %conv5, 8
  %or = or i32 %conv, %shl
  %6 = load i8*, i8** %nonce.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %shl8 = shl i32 %conv7, 16
  %or9 = or i32 %or, %shl8
  %8 = load i8*, i8** %nonce.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl i32 %conv11, 24
  %or13 = or i32 %or9, %shl12
  %10 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state14 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %10, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [16 x i32], [16 x i32]* %state14, i64 0, i64 13
  store i32 %or13, i32* %arrayidx15, align 4
  %11 = load i8*, i8** %nonce.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 4
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %13 = load i8*, i8** %nonce.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 5
  %14 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %14 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %conv17, %shl20
  %15 = load i8*, i8** %nonce.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %15, i64 6
  %16 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %shl24 = shl i32 %conv23, 16
  %or25 = or i32 %or21, %shl24
  %17 = load i8*, i8** %nonce.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 7
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %18 to i32
  %shl28 = shl i32 %conv27, 24
  %or29 = or i32 %or25, %shl28
  %19 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state30 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %19, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* %state30, i64 0, i64 14
  store i32 %or29, i32* %arrayidx31, align 8
  %20 = load i8*, i8** %nonce.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %20, i64 8
  %21 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %21 to i32
  %22 = load i8*, i8** %nonce.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %22, i64 9
  %23 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %23 to i32
  %shl36 = shl i32 %conv35, 8
  %or37 = or i32 %conv33, %shl36
  %24 = load i8*, i8** %nonce.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %24, i64 10
  %25 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %25 to i32
  %shl40 = shl i32 %conv39, 16
  %or41 = or i32 %or37, %shl40
  %26 = load i8*, i8** %nonce.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i64 11
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %shl44 = shl i32 %conv43, 24
  %or45 = or i32 %or41, %shl44
  %28 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state46 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %28, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [16 x i32], [16 x i32]* %state46, i64 0, i64 15
  store i32 %or45, i32* %arrayidx47, align 4
  %29 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay, i64 noundef 64) #4
  %30 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream_bytes_used = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %30, i32 0, i32 2
  store i64 64, i64* %keystream_bytes_used, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef %ctx, i64 noundef %size, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chacha20_context*, align 8
  %size.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %offset = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_chacha20_context* %ctx, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 0, i64* %offset, align 8
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
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end4
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream_bytes_used = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %1, i32 0, i32 2
  %2 = load i64, i64* %keystream_bytes_used, align 8
  %cmp5 = icmp ult i64 %2, 64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i64, i64* %offset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %7, i32 0, i32 1
  %8 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream_bytes_used6 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %8, i32 0, i32 2
  %9 = load i64, i64* %keystream_bytes_used6, align 8
  %arrayidx7 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %10 to i32
  %xor = xor i32 %conv, %conv8
  %conv9 = trunc i32 %xor to i8
  %11 = load i8*, i8** %output.addr, align 8
  %12 = load i64, i64* %offset, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8 %conv9, i8* %arrayidx10, align 1
  %13 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream_bytes_used11 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %13, i32 0, i32 2
  %14 = load i64, i64* %keystream_bytes_used11, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %keystream_bytes_used11, align 8
  %15 = load i64, i64* %offset, align 8
  %inc12 = add i64 %15, 1
  store i64 %inc12, i64* %offset, align 8
  %16 = load i64, i64* %size.addr, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %size.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond13

while.cond13:                                     ; preds = %for.end, %while.end
  %17 = load i64, i64* %size.addr, align 8
  %cmp14 = icmp uge i64 %17, 64
  br i1 %cmp14, label %while.body16, label %while.end126

while.body16:                                     ; preds = %while.cond13
  %18 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %18, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %state, i64 0, i64 0
  %19 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream817 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %19, i32 0, i32 1
  %arraydecay18 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream817, i64 0, i64 0
  call void @chacha20_block(i32* noundef %arraydecay, i8* noundef %arraydecay18) #4
  %20 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state19 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %20, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [16 x i32], [16 x i32]* %state19, i64 0, i64 12
  %21 = load i32, i32* %arrayidx20, align 8
  %inc21 = add i32 %21, 1
  store i32 %inc21, i32* %arrayidx20, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body16
  %22 = load i64, i64* %i, align 8
  %cmp22 = icmp ult i64 %22, 64
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %input.addr, align 8
  %24 = load i64, i64* %offset, align 8
  %25 = load i64, i64* %i, align 8
  %add = add i64 %24, %25
  %arrayidx24 = getelementptr inbounds i8, i8* %23, i64 %add
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %26 to i32
  %27 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream826 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %27, i32 0, i32 1
  %28 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream826, i64 0, i64 %28
  %29 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %29 to i32
  %xor29 = xor i32 %conv25, %conv28
  %conv30 = trunc i32 %xor29 to i8
  %30 = load i8*, i8** %output.addr, align 8
  %31 = load i64, i64* %offset, align 8
  %32 = load i64, i64* %i, align 8
  %add31 = add i64 %31, %32
  %arrayidx32 = getelementptr inbounds i8, i8* %30, i64 %add31
  store i8 %conv30, i8* %arrayidx32, align 1
  %33 = load i8*, i8** %input.addr, align 8
  %34 = load i64, i64* %offset, align 8
  %35 = load i64, i64* %i, align 8
  %add33 = add i64 %34, %35
  %add34 = add i64 %add33, 1
  %arrayidx35 = getelementptr inbounds i8, i8* %33, i64 %add34
  %36 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %36 to i32
  %37 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream837 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %37, i32 0, i32 1
  %38 = load i64, i64* %i, align 8
  %add38 = add i64 %38, 1
  %arrayidx39 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream837, i64 0, i64 %add38
  %39 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %39 to i32
  %xor41 = xor i32 %conv36, %conv40
  %conv42 = trunc i32 %xor41 to i8
  %40 = load i8*, i8** %output.addr, align 8
  %41 = load i64, i64* %offset, align 8
  %42 = load i64, i64* %i, align 8
  %add43 = add i64 %41, %42
  %add44 = add i64 %add43, 1
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %add44
  store i8 %conv42, i8* %arrayidx45, align 1
  %43 = load i8*, i8** %input.addr, align 8
  %44 = load i64, i64* %offset, align 8
  %45 = load i64, i64* %i, align 8
  %add46 = add i64 %44, %45
  %add47 = add i64 %add46, 2
  %arrayidx48 = getelementptr inbounds i8, i8* %43, i64 %add47
  %46 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %46 to i32
  %47 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream850 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %47, i32 0, i32 1
  %48 = load i64, i64* %i, align 8
  %add51 = add i64 %48, 2
  %arrayidx52 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream850, i64 0, i64 %add51
  %49 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %49 to i32
  %xor54 = xor i32 %conv49, %conv53
  %conv55 = trunc i32 %xor54 to i8
  %50 = load i8*, i8** %output.addr, align 8
  %51 = load i64, i64* %offset, align 8
  %52 = load i64, i64* %i, align 8
  %add56 = add i64 %51, %52
  %add57 = add i64 %add56, 2
  %arrayidx58 = getelementptr inbounds i8, i8* %50, i64 %add57
  store i8 %conv55, i8* %arrayidx58, align 1
  %53 = load i8*, i8** %input.addr, align 8
  %54 = load i64, i64* %offset, align 8
  %55 = load i64, i64* %i, align 8
  %add59 = add i64 %54, %55
  %add60 = add i64 %add59, 3
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 %add60
  %56 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %56 to i32
  %57 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream863 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %57, i32 0, i32 1
  %58 = load i64, i64* %i, align 8
  %add64 = add i64 %58, 3
  %arrayidx65 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream863, i64 0, i64 %add64
  %59 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %59 to i32
  %xor67 = xor i32 %conv62, %conv66
  %conv68 = trunc i32 %xor67 to i8
  %60 = load i8*, i8** %output.addr, align 8
  %61 = load i64, i64* %offset, align 8
  %62 = load i64, i64* %i, align 8
  %add69 = add i64 %61, %62
  %add70 = add i64 %add69, 3
  %arrayidx71 = getelementptr inbounds i8, i8* %60, i64 %add70
  store i8 %conv68, i8* %arrayidx71, align 1
  %63 = load i8*, i8** %input.addr, align 8
  %64 = load i64, i64* %offset, align 8
  %65 = load i64, i64* %i, align 8
  %add72 = add i64 %64, %65
  %add73 = add i64 %add72, 4
  %arrayidx74 = getelementptr inbounds i8, i8* %63, i64 %add73
  %66 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %66 to i32
  %67 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream876 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %67, i32 0, i32 1
  %68 = load i64, i64* %i, align 8
  %add77 = add i64 %68, 4
  %arrayidx78 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream876, i64 0, i64 %add77
  %69 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %69 to i32
  %xor80 = xor i32 %conv75, %conv79
  %conv81 = trunc i32 %xor80 to i8
  %70 = load i8*, i8** %output.addr, align 8
  %71 = load i64, i64* %offset, align 8
  %72 = load i64, i64* %i, align 8
  %add82 = add i64 %71, %72
  %add83 = add i64 %add82, 4
  %arrayidx84 = getelementptr inbounds i8, i8* %70, i64 %add83
  store i8 %conv81, i8* %arrayidx84, align 1
  %73 = load i8*, i8** %input.addr, align 8
  %74 = load i64, i64* %offset, align 8
  %75 = load i64, i64* %i, align 8
  %add85 = add i64 %74, %75
  %add86 = add i64 %add85, 5
  %arrayidx87 = getelementptr inbounds i8, i8* %73, i64 %add86
  %76 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %76 to i32
  %77 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream889 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %77, i32 0, i32 1
  %78 = load i64, i64* %i, align 8
  %add90 = add i64 %78, 5
  %arrayidx91 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream889, i64 0, i64 %add90
  %79 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %79 to i32
  %xor93 = xor i32 %conv88, %conv92
  %conv94 = trunc i32 %xor93 to i8
  %80 = load i8*, i8** %output.addr, align 8
  %81 = load i64, i64* %offset, align 8
  %82 = load i64, i64* %i, align 8
  %add95 = add i64 %81, %82
  %add96 = add i64 %add95, 5
  %arrayidx97 = getelementptr inbounds i8, i8* %80, i64 %add96
  store i8 %conv94, i8* %arrayidx97, align 1
  %83 = load i8*, i8** %input.addr, align 8
  %84 = load i64, i64* %offset, align 8
  %85 = load i64, i64* %i, align 8
  %add98 = add i64 %84, %85
  %add99 = add i64 %add98, 6
  %arrayidx100 = getelementptr inbounds i8, i8* %83, i64 %add99
  %86 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %86 to i32
  %87 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8102 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %87, i32 0, i32 1
  %88 = load i64, i64* %i, align 8
  %add103 = add i64 %88, 6
  %arrayidx104 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8102, i64 0, i64 %add103
  %89 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %89 to i32
  %xor106 = xor i32 %conv101, %conv105
  %conv107 = trunc i32 %xor106 to i8
  %90 = load i8*, i8** %output.addr, align 8
  %91 = load i64, i64* %offset, align 8
  %92 = load i64, i64* %i, align 8
  %add108 = add i64 %91, %92
  %add109 = add i64 %add108, 6
  %arrayidx110 = getelementptr inbounds i8, i8* %90, i64 %add109
  store i8 %conv107, i8* %arrayidx110, align 1
  %93 = load i8*, i8** %input.addr, align 8
  %94 = load i64, i64* %offset, align 8
  %95 = load i64, i64* %i, align 8
  %add111 = add i64 %94, %95
  %add112 = add i64 %add111, 7
  %arrayidx113 = getelementptr inbounds i8, i8* %93, i64 %add112
  %96 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %96 to i32
  %97 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8115 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %97, i32 0, i32 1
  %98 = load i64, i64* %i, align 8
  %add116 = add i64 %98, 7
  %arrayidx117 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8115, i64 0, i64 %add116
  %99 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %99 to i32
  %xor119 = xor i32 %conv114, %conv118
  %conv120 = trunc i32 %xor119 to i8
  %100 = load i8*, i8** %output.addr, align 8
  %101 = load i64, i64* %offset, align 8
  %102 = load i64, i64* %i, align 8
  %add121 = add i64 %101, %102
  %add122 = add i64 %add121, 7
  %arrayidx123 = getelementptr inbounds i8, i8* %100, i64 %add122
  store i8 %conv120, i8* %arrayidx123, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %103 = load i64, i64* %i, align 8
  %add124 = add i64 %103, 8
  store i64 %add124, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %104 = load i64, i64* %offset, align 8
  %add125 = add i64 %104, 64
  store i64 %add125, i64* %offset, align 8
  %105 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %105, 64
  store i64 %sub, i64* %size.addr, align 8
  br label %while.cond13, !llvm.loop !7

while.end126:                                     ; preds = %while.cond13
  %106 = load i64, i64* %size.addr, align 8
  %cmp127 = icmp ugt i64 %106, 0
  br i1 %cmp127, label %if.then, label %if.end

if.then:                                          ; preds = %while.end126
  %107 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state129 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %107, i32 0, i32 0
  %arraydecay130 = getelementptr inbounds [16 x i32], [16 x i32]* %state129, i64 0, i64 0
  %108 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8131 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %108, i32 0, i32 1
  %arraydecay132 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8131, i64 0, i64 0
  call void @chacha20_block(i32* noundef %arraydecay130, i8* noundef %arraydecay132) #4
  %109 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %state133 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %109, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [16 x i32], [16 x i32]* %state133, i64 0, i64 12
  %110 = load i32, i32* %arrayidx134, align 8
  %inc135 = add i32 %110, 1
  store i32 %inc135, i32* %arrayidx134, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc150, %if.then
  %111 = load i64, i64* %i, align 8
  %112 = load i64, i64* %size.addr, align 8
  %cmp137 = icmp ult i64 %111, %112
  br i1 %cmp137, label %for.body139, label %for.end152

for.body139:                                      ; preds = %for.cond136
  %113 = load i8*, i8** %input.addr, align 8
  %114 = load i64, i64* %offset, align 8
  %115 = load i64, i64* %i, align 8
  %add140 = add i64 %114, %115
  %arrayidx141 = getelementptr inbounds i8, i8* %113, i64 %add140
  %116 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %116 to i32
  %117 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream8143 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %117, i32 0, i32 1
  %118 = load i64, i64* %i, align 8
  %arrayidx144 = getelementptr inbounds [64 x i8], [64 x i8]* %keystream8143, i64 0, i64 %118
  %119 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %119 to i32
  %xor146 = xor i32 %conv142, %conv145
  %conv147 = trunc i32 %xor146 to i8
  %120 = load i8*, i8** %output.addr, align 8
  %121 = load i64, i64* %offset, align 8
  %122 = load i64, i64* %i, align 8
  %add148 = add i64 %121, %122
  %arrayidx149 = getelementptr inbounds i8, i8* %120, i64 %add148
  store i8 %conv147, i8* %arrayidx149, align 1
  br label %for.inc150

for.inc150:                                       ; preds = %for.body139
  %123 = load i64, i64* %i, align 8
  %inc151 = add i64 %123, 1
  store i64 %inc151, i64* %i, align 8
  br label %for.cond136, !llvm.loop !8

for.end152:                                       ; preds = %for.cond136
  %124 = load i64, i64* %size.addr, align 8
  %125 = load %struct.mbedtls_chacha20_context*, %struct.mbedtls_chacha20_context** %ctx.addr, align 8
  %keystream_bytes_used153 = getelementptr inbounds %struct.mbedtls_chacha20_context, %struct.mbedtls_chacha20_context* %125, i32 0, i32 2
  store i64 %124, i64* %keystream_bytes_used153, align 8
  br label %if.end

if.end:                                           ; preds = %for.end152, %while.end126
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20_block(i32* noundef %initial_state, i8* noundef %keystream) #0 {
entry:
  %initial_state.addr = alloca i32*, align 8
  %keystream.addr = alloca i8*, align 8
  %working_state = alloca [16 x i32], align 16
  %i = alloca i64, align 8
  %offset = alloca i64, align 8
  store i32* %initial_state, i32** %initial_state.addr, align 8
  store i8* %keystream, i8** %keystream.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  %1 = load i32*, i32** %initial_state.addr, align 8
  %2 = bitcast i32* %1 to i8*
  %call = call i8* @memcpy(i8* noundef %0, i8* noundef %2, i64 noundef 64) #5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay1 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 0
  call void @chacha20_inner_block(i32* noundef %arraydecay1) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 0
  %7 = load i32, i32* %arrayidx2, align 16
  %add = add i32 %7, %6
  store i32 %add, i32* %arrayidx2, align 16
  %8 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 1
  %9 = load i32, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 1
  %10 = load i32, i32* %arrayidx4, align 4
  %add5 = add i32 %10, %9
  store i32 %add5, i32* %arrayidx4, align 4
  %11 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 2
  %13 = load i32, i32* %arrayidx7, align 8
  %add8 = add i32 %13, %12
  store i32 %add8, i32* %arrayidx7, align 8
  %14 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 3
  %15 = load i32, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 3
  %16 = load i32, i32* %arrayidx10, align 4
  %add11 = add i32 %16, %15
  store i32 %add11, i32* %arrayidx10, align 4
  %17 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 4
  %18 = load i32, i32* %arrayidx12, align 4
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 4
  %19 = load i32, i32* %arrayidx13, align 16
  %add14 = add i32 %19, %18
  store i32 %add14, i32* %arrayidx13, align 16
  %20 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 5
  %21 = load i32, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 5
  %22 = load i32, i32* %arrayidx16, align 4
  %add17 = add i32 %22, %21
  store i32 %add17, i32* %arrayidx16, align 4
  %23 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 6
  %24 = load i32, i32* %arrayidx18, align 4
  %arrayidx19 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 6
  %25 = load i32, i32* %arrayidx19, align 8
  %add20 = add i32 %25, %24
  store i32 %add20, i32* %arrayidx19, align 8
  %26 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 7
  %27 = load i32, i32* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 7
  %28 = load i32, i32* %arrayidx22, align 4
  %add23 = add i32 %28, %27
  store i32 %add23, i32* %arrayidx22, align 4
  %29 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 8
  %30 = load i32, i32* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 8
  %31 = load i32, i32* %arrayidx25, align 16
  %add26 = add i32 %31, %30
  store i32 %add26, i32* %arrayidx25, align 16
  %32 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %32, i64 9
  %33 = load i32, i32* %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 9
  %34 = load i32, i32* %arrayidx28, align 4
  %add29 = add i32 %34, %33
  store i32 %add29, i32* %arrayidx28, align 4
  %35 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %35, i64 10
  %36 = load i32, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 10
  %37 = load i32, i32* %arrayidx31, align 8
  %add32 = add i32 %37, %36
  store i32 %add32, i32* %arrayidx31, align 8
  %38 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %38, i64 11
  %39 = load i32, i32* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 11
  %40 = load i32, i32* %arrayidx34, align 4
  %add35 = add i32 %40, %39
  store i32 %add35, i32* %arrayidx34, align 4
  %41 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 12
  %42 = load i32, i32* %arrayidx36, align 4
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 12
  %43 = load i32, i32* %arrayidx37, align 16
  %add38 = add i32 %43, %42
  store i32 %add38, i32* %arrayidx37, align 16
  %44 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %44, i64 13
  %45 = load i32, i32* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 13
  %46 = load i32, i32* %arrayidx40, align 4
  %add41 = add i32 %46, %45
  store i32 %add41, i32* %arrayidx40, align 4
  %47 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %47, i64 14
  %48 = load i32, i32* %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 14
  %49 = load i32, i32* %arrayidx43, align 8
  %add44 = add i32 %49, %48
  store i32 %add44, i32* %arrayidx43, align 8
  %50 = load i32*, i32** %initial_state.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %50, i64 15
  %51 = load i32, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 15
  %52 = load i32, i32* %arrayidx46, align 4
  %add47 = add i32 %52, %51
  store i32 %add47, i32* %arrayidx46, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc70, %for.end
  %53 = load i64, i64* %i, align 8
  %cmp49 = icmp ult i64 %53, 16
  br i1 %cmp49, label %for.body50, label %for.end72

for.body50:                                       ; preds = %for.cond48
  %54 = load i64, i64* %i, align 8
  %mul = mul i64 %54, 4
  store i64 %mul, i64* %offset, align 8
  %55 = load i64, i64* %i, align 8
  %arrayidx51 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 %55
  %56 = load i32, i32* %arrayidx51, align 4
  %and = and i32 %56, 255
  %conv = trunc i32 %and to i8
  %57 = load i8*, i8** %keystream.addr, align 8
  %58 = load i64, i64* %offset, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 %conv, i8* %arrayidx52, align 1
  %59 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 %59
  %60 = load i32, i32* %arrayidx53, align 4
  %shr = lshr i32 %60, 8
  %and54 = and i32 %shr, 255
  %conv55 = trunc i32 %and54 to i8
  %61 = load i8*, i8** %keystream.addr, align 8
  %62 = load i64, i64* %offset, align 8
  %add56 = add i64 %62, 1
  %arrayidx57 = getelementptr inbounds i8, i8* %61, i64 %add56
  store i8 %conv55, i8* %arrayidx57, align 1
  %63 = load i64, i64* %i, align 8
  %arrayidx58 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 %63
  %64 = load i32, i32* %arrayidx58, align 4
  %shr59 = lshr i32 %64, 16
  %and60 = and i32 %shr59, 255
  %conv61 = trunc i32 %and60 to i8
  %65 = load i8*, i8** %keystream.addr, align 8
  %66 = load i64, i64* %offset, align 8
  %add62 = add i64 %66, 2
  %arrayidx63 = getelementptr inbounds i8, i8* %65, i64 %add62
  store i8 %conv61, i8* %arrayidx63, align 1
  %67 = load i64, i64* %i, align 8
  %arrayidx64 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 %67
  %68 = load i32, i32* %arrayidx64, align 4
  %shr65 = lshr i32 %68, 24
  %and66 = and i32 %shr65, 255
  %conv67 = trunc i32 %and66 to i8
  %69 = load i8*, i8** %keystream.addr, align 8
  %70 = load i64, i64* %offset, align 8
  %add68 = add i64 %70, 3
  %arrayidx69 = getelementptr inbounds i8, i8* %69, i64 %add68
  store i8 %conv67, i8* %arrayidx69, align 1
  br label %for.inc70

for.inc70:                                        ; preds = %for.body50
  %71 = load i64, i64* %i, align 8
  %inc71 = add i64 %71, 1
  store i64 %inc71, i64* %i, align 8
  br label %for.cond48, !llvm.loop !10

for.end72:                                        ; preds = %for.cond48
  %arraydecay73 = getelementptr inbounds [16 x i32], [16 x i32]* %working_state, i64 0, i64 0
  %72 = bitcast i32* %arraydecay73 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %72, i64 noundef 64) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chacha20_crypt(i8* noundef %key, i8* noundef %nonce, i32 noundef %counter, i64 noundef %data_len, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %nonce.addr = alloca i8*, align 8
  %counter.addr = alloca i32, align 4
  %data_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_chacha20_context, align 8
  %ret = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i32 %counter, i32* %counter.addr, align 4
  store i64 %data_len, i64* %data_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
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
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noundef %ctx) #4
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noundef %ctx, i8* noundef %0) #4
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  br label %cleanup

if.end:                                           ; preds = %do.end6
  %2 = load i8*, i8** %nonce.addr, align 8
  %3 = load i32, i32* %counter.addr, align 4
  %call7 = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noundef %ctx, i8* noundef %2, i32 noundef %3) #4
  store i32 %call7, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp8 = icmp ne i32 %4, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = load i64, i64* %data_len.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call11 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef %ctx, i64 noundef %5, i8* noundef %6, i8* noundef %7) #4
  store i32 %call11, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noundef %ctx) #4
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chacha20_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %output = alloca [381 x i8], align 16
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x i8]], [2 x [32 x i8]]* @test_keys, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i64 0, i64 0
  %4 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [2 x [12 x i8]], [2 x [12 x i8]]* @test_nonces, i64 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [12 x i8], [12 x i8]* %arrayidx3, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* @test_counters, i64 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [2 x i64], [2 x i64]* @test_lengths, i64 0, i64 %idxprom7
  %8 = load i64, i64* %arrayidx8, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [2 x [375 x i8]], [2 x [375 x i8]]* @test_input, i64 0, i64 %idxprom9
  %arraydecay11 = getelementptr inbounds [375 x i8], [375 x i8]* %arrayidx10, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [381 x i8], [381 x i8]* %output, i64 0, i64 0
  %call13 = call i32 @mbedtls_chacha20_crypt(i8* noundef %arraydecay, i8* noundef %arraydecay4, i32 noundef %6, i64 noundef %8, i8* noundef %arraydecay11, i8* noundef %arraydecay12) #4
  store i32 %call13, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %cmp14 = icmp eq i32 0, %10
  br i1 %cmp14, label %if.end20, label %if.then15

if.then15:                                        ; preds = %do.body
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp16 = icmp ne i32 %11, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then15
  %12 = load i32, i32* %ret, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end20
  br label %do.body21

do.body21:                                        ; preds = %do.end
  %arraydecay22 = getelementptr inbounds [381 x i8], [381 x i8]* %output, i64 0, i64 0
  %13 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [2 x [375 x i8]], [2 x [375 x i8]]* bitcast (<{ <{ [64 x i8], [311 x i8] }>, [375 x i8] }>* @test_output to [2 x [375 x i8]]*), i64 0, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [375 x i8], [375 x i8]* %arrayidx24, i64 0, i64 0
  %14 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* @test_lengths, i64 0, i64 %idxprom26
  %15 = load i64, i64* %arrayidx27, align 8
  %call28 = call i32 @memcmp(i8* noundef %arraydecay22, i8* noundef %arraydecay25, i64 noundef %15) #6
  %cmp29 = icmp eq i32 0, %call28
  br i1 %cmp29, label %if.end35, label %if.then30

if.then30:                                        ; preds = %do.body21
  %16 = load i32, i32* %verbose.addr, align 4
  %cmp31 = icmp ne i32 %16, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then30
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then30
  store i32 -1, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %do.body21
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  %17 = load i32, i32* %verbose.addr, align 4
  %cmp37 = icmp ne i32 %17, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.end36
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.end36
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp41 = icmp ne i32 %19, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.end34, %if.end19
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20_inner_block(i32* noundef %state) #0 {
entry:
  %state.addr = alloca i32*, align 8
  store i32* %state, i32** %state.addr, align 8
  %0 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %0, i64 noundef 0, i64 noundef 4, i64 noundef 8, i64 noundef 12) #4
  %1 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %1, i64 noundef 1, i64 noundef 5, i64 noundef 9, i64 noundef 13) #4
  %2 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %2, i64 noundef 2, i64 noundef 6, i64 noundef 10, i64 noundef 14) #4
  %3 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %3, i64 noundef 3, i64 noundef 7, i64 noundef 11, i64 noundef 15) #4
  %4 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %4, i64 noundef 0, i64 noundef 5, i64 noundef 10, i64 noundef 15) #4
  %5 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %5, i64 noundef 1, i64 noundef 6, i64 noundef 11, i64 noundef 12) #4
  %6 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %6, i64 noundef 2, i64 noundef 7, i64 noundef 8, i64 noundef 13) #4
  %7 = load i32*, i32** %state.addr, align 8
  call void @chacha20_quarter_round(i32* noundef %7, i64 noundef 3, i64 noundef 4, i64 noundef 9, i64 noundef 14) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20_quarter_round(i32* noundef %state, i64 noundef %a, i64 noundef %b, i64 noundef %c, i64 noundef %d) #0 {
entry:
  %state.addr = alloca i32*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  store i32* %state, i32** %state.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  %0 = load i32*, i32** %state.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %state.addr, align 8
  %4 = load i64, i64* %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %4
  %5 = load i32, i32* %arrayidx1, align 4
  %add = add i32 %5, %2
  store i32 %add, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %state.addr, align 8
  %7 = load i64, i64* %a.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %7
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32*, i32** %state.addr, align 8
  %10 = load i64, i64* %d.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %10
  %11 = load i32, i32* %arrayidx3, align 4
  %xor = xor i32 %11, %8
  store i32 %xor, i32* %arrayidx3, align 4
  %12 = load i32*, i32** %state.addr, align 8
  %13 = load i64, i64* %d.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %13
  %14 = load i32, i32* %arrayidx4, align 4
  %shl = shl i32 %14, 16
  %15 = load i32*, i32** %state.addr, align 8
  %16 = load i64, i64* %d.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %15, i64 %16
  %17 = load i32, i32* %arrayidx5, align 4
  %shr = lshr i32 %17, 16
  %or = or i32 %shl, %shr
  %18 = load i32*, i32** %state.addr, align 8
  %19 = load i64, i64* %d.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %or, i32* %arrayidx6, align 4
  %20 = load i32*, i32** %state.addr, align 8
  %21 = load i64, i64* %d.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %20, i64 %21
  %22 = load i32, i32* %arrayidx7, align 4
  %23 = load i32*, i32** %state.addr, align 8
  %24 = load i64, i64* %c.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %23, i64 %24
  %25 = load i32, i32* %arrayidx8, align 4
  %add9 = add i32 %25, %22
  store i32 %add9, i32* %arrayidx8, align 4
  %26 = load i32*, i32** %state.addr, align 8
  %27 = load i64, i64* %c.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %26, i64 %27
  %28 = load i32, i32* %arrayidx10, align 4
  %29 = load i32*, i32** %state.addr, align 8
  %30 = load i64, i64* %b.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %29, i64 %30
  %31 = load i32, i32* %arrayidx11, align 4
  %xor12 = xor i32 %31, %28
  store i32 %xor12, i32* %arrayidx11, align 4
  %32 = load i32*, i32** %state.addr, align 8
  %33 = load i64, i64* %b.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %32, i64 %33
  %34 = load i32, i32* %arrayidx13, align 4
  %shl14 = shl i32 %34, 12
  %35 = load i32*, i32** %state.addr, align 8
  %36 = load i64, i64* %b.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %35, i64 %36
  %37 = load i32, i32* %arrayidx15, align 4
  %shr16 = lshr i32 %37, 20
  %or17 = or i32 %shl14, %shr16
  %38 = load i32*, i32** %state.addr, align 8
  %39 = load i64, i64* %b.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %or17, i32* %arrayidx18, align 4
  %40 = load i32*, i32** %state.addr, align 8
  %41 = load i64, i64* %b.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %40, i64 %41
  %42 = load i32, i32* %arrayidx19, align 4
  %43 = load i32*, i32** %state.addr, align 8
  %44 = load i64, i64* %a.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %43, i64 %44
  %45 = load i32, i32* %arrayidx20, align 4
  %add21 = add i32 %45, %42
  store i32 %add21, i32* %arrayidx20, align 4
  %46 = load i32*, i32** %state.addr, align 8
  %47 = load i64, i64* %a.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %46, i64 %47
  %48 = load i32, i32* %arrayidx22, align 4
  %49 = load i32*, i32** %state.addr, align 8
  %50 = load i64, i64* %d.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %49, i64 %50
  %51 = load i32, i32* %arrayidx23, align 4
  %xor24 = xor i32 %51, %48
  store i32 %xor24, i32* %arrayidx23, align 4
  %52 = load i32*, i32** %state.addr, align 8
  %53 = load i64, i64* %d.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %52, i64 %53
  %54 = load i32, i32* %arrayidx25, align 4
  %shl26 = shl i32 %54, 8
  %55 = load i32*, i32** %state.addr, align 8
  %56 = load i64, i64* %d.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %55, i64 %56
  %57 = load i32, i32* %arrayidx27, align 4
  %shr28 = lshr i32 %57, 24
  %or29 = or i32 %shl26, %shr28
  %58 = load i32*, i32** %state.addr, align 8
  %59 = load i64, i64* %d.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %or29, i32* %arrayidx30, align 4
  %60 = load i32*, i32** %state.addr, align 8
  %61 = load i64, i64* %d.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %60, i64 %61
  %62 = load i32, i32* %arrayidx31, align 4
  %63 = load i32*, i32** %state.addr, align 8
  %64 = load i64, i64* %c.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %63, i64 %64
  %65 = load i32, i32* %arrayidx32, align 4
  %add33 = add i32 %65, %62
  store i32 %add33, i32* %arrayidx32, align 4
  %66 = load i32*, i32** %state.addr, align 8
  %67 = load i64, i64* %c.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %66, i64 %67
  %68 = load i32, i32* %arrayidx34, align 4
  %69 = load i32*, i32** %state.addr, align 8
  %70 = load i64, i64* %b.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %69, i64 %70
  %71 = load i32, i32* %arrayidx35, align 4
  %xor36 = xor i32 %71, %68
  store i32 %xor36, i32* %arrayidx35, align 4
  %72 = load i32*, i32** %state.addr, align 8
  %73 = load i64, i64* %b.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %72, i64 %73
  %74 = load i32, i32* %arrayidx37, align 4
  %shl38 = shl i32 %74, 7
  %75 = load i32*, i32** %state.addr, align 8
  %76 = load i64, i64* %b.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %75, i64 %76
  %77 = load i32, i32* %arrayidx39, align 4
  %shr40 = lshr i32 %77, 25
  %or41 = or i32 %shl38, %shr40
  %78 = load i32*, i32** %state.addr, align 8
  %79 = load i64, i64* %b.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %or41, i32* %arrayidx42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
