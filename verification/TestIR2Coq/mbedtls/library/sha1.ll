; ModuleID = 'sha1.c'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_sha1_context = type { [2 x i32], [5 x i32], [64 x i8] }
%struct.anon = type { i32, [16 x i32], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"  SHA-1 test #%d: \00", align 1
@sha1_test_buf = internal constant [3 x [57 x i8]] [[57 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", [57 x i8] zeroinitializer], align 16
@sha1_test_buflen = internal constant [3 x i64] [i64 3, i64 56, i64 1000], align 16
@sha1_test_sum = internal constant [3 x [20 x i8]] [[20 x i8] c"\A9\99>6G\06\81j\BA>%qxP\C2l\9C\D0\D8\9D", [20 x i8] c"\84\98>D\1C;\D2n\BA\AEJ\A1\F9Q)\E5\E5Fp\F1", [20 x i8] c"4\AA\97<\D4\C4\DA\A4\F6\1E\EB+\DB\AD'1e4\01o"], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha1_context*, align 8
  store %struct.mbedtls_sha1_context* %ctx, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_sha1_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 92) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha1_context*, align 8
  store %struct.mbedtls_sha1_context* %ctx, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_sha1_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_sha1_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 92) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_sha1_clone(%struct.mbedtls_sha1_context* noundef %dst, %struct.mbedtls_sha1_context* noundef %src) #0 {
entry:
  %dst.addr = alloca %struct.mbedtls_sha1_context*, align 8
  %src.addr = alloca %struct.mbedtls_sha1_context*, align 8
  store %struct.mbedtls_sha1_context* %dst, %struct.mbedtls_sha1_context** %dst.addr, align 8
  store %struct.mbedtls_sha1_context* %src, %struct.mbedtls_sha1_context** %src.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %dst.addr, align 8
  %1 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %src.addr, align 8
  %2 = bitcast %struct.mbedtls_sha1_context* %0 to i8*
  %3 = bitcast %struct.mbedtls_sha1_context* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 92, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha1_context*, align 8
  store %struct.mbedtls_sha1_context* %ctx, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i64 0, i64 1
  store i32 0, i32* %arrayidx2, align 4
  %2 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %2, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %state, i64 0, i64 0
  store i32 1732584193, i32* %arrayidx3, align 4
  %3 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state4 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* %state4, i64 0, i64 1
  store i32 -271733879, i32* %arrayidx5, align 4
  %4 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* %state6, i64 0, i64 2
  store i32 -1732584194, i32* %arrayidx7, align 4
  %5 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [5 x i32], [5 x i32]* %state8, i64 0, i64 3
  store i32 271733878, i32* %arrayidx9, align 4
  %6 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state10 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* %state10, i64 0, i64 4
  store i32 -1009589776, i32* %arrayidx11, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %data) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_sha1_context*, align 8
  %data.addr = alloca i8*, align 8
  %local = alloca %struct.anon, align 4
  store %struct.mbedtls_sha1_context* %ctx, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %shl5 = shl i32 %conv4, 16
  %or = or i32 %shl, %shl5
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %shl8 = shl i32 %conv7, 8
  %or9 = or i32 %or, %shl8
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %7 to i32
  %or12 = or i32 %or9, %conv11
  %W = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [16 x i32], [16 x i32]* %W, i64 0, i64 0
  store i32 %or12, i32* %arrayidx13, align 4
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl i32 %conv15, 24
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %shl19 = shl i32 %conv18, 16
  %or20 = or i32 %shl16, %shl19
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %shl23 = shl i32 %conv22, 8
  %or24 = or i32 %or20, %shl23
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %15 to i32
  %or27 = or i32 %or24, %conv26
  %W28 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [16 x i32], [16 x i32]* %W28, i64 0, i64 1
  store i32 %or27, i32* %arrayidx29, align 4
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %17 to i32
  %shl32 = shl i32 %conv31, 24
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 9
  %19 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %19 to i32
  %shl35 = shl i32 %conv34, 16
  %or36 = or i32 %shl32, %shl35
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %20, i64 10
  %21 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %21 to i32
  %shl39 = shl i32 %conv38, 8
  %or40 = or i32 %or36, %shl39
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %22, i64 11
  %23 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %23 to i32
  %or43 = or i32 %or40, %conv42
  %W44 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %W44, i64 0, i64 2
  store i32 %or43, i32* %arrayidx45, align 4
  %24 = load i8*, i8** %data.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %24, i64 12
  %25 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %25 to i32
  %shl48 = shl i32 %conv47, 24
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %26, i64 13
  %27 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %27 to i32
  %shl51 = shl i32 %conv50, 16
  %or52 = or i32 %shl48, %shl51
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %28, i64 14
  %29 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %29 to i32
  %shl55 = shl i32 %conv54, 8
  %or56 = or i32 %or52, %shl55
  %30 = load i8*, i8** %data.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %30, i64 15
  %31 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %31 to i32
  %or59 = or i32 %or56, %conv58
  %W60 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [16 x i32], [16 x i32]* %W60, i64 0, i64 3
  store i32 %or59, i32* %arrayidx61, align 4
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %32, i64 16
  %33 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %33 to i32
  %shl64 = shl i32 %conv63, 24
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %34, i64 17
  %35 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %35 to i32
  %shl67 = shl i32 %conv66, 16
  %or68 = or i32 %shl64, %shl67
  %36 = load i8*, i8** %data.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %36, i64 18
  %37 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %37 to i32
  %shl71 = shl i32 %conv70, 8
  %or72 = or i32 %or68, %shl71
  %38 = load i8*, i8** %data.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %38, i64 19
  %39 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %39 to i32
  %or75 = or i32 %or72, %conv74
  %W76 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* %W76, i64 0, i64 4
  store i32 %or75, i32* %arrayidx77, align 4
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %40, i64 20
  %41 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %41 to i32
  %shl80 = shl i32 %conv79, 24
  %42 = load i8*, i8** %data.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %42, i64 21
  %43 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %43 to i32
  %shl83 = shl i32 %conv82, 16
  %or84 = or i32 %shl80, %shl83
  %44 = load i8*, i8** %data.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %44, i64 22
  %45 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %45 to i32
  %shl87 = shl i32 %conv86, 8
  %or88 = or i32 %or84, %shl87
  %46 = load i8*, i8** %data.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %46, i64 23
  %47 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %47 to i32
  %or91 = or i32 %or88, %conv90
  %W92 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* %W92, i64 0, i64 5
  store i32 %or91, i32* %arrayidx93, align 4
  %48 = load i8*, i8** %data.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %48, i64 24
  %49 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %49 to i32
  %shl96 = shl i32 %conv95, 24
  %50 = load i8*, i8** %data.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %50, i64 25
  %51 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %51 to i32
  %shl99 = shl i32 %conv98, 16
  %or100 = or i32 %shl96, %shl99
  %52 = load i8*, i8** %data.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %52, i64 26
  %53 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %53 to i32
  %shl103 = shl i32 %conv102, 8
  %or104 = or i32 %or100, %shl103
  %54 = load i8*, i8** %data.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %54, i64 27
  %55 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %55 to i32
  %or107 = or i32 %or104, %conv106
  %W108 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [16 x i32], [16 x i32]* %W108, i64 0, i64 6
  store i32 %or107, i32* %arrayidx109, align 4
  %56 = load i8*, i8** %data.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %56, i64 28
  %57 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %57 to i32
  %shl112 = shl i32 %conv111, 24
  %58 = load i8*, i8** %data.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %58, i64 29
  %59 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %59 to i32
  %shl115 = shl i32 %conv114, 16
  %or116 = or i32 %shl112, %shl115
  %60 = load i8*, i8** %data.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %60, i64 30
  %61 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %61 to i32
  %shl119 = shl i32 %conv118, 8
  %or120 = or i32 %or116, %shl119
  %62 = load i8*, i8** %data.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %62, i64 31
  %63 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %63 to i32
  %or123 = or i32 %or120, %conv122
  %W124 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [16 x i32], [16 x i32]* %W124, i64 0, i64 7
  store i32 %or123, i32* %arrayidx125, align 4
  %64 = load i8*, i8** %data.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %64, i64 32
  %65 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %65 to i32
  %shl128 = shl i32 %conv127, 24
  %66 = load i8*, i8** %data.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %66, i64 33
  %67 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %67 to i32
  %shl131 = shl i32 %conv130, 16
  %or132 = or i32 %shl128, %shl131
  %68 = load i8*, i8** %data.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %68, i64 34
  %69 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %69 to i32
  %shl135 = shl i32 %conv134, 8
  %or136 = or i32 %or132, %shl135
  %70 = load i8*, i8** %data.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %70, i64 35
  %71 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %71 to i32
  %or139 = or i32 %or136, %conv138
  %W140 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [16 x i32], [16 x i32]* %W140, i64 0, i64 8
  store i32 %or139, i32* %arrayidx141, align 4
  %72 = load i8*, i8** %data.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %72, i64 36
  %73 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %73 to i32
  %shl144 = shl i32 %conv143, 24
  %74 = load i8*, i8** %data.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %74, i64 37
  %75 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %75 to i32
  %shl147 = shl i32 %conv146, 16
  %or148 = or i32 %shl144, %shl147
  %76 = load i8*, i8** %data.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %76, i64 38
  %77 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %77 to i32
  %shl151 = shl i32 %conv150, 8
  %or152 = or i32 %or148, %shl151
  %78 = load i8*, i8** %data.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %78, i64 39
  %79 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %79 to i32
  %or155 = or i32 %or152, %conv154
  %W156 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %W156, i64 0, i64 9
  store i32 %or155, i32* %arrayidx157, align 4
  %80 = load i8*, i8** %data.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %80, i64 40
  %81 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %81 to i32
  %shl160 = shl i32 %conv159, 24
  %82 = load i8*, i8** %data.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %82, i64 41
  %83 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %83 to i32
  %shl163 = shl i32 %conv162, 16
  %or164 = or i32 %shl160, %shl163
  %84 = load i8*, i8** %data.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %84, i64 42
  %85 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %85 to i32
  %shl167 = shl i32 %conv166, 8
  %or168 = or i32 %or164, %shl167
  %86 = load i8*, i8** %data.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %86, i64 43
  %87 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %87 to i32
  %or171 = or i32 %or168, %conv170
  %W172 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [16 x i32], [16 x i32]* %W172, i64 0, i64 10
  store i32 %or171, i32* %arrayidx173, align 4
  %88 = load i8*, i8** %data.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %88, i64 44
  %89 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %89 to i32
  %shl176 = shl i32 %conv175, 24
  %90 = load i8*, i8** %data.addr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %90, i64 45
  %91 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %91 to i32
  %shl179 = shl i32 %conv178, 16
  %or180 = or i32 %shl176, %shl179
  %92 = load i8*, i8** %data.addr, align 8
  %arrayidx181 = getelementptr inbounds i8, i8* %92, i64 46
  %93 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %93 to i32
  %shl183 = shl i32 %conv182, 8
  %or184 = or i32 %or180, %shl183
  %94 = load i8*, i8** %data.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %94, i64 47
  %95 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %95 to i32
  %or187 = or i32 %or184, %conv186
  %W188 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [16 x i32], [16 x i32]* %W188, i64 0, i64 11
  store i32 %or187, i32* %arrayidx189, align 4
  %96 = load i8*, i8** %data.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %96, i64 48
  %97 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %97 to i32
  %shl192 = shl i32 %conv191, 24
  %98 = load i8*, i8** %data.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %98, i64 49
  %99 = load i8, i8* %arrayidx193, align 1
  %conv194 = zext i8 %99 to i32
  %shl195 = shl i32 %conv194, 16
  %or196 = or i32 %shl192, %shl195
  %100 = load i8*, i8** %data.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %100, i64 50
  %101 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %101 to i32
  %shl199 = shl i32 %conv198, 8
  %or200 = or i32 %or196, %shl199
  %102 = load i8*, i8** %data.addr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %102, i64 51
  %103 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %103 to i32
  %or203 = or i32 %or200, %conv202
  %W204 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [16 x i32], [16 x i32]* %W204, i64 0, i64 12
  store i32 %or203, i32* %arrayidx205, align 4
  %104 = load i8*, i8** %data.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %104, i64 52
  %105 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %105 to i32
  %shl208 = shl i32 %conv207, 24
  %106 = load i8*, i8** %data.addr, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %106, i64 53
  %107 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %107 to i32
  %shl211 = shl i32 %conv210, 16
  %or212 = or i32 %shl208, %shl211
  %108 = load i8*, i8** %data.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %108, i64 54
  %109 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %109 to i32
  %shl215 = shl i32 %conv214, 8
  %or216 = or i32 %or212, %shl215
  %110 = load i8*, i8** %data.addr, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %110, i64 55
  %111 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %111 to i32
  %or219 = or i32 %or216, %conv218
  %W220 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [16 x i32], [16 x i32]* %W220, i64 0, i64 13
  store i32 %or219, i32* %arrayidx221, align 4
  %112 = load i8*, i8** %data.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %112, i64 56
  %113 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %113 to i32
  %shl224 = shl i32 %conv223, 24
  %114 = load i8*, i8** %data.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %114, i64 57
  %115 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %115 to i32
  %shl227 = shl i32 %conv226, 16
  %or228 = or i32 %shl224, %shl227
  %116 = load i8*, i8** %data.addr, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %116, i64 58
  %117 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %117 to i32
  %shl231 = shl i32 %conv230, 8
  %or232 = or i32 %or228, %shl231
  %118 = load i8*, i8** %data.addr, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %118, i64 59
  %119 = load i8, i8* %arrayidx233, align 1
  %conv234 = zext i8 %119 to i32
  %or235 = or i32 %or232, %conv234
  %W236 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [16 x i32], [16 x i32]* %W236, i64 0, i64 14
  store i32 %or235, i32* %arrayidx237, align 4
  %120 = load i8*, i8** %data.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %120, i64 60
  %121 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %121 to i32
  %shl240 = shl i32 %conv239, 24
  %122 = load i8*, i8** %data.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %122, i64 61
  %123 = load i8, i8* %arrayidx241, align 1
  %conv242 = zext i8 %123 to i32
  %shl243 = shl i32 %conv242, 16
  %or244 = or i32 %shl240, %shl243
  %124 = load i8*, i8** %data.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %124, i64 62
  %125 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %125 to i32
  %shl247 = shl i32 %conv246, 8
  %or248 = or i32 %or244, %shl247
  %126 = load i8*, i8** %data.addr, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %126, i64 63
  %127 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %127 to i32
  %or251 = or i32 %or248, %conv250
  %W252 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [16 x i32], [16 x i32]* %W252, i64 0, i64 15
  store i32 %or251, i32* %arrayidx253, align 4
  %128 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %128, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [5 x i32], [5 x i32]* %state, i64 0, i64 0
  %129 = load i32, i32* %arrayidx254, align 4
  %A = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %129, i32* %A, align 4
  %130 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state255 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %130, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [5 x i32], [5 x i32]* %state255, i64 0, i64 1
  %131 = load i32, i32* %arrayidx256, align 4
  %B = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %131, i32* %B, align 4
  %132 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state257 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %132, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [5 x i32], [5 x i32]* %state257, i64 0, i64 2
  %133 = load i32, i32* %arrayidx258, align 4
  %C = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %133, i32* %C, align 4
  %134 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state259 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %134, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [5 x i32], [5 x i32]* %state259, i64 0, i64 3
  %135 = load i32, i32* %arrayidx260, align 4
  %D = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %135, i32* %D, align 4
  %136 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state261 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %136, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [5 x i32], [5 x i32]* %state261, i64 0, i64 4
  %137 = load i32, i32* %arrayidx262, align 4
  %E = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %137, i32* %E, align 4
  br label %do.body263

do.body263:                                       ; preds = %do.end2
  %A264 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %138 = load i32, i32* %A264, align 4
  %shl265 = shl i32 %138, 5
  %A266 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %139 = load i32, i32* %A266, align 4
  %and = and i32 %139, -1
  %shr = lshr i32 %and, 27
  %or267 = or i32 %shl265, %shr
  %D268 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %140 = load i32, i32* %D268, align 4
  %B269 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %141 = load i32, i32* %B269, align 4
  %C270 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %142 = load i32, i32* %C270, align 4
  %D271 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %143 = load i32, i32* %D271, align 4
  %xor = xor i32 %142, %143
  %and272 = and i32 %141, %xor
  %xor273 = xor i32 %140, %and272
  %add = add i32 %or267, %xor273
  %add274 = add i32 %add, 1518500249
  %W275 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [16 x i32], [16 x i32]* %W275, i64 0, i64 0
  %144 = load i32, i32* %arrayidx276, align 4
  %add277 = add i32 %add274, %144
  %E278 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %145 = load i32, i32* %E278, align 4
  %add279 = add i32 %145, %add277
  store i32 %add279, i32* %E278, align 4
  %B280 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %146 = load i32, i32* %B280, align 4
  %shl281 = shl i32 %146, 30
  %B282 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %147 = load i32, i32* %B282, align 4
  %and283 = and i32 %147, -1
  %shr284 = lshr i32 %and283, 2
  %or285 = or i32 %shl281, %shr284
  %B286 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or285, i32* %B286, align 4
  br label %do.end287

do.end287:                                        ; preds = %do.body263
  br label %do.body288

do.body288:                                       ; preds = %do.end287
  %E289 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %148 = load i32, i32* %E289, align 4
  %shl290 = shl i32 %148, 5
  %E291 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %149 = load i32, i32* %E291, align 4
  %and292 = and i32 %149, -1
  %shr293 = lshr i32 %and292, 27
  %or294 = or i32 %shl290, %shr293
  %C295 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %150 = load i32, i32* %C295, align 4
  %A296 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %151 = load i32, i32* %A296, align 4
  %B297 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %152 = load i32, i32* %B297, align 4
  %C298 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %153 = load i32, i32* %C298, align 4
  %xor299 = xor i32 %152, %153
  %and300 = and i32 %151, %xor299
  %xor301 = xor i32 %150, %and300
  %add302 = add i32 %or294, %xor301
  %add303 = add i32 %add302, 1518500249
  %W304 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx305 = getelementptr inbounds [16 x i32], [16 x i32]* %W304, i64 0, i64 1
  %154 = load i32, i32* %arrayidx305, align 4
  %add306 = add i32 %add303, %154
  %D307 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %155 = load i32, i32* %D307, align 4
  %add308 = add i32 %155, %add306
  store i32 %add308, i32* %D307, align 4
  %A309 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %156 = load i32, i32* %A309, align 4
  %shl310 = shl i32 %156, 30
  %A311 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %157 = load i32, i32* %A311, align 4
  %and312 = and i32 %157, -1
  %shr313 = lshr i32 %and312, 2
  %or314 = or i32 %shl310, %shr313
  %A315 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or314, i32* %A315, align 4
  br label %do.end316

do.end316:                                        ; preds = %do.body288
  br label %do.body317

do.body317:                                       ; preds = %do.end316
  %D318 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %158 = load i32, i32* %D318, align 4
  %shl319 = shl i32 %158, 5
  %D320 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %159 = load i32, i32* %D320, align 4
  %and321 = and i32 %159, -1
  %shr322 = lshr i32 %and321, 27
  %or323 = or i32 %shl319, %shr322
  %B324 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %160 = load i32, i32* %B324, align 4
  %E325 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %161 = load i32, i32* %E325, align 4
  %A326 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %162 = load i32, i32* %A326, align 4
  %B327 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %163 = load i32, i32* %B327, align 4
  %xor328 = xor i32 %162, %163
  %and329 = and i32 %161, %xor328
  %xor330 = xor i32 %160, %and329
  %add331 = add i32 %or323, %xor330
  %add332 = add i32 %add331, 1518500249
  %W333 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [16 x i32], [16 x i32]* %W333, i64 0, i64 2
  %164 = load i32, i32* %arrayidx334, align 4
  %add335 = add i32 %add332, %164
  %C336 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %165 = load i32, i32* %C336, align 4
  %add337 = add i32 %165, %add335
  store i32 %add337, i32* %C336, align 4
  %E338 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %166 = load i32, i32* %E338, align 4
  %shl339 = shl i32 %166, 30
  %E340 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %167 = load i32, i32* %E340, align 4
  %and341 = and i32 %167, -1
  %shr342 = lshr i32 %and341, 2
  %or343 = or i32 %shl339, %shr342
  %E344 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or343, i32* %E344, align 4
  br label %do.end345

do.end345:                                        ; preds = %do.body317
  br label %do.body346

do.body346:                                       ; preds = %do.end345
  %C347 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %168 = load i32, i32* %C347, align 4
  %shl348 = shl i32 %168, 5
  %C349 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %169 = load i32, i32* %C349, align 4
  %and350 = and i32 %169, -1
  %shr351 = lshr i32 %and350, 27
  %or352 = or i32 %shl348, %shr351
  %A353 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %170 = load i32, i32* %A353, align 4
  %D354 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %171 = load i32, i32* %D354, align 4
  %E355 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %172 = load i32, i32* %E355, align 4
  %A356 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %173 = load i32, i32* %A356, align 4
  %xor357 = xor i32 %172, %173
  %and358 = and i32 %171, %xor357
  %xor359 = xor i32 %170, %and358
  %add360 = add i32 %or352, %xor359
  %add361 = add i32 %add360, 1518500249
  %W362 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [16 x i32], [16 x i32]* %W362, i64 0, i64 3
  %174 = load i32, i32* %arrayidx363, align 4
  %add364 = add i32 %add361, %174
  %B365 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %175 = load i32, i32* %B365, align 4
  %add366 = add i32 %175, %add364
  store i32 %add366, i32* %B365, align 4
  %D367 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %176 = load i32, i32* %D367, align 4
  %shl368 = shl i32 %176, 30
  %D369 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %177 = load i32, i32* %D369, align 4
  %and370 = and i32 %177, -1
  %shr371 = lshr i32 %and370, 2
  %or372 = or i32 %shl368, %shr371
  %D373 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or372, i32* %D373, align 4
  br label %do.end374

do.end374:                                        ; preds = %do.body346
  br label %do.body375

do.body375:                                       ; preds = %do.end374
  %B376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %178 = load i32, i32* %B376, align 4
  %shl377 = shl i32 %178, 5
  %B378 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %179 = load i32, i32* %B378, align 4
  %and379 = and i32 %179, -1
  %shr380 = lshr i32 %and379, 27
  %or381 = or i32 %shl377, %shr380
  %E382 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %180 = load i32, i32* %E382, align 4
  %C383 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %181 = load i32, i32* %C383, align 4
  %D384 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %182 = load i32, i32* %D384, align 4
  %E385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %183 = load i32, i32* %E385, align 4
  %xor386 = xor i32 %182, %183
  %and387 = and i32 %181, %xor386
  %xor388 = xor i32 %180, %and387
  %add389 = add i32 %or381, %xor388
  %add390 = add i32 %add389, 1518500249
  %W391 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx392 = getelementptr inbounds [16 x i32], [16 x i32]* %W391, i64 0, i64 4
  %184 = load i32, i32* %arrayidx392, align 4
  %add393 = add i32 %add390, %184
  %A394 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %185 = load i32, i32* %A394, align 4
  %add395 = add i32 %185, %add393
  store i32 %add395, i32* %A394, align 4
  %C396 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %186 = load i32, i32* %C396, align 4
  %shl397 = shl i32 %186, 30
  %C398 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %187 = load i32, i32* %C398, align 4
  %and399 = and i32 %187, -1
  %shr400 = lshr i32 %and399, 2
  %or401 = or i32 %shl397, %shr400
  %C402 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or401, i32* %C402, align 4
  br label %do.end403

do.end403:                                        ; preds = %do.body375
  br label %do.body404

do.body404:                                       ; preds = %do.end403
  %A405 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %188 = load i32, i32* %A405, align 4
  %shl406 = shl i32 %188, 5
  %A407 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %189 = load i32, i32* %A407, align 4
  %and408 = and i32 %189, -1
  %shr409 = lshr i32 %and408, 27
  %or410 = or i32 %shl406, %shr409
  %D411 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %190 = load i32, i32* %D411, align 4
  %B412 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %191 = load i32, i32* %B412, align 4
  %C413 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %192 = load i32, i32* %C413, align 4
  %D414 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %193 = load i32, i32* %D414, align 4
  %xor415 = xor i32 %192, %193
  %and416 = and i32 %191, %xor415
  %xor417 = xor i32 %190, %and416
  %add418 = add i32 %or410, %xor417
  %add419 = add i32 %add418, 1518500249
  %W420 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [16 x i32], [16 x i32]* %W420, i64 0, i64 5
  %194 = load i32, i32* %arrayidx421, align 4
  %add422 = add i32 %add419, %194
  %E423 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %195 = load i32, i32* %E423, align 4
  %add424 = add i32 %195, %add422
  store i32 %add424, i32* %E423, align 4
  %B425 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %196 = load i32, i32* %B425, align 4
  %shl426 = shl i32 %196, 30
  %B427 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %197 = load i32, i32* %B427, align 4
  %and428 = and i32 %197, -1
  %shr429 = lshr i32 %and428, 2
  %or430 = or i32 %shl426, %shr429
  %B431 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or430, i32* %B431, align 4
  br label %do.end432

do.end432:                                        ; preds = %do.body404
  br label %do.body433

do.body433:                                       ; preds = %do.end432
  %E434 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %198 = load i32, i32* %E434, align 4
  %shl435 = shl i32 %198, 5
  %E436 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %199 = load i32, i32* %E436, align 4
  %and437 = and i32 %199, -1
  %shr438 = lshr i32 %and437, 27
  %or439 = or i32 %shl435, %shr438
  %C440 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %200 = load i32, i32* %C440, align 4
  %A441 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %201 = load i32, i32* %A441, align 4
  %B442 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %202 = load i32, i32* %B442, align 4
  %C443 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %203 = load i32, i32* %C443, align 4
  %xor444 = xor i32 %202, %203
  %and445 = and i32 %201, %xor444
  %xor446 = xor i32 %200, %and445
  %add447 = add i32 %or439, %xor446
  %add448 = add i32 %add447, 1518500249
  %W449 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [16 x i32], [16 x i32]* %W449, i64 0, i64 6
  %204 = load i32, i32* %arrayidx450, align 4
  %add451 = add i32 %add448, %204
  %D452 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %205 = load i32, i32* %D452, align 4
  %add453 = add i32 %205, %add451
  store i32 %add453, i32* %D452, align 4
  %A454 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %206 = load i32, i32* %A454, align 4
  %shl455 = shl i32 %206, 30
  %A456 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %207 = load i32, i32* %A456, align 4
  %and457 = and i32 %207, -1
  %shr458 = lshr i32 %and457, 2
  %or459 = or i32 %shl455, %shr458
  %A460 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or459, i32* %A460, align 4
  br label %do.end461

do.end461:                                        ; preds = %do.body433
  br label %do.body462

do.body462:                                       ; preds = %do.end461
  %D463 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %208 = load i32, i32* %D463, align 4
  %shl464 = shl i32 %208, 5
  %D465 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %209 = load i32, i32* %D465, align 4
  %and466 = and i32 %209, -1
  %shr467 = lshr i32 %and466, 27
  %or468 = or i32 %shl464, %shr467
  %B469 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %210 = load i32, i32* %B469, align 4
  %E470 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %211 = load i32, i32* %E470, align 4
  %A471 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %212 = load i32, i32* %A471, align 4
  %B472 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %213 = load i32, i32* %B472, align 4
  %xor473 = xor i32 %212, %213
  %and474 = and i32 %211, %xor473
  %xor475 = xor i32 %210, %and474
  %add476 = add i32 %or468, %xor475
  %add477 = add i32 %add476, 1518500249
  %W478 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx479 = getelementptr inbounds [16 x i32], [16 x i32]* %W478, i64 0, i64 7
  %214 = load i32, i32* %arrayidx479, align 4
  %add480 = add i32 %add477, %214
  %C481 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %215 = load i32, i32* %C481, align 4
  %add482 = add i32 %215, %add480
  store i32 %add482, i32* %C481, align 4
  %E483 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %216 = load i32, i32* %E483, align 4
  %shl484 = shl i32 %216, 30
  %E485 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %217 = load i32, i32* %E485, align 4
  %and486 = and i32 %217, -1
  %shr487 = lshr i32 %and486, 2
  %or488 = or i32 %shl484, %shr487
  %E489 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or488, i32* %E489, align 4
  br label %do.end490

do.end490:                                        ; preds = %do.body462
  br label %do.body491

do.body491:                                       ; preds = %do.end490
  %C492 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %218 = load i32, i32* %C492, align 4
  %shl493 = shl i32 %218, 5
  %C494 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %219 = load i32, i32* %C494, align 4
  %and495 = and i32 %219, -1
  %shr496 = lshr i32 %and495, 27
  %or497 = or i32 %shl493, %shr496
  %A498 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %220 = load i32, i32* %A498, align 4
  %D499 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %221 = load i32, i32* %D499, align 4
  %E500 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %222 = load i32, i32* %E500, align 4
  %A501 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %223 = load i32, i32* %A501, align 4
  %xor502 = xor i32 %222, %223
  %and503 = and i32 %221, %xor502
  %xor504 = xor i32 %220, %and503
  %add505 = add i32 %or497, %xor504
  %add506 = add i32 %add505, 1518500249
  %W507 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [16 x i32], [16 x i32]* %W507, i64 0, i64 8
  %224 = load i32, i32* %arrayidx508, align 4
  %add509 = add i32 %add506, %224
  %B510 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %225 = load i32, i32* %B510, align 4
  %add511 = add i32 %225, %add509
  store i32 %add511, i32* %B510, align 4
  %D512 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %226 = load i32, i32* %D512, align 4
  %shl513 = shl i32 %226, 30
  %D514 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %227 = load i32, i32* %D514, align 4
  %and515 = and i32 %227, -1
  %shr516 = lshr i32 %and515, 2
  %or517 = or i32 %shl513, %shr516
  %D518 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or517, i32* %D518, align 4
  br label %do.end519

do.end519:                                        ; preds = %do.body491
  br label %do.body520

do.body520:                                       ; preds = %do.end519
  %B521 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %228 = load i32, i32* %B521, align 4
  %shl522 = shl i32 %228, 5
  %B523 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %229 = load i32, i32* %B523, align 4
  %and524 = and i32 %229, -1
  %shr525 = lshr i32 %and524, 27
  %or526 = or i32 %shl522, %shr525
  %E527 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %230 = load i32, i32* %E527, align 4
  %C528 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %231 = load i32, i32* %C528, align 4
  %D529 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %232 = load i32, i32* %D529, align 4
  %E530 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %233 = load i32, i32* %E530, align 4
  %xor531 = xor i32 %232, %233
  %and532 = and i32 %231, %xor531
  %xor533 = xor i32 %230, %and532
  %add534 = add i32 %or526, %xor533
  %add535 = add i32 %add534, 1518500249
  %W536 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx537 = getelementptr inbounds [16 x i32], [16 x i32]* %W536, i64 0, i64 9
  %234 = load i32, i32* %arrayidx537, align 4
  %add538 = add i32 %add535, %234
  %A539 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %235 = load i32, i32* %A539, align 4
  %add540 = add i32 %235, %add538
  store i32 %add540, i32* %A539, align 4
  %C541 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %236 = load i32, i32* %C541, align 4
  %shl542 = shl i32 %236, 30
  %C543 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %237 = load i32, i32* %C543, align 4
  %and544 = and i32 %237, -1
  %shr545 = lshr i32 %and544, 2
  %or546 = or i32 %shl542, %shr545
  %C547 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or546, i32* %C547, align 4
  br label %do.end548

do.end548:                                        ; preds = %do.body520
  br label %do.body549

