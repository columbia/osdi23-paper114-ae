; ModuleID = 'poly1305.c'
source_filename = "poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }

@.str = private unnamed_addr constant [20 x i8] c"  Poly1305 test %u \00", align 1
@test_keys = internal constant [2 x [32 x i8]] [[32 x i8] c"\85\D6\BExWUm3\7FDR\FEB\D5\06\A8\01\03\80\8A\FB\0D\B2\FDJ\BF\F6\AFAI\F5\1B", [32 x i8] c"\1C\92@\A5\EBU\D3\8A\F33\88\86\04\F6\B5\F0G9\17\C1@+\80\09\9D\CA\\\BC pu\C0"], align 16
@test_data_len = internal constant [2 x i64] [i64 34, i64 127], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"error code: %i\0A\00", align 1
@test_mac = internal constant [2 x [16 x i8]] [[16 x i8] c"\A8\06\1D\C10Q6\C6\C2+\8B\AF\0C\01'\A9", [16 x i8] c"EAf\9A~\AA\EEa\E7\08\DC|\BC\C5\EBb"], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"failed (mac)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@test_data = internal constant <{ <{ [34 x i8], [93 x i8] }>, [127 x i8] }> <{ <{ [34 x i8], [93 x i8] }> <{ [34 x i8] c"Cryptographic Forum Research Group", [93 x i8] zeroinitializer }>, [127 x i8] c"'Twas brillig, and the slithy toves\0ADid gyre and gimble in the wabe:\0AAll mimsy were the borogoves,\0AAnd the mome raths outgrabe." }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_poly1305_context* %0 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %1, i64 noundef 80) #4
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_poly1305_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_poly1305_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 80) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  %key.addr = alloca i8*, align 8
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %key.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %shl = shl i32 %conv4, 8
  %or = or i32 %conv, %shl
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %shl7 = shl i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %6 = load i8*, i8** %key.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %shl11 = shl i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  %and = and i32 %or12, 268435455
  %8 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %8, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %r, i64 0, i64 0
  store i32 %and, i32* %arrayidx13, align 8
  %9 = load i8*, i8** %key.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 4
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %11 = load i8*, i8** %key.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %shl18 = shl i32 %conv17, 8
  %or19 = or i32 %conv15, %shl18
  %13 = load i8*, i8** %key.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 6
  %14 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %shl22 = shl i32 %conv21, 16
  %or23 = or i32 %or19, %shl22
  %15 = load i8*, i8** %key.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %15, i64 7
  %16 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %16 to i32
  %shl26 = shl i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  %and28 = and i32 %or27, 268435452
  %17 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r29 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %17, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %r29, i64 0, i64 1
  store i32 %and28, i32* %arrayidx30, align 4
  %18 = load i8*, i8** %key.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %18, i64 8
  %19 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %20 = load i8*, i8** %key.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %20, i64 9
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  %shl35 = shl i32 %conv34, 8
  %or36 = or i32 %conv32, %shl35
  %22 = load i8*, i8** %key.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %22, i64 10
  %23 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %23 to i32
  %shl39 = shl i32 %conv38, 16
  %or40 = or i32 %or36, %shl39
  %24 = load i8*, i8** %key.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %24, i64 11
  %25 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %25 to i32
  %shl43 = shl i32 %conv42, 24
  %or44 = or i32 %or40, %shl43
  %and45 = and i32 %or44, 268435452
  %26 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r46 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %26, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %r46, i64 0, i64 2
  store i32 %and45, i32* %arrayidx47, align 8
  %27 = load i8*, i8** %key.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %27, i64 12
  %28 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %28 to i32
  %29 = load i8*, i8** %key.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %29, i64 13
  %30 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %30 to i32
  %shl52 = shl i32 %conv51, 8
  %or53 = or i32 %conv49, %shl52
  %31 = load i8*, i8** %key.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %31, i64 14
  %32 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %32 to i32
  %shl56 = shl i32 %conv55, 16
  %or57 = or i32 %or53, %shl56
  %33 = load i8*, i8** %key.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %33, i64 15
  %34 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %34 to i32
  %shl60 = shl i32 %conv59, 24
  %or61 = or i32 %or57, %shl60
  %and62 = and i32 %or61, 268435452
  %35 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r63 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %35, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %r63, i64 0, i64 3
  store i32 %and62, i32* %arrayidx64, align 4
  %36 = load i8*, i8** %key.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %36, i64 16
  %37 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %37 to i32
  %38 = load i8*, i8** %key.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %38, i64 17
  %39 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %39 to i32
  %shl69 = shl i32 %conv68, 8
  %or70 = or i32 %conv66, %shl69
  %40 = load i8*, i8** %key.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %40, i64 18
  %41 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %41 to i32
  %shl73 = shl i32 %conv72, 16
  %or74 = or i32 %or70, %shl73
  %42 = load i8*, i8** %key.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %42, i64 19
  %43 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %43 to i32
  %shl77 = shl i32 %conv76, 24
  %or78 = or i32 %or74, %shl77
  %44 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %44, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i64 0, i64 0
  store i32 %or78, i32* %arrayidx79, align 8
  %45 = load i8*, i8** %key.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %45, i64 20
  %46 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %46 to i32
  %47 = load i8*, i8** %key.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %47, i64 21
  %48 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %48 to i32
  %shl84 = shl i32 %conv83, 8
  %or85 = or i32 %conv81, %shl84
  %49 = load i8*, i8** %key.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %49, i64 22
  %50 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %50 to i32
  %shl88 = shl i32 %conv87, 16
  %or89 = or i32 %or85, %shl88
  %51 = load i8*, i8** %key.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %51, i64 23
  %52 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %52 to i32
  %shl92 = shl i32 %conv91, 24
  %or93 = or i32 %or89, %shl92
  %53 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s94 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %53, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %s94, i64 0, i64 1
  store i32 %or93, i32* %arrayidx95, align 4
  %54 = load i8*, i8** %key.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %54, i64 24
  %55 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %55 to i32
  %56 = load i8*, i8** %key.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %56, i64 25
  %57 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %57 to i32
  %shl100 = shl i32 %conv99, 8
  %or101 = or i32 %conv97, %shl100
  %58 = load i8*, i8** %key.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %58, i64 26
  %59 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %59 to i32
  %shl104 = shl i32 %conv103, 16
  %or105 = or i32 %or101, %shl104
  %60 = load i8*, i8** %key.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %60, i64 27
  %61 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %61 to i32
  %shl108 = shl i32 %conv107, 24
  %or109 = or i32 %or105, %shl108
  %62 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s110 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %62, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %s110, i64 0, i64 2
  store i32 %or109, i32* %arrayidx111, align 8
  %63 = load i8*, i8** %key.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %63, i64 28
  %64 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %64 to i32
  %65 = load i8*, i8** %key.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %65, i64 29
  %66 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %66 to i32
  %shl116 = shl i32 %conv115, 8
  %or117 = or i32 %conv113, %shl116
  %67 = load i8*, i8** %key.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %67, i64 30
  %68 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %68 to i32
  %shl120 = shl i32 %conv119, 16
  %or121 = or i32 %or117, %shl120
  %69 = load i8*, i8** %key.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %69, i64 31
  %70 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %70 to i32
  %shl124 = shl i32 %conv123, 24
  %or125 = or i32 %or121, %shl124
  %71 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s126 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %71, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %s126, i64 0, i64 3
  store i32 %or125, i32* %arrayidx127, align 4
  %72 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %72, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [5 x i32], [5 x i32]* %acc, i64 0, i64 0
  store i32 0, i32* %arrayidx128, align 8
  %73 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc129 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %73, i32 0, i32 2
  %arrayidx130 = getelementptr inbounds [5 x i32], [5 x i32]* %acc129, i64 0, i64 1
  store i32 0, i32* %arrayidx130, align 4
  %74 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc131 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %74, i32 0, i32 2
  %arrayidx132 = getelementptr inbounds [5 x i32], [5 x i32]* %acc131, i64 0, i64 2
  store i32 0, i32* %arrayidx132, align 8
  %75 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc133 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %75, i32 0, i32 2
  %arrayidx134 = getelementptr inbounds [5 x i32], [5 x i32]* %acc133, i64 0, i64 3
  store i32 0, i32* %arrayidx134, align 4
  %76 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc135 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %76, i32 0, i32 2
  %arrayidx136 = getelementptr inbounds [5 x i32], [5 x i32]* %acc135, i64 0, i64 4
  store i32 0, i32* %arrayidx136, align 8
  %77 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %77, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %queue, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay, i64 noundef 16) #4
  %78 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %78, i32 0, i32 4
  store i64 0, i64* %queue_len, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %remaining = alloca i64, align 8
  %queue_free_len = alloca i64, align 8
  %nblocks = alloca i64, align 8
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i64 0, i64* %offset, align 8
  %0 = load i64, i64* %ilen.addr, align 8
  store i64 %0, i64* %remaining, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i64, i64* %remaining, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %do.end2
  %2 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %2, i32 0, i32 4
  %3 = load i64, i64* %queue_len, align 8
  %cmp3 = icmp ugt i64 %3, 0
  br i1 %cmp3, label %if.then, label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len4 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %4, i32 0, i32 4
  %5 = load i64, i64* %queue_len4, align 8
  %sub = sub i64 16, %5
  store i64 %sub, i64* %queue_free_len, align 8
  %6 = load i64, i64* %ilen.addr, align 8
  %7 = load i64, i64* %queue_free_len, align 8
  %cmp5 = icmp ult i64 %6, %7
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %8 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %8, i32 0, i32 3
  %9 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len7 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %9, i32 0, i32 4
  %10 = load i64, i64* %queue_len7, align 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %queue, i64 0, i64 %10
  %11 = load i8*, i8** %input.addr, align 8
  %12 = load i64, i64* %ilen.addr, align 8
  %call = call i8* @memcpy(i8* noundef %arrayidx, i8* noundef %11, i64 noundef %12) #5
  %13 = load i64, i64* %ilen.addr, align 8
  %14 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %14, i32 0, i32 4
  %15 = load i64, i64* %queue_len8, align 8
  %add = add i64 %15, %13
  store i64 %add, i64* %queue_len8, align 8
  store i64 0, i64* %remaining, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue9 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %16, i32 0, i32 3
  %17 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len10 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %17, i32 0, i32 4
  %18 = load i64, i64* %queue_len10, align 8
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %queue9, i64 0, i64 %18
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %queue_free_len, align 8
  %call12 = call i8* @memcpy(i8* noundef %arrayidx11, i8* noundef %19, i64 noundef %20) #5
  %21 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len13 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %21, i32 0, i32 4
  store i64 0, i64* %queue_len13, align 8
  %22 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %23 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue14 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %23, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %queue14, i64 0, i64 0
  call void @poly1305_process(%struct.mbedtls_poly1305_context* noundef %22, i64 noundef 1, i8* noundef %arraydecay, i32 noundef 1) #4
  %24 = load i64, i64* %queue_free_len, align 8
  %25 = load i64, i64* %offset, align 8
  %add15 = add i64 %25, %24
  store i64 %add15, i64* %offset, align 8
  %26 = load i64, i64* %queue_free_len, align 8
  %27 = load i64, i64* %remaining, align 8
  %sub16 = sub i64 %27, %26
  store i64 %sub16, i64* %remaining, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true, %do.end2
  %28 = load i64, i64* %remaining, align 8
  %cmp18 = icmp uge i64 %28, 16
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %29 = load i64, i64* %remaining, align 8
  %div = udiv i64 %29, 16
  store i64 %div, i64* %nblocks, align 8
  %30 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %31 = load i64, i64* %nblocks, align 8
  %32 = load i8*, i8** %input.addr, align 8
  %33 = load i64, i64* %offset, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %32, i64 %33
  call void @poly1305_process(%struct.mbedtls_poly1305_context* noundef %30, i64 noundef %31, i8* noundef %arrayidx20, i32 noundef 1) #4
  %34 = load i64, i64* %nblocks, align 8
  %mul = mul i64 %34, 16
  %35 = load i64, i64* %offset, align 8
  %add21 = add i64 %35, %mul
  store i64 %add21, i64* %offset, align 8
  %36 = load i64, i64* %remaining, align 8
  %rem = urem i64 %36, 16
  store i64 %rem, i64* %remaining, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %37 = load i64, i64* %remaining, align 8
  %cmp23 = icmp ugt i64 %37, 0
  br i1 %cmp23, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end22
  %38 = load i64, i64* %remaining, align 8
  %39 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len25 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %39, i32 0, i32 4
  store i64 %38, i64* %queue_len25, align 8
  %40 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue26 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %40, i32 0, i32 3
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %queue26, i64 0, i64 0
  %41 = load i8*, i8** %input.addr, align 8
  %42 = load i64, i64* %offset, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i64, i64* %remaining, align 8
  %call29 = call i8* @memcpy(i8* noundef %arraydecay27, i8* noundef %arrayidx28, i64 noundef %43) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end22
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_process(%struct.mbedtls_poly1305_context* noundef %ctx, i64 noundef %nblocks, i8* noundef %input, i32 noundef %needs_padding) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  %nblocks.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %needs_padding.addr = alloca i32, align 4
  %d0 = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  %d3 = alloca i64, align 8
  %acc0 = alloca i32, align 4
  %acc1 = alloca i32, align 4
  %acc2 = alloca i32, align 4
  %acc3 = alloca i32, align 4
  %acc4 = alloca i32, align 4
  %r0 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r3 = alloca i32, align 4
  %rs1 = alloca i32, align 4
  %rs2 = alloca i32, align 4
  %rs3 = alloca i32, align 4
  %offset = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  store i64 %nblocks, i64* %nblocks.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i32 %needs_padding, i32* %needs_padding.addr, align 4
  store i64 0, i64* %offset, align 8
  %0 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %r, i64 0, i64 0
  %1 = load i32, i32* %arrayidx, align 8
  store i32 %1, i32* %r0, align 4
  %2 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r4 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %2, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %r4, i64 0, i64 1
  %3 = load i32, i32* %arrayidx5, align 4
  store i32 %3, i32* %r1, align 4
  %4 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %4, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %r6, i64 0, i64 2
  %5 = load i32, i32* %arrayidx7, align 8
  store i32 %5, i32* %r2, align 4
  %6 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %r8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %6, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %r8, i64 0, i64 3
  %7 = load i32, i32* %arrayidx9, align 4
  store i32 %7, i32* %r3, align 4
  %8 = load i32, i32* %r1, align 4
  %9 = load i32, i32* %r1, align 4
  %shr = lshr i32 %9, 2
  %add = add i32 %8, %shr
  store i32 %add, i32* %rs1, align 4
  %10 = load i32, i32* %r2, align 4
  %11 = load i32, i32* %r2, align 4
  %shr10 = lshr i32 %11, 2
  %add11 = add i32 %10, %shr10
  store i32 %add11, i32* %rs2, align 4
  %12 = load i32, i32* %r3, align 4
  %13 = load i32, i32* %r3, align 4
  %shr12 = lshr i32 %13, 2
  %add13 = add i32 %12, %shr12
  store i32 %add13, i32* %rs3, align 4
  %14 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %14, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [5 x i32], [5 x i32]* %acc, i64 0, i64 0
  %15 = load i32, i32* %arrayidx14, align 8
  store i32 %15, i32* %acc0, align 4
  %16 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc15 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %16, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [5 x i32], [5 x i32]* %acc15, i64 0, i64 1
  %17 = load i32, i32* %arrayidx16, align 4
  store i32 %17, i32* %acc1, align 4
  %18 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc17 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %18, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [5 x i32], [5 x i32]* %acc17, i64 0, i64 2
  %19 = load i32, i32* %arrayidx18, align 8
  store i32 %19, i32* %acc2, align 4
  %20 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc19 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %20, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [5 x i32], [5 x i32]* %acc19, i64 0, i64 3
  %21 = load i32, i32* %arrayidx20, align 4
  store i32 %21, i32* %acc3, align 4
  %22 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc21 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %22, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [5 x i32], [5 x i32]* %acc21, i64 0, i64 4
  %23 = load i32, i32* %arrayidx22, align 8
  store i32 %23, i32* %acc4, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i64, i64* %i, align 8
  %25 = load i64, i64* %nblocks.addr, align 8
  %cmp = icmp ult i64 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %input.addr, align 8
  %27 = load i64, i64* %offset, align 8
  %add23 = add i64 %27, 0
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %add23
  %28 = load i8, i8* %arrayidx24, align 1
  %conv = zext i8 %28 to i32
  %29 = load i8*, i8** %input.addr, align 8
  %30 = load i64, i64* %offset, align 8
  %add25 = add i64 %30, 0
  %add26 = add i64 %add25, 1
  %arrayidx27 = getelementptr inbounds i8, i8* %29, i64 %add26
  %31 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %31 to i32
  %shl = shl i32 %conv28, 8
  %or = or i32 %conv, %shl
  %32 = load i8*, i8** %input.addr, align 8
  %33 = load i64, i64* %offset, align 8
  %add29 = add i64 %33, 0
  %add30 = add i64 %add29, 2
  %arrayidx31 = getelementptr inbounds i8, i8* %32, i64 %add30
  %34 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %34 to i32
  %shl33 = shl i32 %conv32, 16
  %or34 = or i32 %or, %shl33
  %35 = load i8*, i8** %input.addr, align 8
  %36 = load i64, i64* %offset, align 8
  %add35 = add i64 %36, 0
  %add36 = add i64 %add35, 3
  %arrayidx37 = getelementptr inbounds i8, i8* %35, i64 %add36
  %37 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %37 to i32
  %shl39 = shl i32 %conv38, 24
  %or40 = or i32 %or34, %shl39
  %conv41 = zext i32 %or40 to i64
  store i64 %conv41, i64* %d0, align 8
  %38 = load i8*, i8** %input.addr, align 8
  %39 = load i64, i64* %offset, align 8
  %add42 = add i64 %39, 4
  %arrayidx43 = getelementptr inbounds i8, i8* %38, i64 %add42
  %40 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %40 to i32
  %41 = load i8*, i8** %input.addr, align 8
  %42 = load i64, i64* %offset, align 8
  %add45 = add i64 %42, 4
  %add46 = add i64 %add45, 1
  %arrayidx47 = getelementptr inbounds i8, i8* %41, i64 %add46
  %43 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %43 to i32
  %shl49 = shl i32 %conv48, 8
  %or50 = or i32 %conv44, %shl49
  %44 = load i8*, i8** %input.addr, align 8
  %45 = load i64, i64* %offset, align 8
  %add51 = add i64 %45, 4
  %add52 = add i64 %add51, 2
  %arrayidx53 = getelementptr inbounds i8, i8* %44, i64 %add52
  %46 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %46 to i32
  %shl55 = shl i32 %conv54, 16
  %or56 = or i32 %or50, %shl55
  %47 = load i8*, i8** %input.addr, align 8
  %48 = load i64, i64* %offset, align 8
  %add57 = add i64 %48, 4
  %add58 = add i64 %add57, 3
  %arrayidx59 = getelementptr inbounds i8, i8* %47, i64 %add58
  %49 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %49 to i32
  %shl61 = shl i32 %conv60, 24
  %or62 = or i32 %or56, %shl61
  %conv63 = zext i32 %or62 to i64
  store i64 %conv63, i64* %d1, align 8
  %50 = load i8*, i8** %input.addr, align 8
  %51 = load i64, i64* %offset, align 8
  %add64 = add i64 %51, 8
  %arrayidx65 = getelementptr inbounds i8, i8* %50, i64 %add64
  %52 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %52 to i32
  %53 = load i8*, i8** %input.addr, align 8
  %54 = load i64, i64* %offset, align 8
  %add67 = add i64 %54, 8
  %add68 = add i64 %add67, 1
  %arrayidx69 = getelementptr inbounds i8, i8* %53, i64 %add68
  %55 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %55 to i32
  %shl71 = shl i32 %conv70, 8
  %or72 = or i32 %conv66, %shl71
  %56 = load i8*, i8** %input.addr, align 8
  %57 = load i64, i64* %offset, align 8
  %add73 = add i64 %57, 8
  %add74 = add i64 %add73, 2
  %arrayidx75 = getelementptr inbounds i8, i8* %56, i64 %add74
  %58 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %58 to i32
  %shl77 = shl i32 %conv76, 16
  %or78 = or i32 %or72, %shl77
  %59 = load i8*, i8** %input.addr, align 8
  %60 = load i64, i64* %offset, align 8
  %add79 = add i64 %60, 8
  %add80 = add i64 %add79, 3
  %arrayidx81 = getelementptr inbounds i8, i8* %59, i64 %add80
  %61 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %61 to i32
  %shl83 = shl i32 %conv82, 24
  %or84 = or i32 %or78, %shl83
  %conv85 = zext i32 %or84 to i64
  store i64 %conv85, i64* %d2, align 8
  %62 = load i8*, i8** %input.addr, align 8
  %63 = load i64, i64* %offset, align 8
  %add86 = add i64 %63, 12
  %arrayidx87 = getelementptr inbounds i8, i8* %62, i64 %add86
  %64 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %64 to i32
  %65 = load i8*, i8** %input.addr, align 8
  %66 = load i64, i64* %offset, align 8
  %add89 = add i64 %66, 12
  %add90 = add i64 %add89, 1
  %arrayidx91 = getelementptr inbounds i8, i8* %65, i64 %add90
  %67 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %67 to i32
  %shl93 = shl i32 %conv92, 8
  %or94 = or i32 %conv88, %shl93
  %68 = load i8*, i8** %input.addr, align 8
  %69 = load i64, i64* %offset, align 8
  %add95 = add i64 %69, 12
  %add96 = add i64 %add95, 2
  %arrayidx97 = getelementptr inbounds i8, i8* %68, i64 %add96
  %70 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %70 to i32
  %shl99 = shl i32 %conv98, 16
  %or100 = or i32 %or94, %shl99
  %71 = load i8*, i8** %input.addr, align 8
  %72 = load i64, i64* %offset, align 8
  %add101 = add i64 %72, 12
  %add102 = add i64 %add101, 3
  %arrayidx103 = getelementptr inbounds i8, i8* %71, i64 %add102
  %73 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %73 to i32
  %shl105 = shl i32 %conv104, 24
  %or106 = or i32 %or100, %shl105
  %conv107 = zext i32 %or106 to i64
  store i64 %conv107, i64* %d3, align 8
  %74 = load i32, i32* %acc0, align 4
  %conv108 = zext i32 %74 to i64
  %75 = load i64, i64* %d0, align 8
  %add109 = add i64 %75, %conv108
  store i64 %add109, i64* %d0, align 8
  %76 = load i32, i32* %acc1, align 4
  %conv110 = zext i32 %76 to i64
  %77 = load i64, i64* %d0, align 8
  %shr111 = lshr i64 %77, 32
  %add112 = add i64 %conv110, %shr111
  %78 = load i64, i64* %d1, align 8
  %add113 = add i64 %78, %add112
  store i64 %add113, i64* %d1, align 8
  %79 = load i32, i32* %acc2, align 4
  %conv114 = zext i32 %79 to i64
  %80 = load i64, i64* %d1, align 8
  %shr115 = lshr i64 %80, 32
  %add116 = add i64 %conv114, %shr115
  %81 = load i64, i64* %d2, align 8
  %add117 = add i64 %81, %add116
  store i64 %add117, i64* %d2, align 8
  %82 = load i32, i32* %acc3, align 4
  %conv118 = zext i32 %82 to i64
  %83 = load i64, i64* %d2, align 8
  %shr119 = lshr i64 %83, 32
  %add120 = add i64 %conv118, %shr119
  %84 = load i64, i64* %d3, align 8
  %add121 = add i64 %84, %add120
  store i64 %add121, i64* %d3, align 8
  %85 = load i64, i64* %d0, align 8
  %conv122 = trunc i64 %85 to i32
  store i32 %conv122, i32* %acc0, align 4
  %86 = load i64, i64* %d1, align 8
  %conv123 = trunc i64 %86 to i32
  store i32 %conv123, i32* %acc1, align 4
  %87 = load i64, i64* %d2, align 8
  %conv124 = trunc i64 %87 to i32
  store i32 %conv124, i32* %acc2, align 4
  %88 = load i64, i64* %d3, align 8
  %conv125 = trunc i64 %88 to i32
  store i32 %conv125, i32* %acc3, align 4
  %89 = load i64, i64* %d3, align 8
  %shr126 = lshr i64 %89, 32
  %conv127 = trunc i64 %shr126 to i32
  %90 = load i32, i32* %needs_padding.addr, align 4
  %add128 = add i32 %conv127, %90
  %91 = load i32, i32* %acc4, align 4
  %add129 = add i32 %91, %add128
  store i32 %add129, i32* %acc4, align 4
  %92 = load i32, i32* %acc0, align 4
  %93 = load i32, i32* %r0, align 4
  %call = call i64 @mul64(i32 noundef %92, i32 noundef %93) #4
  %94 = load i32, i32* %acc1, align 4
  %95 = load i32, i32* %rs3, align 4
  %call130 = call i64 @mul64(i32 noundef %94, i32 noundef %95) #4
  %add131 = add i64 %call, %call130
  %96 = load i32, i32* %acc2, align 4
  %97 = load i32, i32* %rs2, align 4
  %call132 = call i64 @mul64(i32 noundef %96, i32 noundef %97) #4
  %add133 = add i64 %add131, %call132
  %98 = load i32, i32* %acc3, align 4
  %99 = load i32, i32* %rs1, align 4
  %call134 = call i64 @mul64(i32 noundef %98, i32 noundef %99) #4
  %add135 = add i64 %add133, %call134
  store i64 %add135, i64* %d0, align 8
  %100 = load i32, i32* %acc0, align 4
  %101 = load i32, i32* %r1, align 4
  %call136 = call i64 @mul64(i32 noundef %100, i32 noundef %101) #4
  %102 = load i32, i32* %acc1, align 4
  %103 = load i32, i32* %r0, align 4
  %call137 = call i64 @mul64(i32 noundef %102, i32 noundef %103) #4
  %add138 = add i64 %call136, %call137
  %104 = load i32, i32* %acc2, align 4
  %105 = load i32, i32* %rs3, align 4
  %call139 = call i64 @mul64(i32 noundef %104, i32 noundef %105) #4
  %add140 = add i64 %add138, %call139
  %106 = load i32, i32* %acc3, align 4
  %107 = load i32, i32* %rs2, align 4
  %call141 = call i64 @mul64(i32 noundef %106, i32 noundef %107) #4
  %add142 = add i64 %add140, %call141
  %108 = load i32, i32* %acc4, align 4
  %109 = load i32, i32* %rs1, align 4
  %call143 = call i64 @mul64(i32 noundef %108, i32 noundef %109) #4
  %add144 = add i64 %add142, %call143
  store i64 %add144, i64* %d1, align 8
  %110 = load i32, i32* %acc0, align 4
  %111 = load i32, i32* %r2, align 4
  %call145 = call i64 @mul64(i32 noundef %110, i32 noundef %111) #4
  %112 = load i32, i32* %acc1, align 4
  %113 = load i32, i32* %r1, align 4
  %call146 = call i64 @mul64(i32 noundef %112, i32 noundef %113) #4
  %add147 = add i64 %call145, %call146
  %114 = load i32, i32* %acc2, align 4
  %115 = load i32, i32* %r0, align 4
  %call148 = call i64 @mul64(i32 noundef %114, i32 noundef %115) #4
  %add149 = add i64 %add147, %call148
  %116 = load i32, i32* %acc3, align 4
  %117 = load i32, i32* %rs3, align 4
  %call150 = call i64 @mul64(i32 noundef %116, i32 noundef %117) #4
  %add151 = add i64 %add149, %call150
  %118 = load i32, i32* %acc4, align 4
  %119 = load i32, i32* %rs2, align 4
  %call152 = call i64 @mul64(i32 noundef %118, i32 noundef %119) #4
  %add153 = add i64 %add151, %call152
  store i64 %add153, i64* %d2, align 8
  %120 = load i32, i32* %acc0, align 4
  %121 = load i32, i32* %r3, align 4
  %call154 = call i64 @mul64(i32 noundef %120, i32 noundef %121) #4
  %122 = load i32, i32* %acc1, align 4
  %123 = load i32, i32* %r2, align 4
  %call155 = call i64 @mul64(i32 noundef %122, i32 noundef %123) #4
  %add156 = add i64 %call154, %call155
  %124 = load i32, i32* %acc2, align 4
  %125 = load i32, i32* %r1, align 4
  %call157 = call i64 @mul64(i32 noundef %124, i32 noundef %125) #4
  %add158 = add i64 %add156, %call157
  %126 = load i32, i32* %acc3, align 4
  %127 = load i32, i32* %r0, align 4
  %call159 = call i64 @mul64(i32 noundef %126, i32 noundef %127) #4
  %add160 = add i64 %add158, %call159
  %128 = load i32, i32* %acc4, align 4
  %129 = load i32, i32* %rs3, align 4
  %call161 = call i64 @mul64(i32 noundef %128, i32 noundef %129) #4
  %add162 = add i64 %add160, %call161
  store i64 %add162, i64* %d3, align 8
  %130 = load i32, i32* %r0, align 4
  %131 = load i32, i32* %acc4, align 4
  %mul = mul i32 %131, %130
  store i32 %mul, i32* %acc4, align 4
  %132 = load i64, i64* %d0, align 8
  %shr163 = lshr i64 %132, 32
  %133 = load i64, i64* %d1, align 8
  %add164 = add i64 %133, %shr163
  store i64 %add164, i64* %d1, align 8
  %134 = load i64, i64* %d1, align 8
  %shr165 = lshr i64 %134, 32
  %135 = load i64, i64* %d2, align 8
  %add166 = add i64 %135, %shr165
  store i64 %add166, i64* %d2, align 8
  %136 = load i64, i64* %d2, align 8
  %shr167 = lshr i64 %136, 32
  %137 = load i64, i64* %d3, align 8
  %add168 = add i64 %137, %shr167
  store i64 %add168, i64* %d3, align 8
  %138 = load i64, i64* %d0, align 8
  %conv169 = trunc i64 %138 to i32
  store i32 %conv169, i32* %acc0, align 4
  %139 = load i64, i64* %d1, align 8
  %conv170 = trunc i64 %139 to i32
  store i32 %conv170, i32* %acc1, align 4
  %140 = load i64, i64* %d2, align 8
  %conv171 = trunc i64 %140 to i32
  store i32 %conv171, i32* %acc2, align 4
  %141 = load i64, i64* %d3, align 8
  %conv172 = trunc i64 %141 to i32
  store i32 %conv172, i32* %acc3, align 4
  %142 = load i64, i64* %d3, align 8
  %shr173 = lshr i64 %142, 32
  %conv174 = trunc i64 %shr173 to i32
  %143 = load i32, i32* %acc4, align 4
  %add175 = add i32 %conv174, %143
  store i32 %add175, i32* %acc4, align 4
  %144 = load i32, i32* %acc0, align 4
  %conv176 = zext i32 %144 to i64
  %145 = load i32, i32* %acc4, align 4
  %shr177 = lshr i32 %145, 2
  %conv178 = zext i32 %shr177 to i64
  %add179 = add i64 %conv176, %conv178
  %146 = load i32, i32* %acc4, align 4
  %and = and i32 %146, -4
  %conv180 = zext i32 %and to i64
  %add181 = add i64 %add179, %conv180
  store i64 %add181, i64* %d0, align 8
  %147 = load i32, i32* %acc4, align 4
  %and182 = and i32 %147, 3
  store i32 %and182, i32* %acc4, align 4
  %148 = load i64, i64* %d0, align 8
  %conv183 = trunc i64 %148 to i32
  store i32 %conv183, i32* %acc0, align 4
  %149 = load i32, i32* %acc1, align 4
  %conv184 = zext i32 %149 to i64
  %150 = load i64, i64* %d0, align 8
  %shr185 = lshr i64 %150, 32
  %add186 = add i64 %conv184, %shr185
  store i64 %add186, i64* %d0, align 8
  %151 = load i64, i64* %d0, align 8
  %conv187 = trunc i64 %151 to i32
  store i32 %conv187, i32* %acc1, align 4
  %152 = load i32, i32* %acc2, align 4
  %conv188 = zext i32 %152 to i64
  %153 = load i64, i64* %d0, align 8
  %shr189 = lshr i64 %153, 32
  %add190 = add i64 %conv188, %shr189
  store i64 %add190, i64* %d0, align 8
  %154 = load i64, i64* %d0, align 8
  %conv191 = trunc i64 %154 to i32
  store i32 %conv191, i32* %acc2, align 4
  %155 = load i32, i32* %acc3, align 4
  %conv192 = zext i32 %155 to i64
  %156 = load i64, i64* %d0, align 8
  %shr193 = lshr i64 %156, 32
  %add194 = add i64 %conv192, %shr193
  store i64 %add194, i64* %d0, align 8
  %157 = load i64, i64* %d0, align 8
  %conv195 = trunc i64 %157 to i32
  store i32 %conv195, i32* %acc3, align 4
  %158 = load i32, i32* %acc4, align 4
  %conv196 = zext i32 %158 to i64
  %159 = load i64, i64* %d0, align 8
  %shr197 = lshr i64 %159, 32
  %add198 = add i64 %conv196, %shr197
  store i64 %add198, i64* %d0, align 8
  %160 = load i64, i64* %d0, align 8
  %conv199 = trunc i64 %160 to i32
  store i32 %conv199, i32* %acc4, align 4
  %161 = load i64, i64* %offset, align 8
  %add200 = add i64 %161, 16
  store i64 %add200, i64* %offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %162 = load i64, i64* %i, align 8
  %inc = add i64 %162, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %163 = load i32, i32* %acc0, align 4
  %164 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc201 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %164, i32 0, i32 2
  %arrayidx202 = getelementptr inbounds [5 x i32], [5 x i32]* %acc201, i64 0, i64 0
  store i32 %163, i32* %arrayidx202, align 8
  %165 = load i32, i32* %acc1, align 4
  %166 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc203 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %166, i32 0, i32 2
  %arrayidx204 = getelementptr inbounds [5 x i32], [5 x i32]* %acc203, i64 0, i64 1
  store i32 %165, i32* %arrayidx204, align 4
  %167 = load i32, i32* %acc2, align 4
  %168 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc205 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %168, i32 0, i32 2
  %arrayidx206 = getelementptr inbounds [5 x i32], [5 x i32]* %acc205, i64 0, i64 2
  store i32 %167, i32* %arrayidx206, align 8
  %169 = load i32, i32* %acc3, align 4
  %170 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc207 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %170, i32 0, i32 2
  %arrayidx208 = getelementptr inbounds [5 x i32], [5 x i32]* %acc207, i64 0, i64 3
  store i32 %169, i32* %arrayidx208, align 4
  %171 = load i32, i32* %acc4, align 4
  %172 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc209 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %172, i32 0, i32 2
  %arrayidx210 = getelementptr inbounds [5 x i32], [5 x i32]* %acc209, i64 0, i64 4
  store i32 %171, i32* %arrayidx210, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %mac) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  %mac.addr = alloca i8*, align 8
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 4
  %1 = load i64, i64* %queue_len, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %2 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %2, i32 0, i32 3
  %3 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len3 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %3, i32 0, i32 4
  %4 = load i64, i64* %queue_len3, align 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %queue, i64 0, i64 %4
  store i8 1, i8* %arrayidx, align 1
  %5 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len4 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %5, i32 0, i32 4
  %6 = load i64, i64* %queue_len4, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %queue_len4, align 8
  %7 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue5 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %7, i32 0, i32 3
  %8 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len6 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %8, i32 0, i32 4
  %9 = load i64, i64* %queue_len6, align 8
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %queue5, i64 0, i64 %9
  %10 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue_len8 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %10, i32 0, i32 4
  %11 = load i64, i64* %queue_len8, align 8
  %sub = sub i64 16, %11
  %call = call i8* @memset(i8* noundef %arrayidx7, i32 noundef 0, i64 noundef %sub) #5
  %12 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %13 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %queue9 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %13, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %queue9, i64 0, i64 0
  call void @poly1305_process(%struct.mbedtls_poly1305_context* noundef %12, i64 noundef 1, i8* noundef %arraydecay, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end2
  %14 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %15 = load i8*, i8** %mac.addr, align 8
  call void @poly1305_compute_mac(%struct.mbedtls_poly1305_context* noundef %14, i8* noundef %15) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_compute_mac(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %mac) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_poly1305_context*, align 8
  %mac.addr = alloca i8*, align 8
  %d = alloca i64, align 8
  %g0 = alloca i32, align 4
  %g1 = alloca i32, align 4
  %g2 = alloca i32, align 4
  %g3 = alloca i32, align 4
  %g4 = alloca i32, align 4
  %acc0 = alloca i32, align 4
  %acc1 = alloca i32, align 4
  %acc2 = alloca i32, align 4
  %acc3 = alloca i32, align 4
  %acc4 = alloca i32, align 4
  %mask = alloca i32, align 4
  %mask_inv = alloca i32, align 4
  store %struct.mbedtls_poly1305_context* %ctx, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  %0 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %acc, i64 0, i64 0
  %1 = load i32, i32* %arrayidx, align 8
  store i32 %1, i32* %acc0, align 4
  %2 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc5 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %2, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %acc5, i64 0, i64 1
  %3 = load i32, i32* %arrayidx6, align 4
  store i32 %3, i32* %acc1, align 4
  %4 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc7 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %4, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [5 x i32], [5 x i32]* %acc7, i64 0, i64 2
  %5 = load i32, i32* %arrayidx8, align 8
  store i32 %5, i32* %acc2, align 4
  %6 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc9 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %6, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [5 x i32], [5 x i32]* %acc9, i64 0, i64 3
  %7 = load i32, i32* %arrayidx10, align 4
  store i32 %7, i32* %acc3, align 4
  %8 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %acc11 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %8, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [5 x i32], [5 x i32]* %acc11, i64 0, i64 4
  %9 = load i32, i32* %arrayidx12, align 8
  store i32 %9, i32* %acc4, align 4
  %10 = load i32, i32* %acc0, align 4
  %conv = zext i32 %10 to i64
  %add = add i64 %conv, 5
  store i64 %add, i64* %d, align 8
  %11 = load i64, i64* %d, align 8
  %conv13 = trunc i64 %11 to i32
  store i32 %conv13, i32* %g0, align 4
  %12 = load i32, i32* %acc1, align 4
  %conv14 = zext i32 %12 to i64
  %13 = load i64, i64* %d, align 8
  %shr = lshr i64 %13, 32
  %add15 = add i64 %conv14, %shr
  store i64 %add15, i64* %d, align 8
  %14 = load i64, i64* %d, align 8
  %conv16 = trunc i64 %14 to i32
  store i32 %conv16, i32* %g1, align 4
  %15 = load i32, i32* %acc2, align 4
  %conv17 = zext i32 %15 to i64
  %16 = load i64, i64* %d, align 8
  %shr18 = lshr i64 %16, 32
  %add19 = add i64 %conv17, %shr18
  store i64 %add19, i64* %d, align 8
  %17 = load i64, i64* %d, align 8
  %conv20 = trunc i64 %17 to i32
  store i32 %conv20, i32* %g2, align 4
  %18 = load i32, i32* %acc3, align 4
  %conv21 = zext i32 %18 to i64
  %19 = load i64, i64* %d, align 8
  %shr22 = lshr i64 %19, 32
  %add23 = add i64 %conv21, %shr22
  store i64 %add23, i64* %d, align 8
  %20 = load i64, i64* %d, align 8
  %conv24 = trunc i64 %20 to i32
  store i32 %conv24, i32* %g3, align 4
  %21 = load i32, i32* %acc4, align 4
  %22 = load i64, i64* %d, align 8
  %shr25 = lshr i64 %22, 32
  %conv26 = trunc i64 %shr25 to i32
  %add27 = add i32 %21, %conv26
  store i32 %add27, i32* %g4, align 4
  %23 = load i32, i32* %g4, align 4
  %shr28 = lshr i32 %23, 2
  %sub = sub i32 0, %shr28
  store i32 %sub, i32* %mask, align 4
  %24 = load i32, i32* %mask, align 4
  %neg = xor i32 %24, -1
  store i32 %neg, i32* %mask_inv, align 4
  %25 = load i32, i32* %acc0, align 4
  %26 = load i32, i32* %mask_inv, align 4
  %and = and i32 %25, %26
  %27 = load i32, i32* %g0, align 4
  %28 = load i32, i32* %mask, align 4
  %and29 = and i32 %27, %28
  %or = or i32 %and, %and29
  store i32 %or, i32* %acc0, align 4
  %29 = load i32, i32* %acc1, align 4
  %30 = load i32, i32* %mask_inv, align 4
  %and30 = and i32 %29, %30
  %31 = load i32, i32* %g1, align 4
  %32 = load i32, i32* %mask, align 4
  %and31 = and i32 %31, %32
  %or32 = or i32 %and30, %and31
  store i32 %or32, i32* %acc1, align 4
  %33 = load i32, i32* %acc2, align 4
  %34 = load i32, i32* %mask_inv, align 4
  %and33 = and i32 %33, %34
  %35 = load i32, i32* %g2, align 4
  %36 = load i32, i32* %mask, align 4
  %and34 = and i32 %35, %36
  %or35 = or i32 %and33, %and34
  store i32 %or35, i32* %acc2, align 4
  %37 = load i32, i32* %acc3, align 4
  %38 = load i32, i32* %mask_inv, align 4
  %and36 = and i32 %37, %38
  %39 = load i32, i32* %g3, align 4
  %40 = load i32, i32* %mask, align 4
  %and37 = and i32 %39, %40
  %or38 = or i32 %and36, %and37
  store i32 %or38, i32* %acc3, align 4
  %41 = load i32, i32* %acc0, align 4
  %conv39 = zext i32 %41 to i64
  %42 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %42, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %s, i64 0, i64 0
  %43 = load i32, i32* %arrayidx40, align 8
  %conv41 = zext i32 %43 to i64
  %add42 = add i64 %conv39, %conv41
  store i64 %add42, i64* %d, align 8
  %44 = load i64, i64* %d, align 8
  %conv43 = trunc i64 %44 to i32
  store i32 %conv43, i32* %acc0, align 4
  %45 = load i32, i32* %acc1, align 4
  %conv44 = zext i32 %45 to i64
  %46 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s45 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %46, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %s45, i64 0, i64 1
  %47 = load i32, i32* %arrayidx46, align 4
  %conv47 = zext i32 %47 to i64
  %add48 = add i64 %conv44, %conv47
  %48 = load i64, i64* %d, align 8
  %shr49 = lshr i64 %48, 32
  %add50 = add i64 %add48, %shr49
  store i64 %add50, i64* %d, align 8
  %49 = load i64, i64* %d, align 8
  %conv51 = trunc i64 %49 to i32
  store i32 %conv51, i32* %acc1, align 4
  %50 = load i32, i32* %acc2, align 4
  %conv52 = zext i32 %50 to i64
  %51 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s53 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %51, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %s53, i64 0, i64 2
  %52 = load i32, i32* %arrayidx54, align 8
  %conv55 = zext i32 %52 to i64
  %add56 = add i64 %conv52, %conv55
  %53 = load i64, i64* %d, align 8
  %shr57 = lshr i64 %53, 32
  %add58 = add i64 %add56, %shr57
  store i64 %add58, i64* %d, align 8
  %54 = load i64, i64* %d, align 8
  %conv59 = trunc i64 %54 to i32
  store i32 %conv59, i32* %acc2, align 4
  %55 = load %struct.mbedtls_poly1305_context*, %struct.mbedtls_poly1305_context** %ctx.addr, align 8
  %s60 = getelementptr inbounds %struct.mbedtls_poly1305_context, %struct.mbedtls_poly1305_context* %55, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %s60, i64 0, i64 3
  %56 = load i32, i32* %arrayidx61, align 4
  %57 = load i64, i64* %d, align 8
  %shr62 = lshr i64 %57, 32
  %conv63 = trunc i64 %shr62 to i32
  %add64 = add i32 %56, %conv63
  %58 = load i32, i32* %acc3, align 4
  %add65 = add i32 %58, %add64
  store i32 %add65, i32* %acc3, align 4
  %59 = load i32, i32* %acc0, align 4
  %and66 = and i32 %59, 255
  %conv67 = trunc i32 %and66 to i8
  %60 = load i8*, i8** %mac.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %conv67, i8* %arrayidx68, align 1
  %61 = load i32, i32* %acc0, align 4
  %shr69 = lshr i32 %61, 8
  %and70 = and i32 %shr69, 255
  %conv71 = trunc i32 %and70 to i8
  %62 = load i8*, i8** %mac.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %conv71, i8* %arrayidx72, align 1
  %63 = load i32, i32* %acc0, align 4
  %shr73 = lshr i32 %63, 16
  %and74 = and i32 %shr73, 255
  %conv75 = trunc i32 %and74 to i8
  %64 = load i8*, i8** %mac.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 %conv75, i8* %arrayidx76, align 1
  %65 = load i32, i32* %acc0, align 4
  %shr77 = lshr i32 %65, 24
  %and78 = and i32 %shr77, 255
  %conv79 = trunc i32 %and78 to i8
  %66 = load i8*, i8** %mac.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %66, i64 3
  store i8 %conv79, i8* %arrayidx80, align 1
  %67 = load i32, i32* %acc1, align 4
  %and81 = and i32 %67, 255
  %conv82 = trunc i32 %and81 to i8
  %68 = load i8*, i8** %mac.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %68, i64 4
  store i8 %conv82, i8* %arrayidx83, align 1
  %69 = load i32, i32* %acc1, align 4
  %shr84 = lshr i32 %69, 8
  %and85 = and i32 %shr84, 255
  %conv86 = trunc i32 %and85 to i8
  %70 = load i8*, i8** %mac.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %70, i64 5
  store i8 %conv86, i8* %arrayidx87, align 1
  %71 = load i32, i32* %acc1, align 4
  %shr88 = lshr i32 %71, 16
  %and89 = and i32 %shr88, 255
  %conv90 = trunc i32 %and89 to i8
  %72 = load i8*, i8** %mac.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %72, i64 6
  store i8 %conv90, i8* %arrayidx91, align 1
  %73 = load i32, i32* %acc1, align 4
  %shr92 = lshr i32 %73, 24
  %and93 = and i32 %shr92, 255
  %conv94 = trunc i32 %and93 to i8
  %74 = load i8*, i8** %mac.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %74, i64 7
  store i8 %conv94, i8* %arrayidx95, align 1
  %75 = load i32, i32* %acc2, align 4
  %and96 = and i32 %75, 255
  %conv97 = trunc i32 %and96 to i8
  %76 = load i8*, i8** %mac.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %76, i64 8
  store i8 %conv97, i8* %arrayidx98, align 1
  %77 = load i32, i32* %acc2, align 4
  %shr99 = lshr i32 %77, 8
  %and100 = and i32 %shr99, 255
  %conv101 = trunc i32 %and100 to i8
  %78 = load i8*, i8** %mac.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %78, i64 9
  store i8 %conv101, i8* %arrayidx102, align 1
  %79 = load i32, i32* %acc2, align 4
  %shr103 = lshr i32 %79, 16
  %and104 = and i32 %shr103, 255
  %conv105 = trunc i32 %and104 to i8
  %80 = load i8*, i8** %mac.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %80, i64 10
  store i8 %conv105, i8* %arrayidx106, align 1
  %81 = load i32, i32* %acc2, align 4
  %shr107 = lshr i32 %81, 24
  %and108 = and i32 %shr107, 255
  %conv109 = trunc i32 %and108 to i8
  %82 = load i8*, i8** %mac.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %82, i64 11
  store i8 %conv109, i8* %arrayidx110, align 1
  %83 = load i32, i32* %acc3, align 4
  %and111 = and i32 %83, 255
  %conv112 = trunc i32 %and111 to i8
  %84 = load i8*, i8** %mac.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %84, i64 12
  store i8 %conv112, i8* %arrayidx113, align 1
  %85 = load i32, i32* %acc3, align 4
  %shr114 = lshr i32 %85, 8
  %and115 = and i32 %shr114, 255
  %conv116 = trunc i32 %and115 to i8
  %86 = load i8*, i8** %mac.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %86, i64 13
  store i8 %conv116, i8* %arrayidx117, align 1
  %87 = load i32, i32* %acc3, align 4
  %shr118 = lshr i32 %87, 16
  %and119 = and i32 %shr118, 255
  %conv120 = trunc i32 %and119 to i8
  %88 = load i8*, i8** %mac.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %88, i64 14
  store i8 %conv120, i8* %arrayidx121, align 1
  %89 = load i32, i32* %acc3, align 4
  %shr122 = lshr i32 %89, 24
  %and123 = and i32 %shr122, 255
  %conv124 = trunc i32 %and123 to i8
  %90 = load i8*, i8** %mac.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %90, i64 15
  store i8 %conv124, i8* %arrayidx125, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_poly1305_mac(i8* noundef %key, i8* noundef %input, i64 noundef %ilen, i8* noundef %mac) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %mac.addr = alloca i8*, align 8
  %ctx = alloca %struct.mbedtls_poly1305_context, align 8
  %ret = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
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
  call void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* noundef %ctx) #4
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %0) #4
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  br label %cleanup