do.body549:                                       ; preds = %do.end548
  %A550 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %238 = load i32, i32* %A550, align 4
  %shl551 = shl i32 %238, 5
  %A552 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %239 = load i32, i32* %A552, align 4
  %and553 = and i32 %239, -1
  %shr554 = lshr i32 %and553, 27
  %or555 = or i32 %shl551, %shr554
  %D556 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %240 = load i32, i32* %D556, align 4
  %B557 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %241 = load i32, i32* %B557, align 4
  %C558 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %242 = load i32, i32* %C558, align 4
  %D559 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %243 = load i32, i32* %D559, align 4
  %xor560 = xor i32 %242, %243
  %and561 = and i32 %241, %xor560
  %xor562 = xor i32 %240, %and561
  %add563 = add i32 %or555, %xor562
  %add564 = add i32 %add563, 1518500249
  %W565 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx566 = getelementptr inbounds [16 x i32], [16 x i32]* %W565, i64 0, i64 10
  %244 = load i32, i32* %arrayidx566, align 4
  %add567 = add i32 %add564, %244
  %E568 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %245 = load i32, i32* %E568, align 4
  %add569 = add i32 %245, %add567
  store i32 %add569, i32* %E568, align 4
  %B570 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %246 = load i32, i32* %B570, align 4
  %shl571 = shl i32 %246, 30
  %B572 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %247 = load i32, i32* %B572, align 4
  %and573 = and i32 %247, -1
  %shr574 = lshr i32 %and573, 2
  %or575 = or i32 %shl571, %shr574
  %B576 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or575, i32* %B576, align 4
  br label %do.end577

do.end577:                                        ; preds = %do.body549
  br label %do.body578

do.body578:                                       ; preds = %do.end577
  %E579 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %248 = load i32, i32* %E579, align 4
  %shl580 = shl i32 %248, 5
  %E581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %249 = load i32, i32* %E581, align 4
  %and582 = and i32 %249, -1
  %shr583 = lshr i32 %and582, 27
  %or584 = or i32 %shl580, %shr583
  %C585 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %250 = load i32, i32* %C585, align 4
  %A586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %251 = load i32, i32* %A586, align 4
  %B587 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %252 = load i32, i32* %B587, align 4
  %C588 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %253 = load i32, i32* %C588, align 4
  %xor589 = xor i32 %252, %253
  %and590 = and i32 %251, %xor589
  %xor591 = xor i32 %250, %and590
  %add592 = add i32 %or584, %xor591
  %add593 = add i32 %add592, 1518500249
  %W594 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx595 = getelementptr inbounds [16 x i32], [16 x i32]* %W594, i64 0, i64 11
  %254 = load i32, i32* %arrayidx595, align 4
  %add596 = add i32 %add593, %254
  %D597 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %255 = load i32, i32* %D597, align 4
  %add598 = add i32 %255, %add596
  store i32 %add598, i32* %D597, align 4
  %A599 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %256 = load i32, i32* %A599, align 4
  %shl600 = shl i32 %256, 30
  %A601 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %257 = load i32, i32* %A601, align 4
  %and602 = and i32 %257, -1
  %shr603 = lshr i32 %and602, 2
  %or604 = or i32 %shl600, %shr603
  %A605 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or604, i32* %A605, align 4
  br label %do.end606

do.end606:                                        ; preds = %do.body578
  br label %do.body607

do.body607:                                       ; preds = %do.end606
  %D608 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %258 = load i32, i32* %D608, align 4
  %shl609 = shl i32 %258, 5
  %D610 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %259 = load i32, i32* %D610, align 4
  %and611 = and i32 %259, -1
  %shr612 = lshr i32 %and611, 27
  %or613 = or i32 %shl609, %shr612
  %B614 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %260 = load i32, i32* %B614, align 4
  %E615 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %261 = load i32, i32* %E615, align 4
  %A616 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %262 = load i32, i32* %A616, align 4
  %B617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %263 = load i32, i32* %B617, align 4
  %xor618 = xor i32 %262, %263
  %and619 = and i32 %261, %xor618
  %xor620 = xor i32 %260, %and619
  %add621 = add i32 %or613, %xor620
  %add622 = add i32 %add621, 1518500249
  %W623 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx624 = getelementptr inbounds [16 x i32], [16 x i32]* %W623, i64 0, i64 12
  %264 = load i32, i32* %arrayidx624, align 4
  %add625 = add i32 %add622, %264
  %C626 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %265 = load i32, i32* %C626, align 4
  %add627 = add i32 %265, %add625
  store i32 %add627, i32* %C626, align 4
  %E628 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %266 = load i32, i32* %E628, align 4
  %shl629 = shl i32 %266, 30
  %E630 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %267 = load i32, i32* %E630, align 4
  %and631 = and i32 %267, -1
  %shr632 = lshr i32 %and631, 2
  %or633 = or i32 %shl629, %shr632
  %E634 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or633, i32* %E634, align 4
  br label %do.end635

do.end635:                                        ; preds = %do.body607
  br label %do.body636

do.body636:                                       ; preds = %do.end635
  %C637 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %268 = load i32, i32* %C637, align 4
  %shl638 = shl i32 %268, 5
  %C639 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %269 = load i32, i32* %C639, align 4
  %and640 = and i32 %269, -1
  %shr641 = lshr i32 %and640, 27
  %or642 = or i32 %shl638, %shr641
  %A643 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %270 = load i32, i32* %A643, align 4
  %D644 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %271 = load i32, i32* %D644, align 4
  %E645 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %272 = load i32, i32* %E645, align 4
  %A646 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %273 = load i32, i32* %A646, align 4
  %xor647 = xor i32 %272, %273
  %and648 = and i32 %271, %xor647
  %xor649 = xor i32 %270, %and648
  %add650 = add i32 %or642, %xor649
  %add651 = add i32 %add650, 1518500249
  %W652 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx653 = getelementptr inbounds [16 x i32], [16 x i32]* %W652, i64 0, i64 13
  %274 = load i32, i32* %arrayidx653, align 4
  %add654 = add i32 %add651, %274
  %B655 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %275 = load i32, i32* %B655, align 4
  %add656 = add i32 %275, %add654
  store i32 %add656, i32* %B655, align 4
  %D657 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %276 = load i32, i32* %D657, align 4
  %shl658 = shl i32 %276, 30
  %D659 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %277 = load i32, i32* %D659, align 4
  %and660 = and i32 %277, -1
  %shr661 = lshr i32 %and660, 2
  %or662 = or i32 %shl658, %shr661
  %D663 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or662, i32* %D663, align 4
  br label %do.end664

do.end664:                                        ; preds = %do.body636
  br label %do.body665

do.body665:                                       ; preds = %do.end664
  %B666 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %278 = load i32, i32* %B666, align 4
  %shl667 = shl i32 %278, 5
  %B668 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %279 = load i32, i32* %B668, align 4
  %and669 = and i32 %279, -1
  %shr670 = lshr i32 %and669, 27
  %or671 = or i32 %shl667, %shr670
  %E672 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %280 = load i32, i32* %E672, align 4
  %C673 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %281 = load i32, i32* %C673, align 4
  %D674 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %282 = load i32, i32* %D674, align 4
  %E675 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %283 = load i32, i32* %E675, align 4
  %xor676 = xor i32 %282, %283
  %and677 = and i32 %281, %xor676
  %xor678 = xor i32 %280, %and677
  %add679 = add i32 %or671, %xor678
  %add680 = add i32 %add679, 1518500249
  %W681 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx682 = getelementptr inbounds [16 x i32], [16 x i32]* %W681, i64 0, i64 14
  %284 = load i32, i32* %arrayidx682, align 4
  %add683 = add i32 %add680, %284
  %A684 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %285 = load i32, i32* %A684, align 4
  %add685 = add i32 %285, %add683
  store i32 %add685, i32* %A684, align 4
  %C686 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %286 = load i32, i32* %C686, align 4
  %shl687 = shl i32 %286, 30
  %C688 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %287 = load i32, i32* %C688, align 4
  %and689 = and i32 %287, -1
  %shr690 = lshr i32 %and689, 2
  %or691 = or i32 %shl687, %shr690
  %C692 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or691, i32* %C692, align 4
  br label %do.end693

do.end693:                                        ; preds = %do.body665
  br label %do.body694

do.body694:                                       ; preds = %do.end693
  %A695 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %288 = load i32, i32* %A695, align 4
  %shl696 = shl i32 %288, 5
  %A697 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %289 = load i32, i32* %A697, align 4
  %and698 = and i32 %289, -1
  %shr699 = lshr i32 %and698, 27
  %or700 = or i32 %shl696, %shr699
  %D701 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %290 = load i32, i32* %D701, align 4
  %B702 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %291 = load i32, i32* %B702, align 4
  %C703 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %292 = load i32, i32* %C703, align 4
  %D704 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %293 = load i32, i32* %D704, align 4
  %xor705 = xor i32 %292, %293
  %and706 = and i32 %291, %xor705
  %xor707 = xor i32 %290, %and706
  %add708 = add i32 %or700, %xor707
  %add709 = add i32 %add708, 1518500249
  %W710 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx711 = getelementptr inbounds [16 x i32], [16 x i32]* %W710, i64 0, i64 15
  %294 = load i32, i32* %arrayidx711, align 4
  %add712 = add i32 %add709, %294
  %E713 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %295 = load i32, i32* %E713, align 4
  %add714 = add i32 %295, %add712
  store i32 %add714, i32* %E713, align 4
  %B715 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %296 = load i32, i32* %B715, align 4
  %shl716 = shl i32 %296, 30
  %B717 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %297 = load i32, i32* %B717, align 4
  %and718 = and i32 %297, -1
  %shr719 = lshr i32 %and718, 2
  %or720 = or i32 %shl716, %shr719
  %B721 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or720, i32* %B721, align 4
  br label %do.end722

do.end722:                                        ; preds = %do.body694
  br label %do.body723

do.body723:                                       ; preds = %do.end722
  %E724 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %298 = load i32, i32* %E724, align 4
  %shl725 = shl i32 %298, 5
  %E726 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %299 = load i32, i32* %E726, align 4
  %and727 = and i32 %299, -1
  %shr728 = lshr i32 %and727, 27
  %or729 = or i32 %shl725, %shr728
  %C730 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %300 = load i32, i32* %C730, align 4
  %A731 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %301 = load i32, i32* %A731, align 4
  %B732 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %302 = load i32, i32* %B732, align 4
  %C733 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %303 = load i32, i32* %C733, align 4
  %xor734 = xor i32 %302, %303
  %and735 = and i32 %301, %xor734
  %xor736 = xor i32 %300, %and735
  %add737 = add i32 %or729, %xor736
  %add738 = add i32 %add737, 1518500249
  %W739 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx740 = getelementptr inbounds [16 x i32], [16 x i32]* %W739, i64 0, i64 13
  %304 = load i32, i32* %arrayidx740, align 4
  %W741 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx742 = getelementptr inbounds [16 x i32], [16 x i32]* %W741, i64 0, i64 8
  %305 = load i32, i32* %arrayidx742, align 4
  %xor743 = xor i32 %304, %305
  %W744 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx745 = getelementptr inbounds [16 x i32], [16 x i32]* %W744, i64 0, i64 2
  %306 = load i32, i32* %arrayidx745, align 4
  %xor746 = xor i32 %xor743, %306
  %W747 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx748 = getelementptr inbounds [16 x i32], [16 x i32]* %W747, i64 0, i64 0
  %307 = load i32, i32* %arrayidx748, align 4
  %xor749 = xor i32 %xor746, %307
  %temp = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor749, i32* %temp, align 4
  %temp750 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %308 = load i32, i32* %temp750, align 4
  %shl751 = shl i32 %308, 1
  %temp752 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %309 = load i32, i32* %temp752, align 4
  %and753 = and i32 %309, -1
  %shr754 = lshr i32 %and753, 31
  %or755 = or i32 %shl751, %shr754
  %W756 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx757 = getelementptr inbounds [16 x i32], [16 x i32]* %W756, i64 0, i64 0
  store i32 %or755, i32* %arrayidx757, align 4
  %add758 = add i32 %add738, %or755
  %D759 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %310 = load i32, i32* %D759, align 4
  %add760 = add i32 %310, %add758
  store i32 %add760, i32* %D759, align 4
  %A761 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %311 = load i32, i32* %A761, align 4
  %shl762 = shl i32 %311, 30
  %A763 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %312 = load i32, i32* %A763, align 4
  %and764 = and i32 %312, -1
  %shr765 = lshr i32 %and764, 2
  %or766 = or i32 %shl762, %shr765
  %A767 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or766, i32* %A767, align 4
  br label %do.end768

do.end768:                                        ; preds = %do.body723
  br label %do.body769

do.body769:                                       ; preds = %do.end768
  %D770 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %313 = load i32, i32* %D770, align 4
  %shl771 = shl i32 %313, 5
  %D772 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %314 = load i32, i32* %D772, align 4
  %and773 = and i32 %314, -1
  %shr774 = lshr i32 %and773, 27
  %or775 = or i32 %shl771, %shr774
  %B776 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %315 = load i32, i32* %B776, align 4
  %E777 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %316 = load i32, i32* %E777, align 4
  %A778 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %317 = load i32, i32* %A778, align 4
  %B779 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %318 = load i32, i32* %B779, align 4
  %xor780 = xor i32 %317, %318
  %and781 = and i32 %316, %xor780
  %xor782 = xor i32 %315, %and781
  %add783 = add i32 %or775, %xor782
  %add784 = add i32 %add783, 1518500249
  %W785 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx786 = getelementptr inbounds [16 x i32], [16 x i32]* %W785, i64 0, i64 14
  %319 = load i32, i32* %arrayidx786, align 4
  %W787 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx788 = getelementptr inbounds [16 x i32], [16 x i32]* %W787, i64 0, i64 9
  %320 = load i32, i32* %arrayidx788, align 4
  %xor789 = xor i32 %319, %320
  %W790 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx791 = getelementptr inbounds [16 x i32], [16 x i32]* %W790, i64 0, i64 3
  %321 = load i32, i32* %arrayidx791, align 4
  %xor792 = xor i32 %xor789, %321
  %W793 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx794 = getelementptr inbounds [16 x i32], [16 x i32]* %W793, i64 0, i64 1
  %322 = load i32, i32* %arrayidx794, align 4
  %xor795 = xor i32 %xor792, %322
  %temp796 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor795, i32* %temp796, align 4
  %temp797 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %323 = load i32, i32* %temp797, align 4
  %shl798 = shl i32 %323, 1
  %temp799 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %324 = load i32, i32* %temp799, align 4
  %and800 = and i32 %324, -1
  %shr801 = lshr i32 %and800, 31
  %or802 = or i32 %shl798, %shr801
  %W803 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx804 = getelementptr inbounds [16 x i32], [16 x i32]* %W803, i64 0, i64 1
  store i32 %or802, i32* %arrayidx804, align 4
  %add805 = add i32 %add784, %or802
  %C806 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %325 = load i32, i32* %C806, align 4
  %add807 = add i32 %325, %add805
  store i32 %add807, i32* %C806, align 4
  %E808 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %326 = load i32, i32* %E808, align 4
  %shl809 = shl i32 %326, 30
  %E810 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %327 = load i32, i32* %E810, align 4
  %and811 = and i32 %327, -1
  %shr812 = lshr i32 %and811, 2
  %or813 = or i32 %shl809, %shr812
  %E814 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or813, i32* %E814, align 4
  br label %do.end815

do.end815:                                        ; preds = %do.body769
  br label %do.body816

do.body816:                                       ; preds = %do.end815
  %C817 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %328 = load i32, i32* %C817, align 4
  %shl818 = shl i32 %328, 5
  %C819 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %329 = load i32, i32* %C819, align 4
  %and820 = and i32 %329, -1
  %shr821 = lshr i32 %and820, 27
  %or822 = or i32 %shl818, %shr821
  %A823 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %330 = load i32, i32* %A823, align 4
  %D824 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %331 = load i32, i32* %D824, align 4
  %E825 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %332 = load i32, i32* %E825, align 4
  %A826 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %333 = load i32, i32* %A826, align 4
  %xor827 = xor i32 %332, %333
  %and828 = and i32 %331, %xor827
  %xor829 = xor i32 %330, %and828
  %add830 = add i32 %or822, %xor829
  %add831 = add i32 %add830, 1518500249
  %W832 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx833 = getelementptr inbounds [16 x i32], [16 x i32]* %W832, i64 0, i64 15
  %334 = load i32, i32* %arrayidx833, align 4
  %W834 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx835 = getelementptr inbounds [16 x i32], [16 x i32]* %W834, i64 0, i64 10
  %335 = load i32, i32* %arrayidx835, align 4
  %xor836 = xor i32 %334, %335
  %W837 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx838 = getelementptr inbounds [16 x i32], [16 x i32]* %W837, i64 0, i64 4
  %336 = load i32, i32* %arrayidx838, align 4
  %xor839 = xor i32 %xor836, %336
  %W840 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx841 = getelementptr inbounds [16 x i32], [16 x i32]* %W840, i64 0, i64 2
  %337 = load i32, i32* %arrayidx841, align 4
  %xor842 = xor i32 %xor839, %337
  %temp843 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor842, i32* %temp843, align 4
  %temp844 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %338 = load i32, i32* %temp844, align 4
  %shl845 = shl i32 %338, 1
  %temp846 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %339 = load i32, i32* %temp846, align 4
  %and847 = and i32 %339, -1
  %shr848 = lshr i32 %and847, 31
  %or849 = or i32 %shl845, %shr848
  %W850 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx851 = getelementptr inbounds [16 x i32], [16 x i32]* %W850, i64 0, i64 2
  store i32 %or849, i32* %arrayidx851, align 4
  %add852 = add i32 %add831, %or849
  %B853 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %340 = load i32, i32* %B853, align 4
  %add854 = add i32 %340, %add852
  store i32 %add854, i32* %B853, align 4
  %D855 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %341 = load i32, i32* %D855, align 4
  %shl856 = shl i32 %341, 30
  %D857 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %342 = load i32, i32* %D857, align 4
  %and858 = and i32 %342, -1
  %shr859 = lshr i32 %and858, 2
  %or860 = or i32 %shl856, %shr859
  %D861 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or860, i32* %D861, align 4
  br label %do.end862

do.end862:                                        ; preds = %do.body816
  br label %do.body863

do.body863:                                       ; preds = %do.end862
  %B864 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %343 = load i32, i32* %B864, align 4
  %shl865 = shl i32 %343, 5
  %B866 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %344 = load i32, i32* %B866, align 4
  %and867 = and i32 %344, -1
  %shr868 = lshr i32 %and867, 27
  %or869 = or i32 %shl865, %shr868
  %E870 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %345 = load i32, i32* %E870, align 4
  %C871 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %346 = load i32, i32* %C871, align 4
  %D872 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %347 = load i32, i32* %D872, align 4
  %E873 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %348 = load i32, i32* %E873, align 4
  %xor874 = xor i32 %347, %348
  %and875 = and i32 %346, %xor874
  %xor876 = xor i32 %345, %and875
  %add877 = add i32 %or869, %xor876
  %add878 = add i32 %add877, 1518500249
  %W879 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx880 = getelementptr inbounds [16 x i32], [16 x i32]* %W879, i64 0, i64 0
  %349 = load i32, i32* %arrayidx880, align 4
  %W881 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx882 = getelementptr inbounds [16 x i32], [16 x i32]* %W881, i64 0, i64 11
  %350 = load i32, i32* %arrayidx882, align 4
  %xor883 = xor i32 %349, %350
  %W884 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx885 = getelementptr inbounds [16 x i32], [16 x i32]* %W884, i64 0, i64 5
  %351 = load i32, i32* %arrayidx885, align 4
  %xor886 = xor i32 %xor883, %351
  %W887 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx888 = getelementptr inbounds [16 x i32], [16 x i32]* %W887, i64 0, i64 3
  %352 = load i32, i32* %arrayidx888, align 4
  %xor889 = xor i32 %xor886, %352
  %temp890 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor889, i32* %temp890, align 4
  %temp891 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %353 = load i32, i32* %temp891, align 4
  %shl892 = shl i32 %353, 1
  %temp893 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %354 = load i32, i32* %temp893, align 4
  %and894 = and i32 %354, -1
  %shr895 = lshr i32 %and894, 31
  %or896 = or i32 %shl892, %shr895
  %W897 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx898 = getelementptr inbounds [16 x i32], [16 x i32]* %W897, i64 0, i64 3
  store i32 %or896, i32* %arrayidx898, align 4
  %add899 = add i32 %add878, %or896
  %A900 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %355 = load i32, i32* %A900, align 4
  %add901 = add i32 %355, %add899
  store i32 %add901, i32* %A900, align 4
  %C902 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %356 = load i32, i32* %C902, align 4
  %shl903 = shl i32 %356, 30
  %C904 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %357 = load i32, i32* %C904, align 4
  %and905 = and i32 %357, -1
  %shr906 = lshr i32 %and905, 2
  %or907 = or i32 %shl903, %shr906
  %C908 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or907, i32* %C908, align 4
  br label %do.end909

do.end909:                                        ; preds = %do.body863
  br label %do.body910

do.body910:                                       ; preds = %do.end909
  %A911 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %358 = load i32, i32* %A911, align 4
  %shl912 = shl i32 %358, 5
  %A913 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %359 = load i32, i32* %A913, align 4
  %and914 = and i32 %359, -1
  %shr915 = lshr i32 %and914, 27
  %or916 = or i32 %shl912, %shr915
  %B917 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %360 = load i32, i32* %B917, align 4
  %C918 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %361 = load i32, i32* %C918, align 4
  %xor919 = xor i32 %360, %361
  %D920 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %362 = load i32, i32* %D920, align 4
  %xor921 = xor i32 %xor919, %362
  %add922 = add i32 %or916, %xor921
  %add923 = add i32 %add922, 1859775393
  %W924 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx925 = getelementptr inbounds [16 x i32], [16 x i32]* %W924, i64 0, i64 1
  %363 = load i32, i32* %arrayidx925, align 4
  %W926 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx927 = getelementptr inbounds [16 x i32], [16 x i32]* %W926, i64 0, i64 12
  %364 = load i32, i32* %arrayidx927, align 4
  %xor928 = xor i32 %363, %364
  %W929 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx930 = getelementptr inbounds [16 x i32], [16 x i32]* %W929, i64 0, i64 6
  %365 = load i32, i32* %arrayidx930, align 4
  %xor931 = xor i32 %xor928, %365
  %W932 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx933 = getelementptr inbounds [16 x i32], [16 x i32]* %W932, i64 0, i64 4
  %366 = load i32, i32* %arrayidx933, align 4
  %xor934 = xor i32 %xor931, %366
  %temp935 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor934, i32* %temp935, align 4
  %temp936 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %367 = load i32, i32* %temp936, align 4
  %shl937 = shl i32 %367, 1
  %temp938 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %368 = load i32, i32* %temp938, align 4
  %and939 = and i32 %368, -1
  %shr940 = lshr i32 %and939, 31
  %or941 = or i32 %shl937, %shr940
  %W942 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx943 = getelementptr inbounds [16 x i32], [16 x i32]* %W942, i64 0, i64 4
  store i32 %or941, i32* %arrayidx943, align 4
  %add944 = add i32 %add923, %or941
  %E945 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %369 = load i32, i32* %E945, align 4
  %add946 = add i32 %369, %add944
  store i32 %add946, i32* %E945, align 4
  %B947 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %370 = load i32, i32* %B947, align 4
  %shl948 = shl i32 %370, 30
  %B949 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %371 = load i32, i32* %B949, align 4
  %and950 = and i32 %371, -1
  %shr951 = lshr i32 %and950, 2
  %or952 = or i32 %shl948, %shr951
  %B953 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or952, i32* %B953, align 4
  br label %do.end954

do.end954:                                        ; preds = %do.body910
  br label %do.body955

do.body955:                                       ; preds = %do.end954
  %E956 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %372 = load i32, i32* %E956, align 4
  %shl957 = shl i32 %372, 5
  %E958 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %373 = load i32, i32* %E958, align 4
  %and959 = and i32 %373, -1
  %shr960 = lshr i32 %and959, 27
  %or961 = or i32 %shl957, %shr960
  %A962 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %374 = load i32, i32* %A962, align 4
  %B963 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %375 = load i32, i32* %B963, align 4
  %xor964 = xor i32 %374, %375
  %C965 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %376 = load i32, i32* %C965, align 4
  %xor966 = xor i32 %xor964, %376
  %add967 = add i32 %or961, %xor966
  %add968 = add i32 %add967, 1859775393
  %W969 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx970 = getelementptr inbounds [16 x i32], [16 x i32]* %W969, i64 0, i64 2
  %377 = load i32, i32* %arrayidx970, align 4
  %W971 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx972 = getelementptr inbounds [16 x i32], [16 x i32]* %W971, i64 0, i64 13
  %378 = load i32, i32* %arrayidx972, align 4
  %xor973 = xor i32 %377, %378
  %W974 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx975 = getelementptr inbounds [16 x i32], [16 x i32]* %W974, i64 0, i64 7
  %379 = load i32, i32* %arrayidx975, align 4
  %xor976 = xor i32 %xor973, %379
  %W977 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx978 = getelementptr inbounds [16 x i32], [16 x i32]* %W977, i64 0, i64 5
  %380 = load i32, i32* %arrayidx978, align 4
  %xor979 = xor i32 %xor976, %380
  %temp980 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor979, i32* %temp980, align 4
  %temp981 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %381 = load i32, i32* %temp981, align 4
  %shl982 = shl i32 %381, 1
  %temp983 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %382 = load i32, i32* %temp983, align 4
  %and984 = and i32 %382, -1
  %shr985 = lshr i32 %and984, 31
  %or986 = or i32 %shl982, %shr985
  %W987 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx988 = getelementptr inbounds [16 x i32], [16 x i32]* %W987, i64 0, i64 5
  store i32 %or986, i32* %arrayidx988, align 4
  %add989 = add i32 %add968, %or986
  %D990 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %383 = load i32, i32* %D990, align 4
  %add991 = add i32 %383, %add989
  store i32 %add991, i32* %D990, align 4
  %A992 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %384 = load i32, i32* %A992, align 4
  %shl993 = shl i32 %384, 30
  %A994 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %385 = load i32, i32* %A994, align 4
  %and995 = and i32 %385, -1
  %shr996 = lshr i32 %and995, 2
  %or997 = or i32 %shl993, %shr996
  %A998 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or997, i32* %A998, align 4
  br label %do.end999

do.end999:                                        ; preds = %do.body955
  br label %do.body1000

do.body1000:                                      ; preds = %do.end999
  %D1001 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %386 = load i32, i32* %D1001, align 4
  %shl1002 = shl i32 %386, 5
  %D1003 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %387 = load i32, i32* %D1003, align 4
  %and1004 = and i32 %387, -1
  %shr1005 = lshr i32 %and1004, 27
  %or1006 = or i32 %shl1002, %shr1005
  %E1007 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %388 = load i32, i32* %E1007, align 4
  %A1008 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %389 = load i32, i32* %A1008, align 4
  %xor1009 = xor i32 %388, %389
  %B1010 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %390 = load i32, i32* %B1010, align 4
  %xor1011 = xor i32 %xor1009, %390
  %add1012 = add i32 %or1006, %xor1011
  %add1013 = add i32 %add1012, 1859775393
  %W1014 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1015 = getelementptr inbounds [16 x i32], [16 x i32]* %W1014, i64 0, i64 3
  %391 = load i32, i32* %arrayidx1015, align 4
  %W1016 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1017 = getelementptr inbounds [16 x i32], [16 x i32]* %W1016, i64 0, i64 14
  %392 = load i32, i32* %arrayidx1017, align 4
  %xor1018 = xor i32 %391, %392
  %W1019 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1020 = getelementptr inbounds [16 x i32], [16 x i32]* %W1019, i64 0, i64 8
  %393 = load i32, i32* %arrayidx1020, align 4
  %xor1021 = xor i32 %xor1018, %393
  %W1022 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1023 = getelementptr inbounds [16 x i32], [16 x i32]* %W1022, i64 0, i64 6
  %394 = load i32, i32* %arrayidx1023, align 4
  %xor1024 = xor i32 %xor1021, %394
  %temp1025 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1024, i32* %temp1025, align 4
  %temp1026 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %395 = load i32, i32* %temp1026, align 4
  %shl1027 = shl i32 %395, 1
  %temp1028 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %396 = load i32, i32* %temp1028, align 4
  %and1029 = and i32 %396, -1
  %shr1030 = lshr i32 %and1029, 31
  %or1031 = or i32 %shl1027, %shr1030
  %W1032 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1033 = getelementptr inbounds [16 x i32], [16 x i32]* %W1032, i64 0, i64 6
  store i32 %or1031, i32* %arrayidx1033, align 4
  %add1034 = add i32 %add1013, %or1031
  %C1035 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %397 = load i32, i32* %C1035, align 4
  %add1036 = add i32 %397, %add1034
  store i32 %add1036, i32* %C1035, align 4
  %E1037 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %398 = load i32, i32* %E1037, align 4
  %shl1038 = shl i32 %398, 30
  %E1039 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %399 = load i32, i32* %E1039, align 4
  %and1040 = and i32 %399, -1
  %shr1041 = lshr i32 %and1040, 2
  %or1042 = or i32 %shl1038, %shr1041
  %E1043 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or1042, i32* %E1043, align 4
  br label %do.end1044

do.end1044:                                       ; preds = %do.body1000
  br label %do.body1045

do.body1045:                                      ; preds = %do.end1044
  %C1046 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %400 = load i32, i32* %C1046, align 4
  %shl1047 = shl i32 %400, 5
  %C1048 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %401 = load i32, i32* %C1048, align 4
  %and1049 = and i32 %401, -1
  %shr1050 = lshr i32 %and1049, 27
  %or1051 = or i32 %shl1047, %shr1050
  %D1052 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %402 = load i32, i32* %D1052, align 4
  %E1053 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %403 = load i32, i32* %E1053, align 4
  %xor1054 = xor i32 %402, %403
  %A1055 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %404 = load i32, i32* %A1055, align 4
  %xor1056 = xor i32 %xor1054, %404
  %add1057 = add i32 %or1051, %xor1056
  %add1058 = add i32 %add1057, 1859775393
  %W1059 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1060 = getelementptr inbounds [16 x i32], [16 x i32]* %W1059, i64 0, i64 4
  %405 = load i32, i32* %arrayidx1060, align 4
  %W1061 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1062 = getelementptr inbounds [16 x i32], [16 x i32]* %W1061, i64 0, i64 15
  %406 = load i32, i32* %arrayidx1062, align 4
  %xor1063 = xor i32 %405, %406
  %W1064 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1065 = getelementptr inbounds [16 x i32], [16 x i32]* %W1064, i64 0, i64 9
  %407 = load i32, i32* %arrayidx1065, align 4
  %xor1066 = xor i32 %xor1063, %407
  %W1067 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1068 = getelementptr inbounds [16 x i32], [16 x i32]* %W1067, i64 0, i64 7
  %408 = load i32, i32* %arrayidx1068, align 4
  %xor1069 = xor i32 %xor1066, %408
  %temp1070 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1069, i32* %temp1070, align 4
  %temp1071 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %409 = load i32, i32* %temp1071, align 4
  %shl1072 = shl i32 %409, 1
  %temp1073 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %410 = load i32, i32* %temp1073, align 4
  %and1074 = and i32 %410, -1
  %shr1075 = lshr i32 %and1074, 31
  %or1076 = or i32 %shl1072, %shr1075
  %W1077 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1078 = getelementptr inbounds [16 x i32], [16 x i32]* %W1077, i64 0, i64 7
  store i32 %or1076, i32* %arrayidx1078, align 4
  %add1079 = add i32 %add1058, %or1076
  %B1080 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %411 = load i32, i32* %B1080, align 4
  %add1081 = add i32 %411, %add1079
  store i32 %add1081, i32* %B1080, align 4
  %D1082 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %412 = load i32, i32* %D1082, align 4
  %shl1083 = shl i32 %412, 30
  %D1084 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %413 = load i32, i32* %D1084, align 4
  %and1085 = and i32 %413, -1
  %shr1086 = lshr i32 %and1085, 2
  %or1087 = or i32 %shl1083, %shr1086
  %D1088 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or1087, i32* %D1088, align 4
  br label %do.end1089

do.end1089:                                       ; preds = %do.body1045
  br label %do.body1090

do.body1090:                                      ; preds = %do.end1089
  %B1091 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %414 = load i32, i32* %B1091, align 4
  %shl1092 = shl i32 %414, 5
  %B1093 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %415 = load i32, i32* %B1093, align 4
  %and1094 = and i32 %415, -1
  %shr1095 = lshr i32 %and1094, 27
  %or1096 = or i32 %shl1092, %shr1095
  %C1097 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %416 = load i32, i32* %C1097, align 4
  %D1098 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %417 = load i32, i32* %D1098, align 4
  %xor1099 = xor i32 %416, %417
  %E1100 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %418 = load i32, i32* %E1100, align 4
  %xor1101 = xor i32 %xor1099, %418
  %add1102 = add i32 %or1096, %xor1101
  %add1103 = add i32 %add1102, 1859775393
  %W1104 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1105 = getelementptr inbounds [16 x i32], [16 x i32]* %W1104, i64 0, i64 5
  %419 = load i32, i32* %arrayidx1105, align 4
  %W1106 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1107 = getelementptr inbounds [16 x i32], [16 x i32]* %W1106, i64 0, i64 0
  %420 = load i32, i32* %arrayidx1107, align 4
  %xor1108 = xor i32 %419, %420
  %W1109 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1110 = getelementptr inbounds [16 x i32], [16 x i32]* %W1109, i64 0, i64 10
  %421 = load i32, i32* %arrayidx1110, align 4
  %xor1111 = xor i32 %xor1108, %421
  %W1112 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1113 = getelementptr inbounds [16 x i32], [16 x i32]* %W1112, i64 0, i64 8
  %422 = load i32, i32* %arrayidx1113, align 4
  %xor1114 = xor i32 %xor1111, %422
  %temp1115 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1114, i32* %temp1115, align 4
  %temp1116 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %423 = load i32, i32* %temp1116, align 4
  %shl1117 = shl i32 %423, 1
  %temp1118 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %424 = load i32, i32* %temp1118, align 4
  %and1119 = and i32 %424, -1
  %shr1120 = lshr i32 %and1119, 31
  %or1121 = or i32 %shl1117, %shr1120
  %W1122 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1123 = getelementptr inbounds [16 x i32], [16 x i32]* %W1122, i64 0, i64 8
  store i32 %or1121, i32* %arrayidx1123, align 4
  %add1124 = add i32 %add1103, %or1121
  %A1125 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %425 = load i32, i32* %A1125, align 4
  %add1126 = add i32 %425, %add1124
  store i32 %add1126, i32* %A1125, align 4
  %C1127 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %426 = load i32, i32* %C1127, align 4
  %shl1128 = shl i32 %426, 30
  %C1129 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %427 = load i32, i32* %C1129, align 4
  %and1130 = and i32 %427, -1
  %shr1131 = lshr i32 %and1130, 2
  %or1132 = or i32 %shl1128, %shr1131
  %C1133 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or1132, i32* %C1133, align 4
  br label %do.end1134

do.end1134:                                       ; preds = %do.body1090
  br label %do.body1135

do.body1135:                                      ; preds = %do.end1134
  %A1136 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %428 = load i32, i32* %A1136, align 4
  %shl1137 = shl i32 %428, 5
  %A1138 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %429 = load i32, i32* %A1138, align 4
  %and1139 = and i32 %429, -1
  %shr1140 = lshr i32 %and1139, 27
  %or1141 = or i32 %shl1137, %shr1140
  %B1142 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %430 = load i32, i32* %B1142, align 4
  %C1143 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %431 = load i32, i32* %C1143, align 4
  %xor1144 = xor i32 %430, %431
  %D1145 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %432 = load i32, i32* %D1145, align 4
  %xor1146 = xor i32 %xor1144, %432
  %add1147 = add i32 %or1141, %xor1146
  %add1148 = add i32 %add1147, 1859775393
  %W1149 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1150 = getelementptr inbounds [16 x i32], [16 x i32]* %W1149, i64 0, i64 6
  %433 = load i32, i32* %arrayidx1150, align 4
  %W1151 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1152 = getelementptr inbounds [16 x i32], [16 x i32]* %W1151, i64 0, i64 1
  %434 = load i32, i32* %arrayidx1152, align 4
  %xor1153 = xor i32 %433, %434
  %W1154 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1155 = getelementptr inbounds [16 x i32], [16 x i32]* %W1154, i64 0, i64 11
  %435 = load i32, i32* %arrayidx1155, align 4
  %xor1156 = xor i32 %xor1153, %435
  %W1157 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1158 = getelementptr inbounds [16 x i32], [16 x i32]* %W1157, i64 0, i64 9
  %436 = load i32, i32* %arrayidx1158, align 4
  %xor1159 = xor i32 %xor1156, %436
  %temp1160 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1159, i32* %temp1160, align 4
  %temp1161 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %437 = load i32, i32* %temp1161, align 4
  %shl1162 = shl i32 %437, 1
  %temp1163 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %438 = load i32, i32* %temp1163, align 4
  %and1164 = and i32 %438, -1
  %shr1165 = lshr i32 %and1164, 31
  %or1166 = or i32 %shl1162, %shr1165
  %W1167 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1168 = getelementptr inbounds [16 x i32], [16 x i32]* %W1167, i64 0, i64 9
  store i32 %or1166, i32* %arrayidx1168, align 4
  %add1169 = add i32 %add1148, %or1166
  %E1170 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %439 = load i32, i32* %E1170, align 4
  %add1171 = add i32 %439, %add1169
  store i32 %add1171, i32* %E1170, align 4
  %B1172 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %440 = load i32, i32* %B1172, align 4
  %shl1173 = shl i32 %440, 30
  %B1174 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %441 = load i32, i32* %B1174, align 4
  %and1175 = and i32 %441, -1
  %shr1176 = lshr i32 %and1175, 2
  %or1177 = or i32 %shl1173, %shr1176
  %B1178 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or1177, i32* %B1178, align 4
  br label %do.end1179

do.end1179:                                       ; preds = %do.body1135
  br label %do.body1180

do.body1180:                                      ; preds = %do.end1179
  %E1181 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %442 = load i32, i32* %E1181, align 4
  %shl1182 = shl i32 %442, 5
  %E1183 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %443 = load i32, i32* %E1183, align 4
  %and1184 = and i32 %443, -1
  %shr1185 = lshr i32 %and1184, 27
  %or1186 = or i32 %shl1182, %shr1185
  %A1187 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %444 = load i32, i32* %A1187, align 4
  %B1188 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %445 = load i32, i32* %B1188, align 4
  %xor1189 = xor i32 %444, %445
  %C1190 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %446 = load i32, i32* %C1190, align 4
  %xor1191 = xor i32 %xor1189, %446
  %add1192 = add i32 %or1186, %xor1191
  %add1193 = add i32 %add1192, 1859775393
  %W1194 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1195 = getelementptr inbounds [16 x i32], [16 x i32]* %W1194, i64 0, i64 7
  %447 = load i32, i32* %arrayidx1195, align 4
  %W1196 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1197 = getelementptr inbounds [16 x i32], [16 x i32]* %W1196, i64 0, i64 2
  %448 = load i32, i32* %arrayidx1197, align 4
  %xor1198 = xor i32 %447, %448
  %W1199 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1200 = getelementptr inbounds [16 x i32], [16 x i32]* %W1199, i64 0, i64 12
  %449 = load i32, i32* %arrayidx1200, align 4
  %xor1201 = xor i32 %xor1198, %449
  %W1202 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1203 = getelementptr inbounds [16 x i32], [16 x i32]* %W1202, i64 0, i64 10
  %450 = load i32, i32* %arrayidx1203, align 4
  %xor1204 = xor i32 %xor1201, %450
  %temp1205 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1204, i32* %temp1205, align 4
  %temp1206 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %451 = load i32, i32* %temp1206, align 4
  %shl1207 = shl i32 %451, 1
  %temp1208 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %452 = load i32, i32* %temp1208, align 4
  %and1209 = and i32 %452, -1
  %shr1210 = lshr i32 %and1209, 31
  %or1211 = or i32 %shl1207, %shr1210
  %W1212 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1213 = getelementptr inbounds [16 x i32], [16 x i32]* %W1212, i64 0, i64 10
  store i32 %or1211, i32* %arrayidx1213, align 4
  %add1214 = add i32 %add1193, %or1211
  %D1215 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %453 = load i32, i32* %D1215, align 4
  %add1216 = add i32 %453, %add1214
  store i32 %add1216, i32* %D1215, align 4
  %A1217 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %454 = load i32, i32* %A1217, align 4
  %shl1218 = shl i32 %454, 30
  %A1219 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %455 = load i32, i32* %A1219, align 4
  %and1220 = and i32 %455, -1
  %shr1221 = lshr i32 %and1220, 2
  %or1222 = or i32 %shl1218, %shr1221
  %A1223 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or1222, i32* %A1223, align 4
  br label %do.end1224

do.end1224:                                       ; preds = %do.body1180
  br label %do.body1225

do.body1225:                                      ; preds = %do.end1224
  %D1226 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %456 = load i32, i32* %D1226, align 4
  %shl1227 = shl i32 %456, 5
  %D1228 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %457 = load i32, i32* %D1228, align 4
  %and1229 = and i32 %457, -1
  %shr1230 = lshr i32 %and1229, 27
  %or1231 = or i32 %shl1227, %shr1230
  %E1232 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %458 = load i32, i32* %E1232, align 4
  %A1233 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %459 = load i32, i32* %A1233, align 4
  %xor1234 = xor i32 %458, %459
  %B1235 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %460 = load i32, i32* %B1235, align 4
  %xor1236 = xor i32 %xor1234, %460
  %add1237 = add i32 %or1231, %xor1236
  %add1238 = add i32 %add1237, 1859775393
  %W1239 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1240 = getelementptr inbounds [16 x i32], [16 x i32]* %W1239, i64 0, i64 8
  %461 = load i32, i32* %arrayidx1240, align 4
  %W1241 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1242 = getelementptr inbounds [16 x i32], [16 x i32]* %W1241, i64 0, i64 3
  %462 = load i32, i32* %arrayidx1242, align 4
  %xor1243 = xor i32 %461, %462
  %W1244 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1245 = getelementptr inbounds [16 x i32], [16 x i32]* %W1244, i64 0, i64 13
  %463 = load i32, i32* %arrayidx1245, align 4
  %xor1246 = xor i32 %xor1243, %463
  %W1247 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1248 = getelementptr inbounds [16 x i32], [16 x i32]* %W1247, i64 0, i64 11
  %464 = load i32, i32* %arrayidx1248, align 4
  %xor1249 = xor i32 %xor1246, %464
  %temp1250 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1249, i32* %temp1250, align 4
  %temp1251 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %465 = load i32, i32* %temp1251, align 4
  %shl1252 = shl i32 %465, 1
  %temp1253 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %466 = load i32, i32* %temp1253, align 4
  %and1254 = and i32 %466, -1
  %shr1255 = lshr i32 %and1254, 31
  %or1256 = or i32 %shl1252, %shr1255
  %W1257 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1258 = getelementptr inbounds [16 x i32], [16 x i32]* %W1257, i64 0, i64 11
  store i32 %or1256, i32* %arrayidx1258, align 4
  %add1259 = add i32 %add1238, %or1256
  %C1260 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %467 = load i32, i32* %C1260, align 4
  %add1261 = add i32 %467, %add1259
  store i32 %add1261, i32* %C1260, align 4
  %E1262 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %468 = load i32, i32* %E1262, align 4
  %shl1263 = shl i32 %468, 30
  %E1264 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %469 = load i32, i32* %E1264, align 4
  %and1265 = and i32 %469, -1
  %shr1266 = lshr i32 %and1265, 2
  %or1267 = or i32 %shl1263, %shr1266
  %E1268 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or1267, i32* %E1268, align 4
  br label %do.end1269

do.end1269:                                       ; preds = %do.body1225
  br label %do.body1270

do.body1270:                                      ; preds = %do.end1269
  %C1271 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %470 = load i32, i32* %C1271, align 4
  %shl1272 = shl i32 %470, 5
  %C1273 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %471 = load i32, i32* %C1273, align 4
  %and1274 = and i32 %471, -1
  %shr1275 = lshr i32 %and1274, 27
  %or1276 = or i32 %shl1272, %shr1275
  %D1277 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %472 = load i32, i32* %D1277, align 4
  %E1278 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %473 = load i32, i32* %E1278, align 4
  %xor1279 = xor i32 %472, %473
  %A1280 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %474 = load i32, i32* %A1280, align 4
  %xor1281 = xor i32 %xor1279, %474
  %add1282 = add i32 %or1276, %xor1281
  %add1283 = add i32 %add1282, 1859775393
  %W1284 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1285 = getelementptr inbounds [16 x i32], [16 x i32]* %W1284, i64 0, i64 9
  %475 = load i32, i32* %arrayidx1285, align 4
  %W1286 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1287 = getelementptr inbounds [16 x i32], [16 x i32]* %W1286, i64 0, i64 4
  %476 = load i32, i32* %arrayidx1287, align 4
  %xor1288 = xor i32 %475, %476
  %W1289 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1290 = getelementptr inbounds [16 x i32], [16 x i32]* %W1289, i64 0, i64 14
  %477 = load i32, i32* %arrayidx1290, align 4
  %xor1291 = xor i32 %xor1288, %477
  %W1292 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1293 = getelementptr inbounds [16 x i32], [16 x i32]* %W1292, i64 0, i64 12
  %478 = load i32, i32* %arrayidx1293, align 4
  %xor1294 = xor i32 %xor1291, %478
  %temp1295 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1294, i32* %temp1295, align 4
  %temp1296 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %479 = load i32, i32* %temp1296, align 4
  %shl1297 = shl i32 %479, 1
  %temp1298 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %480 = load i32, i32* %temp1298, align 4
  %and1299 = and i32 %480, -1
  %shr1300 = lshr i32 %and1299, 31
  %or1301 = or i32 %shl1297, %shr1300
  %W1302 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1303 = getelementptr inbounds [16 x i32], [16 x i32]* %W1302, i64 0, i64 12
  store i32 %or1301, i32* %arrayidx1303, align 4
  %add1304 = add i32 %add1283, %or1301
  %B1305 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %481 = load i32, i32* %B1305, align 4
  %add1306 = add i32 %481, %add1304
  store i32 %add1306, i32* %B1305, align 4
  %D1307 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %482 = load i32, i32* %D1307, align 4
  %shl1308 = shl i32 %482, 30
  %D1309 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %483 = load i32, i32* %D1309, align 4
  %and1310 = and i32 %483, -1
  %shr1311 = lshr i32 %and1310, 2
  %or1312 = or i32 %shl1308, %shr1311
  %D1313 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or1312, i32* %D1313, align 4
  br label %do.end1314

do.end1314:                                       ; preds = %do.body1270
  br label %do.body1315

do.body1315:                                      ; preds = %do.end1314
  %B1316 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %484 = load i32, i32* %B1316, align 4
  %shl1317 = shl i32 %484, 5
  %B1318 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %485 = load i32, i32* %B1318, align 4
  %and1319 = and i32 %485, -1
  %shr1320 = lshr i32 %and1319, 27
  %or1321 = or i32 %shl1317, %shr1320
  %C1322 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %486 = load i32, i32* %C1322, align 4
  %D1323 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %487 = load i32, i32* %D1323, align 4
  %xor1324 = xor i32 %486, %487
  %E1325 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %488 = load i32, i32* %E1325, align 4
  %xor1326 = xor i32 %xor1324, %488
  %add1327 = add i32 %or1321, %xor1326
  %add1328 = add i32 %add1327, 1859775393
  %W1329 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1330 = getelementptr inbounds [16 x i32], [16 x i32]* %W1329, i64 0, i64 10
  %489 = load i32, i32* %arrayidx1330, align 4
  %W1331 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1332 = getelementptr inbounds [16 x i32], [16 x i32]* %W1331, i64 0, i64 5
  %490 = load i32, i32* %arrayidx1332, align 4
  %xor1333 = xor i32 %489, %490
  %W1334 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1335 = getelementptr inbounds [16 x i32], [16 x i32]* %W1334, i64 0, i64 15
  %491 = load i32, i32* %arrayidx1335, align 4
  %xor1336 = xor i32 %xor1333, %491
  %W1337 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1338 = getelementptr inbounds [16 x i32], [16 x i32]* %W1337, i64 0, i64 13
  %492 = load i32, i32* %arrayidx1338, align 4
  %xor1339 = xor i32 %xor1336, %492
  %temp1340 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1339, i32* %temp1340, align 4
  %temp1341 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %493 = load i32, i32* %temp1341, align 4
  %shl1342 = shl i32 %493, 1
  %temp1343 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %494 = load i32, i32* %temp1343, align 4
  %and1344 = and i32 %494, -1
  %shr1345 = lshr i32 %and1344, 31
  %or1346 = or i32 %shl1342, %shr1345
  %W1347 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1348 = getelementptr inbounds [16 x i32], [16 x i32]* %W1347, i64 0, i64 13
  store i32 %or1346, i32* %arrayidx1348, align 4
  %add1349 = add i32 %add1328, %or1346
  %A1350 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %495 = load i32, i32* %A1350, align 4
  %add1351 = add i32 %495, %add1349
  store i32 %add1351, i32* %A1350, align 4
  %C1352 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %496 = load i32, i32* %C1352, align 4
  %shl1353 = shl i32 %496, 30
  %C1354 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %497 = load i32, i32* %C1354, align 4
  %and1355 = and i32 %497, -1
  %shr1356 = lshr i32 %and1355, 2
  %or1357 = or i32 %shl1353, %shr1356
  %C1358 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or1357, i32* %C1358, align 4
  br label %do.end1359

do.end1359:                                       ; preds = %do.body1315
  br label %do.body1360

do.body1360:                                      ; preds = %do.end1359
  %A1361 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %498 = load i32, i32* %A1361, align 4
  %shl1362 = shl i32 %498, 5
  %A1363 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %499 = load i32, i32* %A1363, align 4
  %and1364 = and i32 %499, -1
  %shr1365 = lshr i32 %and1364, 27
  %or1366 = or i32 %shl1362, %shr1365
  %B1367 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %500 = load i32, i32* %B1367, align 4
  %C1368 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %501 = load i32, i32* %C1368, align 4
  %xor1369 = xor i32 %500, %501
  %D1370 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %502 = load i32, i32* %D1370, align 4
  %xor1371 = xor i32 %xor1369, %502
  %add1372 = add i32 %or1366, %xor1371
  %add1373 = add i32 %add1372, 1859775393
  %W1374 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1375 = getelementptr inbounds [16 x i32], [16 x i32]* %W1374, i64 0, i64 11
  %503 = load i32, i32* %arrayidx1375, align 4
  %W1376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1377 = getelementptr inbounds [16 x i32], [16 x i32]* %W1376, i64 0, i64 6
  %504 = load i32, i32* %arrayidx1377, align 4
  %xor1378 = xor i32 %503, %504
  %W1379 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1380 = getelementptr inbounds [16 x i32], [16 x i32]* %W1379, i64 0, i64 0
  %505 = load i32, i32* %arrayidx1380, align 4
  %xor1381 = xor i32 %xor1378, %505
  %W1382 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1383 = getelementptr inbounds [16 x i32], [16 x i32]* %W1382, i64 0, i64 14
  %506 = load i32, i32* %arrayidx1383, align 4
  %xor1384 = xor i32 %xor1381, %506
  %temp1385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1384, i32* %temp1385, align 4
  %temp1386 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %507 = load i32, i32* %temp1386, align 4
  %shl1387 = shl i32 %507, 1
  %temp1388 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %508 = load i32, i32* %temp1388, align 4
  %and1389 = and i32 %508, -1
  %shr1390 = lshr i32 %and1389, 31
  %or1391 = or i32 %shl1387, %shr1390
  %W1392 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1393 = getelementptr inbounds [16 x i32], [16 x i32]* %W1392, i64 0, i64 14
  store i32 %or1391, i32* %arrayidx1393, align 4
  %add1394 = add i32 %add1373, %or1391
  %E1395 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %509 = load i32, i32* %E1395, align 4
  %add1396 = add i32 %509, %add1394
  store i32 %add1396, i32* %E1395, align 4
  %B1397 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %510 = load i32, i32* %B1397, align 4
  %shl1398 = shl i32 %510, 30
  %B1399 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %511 = load i32, i32* %B1399, align 4
  %and1400 = and i32 %511, -1
  %shr1401 = lshr i32 %and1400, 2
  %or1402 = or i32 %shl1398, %shr1401
  %B1403 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or1402, i32* %B1403, align 4
  br label %do.end1404

do.end1404:                                       ; preds = %do.body1360
  br label %do.body1405

do.body1405:                                      ; preds = %do.end1404
  %E1406 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %512 = load i32, i32* %E1406, align 4
  %shl1407 = shl i32 %512, 5
  %E1408 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %513 = load i32, i32* %E1408, align 4
  %and1409 = and i32 %513, -1
  %shr1410 = lshr i32 %and1409, 27
  %or1411 = or i32 %shl1407, %shr1410
  %A1412 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %514 = load i32, i32* %A1412, align 4
  %B1413 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %515 = load i32, i32* %B1413, align 4
  %xor1414 = xor i32 %514, %515
  %C1415 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %516 = load i32, i32* %C1415, align 4
  %xor1416 = xor i32 %xor1414, %516
  %add1417 = add i32 %or1411, %xor1416
  %add1418 = add i32 %add1417, 1859775393
  %W1419 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1420 = getelementptr inbounds [16 x i32], [16 x i32]* %W1419, i64 0, i64 12
  %517 = load i32, i32* %arrayidx1420, align 4
  %W1421 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1422 = getelementptr inbounds [16 x i32], [16 x i32]* %W1421, i64 0, i64 7
  %518 = load i32, i32* %arrayidx1422, align 4
  %xor1423 = xor i32 %517, %518
  %W1424 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1425 = getelementptr inbounds [16 x i32], [16 x i32]* %W1424, i64 0, i64 1
  %519 = load i32, i32* %arrayidx1425, align 4
  %xor1426 = xor i32 %xor1423, %519
  %W1427 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1428 = getelementptr inbounds [16 x i32], [16 x i32]* %W1427, i64 0, i64 15
  %520 = load i32, i32* %arrayidx1428, align 4
  %xor1429 = xor i32 %xor1426, %520
  %temp1430 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1429, i32* %temp1430, align 4
  %temp1431 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %521 = load i32, i32* %temp1431, align 4
  %shl1432 = shl i32 %521, 1
  %temp1433 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %522 = load i32, i32* %temp1433, align 4
  %and1434 = and i32 %522, -1
  %shr1435 = lshr i32 %and1434, 31
  %or1436 = or i32 %shl1432, %shr1435
  %W1437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1438 = getelementptr inbounds [16 x i32], [16 x i32]* %W1437, i64 0, i64 15
  store i32 %or1436, i32* %arrayidx1438, align 4
  %add1439 = add i32 %add1418, %or1436
  %D1440 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %523 = load i32, i32* %D1440, align 4
  %add1441 = add i32 %523, %add1439
  store i32 %add1441, i32* %D1440, align 4
  %A1442 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %524 = load i32, i32* %A1442, align 4
  %shl1443 = shl i32 %524, 30
  %A1444 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %525 = load i32, i32* %A1444, align 4
  %and1445 = and i32 %525, -1
  %shr1446 = lshr i32 %and1445, 2
  %or1447 = or i32 %shl1443, %shr1446
  %A1448 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or1447, i32* %A1448, align 4
  br label %do.end1449

do.end1449:                                       ; preds = %do.body1405
  br label %do.body1450

do.body1450:                                      ; preds = %do.end1449
  %D1451 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %526 = load i32, i32* %D1451, align 4
  %shl1452 = shl i32 %526, 5
  %D1453 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %527 = load i32, i32* %D1453, align 4
  %and1454 = and i32 %527, -1
  %shr1455 = lshr i32 %and1454, 27
  %or1456 = or i32 %shl1452, %shr1455
  %E1457 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %528 = load i32, i32* %E1457, align 4
  %A1458 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %529 = load i32, i32* %A1458, align 4
  %xor1459 = xor i32 %528, %529
  %B1460 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %530 = load i32, i32* %B1460, align 4
  %xor1461 = xor i32 %xor1459, %530
  %add1462 = add i32 %or1456, %xor1461
  %add1463 = add i32 %add1462, 1859775393
  %W1464 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1465 = getelementptr inbounds [16 x i32], [16 x i32]* %W1464, i64 0, i64 13
  %531 = load i32, i32* %arrayidx1465, align 4
  %W1466 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1467 = getelementptr inbounds [16 x i32], [16 x i32]* %W1466, i64 0, i64 8
  %532 = load i32, i32* %arrayidx1467, align 4
  %xor1468 = xor i32 %531, %532
  %W1469 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1470 = getelementptr inbounds [16 x i32], [16 x i32]* %W1469, i64 0, i64 2
  %533 = load i32, i32* %arrayidx1470, align 4
  %xor1471 = xor i32 %xor1468, %533
  %W1472 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1473 = getelementptr inbounds [16 x i32], [16 x i32]* %W1472, i64 0, i64 0
  %534 = load i32, i32* %arrayidx1473, align 4
  %xor1474 = xor i32 %xor1471, %534
  %temp1475 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1474, i32* %temp1475, align 4
  %temp1476 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %535 = load i32, i32* %temp1476, align 4
  %shl1477 = shl i32 %535, 1
  %temp1478 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %536 = load i32, i32* %temp1478, align 4
  %and1479 = and i32 %536, -1
  %shr1480 = lshr i32 %and1479, 31
  %or1481 = or i32 %shl1477, %shr1480
  %W1482 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1483 = getelementptr inbounds [16 x i32], [16 x i32]* %W1482, i64 0, i64 0
  store i32 %or1481, i32* %arrayidx1483, align 4
  %add1484 = add i32 %add1463, %or1481
  %C1485 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %537 = load i32, i32* %C1485, align 4
  %add1486 = add i32 %537, %add1484
  store i32 %add1486, i32* %C1485, align 4
  %E1487 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %538 = load i32, i32* %E1487, align 4
  %shl1488 = shl i32 %538, 30
  %E1489 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %539 = load i32, i32* %E1489, align 4
  %and1490 = and i32 %539, -1
  %shr1491 = lshr i32 %and1490, 2
  %or1492 = or i32 %shl1488, %shr1491
  %E1493 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or1492, i32* %E1493, align 4
  br label %do.end1494

do.end1494:                                       ; preds = %do.body1450
  br label %do.body1495

do.body1495:                                      ; preds = %do.end1494
  %C1496 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %540 = load i32, i32* %C1496, align 4
  %shl1497 = shl i32 %540, 5
  %C1498 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %541 = load i32, i32* %C1498, align 4
  %and1499 = and i32 %541, -1
  %shr1500 = lshr i32 %and1499, 27
  %or1501 = or i32 %shl1497, %shr1500
  %D1502 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %542 = load i32, i32* %D1502, align 4
  %E1503 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %543 = load i32, i32* %E1503, align 4
  %xor1504 = xor i32 %542, %543
  %A1505 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %544 = load i32, i32* %A1505, align 4
  %xor1506 = xor i32 %xor1504, %544
  %add1507 = add i32 %or1501, %xor1506
  %add1508 = add i32 %add1507, 1859775393
  %W1509 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1510 = getelementptr inbounds [16 x i32], [16 x i32]* %W1509, i64 0, i64 14
  %545 = load i32, i32* %arrayidx1510, align 4
  %W1511 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1512 = getelementptr inbounds [16 x i32], [16 x i32]* %W1511, i64 0, i64 9
  %546 = load i32, i32* %arrayidx1512, align 4
  %xor1513 = xor i32 %545, %546
  %W1514 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1515 = getelementptr inbounds [16 x i32], [16 x i32]* %W1514, i64 0, i64 3
  %547 = load i32, i32* %arrayidx1515, align 4
  %xor1516 = xor i32 %xor1513, %547
  %W1517 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1518 = getelementptr inbounds [16 x i32], [16 x i32]* %W1517, i64 0, i64 1
  %548 = load i32, i32* %arrayidx1518, align 4
  %xor1519 = xor i32 %xor1516, %548
  %temp1520 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1519, i32* %temp1520, align 4
  %temp1521 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %549 = load i32, i32* %temp1521, align 4
  %shl1522 = shl i32 %549, 1
  %temp1523 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %550 = load i32, i32* %temp1523, align 4
  %and1524 = and i32 %550, -1
  %shr1525 = lshr i32 %and1524, 31
  %or1526 = or i32 %shl1522, %shr1525
  %W1527 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1528 = getelementptr inbounds [16 x i32], [16 x i32]* %W1527, i64 0, i64 1
  store i32 %or1526, i32* %arrayidx1528, align 4
  %add1529 = add i32 %add1508, %or1526
  %B1530 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %551 = load i32, i32* %B1530, align 4
  %add1531 = add i32 %551, %add1529
  store i32 %add1531, i32* %B1530, align 4
  %D1532 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %552 = load i32, i32* %D1532, align 4
  %shl1533 = shl i32 %552, 30
  %D1534 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %553 = load i32, i32* %D1534, align 4
  %and1535 = and i32 %553, -1
  %shr1536 = lshr i32 %and1535, 2
  %or1537 = or i32 %shl1533, %shr1536
  %D1538 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or1537, i32* %D1538, align 4
  br label %do.end1539

do.end1539:                                       ; preds = %do.body1495
  br label %do.body1540

do.body1540:                                      ; preds = %do.end1539
  %B1541 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %554 = load i32, i32* %B1541, align 4
  %shl1542 = shl i32 %554, 5
  %B1543 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %555 = load i32, i32* %B1543, align 4
  %and1544 = and i32 %555, -1
  %shr1545 = lshr i32 %and1544, 27
  %or1546 = or i32 %shl1542, %shr1545
  %C1547 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %556 = load i32, i32* %C1547, align 4
  %D1548 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %557 = load i32, i32* %D1548, align 4
  %xor1549 = xor i32 %556, %557
  %E1550 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %558 = load i32, i32* %E1550, align 4
  %xor1551 = xor i32 %xor1549, %558
  %add1552 = add i32 %or1546, %xor1551
  %add1553 = add i32 %add1552, 1859775393
  %W1554 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1555 = getelementptr inbounds [16 x i32], [16 x i32]* %W1554, i64 0, i64 15
  %559 = load i32, i32* %arrayidx1555, align 4
  %W1556 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1557 = getelementptr inbounds [16 x i32], [16 x i32]* %W1556, i64 0, i64 10
  %560 = load i32, i32* %arrayidx1557, align 4
  %xor1558 = xor i32 %559, %560
  %W1559 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1560 = getelementptr inbounds [16 x i32], [16 x i32]* %W1559, i64 0, i64 4
  %561 = load i32, i32* %arrayidx1560, align 4
  %xor1561 = xor i32 %xor1558, %561
  %W1562 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1563 = getelementptr inbounds [16 x i32], [16 x i32]* %W1562, i64 0, i64 2
  %562 = load i32, i32* %arrayidx1563, align 4
  %xor1564 = xor i32 %xor1561, %562
  %temp1565 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1564, i32* %temp1565, align 4
  %temp1566 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %563 = load i32, i32* %temp1566, align 4
  %shl1567 = shl i32 %563, 1
  %temp1568 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %564 = load i32, i32* %temp1568, align 4
  %and1569 = and i32 %564, -1
  %shr1570 = lshr i32 %and1569, 31
  %or1571 = or i32 %shl1567, %shr1570
  %W1572 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1573 = getelementptr inbounds [16 x i32], [16 x i32]* %W1572, i64 0, i64 2
  store i32 %or1571, i32* %arrayidx1573, align 4
  %add1574 = add i32 %add1553, %or1571
  %A1575 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %565 = load i32, i32* %A1575, align 4
  %add1576 = add i32 %565, %add1574
  store i32 %add1576, i32* %A1575, align 4
  %C1577 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %566 = load i32, i32* %C1577, align 4
  %shl1578 = shl i32 %566, 30
  %C1579 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %567 = load i32, i32* %C1579, align 4
  %and1580 = and i32 %567, -1
  %shr1581 = lshr i32 %and1580, 2
  %or1582 = or i32 %shl1578, %shr1581
  %C1583 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or1582, i32* %C1583, align 4
  br label %do.end1584