if.end:                                           ; preds = %do.end4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %ilen.addr, align 8
  %call5 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %2, i64 noundef %3) #4
  store i32 %call5, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %4, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %5 = load i8*, i8** %mac.addr, align 8
  %call9 = call i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* noundef %ctx, i8* noundef %5) #4
  store i32 %call9, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* noundef %ctx) #4
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_poly1305_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %mac = alloca [16 x i8], align 16
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
  %arrayidx3 = getelementptr inbounds [2 x [127 x i8]], [2 x [127 x i8]]* bitcast (<{ <{ [34 x i8], [93 x i8] }>, [127 x i8] }>* @test_data to [2 x [127 x i8]]*), i64 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [127 x i8], [127 x i8]* %arrayidx3, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* @test_data_len, i64 0, i64 %idxprom5
  %6 = load i64, i64* %arrayidx6, align 8
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %mac, i64 0, i64 0
  %call8 = call i32 @mbedtls_poly1305_mac(i8* noundef %arraydecay, i8* noundef %arraydecay4, i64 noundef %6, i8* noundef %arraydecay7) #4
  store i32 %call8, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %cmp9 = icmp eq i32 0, %7
  br i1 %cmp9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %do.body
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp11 = icmp ne i32 %8, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then10
  %9 = load i32, i32* %ret, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end15
  br label %do.body16

do.body16:                                        ; preds = %do.end
  %arraydecay17 = getelementptr inbounds [16 x i8], [16 x i8]* %mac, i64 0, i64 0
  %10 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* @test_mac, i64 0, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx19, i64 0, i64 0
  %call21 = call i32 @memcmp(i8* noundef %arraydecay17, i8* noundef %arraydecay20, i64 noundef 16) #6
  %cmp22 = icmp eq i32 0, %call21
  br i1 %cmp22, label %if.end28, label %if.then23

if.then23:                                        ; preds = %do.body16
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp24 = icmp ne i32 %11, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then23
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23
  store i32 -1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %do.body16
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  %12 = load i32, i32* %verbose.addr, align 4
  %cmp30 = icmp ne i32 %12, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %do.end29
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.end29
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %13 = load i32, i32* %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %verbose.addr, align 4
  %cmp34 = icmp ne i32 %14, 0
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %for.end
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.end27, %if.end14
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mul64(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i32, i32* %b.addr, align 4
  %conv1 = zext i32 %1 to i64
  %mul = mul i64 %conv, %conv1
  ret i64 %mul
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