do.end1584:                                       ; preds = %do.body1540
  br label %do.body1585

do.body1585:                                      ; preds = %do.end1584
  %A1586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %568 = load i32, i32* %A1586, align 4
  %shl1587 = shl i32 %568, 5
  %A1588 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %569 = load i32, i32* %A1588, align 4
  %and1589 = and i32 %569, -1
  %shr1590 = lshr i32 %and1589, 27
  %or1591 = or i32 %shl1587, %shr1590
  %B1592 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %570 = load i32, i32* %B1592, align 4
  %C1593 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %571 = load i32, i32* %C1593, align 4
  %xor1594 = xor i32 %570, %571
  %D1595 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %572 = load i32, i32* %D1595, align 4
  %xor1596 = xor i32 %xor1594, %572
  %add1597 = add i32 %or1591, %xor1596
  %add1598 = add i32 %add1597, 1859775393
  %W1599 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1600 = getelementptr inbounds [16 x i32], [16 x i32]* %W1599, i64 0, i64 0
  %573 = load i32, i32* %arrayidx1600, align 4
  %W1601 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1602 = getelementptr inbounds [16 x i32], [16 x i32]* %W1601, i64 0, i64 11
  %574 = load i32, i32* %arrayidx1602, align 4
  %xor1603 = xor i32 %573, %574
  %W1604 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1605 = getelementptr inbounds [16 x i32], [16 x i32]* %W1604, i64 0, i64 5
  %575 = load i32, i32* %arrayidx1605, align 4
  %xor1606 = xor i32 %xor1603, %575
  %W1607 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1608 = getelementptr inbounds [16 x i32], [16 x i32]* %W1607, i64 0, i64 3
  %576 = load i32, i32* %arrayidx1608, align 4
  %xor1609 = xor i32 %xor1606, %576
  %temp1610 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1609, i32* %temp1610, align 4
  %temp1611 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %577 = load i32, i32* %temp1611, align 4
  %shl1612 = shl i32 %577, 1
  %temp1613 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %578 = load i32, i32* %temp1613, align 4
  %and1614 = and i32 %578, -1
  %shr1615 = lshr i32 %and1614, 31
  %or1616 = or i32 %shl1612, %shr1615
  %W1617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1618 = getelementptr inbounds [16 x i32], [16 x i32]* %W1617, i64 0, i64 3
  store i32 %or1616, i32* %arrayidx1618, align 4
  %add1619 = add i32 %add1598, %or1616
  %E1620 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %579 = load i32, i32* %E1620, align 4
  %add1621 = add i32 %579, %add1619
  store i32 %add1621, i32* %E1620, align 4
  %B1622 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %580 = load i32, i32* %B1622, align 4
  %shl1623 = shl i32 %580, 30
  %B1624 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %581 = load i32, i32* %B1624, align 4
  %and1625 = and i32 %581, -1
  %shr1626 = lshr i32 %and1625, 2
  %or1627 = or i32 %shl1623, %shr1626
  %B1628 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or1627, i32* %B1628, align 4
  br label %do.end1629

do.end1629:                                       ; preds = %do.body1585
  br label %do.body1630

do.body1630:                                      ; preds = %do.end1629
  %E1631 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %582 = load i32, i32* %E1631, align 4
  %shl1632 = shl i32 %582, 5
  %E1633 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %583 = load i32, i32* %E1633, align 4
  %and1634 = and i32 %583, -1
  %shr1635 = lshr i32 %and1634, 27
  %or1636 = or i32 %shl1632, %shr1635
  %A1637 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %584 = load i32, i32* %A1637, align 4
  %B1638 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %585 = load i32, i32* %B1638, align 4
  %xor1639 = xor i32 %584, %585
  %C1640 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %586 = load i32, i32* %C1640, align 4
  %xor1641 = xor i32 %xor1639, %586
  %add1642 = add i32 %or1636, %xor1641
  %add1643 = add i32 %add1642, 1859775393
  %W1644 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1645 = getelementptr inbounds [16 x i32], [16 x i32]* %W1644, i64 0, i64 1
  %587 = load i32, i32* %arrayidx1645, align 4
  %W1646 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1647 = getelementptr inbounds [16 x i32], [16 x i32]* %W1646, i64 0, i64 12
  %588 = load i32, i32* %arrayidx1647, align 4
  %xor1648 = xor i32 %587, %588
  %W1649 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1650 = getelementptr inbounds [16 x i32], [16 x i32]* %W1649, i64 0, i64 6
  %589 = load i32, i32* %arrayidx1650, align 4
  %xor1651 = xor i32 %xor1648, %589
  %W1652 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1653 = getelementptr inbounds [16 x i32], [16 x i32]* %W1652, i64 0, i64 4
  %590 = load i32, i32* %arrayidx1653, align 4
  %xor1654 = xor i32 %xor1651, %590
  %temp1655 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1654, i32* %temp1655, align 4
  %temp1656 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %591 = load i32, i32* %temp1656, align 4
  %shl1657 = shl i32 %591, 1
  %temp1658 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %592 = load i32, i32* %temp1658, align 4
  %and1659 = and i32 %592, -1
  %shr1660 = lshr i32 %and1659, 31
  %or1661 = or i32 %shl1657, %shr1660
  %W1662 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1663 = getelementptr inbounds [16 x i32], [16 x i32]* %W1662, i64 0, i64 4
  store i32 %or1661, i32* %arrayidx1663, align 4
  %add1664 = add i32 %add1643, %or1661
  %D1665 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %593 = load i32, i32* %D1665, align 4
  %add1666 = add i32 %593, %add1664
  store i32 %add1666, i32* %D1665, align 4
  %A1667 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %594 = load i32, i32* %A1667, align 4
  %shl1668 = shl i32 %594, 30
  %A1669 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %595 = load i32, i32* %A1669, align 4
  %and1670 = and i32 %595, -1
  %shr1671 = lshr i32 %and1670, 2
  %or1672 = or i32 %shl1668, %shr1671
  %A1673 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or1672, i32* %A1673, align 4
  br label %do.end1674

do.end1674:                                       ; preds = %do.body1630
  br label %do.body1675

do.body1675:                                      ; preds = %do.end1674
  %D1676 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %596 = load i32, i32* %D1676, align 4
  %shl1677 = shl i32 %596, 5
  %D1678 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %597 = load i32, i32* %D1678, align 4
  %and1679 = and i32 %597, -1
  %shr1680 = lshr i32 %and1679, 27
  %or1681 = or i32 %shl1677, %shr1680
  %E1682 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %598 = load i32, i32* %E1682, align 4
  %A1683 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %599 = load i32, i32* %A1683, align 4
  %xor1684 = xor i32 %598, %599
  %B1685 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %600 = load i32, i32* %B1685, align 4
  %xor1686 = xor i32 %xor1684, %600
  %add1687 = add i32 %or1681, %xor1686
  %add1688 = add i32 %add1687, 1859775393
  %W1689 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1690 = getelementptr inbounds [16 x i32], [16 x i32]* %W1689, i64 0, i64 2
  %601 = load i32, i32* %arrayidx1690, align 4
  %W1691 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1692 = getelementptr inbounds [16 x i32], [16 x i32]* %W1691, i64 0, i64 13
  %602 = load i32, i32* %arrayidx1692, align 4
  %xor1693 = xor i32 %601, %602
  %W1694 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1695 = getelementptr inbounds [16 x i32], [16 x i32]* %W1694, i64 0, i64 7
  %603 = load i32, i32* %arrayidx1695, align 4
  %xor1696 = xor i32 %xor1693, %603
  %W1697 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1698 = getelementptr inbounds [16 x i32], [16 x i32]* %W1697, i64 0, i64 5
  %604 = load i32, i32* %arrayidx1698, align 4
  %xor1699 = xor i32 %xor1696, %604
  %temp1700 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1699, i32* %temp1700, align 4
  %temp1701 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %605 = load i32, i32* %temp1701, align 4
  %shl1702 = shl i32 %605, 1
  %temp1703 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %606 = load i32, i32* %temp1703, align 4
  %and1704 = and i32 %606, -1
  %shr1705 = lshr i32 %and1704, 31
  %or1706 = or i32 %shl1702, %shr1705
  %W1707 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1708 = getelementptr inbounds [16 x i32], [16 x i32]* %W1707, i64 0, i64 5
  store i32 %or1706, i32* %arrayidx1708, align 4
  %add1709 = add i32 %add1688, %or1706
  %C1710 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %607 = load i32, i32* %C1710, align 4
  %add1711 = add i32 %607, %add1709
  store i32 %add1711, i32* %C1710, align 4
  %E1712 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %608 = load i32, i32* %E1712, align 4
  %shl1713 = shl i32 %608, 30
  %E1714 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %609 = load i32, i32* %E1714, align 4
  %and1715 = and i32 %609, -1
  %shr1716 = lshr i32 %and1715, 2
  %or1717 = or i32 %shl1713, %shr1716
  %E1718 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or1717, i32* %E1718, align 4
  br label %do.end1719

do.end1719:                                       ; preds = %do.body1675
  br label %do.body1720

do.body1720:                                      ; preds = %do.end1719
  %C1721 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %610 = load i32, i32* %C1721, align 4
  %shl1722 = shl i32 %610, 5
  %C1723 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %611 = load i32, i32* %C1723, align 4
  %and1724 = and i32 %611, -1
  %shr1725 = lshr i32 %and1724, 27
  %or1726 = or i32 %shl1722, %shr1725
  %D1727 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %612 = load i32, i32* %D1727, align 4
  %E1728 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %613 = load i32, i32* %E1728, align 4
  %xor1729 = xor i32 %612, %613
  %A1730 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %614 = load i32, i32* %A1730, align 4
  %xor1731 = xor i32 %xor1729, %614
  %add1732 = add i32 %or1726, %xor1731
  %add1733 = add i32 %add1732, 1859775393
  %W1734 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1735 = getelementptr inbounds [16 x i32], [16 x i32]* %W1734, i64 0, i64 3
  %615 = load i32, i32* %arrayidx1735, align 4
  %W1736 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1737 = getelementptr inbounds [16 x i32], [16 x i32]* %W1736, i64 0, i64 14
  %616 = load i32, i32* %arrayidx1737, align 4
  %xor1738 = xor i32 %615, %616
  %W1739 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1740 = getelementptr inbounds [16 x i32], [16 x i32]* %W1739, i64 0, i64 8
  %617 = load i32, i32* %arrayidx1740, align 4
  %xor1741 = xor i32 %xor1738, %617
  %W1742 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1743 = getelementptr inbounds [16 x i32], [16 x i32]* %W1742, i64 0, i64 6
  %618 = load i32, i32* %arrayidx1743, align 4
  %xor1744 = xor i32 %xor1741, %618
  %temp1745 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1744, i32* %temp1745, align 4
  %temp1746 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %619 = load i32, i32* %temp1746, align 4
  %shl1747 = shl i32 %619, 1
  %temp1748 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %620 = load i32, i32* %temp1748, align 4
  %and1749 = and i32 %620, -1
  %shr1750 = lshr i32 %and1749, 31
  %or1751 = or i32 %shl1747, %shr1750
  %W1752 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1753 = getelementptr inbounds [16 x i32], [16 x i32]* %W1752, i64 0, i64 6
  store i32 %or1751, i32* %arrayidx1753, align 4
  %add1754 = add i32 %add1733, %or1751
  %B1755 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %621 = load i32, i32* %B1755, align 4
  %add1756 = add i32 %621, %add1754
  store i32 %add1756, i32* %B1755, align 4
  %D1757 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %622 = load i32, i32* %D1757, align 4
  %shl1758 = shl i32 %622, 30
  %D1759 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %623 = load i32, i32* %D1759, align 4
  %and1760 = and i32 %623, -1
  %shr1761 = lshr i32 %and1760, 2
  %or1762 = or i32 %shl1758, %shr1761
  %D1763 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or1762, i32* %D1763, align 4
  br label %do.end1764

do.end1764:                                       ; preds = %do.body1720
  br label %do.body1765

do.body1765:                                      ; preds = %do.end1764
  %B1766 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %624 = load i32, i32* %B1766, align 4
  %shl1767 = shl i32 %624, 5
  %B1768 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %625 = load i32, i32* %B1768, align 4
  %and1769 = and i32 %625, -1
  %shr1770 = lshr i32 %and1769, 27
  %or1771 = or i32 %shl1767, %shr1770
  %C1772 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %626 = load i32, i32* %C1772, align 4
  %D1773 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %627 = load i32, i32* %D1773, align 4
  %xor1774 = xor i32 %626, %627
  %E1775 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %628 = load i32, i32* %E1775, align 4
  %xor1776 = xor i32 %xor1774, %628
  %add1777 = add i32 %or1771, %xor1776
  %add1778 = add i32 %add1777, 1859775393
  %W1779 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1780 = getelementptr inbounds [16 x i32], [16 x i32]* %W1779, i64 0, i64 4
  %629 = load i32, i32* %arrayidx1780, align 4
  %W1781 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1782 = getelementptr inbounds [16 x i32], [16 x i32]* %W1781, i64 0, i64 15
  %630 = load i32, i32* %arrayidx1782, align 4
  %xor1783 = xor i32 %629, %630
  %W1784 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1785 = getelementptr inbounds [16 x i32], [16 x i32]* %W1784, i64 0, i64 9
  %631 = load i32, i32* %arrayidx1785, align 4
  %xor1786 = xor i32 %xor1783, %631
  %W1787 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1788 = getelementptr inbounds [16 x i32], [16 x i32]* %W1787, i64 0, i64 7
  %632 = load i32, i32* %arrayidx1788, align 4
  %xor1789 = xor i32 %xor1786, %632
  %temp1790 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1789, i32* %temp1790, align 4
  %temp1791 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %633 = load i32, i32* %temp1791, align 4
  %shl1792 = shl i32 %633, 1
  %temp1793 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %634 = load i32, i32* %temp1793, align 4
  %and1794 = and i32 %634, -1
  %shr1795 = lshr i32 %and1794, 31
  %or1796 = or i32 %shl1792, %shr1795
  %W1797 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1798 = getelementptr inbounds [16 x i32], [16 x i32]* %W1797, i64 0, i64 7
  store i32 %or1796, i32* %arrayidx1798, align 4
  %add1799 = add i32 %add1778, %or1796
  %A1800 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %635 = load i32, i32* %A1800, align 4
  %add1801 = add i32 %635, %add1799
  store i32 %add1801, i32* %A1800, align 4
  %C1802 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %636 = load i32, i32* %C1802, align 4
  %shl1803 = shl i32 %636, 30
  %C1804 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %637 = load i32, i32* %C1804, align 4
  %and1805 = and i32 %637, -1
  %shr1806 = lshr i32 %and1805, 2
  %or1807 = or i32 %shl1803, %shr1806
  %C1808 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or1807, i32* %C1808, align 4
  br label %do.end1809

do.end1809:                                       ; preds = %do.body1765
  br label %do.body1810

do.body1810:                                      ; preds = %do.end1809
  %A1811 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %638 = load i32, i32* %A1811, align 4
  %shl1812 = shl i32 %638, 5
  %A1813 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %639 = load i32, i32* %A1813, align 4
  %and1814 = and i32 %639, -1
  %shr1815 = lshr i32 %and1814, 27
  %or1816 = or i32 %shl1812, %shr1815
  %B1817 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %640 = load i32, i32* %B1817, align 4
  %C1818 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %641 = load i32, i32* %C1818, align 4
  %and1819 = and i32 %640, %641
  %D1820 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %642 = load i32, i32* %D1820, align 4
  %B1821 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %643 = load i32, i32* %B1821, align 4
  %C1822 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %644 = load i32, i32* %C1822, align 4
  %or1823 = or i32 %643, %644
  %and1824 = and i32 %642, %or1823
  %or1825 = or i32 %and1819, %and1824
  %add1826 = add i32 %or1816, %or1825
  %add1827 = add i32 %add1826, -1894007588
  %W1828 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1829 = getelementptr inbounds [16 x i32], [16 x i32]* %W1828, i64 0, i64 5
  %645 = load i32, i32* %arrayidx1829, align 4
  %W1830 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1831 = getelementptr inbounds [16 x i32], [16 x i32]* %W1830, i64 0, i64 0
  %646 = load i32, i32* %arrayidx1831, align 4
  %xor1832 = xor i32 %645, %646
  %W1833 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1834 = getelementptr inbounds [16 x i32], [16 x i32]* %W1833, i64 0, i64 10
  %647 = load i32, i32* %arrayidx1834, align 4
  %xor1835 = xor i32 %xor1832, %647
  %W1836 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1837 = getelementptr inbounds [16 x i32], [16 x i32]* %W1836, i64 0, i64 8
  %648 = load i32, i32* %arrayidx1837, align 4
  %xor1838 = xor i32 %xor1835, %648
  %temp1839 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1838, i32* %temp1839, align 4
  %temp1840 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %649 = load i32, i32* %temp1840, align 4
  %shl1841 = shl i32 %649, 1
  %temp1842 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %650 = load i32, i32* %temp1842, align 4
  %and1843 = and i32 %650, -1
  %shr1844 = lshr i32 %and1843, 31
  %or1845 = or i32 %shl1841, %shr1844
  %W1846 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1847 = getelementptr inbounds [16 x i32], [16 x i32]* %W1846, i64 0, i64 8
  store i32 %or1845, i32* %arrayidx1847, align 4
  %add1848 = add i32 %add1827, %or1845
  %E1849 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %651 = load i32, i32* %E1849, align 4
  %add1850 = add i32 %651, %add1848
  store i32 %add1850, i32* %E1849, align 4
  %B1851 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %652 = load i32, i32* %B1851, align 4
  %shl1852 = shl i32 %652, 30
  %B1853 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %653 = load i32, i32* %B1853, align 4
  %and1854 = and i32 %653, -1
  %shr1855 = lshr i32 %and1854, 2
  %or1856 = or i32 %shl1852, %shr1855
  %B1857 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or1856, i32* %B1857, align 4
  br label %do.end1858

do.end1858:                                       ; preds = %do.body1810
  br label %do.body1859

do.body1859:                                      ; preds = %do.end1858
  %E1860 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %654 = load i32, i32* %E1860, align 4
  %shl1861 = shl i32 %654, 5
  %E1862 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %655 = load i32, i32* %E1862, align 4
  %and1863 = and i32 %655, -1
  %shr1864 = lshr i32 %and1863, 27
  %or1865 = or i32 %shl1861, %shr1864
  %A1866 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %656 = load i32, i32* %A1866, align 4
  %B1867 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %657 = load i32, i32* %B1867, align 4
  %and1868 = and i32 %656, %657
  %C1869 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %658 = load i32, i32* %C1869, align 4
  %A1870 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %659 = load i32, i32* %A1870, align 4
  %B1871 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %660 = load i32, i32* %B1871, align 4
  %or1872 = or i32 %659, %660
  %and1873 = and i32 %658, %or1872
  %or1874 = or i32 %and1868, %and1873
  %add1875 = add i32 %or1865, %or1874
  %add1876 = add i32 %add1875, -1894007588
  %W1877 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1878 = getelementptr inbounds [16 x i32], [16 x i32]* %W1877, i64 0, i64 6
  %661 = load i32, i32* %arrayidx1878, align 4
  %W1879 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1880 = getelementptr inbounds [16 x i32], [16 x i32]* %W1879, i64 0, i64 1
  %662 = load i32, i32* %arrayidx1880, align 4
  %xor1881 = xor i32 %661, %662
  %W1882 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1883 = getelementptr inbounds [16 x i32], [16 x i32]* %W1882, i64 0, i64 11
  %663 = load i32, i32* %arrayidx1883, align 4
  %xor1884 = xor i32 %xor1881, %663
  %W1885 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1886 = getelementptr inbounds [16 x i32], [16 x i32]* %W1885, i64 0, i64 9
  %664 = load i32, i32* %arrayidx1886, align 4
  %xor1887 = xor i32 %xor1884, %664
  %temp1888 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1887, i32* %temp1888, align 4
  %temp1889 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %665 = load i32, i32* %temp1889, align 4
  %shl1890 = shl i32 %665, 1
  %temp1891 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %666 = load i32, i32* %temp1891, align 4
  %and1892 = and i32 %666, -1
  %shr1893 = lshr i32 %and1892, 31
  %or1894 = or i32 %shl1890, %shr1893
  %W1895 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1896 = getelementptr inbounds [16 x i32], [16 x i32]* %W1895, i64 0, i64 9
  store i32 %or1894, i32* %arrayidx1896, align 4
  %add1897 = add i32 %add1876, %or1894
  %D1898 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %667 = load i32, i32* %D1898, align 4
  %add1899 = add i32 %667, %add1897
  store i32 %add1899, i32* %D1898, align 4
  %A1900 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %668 = load i32, i32* %A1900, align 4
  %shl1901 = shl i32 %668, 30
  %A1902 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %669 = load i32, i32* %A1902, align 4
  %and1903 = and i32 %669, -1
  %shr1904 = lshr i32 %and1903, 2
  %or1905 = or i32 %shl1901, %shr1904
  %A1906 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or1905, i32* %A1906, align 4
  br label %do.end1907

do.end1907:                                       ; preds = %do.body1859
  br label %do.body1908

do.body1908:                                      ; preds = %do.end1907
  %D1909 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %670 = load i32, i32* %D1909, align 4
  %shl1910 = shl i32 %670, 5
  %D1911 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %671 = load i32, i32* %D1911, align 4
  %and1912 = and i32 %671, -1
  %shr1913 = lshr i32 %and1912, 27
  %or1914 = or i32 %shl1910, %shr1913
  %E1915 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %672 = load i32, i32* %E1915, align 4
  %A1916 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %673 = load i32, i32* %A1916, align 4
  %and1917 = and i32 %672, %673
  %B1918 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %674 = load i32, i32* %B1918, align 4
  %E1919 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %675 = load i32, i32* %E1919, align 4
  %A1920 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %676 = load i32, i32* %A1920, align 4
  %or1921 = or i32 %675, %676
  %and1922 = and i32 %674, %or1921
  %or1923 = or i32 %and1917, %and1922
  %add1924 = add i32 %or1914, %or1923
  %add1925 = add i32 %add1924, -1894007588
  %W1926 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1927 = getelementptr inbounds [16 x i32], [16 x i32]* %W1926, i64 0, i64 7
  %677 = load i32, i32* %arrayidx1927, align 4
  %W1928 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1929 = getelementptr inbounds [16 x i32], [16 x i32]* %W1928, i64 0, i64 2
  %678 = load i32, i32* %arrayidx1929, align 4
  %xor1930 = xor i32 %677, %678
  %W1931 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1932 = getelementptr inbounds [16 x i32], [16 x i32]* %W1931, i64 0, i64 12
  %679 = load i32, i32* %arrayidx1932, align 4
  %xor1933 = xor i32 %xor1930, %679
  %W1934 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1935 = getelementptr inbounds [16 x i32], [16 x i32]* %W1934, i64 0, i64 10
  %680 = load i32, i32* %arrayidx1935, align 4
  %xor1936 = xor i32 %xor1933, %680
  %temp1937 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1936, i32* %temp1937, align 4
  %temp1938 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %681 = load i32, i32* %temp1938, align 4
  %shl1939 = shl i32 %681, 1
  %temp1940 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %682 = load i32, i32* %temp1940, align 4
  %and1941 = and i32 %682, -1
  %shr1942 = lshr i32 %and1941, 31
  %or1943 = or i32 %shl1939, %shr1942
  %W1944 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1945 = getelementptr inbounds [16 x i32], [16 x i32]* %W1944, i64 0, i64 10
  store i32 %or1943, i32* %arrayidx1945, align 4
  %add1946 = add i32 %add1925, %or1943
  %C1947 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %683 = load i32, i32* %C1947, align 4
  %add1948 = add i32 %683, %add1946
  store i32 %add1948, i32* %C1947, align 4
  %E1949 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %684 = load i32, i32* %E1949, align 4
  %shl1950 = shl i32 %684, 30
  %E1951 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %685 = load i32, i32* %E1951, align 4
  %and1952 = and i32 %685, -1
  %shr1953 = lshr i32 %and1952, 2
  %or1954 = or i32 %shl1950, %shr1953
  %E1955 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or1954, i32* %E1955, align 4
  br label %do.end1956

do.end1956:                                       ; preds = %do.body1908
  br label %do.body1957

do.body1957:                                      ; preds = %do.end1956
  %C1958 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %686 = load i32, i32* %C1958, align 4
  %shl1959 = shl i32 %686, 5
  %C1960 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %687 = load i32, i32* %C1960, align 4
  %and1961 = and i32 %687, -1
  %shr1962 = lshr i32 %and1961, 27
  %or1963 = or i32 %shl1959, %shr1962
  %D1964 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %688 = load i32, i32* %D1964, align 4
  %E1965 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %689 = load i32, i32* %E1965, align 4
  %and1966 = and i32 %688, %689
  %A1967 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %690 = load i32, i32* %A1967, align 4
  %D1968 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %691 = load i32, i32* %D1968, align 4
  %E1969 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %692 = load i32, i32* %E1969, align 4
  %or1970 = or i32 %691, %692
  %and1971 = and i32 %690, %or1970
  %or1972 = or i32 %and1966, %and1971
  %add1973 = add i32 %or1963, %or1972
  %add1974 = add i32 %add1973, -1894007588
  %W1975 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1976 = getelementptr inbounds [16 x i32], [16 x i32]* %W1975, i64 0, i64 8
  %693 = load i32, i32* %arrayidx1976, align 4
  %W1977 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1978 = getelementptr inbounds [16 x i32], [16 x i32]* %W1977, i64 0, i64 3
  %694 = load i32, i32* %arrayidx1978, align 4
  %xor1979 = xor i32 %693, %694
  %W1980 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1981 = getelementptr inbounds [16 x i32], [16 x i32]* %W1980, i64 0, i64 13
  %695 = load i32, i32* %arrayidx1981, align 4
  %xor1982 = xor i32 %xor1979, %695
  %W1983 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1984 = getelementptr inbounds [16 x i32], [16 x i32]* %W1983, i64 0, i64 11
  %696 = load i32, i32* %arrayidx1984, align 4
  %xor1985 = xor i32 %xor1982, %696
  %temp1986 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor1985, i32* %temp1986, align 4
  %temp1987 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %697 = load i32, i32* %temp1987, align 4
  %shl1988 = shl i32 %697, 1
  %temp1989 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %698 = load i32, i32* %temp1989, align 4
  %and1990 = and i32 %698, -1
  %shr1991 = lshr i32 %and1990, 31
  %or1992 = or i32 %shl1988, %shr1991
  %W1993 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx1994 = getelementptr inbounds [16 x i32], [16 x i32]* %W1993, i64 0, i64 11
  store i32 %or1992, i32* %arrayidx1994, align 4
  %add1995 = add i32 %add1974, %or1992
  %B1996 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %699 = load i32, i32* %B1996, align 4
  %add1997 = add i32 %699, %add1995
  store i32 %add1997, i32* %B1996, align 4
  %D1998 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %700 = load i32, i32* %D1998, align 4
  %shl1999 = shl i32 %700, 30
  %D2000 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %701 = load i32, i32* %D2000, align 4
  %and2001 = and i32 %701, -1
  %shr2002 = lshr i32 %and2001, 2
  %or2003 = or i32 %shl1999, %shr2002
  %D2004 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or2003, i32* %D2004, align 4
  br label %do.end2005

do.end2005:                                       ; preds = %do.body1957
  br label %do.body2006

do.body2006:                                      ; preds = %do.end2005
  %B2007 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %702 = load i32, i32* %B2007, align 4
  %shl2008 = shl i32 %702, 5
  %B2009 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %703 = load i32, i32* %B2009, align 4
  %and2010 = and i32 %703, -1
  %shr2011 = lshr i32 %and2010, 27
  %or2012 = or i32 %shl2008, %shr2011
  %C2013 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %704 = load i32, i32* %C2013, align 4
  %D2014 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %705 = load i32, i32* %D2014, align 4
  %and2015 = and i32 %704, %705
  %E2016 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %706 = load i32, i32* %E2016, align 4
  %C2017 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %707 = load i32, i32* %C2017, align 4
  %D2018 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %708 = load i32, i32* %D2018, align 4
  %or2019 = or i32 %707, %708
  %and2020 = and i32 %706, %or2019
  %or2021 = or i32 %and2015, %and2020
  %add2022 = add i32 %or2012, %or2021
  %add2023 = add i32 %add2022, -1894007588
  %W2024 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2025 = getelementptr inbounds [16 x i32], [16 x i32]* %W2024, i64 0, i64 9
  %709 = load i32, i32* %arrayidx2025, align 4
  %W2026 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2027 = getelementptr inbounds [16 x i32], [16 x i32]* %W2026, i64 0, i64 4
  %710 = load i32, i32* %arrayidx2027, align 4
  %xor2028 = xor i32 %709, %710
  %W2029 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2030 = getelementptr inbounds [16 x i32], [16 x i32]* %W2029, i64 0, i64 14
  %711 = load i32, i32* %arrayidx2030, align 4
  %xor2031 = xor i32 %xor2028, %711
  %W2032 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2033 = getelementptr inbounds [16 x i32], [16 x i32]* %W2032, i64 0, i64 12
  %712 = load i32, i32* %arrayidx2033, align 4
  %xor2034 = xor i32 %xor2031, %712
  %temp2035 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2034, i32* %temp2035, align 4
  %temp2036 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %713 = load i32, i32* %temp2036, align 4
  %shl2037 = shl i32 %713, 1
  %temp2038 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %714 = load i32, i32* %temp2038, align 4
  %and2039 = and i32 %714, -1
  %shr2040 = lshr i32 %and2039, 31
  %or2041 = or i32 %shl2037, %shr2040
  %W2042 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2043 = getelementptr inbounds [16 x i32], [16 x i32]* %W2042, i64 0, i64 12
  store i32 %or2041, i32* %arrayidx2043, align 4
  %add2044 = add i32 %add2023, %or2041
  %A2045 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %715 = load i32, i32* %A2045, align 4
  %add2046 = add i32 %715, %add2044
  store i32 %add2046, i32* %A2045, align 4
  %C2047 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %716 = load i32, i32* %C2047, align 4
  %shl2048 = shl i32 %716, 30
  %C2049 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %717 = load i32, i32* %C2049, align 4
  %and2050 = and i32 %717, -1
  %shr2051 = lshr i32 %and2050, 2
  %or2052 = or i32 %shl2048, %shr2051
  %C2053 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or2052, i32* %C2053, align 4
  br label %do.end2054

do.end2054:                                       ; preds = %do.body2006
  br label %do.body2055

do.body2055:                                      ; preds = %do.end2054
  %A2056 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %718 = load i32, i32* %A2056, align 4
  %shl2057 = shl i32 %718, 5
  %A2058 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %719 = load i32, i32* %A2058, align 4
  %and2059 = and i32 %719, -1
  %shr2060 = lshr i32 %and2059, 27
  %or2061 = or i32 %shl2057, %shr2060
  %B2062 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %720 = load i32, i32* %B2062, align 4
  %C2063 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %721 = load i32, i32* %C2063, align 4
  %and2064 = and i32 %720, %721
  %D2065 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %722 = load i32, i32* %D2065, align 4
  %B2066 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %723 = load i32, i32* %B2066, align 4
  %C2067 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %724 = load i32, i32* %C2067, align 4
  %or2068 = or i32 %723, %724
  %and2069 = and i32 %722, %or2068
  %or2070 = or i32 %and2064, %and2069
  %add2071 = add i32 %or2061, %or2070
  %add2072 = add i32 %add2071, -1894007588
  %W2073 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2074 = getelementptr inbounds [16 x i32], [16 x i32]* %W2073, i64 0, i64 10
  %725 = load i32, i32* %arrayidx2074, align 4
  %W2075 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2076 = getelementptr inbounds [16 x i32], [16 x i32]* %W2075, i64 0, i64 5
  %726 = load i32, i32* %arrayidx2076, align 4
  %xor2077 = xor i32 %725, %726
  %W2078 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2079 = getelementptr inbounds [16 x i32], [16 x i32]* %W2078, i64 0, i64 15
  %727 = load i32, i32* %arrayidx2079, align 4
  %xor2080 = xor i32 %xor2077, %727
  %W2081 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2082 = getelementptr inbounds [16 x i32], [16 x i32]* %W2081, i64 0, i64 13
  %728 = load i32, i32* %arrayidx2082, align 4
  %xor2083 = xor i32 %xor2080, %728
  %temp2084 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2083, i32* %temp2084, align 4
  %temp2085 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %729 = load i32, i32* %temp2085, align 4
  %shl2086 = shl i32 %729, 1
  %temp2087 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %730 = load i32, i32* %temp2087, align 4
  %and2088 = and i32 %730, -1
  %shr2089 = lshr i32 %and2088, 31
  %or2090 = or i32 %shl2086, %shr2089
  %W2091 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2092 = getelementptr inbounds [16 x i32], [16 x i32]* %W2091, i64 0, i64 13
  store i32 %or2090, i32* %arrayidx2092, align 4
  %add2093 = add i32 %add2072, %or2090
  %E2094 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %731 = load i32, i32* %E2094, align 4
  %add2095 = add i32 %731, %add2093
  store i32 %add2095, i32* %E2094, align 4
  %B2096 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %732 = load i32, i32* %B2096, align 4
  %shl2097 = shl i32 %732, 30
  %B2098 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %733 = load i32, i32* %B2098, align 4
  %and2099 = and i32 %733, -1
  %shr2100 = lshr i32 %and2099, 2
  %or2101 = or i32 %shl2097, %shr2100
  %B2102 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or2101, i32* %B2102, align 4
  br label %do.end2103

do.end2103:                                       ; preds = %do.body2055
  br label %do.body2104

do.body2104:                                      ; preds = %do.end2103
  %E2105 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %734 = load i32, i32* %E2105, align 4
  %shl2106 = shl i32 %734, 5
  %E2107 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %735 = load i32, i32* %E2107, align 4
  %and2108 = and i32 %735, -1
  %shr2109 = lshr i32 %and2108, 27
  %or2110 = or i32 %shl2106, %shr2109
  %A2111 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %736 = load i32, i32* %A2111, align 4
  %B2112 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %737 = load i32, i32* %B2112, align 4
  %and2113 = and i32 %736, %737
  %C2114 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %738 = load i32, i32* %C2114, align 4
  %A2115 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %739 = load i32, i32* %A2115, align 4
  %B2116 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %740 = load i32, i32* %B2116, align 4
  %or2117 = or i32 %739, %740
  %and2118 = and i32 %738, %or2117
  %or2119 = or i32 %and2113, %and2118
  %add2120 = add i32 %or2110, %or2119
  %add2121 = add i32 %add2120, -1894007588
  %W2122 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2123 = getelementptr inbounds [16 x i32], [16 x i32]* %W2122, i64 0, i64 11
  %741 = load i32, i32* %arrayidx2123, align 4
  %W2124 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2125 = getelementptr inbounds [16 x i32], [16 x i32]* %W2124, i64 0, i64 6
  %742 = load i32, i32* %arrayidx2125, align 4
  %xor2126 = xor i32 %741, %742
  %W2127 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2128 = getelementptr inbounds [16 x i32], [16 x i32]* %W2127, i64 0, i64 0
  %743 = load i32, i32* %arrayidx2128, align 4
  %xor2129 = xor i32 %xor2126, %743
  %W2130 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2131 = getelementptr inbounds [16 x i32], [16 x i32]* %W2130, i64 0, i64 14
  %744 = load i32, i32* %arrayidx2131, align 4
  %xor2132 = xor i32 %xor2129, %744
  %temp2133 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2132, i32* %temp2133, align 4
  %temp2134 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %745 = load i32, i32* %temp2134, align 4
  %shl2135 = shl i32 %745, 1
  %temp2136 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %746 = load i32, i32* %temp2136, align 4
  %and2137 = and i32 %746, -1
  %shr2138 = lshr i32 %and2137, 31
  %or2139 = or i32 %shl2135, %shr2138
  %W2140 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2141 = getelementptr inbounds [16 x i32], [16 x i32]* %W2140, i64 0, i64 14
  store i32 %or2139, i32* %arrayidx2141, align 4
  %add2142 = add i32 %add2121, %or2139
  %D2143 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %747 = load i32, i32* %D2143, align 4
  %add2144 = add i32 %747, %add2142
  store i32 %add2144, i32* %D2143, align 4
  %A2145 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %748 = load i32, i32* %A2145, align 4
  %shl2146 = shl i32 %748, 30
  %A2147 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %749 = load i32, i32* %A2147, align 4
  %and2148 = and i32 %749, -1
  %shr2149 = lshr i32 %and2148, 2
  %or2150 = or i32 %shl2146, %shr2149
  %A2151 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or2150, i32* %A2151, align 4
  br label %do.end2152

do.end2152:                                       ; preds = %do.body2104
  br label %do.body2153

do.body2153:                                      ; preds = %do.end2152
  %D2154 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %750 = load i32, i32* %D2154, align 4
  %shl2155 = shl i32 %750, 5
  %D2156 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %751 = load i32, i32* %D2156, align 4
  %and2157 = and i32 %751, -1
  %shr2158 = lshr i32 %and2157, 27
  %or2159 = or i32 %shl2155, %shr2158
  %E2160 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %752 = load i32, i32* %E2160, align 4
  %A2161 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %753 = load i32, i32* %A2161, align 4
  %and2162 = and i32 %752, %753
  %B2163 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %754 = load i32, i32* %B2163, align 4
  %E2164 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %755 = load i32, i32* %E2164, align 4
  %A2165 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %756 = load i32, i32* %A2165, align 4
  %or2166 = or i32 %755, %756
  %and2167 = and i32 %754, %or2166
  %or2168 = or i32 %and2162, %and2167
  %add2169 = add i32 %or2159, %or2168
  %add2170 = add i32 %add2169, -1894007588
  %W2171 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2172 = getelementptr inbounds [16 x i32], [16 x i32]* %W2171, i64 0, i64 12
  %757 = load i32, i32* %arrayidx2172, align 4
  %W2173 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2174 = getelementptr inbounds [16 x i32], [16 x i32]* %W2173, i64 0, i64 7
  %758 = load i32, i32* %arrayidx2174, align 4
  %xor2175 = xor i32 %757, %758
  %W2176 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2177 = getelementptr inbounds [16 x i32], [16 x i32]* %W2176, i64 0, i64 1
  %759 = load i32, i32* %arrayidx2177, align 4
  %xor2178 = xor i32 %xor2175, %759
  %W2179 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2180 = getelementptr inbounds [16 x i32], [16 x i32]* %W2179, i64 0, i64 15
  %760 = load i32, i32* %arrayidx2180, align 4
  %xor2181 = xor i32 %xor2178, %760
  %temp2182 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2181, i32* %temp2182, align 4
  %temp2183 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %761 = load i32, i32* %temp2183, align 4
  %shl2184 = shl i32 %761, 1
  %temp2185 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %762 = load i32, i32* %temp2185, align 4
  %and2186 = and i32 %762, -1
  %shr2187 = lshr i32 %and2186, 31
  %or2188 = or i32 %shl2184, %shr2187
  %W2189 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2190 = getelementptr inbounds [16 x i32], [16 x i32]* %W2189, i64 0, i64 15
  store i32 %or2188, i32* %arrayidx2190, align 4
  %add2191 = add i32 %add2170, %or2188
  %C2192 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %763 = load i32, i32* %C2192, align 4
  %add2193 = add i32 %763, %add2191
  store i32 %add2193, i32* %C2192, align 4
  %E2194 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %764 = load i32, i32* %E2194, align 4
  %shl2195 = shl i32 %764, 30
  %E2196 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %765 = load i32, i32* %E2196, align 4
  %and2197 = and i32 %765, -1
  %shr2198 = lshr i32 %and2197, 2
  %or2199 = or i32 %shl2195, %shr2198
  %E2200 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or2199, i32* %E2200, align 4
  br label %do.end2201

do.end2201:                                       ; preds = %do.body2153
  br label %do.body2202

do.body2202:                                      ; preds = %do.end2201
  %C2203 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %766 = load i32, i32* %C2203, align 4
  %shl2204 = shl i32 %766, 5
  %C2205 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %767 = load i32, i32* %C2205, align 4
  %and2206 = and i32 %767, -1
  %shr2207 = lshr i32 %and2206, 27
  %or2208 = or i32 %shl2204, %shr2207
  %D2209 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %768 = load i32, i32* %D2209, align 4
  %E2210 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %769 = load i32, i32* %E2210, align 4
  %and2211 = and i32 %768, %769
  %A2212 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %770 = load i32, i32* %A2212, align 4
  %D2213 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %771 = load i32, i32* %D2213, align 4
  %E2214 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %772 = load i32, i32* %E2214, align 4
  %or2215 = or i32 %771, %772
  %and2216 = and i32 %770, %or2215
  %or2217 = or i32 %and2211, %and2216
  %add2218 = add i32 %or2208, %or2217
  %add2219 = add i32 %add2218, -1894007588
  %W2220 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2221 = getelementptr inbounds [16 x i32], [16 x i32]* %W2220, i64 0, i64 13
  %773 = load i32, i32* %arrayidx2221, align 4
  %W2222 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2223 = getelementptr inbounds [16 x i32], [16 x i32]* %W2222, i64 0, i64 8
  %774 = load i32, i32* %arrayidx2223, align 4
  %xor2224 = xor i32 %773, %774
  %W2225 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2226 = getelementptr inbounds [16 x i32], [16 x i32]* %W2225, i64 0, i64 2
  %775 = load i32, i32* %arrayidx2226, align 4
  %xor2227 = xor i32 %xor2224, %775
  %W2228 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2229 = getelementptr inbounds [16 x i32], [16 x i32]* %W2228, i64 0, i64 0
  %776 = load i32, i32* %arrayidx2229, align 4
  %xor2230 = xor i32 %xor2227, %776
  %temp2231 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2230, i32* %temp2231, align 4
  %temp2232 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %777 = load i32, i32* %temp2232, align 4
  %shl2233 = shl i32 %777, 1
  %temp2234 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %778 = load i32, i32* %temp2234, align 4
  %and2235 = and i32 %778, -1
  %shr2236 = lshr i32 %and2235, 31
  %or2237 = or i32 %shl2233, %shr2236
  %W2238 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2239 = getelementptr inbounds [16 x i32], [16 x i32]* %W2238, i64 0, i64 0
  store i32 %or2237, i32* %arrayidx2239, align 4
  %add2240 = add i32 %add2219, %or2237
  %B2241 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %779 = load i32, i32* %B2241, align 4
  %add2242 = add i32 %779, %add2240
  store i32 %add2242, i32* %B2241, align 4
  %D2243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %780 = load i32, i32* %D2243, align 4
  %shl2244 = shl i32 %780, 30
  %D2245 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %781 = load i32, i32* %D2245, align 4
  %and2246 = and i32 %781, -1
  %shr2247 = lshr i32 %and2246, 2
  %or2248 = or i32 %shl2244, %shr2247
  %D2249 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or2248, i32* %D2249, align 4
  br label %do.end2250

do.end2250:                                       ; preds = %do.body2202
  br label %do.body2251

do.body2251:                                      ; preds = %do.end2250
  %B2252 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %782 = load i32, i32* %B2252, align 4
  %shl2253 = shl i32 %782, 5
  %B2254 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %783 = load i32, i32* %B2254, align 4
  %and2255 = and i32 %783, -1
  %shr2256 = lshr i32 %and2255, 27
  %or2257 = or i32 %shl2253, %shr2256
  %C2258 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %784 = load i32, i32* %C2258, align 4
  %D2259 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %785 = load i32, i32* %D2259, align 4
  %and2260 = and i32 %784, %785
  %E2261 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %786 = load i32, i32* %E2261, align 4
  %C2262 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %787 = load i32, i32* %C2262, align 4
  %D2263 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %788 = load i32, i32* %D2263, align 4
  %or2264 = or i32 %787, %788
  %and2265 = and i32 %786, %or2264
  %or2266 = or i32 %and2260, %and2265
  %add2267 = add i32 %or2257, %or2266
  %add2268 = add i32 %add2267, -1894007588
  %W2269 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2270 = getelementptr inbounds [16 x i32], [16 x i32]* %W2269, i64 0, i64 14
  %789 = load i32, i32* %arrayidx2270, align 4
  %W2271 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2272 = getelementptr inbounds [16 x i32], [16 x i32]* %W2271, i64 0, i64 9
  %790 = load i32, i32* %arrayidx2272, align 4
  %xor2273 = xor i32 %789, %790
  %W2274 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2275 = getelementptr inbounds [16 x i32], [16 x i32]* %W2274, i64 0, i64 3
  %791 = load i32, i32* %arrayidx2275, align 4
  %xor2276 = xor i32 %xor2273, %791
  %W2277 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2278 = getelementptr inbounds [16 x i32], [16 x i32]* %W2277, i64 0, i64 1
  %792 = load i32, i32* %arrayidx2278, align 4
  %xor2279 = xor i32 %xor2276, %792
  %temp2280 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2279, i32* %temp2280, align 4
  %temp2281 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %793 = load i32, i32* %temp2281, align 4
  %shl2282 = shl i32 %793, 1
  %temp2283 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %794 = load i32, i32* %temp2283, align 4
  %and2284 = and i32 %794, -1
  %shr2285 = lshr i32 %and2284, 31
  %or2286 = or i32 %shl2282, %shr2285
  %W2287 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2288 = getelementptr inbounds [16 x i32], [16 x i32]* %W2287, i64 0, i64 1
  store i32 %or2286, i32* %arrayidx2288, align 4
  %add2289 = add i32 %add2268, %or2286
  %A2290 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %795 = load i32, i32* %A2290, align 4
  %add2291 = add i32 %795, %add2289
  store i32 %add2291, i32* %A2290, align 4
  %C2292 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %796 = load i32, i32* %C2292, align 4
  %shl2293 = shl i32 %796, 30
  %C2294 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %797 = load i32, i32* %C2294, align 4
  %and2295 = and i32 %797, -1
  %shr2296 = lshr i32 %and2295, 2
  %or2297 = or i32 %shl2293, %shr2296
  %C2298 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or2297, i32* %C2298, align 4
  br label %do.end2299

do.end2299:                                       ; preds = %do.body2251
  br label %do.body2300

do.body2300:                                      ; preds = %do.end2299
  %A2301 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %798 = load i32, i32* %A2301, align 4
  %shl2302 = shl i32 %798, 5
  %A2303 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %799 = load i32, i32* %A2303, align 4
  %and2304 = and i32 %799, -1
  %shr2305 = lshr i32 %and2304, 27
  %or2306 = or i32 %shl2302, %shr2305
  %B2307 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %800 = load i32, i32* %B2307, align 4
  %C2308 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %801 = load i32, i32* %C2308, align 4
  %and2309 = and i32 %800, %801
  %D2310 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %802 = load i32, i32* %D2310, align 4
  %B2311 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %803 = load i32, i32* %B2311, align 4
  %C2312 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %804 = load i32, i32* %C2312, align 4
  %or2313 = or i32 %803, %804
  %and2314 = and i32 %802, %or2313
  %or2315 = or i32 %and2309, %and2314
  %add2316 = add i32 %or2306, %or2315
  %add2317 = add i32 %add2316, -1894007588
  %W2318 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2319 = getelementptr inbounds [16 x i32], [16 x i32]* %W2318, i64 0, i64 15
  %805 = load i32, i32* %arrayidx2319, align 4
  %W2320 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2321 = getelementptr inbounds [16 x i32], [16 x i32]* %W2320, i64 0, i64 10
  %806 = load i32, i32* %arrayidx2321, align 4
  %xor2322 = xor i32 %805, %806
  %W2323 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2324 = getelementptr inbounds [16 x i32], [16 x i32]* %W2323, i64 0, i64 4
  %807 = load i32, i32* %arrayidx2324, align 4
  %xor2325 = xor i32 %xor2322, %807
  %W2326 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2327 = getelementptr inbounds [16 x i32], [16 x i32]* %W2326, i64 0, i64 2
  %808 = load i32, i32* %arrayidx2327, align 4
  %xor2328 = xor i32 %xor2325, %808
  %temp2329 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2328, i32* %temp2329, align 4
  %temp2330 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %809 = load i32, i32* %temp2330, align 4
  %shl2331 = shl i32 %809, 1
  %temp2332 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %810 = load i32, i32* %temp2332, align 4
  %and2333 = and i32 %810, -1
  %shr2334 = lshr i32 %and2333, 31
  %or2335 = or i32 %shl2331, %shr2334
  %W2336 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2337 = getelementptr inbounds [16 x i32], [16 x i32]* %W2336, i64 0, i64 2
  store i32 %or2335, i32* %arrayidx2337, align 4
  %add2338 = add i32 %add2317, %or2335
  %E2339 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %811 = load i32, i32* %E2339, align 4
  %add2340 = add i32 %811, %add2338
  store i32 %add2340, i32* %E2339, align 4
  %B2341 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %812 = load i32, i32* %B2341, align 4
  %shl2342 = shl i32 %812, 30
  %B2343 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %813 = load i32, i32* %B2343, align 4
  %and2344 = and i32 %813, -1
  %shr2345 = lshr i32 %and2344, 2
  %or2346 = or i32 %shl2342, %shr2345
  %B2347 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or2346, i32* %B2347, align 4
  br label %do.end2348

do.end2348:                                       ; preds = %do.body2300
  br label %do.body2349

do.body2349:                                      ; preds = %do.end2348
  %E2350 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %814 = load i32, i32* %E2350, align 4
  %shl2351 = shl i32 %814, 5
  %E2352 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %815 = load i32, i32* %E2352, align 4
  %and2353 = and i32 %815, -1
  %shr2354 = lshr i32 %and2353, 27
  %or2355 = or i32 %shl2351, %shr2354
  %A2356 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %816 = load i32, i32* %A2356, align 4
  %B2357 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %817 = load i32, i32* %B2357, align 4
  %and2358 = and i32 %816, %817
  %C2359 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %818 = load i32, i32* %C2359, align 4
  %A2360 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %819 = load i32, i32* %A2360, align 4
  %B2361 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %820 = load i32, i32* %B2361, align 4
  %or2362 = or i32 %819, %820
  %and2363 = and i32 %818, %or2362
  %or2364 = or i32 %and2358, %and2363
  %add2365 = add i32 %or2355, %or2364
  %add2366 = add i32 %add2365, -1894007588
  %W2367 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2368 = getelementptr inbounds [16 x i32], [16 x i32]* %W2367, i64 0, i64 0
  %821 = load i32, i32* %arrayidx2368, align 4
  %W2369 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2370 = getelementptr inbounds [16 x i32], [16 x i32]* %W2369, i64 0, i64 11
  %822 = load i32, i32* %arrayidx2370, align 4
  %xor2371 = xor i32 %821, %822
  %W2372 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2373 = getelementptr inbounds [16 x i32], [16 x i32]* %W2372, i64 0, i64 5
  %823 = load i32, i32* %arrayidx2373, align 4
  %xor2374 = xor i32 %xor2371, %823
  %W2375 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2376 = getelementptr inbounds [16 x i32], [16 x i32]* %W2375, i64 0, i64 3
  %824 = load i32, i32* %arrayidx2376, align 4
  %xor2377 = xor i32 %xor2374, %824
  %temp2378 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2377, i32* %temp2378, align 4
  %temp2379 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %825 = load i32, i32* %temp2379, align 4
  %shl2380 = shl i32 %825, 1
  %temp2381 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %826 = load i32, i32* %temp2381, align 4
  %and2382 = and i32 %826, -1
  %shr2383 = lshr i32 %and2382, 31
  %or2384 = or i32 %shl2380, %shr2383
  %W2385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2386 = getelementptr inbounds [16 x i32], [16 x i32]* %W2385, i64 0, i64 3
  store i32 %or2384, i32* %arrayidx2386, align 4
  %add2387 = add i32 %add2366, %or2384
  %D2388 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %827 = load i32, i32* %D2388, align 4
  %add2389 = add i32 %827, %add2387
  store i32 %add2389, i32* %D2388, align 4
  %A2390 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %828 = load i32, i32* %A2390, align 4
  %shl2391 = shl i32 %828, 30
  %A2392 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %829 = load i32, i32* %A2392, align 4
  %and2393 = and i32 %829, -1
  %shr2394 = lshr i32 %and2393, 2
  %or2395 = or i32 %shl2391, %shr2394
  %A2396 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or2395, i32* %A2396, align 4
  br label %do.end2397

do.end2397:                                       ; preds = %do.body2349
  br label %do.body2398

do.body2398:                                      ; preds = %do.end2397
  %D2399 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %830 = load i32, i32* %D2399, align 4
  %shl2400 = shl i32 %830, 5
  %D2401 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %831 = load i32, i32* %D2401, align 4
  %and2402 = and i32 %831, -1
  %shr2403 = lshr i32 %and2402, 27
  %or2404 = or i32 %shl2400, %shr2403
  %E2405 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %832 = load i32, i32* %E2405, align 4
  %A2406 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %833 = load i32, i32* %A2406, align 4
  %and2407 = and i32 %832, %833
  %B2408 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %834 = load i32, i32* %B2408, align 4
  %E2409 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %835 = load i32, i32* %E2409, align 4
  %A2410 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %836 = load i32, i32* %A2410, align 4
  %or2411 = or i32 %835, %836
  %and2412 = and i32 %834, %or2411
  %or2413 = or i32 %and2407, %and2412
  %add2414 = add i32 %or2404, %or2413
  %add2415 = add i32 %add2414, -1894007588
  %W2416 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2417 = getelementptr inbounds [16 x i32], [16 x i32]* %W2416, i64 0, i64 1
  %837 = load i32, i32* %arrayidx2417, align 4
  %W2418 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2419 = getelementptr inbounds [16 x i32], [16 x i32]* %W2418, i64 0, i64 12
  %838 = load i32, i32* %arrayidx2419, align 4
  %xor2420 = xor i32 %837, %838
  %W2421 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2422 = getelementptr inbounds [16 x i32], [16 x i32]* %W2421, i64 0, i64 6
  %839 = load i32, i32* %arrayidx2422, align 4
  %xor2423 = xor i32 %xor2420, %839
  %W2424 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2425 = getelementptr inbounds [16 x i32], [16 x i32]* %W2424, i64 0, i64 4
  %840 = load i32, i32* %arrayidx2425, align 4
  %xor2426 = xor i32 %xor2423, %840
  %temp2427 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2426, i32* %temp2427, align 4
  %temp2428 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %841 = load i32, i32* %temp2428, align 4
  %shl2429 = shl i32 %841, 1
  %temp2430 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %842 = load i32, i32* %temp2430, align 4
  %and2431 = and i32 %842, -1
  %shr2432 = lshr i32 %and2431, 31
  %or2433 = or i32 %shl2429, %shr2432
  %W2434 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2435 = getelementptr inbounds [16 x i32], [16 x i32]* %W2434, i64 0, i64 4
  store i32 %or2433, i32* %arrayidx2435, align 4
  %add2436 = add i32 %add2415, %or2433
  %C2437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %843 = load i32, i32* %C2437, align 4
  %add2438 = add i32 %843, %add2436
  store i32 %add2438, i32* %C2437, align 4
  %E2439 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %844 = load i32, i32* %E2439, align 4
  %shl2440 = shl i32 %844, 30
  %E2441 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %845 = load i32, i32* %E2441, align 4
  %and2442 = and i32 %845, -1
  %shr2443 = lshr i32 %and2442, 2
  %or2444 = or i32 %shl2440, %shr2443
  %E2445 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or2444, i32* %E2445, align 4
  br label %do.end2446

do.end2446:                                       ; preds = %do.body2398
  br label %do.body2447

do.body2447:                                      ; preds = %do.end2446
  %C2448 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %846 = load i32, i32* %C2448, align 4
  %shl2449 = shl i32 %846, 5
  %C2450 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %847 = load i32, i32* %C2450, align 4
  %and2451 = and i32 %847, -1
  %shr2452 = lshr i32 %and2451, 27
  %or2453 = or i32 %shl2449, %shr2452
  %D2454 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %848 = load i32, i32* %D2454, align 4
  %E2455 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %849 = load i32, i32* %E2455, align 4
  %and2456 = and i32 %848, %849
  %A2457 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %850 = load i32, i32* %A2457, align 4
  %D2458 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %851 = load i32, i32* %D2458, align 4
  %E2459 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %852 = load i32, i32* %E2459, align 4
  %or2460 = or i32 %851, %852
  %and2461 = and i32 %850, %or2460
  %or2462 = or i32 %and2456, %and2461
  %add2463 = add i32 %or2453, %or2462
  %add2464 = add i32 %add2463, -1894007588
  %W2465 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2466 = getelementptr inbounds [16 x i32], [16 x i32]* %W2465, i64 0, i64 2
  %853 = load i32, i32* %arrayidx2466, align 4
  %W2467 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2468 = getelementptr inbounds [16 x i32], [16 x i32]* %W2467, i64 0, i64 13
  %854 = load i32, i32* %arrayidx2468, align 4
  %xor2469 = xor i32 %853, %854
  %W2470 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2471 = getelementptr inbounds [16 x i32], [16 x i32]* %W2470, i64 0, i64 7
  %855 = load i32, i32* %arrayidx2471, align 4
  %xor2472 = xor i32 %xor2469, %855
  %W2473 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2474 = getelementptr inbounds [16 x i32], [16 x i32]* %W2473, i64 0, i64 5
  %856 = load i32, i32* %arrayidx2474, align 4
  %xor2475 = xor i32 %xor2472, %856
  %temp2476 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2475, i32* %temp2476, align 4
  %temp2477 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %857 = load i32, i32* %temp2477, align 4
  %shl2478 = shl i32 %857, 1
  %temp2479 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %858 = load i32, i32* %temp2479, align 4
  %and2480 = and i32 %858, -1
  %shr2481 = lshr i32 %and2480, 31
  %or2482 = or i32 %shl2478, %shr2481
  %W2483 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2484 = getelementptr inbounds [16 x i32], [16 x i32]* %W2483, i64 0, i64 5
  store i32 %or2482, i32* %arrayidx2484, align 4
  %add2485 = add i32 %add2464, %or2482
  %B2486 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %859 = load i32, i32* %B2486, align 4
  %add2487 = add i32 %859, %add2485
  store i32 %add2487, i32* %B2486, align 4
  %D2488 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %860 = load i32, i32* %D2488, align 4
  %shl2489 = shl i32 %860, 30
  %D2490 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %861 = load i32, i32* %D2490, align 4
  %and2491 = and i32 %861, -1
  %shr2492 = lshr i32 %and2491, 2
  %or2493 = or i32 %shl2489, %shr2492
  %D2494 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or2493, i32* %D2494, align 4
  br label %do.end2495

do.end2495:                                       ; preds = %do.body2447
  br label %do.body2496

do.body2496:                                      ; preds = %do.end2495
  %B2497 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %862 = load i32, i32* %B2497, align 4
  %shl2498 = shl i32 %862, 5
  %B2499 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %863 = load i32, i32* %B2499, align 4
  %and2500 = and i32 %863, -1
  %shr2501 = lshr i32 %and2500, 27
  %or2502 = or i32 %shl2498, %shr2501
  %C2503 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %864 = load i32, i32* %C2503, align 4
  %D2504 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %865 = load i32, i32* %D2504, align 4
  %and2505 = and i32 %864, %865
  %E2506 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %866 = load i32, i32* %E2506, align 4
  %C2507 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %867 = load i32, i32* %C2507, align 4
  %D2508 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %868 = load i32, i32* %D2508, align 4
  %or2509 = or i32 %867, %868
  %and2510 = and i32 %866, %or2509
  %or2511 = or i32 %and2505, %and2510
  %add2512 = add i32 %or2502, %or2511
  %add2513 = add i32 %add2512, -1894007588
  %W2514 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2515 = getelementptr inbounds [16 x i32], [16 x i32]* %W2514, i64 0, i64 3
  %869 = load i32, i32* %arrayidx2515, align 4
  %W2516 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2517 = getelementptr inbounds [16 x i32], [16 x i32]* %W2516, i64 0, i64 14
  %870 = load i32, i32* %arrayidx2517, align 4
  %xor2518 = xor i32 %869, %870
  %W2519 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2520 = getelementptr inbounds [16 x i32], [16 x i32]* %W2519, i64 0, i64 8
  %871 = load i32, i32* %arrayidx2520, align 4
  %xor2521 = xor i32 %xor2518, %871
  %W2522 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2523 = getelementptr inbounds [16 x i32], [16 x i32]* %W2522, i64 0, i64 6
  %872 = load i32, i32* %arrayidx2523, align 4
  %xor2524 = xor i32 %xor2521, %872
  %temp2525 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2524, i32* %temp2525, align 4
  %temp2526 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %873 = load i32, i32* %temp2526, align 4
  %shl2527 = shl i32 %873, 1
  %temp2528 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %874 = load i32, i32* %temp2528, align 4
  %and2529 = and i32 %874, -1
  %shr2530 = lshr i32 %and2529, 31
  %or2531 = or i32 %shl2527, %shr2530
  %W2532 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2533 = getelementptr inbounds [16 x i32], [16 x i32]* %W2532, i64 0, i64 6
  store i32 %or2531, i32* %arrayidx2533, align 4
  %add2534 = add i32 %add2513, %or2531
  %A2535 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %875 = load i32, i32* %A2535, align 4
  %add2536 = add i32 %875, %add2534
  store i32 %add2536, i32* %A2535, align 4
  %C2537 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %876 = load i32, i32* %C2537, align 4
  %shl2538 = shl i32 %876, 30
  %C2539 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %877 = load i32, i32* %C2539, align 4
  %and2540 = and i32 %877, -1
  %shr2541 = lshr i32 %and2540, 2
  %or2542 = or i32 %shl2538, %shr2541
  %C2543 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or2542, i32* %C2543, align 4
  br label %do.end2544

do.end2544:                                       ; preds = %do.body2496
  br label %do.body2545

do.body2545:                                      ; preds = %do.end2544
  %A2546 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %878 = load i32, i32* %A2546, align 4
  %shl2547 = shl i32 %878, 5
  %A2548 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %879 = load i32, i32* %A2548, align 4
  %and2549 = and i32 %879, -1
  %shr2550 = lshr i32 %and2549, 27
  %or2551 = or i32 %shl2547, %shr2550
  %B2552 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %880 = load i32, i32* %B2552, align 4
  %C2553 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %881 = load i32, i32* %C2553, align 4
  %and2554 = and i32 %880, %881
  %D2555 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %882 = load i32, i32* %D2555, align 4
  %B2556 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %883 = load i32, i32* %B2556, align 4
  %C2557 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %884 = load i32, i32* %C2557, align 4
  %or2558 = or i32 %883, %884
  %and2559 = and i32 %882, %or2558
  %or2560 = or i32 %and2554, %and2559
  %add2561 = add i32 %or2551, %or2560
  %add2562 = add i32 %add2561, -1894007588
  %W2563 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2564 = getelementptr inbounds [16 x i32], [16 x i32]* %W2563, i64 0, i64 4
  %885 = load i32, i32* %arrayidx2564, align 4
  %W2565 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2566 = getelementptr inbounds [16 x i32], [16 x i32]* %W2565, i64 0, i64 15
  %886 = load i32, i32* %arrayidx2566, align 4
  %xor2567 = xor i32 %885, %886
  %W2568 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2569 = getelementptr inbounds [16 x i32], [16 x i32]* %W2568, i64 0, i64 9
  %887 = load i32, i32* %arrayidx2569, align 4
  %xor2570 = xor i32 %xor2567, %887
  %W2571 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2572 = getelementptr inbounds [16 x i32], [16 x i32]* %W2571, i64 0, i64 7
  %888 = load i32, i32* %arrayidx2572, align 4
  %xor2573 = xor i32 %xor2570, %888
  %temp2574 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2573, i32* %temp2574, align 4
  %temp2575 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %889 = load i32, i32* %temp2575, align 4
  %shl2576 = shl i32 %889, 1
  %temp2577 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %890 = load i32, i32* %temp2577, align 4
  %and2578 = and i32 %890, -1
  %shr2579 = lshr i32 %and2578, 31
  %or2580 = or i32 %shl2576, %shr2579
  %W2581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2582 = getelementptr inbounds [16 x i32], [16 x i32]* %W2581, i64 0, i64 7
  store i32 %or2580, i32* %arrayidx2582, align 4
  %add2583 = add i32 %add2562, %or2580
  %E2584 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %891 = load i32, i32* %E2584, align 4
  %add2585 = add i32 %891, %add2583
  store i32 %add2585, i32* %E2584, align 4
  %B2586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %892 = load i32, i32* %B2586, align 4
  %shl2587 = shl i32 %892, 30
  %B2588 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %893 = load i32, i32* %B2588, align 4
  %and2589 = and i32 %893, -1
  %shr2590 = lshr i32 %and2589, 2
  %or2591 = or i32 %shl2587, %shr2590
  %B2592 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or2591, i32* %B2592, align 4
  br label %do.end2593

do.end2593:                                       ; preds = %do.body2545
  br label %do.body2594

do.body2594:                                      ; preds = %do.end2593
  %E2595 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %894 = load i32, i32* %E2595, align 4
  %shl2596 = shl i32 %894, 5
  %E2597 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %895 = load i32, i32* %E2597, align 4
  %and2598 = and i32 %895, -1
  %shr2599 = lshr i32 %and2598, 27
  %or2600 = or i32 %shl2596, %shr2599
  %A2601 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %896 = load i32, i32* %A2601, align 4
  %B2602 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %897 = load i32, i32* %B2602, align 4
  %and2603 = and i32 %896, %897
  %C2604 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %898 = load i32, i32* %C2604, align 4
  %A2605 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %899 = load i32, i32* %A2605, align 4
  %B2606 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %900 = load i32, i32* %B2606, align 4
  %or2607 = or i32 %899, %900
  %and2608 = and i32 %898, %or2607
  %or2609 = or i32 %and2603, %and2608
  %add2610 = add i32 %or2600, %or2609
  %add2611 = add i32 %add2610, -1894007588
  %W2612 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2613 = getelementptr inbounds [16 x i32], [16 x i32]* %W2612, i64 0, i64 5
  %901 = load i32, i32* %arrayidx2613, align 4
  %W2614 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2615 = getelementptr inbounds [16 x i32], [16 x i32]* %W2614, i64 0, i64 0
  %902 = load i32, i32* %arrayidx2615, align 4
  %xor2616 = xor i32 %901, %902
  %W2617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2618 = getelementptr inbounds [16 x i32], [16 x i32]* %W2617, i64 0, i64 10
  %903 = load i32, i32* %arrayidx2618, align 4
  %xor2619 = xor i32 %xor2616, %903
  %W2620 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2621 = getelementptr inbounds [16 x i32], [16 x i32]* %W2620, i64 0, i64 8
  %904 = load i32, i32* %arrayidx2621, align 4
  %xor2622 = xor i32 %xor2619, %904
  %temp2623 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2622, i32* %temp2623, align 4
  %temp2624 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %905 = load i32, i32* %temp2624, align 4
  %shl2625 = shl i32 %905, 1
  %temp2626 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %906 = load i32, i32* %temp2626, align 4
  %and2627 = and i32 %906, -1
  %shr2628 = lshr i32 %and2627, 31
  %or2629 = or i32 %shl2625, %shr2628
  %W2630 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2631 = getelementptr inbounds [16 x i32], [16 x i32]* %W2630, i64 0, i64 8
  store i32 %or2629, i32* %arrayidx2631, align 4
  %add2632 = add i32 %add2611, %or2629
  %D2633 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %907 = load i32, i32* %D2633, align 4
  %add2634 = add i32 %907, %add2632
  store i32 %add2634, i32* %D2633, align 4
  %A2635 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %908 = load i32, i32* %A2635, align 4
  %shl2636 = shl i32 %908, 30
  %A2637 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %909 = load i32, i32* %A2637, align 4
  %and2638 = and i32 %909, -1
  %shr2639 = lshr i32 %and2638, 2
  %or2640 = or i32 %shl2636, %shr2639
  %A2641 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or2640, i32* %A2641, align 4
  br label %do.end2642

do.end2642:                                       ; preds = %do.body2594
  br label %do.body2643

do.body2643:                                      ; preds = %do.end2642
  %D2644 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %910 = load i32, i32* %D2644, align 4
  %shl2645 = shl i32 %910, 5
  %D2646 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %911 = load i32, i32* %D2646, align 4
  %and2647 = and i32 %911, -1
  %shr2648 = lshr i32 %and2647, 27
  %or2649 = or i32 %shl2645, %shr2648
  %E2650 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %912 = load i32, i32* %E2650, align 4
  %A2651 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %913 = load i32, i32* %A2651, align 4
  %and2652 = and i32 %912, %913
  %B2653 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %914 = load i32, i32* %B2653, align 4
  %E2654 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %915 = load i32, i32* %E2654, align 4
  %A2655 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %916 = load i32, i32* %A2655, align 4
  %or2656 = or i32 %915, %916
  %and2657 = and i32 %914, %or2656
  %or2658 = or i32 %and2652, %and2657
  %add2659 = add i32 %or2649, %or2658
  %add2660 = add i32 %add2659, -1894007588
  %W2661 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2662 = getelementptr inbounds [16 x i32], [16 x i32]* %W2661, i64 0, i64 6
  %917 = load i32, i32* %arrayidx2662, align 4
  %W2663 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2664 = getelementptr inbounds [16 x i32], [16 x i32]* %W2663, i64 0, i64 1
  %918 = load i32, i32* %arrayidx2664, align 4
  %xor2665 = xor i32 %917, %918
  %W2666 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2667 = getelementptr inbounds [16 x i32], [16 x i32]* %W2666, i64 0, i64 11
  %919 = load i32, i32* %arrayidx2667, align 4
  %xor2668 = xor i32 %xor2665, %919
  %W2669 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2670 = getelementptr inbounds [16 x i32], [16 x i32]* %W2669, i64 0, i64 9
  %920 = load i32, i32* %arrayidx2670, align 4
  %xor2671 = xor i32 %xor2668, %920
  %temp2672 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2671, i32* %temp2672, align 4
  %temp2673 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %921 = load i32, i32* %temp2673, align 4
  %shl2674 = shl i32 %921, 1
  %temp2675 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %922 = load i32, i32* %temp2675, align 4
  %and2676 = and i32 %922, -1
  %shr2677 = lshr i32 %and2676, 31
  %or2678 = or i32 %shl2674, %shr2677
  %W2679 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2680 = getelementptr inbounds [16 x i32], [16 x i32]* %W2679, i64 0, i64 9
  store i32 %or2678, i32* %arrayidx2680, align 4
  %add2681 = add i32 %add2660, %or2678
  %C2682 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %923 = load i32, i32* %C2682, align 4
  %add2683 = add i32 %923, %add2681
  store i32 %add2683, i32* %C2682, align 4
  %E2684 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %924 = load i32, i32* %E2684, align 4
  %shl2685 = shl i32 %924, 30
  %E2686 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %925 = load i32, i32* %E2686, align 4
  %and2687 = and i32 %925, -1
  %shr2688 = lshr i32 %and2687, 2
  %or2689 = or i32 %shl2685, %shr2688
  %E2690 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or2689, i32* %E2690, align 4
  br label %do.end2691

do.end2691:                                       ; preds = %do.body2643
  br label %do.body2692

do.body2692:                                      ; preds = %do.end2691
  %C2693 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %926 = load i32, i32* %C2693, align 4
  %shl2694 = shl i32 %926, 5
  %C2695 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %927 = load i32, i32* %C2695, align 4
  %and2696 = and i32 %927, -1
  %shr2697 = lshr i32 %and2696, 27
  %or2698 = or i32 %shl2694, %shr2697
  %D2699 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %928 = load i32, i32* %D2699, align 4
  %E2700 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %929 = load i32, i32* %E2700, align 4
  %and2701 = and i32 %928, %929
  %A2702 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %930 = load i32, i32* %A2702, align 4
  %D2703 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %931 = load i32, i32* %D2703, align 4
  %E2704 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %932 = load i32, i32* %E2704, align 4
  %or2705 = or i32 %931, %932
  %and2706 = and i32 %930, %or2705
  %or2707 = or i32 %and2701, %and2706
  %add2708 = add i32 %or2698, %or2707
  %add2709 = add i32 %add2708, -1894007588
  %W2710 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2711 = getelementptr inbounds [16 x i32], [16 x i32]* %W2710, i64 0, i64 7
  %933 = load i32, i32* %arrayidx2711, align 4
  %W2712 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2713 = getelementptr inbounds [16 x i32], [16 x i32]* %W2712, i64 0, i64 2
  %934 = load i32, i32* %arrayidx2713, align 4
  %xor2714 = xor i32 %933, %934
  %W2715 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2716 = getelementptr inbounds [16 x i32], [16 x i32]* %W2715, i64 0, i64 12
  %935 = load i32, i32* %arrayidx2716, align 4
  %xor2717 = xor i32 %xor2714, %935
  %W2718 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2719 = getelementptr inbounds [16 x i32], [16 x i32]* %W2718, i64 0, i64 10
  %936 = load i32, i32* %arrayidx2719, align 4
  %xor2720 = xor i32 %xor2717, %936
  %temp2721 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2720, i32* %temp2721, align 4
  %temp2722 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %937 = load i32, i32* %temp2722, align 4
  %shl2723 = shl i32 %937, 1
  %temp2724 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %938 = load i32, i32* %temp2724, align 4
  %and2725 = and i32 %938, -1
  %shr2726 = lshr i32 %and2725, 31
  %or2727 = or i32 %shl2723, %shr2726
  %W2728 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2729 = getelementptr inbounds [16 x i32], [16 x i32]* %W2728, i64 0, i64 10
  store i32 %or2727, i32* %arrayidx2729, align 4
  %add2730 = add i32 %add2709, %or2727
  %B2731 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %939 = load i32, i32* %B2731, align 4
  %add2732 = add i32 %939, %add2730
  store i32 %add2732, i32* %B2731, align 4
  %D2733 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %940 = load i32, i32* %D2733, align 4
  %shl2734 = shl i32 %940, 30
  %D2735 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %941 = load i32, i32* %D2735, align 4
  %and2736 = and i32 %941, -1
  %shr2737 = lshr i32 %and2736, 2
  %or2738 = or i32 %shl2734, %shr2737
  %D2739 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or2738, i32* %D2739, align 4
  br label %do.end2740

do.end2740:                                       ; preds = %do.body2692
  br label %do.body2741

do.body2741:                                      ; preds = %do.end2740
  %B2742 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %942 = load i32, i32* %B2742, align 4
  %shl2743 = shl i32 %942, 5
  %B2744 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %943 = load i32, i32* %B2744, align 4
  %and2745 = and i32 %943, -1
  %shr2746 = lshr i32 %and2745, 27
  %or2747 = or i32 %shl2743, %shr2746
  %C2748 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %944 = load i32, i32* %C2748, align 4
  %D2749 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %945 = load i32, i32* %D2749, align 4
  %and2750 = and i32 %944, %945
  %E2751 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %946 = load i32, i32* %E2751, align 4
  %C2752 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %947 = load i32, i32* %C2752, align 4
  %D2753 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %948 = load i32, i32* %D2753, align 4
  %or2754 = or i32 %947, %948
  %and2755 = and i32 %946, %or2754
  %or2756 = or i32 %and2750, %and2755
  %add2757 = add i32 %or2747, %or2756
  %add2758 = add i32 %add2757, -1894007588
  %W2759 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2760 = getelementptr inbounds [16 x i32], [16 x i32]* %W2759, i64 0, i64 8
  %949 = load i32, i32* %arrayidx2760, align 4
  %W2761 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2762 = getelementptr inbounds [16 x i32], [16 x i32]* %W2761, i64 0, i64 3
  %950 = load i32, i32* %arrayidx2762, align 4
  %xor2763 = xor i32 %949, %950
  %W2764 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2765 = getelementptr inbounds [16 x i32], [16 x i32]* %W2764, i64 0, i64 13
  %951 = load i32, i32* %arrayidx2765, align 4
  %xor2766 = xor i32 %xor2763, %951
  %W2767 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2768 = getelementptr inbounds [16 x i32], [16 x i32]* %W2767, i64 0, i64 11
  %952 = load i32, i32* %arrayidx2768, align 4
  %xor2769 = xor i32 %xor2766, %952
  %temp2770 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2769, i32* %temp2770, align 4
  %temp2771 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %953 = load i32, i32* %temp2771, align 4
  %shl2772 = shl i32 %953, 1
  %temp2773 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %954 = load i32, i32* %temp2773, align 4
  %and2774 = and i32 %954, -1
  %shr2775 = lshr i32 %and2774, 31
  %or2776 = or i32 %shl2772, %shr2775
  %W2777 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2778 = getelementptr inbounds [16 x i32], [16 x i32]* %W2777, i64 0, i64 11
  store i32 %or2776, i32* %arrayidx2778, align 4
  %add2779 = add i32 %add2758, %or2776
  %A2780 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %955 = load i32, i32* %A2780, align 4
  %add2781 = add i32 %955, %add2779
  store i32 %add2781, i32* %A2780, align 4
  %C2782 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %956 = load i32, i32* %C2782, align 4
  %shl2783 = shl i32 %956, 30
  %C2784 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %957 = load i32, i32* %C2784, align 4
  %and2785 = and i32 %957, -1
  %shr2786 = lshr i32 %and2785, 2
  %or2787 = or i32 %shl2783, %shr2786
  %C2788 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or2787, i32* %C2788, align 4
  br label %do.end2789

do.end2789:                                       ; preds = %do.body2741
  br label %do.body2790

do.body2790:                                      ; preds = %do.end2789
  %A2791 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %958 = load i32, i32* %A2791, align 4
  %shl2792 = shl i32 %958, 5
  %A2793 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %959 = load i32, i32* %A2793, align 4
  %and2794 = and i32 %959, -1
  %shr2795 = lshr i32 %and2794, 27
  %or2796 = or i32 %shl2792, %shr2795
  %B2797 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %960 = load i32, i32* %B2797, align 4
  %C2798 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %961 = load i32, i32* %C2798, align 4
  %xor2799 = xor i32 %960, %961
  %D2800 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %962 = load i32, i32* %D2800, align 4
  %xor2801 = xor i32 %xor2799, %962
  %add2802 = add i32 %or2796, %xor2801
  %add2803 = add i32 %add2802, -899497514
  %W2804 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2805 = getelementptr inbounds [16 x i32], [16 x i32]* %W2804, i64 0, i64 9
  %963 = load i32, i32* %arrayidx2805, align 4
  %W2806 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2807 = getelementptr inbounds [16 x i32], [16 x i32]* %W2806, i64 0, i64 4
  %964 = load i32, i32* %arrayidx2807, align 4
  %xor2808 = xor i32 %963, %964
  %W2809 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2810 = getelementptr inbounds [16 x i32], [16 x i32]* %W2809, i64 0, i64 14
  %965 = load i32, i32* %arrayidx2810, align 4
  %xor2811 = xor i32 %xor2808, %965
  %W2812 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2813 = getelementptr inbounds [16 x i32], [16 x i32]* %W2812, i64 0, i64 12
  %966 = load i32, i32* %arrayidx2813, align 4
  %xor2814 = xor i32 %xor2811, %966
  %temp2815 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2814, i32* %temp2815, align 4
  %temp2816 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %967 = load i32, i32* %temp2816, align 4
  %shl2817 = shl i32 %967, 1
  %temp2818 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %968 = load i32, i32* %temp2818, align 4
  %and2819 = and i32 %968, -1
  %shr2820 = lshr i32 %and2819, 31
  %or2821 = or i32 %shl2817, %shr2820
  %W2822 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2823 = getelementptr inbounds [16 x i32], [16 x i32]* %W2822, i64 0, i64 12
  store i32 %or2821, i32* %arrayidx2823, align 4
  %add2824 = add i32 %add2803, %or2821
  %E2825 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %969 = load i32, i32* %E2825, align 4
  %add2826 = add i32 %969, %add2824
  store i32 %add2826, i32* %E2825, align 4
  %B2827 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %970 = load i32, i32* %B2827, align 4
  %shl2828 = shl i32 %970, 30
  %B2829 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %971 = load i32, i32* %B2829, align 4
  %and2830 = and i32 %971, -1
  %shr2831 = lshr i32 %and2830, 2
  %or2832 = or i32 %shl2828, %shr2831
  %B2833 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or2832, i32* %B2833, align 4
  br label %do.end2834

do.end2834:                                       ; preds = %do.body2790
  br label %do.body2835

do.body2835:                                      ; preds = %do.end2834
  %E2836 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %972 = load i32, i32* %E2836, align 4
  %shl2837 = shl i32 %972, 5
  %E2838 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %973 = load i32, i32* %E2838, align 4
  %and2839 = and i32 %973, -1
  %shr2840 = lshr i32 %and2839, 27
  %or2841 = or i32 %shl2837, %shr2840
  %A2842 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %974 = load i32, i32* %A2842, align 4
  %B2843 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %975 = load i32, i32* %B2843, align 4
  %xor2844 = xor i32 %974, %975
  %C2845 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %976 = load i32, i32* %C2845, align 4
  %xor2846 = xor i32 %xor2844, %976
  %add2847 = add i32 %or2841, %xor2846
  %add2848 = add i32 %add2847, -899497514
  %W2849 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2850 = getelementptr inbounds [16 x i32], [16 x i32]* %W2849, i64 0, i64 10
  %977 = load i32, i32* %arrayidx2850, align 4
  %W2851 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2852 = getelementptr inbounds [16 x i32], [16 x i32]* %W2851, i64 0, i64 5
  %978 = load i32, i32* %arrayidx2852, align 4
  %xor2853 = xor i32 %977, %978
  %W2854 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2855 = getelementptr inbounds [16 x i32], [16 x i32]* %W2854, i64 0, i64 15
  %979 = load i32, i32* %arrayidx2855, align 4
  %xor2856 = xor i32 %xor2853, %979
  %W2857 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2858 = getelementptr inbounds [16 x i32], [16 x i32]* %W2857, i64 0, i64 13
  %980 = load i32, i32* %arrayidx2858, align 4
  %xor2859 = xor i32 %xor2856, %980
  %temp2860 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2859, i32* %temp2860, align 4
  %temp2861 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %981 = load i32, i32* %temp2861, align 4
  %shl2862 = shl i32 %981, 1
  %temp2863 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %982 = load i32, i32* %temp2863, align 4
  %and2864 = and i32 %982, -1
  %shr2865 = lshr i32 %and2864, 31
  %or2866 = or i32 %shl2862, %shr2865
  %W2867 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2868 = getelementptr inbounds [16 x i32], [16 x i32]* %W2867, i64 0, i64 13
  store i32 %or2866, i32* %arrayidx2868, align 4
  %add2869 = add i32 %add2848, %or2866
  %D2870 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %983 = load i32, i32* %D2870, align 4
  %add2871 = add i32 %983, %add2869
  store i32 %add2871, i32* %D2870, align 4
  %A2872 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %984 = load i32, i32* %A2872, align 4
  %shl2873 = shl i32 %984, 30
  %A2874 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %985 = load i32, i32* %A2874, align 4
  %and2875 = and i32 %985, -1
  %shr2876 = lshr i32 %and2875, 2
  %or2877 = or i32 %shl2873, %shr2876
  %A2878 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or2877, i32* %A2878, align 4
  br label %do.end2879

do.end2879:                                       ; preds = %do.body2835
  br label %do.body2880

do.body2880:                                      ; preds = %do.end2879
  %D2881 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %986 = load i32, i32* %D2881, align 4
  %shl2882 = shl i32 %986, 5
  %D2883 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %987 = load i32, i32* %D2883, align 4
  %and2884 = and i32 %987, -1
  %shr2885 = lshr i32 %and2884, 27
  %or2886 = or i32 %shl2882, %shr2885
  %E2887 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %988 = load i32, i32* %E2887, align 4
  %A2888 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %989 = load i32, i32* %A2888, align 4
  %xor2889 = xor i32 %988, %989
  %B2890 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %990 = load i32, i32* %B2890, align 4
  %xor2891 = xor i32 %xor2889, %990
  %add2892 = add i32 %or2886, %xor2891
  %add2893 = add i32 %add2892, -899497514
  %W2894 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2895 = getelementptr inbounds [16 x i32], [16 x i32]* %W2894, i64 0, i64 11
  %991 = load i32, i32* %arrayidx2895, align 4
  %W2896 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2897 = getelementptr inbounds [16 x i32], [16 x i32]* %W2896, i64 0, i64 6
  %992 = load i32, i32* %arrayidx2897, align 4
  %xor2898 = xor i32 %991, %992
  %W2899 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2900 = getelementptr inbounds [16 x i32], [16 x i32]* %W2899, i64 0, i64 0
  %993 = load i32, i32* %arrayidx2900, align 4
  %xor2901 = xor i32 %xor2898, %993
  %W2902 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2903 = getelementptr inbounds [16 x i32], [16 x i32]* %W2902, i64 0, i64 14
  %994 = load i32, i32* %arrayidx2903, align 4
  %xor2904 = xor i32 %xor2901, %994
  %temp2905 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2904, i32* %temp2905, align 4
  %temp2906 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %995 = load i32, i32* %temp2906, align 4
  %shl2907 = shl i32 %995, 1
  %temp2908 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %996 = load i32, i32* %temp2908, align 4
  %and2909 = and i32 %996, -1
  %shr2910 = lshr i32 %and2909, 31
  %or2911 = or i32 %shl2907, %shr2910
  %W2912 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2913 = getelementptr inbounds [16 x i32], [16 x i32]* %W2912, i64 0, i64 14
  store i32 %or2911, i32* %arrayidx2913, align 4
  %add2914 = add i32 %add2893, %or2911
  %C2915 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %997 = load i32, i32* %C2915, align 4
  %add2916 = add i32 %997, %add2914
  store i32 %add2916, i32* %C2915, align 4
  %E2917 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %998 = load i32, i32* %E2917, align 4
  %shl2918 = shl i32 %998, 30
  %E2919 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %999 = load i32, i32* %E2919, align 4
  %and2920 = and i32 %999, -1
  %shr2921 = lshr i32 %and2920, 2
  %or2922 = or i32 %shl2918, %shr2921
  %E2923 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or2922, i32* %E2923, align 4
  br label %do.end2924

do.end2924:                                       ; preds = %do.body2880
  br label %do.body2925

do.body2925:                                      ; preds = %do.end2924
  %C2926 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1000 = load i32, i32* %C2926, align 4
  %shl2927 = shl i32 %1000, 5
  %C2928 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1001 = load i32, i32* %C2928, align 4
  %and2929 = and i32 %1001, -1
  %shr2930 = lshr i32 %and2929, 27
  %or2931 = or i32 %shl2927, %shr2930
  %D2932 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1002 = load i32, i32* %D2932, align 4
  %E2933 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1003 = load i32, i32* %E2933, align 4
  %xor2934 = xor i32 %1002, %1003
  %A2935 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1004 = load i32, i32* %A2935, align 4
  %xor2936 = xor i32 %xor2934, %1004
  %add2937 = add i32 %or2931, %xor2936
  %add2938 = add i32 %add2937, -899497514
  %W2939 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2940 = getelementptr inbounds [16 x i32], [16 x i32]* %W2939, i64 0, i64 12
  %1005 = load i32, i32* %arrayidx2940, align 4
  %W2941 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2942 = getelementptr inbounds [16 x i32], [16 x i32]* %W2941, i64 0, i64 7
  %1006 = load i32, i32* %arrayidx2942, align 4
  %xor2943 = xor i32 %1005, %1006
  %W2944 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2945 = getelementptr inbounds [16 x i32], [16 x i32]* %W2944, i64 0, i64 1
  %1007 = load i32, i32* %arrayidx2945, align 4
  %xor2946 = xor i32 %xor2943, %1007
  %W2947 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2948 = getelementptr inbounds [16 x i32], [16 x i32]* %W2947, i64 0, i64 15
  %1008 = load i32, i32* %arrayidx2948, align 4
  %xor2949 = xor i32 %xor2946, %1008
  %temp2950 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2949, i32* %temp2950, align 4
  %temp2951 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1009 = load i32, i32* %temp2951, align 4
  %shl2952 = shl i32 %1009, 1
  %temp2953 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1010 = load i32, i32* %temp2953, align 4
  %and2954 = and i32 %1010, -1
  %shr2955 = lshr i32 %and2954, 31
  %or2956 = or i32 %shl2952, %shr2955
  %W2957 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2958 = getelementptr inbounds [16 x i32], [16 x i32]* %W2957, i64 0, i64 15
  store i32 %or2956, i32* %arrayidx2958, align 4
  %add2959 = add i32 %add2938, %or2956
  %B2960 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1011 = load i32, i32* %B2960, align 4
  %add2961 = add i32 %1011, %add2959
  store i32 %add2961, i32* %B2960, align 4
  %D2962 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1012 = load i32, i32* %D2962, align 4
  %shl2963 = shl i32 %1012, 30
  %D2964 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1013 = load i32, i32* %D2964, align 4
  %and2965 = and i32 %1013, -1
  %shr2966 = lshr i32 %and2965, 2
  %or2967 = or i32 %shl2963, %shr2966
  %D2968 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or2967, i32* %D2968, align 4
  br label %do.end2969

do.end2969:                                       ; preds = %do.body2925
  br label %do.body2970

do.body2970:                                      ; preds = %do.end2969
  %B2971 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1014 = load i32, i32* %B2971, align 4
  %shl2972 = shl i32 %1014, 5
  %B2973 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1015 = load i32, i32* %B2973, align 4
  %and2974 = and i32 %1015, -1
  %shr2975 = lshr i32 %and2974, 27
  %or2976 = or i32 %shl2972, %shr2975
  %C2977 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1016 = load i32, i32* %C2977, align 4
  %D2978 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1017 = load i32, i32* %D2978, align 4
  %xor2979 = xor i32 %1016, %1017
  %E2980 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1018 = load i32, i32* %E2980, align 4
  %xor2981 = xor i32 %xor2979, %1018
  %add2982 = add i32 %or2976, %xor2981
  %add2983 = add i32 %add2982, -899497514
  %W2984 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2985 = getelementptr inbounds [16 x i32], [16 x i32]* %W2984, i64 0, i64 13
  %1019 = load i32, i32* %arrayidx2985, align 4
  %W2986 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2987 = getelementptr inbounds [16 x i32], [16 x i32]* %W2986, i64 0, i64 8
  %1020 = load i32, i32* %arrayidx2987, align 4
  %xor2988 = xor i32 %1019, %1020
  %W2989 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2990 = getelementptr inbounds [16 x i32], [16 x i32]* %W2989, i64 0, i64 2
  %1021 = load i32, i32* %arrayidx2990, align 4
  %xor2991 = xor i32 %xor2988, %1021
  %W2992 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx2993 = getelementptr inbounds [16 x i32], [16 x i32]* %W2992, i64 0, i64 0
  %1022 = load i32, i32* %arrayidx2993, align 4
  %xor2994 = xor i32 %xor2991, %1022
  %temp2995 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor2994, i32* %temp2995, align 4
  %temp2996 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1023 = load i32, i32* %temp2996, align 4
  %shl2997 = shl i32 %1023, 1
  %temp2998 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1024 = load i32, i32* %temp2998, align 4
  %and2999 = and i32 %1024, -1
  %shr3000 = lshr i32 %and2999, 31
  %or3001 = or i32 %shl2997, %shr3000
  %W3002 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3003 = getelementptr inbounds [16 x i32], [16 x i32]* %W3002, i64 0, i64 0
  store i32 %or3001, i32* %arrayidx3003, align 4
  %add3004 = add i32 %add2983, %or3001
  %A3005 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1025 = load i32, i32* %A3005, align 4
  %add3006 = add i32 %1025, %add3004
  store i32 %add3006, i32* %A3005, align 4
  %C3007 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1026 = load i32, i32* %C3007, align 4
  %shl3008 = shl i32 %1026, 30
  %C3009 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1027 = load i32, i32* %C3009, align 4
  %and3010 = and i32 %1027, -1
  %shr3011 = lshr i32 %and3010, 2
  %or3012 = or i32 %shl3008, %shr3011
  %C3013 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or3012, i32* %C3013, align 4
  br label %do.end3014

do.end3014:                                       ; preds = %do.body2970
  br label %do.body3015

do.body3015:                                      ; preds = %do.end3014
  %A3016 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1028 = load i32, i32* %A3016, align 4
  %shl3017 = shl i32 %1028, 5
  %A3018 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1029 = load i32, i32* %A3018, align 4
  %and3019 = and i32 %1029, -1
  %shr3020 = lshr i32 %and3019, 27
  %or3021 = or i32 %shl3017, %shr3020
  %B3022 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1030 = load i32, i32* %B3022, align 4
  %C3023 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1031 = load i32, i32* %C3023, align 4
  %xor3024 = xor i32 %1030, %1031
  %D3025 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1032 = load i32, i32* %D3025, align 4
  %xor3026 = xor i32 %xor3024, %1032
  %add3027 = add i32 %or3021, %xor3026
  %add3028 = add i32 %add3027, -899497514
  %W3029 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3030 = getelementptr inbounds [16 x i32], [16 x i32]* %W3029, i64 0, i64 14
  %1033 = load i32, i32* %arrayidx3030, align 4
  %W3031 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3032 = getelementptr inbounds [16 x i32], [16 x i32]* %W3031, i64 0, i64 9
  %1034 = load i32, i32* %arrayidx3032, align 4
  %xor3033 = xor i32 %1033, %1034
  %W3034 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3035 = getelementptr inbounds [16 x i32], [16 x i32]* %W3034, i64 0, i64 3
  %1035 = load i32, i32* %arrayidx3035, align 4
  %xor3036 = xor i32 %xor3033, %1035
  %W3037 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3038 = getelementptr inbounds [16 x i32], [16 x i32]* %W3037, i64 0, i64 1
  %1036 = load i32, i32* %arrayidx3038, align 4
  %xor3039 = xor i32 %xor3036, %1036
  %temp3040 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3039, i32* %temp3040, align 4
  %temp3041 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1037 = load i32, i32* %temp3041, align 4
  %shl3042 = shl i32 %1037, 1
  %temp3043 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1038 = load i32, i32* %temp3043, align 4
  %and3044 = and i32 %1038, -1
  %shr3045 = lshr i32 %and3044, 31
  %or3046 = or i32 %shl3042, %shr3045
  %W3047 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3048 = getelementptr inbounds [16 x i32], [16 x i32]* %W3047, i64 0, i64 1
  store i32 %or3046, i32* %arrayidx3048, align 4
  %add3049 = add i32 %add3028, %or3046
  %E3050 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1039 = load i32, i32* %E3050, align 4
  %add3051 = add i32 %1039, %add3049
  store i32 %add3051, i32* %E3050, align 4
  %B3052 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1040 = load i32, i32* %B3052, align 4
  %shl3053 = shl i32 %1040, 30
  %B3054 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1041 = load i32, i32* %B3054, align 4
  %and3055 = and i32 %1041, -1
  %shr3056 = lshr i32 %and3055, 2
  %or3057 = or i32 %shl3053, %shr3056
  %B3058 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or3057, i32* %B3058, align 4
  br label %do.end3059

do.end3059:                                       ; preds = %do.body3015
  br label %do.body3060

do.body3060:                                      ; preds = %do.end3059
  %E3061 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1042 = load i32, i32* %E3061, align 4
  %shl3062 = shl i32 %1042, 5
  %E3063 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1043 = load i32, i32* %E3063, align 4
  %and3064 = and i32 %1043, -1
  %shr3065 = lshr i32 %and3064, 27
  %or3066 = or i32 %shl3062, %shr3065
  %A3067 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1044 = load i32, i32* %A3067, align 4
  %B3068 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1045 = load i32, i32* %B3068, align 4
  %xor3069 = xor i32 %1044, %1045
  %C3070 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1046 = load i32, i32* %C3070, align 4
  %xor3071 = xor i32 %xor3069, %1046
  %add3072 = add i32 %or3066, %xor3071
  %add3073 = add i32 %add3072, -899497514
  %W3074 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3075 = getelementptr inbounds [16 x i32], [16 x i32]* %W3074, i64 0, i64 15
  %1047 = load i32, i32* %arrayidx3075, align 4
  %W3076 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3077 = getelementptr inbounds [16 x i32], [16 x i32]* %W3076, i64 0, i64 10
  %1048 = load i32, i32* %arrayidx3077, align 4
  %xor3078 = xor i32 %1047, %1048
  %W3079 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3080 = getelementptr inbounds [16 x i32], [16 x i32]* %W3079, i64 0, i64 4
  %1049 = load i32, i32* %arrayidx3080, align 4
  %xor3081 = xor i32 %xor3078, %1049
  %W3082 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3083 = getelementptr inbounds [16 x i32], [16 x i32]* %W3082, i64 0, i64 2
  %1050 = load i32, i32* %arrayidx3083, align 4
  %xor3084 = xor i32 %xor3081, %1050
  %temp3085 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3084, i32* %temp3085, align 4
  %temp3086 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1051 = load i32, i32* %temp3086, align 4
  %shl3087 = shl i32 %1051, 1
  %temp3088 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1052 = load i32, i32* %temp3088, align 4
  %and3089 = and i32 %1052, -1
  %shr3090 = lshr i32 %and3089, 31
  %or3091 = or i32 %shl3087, %shr3090
  %W3092 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3093 = getelementptr inbounds [16 x i32], [16 x i32]* %W3092, i64 0, i64 2
  store i32 %or3091, i32* %arrayidx3093, align 4
  %add3094 = add i32 %add3073, %or3091
  %D3095 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1053 = load i32, i32* %D3095, align 4
  %add3096 = add i32 %1053, %add3094
  store i32 %add3096, i32* %D3095, align 4
  %A3097 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1054 = load i32, i32* %A3097, align 4
  %shl3098 = shl i32 %1054, 30
  %A3099 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1055 = load i32, i32* %A3099, align 4
  %and3100 = and i32 %1055, -1
  %shr3101 = lshr i32 %and3100, 2
  %or3102 = or i32 %shl3098, %shr3101
  %A3103 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or3102, i32* %A3103, align 4
  br label %do.end3104

do.end3104:                                       ; preds = %do.body3060
  br label %do.body3105

do.body3105:                                      ; preds = %do.end3104
  %D3106 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1056 = load i32, i32* %D3106, align 4
  %shl3107 = shl i32 %1056, 5
  %D3108 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1057 = load i32, i32* %D3108, align 4
  %and3109 = and i32 %1057, -1
  %shr3110 = lshr i32 %and3109, 27
  %or3111 = or i32 %shl3107, %shr3110
  %E3112 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1058 = load i32, i32* %E3112, align 4
  %A3113 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1059 = load i32, i32* %A3113, align 4
  %xor3114 = xor i32 %1058, %1059
  %B3115 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1060 = load i32, i32* %B3115, align 4
  %xor3116 = xor i32 %xor3114, %1060
  %add3117 = add i32 %or3111, %xor3116
  %add3118 = add i32 %add3117, -899497514
  %W3119 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3120 = getelementptr inbounds [16 x i32], [16 x i32]* %W3119, i64 0, i64 0
  %1061 = load i32, i32* %arrayidx3120, align 4
  %W3121 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3122 = getelementptr inbounds [16 x i32], [16 x i32]* %W3121, i64 0, i64 11
  %1062 = load i32, i32* %arrayidx3122, align 4
  %xor3123 = xor i32 %1061, %1062
  %W3124 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3125 = getelementptr inbounds [16 x i32], [16 x i32]* %W3124, i64 0, i64 5
  %1063 = load i32, i32* %arrayidx3125, align 4
  %xor3126 = xor i32 %xor3123, %1063
  %W3127 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3128 = getelementptr inbounds [16 x i32], [16 x i32]* %W3127, i64 0, i64 3
  %1064 = load i32, i32* %arrayidx3128, align 4
  %xor3129 = xor i32 %xor3126, %1064
  %temp3130 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3129, i32* %temp3130, align 4
  %temp3131 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1065 = load i32, i32* %temp3131, align 4
  %shl3132 = shl i32 %1065, 1
  %temp3133 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1066 = load i32, i32* %temp3133, align 4
  %and3134 = and i32 %1066, -1
  %shr3135 = lshr i32 %and3134, 31
  %or3136 = or i32 %shl3132, %shr3135
  %W3137 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3138 = getelementptr inbounds [16 x i32], [16 x i32]* %W3137, i64 0, i64 3
  store i32 %or3136, i32* %arrayidx3138, align 4
  %add3139 = add i32 %add3118, %or3136
  %C3140 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1067 = load i32, i32* %C3140, align 4
  %add3141 = add i32 %1067, %add3139
  store i32 %add3141, i32* %C3140, align 4
  %E3142 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1068 = load i32, i32* %E3142, align 4
  %shl3143 = shl i32 %1068, 30
  %E3144 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1069 = load i32, i32* %E3144, align 4
  %and3145 = and i32 %1069, -1
  %shr3146 = lshr i32 %and3145, 2
  %or3147 = or i32 %shl3143, %shr3146
  %E3148 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or3147, i32* %E3148, align 4
  br label %do.end3149

do.end3149:                                       ; preds = %do.body3105
  br label %do.body3150

do.body3150:                                      ; preds = %do.end3149
  %C3151 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1070 = load i32, i32* %C3151, align 4
  %shl3152 = shl i32 %1070, 5
  %C3153 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1071 = load i32, i32* %C3153, align 4
  %and3154 = and i32 %1071, -1
  %shr3155 = lshr i32 %and3154, 27
  %or3156 = or i32 %shl3152, %shr3155
  %D3157 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1072 = load i32, i32* %D3157, align 4
  %E3158 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1073 = load i32, i32* %E3158, align 4
  %xor3159 = xor i32 %1072, %1073
  %A3160 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1074 = load i32, i32* %A3160, align 4
  %xor3161 = xor i32 %xor3159, %1074
  %add3162 = add i32 %or3156, %xor3161
  %add3163 = add i32 %add3162, -899497514
  %W3164 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3165 = getelementptr inbounds [16 x i32], [16 x i32]* %W3164, i64 0, i64 1
  %1075 = load i32, i32* %arrayidx3165, align 4
  %W3166 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3167 = getelementptr inbounds [16 x i32], [16 x i32]* %W3166, i64 0, i64 12
  %1076 = load i32, i32* %arrayidx3167, align 4
  %xor3168 = xor i32 %1075, %1076
  %W3169 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3170 = getelementptr inbounds [16 x i32], [16 x i32]* %W3169, i64 0, i64 6
  %1077 = load i32, i32* %arrayidx3170, align 4
  %xor3171 = xor i32 %xor3168, %1077
  %W3172 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3173 = getelementptr inbounds [16 x i32], [16 x i32]* %W3172, i64 0, i64 4
  %1078 = load i32, i32* %arrayidx3173, align 4
  %xor3174 = xor i32 %xor3171, %1078
  %temp3175 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3174, i32* %temp3175, align 4
  %temp3176 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1079 = load i32, i32* %temp3176, align 4
  %shl3177 = shl i32 %1079, 1
  %temp3178 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1080 = load i32, i32* %temp3178, align 4
  %and3179 = and i32 %1080, -1
  %shr3180 = lshr i32 %and3179, 31
  %or3181 = or i32 %shl3177, %shr3180
  %W3182 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3183 = getelementptr inbounds [16 x i32], [16 x i32]* %W3182, i64 0, i64 4
  store i32 %or3181, i32* %arrayidx3183, align 4
  %add3184 = add i32 %add3163, %or3181
  %B3185 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1081 = load i32, i32* %B3185, align 4
  %add3186 = add i32 %1081, %add3184
  store i32 %add3186, i32* %B3185, align 4
  %D3187 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1082 = load i32, i32* %D3187, align 4
  %shl3188 = shl i32 %1082, 30
  %D3189 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1083 = load i32, i32* %D3189, align 4
  %and3190 = and i32 %1083, -1
  %shr3191 = lshr i32 %and3190, 2
  %or3192 = or i32 %shl3188, %shr3191
  %D3193 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or3192, i32* %D3193, align 4
  br label %do.end3194

do.end3194:                                       ; preds = %do.body3150
  br label %do.body3195

do.body3195:                                      ; preds = %do.end3194
  %B3196 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1084 = load i32, i32* %B3196, align 4
  %shl3197 = shl i32 %1084, 5
  %B3198 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1085 = load i32, i32* %B3198, align 4
  %and3199 = and i32 %1085, -1
  %shr3200 = lshr i32 %and3199, 27
  %or3201 = or i32 %shl3197, %shr3200
  %C3202 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1086 = load i32, i32* %C3202, align 4
  %D3203 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1087 = load i32, i32* %D3203, align 4
  %xor3204 = xor i32 %1086, %1087
  %E3205 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1088 = load i32, i32* %E3205, align 4
  %xor3206 = xor i32 %xor3204, %1088
  %add3207 = add i32 %or3201, %xor3206
  %add3208 = add i32 %add3207, -899497514
  %W3209 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3210 = getelementptr inbounds [16 x i32], [16 x i32]* %W3209, i64 0, i64 2
  %1089 = load i32, i32* %arrayidx3210, align 4
  %W3211 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3212 = getelementptr inbounds [16 x i32], [16 x i32]* %W3211, i64 0, i64 13
  %1090 = load i32, i32* %arrayidx3212, align 4
  %xor3213 = xor i32 %1089, %1090
  %W3214 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3215 = getelementptr inbounds [16 x i32], [16 x i32]* %W3214, i64 0, i64 7
  %1091 = load i32, i32* %arrayidx3215, align 4
  %xor3216 = xor i32 %xor3213, %1091
  %W3217 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3218 = getelementptr inbounds [16 x i32], [16 x i32]* %W3217, i64 0, i64 5
  %1092 = load i32, i32* %arrayidx3218, align 4
  %xor3219 = xor i32 %xor3216, %1092
  %temp3220 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3219, i32* %temp3220, align 4
  %temp3221 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1093 = load i32, i32* %temp3221, align 4
  %shl3222 = shl i32 %1093, 1
  %temp3223 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1094 = load i32, i32* %temp3223, align 4
  %and3224 = and i32 %1094, -1
  %shr3225 = lshr i32 %and3224, 31
  %or3226 = or i32 %shl3222, %shr3225
  %W3227 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3228 = getelementptr inbounds [16 x i32], [16 x i32]* %W3227, i64 0, i64 5
  store i32 %or3226, i32* %arrayidx3228, align 4
  %add3229 = add i32 %add3208, %or3226
  %A3230 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1095 = load i32, i32* %A3230, align 4
  %add3231 = add i32 %1095, %add3229
  store i32 %add3231, i32* %A3230, align 4
  %C3232 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1096 = load i32, i32* %C3232, align 4
  %shl3233 = shl i32 %1096, 30
  %C3234 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1097 = load i32, i32* %C3234, align 4
  %and3235 = and i32 %1097, -1
  %shr3236 = lshr i32 %and3235, 2
  %or3237 = or i32 %shl3233, %shr3236
  %C3238 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or3237, i32* %C3238, align 4
  br label %do.end3239

do.end3239:                                       ; preds = %do.body3195
  br label %do.body3240

do.body3240:                                      ; preds = %do.end3239
  %A3241 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1098 = load i32, i32* %A3241, align 4
  %shl3242 = shl i32 %1098, 5
  %A3243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1099 = load i32, i32* %A3243, align 4
  %and3244 = and i32 %1099, -1
  %shr3245 = lshr i32 %and3244, 27
  %or3246 = or i32 %shl3242, %shr3245
  %B3247 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1100 = load i32, i32* %B3247, align 4
  %C3248 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1101 = load i32, i32* %C3248, align 4
  %xor3249 = xor i32 %1100, %1101
  %D3250 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1102 = load i32, i32* %D3250, align 4
  %xor3251 = xor i32 %xor3249, %1102
  %add3252 = add i32 %or3246, %xor3251
  %add3253 = add i32 %add3252, -899497514
  %W3254 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3255 = getelementptr inbounds [16 x i32], [16 x i32]* %W3254, i64 0, i64 3
  %1103 = load i32, i32* %arrayidx3255, align 4
  %W3256 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3257 = getelementptr inbounds [16 x i32], [16 x i32]* %W3256, i64 0, i64 14
  %1104 = load i32, i32* %arrayidx3257, align 4
  %xor3258 = xor i32 %1103, %1104
  %W3259 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3260 = getelementptr inbounds [16 x i32], [16 x i32]* %W3259, i64 0, i64 8
  %1105 = load i32, i32* %arrayidx3260, align 4
  %xor3261 = xor i32 %xor3258, %1105
  %W3262 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3263 = getelementptr inbounds [16 x i32], [16 x i32]* %W3262, i64 0, i64 6
  %1106 = load i32, i32* %arrayidx3263, align 4
  %xor3264 = xor i32 %xor3261, %1106
  %temp3265 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3264, i32* %temp3265, align 4
  %temp3266 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1107 = load i32, i32* %temp3266, align 4
  %shl3267 = shl i32 %1107, 1
  %temp3268 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1108 = load i32, i32* %temp3268, align 4
  %and3269 = and i32 %1108, -1
  %shr3270 = lshr i32 %and3269, 31
  %or3271 = or i32 %shl3267, %shr3270
  %W3272 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3273 = getelementptr inbounds [16 x i32], [16 x i32]* %W3272, i64 0, i64 6
  store i32 %or3271, i32* %arrayidx3273, align 4
  %add3274 = add i32 %add3253, %or3271
  %E3275 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1109 = load i32, i32* %E3275, align 4
  %add3276 = add i32 %1109, %add3274
  store i32 %add3276, i32* %E3275, align 4
  %B3277 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1110 = load i32, i32* %B3277, align 4
  %shl3278 = shl i32 %1110, 30
  %B3279 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1111 = load i32, i32* %B3279, align 4
  %and3280 = and i32 %1111, -1
  %shr3281 = lshr i32 %and3280, 2
  %or3282 = or i32 %shl3278, %shr3281
  %B3283 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or3282, i32* %B3283, align 4
  br label %do.end3284

do.end3284:                                       ; preds = %do.body3240
  br label %do.body3285

do.body3285:                                      ; preds = %do.end3284
  %E3286 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1112 = load i32, i32* %E3286, align 4
  %shl3287 = shl i32 %1112, 5
  %E3288 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1113 = load i32, i32* %E3288, align 4
  %and3289 = and i32 %1113, -1
  %shr3290 = lshr i32 %and3289, 27
  %or3291 = or i32 %shl3287, %shr3290
  %A3292 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1114 = load i32, i32* %A3292, align 4
  %B3293 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1115 = load i32, i32* %B3293, align 4
  %xor3294 = xor i32 %1114, %1115
  %C3295 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1116 = load i32, i32* %C3295, align 4
  %xor3296 = xor i32 %xor3294, %1116
  %add3297 = add i32 %or3291, %xor3296
  %add3298 = add i32 %add3297, -899497514
  %W3299 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3300 = getelementptr inbounds [16 x i32], [16 x i32]* %W3299, i64 0, i64 4
  %1117 = load i32, i32* %arrayidx3300, align 4
  %W3301 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3302 = getelementptr inbounds [16 x i32], [16 x i32]* %W3301, i64 0, i64 15
  %1118 = load i32, i32* %arrayidx3302, align 4
  %xor3303 = xor i32 %1117, %1118
  %W3304 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3305 = getelementptr inbounds [16 x i32], [16 x i32]* %W3304, i64 0, i64 9
  %1119 = load i32, i32* %arrayidx3305, align 4
  %xor3306 = xor i32 %xor3303, %1119
  %W3307 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3308 = getelementptr inbounds [16 x i32], [16 x i32]* %W3307, i64 0, i64 7
  %1120 = load i32, i32* %arrayidx3308, align 4
  %xor3309 = xor i32 %xor3306, %1120
  %temp3310 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3309, i32* %temp3310, align 4
  %temp3311 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1121 = load i32, i32* %temp3311, align 4
  %shl3312 = shl i32 %1121, 1
  %temp3313 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1122 = load i32, i32* %temp3313, align 4
  %and3314 = and i32 %1122, -1
  %shr3315 = lshr i32 %and3314, 31
  %or3316 = or i32 %shl3312, %shr3315
  %W3317 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3318 = getelementptr inbounds [16 x i32], [16 x i32]* %W3317, i64 0, i64 7
  store i32 %or3316, i32* %arrayidx3318, align 4
  %add3319 = add i32 %add3298, %or3316
  %D3320 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1123 = load i32, i32* %D3320, align 4
  %add3321 = add i32 %1123, %add3319
  store i32 %add3321, i32* %D3320, align 4
  %A3322 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1124 = load i32, i32* %A3322, align 4
  %shl3323 = shl i32 %1124, 30
  %A3324 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1125 = load i32, i32* %A3324, align 4
  %and3325 = and i32 %1125, -1
  %shr3326 = lshr i32 %and3325, 2
  %or3327 = or i32 %shl3323, %shr3326
  %A3328 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or3327, i32* %A3328, align 4
  br label %do.end3329

do.end3329:                                       ; preds = %do.body3285
  br label %do.body3330

do.body3330:                                      ; preds = %do.end3329
  %D3331 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1126 = load i32, i32* %D3331, align 4
  %shl3332 = shl i32 %1126, 5
  %D3333 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1127 = load i32, i32* %D3333, align 4
  %and3334 = and i32 %1127, -1
  %shr3335 = lshr i32 %and3334, 27
  %or3336 = or i32 %shl3332, %shr3335
  %E3337 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1128 = load i32, i32* %E3337, align 4
  %A3338 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1129 = load i32, i32* %A3338, align 4
  %xor3339 = xor i32 %1128, %1129
  %B3340 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1130 = load i32, i32* %B3340, align 4
  %xor3341 = xor i32 %xor3339, %1130
  %add3342 = add i32 %or3336, %xor3341
  %add3343 = add i32 %add3342, -899497514
  %W3344 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3345 = getelementptr inbounds [16 x i32], [16 x i32]* %W3344, i64 0, i64 5
  %1131 = load i32, i32* %arrayidx3345, align 4
  %W3346 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3347 = getelementptr inbounds [16 x i32], [16 x i32]* %W3346, i64 0, i64 0
  %1132 = load i32, i32* %arrayidx3347, align 4
  %xor3348 = xor i32 %1131, %1132
  %W3349 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3350 = getelementptr inbounds [16 x i32], [16 x i32]* %W3349, i64 0, i64 10
  %1133 = load i32, i32* %arrayidx3350, align 4
  %xor3351 = xor i32 %xor3348, %1133
  %W3352 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3353 = getelementptr inbounds [16 x i32], [16 x i32]* %W3352, i64 0, i64 8
  %1134 = load i32, i32* %arrayidx3353, align 4
  %xor3354 = xor i32 %xor3351, %1134
  %temp3355 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3354, i32* %temp3355, align 4
  %temp3356 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1135 = load i32, i32* %temp3356, align 4
  %shl3357 = shl i32 %1135, 1
  %temp3358 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1136 = load i32, i32* %temp3358, align 4
  %and3359 = and i32 %1136, -1
  %shr3360 = lshr i32 %and3359, 31
  %or3361 = or i32 %shl3357, %shr3360
  %W3362 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3363 = getelementptr inbounds [16 x i32], [16 x i32]* %W3362, i64 0, i64 8
  store i32 %or3361, i32* %arrayidx3363, align 4
  %add3364 = add i32 %add3343, %or3361
  %C3365 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1137 = load i32, i32* %C3365, align 4
  %add3366 = add i32 %1137, %add3364
  store i32 %add3366, i32* %C3365, align 4
  %E3367 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1138 = load i32, i32* %E3367, align 4
  %shl3368 = shl i32 %1138, 30
  %E3369 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1139 = load i32, i32* %E3369, align 4
  %and3370 = and i32 %1139, -1
  %shr3371 = lshr i32 %and3370, 2
  %or3372 = or i32 %shl3368, %shr3371
  %E3373 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or3372, i32* %E3373, align 4
  br label %do.end3374

do.end3374:                                       ; preds = %do.body3330
  br label %do.body3375

do.body3375:                                      ; preds = %do.end3374
  %C3376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1140 = load i32, i32* %C3376, align 4
  %shl3377 = shl i32 %1140, 5
  %C3378 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1141 = load i32, i32* %C3378, align 4
  %and3379 = and i32 %1141, -1
  %shr3380 = lshr i32 %and3379, 27
  %or3381 = or i32 %shl3377, %shr3380
  %D3382 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1142 = load i32, i32* %D3382, align 4
  %E3383 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1143 = load i32, i32* %E3383, align 4
  %xor3384 = xor i32 %1142, %1143
  %A3385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1144 = load i32, i32* %A3385, align 4
  %xor3386 = xor i32 %xor3384, %1144
  %add3387 = add i32 %or3381, %xor3386
  %add3388 = add i32 %add3387, -899497514
  %W3389 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3390 = getelementptr inbounds [16 x i32], [16 x i32]* %W3389, i64 0, i64 6
  %1145 = load i32, i32* %arrayidx3390, align 4
  %W3391 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3392 = getelementptr inbounds [16 x i32], [16 x i32]* %W3391, i64 0, i64 1
  %1146 = load i32, i32* %arrayidx3392, align 4
  %xor3393 = xor i32 %1145, %1146
  %W3394 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3395 = getelementptr inbounds [16 x i32], [16 x i32]* %W3394, i64 0, i64 11
  %1147 = load i32, i32* %arrayidx3395, align 4
  %xor3396 = xor i32 %xor3393, %1147
  %W3397 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3398 = getelementptr inbounds [16 x i32], [16 x i32]* %W3397, i64 0, i64 9
  %1148 = load i32, i32* %arrayidx3398, align 4
  %xor3399 = xor i32 %xor3396, %1148
  %temp3400 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3399, i32* %temp3400, align 4
  %temp3401 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1149 = load i32, i32* %temp3401, align 4
  %shl3402 = shl i32 %1149, 1
  %temp3403 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1150 = load i32, i32* %temp3403, align 4
  %and3404 = and i32 %1150, -1
  %shr3405 = lshr i32 %and3404, 31
  %or3406 = or i32 %shl3402, %shr3405
  %W3407 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3408 = getelementptr inbounds [16 x i32], [16 x i32]* %W3407, i64 0, i64 9
  store i32 %or3406, i32* %arrayidx3408, align 4
  %add3409 = add i32 %add3388, %or3406
  %B3410 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1151 = load i32, i32* %B3410, align 4
  %add3411 = add i32 %1151, %add3409
  store i32 %add3411, i32* %B3410, align 4
  %D3412 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1152 = load i32, i32* %D3412, align 4
  %shl3413 = shl i32 %1152, 30
  %D3414 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1153 = load i32, i32* %D3414, align 4
  %and3415 = and i32 %1153, -1
  %shr3416 = lshr i32 %and3415, 2
  %or3417 = or i32 %shl3413, %shr3416
  %D3418 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or3417, i32* %D3418, align 4
  br label %do.end3419

do.end3419:                                       ; preds = %do.body3375
  br label %do.body3420

do.body3420:                                      ; preds = %do.end3419
  %B3421 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1154 = load i32, i32* %B3421, align 4
  %shl3422 = shl i32 %1154, 5
  %B3423 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1155 = load i32, i32* %B3423, align 4
  %and3424 = and i32 %1155, -1
  %shr3425 = lshr i32 %and3424, 27
  %or3426 = or i32 %shl3422, %shr3425
  %C3427 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1156 = load i32, i32* %C3427, align 4
  %D3428 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1157 = load i32, i32* %D3428, align 4
  %xor3429 = xor i32 %1156, %1157
  %E3430 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1158 = load i32, i32* %E3430, align 4
  %xor3431 = xor i32 %xor3429, %1158
  %add3432 = add i32 %or3426, %xor3431
  %add3433 = add i32 %add3432, -899497514
  %W3434 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3435 = getelementptr inbounds [16 x i32], [16 x i32]* %W3434, i64 0, i64 7
  %1159 = load i32, i32* %arrayidx3435, align 4
  %W3436 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3437 = getelementptr inbounds [16 x i32], [16 x i32]* %W3436, i64 0, i64 2
  %1160 = load i32, i32* %arrayidx3437, align 4
  %xor3438 = xor i32 %1159, %1160
  %W3439 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3440 = getelementptr inbounds [16 x i32], [16 x i32]* %W3439, i64 0, i64 12
  %1161 = load i32, i32* %arrayidx3440, align 4
  %xor3441 = xor i32 %xor3438, %1161
  %W3442 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3443 = getelementptr inbounds [16 x i32], [16 x i32]* %W3442, i64 0, i64 10
  %1162 = load i32, i32* %arrayidx3443, align 4
  %xor3444 = xor i32 %xor3441, %1162
  %temp3445 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3444, i32* %temp3445, align 4
  %temp3446 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1163 = load i32, i32* %temp3446, align 4
  %shl3447 = shl i32 %1163, 1
  %temp3448 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1164 = load i32, i32* %temp3448, align 4
  %and3449 = and i32 %1164, -1
  %shr3450 = lshr i32 %and3449, 31
  %or3451 = or i32 %shl3447, %shr3450
  %W3452 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3453 = getelementptr inbounds [16 x i32], [16 x i32]* %W3452, i64 0, i64 10
  store i32 %or3451, i32* %arrayidx3453, align 4
  %add3454 = add i32 %add3433, %or3451
  %A3455 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1165 = load i32, i32* %A3455, align 4
  %add3456 = add i32 %1165, %add3454
  store i32 %add3456, i32* %A3455, align 4
  %C3457 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1166 = load i32, i32* %C3457, align 4
  %shl3458 = shl i32 %1166, 30
  %C3459 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1167 = load i32, i32* %C3459, align 4
  %and3460 = and i32 %1167, -1
  %shr3461 = lshr i32 %and3460, 2
  %or3462 = or i32 %shl3458, %shr3461
  %C3463 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or3462, i32* %C3463, align 4
  br label %do.end3464

do.end3464:                                       ; preds = %do.body3420
  br label %do.body3465

do.body3465:                                      ; preds = %do.end3464
  %A3466 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1168 = load i32, i32* %A3466, align 4
  %shl3467 = shl i32 %1168, 5
  %A3468 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1169 = load i32, i32* %A3468, align 4
  %and3469 = and i32 %1169, -1
  %shr3470 = lshr i32 %and3469, 27
  %or3471 = or i32 %shl3467, %shr3470
  %B3472 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1170 = load i32, i32* %B3472, align 4
  %C3473 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1171 = load i32, i32* %C3473, align 4
  %xor3474 = xor i32 %1170, %1171
  %D3475 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1172 = load i32, i32* %D3475, align 4
  %xor3476 = xor i32 %xor3474, %1172
  %add3477 = add i32 %or3471, %xor3476
  %add3478 = add i32 %add3477, -899497514
  %W3479 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3480 = getelementptr inbounds [16 x i32], [16 x i32]* %W3479, i64 0, i64 8
  %1173 = load i32, i32* %arrayidx3480, align 4
  %W3481 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3482 = getelementptr inbounds [16 x i32], [16 x i32]* %W3481, i64 0, i64 3
  %1174 = load i32, i32* %arrayidx3482, align 4
  %xor3483 = xor i32 %1173, %1174
  %W3484 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3485 = getelementptr inbounds [16 x i32], [16 x i32]* %W3484, i64 0, i64 13
  %1175 = load i32, i32* %arrayidx3485, align 4
  %xor3486 = xor i32 %xor3483, %1175
  %W3487 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3488 = getelementptr inbounds [16 x i32], [16 x i32]* %W3487, i64 0, i64 11
  %1176 = load i32, i32* %arrayidx3488, align 4
  %xor3489 = xor i32 %xor3486, %1176
  %temp3490 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3489, i32* %temp3490, align 4
  %temp3491 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1177 = load i32, i32* %temp3491, align 4
  %shl3492 = shl i32 %1177, 1
  %temp3493 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1178 = load i32, i32* %temp3493, align 4
  %and3494 = and i32 %1178, -1
  %shr3495 = lshr i32 %and3494, 31
  %or3496 = or i32 %shl3492, %shr3495
  %W3497 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3498 = getelementptr inbounds [16 x i32], [16 x i32]* %W3497, i64 0, i64 11
  store i32 %or3496, i32* %arrayidx3498, align 4
  %add3499 = add i32 %add3478, %or3496
  %E3500 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1179 = load i32, i32* %E3500, align 4
  %add3501 = add i32 %1179, %add3499
  store i32 %add3501, i32* %E3500, align 4
  %B3502 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1180 = load i32, i32* %B3502, align 4
  %shl3503 = shl i32 %1180, 30
  %B3504 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1181 = load i32, i32* %B3504, align 4
  %and3505 = and i32 %1181, -1
  %shr3506 = lshr i32 %and3505, 2
  %or3507 = or i32 %shl3503, %shr3506
  %B3508 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %or3507, i32* %B3508, align 4
  br label %do.end3509

do.end3509:                                       ; preds = %do.body3465
  br label %do.body3510

do.body3510:                                      ; preds = %do.end3509
  %E3511 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1182 = load i32, i32* %E3511, align 4
  %shl3512 = shl i32 %1182, 5
  %E3513 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1183 = load i32, i32* %E3513, align 4
  %and3514 = and i32 %1183, -1
  %shr3515 = lshr i32 %and3514, 27
  %or3516 = or i32 %shl3512, %shr3515
  %A3517 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1184 = load i32, i32* %A3517, align 4
  %B3518 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1185 = load i32, i32* %B3518, align 4
  %xor3519 = xor i32 %1184, %1185
  %C3520 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1186 = load i32, i32* %C3520, align 4
  %xor3521 = xor i32 %xor3519, %1186
  %add3522 = add i32 %or3516, %xor3521
  %add3523 = add i32 %add3522, -899497514
  %W3524 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3525 = getelementptr inbounds [16 x i32], [16 x i32]* %W3524, i64 0, i64 9
  %1187 = load i32, i32* %arrayidx3525, align 4
  %W3526 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3527 = getelementptr inbounds [16 x i32], [16 x i32]* %W3526, i64 0, i64 4
  %1188 = load i32, i32* %arrayidx3527, align 4
  %xor3528 = xor i32 %1187, %1188
  %W3529 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3530 = getelementptr inbounds [16 x i32], [16 x i32]* %W3529, i64 0, i64 14
  %1189 = load i32, i32* %arrayidx3530, align 4
  %xor3531 = xor i32 %xor3528, %1189
  %W3532 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3533 = getelementptr inbounds [16 x i32], [16 x i32]* %W3532, i64 0, i64 12
  %1190 = load i32, i32* %arrayidx3533, align 4
  %xor3534 = xor i32 %xor3531, %1190
  %temp3535 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3534, i32* %temp3535, align 4
  %temp3536 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1191 = load i32, i32* %temp3536, align 4
  %shl3537 = shl i32 %1191, 1
  %temp3538 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1192 = load i32, i32* %temp3538, align 4
  %and3539 = and i32 %1192, -1
  %shr3540 = lshr i32 %and3539, 31
  %or3541 = or i32 %shl3537, %shr3540
  %W3542 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3543 = getelementptr inbounds [16 x i32], [16 x i32]* %W3542, i64 0, i64 12
  store i32 %or3541, i32* %arrayidx3543, align 4
  %add3544 = add i32 %add3523, %or3541
  %D3545 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1193 = load i32, i32* %D3545, align 4
  %add3546 = add i32 %1193, %add3544
  store i32 %add3546, i32* %D3545, align 4
  %A3547 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1194 = load i32, i32* %A3547, align 4
  %shl3548 = shl i32 %1194, 30
  %A3549 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1195 = load i32, i32* %A3549, align 4
  %and3550 = and i32 %1195, -1
  %shr3551 = lshr i32 %and3550, 2
  %or3552 = or i32 %shl3548, %shr3551
  %A3553 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %or3552, i32* %A3553, align 4
  br label %do.end3554

do.end3554:                                       ; preds = %do.body3510
  br label %do.body3555

do.body3555:                                      ; preds = %do.end3554
  %D3556 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1196 = load i32, i32* %D3556, align 4
  %shl3557 = shl i32 %1196, 5
  %D3558 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1197 = load i32, i32* %D3558, align 4
  %and3559 = and i32 %1197, -1
  %shr3560 = lshr i32 %and3559, 27
  %or3561 = or i32 %shl3557, %shr3560
  %E3562 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1198 = load i32, i32* %E3562, align 4
  %A3563 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1199 = load i32, i32* %A3563, align 4
  %xor3564 = xor i32 %1198, %1199
  %B3565 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1200 = load i32, i32* %B3565, align 4
  %xor3566 = xor i32 %xor3564, %1200
  %add3567 = add i32 %or3561, %xor3566
  %add3568 = add i32 %add3567, -899497514
  %W3569 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3570 = getelementptr inbounds [16 x i32], [16 x i32]* %W3569, i64 0, i64 10
  %1201 = load i32, i32* %arrayidx3570, align 4
  %W3571 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3572 = getelementptr inbounds [16 x i32], [16 x i32]* %W3571, i64 0, i64 5
  %1202 = load i32, i32* %arrayidx3572, align 4
  %xor3573 = xor i32 %1201, %1202
  %W3574 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3575 = getelementptr inbounds [16 x i32], [16 x i32]* %W3574, i64 0, i64 15
  %1203 = load i32, i32* %arrayidx3575, align 4
  %xor3576 = xor i32 %xor3573, %1203
  %W3577 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3578 = getelementptr inbounds [16 x i32], [16 x i32]* %W3577, i64 0, i64 13
  %1204 = load i32, i32* %arrayidx3578, align 4
  %xor3579 = xor i32 %xor3576, %1204
  %temp3580 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3579, i32* %temp3580, align 4
  %temp3581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1205 = load i32, i32* %temp3581, align 4
  %shl3582 = shl i32 %1205, 1
  %temp3583 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1206 = load i32, i32* %temp3583, align 4
  %and3584 = and i32 %1206, -1
  %shr3585 = lshr i32 %and3584, 31
  %or3586 = or i32 %shl3582, %shr3585
  %W3587 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3588 = getelementptr inbounds [16 x i32], [16 x i32]* %W3587, i64 0, i64 13
  store i32 %or3586, i32* %arrayidx3588, align 4
  %add3589 = add i32 %add3568, %or3586
  %C3590 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1207 = load i32, i32* %C3590, align 4
  %add3591 = add i32 %1207, %add3589
  store i32 %add3591, i32* %C3590, align 4
  %E3592 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1208 = load i32, i32* %E3592, align 4
  %shl3593 = shl i32 %1208, 30
  %E3594 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1209 = load i32, i32* %E3594, align 4
  %and3595 = and i32 %1209, -1
  %shr3596 = lshr i32 %and3595, 2
  %or3597 = or i32 %shl3593, %shr3596
  %E3598 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  store i32 %or3597, i32* %E3598, align 4
  br label %do.end3599

do.end3599:                                       ; preds = %do.body3555
  br label %do.body3600

do.body3600:                                      ; preds = %do.end3599
  %C3601 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1210 = load i32, i32* %C3601, align 4
  %shl3602 = shl i32 %1210, 5
  %C3603 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1211 = load i32, i32* %C3603, align 4
  %and3604 = and i32 %1211, -1
  %shr3605 = lshr i32 %and3604, 27
  %or3606 = or i32 %shl3602, %shr3605
  %D3607 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1212 = load i32, i32* %D3607, align 4
  %E3608 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1213 = load i32, i32* %E3608, align 4
  %xor3609 = xor i32 %1212, %1213
  %A3610 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1214 = load i32, i32* %A3610, align 4
  %xor3611 = xor i32 %xor3609, %1214
  %add3612 = add i32 %or3606, %xor3611
  %add3613 = add i32 %add3612, -899497514
  %W3614 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3615 = getelementptr inbounds [16 x i32], [16 x i32]* %W3614, i64 0, i64 11
  %1215 = load i32, i32* %arrayidx3615, align 4
  %W3616 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3617 = getelementptr inbounds [16 x i32], [16 x i32]* %W3616, i64 0, i64 6
  %1216 = load i32, i32* %arrayidx3617, align 4
  %xor3618 = xor i32 %1215, %1216
  %W3619 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3620 = getelementptr inbounds [16 x i32], [16 x i32]* %W3619, i64 0, i64 0
  %1217 = load i32, i32* %arrayidx3620, align 4
  %xor3621 = xor i32 %xor3618, %1217
  %W3622 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3623 = getelementptr inbounds [16 x i32], [16 x i32]* %W3622, i64 0, i64 14
  %1218 = load i32, i32* %arrayidx3623, align 4
  %xor3624 = xor i32 %xor3621, %1218
  %temp3625 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3624, i32* %temp3625, align 4
  %temp3626 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1219 = load i32, i32* %temp3626, align 4
  %shl3627 = shl i32 %1219, 1
  %temp3628 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1220 = load i32, i32* %temp3628, align 4
  %and3629 = and i32 %1220, -1
  %shr3630 = lshr i32 %and3629, 31
  %or3631 = or i32 %shl3627, %shr3630
  %W3632 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3633 = getelementptr inbounds [16 x i32], [16 x i32]* %W3632, i64 0, i64 14
  store i32 %or3631, i32* %arrayidx3633, align 4
  %add3634 = add i32 %add3613, %or3631
  %B3635 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1221 = load i32, i32* %B3635, align 4
  %add3636 = add i32 %1221, %add3634
  store i32 %add3636, i32* %B3635, align 4
  %D3637 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1222 = load i32, i32* %D3637, align 4
  %shl3638 = shl i32 %1222, 30
  %D3639 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1223 = load i32, i32* %D3639, align 4
  %and3640 = and i32 %1223, -1
  %shr3641 = lshr i32 %and3640, 2
  %or3642 = or i32 %shl3638, %shr3641
  %D3643 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  store i32 %or3642, i32* %D3643, align 4
  br label %do.end3644

do.end3644:                                       ; preds = %do.body3600
  br label %do.body3645

do.body3645:                                      ; preds = %do.end3644
  %B3646 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1224 = load i32, i32* %B3646, align 4
  %shl3647 = shl i32 %1224, 5
  %B3648 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1225 = load i32, i32* %B3648, align 4
  %and3649 = and i32 %1225, -1
  %shr3650 = lshr i32 %and3649, 27
  %or3651 = or i32 %shl3647, %shr3650
  %C3652 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1226 = load i32, i32* %C3652, align 4
  %D3653 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1227 = load i32, i32* %D3653, align 4
  %xor3654 = xor i32 %1226, %1227
  %E3655 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1228 = load i32, i32* %E3655, align 4
  %xor3656 = xor i32 %xor3654, %1228
  %add3657 = add i32 %or3651, %xor3656
  %add3658 = add i32 %add3657, -899497514
  %W3659 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3660 = getelementptr inbounds [16 x i32], [16 x i32]* %W3659, i64 0, i64 12
  %1229 = load i32, i32* %arrayidx3660, align 4
  %W3661 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3662 = getelementptr inbounds [16 x i32], [16 x i32]* %W3661, i64 0, i64 7
  %1230 = load i32, i32* %arrayidx3662, align 4
  %xor3663 = xor i32 %1229, %1230
  %W3664 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3665 = getelementptr inbounds [16 x i32], [16 x i32]* %W3664, i64 0, i64 1
  %1231 = load i32, i32* %arrayidx3665, align 4
  %xor3666 = xor i32 %xor3663, %1231
  %W3667 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3668 = getelementptr inbounds [16 x i32], [16 x i32]* %W3667, i64 0, i64 15
  %1232 = load i32, i32* %arrayidx3668, align 4
  %xor3669 = xor i32 %xor3666, %1232
  %temp3670 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  store i32 %xor3669, i32* %temp3670, align 4
  %temp3671 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1233 = load i32, i32* %temp3671, align 4
  %shl3672 = shl i32 %1233, 1
  %temp3673 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %1234 = load i32, i32* %temp3673, align 4
  %and3674 = and i32 %1234, -1
  %shr3675 = lshr i32 %and3674, 31
  %or3676 = or i32 %shl3672, %shr3675
  %W3677 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %arrayidx3678 = getelementptr inbounds [16 x i32], [16 x i32]* %W3677, i64 0, i64 15
  store i32 %or3676, i32* %arrayidx3678, align 4
  %add3679 = add i32 %add3658, %or3676
  %A3680 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1235 = load i32, i32* %A3680, align 4
  %add3681 = add i32 %1235, %add3679
  store i32 %add3681, i32* %A3680, align 4
  %C3682 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1236 = load i32, i32* %C3682, align 4
  %shl3683 = shl i32 %1236, 30
  %C3684 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1237 = load i32, i32* %C3684, align 4
  %and3685 = and i32 %1237, -1
  %shr3686 = lshr i32 %and3685, 2
  %or3687 = or i32 %shl3683, %shr3686
  %C3688 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %or3687, i32* %C3688, align 4
  br label %do.end3689

do.end3689:                                       ; preds = %do.body3645
  %A3690 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %1238 = load i32, i32* %A3690, align 4
  %1239 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state3691 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1239, i32 0, i32 1
  %arrayidx3692 = getelementptr inbounds [5 x i32], [5 x i32]* %state3691, i64 0, i64 0
  %1240 = load i32, i32* %arrayidx3692, align 4
  %add3693 = add i32 %1240, %1238
  store i32 %add3693, i32* %arrayidx3692, align 4
  %B3694 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %1241 = load i32, i32* %B3694, align 4
  %1242 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state3695 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1242, i32 0, i32 1
  %arrayidx3696 = getelementptr inbounds [5 x i32], [5 x i32]* %state3695, i64 0, i64 1
  %1243 = load i32, i32* %arrayidx3696, align 4
  %add3697 = add i32 %1243, %1241
  store i32 %add3697, i32* %arrayidx3696, align 4
  %C3698 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %1244 = load i32, i32* %C3698, align 4
  %1245 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state3699 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1245, i32 0, i32 1
  %arrayidx3700 = getelementptr inbounds [5 x i32], [5 x i32]* %state3699, i64 0, i64 2
  %1246 = load i32, i32* %arrayidx3700, align 4
  %add3701 = add i32 %1246, %1244
  store i32 %add3701, i32* %arrayidx3700, align 4
  %D3702 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 5
  %1247 = load i32, i32* %D3702, align 4
  %1248 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state3703 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1248, i32 0, i32 1
  %arrayidx3704 = getelementptr inbounds [5 x i32], [5 x i32]* %state3703, i64 0, i64 3
  %1249 = load i32, i32* %arrayidx3704, align 4
  %add3705 = add i32 %1249, %1247
  store i32 %add3705, i32* %arrayidx3704, align 4
  %E3706 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 6
  %1250 = load i32, i32* %E3706, align 4
  %1251 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state3707 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1251, i32 0, i32 1
  %arrayidx3708 = getelementptr inbounds [5 x i32], [5 x i32]* %state3707, i64 0, i64 4
  %1252 = load i32, i32* %arrayidx3708, align 4
  %add3709 = add i32 %1252, %1250
  store i32 %add3709, i32* %arrayidx3708, align 4
  %1253 = bitcast %struct.anon* %local to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %1253, i64 noundef 88) #6
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_sha1_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fill = alloca i64, align 8
  %left = alloca i32, align 4
  store %struct.mbedtls_sha1_context* %ctx, %struct.mbedtls_sha1_context** %ctx.addr, align 8
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
  %1 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %1, i32 0, i32 0
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
  %5 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total4 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %total4, i64 0, i64 0
  %6 = load i32, i32* %arrayidx5, align 4
  %add = add i32 %6, %conv3
  store i32 %add, i32* %arrayidx5, align 4
  %7 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total6 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %7, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %total6, i64 0, i64 0
  %8 = load i32, i32* %arrayidx7, align 4
  %and8 = and i32 %8, -1
  store i32 %and8, i32* %arrayidx7, align 4
  %9 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total9 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %total9, i64 0, i64 0
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i64, i64* %ilen.addr, align 8
  %conv11 = trunc i64 %11 to i32
  %cmp12 = icmp ult i32 %10, %conv11
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end
  %12 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total15 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %12, i32 0, i32 0
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
  %17 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i64 0, i64 0
  %18 = load i32, i32* %left, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %fill, align 8
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %19, i64 noundef %20) #5
  %21 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %22 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer21 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %22, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer21, i64 0, i64 0
  %call23 = call i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef %21, i8* noundef %arraydecay22) #6
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
  %29 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %30 = load i8*, i8** %input.addr, align 8
  %call33 = call i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef %29, i8* noundef %30) #6
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.body
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %while.body
  %32 = load i8*, i8** %input.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %32, i64 64
  store i8* %add.ptr38, i8** %input.addr, align 8
  %33 = load i64, i64* %ilen.addr, align 8
  %sub39 = sub i64 %33, 64
  store i64 %sub39, i64* %ilen.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %34 = load i64, i64* %ilen.addr, align 8
  %cmp40 = icmp ugt i64 %34, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %while.end
  %35 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer43 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %35, i32 0, i32 2
  %arraydecay44 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer43, i64 0, i64 0
  %36 = load i32, i32* %left, align 4
  %idx.ext45 = zext i32 %36 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %arraydecay44, i64 %idx.ext45
  %37 = load i8*, i8** %input.addr, align 8
  %38 = load i64, i64* %ilen.addr, align 8
  %call47 = call i8* @memcpy(i8* noundef %add.ptr46, i8* noundef %37, i64 noundef %38) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then36, %if.then26, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_sha1_context*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %used = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store %struct.mbedtls_sha1_context* %ctx, %struct.mbedtls_sha1_context** %ctx.addr, align 8
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
  %0 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 63
  store i32 %and, i32* %used, align 4
  %2 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %2, i32 0, i32 2
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
  %5 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer4 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %5, i32 0, i32 2
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
  %8 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer5 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %8, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer5, i64 0, i64 0
  %9 = load i32, i32* %used, align 4
  %idx.ext7 = zext i32 %9 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay6, i64 %idx.ext7
  %10 = load i32, i32* %used, align 4
  %sub9 = sub i32 64, %10
  %conv10 = zext i32 %sub9 to i64
  %call11 = call i8* @memset(i8* noundef %add.ptr8, i32 noundef 0, i64 noundef %conv10) #5
  %11 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %12 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer12 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %12, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer12, i64 0, i64 0
  %call14 = call i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef %11, i8* noundef %arraydecay13) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %14 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer18 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %14, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer18, i64 0, i64 0
  %call20 = call i8* @memset(i8* noundef %arraydecay19, i32 noundef 0, i64 noundef 56) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %15 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total22 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %15, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %total22, i64 0, i64 0
  %16 = load i32, i32* %arrayidx23, align 4
  %shr = lshr i32 %16, 29
  %17 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total24 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %17, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %total24, i64 0, i64 1
  %18 = load i32, i32* %arrayidx25, align 4
  %shl = shl i32 %18, 3
  %or = or i32 %shr, %shl
  store i32 %or, i32* %high, align 4
  %19 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %total26 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %19, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %total26, i64 0, i64 0
  %20 = load i32, i32* %arrayidx27, align 4
  %shl28 = shl i32 %20, 3
  store i32 %shl28, i32* %low, align 4
  %21 = load i32, i32* %high, align 4
  %shr29 = lshr i32 %21, 24
  %and30 = and i32 %shr29, 255
  %conv31 = trunc i32 %and30 to i8
  %22 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer32 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %22, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer32, i64 0, i64 56
  store i8 %conv31, i8* %arrayidx33, align 4
  %23 = load i32, i32* %high, align 4
  %shr34 = lshr i32 %23, 16
  %and35 = and i32 %shr34, 255
  %conv36 = trunc i32 %and35 to i8
  %24 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer37 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %24, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer37, i64 0, i64 57
  store i8 %conv36, i8* %arrayidx38, align 1
  %25 = load i32, i32* %high, align 4
  %shr39 = lshr i32 %25, 8
  %and40 = and i32 %shr39, 255
  %conv41 = trunc i32 %and40 to i8
  %26 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer42 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %26, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer42, i64 0, i64 58
  store i8 %conv41, i8* %arrayidx43, align 2
  %27 = load i32, i32* %high, align 4
  %and44 = and i32 %27, 255
  %conv45 = trunc i32 %and44 to i8
  %28 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer46 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %28, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer46, i64 0, i64 59
  store i8 %conv45, i8* %arrayidx47, align 1
  %29 = load i32, i32* %low, align 4
  %shr48 = lshr i32 %29, 24
  %and49 = and i32 %shr48, 255
  %conv50 = trunc i32 %and49 to i8
  %30 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer51 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %30, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer51, i64 0, i64 60
  store i8 %conv50, i8* %arrayidx52, align 4
  %31 = load i32, i32* %low, align 4
  %shr53 = lshr i32 %31, 16
  %and54 = and i32 %shr53, 255
  %conv55 = trunc i32 %and54 to i8
  %32 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer56 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %32, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer56, i64 0, i64 61
  store i8 %conv55, i8* %arrayidx57, align 1
  %33 = load i32, i32* %low, align 4
  %shr58 = lshr i32 %33, 8
  %and59 = and i32 %shr58, 255
  %conv60 = trunc i32 %and59 to i8
  %34 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer61 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %34, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer61, i64 0, i64 62
  store i8 %conv60, i8* %arrayidx62, align 2
  %35 = load i32, i32* %low, align 4
  %and63 = and i32 %35, 255
  %conv64 = trunc i32 %and63 to i8
  %36 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer65 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %36, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer65, i64 0, i64 63
  store i8 %conv64, i8* %arrayidx66, align 1
  %37 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %38 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %buffer67 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %38, i32 0, i32 2
  %arraydecay68 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer67, i64 0, i64 0
  %call69 = call i32 @mbedtls_internal_sha1_process(%struct.mbedtls_sha1_context* noundef %37, i8* noundef %arraydecay68) #6
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end21
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end21
  %40 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %40, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [5 x i32], [5 x i32]* %state, i64 0, i64 0
  %41 = load i32, i32* %arrayidx74, align 4
  %shr75 = lshr i32 %41, 24
  %and76 = and i32 %shr75, 255
  %conv77 = trunc i32 %and76 to i8
  %42 = load i8*, i8** %output.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %conv77, i8* %arrayidx78, align 1
  %43 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state79 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %43, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [5 x i32], [5 x i32]* %state79, i64 0, i64 0
  %44 = load i32, i32* %arrayidx80, align 4
  %shr81 = lshr i32 %44, 16
  %and82 = and i32 %shr81, 255
  %conv83 = trunc i32 %and82 to i8
  %45 = load i8*, i8** %output.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv83, i8* %arrayidx84, align 1
  %46 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state85 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %46, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [5 x i32], [5 x i32]* %state85, i64 0, i64 0
  %47 = load i32, i32* %arrayidx86, align 4
  %shr87 = lshr i32 %47, 8
  %and88 = and i32 %shr87, 255
  %conv89 = trunc i32 %and88 to i8
  %48 = load i8*, i8** %output.addr, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %conv89, i8* %arrayidx90, align 1
  %49 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state91 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %49, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [5 x i32], [5 x i32]* %state91, i64 0, i64 0
  %50 = load i32, i32* %arrayidx92, align 4
  %and93 = and i32 %50, 255
  %conv94 = trunc i32 %and93 to i8
  %51 = load i8*, i8** %output.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %conv94, i8* %arrayidx95, align 1
  %52 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state96 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %52, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [5 x i32], [5 x i32]* %state96, i64 0, i64 1
  %53 = load i32, i32* %arrayidx97, align 4
  %shr98 = lshr i32 %53, 24
  %and99 = and i32 %shr98, 255
  %conv100 = trunc i32 %and99 to i8
  %54 = load i8*, i8** %output.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %54, i64 4
  store i8 %conv100, i8* %arrayidx101, align 1
  %55 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state102 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %55, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [5 x i32], [5 x i32]* %state102, i64 0, i64 1
  %56 = load i32, i32* %arrayidx103, align 4
  %shr104 = lshr i32 %56, 16
  %and105 = and i32 %shr104, 255
  %conv106 = trunc i32 %and105 to i8
  %57 = load i8*, i8** %output.addr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %57, i64 5
  store i8 %conv106, i8* %arrayidx107, align 1
  %58 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state108 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %58, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [5 x i32], [5 x i32]* %state108, i64 0, i64 1
  %59 = load i32, i32* %arrayidx109, align 4
  %shr110 = lshr i32 %59, 8
  %and111 = and i32 %shr110, 255
  %conv112 = trunc i32 %and111 to i8
  %60 = load i8*, i8** %output.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %60, i64 6
  store i8 %conv112, i8* %arrayidx113, align 1
  %61 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state114 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %61, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [5 x i32], [5 x i32]* %state114, i64 0, i64 1
  %62 = load i32, i32* %arrayidx115, align 4
  %and116 = and i32 %62, 255
  %conv117 = trunc i32 %and116 to i8
  %63 = load i8*, i8** %output.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %63, i64 7
  store i8 %conv117, i8* %arrayidx118, align 1
  %64 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state119 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %64, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [5 x i32], [5 x i32]* %state119, i64 0, i64 2
  %65 = load i32, i32* %arrayidx120, align 4
  %shr121 = lshr i32 %65, 24
  %and122 = and i32 %shr121, 255
  %conv123 = trunc i32 %and122 to i8
  %66 = load i8*, i8** %output.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %66, i64 8
  store i8 %conv123, i8* %arrayidx124, align 1
  %67 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state125 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %67, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [5 x i32], [5 x i32]* %state125, i64 0, i64 2
  %68 = load i32, i32* %arrayidx126, align 4
  %shr127 = lshr i32 %68, 16
  %and128 = and i32 %shr127, 255
  %conv129 = trunc i32 %and128 to i8
  %69 = load i8*, i8** %output.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %69, i64 9
  store i8 %conv129, i8* %arrayidx130, align 1
  %70 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state131 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %70, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [5 x i32], [5 x i32]* %state131, i64 0, i64 2
  %71 = load i32, i32* %arrayidx132, align 4
  %shr133 = lshr i32 %71, 8
  %and134 = and i32 %shr133, 255
  %conv135 = trunc i32 %and134 to i8
  %72 = load i8*, i8** %output.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %72, i64 10
  store i8 %conv135, i8* %arrayidx136, align 1
  %73 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state137 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %73, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [5 x i32], [5 x i32]* %state137, i64 0, i64 2
  %74 = load i32, i32* %arrayidx138, align 4
  %and139 = and i32 %74, 255
  %conv140 = trunc i32 %and139 to i8
  %75 = load i8*, i8** %output.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %75, i64 11
  store i8 %conv140, i8* %arrayidx141, align 1
  %76 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state142 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %76, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [5 x i32], [5 x i32]* %state142, i64 0, i64 3
  %77 = load i32, i32* %arrayidx143, align 4
  %shr144 = lshr i32 %77, 24
  %and145 = and i32 %shr144, 255
  %conv146 = trunc i32 %and145 to i8
  %78 = load i8*, i8** %output.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %78, i64 12
  store i8 %conv146, i8* %arrayidx147, align 1
  %79 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state148 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %79, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [5 x i32], [5 x i32]* %state148, i64 0, i64 3
  %80 = load i32, i32* %arrayidx149, align 4
  %shr150 = lshr i32 %80, 16
  %and151 = and i32 %shr150, 255
  %conv152 = trunc i32 %and151 to i8
  %81 = load i8*, i8** %output.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %81, i64 13
  store i8 %conv152, i8* %arrayidx153, align 1
  %82 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state154 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %82, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [5 x i32], [5 x i32]* %state154, i64 0, i64 3
  %83 = load i32, i32* %arrayidx155, align 4
  %shr156 = lshr i32 %83, 8
  %and157 = and i32 %shr156, 255
  %conv158 = trunc i32 %and157 to i8
  %84 = load i8*, i8** %output.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %84, i64 14
  store i8 %conv158, i8* %arrayidx159, align 1
  %85 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state160 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %85, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [5 x i32], [5 x i32]* %state160, i64 0, i64 3
  %86 = load i32, i32* %arrayidx161, align 4
  %and162 = and i32 %86, 255
  %conv163 = trunc i32 %and162 to i8
  %87 = load i8*, i8** %output.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %87, i64 15
  store i8 %conv163, i8* %arrayidx164, align 1
  %88 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state165 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %88, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [5 x i32], [5 x i32]* %state165, i64 0, i64 4
  %89 = load i32, i32* %arrayidx166, align 4
  %shr167 = lshr i32 %89, 24
  %and168 = and i32 %shr167, 255
  %conv169 = trunc i32 %and168 to i8
  %90 = load i8*, i8** %output.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %90, i64 16
  store i8 %conv169, i8* %arrayidx170, align 1
  %91 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state171 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %91, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [5 x i32], [5 x i32]* %state171, i64 0, i64 4
  %92 = load i32, i32* %arrayidx172, align 4
  %shr173 = lshr i32 %92, 16
  %and174 = and i32 %shr173, 255
  %conv175 = trunc i32 %and174 to i8
  %93 = load i8*, i8** %output.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %93, i64 17
  store i8 %conv175, i8* %arrayidx176, align 1
  %94 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state177 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %94, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [5 x i32], [5 x i32]* %state177, i64 0, i64 4
  %95 = load i32, i32* %arrayidx178, align 4
  %shr179 = lshr i32 %95, 8
  %and180 = and i32 %shr179, 255
  %conv181 = trunc i32 %and180 to i8
  %96 = load i8*, i8** %output.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %96, i64 18
  store i8 %conv181, i8* %arrayidx182, align 1
  %97 = load %struct.mbedtls_sha1_context*, %struct.mbedtls_sha1_context** %ctx.addr, align 8
  %state183 = getelementptr inbounds %struct.mbedtls_sha1_context, %struct.mbedtls_sha1_context* %97, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [5 x i32], [5 x i32]* %state183, i64 0, i64 4
  %98 = load i32, i32* %arrayidx184, align 4
  %and185 = and i32 %98, 255
  %conv186 = trunc i32 %and185 to i8
  %99 = load i8*, i8** %output.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %99, i64 19
  store i8 %conv186, i8* %arrayidx187, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then72, %if.then17
  %100 = load i32, i32* %retval, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha1(i8* noundef %input, i64 noundef %ilen, i8* noundef %output) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_sha1_context, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
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
  call void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef %ctx) #6
  %call = call i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef %ctx) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  br label %exit

if.end:                                           ; preds = %do.end2
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i64, i64* %ilen.addr, align 8
  %call3 = call i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %0, i64 noundef %1) #6
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %exit

if.end6:                                          ; preds = %if.end
  %2 = load i8*, i8** %output.addr, align 8
  %call7 = call i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %2) #6
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %exit

if.end10:                                         ; preds = %if.end6
  br label %exit

exit:                                             ; preds = %if.end10, %if.then9, %if.then5, %if.then
  call void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef %ctx) #6
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_sha1_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buflen = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %sha1sum = alloca [20 x i8], align 16
  %ctx = alloca %struct.mbedtls_sha1_context, align 4
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  call void @mbedtls_sha1_init(%struct.mbedtls_sha1_context* noundef %ctx) #6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call2 = call i32 @mbedtls_sha1_starts(%struct.mbedtls_sha1_context* noundef %ctx) #6
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %fail

if.end5:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %3, 2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  store i32 1000, i32* %buflen, align 4
  %call8 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 97, i64 noundef 1000) #5
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %4, 1000
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %5 = load i32, i32* %buflen, align 4
  %conv = sext i32 %5 to i64
  %call13 = call i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %arraydecay12, i64 noundef %conv) #6
  store i32 %call13, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %6, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body11
  br label %fail

if.end17:                                         ; preds = %for.body11
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond9, !llvm.loop !6

for.end:                                          ; preds = %for.cond9
  br label %if.end26

if.else:                                          ; preds = %if.end5
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x [57 x i8]], [3 x [57 x i8]]* @sha1_test_buf, i64 0, i64 %idxprom
  %arraydecay18 = getelementptr inbounds [57 x i8], [57 x i8]* %arrayidx, i64 0, i64 0
  %9 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds [3 x i64], [3 x i64]* @sha1_test_buflen, i64 0, i64 %idxprom19
  %10 = load i64, i64* %arrayidx20, align 8
  %call21 = call i32 @mbedtls_sha1_update(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %arraydecay18, i64 noundef %10) #6
  store i32 %call21, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %11, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else
  br label %fail

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %for.end
  %arraydecay27 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1sum, i64 0, i64 0
  %call28 = call i32 @mbedtls_sha1_finish(%struct.mbedtls_sha1_context* noundef %ctx, i8* noundef %arraydecay27) #6
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  br label %fail

if.end32:                                         ; preds = %if.end26
  %arraydecay33 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1sum, i64 0, i64 0
  %12 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %12 to i64
  %arrayidx35 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @sha1_test_sum, i64 0, i64 %idxprom34
  %arraydecay36 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx35, i64 0, i64 0
  %call37 = call i32 @memcmp(i8* noundef %arraydecay33, i8* noundef %arraydecay36, i64 noundef 20) #7
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end32
  store i32 1, i32* %ret, align 4
  br label %fail

if.end41:                                         ; preds = %if.end32
  %13 = load i32, i32* %verbose.addr, align 4
  %cmp42 = icmp ne i32 %13, 0
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  %call45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %14 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %14, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end49:                                        ; preds = %for.cond
  %15 = load i32, i32* %verbose.addr, align 4
  %cmp50 = icmp ne i32 %15, 0
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %for.end49
  %call53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %for.end49
  br label %exit

fail:                                             ; preds = %if.then40, %if.then31, %if.then24, %if.then16, %if.then4
  %16 = load i32, i32* %verbose.addr, align 4
  %cmp55 = icmp ne i32 %16, 0
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %fail
  %call58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %fail
  br label %exit

exit:                                             ; preds = %if.end59, %if.end54
  call void @mbedtls_sha1_free(%struct.mbedtls_sha1_context* noundef %ctx) #6
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

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
