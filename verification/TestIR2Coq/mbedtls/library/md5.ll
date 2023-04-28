; ModuleID = 'md5.c'
source_filename = "md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_md5_context = type { [2 x i32], [4 x i32], [64 x i8] }
%struct.anon = type { [16 x i32], i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"  MD5 test #%d: \00", align 1
@md5_test_buf = internal constant [7 x [81 x i8]] [[81 x i8] zeroinitializer, [81 x i8] c"a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [81 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [81 x i8] c"message digest\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [81 x i8] c"abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [81 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [81 x i8] c"12345678901234567890123456789012345678901234567890123456789012345678901234567890\00"], align 16
@md5_test_buflen = internal constant [7 x i64] [i64 0, i64 1, i64 3, i64 14, i64 26, i64 62, i64 80], align 16
@md5_test_sum = internal constant [7 x [16 x i8]] [[16 x i8] c"\D4\1D\8C\D9\8F\00\B2\04\E9\80\09\98\EC\F8B~", [16 x i8] c"\0C\C1u\B9\C0\F1\B6\A81\C3\99\E2iw&a", [16 x i8] c"\90\01P\98<\D2O\B0\D6\96?}(\E1\7Fr", [16 x i8] c"\F9ki}|\B7\93\8DRZ/1\AA\F1a\D0", [16 x i8] c"\C3\FC\D3\D7a\92\E4\00}\FBIl\CAg\E1;", [16 x i8] c"\D1t\AB\98\D2w\D9\F5\A5a\1C,\9FA\9D\9F", [16 x i8] c"W\ED\F4\A2+\E3\C9U\ACI\DA.!\07\B6z"], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md5_context*, align 8
  store %struct.mbedtls_md5_context* %ctx, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_md5_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 88) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md5_context*, align 8
  store %struct.mbedtls_md5_context* %ctx, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_md5_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_md5_context* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 88) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_md5_clone(%struct.mbedtls_md5_context* noundef %dst, %struct.mbedtls_md5_context* noundef %src) #0 {
entry:
  %dst.addr = alloca %struct.mbedtls_md5_context*, align 8
  %src.addr = alloca %struct.mbedtls_md5_context*, align 8
  store %struct.mbedtls_md5_context* %dst, %struct.mbedtls_md5_context** %dst.addr, align 8
  store %struct.mbedtls_md5_context* %src, %struct.mbedtls_md5_context** %src.addr, align 8
  %0 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %dst.addr, align 8
  %1 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %src.addr, align 8
  %2 = bitcast %struct.mbedtls_md5_context* %0 to i8*
  %3 = bitcast %struct.mbedtls_md5_context* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 88, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md5_context*, align 8
  store %struct.mbedtls_md5_context* %ctx, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total1 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %total1, i64 0, i64 1
  store i32 0, i32* %arrayidx2, align 4
  %2 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %2, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %state, i64 0, i64 0
  store i32 1732584193, i32* %arrayidx3, align 4
  %3 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state4 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %state4, i64 0, i64 1
  store i32 -271733879, i32* %arrayidx5, align 4
  %4 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state6 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %state6, i64 0, i64 2
  store i32 -1732584194, i32* %arrayidx7, align 4
  %5 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %state8, i64 0, i64 3
  store i32 271733878, i32* %arrayidx9, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef %ctx, i8* noundef %data) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md5_context*, align 8
  %data.addr = alloca i8*, align 8
  %local = alloca %struct.anon, align 4
  store %struct.mbedtls_md5_context* %ctx, %struct.mbedtls_md5_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl i32 %conv2, 8
  %or = or i32 %conv, %shl
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %X = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [16 x i32], [16 x i32]* %X, i64 0, i64 0
  store i32 %or10, i32* %arrayidx11, align 4
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %shl16 = shl i32 %conv15, 8
  %or17 = or i32 %conv13, %shl16
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %13 to i32
  %shl20 = shl i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %shl24 = shl i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %X26 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [16 x i32], [16 x i32]* %X26, i64 0, i64 1
  store i32 %or25, i32* %arrayidx27, align 4
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %16, i64 8
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %18, i64 9
  %19 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %19 to i32
  %shl32 = shl i32 %conv31, 8
  %or33 = or i32 %conv29, %shl32
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %20, i64 10
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %21 to i32
  %shl36 = shl i32 %conv35, 16
  %or37 = or i32 %or33, %shl36
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 11
  %23 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %23 to i32
  %shl40 = shl i32 %conv39, 24
  %or41 = or i32 %or37, %shl40
  %X42 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* %X42, i64 0, i64 2
  store i32 %or41, i32* %arrayidx43, align 4
  %24 = load i8*, i8** %data.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %24, i64 12
  %25 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %25 to i32
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %26, i64 13
  %27 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %27 to i32
  %shl48 = shl i32 %conv47, 8
  %or49 = or i32 %conv45, %shl48
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %28, i64 14
  %29 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %29 to i32
  %shl52 = shl i32 %conv51, 16
  %or53 = or i32 %or49, %shl52
  %30 = load i8*, i8** %data.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %30, i64 15
  %31 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %31 to i32
  %shl56 = shl i32 %conv55, 24
  %or57 = or i32 %or53, %shl56
  %X58 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [16 x i32], [16 x i32]* %X58, i64 0, i64 3
  store i32 %or57, i32* %arrayidx59, align 4
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %32, i64 16
  %33 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %33 to i32
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %34, i64 17
  %35 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %35 to i32
  %shl64 = shl i32 %conv63, 8
  %or65 = or i32 %conv61, %shl64
  %36 = load i8*, i8** %data.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %36, i64 18
  %37 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %37 to i32
  %shl68 = shl i32 %conv67, 16
  %or69 = or i32 %or65, %shl68
  %38 = load i8*, i8** %data.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %38, i64 19
  %39 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %39 to i32
  %shl72 = shl i32 %conv71, 24
  %or73 = or i32 %or69, %shl72
  %X74 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [16 x i32], [16 x i32]* %X74, i64 0, i64 4
  store i32 %or73, i32* %arrayidx75, align 4
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %40, i64 20
  %41 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %41 to i32
  %42 = load i8*, i8** %data.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %42, i64 21
  %43 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %43 to i32
  %shl80 = shl i32 %conv79, 8
  %or81 = or i32 %conv77, %shl80
  %44 = load i8*, i8** %data.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %44, i64 22
  %45 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %45 to i32
  %shl84 = shl i32 %conv83, 16
  %or85 = or i32 %or81, %shl84
  %46 = load i8*, i8** %data.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %46, i64 23
  %47 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %47 to i32
  %shl88 = shl i32 %conv87, 24
  %or89 = or i32 %or85, %shl88
  %X90 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [16 x i32], [16 x i32]* %X90, i64 0, i64 5
  store i32 %or89, i32* %arrayidx91, align 4
  %48 = load i8*, i8** %data.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %48, i64 24
  %49 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %49 to i32
  %50 = load i8*, i8** %data.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %50, i64 25
  %51 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %51 to i32
  %shl96 = shl i32 %conv95, 8
  %or97 = or i32 %conv93, %shl96
  %52 = load i8*, i8** %data.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %52, i64 26
  %53 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %53 to i32
  %shl100 = shl i32 %conv99, 16
  %or101 = or i32 %or97, %shl100
  %54 = load i8*, i8** %data.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %54, i64 27
  %55 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %55 to i32
  %shl104 = shl i32 %conv103, 24
  %or105 = or i32 %or101, %shl104
  %X106 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [16 x i32], [16 x i32]* %X106, i64 0, i64 6
  store i32 %or105, i32* %arrayidx107, align 4
  %56 = load i8*, i8** %data.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %56, i64 28
  %57 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %57 to i32
  %58 = load i8*, i8** %data.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %58, i64 29
  %59 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %59 to i32
  %shl112 = shl i32 %conv111, 8
  %or113 = or i32 %conv109, %shl112
  %60 = load i8*, i8** %data.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %60, i64 30
  %61 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %61 to i32
  %shl116 = shl i32 %conv115, 16
  %or117 = or i32 %or113, %shl116
  %62 = load i8*, i8** %data.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %62, i64 31
  %63 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %63 to i32
  %shl120 = shl i32 %conv119, 24
  %or121 = or i32 %or117, %shl120
  %X122 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [16 x i32], [16 x i32]* %X122, i64 0, i64 7
  store i32 %or121, i32* %arrayidx123, align 4
  %64 = load i8*, i8** %data.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %64, i64 32
  %65 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %65 to i32
  %66 = load i8*, i8** %data.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %66, i64 33
  %67 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %67 to i32
  %shl128 = shl i32 %conv127, 8
  %or129 = or i32 %conv125, %shl128
  %68 = load i8*, i8** %data.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %68, i64 34
  %69 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %69 to i32
  %shl132 = shl i32 %conv131, 16
  %or133 = or i32 %or129, %shl132
  %70 = load i8*, i8** %data.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %70, i64 35
  %71 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %71 to i32
  %shl136 = shl i32 %conv135, 24
  %or137 = or i32 %or133, %shl136
  %X138 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [16 x i32], [16 x i32]* %X138, i64 0, i64 8
  store i32 %or137, i32* %arrayidx139, align 4
  %72 = load i8*, i8** %data.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %72, i64 36
  %73 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %73 to i32
  %74 = load i8*, i8** %data.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %74, i64 37
  %75 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %75 to i32
  %shl144 = shl i32 %conv143, 8
  %or145 = or i32 %conv141, %shl144
  %76 = load i8*, i8** %data.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %76, i64 38
  %77 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %77 to i32
  %shl148 = shl i32 %conv147, 16
  %or149 = or i32 %or145, %shl148
  %78 = load i8*, i8** %data.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %78, i64 39
  %79 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %79 to i32
  %shl152 = shl i32 %conv151, 24
  %or153 = or i32 %or149, %shl152
  %X154 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [16 x i32], [16 x i32]* %X154, i64 0, i64 9
  store i32 %or153, i32* %arrayidx155, align 4
  %80 = load i8*, i8** %data.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %80, i64 40
  %81 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %81 to i32
  %82 = load i8*, i8** %data.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %82, i64 41
  %83 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %83 to i32
  %shl160 = shl i32 %conv159, 8
  %or161 = or i32 %conv157, %shl160
  %84 = load i8*, i8** %data.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %84, i64 42
  %85 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %85 to i32
  %shl164 = shl i32 %conv163, 16
  %or165 = or i32 %or161, %shl164
  %86 = load i8*, i8** %data.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %86, i64 43
  %87 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %87 to i32
  %shl168 = shl i32 %conv167, 24
  %or169 = or i32 %or165, %shl168
  %X170 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* %X170, i64 0, i64 10
  store i32 %or169, i32* %arrayidx171, align 4
  %88 = load i8*, i8** %data.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %88, i64 44
  %89 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %89 to i32
  %90 = load i8*, i8** %data.addr, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %90, i64 45
  %91 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %91 to i32
  %shl176 = shl i32 %conv175, 8
  %or177 = or i32 %conv173, %shl176
  %92 = load i8*, i8** %data.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %92, i64 46
  %93 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %93 to i32
  %shl180 = shl i32 %conv179, 16
  %or181 = or i32 %or177, %shl180
  %94 = load i8*, i8** %data.addr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %94, i64 47
  %95 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %95 to i32
  %shl184 = shl i32 %conv183, 24
  %or185 = or i32 %or181, %shl184
  %X186 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [16 x i32], [16 x i32]* %X186, i64 0, i64 11
  store i32 %or185, i32* %arrayidx187, align 4
  %96 = load i8*, i8** %data.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %96, i64 48
  %97 = load i8, i8* %arrayidx188, align 1
  %conv189 = zext i8 %97 to i32
  %98 = load i8*, i8** %data.addr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %98, i64 49
  %99 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %99 to i32
  %shl192 = shl i32 %conv191, 8
  %or193 = or i32 %conv189, %shl192
  %100 = load i8*, i8** %data.addr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %100, i64 50
  %101 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %101 to i32
  %shl196 = shl i32 %conv195, 16
  %or197 = or i32 %or193, %shl196
  %102 = load i8*, i8** %data.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %102, i64 51
  %103 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %103 to i32
  %shl200 = shl i32 %conv199, 24
  %or201 = or i32 %or197, %shl200
  %X202 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [16 x i32], [16 x i32]* %X202, i64 0, i64 12
  store i32 %or201, i32* %arrayidx203, align 4
  %104 = load i8*, i8** %data.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %104, i64 52
  %105 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %105 to i32
  %106 = load i8*, i8** %data.addr, align 8
  %arrayidx206 = getelementptr inbounds i8, i8* %106, i64 53
  %107 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %107 to i32
  %shl208 = shl i32 %conv207, 8
  %or209 = or i32 %conv205, %shl208
  %108 = load i8*, i8** %data.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %108, i64 54
  %109 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %109 to i32
  %shl212 = shl i32 %conv211, 16
  %or213 = or i32 %or209, %shl212
  %110 = load i8*, i8** %data.addr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %110, i64 55
  %111 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %111 to i32
  %shl216 = shl i32 %conv215, 24
  %or217 = or i32 %or213, %shl216
  %X218 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [16 x i32], [16 x i32]* %X218, i64 0, i64 13
  store i32 %or217, i32* %arrayidx219, align 4
  %112 = load i8*, i8** %data.addr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %112, i64 56
  %113 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %113 to i32
  %114 = load i8*, i8** %data.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %114, i64 57
  %115 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %115 to i32
  %shl224 = shl i32 %conv223, 8
  %or225 = or i32 %conv221, %shl224
  %116 = load i8*, i8** %data.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %116, i64 58
  %117 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %117 to i32
  %shl228 = shl i32 %conv227, 16
  %or229 = or i32 %or225, %shl228
  %118 = load i8*, i8** %data.addr, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %118, i64 59
  %119 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %119 to i32
  %shl232 = shl i32 %conv231, 24
  %or233 = or i32 %or229, %shl232
  %X234 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [16 x i32], [16 x i32]* %X234, i64 0, i64 14
  store i32 %or233, i32* %arrayidx235, align 4
  %120 = load i8*, i8** %data.addr, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %120, i64 60
  %121 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %121 to i32
  %122 = load i8*, i8** %data.addr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %122, i64 61
  %123 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %123 to i32
  %shl240 = shl i32 %conv239, 8
  %or241 = or i32 %conv237, %shl240
  %124 = load i8*, i8** %data.addr, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %124, i64 62
  %125 = load i8, i8* %arrayidx242, align 1
  %conv243 = zext i8 %125 to i32
  %shl244 = shl i32 %conv243, 16
  %or245 = or i32 %or241, %shl244
  %126 = load i8*, i8** %data.addr, align 8
  %arrayidx246 = getelementptr inbounds i8, i8* %126, i64 63
  %127 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %127 to i32
  %shl248 = shl i32 %conv247, 24
  %or249 = or i32 %or245, %shl248
  %X250 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [16 x i32], [16 x i32]* %X250, i64 0, i64 15
  store i32 %or249, i32* %arrayidx251, align 4
  %128 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %128, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [4 x i32], [4 x i32]* %state, i64 0, i64 0
  %129 = load i32, i32* %arrayidx252, align 4
  %A = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %129, i32* %A, align 4
  %130 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state253 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %130, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [4 x i32], [4 x i32]* %state253, i64 0, i64 1
  %131 = load i32, i32* %arrayidx254, align 4
  %B = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %131, i32* %B, align 4
  %132 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state255 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %132, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %state255, i64 0, i64 2
  %133 = load i32, i32* %arrayidx256, align 4
  %C = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %133, i32* %C, align 4
  %134 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state257 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %134, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [4 x i32], [4 x i32]* %state257, i64 0, i64 3
  %135 = load i32, i32* %arrayidx258, align 4
  %D = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %135, i32* %D, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %D259 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %136 = load i32, i32* %D259, align 4
  %B260 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %137 = load i32, i32* %B260, align 4
  %C261 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %138 = load i32, i32* %C261, align 4
  %D262 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %139 = load i32, i32* %D262, align 4
  %xor = xor i32 %138, %139
  %and = and i32 %137, %xor
  %xor263 = xor i32 %136, %and
  %X264 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [16 x i32], [16 x i32]* %X264, i64 0, i64 0
  %140 = load i32, i32* %arrayidx265, align 4
  %add = add i32 %xor263, %140
  %add266 = add i32 %add, -680876936
  %A267 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %141 = load i32, i32* %A267, align 4
  %add268 = add i32 %141, %add266
  store i32 %add268, i32* %A267, align 4
  %A269 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %142 = load i32, i32* %A269, align 4
  %shl270 = shl i32 %142, 7
  %A271 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %143 = load i32, i32* %A271, align 4
  %and272 = and i32 %143, -1
  %shr = lshr i32 %and272, 25
  %or273 = or i32 %shl270, %shr
  %B274 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %144 = load i32, i32* %B274, align 4
  %add275 = add i32 %or273, %144
  %A276 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add275, i32* %A276, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body277

do.body277:                                       ; preds = %do.end
  %C278 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %145 = load i32, i32* %C278, align 4
  %A279 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %146 = load i32, i32* %A279, align 4
  %B280 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %147 = load i32, i32* %B280, align 4
  %C281 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %148 = load i32, i32* %C281, align 4
  %xor282 = xor i32 %147, %148
  %and283 = and i32 %146, %xor282
  %xor284 = xor i32 %145, %and283
  %X285 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [16 x i32], [16 x i32]* %X285, i64 0, i64 1
  %149 = load i32, i32* %arrayidx286, align 4
  %add287 = add i32 %xor284, %149
  %add288 = add i32 %add287, -389564586
  %D289 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %150 = load i32, i32* %D289, align 4
  %add290 = add i32 %150, %add288
  store i32 %add290, i32* %D289, align 4
  %D291 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %151 = load i32, i32* %D291, align 4
  %shl292 = shl i32 %151, 12
  %D293 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %152 = load i32, i32* %D293, align 4
  %and294 = and i32 %152, -1
  %shr295 = lshr i32 %and294, 20
  %or296 = or i32 %shl292, %shr295
  %A297 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %153 = load i32, i32* %A297, align 4
  %add298 = add i32 %or296, %153
  %D299 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add298, i32* %D299, align 4
  br label %do.end300

do.end300:                                        ; preds = %do.body277
  br label %do.body301

do.body301:                                       ; preds = %do.end300
  %B302 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %154 = load i32, i32* %B302, align 4
  %D303 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %155 = load i32, i32* %D303, align 4
  %A304 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %156 = load i32, i32* %A304, align 4
  %B305 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %157 = load i32, i32* %B305, align 4
  %xor306 = xor i32 %156, %157
  %and307 = and i32 %155, %xor306
  %xor308 = xor i32 %154, %and307
  %X309 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [16 x i32], [16 x i32]* %X309, i64 0, i64 2
  %158 = load i32, i32* %arrayidx310, align 4
  %add311 = add i32 %xor308, %158
  %add312 = add i32 %add311, 606105819
  %C313 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %159 = load i32, i32* %C313, align 4
  %add314 = add i32 %159, %add312
  store i32 %add314, i32* %C313, align 4
  %C315 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %160 = load i32, i32* %C315, align 4
  %shl316 = shl i32 %160, 17
  %C317 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %161 = load i32, i32* %C317, align 4
  %and318 = and i32 %161, -1
  %shr319 = lshr i32 %and318, 15
  %or320 = or i32 %shl316, %shr319
  %D321 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %162 = load i32, i32* %D321, align 4
  %add322 = add i32 %or320, %162
  %C323 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add322, i32* %C323, align 4
  br label %do.end324

do.end324:                                        ; preds = %do.body301
  br label %do.body325

do.body325:                                       ; preds = %do.end324
  %A326 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %163 = load i32, i32* %A326, align 4
  %C327 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %164 = load i32, i32* %C327, align 4
  %D328 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %165 = load i32, i32* %D328, align 4
  %A329 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %166 = load i32, i32* %A329, align 4
  %xor330 = xor i32 %165, %166
  %and331 = and i32 %164, %xor330
  %xor332 = xor i32 %163, %and331
  %X333 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx334 = getelementptr inbounds [16 x i32], [16 x i32]* %X333, i64 0, i64 3
  %167 = load i32, i32* %arrayidx334, align 4
  %add335 = add i32 %xor332, %167
  %add336 = add i32 %add335, -1044525330
  %B337 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %168 = load i32, i32* %B337, align 4
  %add338 = add i32 %168, %add336
  store i32 %add338, i32* %B337, align 4
  %B339 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %169 = load i32, i32* %B339, align 4
  %shl340 = shl i32 %169, 22
  %B341 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %170 = load i32, i32* %B341, align 4
  %and342 = and i32 %170, -1
  %shr343 = lshr i32 %and342, 10
  %or344 = or i32 %shl340, %shr343
  %C345 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %171 = load i32, i32* %C345, align 4
  %add346 = add i32 %or344, %171
  %B347 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add346, i32* %B347, align 4
  br label %do.end348

do.end348:                                        ; preds = %do.body325
  br label %do.body349

do.body349:                                       ; preds = %do.end348
  %D350 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %172 = load i32, i32* %D350, align 4
  %B351 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %173 = load i32, i32* %B351, align 4
  %C352 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %174 = load i32, i32* %C352, align 4
  %D353 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %175 = load i32, i32* %D353, align 4
  %xor354 = xor i32 %174, %175
  %and355 = and i32 %173, %xor354
  %xor356 = xor i32 %172, %and355
  %X357 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [16 x i32], [16 x i32]* %X357, i64 0, i64 4
  %176 = load i32, i32* %arrayidx358, align 4
  %add359 = add i32 %xor356, %176
  %add360 = add i32 %add359, -176418897
  %A361 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %177 = load i32, i32* %A361, align 4
  %add362 = add i32 %177, %add360
  store i32 %add362, i32* %A361, align 4
  %A363 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %178 = load i32, i32* %A363, align 4
  %shl364 = shl i32 %178, 7
  %A365 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %179 = load i32, i32* %A365, align 4
  %and366 = and i32 %179, -1
  %shr367 = lshr i32 %and366, 25
  %or368 = or i32 %shl364, %shr367
  %B369 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %180 = load i32, i32* %B369, align 4
  %add370 = add i32 %or368, %180
  %A371 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add370, i32* %A371, align 4
  br label %do.end372

do.end372:                                        ; preds = %do.body349
  br label %do.body373

do.body373:                                       ; preds = %do.end372
  %C374 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %181 = load i32, i32* %C374, align 4
  %A375 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %182 = load i32, i32* %A375, align 4
  %B376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %183 = load i32, i32* %B376, align 4
  %C377 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %184 = load i32, i32* %C377, align 4
  %xor378 = xor i32 %183, %184
  %and379 = and i32 %182, %xor378
  %xor380 = xor i32 %181, %and379
  %X381 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [16 x i32], [16 x i32]* %X381, i64 0, i64 5
  %185 = load i32, i32* %arrayidx382, align 4
  %add383 = add i32 %xor380, %185
  %add384 = add i32 %add383, 1200080426
  %D385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %186 = load i32, i32* %D385, align 4
  %add386 = add i32 %186, %add384
  store i32 %add386, i32* %D385, align 4
  %D387 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %187 = load i32, i32* %D387, align 4
  %shl388 = shl i32 %187, 12
  %D389 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %188 = load i32, i32* %D389, align 4
  %and390 = and i32 %188, -1
  %shr391 = lshr i32 %and390, 20
  %or392 = or i32 %shl388, %shr391
  %A393 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %189 = load i32, i32* %A393, align 4
  %add394 = add i32 %or392, %189
  %D395 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add394, i32* %D395, align 4
  br label %do.end396

do.end396:                                        ; preds = %do.body373
  br label %do.body397

do.body397:                                       ; preds = %do.end396
  %B398 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %190 = load i32, i32* %B398, align 4
  %D399 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %191 = load i32, i32* %D399, align 4
  %A400 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %192 = load i32, i32* %A400, align 4
  %B401 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %193 = load i32, i32* %B401, align 4
  %xor402 = xor i32 %192, %193
  %and403 = and i32 %191, %xor402
  %xor404 = xor i32 %190, %and403
  %X405 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [16 x i32], [16 x i32]* %X405, i64 0, i64 6
  %194 = load i32, i32* %arrayidx406, align 4
  %add407 = add i32 %xor404, %194
  %add408 = add i32 %add407, -1473231341
  %C409 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %195 = load i32, i32* %C409, align 4
  %add410 = add i32 %195, %add408
  store i32 %add410, i32* %C409, align 4
  %C411 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %196 = load i32, i32* %C411, align 4
  %shl412 = shl i32 %196, 17
  %C413 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %197 = load i32, i32* %C413, align 4
  %and414 = and i32 %197, -1
  %shr415 = lshr i32 %and414, 15
  %or416 = or i32 %shl412, %shr415
  %D417 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %198 = load i32, i32* %D417, align 4
  %add418 = add i32 %or416, %198
  %C419 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add418, i32* %C419, align 4
  br label %do.end420

do.end420:                                        ; preds = %do.body397
  br label %do.body421

do.body421:                                       ; preds = %do.end420
  %A422 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %199 = load i32, i32* %A422, align 4
  %C423 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %200 = load i32, i32* %C423, align 4
  %D424 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %201 = load i32, i32* %D424, align 4
  %A425 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %202 = load i32, i32* %A425, align 4
  %xor426 = xor i32 %201, %202
  %and427 = and i32 %200, %xor426
  %xor428 = xor i32 %199, %and427
  %X429 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [16 x i32], [16 x i32]* %X429, i64 0, i64 7
  %203 = load i32, i32* %arrayidx430, align 4
  %add431 = add i32 %xor428, %203
  %add432 = add i32 %add431, -45705983
  %B433 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %204 = load i32, i32* %B433, align 4
  %add434 = add i32 %204, %add432
  store i32 %add434, i32* %B433, align 4
  %B435 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %205 = load i32, i32* %B435, align 4
  %shl436 = shl i32 %205, 22
  %B437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %206 = load i32, i32* %B437, align 4
  %and438 = and i32 %206, -1
  %shr439 = lshr i32 %and438, 10
  %or440 = or i32 %shl436, %shr439
  %C441 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %207 = load i32, i32* %C441, align 4
  %add442 = add i32 %or440, %207
  %B443 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add442, i32* %B443, align 4
  br label %do.end444

do.end444:                                        ; preds = %do.body421
  br label %do.body445

do.body445:                                       ; preds = %do.end444
  %D446 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %208 = load i32, i32* %D446, align 4
  %B447 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %209 = load i32, i32* %B447, align 4
  %C448 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %210 = load i32, i32* %C448, align 4
  %D449 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %211 = load i32, i32* %D449, align 4
  %xor450 = xor i32 %210, %211
  %and451 = and i32 %209, %xor450
  %xor452 = xor i32 %208, %and451
  %X453 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [16 x i32], [16 x i32]* %X453, i64 0, i64 8
  %212 = load i32, i32* %arrayidx454, align 4
  %add455 = add i32 %xor452, %212
  %add456 = add i32 %add455, 1770035416
  %A457 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %213 = load i32, i32* %A457, align 4
  %add458 = add i32 %213, %add456
  store i32 %add458, i32* %A457, align 4
  %A459 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %214 = load i32, i32* %A459, align 4
  %shl460 = shl i32 %214, 7
  %A461 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %215 = load i32, i32* %A461, align 4
  %and462 = and i32 %215, -1
  %shr463 = lshr i32 %and462, 25
  %or464 = or i32 %shl460, %shr463
  %B465 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %216 = load i32, i32* %B465, align 4
  %add466 = add i32 %or464, %216
  %A467 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add466, i32* %A467, align 4
  br label %do.end468

do.end468:                                        ; preds = %do.body445
  br label %do.body469

do.body469:                                       ; preds = %do.end468
  %C470 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %217 = load i32, i32* %C470, align 4
  %A471 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %218 = load i32, i32* %A471, align 4
  %B472 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %219 = load i32, i32* %B472, align 4
  %C473 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %220 = load i32, i32* %C473, align 4
  %xor474 = xor i32 %219, %220
  %and475 = and i32 %218, %xor474
  %xor476 = xor i32 %217, %and475
  %X477 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [16 x i32], [16 x i32]* %X477, i64 0, i64 9
  %221 = load i32, i32* %arrayidx478, align 4
  %add479 = add i32 %xor476, %221
  %add480 = add i32 %add479, -1958414417
  %D481 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %222 = load i32, i32* %D481, align 4
  %add482 = add i32 %222, %add480
  store i32 %add482, i32* %D481, align 4
  %D483 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %223 = load i32, i32* %D483, align 4
  %shl484 = shl i32 %223, 12
  %D485 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %224 = load i32, i32* %D485, align 4
  %and486 = and i32 %224, -1
  %shr487 = lshr i32 %and486, 20
  %or488 = or i32 %shl484, %shr487
  %A489 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %225 = load i32, i32* %A489, align 4
  %add490 = add i32 %or488, %225
  %D491 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add490, i32* %D491, align 4
  br label %do.end492

do.end492:                                        ; preds = %do.body469
  br label %do.body493

do.body493:                                       ; preds = %do.end492
  %B494 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %226 = load i32, i32* %B494, align 4
  %D495 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %227 = load i32, i32* %D495, align 4
  %A496 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %228 = load i32, i32* %A496, align 4
  %B497 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %229 = load i32, i32* %B497, align 4
  %xor498 = xor i32 %228, %229
  %and499 = and i32 %227, %xor498
  %xor500 = xor i32 %226, %and499
  %X501 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx502 = getelementptr inbounds [16 x i32], [16 x i32]* %X501, i64 0, i64 10
  %230 = load i32, i32* %arrayidx502, align 4
  %add503 = add i32 %xor500, %230
  %add504 = add i32 %add503, -42063
  %C505 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %231 = load i32, i32* %C505, align 4
  %add506 = add i32 %231, %add504
  store i32 %add506, i32* %C505, align 4
  %C507 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %232 = load i32, i32* %C507, align 4
  %shl508 = shl i32 %232, 17
  %C509 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %233 = load i32, i32* %C509, align 4
  %and510 = and i32 %233, -1
  %shr511 = lshr i32 %and510, 15
  %or512 = or i32 %shl508, %shr511
  %D513 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %234 = load i32, i32* %D513, align 4
  %add514 = add i32 %or512, %234
  %C515 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add514, i32* %C515, align 4
  br label %do.end516

do.end516:                                        ; preds = %do.body493
  br label %do.body517

do.body517:                                       ; preds = %do.end516
  %A518 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %235 = load i32, i32* %A518, align 4
  %C519 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %236 = load i32, i32* %C519, align 4
  %D520 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %237 = load i32, i32* %D520, align 4
  %A521 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %238 = load i32, i32* %A521, align 4
  %xor522 = xor i32 %237, %238
  %and523 = and i32 %236, %xor522
  %xor524 = xor i32 %235, %and523
  %X525 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [16 x i32], [16 x i32]* %X525, i64 0, i64 11
  %239 = load i32, i32* %arrayidx526, align 4
  %add527 = add i32 %xor524, %239
  %add528 = add i32 %add527, -1990404162
  %B529 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %240 = load i32, i32* %B529, align 4
  %add530 = add i32 %240, %add528
  store i32 %add530, i32* %B529, align 4
  %B531 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %241 = load i32, i32* %B531, align 4
  %shl532 = shl i32 %241, 22
  %B533 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %242 = load i32, i32* %B533, align 4
  %and534 = and i32 %242, -1
  %shr535 = lshr i32 %and534, 10
  %or536 = or i32 %shl532, %shr535
  %C537 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %243 = load i32, i32* %C537, align 4
  %add538 = add i32 %or536, %243
  %B539 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add538, i32* %B539, align 4
  br label %do.end540

do.end540:                                        ; preds = %do.body517
  br label %do.body541

do.body541:                                       ; preds = %do.end540
  %D542 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %244 = load i32, i32* %D542, align 4
  %B543 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %245 = load i32, i32* %B543, align 4
  %C544 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %246 = load i32, i32* %C544, align 4
  %D545 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %247 = load i32, i32* %D545, align 4
  %xor546 = xor i32 %246, %247
  %and547 = and i32 %245, %xor546
  %xor548 = xor i32 %244, %and547
  %X549 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx550 = getelementptr inbounds [16 x i32], [16 x i32]* %X549, i64 0, i64 12
  %248 = load i32, i32* %arrayidx550, align 4
  %add551 = add i32 %xor548, %248
  %add552 = add i32 %add551, 1804603682
  %A553 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %249 = load i32, i32* %A553, align 4
  %add554 = add i32 %249, %add552
  store i32 %add554, i32* %A553, align 4
  %A555 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %250 = load i32, i32* %A555, align 4
  %shl556 = shl i32 %250, 7
  %A557 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %251 = load i32, i32* %A557, align 4
  %and558 = and i32 %251, -1
  %shr559 = lshr i32 %and558, 25
  %or560 = or i32 %shl556, %shr559
  %B561 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %252 = load i32, i32* %B561, align 4
  %add562 = add i32 %or560, %252
  %A563 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add562, i32* %A563, align 4
  br label %do.end564

do.end564:                                        ; preds = %do.body541
  br label %do.body565

do.body565:                                       ; preds = %do.end564
  %C566 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %253 = load i32, i32* %C566, align 4
  %A567 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %254 = load i32, i32* %A567, align 4
  %B568 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %255 = load i32, i32* %B568, align 4
  %C569 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %256 = load i32, i32* %C569, align 4
  %xor570 = xor i32 %255, %256
  %and571 = and i32 %254, %xor570
  %xor572 = xor i32 %253, %and571
  %X573 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx574 = getelementptr inbounds [16 x i32], [16 x i32]* %X573, i64 0, i64 13
  %257 = load i32, i32* %arrayidx574, align 4
  %add575 = add i32 %xor572, %257
  %add576 = add i32 %add575, -40341101
  %D577 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %258 = load i32, i32* %D577, align 4
  %add578 = add i32 %258, %add576
  store i32 %add578, i32* %D577, align 4
  %D579 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %259 = load i32, i32* %D579, align 4
  %shl580 = shl i32 %259, 12
  %D581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %260 = load i32, i32* %D581, align 4
  %and582 = and i32 %260, -1
  %shr583 = lshr i32 %and582, 20
  %or584 = or i32 %shl580, %shr583
  %A585 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %261 = load i32, i32* %A585, align 4
  %add586 = add i32 %or584, %261
  %D587 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add586, i32* %D587, align 4
  br label %do.end588

do.end588:                                        ; preds = %do.body565
  br label %do.body589

do.body589:                                       ; preds = %do.end588
  %B590 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %262 = load i32, i32* %B590, align 4
  %D591 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %263 = load i32, i32* %D591, align 4
  %A592 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %264 = load i32, i32* %A592, align 4
  %B593 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %265 = load i32, i32* %B593, align 4
  %xor594 = xor i32 %264, %265
  %and595 = and i32 %263, %xor594
  %xor596 = xor i32 %262, %and595
  %X597 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [16 x i32], [16 x i32]* %X597, i64 0, i64 14
  %266 = load i32, i32* %arrayidx598, align 4
  %add599 = add i32 %xor596, %266
  %add600 = add i32 %add599, -1502002290
  %C601 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %267 = load i32, i32* %C601, align 4
  %add602 = add i32 %267, %add600
  store i32 %add602, i32* %C601, align 4
  %C603 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %268 = load i32, i32* %C603, align 4
  %shl604 = shl i32 %268, 17
  %C605 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %269 = load i32, i32* %C605, align 4
  %and606 = and i32 %269, -1
  %shr607 = lshr i32 %and606, 15
  %or608 = or i32 %shl604, %shr607
  %D609 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %270 = load i32, i32* %D609, align 4
  %add610 = add i32 %or608, %270
  %C611 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add610, i32* %C611, align 4
  br label %do.end612

do.end612:                                        ; preds = %do.body589
  br label %do.body613

do.body613:                                       ; preds = %do.end612
  %A614 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %271 = load i32, i32* %A614, align 4
  %C615 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %272 = load i32, i32* %C615, align 4
  %D616 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %273 = load i32, i32* %D616, align 4
  %A617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %274 = load i32, i32* %A617, align 4
  %xor618 = xor i32 %273, %274
  %and619 = and i32 %272, %xor618
  %xor620 = xor i32 %271, %and619
  %X621 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx622 = getelementptr inbounds [16 x i32], [16 x i32]* %X621, i64 0, i64 15
  %275 = load i32, i32* %arrayidx622, align 4
  %add623 = add i32 %xor620, %275
  %add624 = add i32 %add623, 1236535329
  %B625 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %276 = load i32, i32* %B625, align 4
  %add626 = add i32 %276, %add624
  store i32 %add626, i32* %B625, align 4
  %B627 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %277 = load i32, i32* %B627, align 4
  %shl628 = shl i32 %277, 22
  %B629 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %278 = load i32, i32* %B629, align 4
  %and630 = and i32 %278, -1
  %shr631 = lshr i32 %and630, 10
  %or632 = or i32 %shl628, %shr631
  %C633 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %279 = load i32, i32* %C633, align 4
  %add634 = add i32 %or632, %279
  %B635 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add634, i32* %B635, align 4
  br label %do.end636

do.end636:                                        ; preds = %do.body613
  br label %do.body637

do.body637:                                       ; preds = %do.end636
  %C638 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %280 = load i32, i32* %C638, align 4
  %D639 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %281 = load i32, i32* %D639, align 4
  %B640 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %282 = load i32, i32* %B640, align 4
  %C641 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %283 = load i32, i32* %C641, align 4
  %xor642 = xor i32 %282, %283
  %and643 = and i32 %281, %xor642
  %xor644 = xor i32 %280, %and643
  %X645 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx646 = getelementptr inbounds [16 x i32], [16 x i32]* %X645, i64 0, i64 1
  %284 = load i32, i32* %arrayidx646, align 4
  %add647 = add i32 %xor644, %284
  %add648 = add i32 %add647, -165796510
  %A649 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %285 = load i32, i32* %A649, align 4
  %add650 = add i32 %285, %add648
  store i32 %add650, i32* %A649, align 4
  %A651 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %286 = load i32, i32* %A651, align 4
  %shl652 = shl i32 %286, 5
  %A653 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %287 = load i32, i32* %A653, align 4
  %and654 = and i32 %287, -1
  %shr655 = lshr i32 %and654, 27
  %or656 = or i32 %shl652, %shr655
  %B657 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %288 = load i32, i32* %B657, align 4
  %add658 = add i32 %or656, %288
  %A659 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add658, i32* %A659, align 4
  br label %do.end660

do.end660:                                        ; preds = %do.body637
  br label %do.body661

do.body661:                                       ; preds = %do.end660
  %B662 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %289 = load i32, i32* %B662, align 4
  %C663 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %290 = load i32, i32* %C663, align 4
  %A664 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %291 = load i32, i32* %A664, align 4
  %B665 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %292 = load i32, i32* %B665, align 4
  %xor666 = xor i32 %291, %292
  %and667 = and i32 %290, %xor666
  %xor668 = xor i32 %289, %and667
  %X669 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [16 x i32], [16 x i32]* %X669, i64 0, i64 6
  %293 = load i32, i32* %arrayidx670, align 4
  %add671 = add i32 %xor668, %293
  %add672 = add i32 %add671, -1069501632
  %D673 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %294 = load i32, i32* %D673, align 4
  %add674 = add i32 %294, %add672
  store i32 %add674, i32* %D673, align 4
  %D675 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %295 = load i32, i32* %D675, align 4
  %shl676 = shl i32 %295, 9
  %D677 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %296 = load i32, i32* %D677, align 4
  %and678 = and i32 %296, -1
  %shr679 = lshr i32 %and678, 23
  %or680 = or i32 %shl676, %shr679
  %A681 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %297 = load i32, i32* %A681, align 4
  %add682 = add i32 %or680, %297
  %D683 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add682, i32* %D683, align 4
  br label %do.end684

do.end684:                                        ; preds = %do.body661
  br label %do.body685

do.body685:                                       ; preds = %do.end684
  %A686 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %298 = load i32, i32* %A686, align 4
  %B687 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %299 = load i32, i32* %B687, align 4
  %D688 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %300 = load i32, i32* %D688, align 4
  %A689 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %301 = load i32, i32* %A689, align 4
  %xor690 = xor i32 %300, %301
  %and691 = and i32 %299, %xor690
  %xor692 = xor i32 %298, %and691
  %X693 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx694 = getelementptr inbounds [16 x i32], [16 x i32]* %X693, i64 0, i64 11
  %302 = load i32, i32* %arrayidx694, align 4
  %add695 = add i32 %xor692, %302
  %add696 = add i32 %add695, 643717713
  %C697 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %303 = load i32, i32* %C697, align 4
  %add698 = add i32 %303, %add696
  store i32 %add698, i32* %C697, align 4
  %C699 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %304 = load i32, i32* %C699, align 4
  %shl700 = shl i32 %304, 14
  %C701 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %305 = load i32, i32* %C701, align 4
  %and702 = and i32 %305, -1
  %shr703 = lshr i32 %and702, 18
  %or704 = or i32 %shl700, %shr703
  %D705 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %306 = load i32, i32* %D705, align 4
  %add706 = add i32 %or704, %306
  %C707 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add706, i32* %C707, align 4
  br label %do.end708

do.end708:                                        ; preds = %do.body685
  br label %do.body709

do.body709:                                       ; preds = %do.end708
  %D710 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %307 = load i32, i32* %D710, align 4
  %A711 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %308 = load i32, i32* %A711, align 4
  %C712 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %309 = load i32, i32* %C712, align 4
  %D713 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %310 = load i32, i32* %D713, align 4
  %xor714 = xor i32 %309, %310
  %and715 = and i32 %308, %xor714
  %xor716 = xor i32 %307, %and715
  %X717 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx718 = getelementptr inbounds [16 x i32], [16 x i32]* %X717, i64 0, i64 0
  %311 = load i32, i32* %arrayidx718, align 4
  %add719 = add i32 %xor716, %311
  %add720 = add i32 %add719, -373897302
  %B721 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %312 = load i32, i32* %B721, align 4
  %add722 = add i32 %312, %add720
  store i32 %add722, i32* %B721, align 4
  %B723 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %313 = load i32, i32* %B723, align 4
  %shl724 = shl i32 %313, 20
  %B725 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %314 = load i32, i32* %B725, align 4
  %and726 = and i32 %314, -1
  %shr727 = lshr i32 %and726, 12
  %or728 = or i32 %shl724, %shr727
  %C729 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %315 = load i32, i32* %C729, align 4
  %add730 = add i32 %or728, %315
  %B731 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add730, i32* %B731, align 4
  br label %do.end732

do.end732:                                        ; preds = %do.body709
  br label %do.body733

do.body733:                                       ; preds = %do.end732
  %C734 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %316 = load i32, i32* %C734, align 4
  %D735 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %317 = load i32, i32* %D735, align 4
  %B736 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %318 = load i32, i32* %B736, align 4
  %C737 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %319 = load i32, i32* %C737, align 4
  %xor738 = xor i32 %318, %319
  %and739 = and i32 %317, %xor738
  %xor740 = xor i32 %316, %and739
  %X741 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx742 = getelementptr inbounds [16 x i32], [16 x i32]* %X741, i64 0, i64 5
  %320 = load i32, i32* %arrayidx742, align 4
  %add743 = add i32 %xor740, %320
  %add744 = add i32 %add743, -701558691
  %A745 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %321 = load i32, i32* %A745, align 4
  %add746 = add i32 %321, %add744
  store i32 %add746, i32* %A745, align 4
  %A747 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %322 = load i32, i32* %A747, align 4
  %shl748 = shl i32 %322, 5
  %A749 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %323 = load i32, i32* %A749, align 4
  %and750 = and i32 %323, -1
  %shr751 = lshr i32 %and750, 27
  %or752 = or i32 %shl748, %shr751
  %B753 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %324 = load i32, i32* %B753, align 4
  %add754 = add i32 %or752, %324
  %A755 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add754, i32* %A755, align 4
  br label %do.end756

do.end756:                                        ; preds = %do.body733
  br label %do.body757

do.body757:                                       ; preds = %do.end756
  %B758 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %325 = load i32, i32* %B758, align 4
  %C759 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %326 = load i32, i32* %C759, align 4
  %A760 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %327 = load i32, i32* %A760, align 4
  %B761 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %328 = load i32, i32* %B761, align 4
  %xor762 = xor i32 %327, %328
  %and763 = and i32 %326, %xor762
  %xor764 = xor i32 %325, %and763
  %X765 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx766 = getelementptr inbounds [16 x i32], [16 x i32]* %X765, i64 0, i64 10
  %329 = load i32, i32* %arrayidx766, align 4
  %add767 = add i32 %xor764, %329
  %add768 = add i32 %add767, 38016083
  %D769 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %330 = load i32, i32* %D769, align 4
  %add770 = add i32 %330, %add768
  store i32 %add770, i32* %D769, align 4
  %D771 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %331 = load i32, i32* %D771, align 4
  %shl772 = shl i32 %331, 9
  %D773 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %332 = load i32, i32* %D773, align 4
  %and774 = and i32 %332, -1
  %shr775 = lshr i32 %and774, 23
  %or776 = or i32 %shl772, %shr775
  %A777 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %333 = load i32, i32* %A777, align 4
  %add778 = add i32 %or776, %333
  %D779 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add778, i32* %D779, align 4
  br label %do.end780

do.end780:                                        ; preds = %do.body757
  br label %do.body781

do.body781:                                       ; preds = %do.end780
  %A782 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %334 = load i32, i32* %A782, align 4
  %B783 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %335 = load i32, i32* %B783, align 4
  %D784 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %336 = load i32, i32* %D784, align 4
  %A785 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %337 = load i32, i32* %A785, align 4
  %xor786 = xor i32 %336, %337
  %and787 = and i32 %335, %xor786
  %xor788 = xor i32 %334, %and787
  %X789 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx790 = getelementptr inbounds [16 x i32], [16 x i32]* %X789, i64 0, i64 15
  %338 = load i32, i32* %arrayidx790, align 4
  %add791 = add i32 %xor788, %338
  %add792 = add i32 %add791, -660478335
  %C793 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %339 = load i32, i32* %C793, align 4
  %add794 = add i32 %339, %add792
  store i32 %add794, i32* %C793, align 4
  %C795 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %340 = load i32, i32* %C795, align 4
  %shl796 = shl i32 %340, 14
  %C797 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %341 = load i32, i32* %C797, align 4
  %and798 = and i32 %341, -1
  %shr799 = lshr i32 %and798, 18
  %or800 = or i32 %shl796, %shr799
  %D801 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %342 = load i32, i32* %D801, align 4
  %add802 = add i32 %or800, %342
  %C803 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add802, i32* %C803, align 4
  br label %do.end804

do.end804:                                        ; preds = %do.body781
  br label %do.body805

do.body805:                                       ; preds = %do.end804
  %D806 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %343 = load i32, i32* %D806, align 4
  %A807 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %344 = load i32, i32* %A807, align 4
  %C808 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %345 = load i32, i32* %C808, align 4
  %D809 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %346 = load i32, i32* %D809, align 4
  %xor810 = xor i32 %345, %346
  %and811 = and i32 %344, %xor810
  %xor812 = xor i32 %343, %and811
  %X813 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx814 = getelementptr inbounds [16 x i32], [16 x i32]* %X813, i64 0, i64 4
  %347 = load i32, i32* %arrayidx814, align 4
  %add815 = add i32 %xor812, %347
  %add816 = add i32 %add815, -405537848
  %B817 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %348 = load i32, i32* %B817, align 4
  %add818 = add i32 %348, %add816
  store i32 %add818, i32* %B817, align 4
  %B819 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %349 = load i32, i32* %B819, align 4
  %shl820 = shl i32 %349, 20
  %B821 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %350 = load i32, i32* %B821, align 4
  %and822 = and i32 %350, -1
  %shr823 = lshr i32 %and822, 12
  %or824 = or i32 %shl820, %shr823
  %C825 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %351 = load i32, i32* %C825, align 4
  %add826 = add i32 %or824, %351
  %B827 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add826, i32* %B827, align 4
  br label %do.end828

do.end828:                                        ; preds = %do.body805
  br label %do.body829

do.body829:                                       ; preds = %do.end828
  %C830 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %352 = load i32, i32* %C830, align 4
  %D831 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %353 = load i32, i32* %D831, align 4
  %B832 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %354 = load i32, i32* %B832, align 4
  %C833 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %355 = load i32, i32* %C833, align 4
  %xor834 = xor i32 %354, %355
  %and835 = and i32 %353, %xor834
  %xor836 = xor i32 %352, %and835
  %X837 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx838 = getelementptr inbounds [16 x i32], [16 x i32]* %X837, i64 0, i64 9
  %356 = load i32, i32* %arrayidx838, align 4
  %add839 = add i32 %xor836, %356
  %add840 = add i32 %add839, 568446438
  %A841 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %357 = load i32, i32* %A841, align 4
  %add842 = add i32 %357, %add840
  store i32 %add842, i32* %A841, align 4
  %A843 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %358 = load i32, i32* %A843, align 4
  %shl844 = shl i32 %358, 5
  %A845 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %359 = load i32, i32* %A845, align 4
  %and846 = and i32 %359, -1
  %shr847 = lshr i32 %and846, 27
  %or848 = or i32 %shl844, %shr847
  %B849 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %360 = load i32, i32* %B849, align 4
  %add850 = add i32 %or848, %360
  %A851 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add850, i32* %A851, align 4
  br label %do.end852

do.end852:                                        ; preds = %do.body829
  br label %do.body853

do.body853:                                       ; preds = %do.end852
  %B854 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %361 = load i32, i32* %B854, align 4
  %C855 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %362 = load i32, i32* %C855, align 4
  %A856 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %363 = load i32, i32* %A856, align 4
  %B857 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %364 = load i32, i32* %B857, align 4
  %xor858 = xor i32 %363, %364
  %and859 = and i32 %362, %xor858
  %xor860 = xor i32 %361, %and859
  %X861 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx862 = getelementptr inbounds [16 x i32], [16 x i32]* %X861, i64 0, i64 14
  %365 = load i32, i32* %arrayidx862, align 4
  %add863 = add i32 %xor860, %365
  %add864 = add i32 %add863, -1019803690
  %D865 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %366 = load i32, i32* %D865, align 4
  %add866 = add i32 %366, %add864
  store i32 %add866, i32* %D865, align 4
  %D867 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %367 = load i32, i32* %D867, align 4
  %shl868 = shl i32 %367, 9
  %D869 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %368 = load i32, i32* %D869, align 4
  %and870 = and i32 %368, -1
  %shr871 = lshr i32 %and870, 23
  %or872 = or i32 %shl868, %shr871
  %A873 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %369 = load i32, i32* %A873, align 4
  %add874 = add i32 %or872, %369
  %D875 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add874, i32* %D875, align 4
  br label %do.end876

do.end876:                                        ; preds = %do.body853
  br label %do.body877

do.body877:                                       ; preds = %do.end876
  %A878 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %370 = load i32, i32* %A878, align 4
  %B879 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %371 = load i32, i32* %B879, align 4
  %D880 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %372 = load i32, i32* %D880, align 4
  %A881 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %373 = load i32, i32* %A881, align 4
  %xor882 = xor i32 %372, %373
  %and883 = and i32 %371, %xor882
  %xor884 = xor i32 %370, %and883
  %X885 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [16 x i32], [16 x i32]* %X885, i64 0, i64 3
  %374 = load i32, i32* %arrayidx886, align 4
  %add887 = add i32 %xor884, %374
  %add888 = add i32 %add887, -187363961
  %C889 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %375 = load i32, i32* %C889, align 4
  %add890 = add i32 %375, %add888
  store i32 %add890, i32* %C889, align 4
  %C891 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %376 = load i32, i32* %C891, align 4
  %shl892 = shl i32 %376, 14
  %C893 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %377 = load i32, i32* %C893, align 4
  %and894 = and i32 %377, -1
  %shr895 = lshr i32 %and894, 18
  %or896 = or i32 %shl892, %shr895
  %D897 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %378 = load i32, i32* %D897, align 4
  %add898 = add i32 %or896, %378
  %C899 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add898, i32* %C899, align 4
  br label %do.end900

do.end900:                                        ; preds = %do.body877
  br label %do.body901

do.body901:                                       ; preds = %do.end900
  %D902 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %379 = load i32, i32* %D902, align 4
  %A903 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %380 = load i32, i32* %A903, align 4
  %C904 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %381 = load i32, i32* %C904, align 4
  %D905 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %382 = load i32, i32* %D905, align 4
  %xor906 = xor i32 %381, %382
  %and907 = and i32 %380, %xor906
  %xor908 = xor i32 %379, %and907
  %X909 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx910 = getelementptr inbounds [16 x i32], [16 x i32]* %X909, i64 0, i64 8
  %383 = load i32, i32* %arrayidx910, align 4
  %add911 = add i32 %xor908, %383
  %add912 = add i32 %add911, 1163531501
  %B913 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %384 = load i32, i32* %B913, align 4
  %add914 = add i32 %384, %add912
  store i32 %add914, i32* %B913, align 4
  %B915 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %385 = load i32, i32* %B915, align 4
  %shl916 = shl i32 %385, 20
  %B917 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %386 = load i32, i32* %B917, align 4
  %and918 = and i32 %386, -1
  %shr919 = lshr i32 %and918, 12
  %or920 = or i32 %shl916, %shr919
  %C921 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %387 = load i32, i32* %C921, align 4
  %add922 = add i32 %or920, %387
  %B923 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add922, i32* %B923, align 4
  br label %do.end924

do.end924:                                        ; preds = %do.body901
  br label %do.body925

do.body925:                                       ; preds = %do.end924
  %C926 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %388 = load i32, i32* %C926, align 4
  %D927 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %389 = load i32, i32* %D927, align 4
  %B928 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %390 = load i32, i32* %B928, align 4
  %C929 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %391 = load i32, i32* %C929, align 4
  %xor930 = xor i32 %390, %391
  %and931 = and i32 %389, %xor930
  %xor932 = xor i32 %388, %and931
  %X933 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx934 = getelementptr inbounds [16 x i32], [16 x i32]* %X933, i64 0, i64 13
  %392 = load i32, i32* %arrayidx934, align 4
  %add935 = add i32 %xor932, %392
  %add936 = add i32 %add935, -1444681467
  %A937 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %393 = load i32, i32* %A937, align 4
  %add938 = add i32 %393, %add936
  store i32 %add938, i32* %A937, align 4
  %A939 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %394 = load i32, i32* %A939, align 4
  %shl940 = shl i32 %394, 5
  %A941 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %395 = load i32, i32* %A941, align 4
  %and942 = and i32 %395, -1
  %shr943 = lshr i32 %and942, 27
  %or944 = or i32 %shl940, %shr943
  %B945 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %396 = load i32, i32* %B945, align 4
  %add946 = add i32 %or944, %396
  %A947 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add946, i32* %A947, align 4
  br label %do.end948

do.end948:                                        ; preds = %do.body925
  br label %do.body949

do.body949:                                       ; preds = %do.end948
  %B950 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %397 = load i32, i32* %B950, align 4
  %C951 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %398 = load i32, i32* %C951, align 4
  %A952 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %399 = load i32, i32* %A952, align 4
  %B953 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %400 = load i32, i32* %B953, align 4
  %xor954 = xor i32 %399, %400
  %and955 = and i32 %398, %xor954
  %xor956 = xor i32 %397, %and955
  %X957 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx958 = getelementptr inbounds [16 x i32], [16 x i32]* %X957, i64 0, i64 2
  %401 = load i32, i32* %arrayidx958, align 4
  %add959 = add i32 %xor956, %401
  %add960 = add i32 %add959, -51403784
  %D961 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %402 = load i32, i32* %D961, align 4
  %add962 = add i32 %402, %add960
  store i32 %add962, i32* %D961, align 4
  %D963 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %403 = load i32, i32* %D963, align 4
  %shl964 = shl i32 %403, 9
  %D965 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %404 = load i32, i32* %D965, align 4
  %and966 = and i32 %404, -1
  %shr967 = lshr i32 %and966, 23
  %or968 = or i32 %shl964, %shr967
  %A969 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %405 = load i32, i32* %A969, align 4
  %add970 = add i32 %or968, %405
  %D971 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add970, i32* %D971, align 4
  br label %do.end972

do.end972:                                        ; preds = %do.body949
  br label %do.body973

do.body973:                                       ; preds = %do.end972
  %A974 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %406 = load i32, i32* %A974, align 4
  %B975 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %407 = load i32, i32* %B975, align 4
  %D976 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %408 = load i32, i32* %D976, align 4
  %A977 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %409 = load i32, i32* %A977, align 4
  %xor978 = xor i32 %408, %409
  %and979 = and i32 %407, %xor978
  %xor980 = xor i32 %406, %and979
  %X981 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx982 = getelementptr inbounds [16 x i32], [16 x i32]* %X981, i64 0, i64 7
  %410 = load i32, i32* %arrayidx982, align 4
  %add983 = add i32 %xor980, %410
  %add984 = add i32 %add983, 1735328473
  %C985 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %411 = load i32, i32* %C985, align 4
  %add986 = add i32 %411, %add984
  store i32 %add986, i32* %C985, align 4
  %C987 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %412 = load i32, i32* %C987, align 4
  %shl988 = shl i32 %412, 14
  %C989 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %413 = load i32, i32* %C989, align 4
  %and990 = and i32 %413, -1
  %shr991 = lshr i32 %and990, 18
  %or992 = or i32 %shl988, %shr991
  %D993 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %414 = load i32, i32* %D993, align 4
  %add994 = add i32 %or992, %414
  %C995 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add994, i32* %C995, align 4
  br label %do.end996

do.end996:                                        ; preds = %do.body973
  br label %do.body997

do.body997:                                       ; preds = %do.end996
  %D998 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %415 = load i32, i32* %D998, align 4
  %A999 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %416 = load i32, i32* %A999, align 4
  %C1000 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %417 = load i32, i32* %C1000, align 4
  %D1001 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %418 = load i32, i32* %D1001, align 4
  %xor1002 = xor i32 %417, %418
  %and1003 = and i32 %416, %xor1002
  %xor1004 = xor i32 %415, %and1003
  %X1005 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1006 = getelementptr inbounds [16 x i32], [16 x i32]* %X1005, i64 0, i64 12
  %419 = load i32, i32* %arrayidx1006, align 4
  %add1007 = add i32 %xor1004, %419
  %add1008 = add i32 %add1007, -1926607734
  %B1009 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %420 = load i32, i32* %B1009, align 4
  %add1010 = add i32 %420, %add1008
  store i32 %add1010, i32* %B1009, align 4
  %B1011 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %421 = load i32, i32* %B1011, align 4
  %shl1012 = shl i32 %421, 20
  %B1013 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %422 = load i32, i32* %B1013, align 4
  %and1014 = and i32 %422, -1
  %shr1015 = lshr i32 %and1014, 12
  %or1016 = or i32 %shl1012, %shr1015
  %C1017 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %423 = load i32, i32* %C1017, align 4
  %add1018 = add i32 %or1016, %423
  %B1019 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1018, i32* %B1019, align 4
  br label %do.end1020

do.end1020:                                       ; preds = %do.body997
  br label %do.body1021

do.body1021:                                      ; preds = %do.end1020
  %B1022 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %424 = load i32, i32* %B1022, align 4
  %C1023 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %425 = load i32, i32* %C1023, align 4
  %xor1024 = xor i32 %424, %425
  %D1025 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %426 = load i32, i32* %D1025, align 4
  %xor1026 = xor i32 %xor1024, %426
  %X1027 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1028 = getelementptr inbounds [16 x i32], [16 x i32]* %X1027, i64 0, i64 5
  %427 = load i32, i32* %arrayidx1028, align 4
  %add1029 = add i32 %xor1026, %427
  %add1030 = add i32 %add1029, -378558
  %A1031 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %428 = load i32, i32* %A1031, align 4
  %add1032 = add i32 %428, %add1030
  store i32 %add1032, i32* %A1031, align 4
  %A1033 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %429 = load i32, i32* %A1033, align 4
  %shl1034 = shl i32 %429, 4
  %A1035 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %430 = load i32, i32* %A1035, align 4
  %and1036 = and i32 %430, -1
  %shr1037 = lshr i32 %and1036, 28
  %or1038 = or i32 %shl1034, %shr1037
  %B1039 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %431 = load i32, i32* %B1039, align 4
  %add1040 = add i32 %or1038, %431
  %A1041 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1040, i32* %A1041, align 4
  br label %do.end1042

do.end1042:                                       ; preds = %do.body1021
  br label %do.body1043

do.body1043:                                      ; preds = %do.end1042
  %A1044 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %432 = load i32, i32* %A1044, align 4
  %B1045 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %433 = load i32, i32* %B1045, align 4
  %xor1046 = xor i32 %432, %433
  %C1047 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %434 = load i32, i32* %C1047, align 4
  %xor1048 = xor i32 %xor1046, %434
  %X1049 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1050 = getelementptr inbounds [16 x i32], [16 x i32]* %X1049, i64 0, i64 8
  %435 = load i32, i32* %arrayidx1050, align 4
  %add1051 = add i32 %xor1048, %435
  %add1052 = add i32 %add1051, -2022574463
  %D1053 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %436 = load i32, i32* %D1053, align 4
  %add1054 = add i32 %436, %add1052
  store i32 %add1054, i32* %D1053, align 4
  %D1055 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %437 = load i32, i32* %D1055, align 4
  %shl1056 = shl i32 %437, 11
  %D1057 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %438 = load i32, i32* %D1057, align 4
  %and1058 = and i32 %438, -1
  %shr1059 = lshr i32 %and1058, 21
  %or1060 = or i32 %shl1056, %shr1059
  %A1061 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %439 = load i32, i32* %A1061, align 4
  %add1062 = add i32 %or1060, %439
  %D1063 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1062, i32* %D1063, align 4
  br label %do.end1064

do.end1064:                                       ; preds = %do.body1043
  br label %do.body1065

do.body1065:                                      ; preds = %do.end1064
  %D1066 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %440 = load i32, i32* %D1066, align 4
  %A1067 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %441 = load i32, i32* %A1067, align 4
  %xor1068 = xor i32 %440, %441
  %B1069 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %442 = load i32, i32* %B1069, align 4
  %xor1070 = xor i32 %xor1068, %442
  %X1071 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1072 = getelementptr inbounds [16 x i32], [16 x i32]* %X1071, i64 0, i64 11
  %443 = load i32, i32* %arrayidx1072, align 4
  %add1073 = add i32 %xor1070, %443
  %add1074 = add i32 %add1073, 1839030562
  %C1075 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %444 = load i32, i32* %C1075, align 4
  %add1076 = add i32 %444, %add1074
  store i32 %add1076, i32* %C1075, align 4
  %C1077 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %445 = load i32, i32* %C1077, align 4
  %shl1078 = shl i32 %445, 16
  %C1079 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %446 = load i32, i32* %C1079, align 4
  %and1080 = and i32 %446, -1
  %shr1081 = lshr i32 %and1080, 16
  %or1082 = or i32 %shl1078, %shr1081
  %D1083 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %447 = load i32, i32* %D1083, align 4
  %add1084 = add i32 %or1082, %447
  %C1085 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1084, i32* %C1085, align 4
  br label %do.end1086

do.end1086:                                       ; preds = %do.body1065
  br label %do.body1087

do.body1087:                                      ; preds = %do.end1086
  %C1088 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %448 = load i32, i32* %C1088, align 4
  %D1089 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %449 = load i32, i32* %D1089, align 4
  %xor1090 = xor i32 %448, %449
  %A1091 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %450 = load i32, i32* %A1091, align 4
  %xor1092 = xor i32 %xor1090, %450
  %X1093 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1094 = getelementptr inbounds [16 x i32], [16 x i32]* %X1093, i64 0, i64 14
  %451 = load i32, i32* %arrayidx1094, align 4
  %add1095 = add i32 %xor1092, %451
  %add1096 = add i32 %add1095, -35309556
  %B1097 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %452 = load i32, i32* %B1097, align 4
  %add1098 = add i32 %452, %add1096
  store i32 %add1098, i32* %B1097, align 4
  %B1099 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %453 = load i32, i32* %B1099, align 4
  %shl1100 = shl i32 %453, 23
  %B1101 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %454 = load i32, i32* %B1101, align 4
  %and1102 = and i32 %454, -1
  %shr1103 = lshr i32 %and1102, 9
  %or1104 = or i32 %shl1100, %shr1103
  %C1105 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %455 = load i32, i32* %C1105, align 4
  %add1106 = add i32 %or1104, %455
  %B1107 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1106, i32* %B1107, align 4
  br label %do.end1108

do.end1108:                                       ; preds = %do.body1087
  br label %do.body1109

do.body1109:                                      ; preds = %do.end1108
  %B1110 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %456 = load i32, i32* %B1110, align 4
  %C1111 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %457 = load i32, i32* %C1111, align 4
  %xor1112 = xor i32 %456, %457
  %D1113 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %458 = load i32, i32* %D1113, align 4
  %xor1114 = xor i32 %xor1112, %458
  %X1115 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1116 = getelementptr inbounds [16 x i32], [16 x i32]* %X1115, i64 0, i64 1
  %459 = load i32, i32* %arrayidx1116, align 4
  %add1117 = add i32 %xor1114, %459
  %add1118 = add i32 %add1117, -1530992060
  %A1119 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %460 = load i32, i32* %A1119, align 4
  %add1120 = add i32 %460, %add1118
  store i32 %add1120, i32* %A1119, align 4
  %A1121 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %461 = load i32, i32* %A1121, align 4
  %shl1122 = shl i32 %461, 4
  %A1123 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %462 = load i32, i32* %A1123, align 4
  %and1124 = and i32 %462, -1
  %shr1125 = lshr i32 %and1124, 28
  %or1126 = or i32 %shl1122, %shr1125
  %B1127 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %463 = load i32, i32* %B1127, align 4
  %add1128 = add i32 %or1126, %463
  %A1129 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1128, i32* %A1129, align 4
  br label %do.end1130

do.end1130:                                       ; preds = %do.body1109
  br label %do.body1131

do.body1131:                                      ; preds = %do.end1130
  %A1132 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %464 = load i32, i32* %A1132, align 4
  %B1133 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %465 = load i32, i32* %B1133, align 4
  %xor1134 = xor i32 %464, %465
  %C1135 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %466 = load i32, i32* %C1135, align 4
  %xor1136 = xor i32 %xor1134, %466
  %X1137 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1138 = getelementptr inbounds [16 x i32], [16 x i32]* %X1137, i64 0, i64 4
  %467 = load i32, i32* %arrayidx1138, align 4
  %add1139 = add i32 %xor1136, %467
  %add1140 = add i32 %add1139, 1272893353
  %D1141 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %468 = load i32, i32* %D1141, align 4
  %add1142 = add i32 %468, %add1140
  store i32 %add1142, i32* %D1141, align 4
  %D1143 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %469 = load i32, i32* %D1143, align 4
  %shl1144 = shl i32 %469, 11
  %D1145 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %470 = load i32, i32* %D1145, align 4
  %and1146 = and i32 %470, -1
  %shr1147 = lshr i32 %and1146, 21
  %or1148 = or i32 %shl1144, %shr1147
  %A1149 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %471 = load i32, i32* %A1149, align 4
  %add1150 = add i32 %or1148, %471
  %D1151 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1150, i32* %D1151, align 4
  br label %do.end1152

do.end1152:                                       ; preds = %do.body1131
  br label %do.body1153

do.body1153:                                      ; preds = %do.end1152
  %D1154 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %472 = load i32, i32* %D1154, align 4
  %A1155 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %473 = load i32, i32* %A1155, align 4
  %xor1156 = xor i32 %472, %473
  %B1157 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %474 = load i32, i32* %B1157, align 4
  %xor1158 = xor i32 %xor1156, %474
  %X1159 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1160 = getelementptr inbounds [16 x i32], [16 x i32]* %X1159, i64 0, i64 7
  %475 = load i32, i32* %arrayidx1160, align 4
  %add1161 = add i32 %xor1158, %475
  %add1162 = add i32 %add1161, -155497632
  %C1163 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %476 = load i32, i32* %C1163, align 4
  %add1164 = add i32 %476, %add1162
  store i32 %add1164, i32* %C1163, align 4
  %C1165 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %477 = load i32, i32* %C1165, align 4
  %shl1166 = shl i32 %477, 16
  %C1167 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %478 = load i32, i32* %C1167, align 4
  %and1168 = and i32 %478, -1
  %shr1169 = lshr i32 %and1168, 16
  %or1170 = or i32 %shl1166, %shr1169
  %D1171 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %479 = load i32, i32* %D1171, align 4
  %add1172 = add i32 %or1170, %479
  %C1173 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1172, i32* %C1173, align 4
  br label %do.end1174

do.end1174:                                       ; preds = %do.body1153
  br label %do.body1175

do.body1175:                                      ; preds = %do.end1174
  %C1176 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %480 = load i32, i32* %C1176, align 4
  %D1177 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %481 = load i32, i32* %D1177, align 4
  %xor1178 = xor i32 %480, %481
  %A1179 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %482 = load i32, i32* %A1179, align 4
  %xor1180 = xor i32 %xor1178, %482
  %X1181 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1182 = getelementptr inbounds [16 x i32], [16 x i32]* %X1181, i64 0, i64 10
  %483 = load i32, i32* %arrayidx1182, align 4
  %add1183 = add i32 %xor1180, %483
  %add1184 = add i32 %add1183, -1094730640
  %B1185 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %484 = load i32, i32* %B1185, align 4
  %add1186 = add i32 %484, %add1184
  store i32 %add1186, i32* %B1185, align 4
  %B1187 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %485 = load i32, i32* %B1187, align 4
  %shl1188 = shl i32 %485, 23
  %B1189 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %486 = load i32, i32* %B1189, align 4
  %and1190 = and i32 %486, -1
  %shr1191 = lshr i32 %and1190, 9
  %or1192 = or i32 %shl1188, %shr1191
  %C1193 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %487 = load i32, i32* %C1193, align 4
  %add1194 = add i32 %or1192, %487
  %B1195 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1194, i32* %B1195, align 4
  br label %do.end1196

do.end1196:                                       ; preds = %do.body1175
  br label %do.body1197

do.body1197:                                      ; preds = %do.end1196
  %B1198 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %488 = load i32, i32* %B1198, align 4
  %C1199 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %489 = load i32, i32* %C1199, align 4
  %xor1200 = xor i32 %488, %489
  %D1201 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %490 = load i32, i32* %D1201, align 4
  %xor1202 = xor i32 %xor1200, %490
  %X1203 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1204 = getelementptr inbounds [16 x i32], [16 x i32]* %X1203, i64 0, i64 13
  %491 = load i32, i32* %arrayidx1204, align 4
  %add1205 = add i32 %xor1202, %491
  %add1206 = add i32 %add1205, 681279174
  %A1207 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %492 = load i32, i32* %A1207, align 4
  %add1208 = add i32 %492, %add1206
  store i32 %add1208, i32* %A1207, align 4
  %A1209 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %493 = load i32, i32* %A1209, align 4
  %shl1210 = shl i32 %493, 4
  %A1211 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %494 = load i32, i32* %A1211, align 4
  %and1212 = and i32 %494, -1
  %shr1213 = lshr i32 %and1212, 28
  %or1214 = or i32 %shl1210, %shr1213
  %B1215 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %495 = load i32, i32* %B1215, align 4
  %add1216 = add i32 %or1214, %495
  %A1217 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1216, i32* %A1217, align 4
  br label %do.end1218

do.end1218:                                       ; preds = %do.body1197
  br label %do.body1219

do.body1219:                                      ; preds = %do.end1218
  %A1220 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %496 = load i32, i32* %A1220, align 4
  %B1221 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %497 = load i32, i32* %B1221, align 4
  %xor1222 = xor i32 %496, %497
  %C1223 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %498 = load i32, i32* %C1223, align 4
  %xor1224 = xor i32 %xor1222, %498
  %X1225 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1226 = getelementptr inbounds [16 x i32], [16 x i32]* %X1225, i64 0, i64 0
  %499 = load i32, i32* %arrayidx1226, align 4
  %add1227 = add i32 %xor1224, %499
  %add1228 = add i32 %add1227, -358537222
  %D1229 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %500 = load i32, i32* %D1229, align 4
  %add1230 = add i32 %500, %add1228
  store i32 %add1230, i32* %D1229, align 4
  %D1231 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %501 = load i32, i32* %D1231, align 4
  %shl1232 = shl i32 %501, 11
  %D1233 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %502 = load i32, i32* %D1233, align 4
  %and1234 = and i32 %502, -1
  %shr1235 = lshr i32 %and1234, 21
  %or1236 = or i32 %shl1232, %shr1235
  %A1237 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %503 = load i32, i32* %A1237, align 4
  %add1238 = add i32 %or1236, %503
  %D1239 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1238, i32* %D1239, align 4
  br label %do.end1240

do.end1240:                                       ; preds = %do.body1219
  br label %do.body1241

do.body1241:                                      ; preds = %do.end1240
  %D1242 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %504 = load i32, i32* %D1242, align 4
  %A1243 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %505 = load i32, i32* %A1243, align 4
  %xor1244 = xor i32 %504, %505
  %B1245 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %506 = load i32, i32* %B1245, align 4
  %xor1246 = xor i32 %xor1244, %506
  %X1247 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1248 = getelementptr inbounds [16 x i32], [16 x i32]* %X1247, i64 0, i64 3
  %507 = load i32, i32* %arrayidx1248, align 4
  %add1249 = add i32 %xor1246, %507
  %add1250 = add i32 %add1249, -722521979
  %C1251 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %508 = load i32, i32* %C1251, align 4
  %add1252 = add i32 %508, %add1250
  store i32 %add1252, i32* %C1251, align 4
  %C1253 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %509 = load i32, i32* %C1253, align 4
  %shl1254 = shl i32 %509, 16
  %C1255 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %510 = load i32, i32* %C1255, align 4
  %and1256 = and i32 %510, -1
  %shr1257 = lshr i32 %and1256, 16
  %or1258 = or i32 %shl1254, %shr1257
  %D1259 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %511 = load i32, i32* %D1259, align 4
  %add1260 = add i32 %or1258, %511
  %C1261 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1260, i32* %C1261, align 4
  br label %do.end1262

do.end1262:                                       ; preds = %do.body1241
  br label %do.body1263

do.body1263:                                      ; preds = %do.end1262
  %C1264 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %512 = load i32, i32* %C1264, align 4
  %D1265 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %513 = load i32, i32* %D1265, align 4
  %xor1266 = xor i32 %512, %513
  %A1267 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %514 = load i32, i32* %A1267, align 4
  %xor1268 = xor i32 %xor1266, %514
  %X1269 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1270 = getelementptr inbounds [16 x i32], [16 x i32]* %X1269, i64 0, i64 6
  %515 = load i32, i32* %arrayidx1270, align 4
  %add1271 = add i32 %xor1268, %515
  %add1272 = add i32 %add1271, 76029189
  %B1273 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %516 = load i32, i32* %B1273, align 4
  %add1274 = add i32 %516, %add1272
  store i32 %add1274, i32* %B1273, align 4
  %B1275 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %517 = load i32, i32* %B1275, align 4
  %shl1276 = shl i32 %517, 23
  %B1277 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %518 = load i32, i32* %B1277, align 4
  %and1278 = and i32 %518, -1
  %shr1279 = lshr i32 %and1278, 9
  %or1280 = or i32 %shl1276, %shr1279
  %C1281 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %519 = load i32, i32* %C1281, align 4
  %add1282 = add i32 %or1280, %519
  %B1283 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1282, i32* %B1283, align 4
  br label %do.end1284

do.end1284:                                       ; preds = %do.body1263
  br label %do.body1285

do.body1285:                                      ; preds = %do.end1284
  %B1286 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %520 = load i32, i32* %B1286, align 4
  %C1287 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %521 = load i32, i32* %C1287, align 4
  %xor1288 = xor i32 %520, %521
  %D1289 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %522 = load i32, i32* %D1289, align 4
  %xor1290 = xor i32 %xor1288, %522
  %X1291 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1292 = getelementptr inbounds [16 x i32], [16 x i32]* %X1291, i64 0, i64 9
  %523 = load i32, i32* %arrayidx1292, align 4
  %add1293 = add i32 %xor1290, %523
  %add1294 = add i32 %add1293, -640364487
  %A1295 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %524 = load i32, i32* %A1295, align 4
  %add1296 = add i32 %524, %add1294
  store i32 %add1296, i32* %A1295, align 4
  %A1297 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %525 = load i32, i32* %A1297, align 4
  %shl1298 = shl i32 %525, 4
  %A1299 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %526 = load i32, i32* %A1299, align 4
  %and1300 = and i32 %526, -1
  %shr1301 = lshr i32 %and1300, 28
  %or1302 = or i32 %shl1298, %shr1301
  %B1303 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %527 = load i32, i32* %B1303, align 4
  %add1304 = add i32 %or1302, %527
  %A1305 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1304, i32* %A1305, align 4
  br label %do.end1306

do.end1306:                                       ; preds = %do.body1285
  br label %do.body1307

do.body1307:                                      ; preds = %do.end1306
  %A1308 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %528 = load i32, i32* %A1308, align 4
  %B1309 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %529 = load i32, i32* %B1309, align 4
  %xor1310 = xor i32 %528, %529
  %C1311 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %530 = load i32, i32* %C1311, align 4
  %xor1312 = xor i32 %xor1310, %530
  %X1313 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1314 = getelementptr inbounds [16 x i32], [16 x i32]* %X1313, i64 0, i64 12
  %531 = load i32, i32* %arrayidx1314, align 4
  %add1315 = add i32 %xor1312, %531
  %add1316 = add i32 %add1315, -421815835
  %D1317 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %532 = load i32, i32* %D1317, align 4
  %add1318 = add i32 %532, %add1316
  store i32 %add1318, i32* %D1317, align 4
  %D1319 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %533 = load i32, i32* %D1319, align 4
  %shl1320 = shl i32 %533, 11
  %D1321 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %534 = load i32, i32* %D1321, align 4
  %and1322 = and i32 %534, -1
  %shr1323 = lshr i32 %and1322, 21
  %or1324 = or i32 %shl1320, %shr1323
  %A1325 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %535 = load i32, i32* %A1325, align 4
  %add1326 = add i32 %or1324, %535
  %D1327 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1326, i32* %D1327, align 4
  br label %do.end1328

do.end1328:                                       ; preds = %do.body1307
  br label %do.body1329

do.body1329:                                      ; preds = %do.end1328
  %D1330 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %536 = load i32, i32* %D1330, align 4
  %A1331 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %537 = load i32, i32* %A1331, align 4
  %xor1332 = xor i32 %536, %537
  %B1333 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %538 = load i32, i32* %B1333, align 4
  %xor1334 = xor i32 %xor1332, %538
  %X1335 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1336 = getelementptr inbounds [16 x i32], [16 x i32]* %X1335, i64 0, i64 15
  %539 = load i32, i32* %arrayidx1336, align 4
  %add1337 = add i32 %xor1334, %539
  %add1338 = add i32 %add1337, 530742520
  %C1339 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %540 = load i32, i32* %C1339, align 4
  %add1340 = add i32 %540, %add1338
  store i32 %add1340, i32* %C1339, align 4
  %C1341 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %541 = load i32, i32* %C1341, align 4
  %shl1342 = shl i32 %541, 16
  %C1343 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %542 = load i32, i32* %C1343, align 4
  %and1344 = and i32 %542, -1
  %shr1345 = lshr i32 %and1344, 16
  %or1346 = or i32 %shl1342, %shr1345
  %D1347 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %543 = load i32, i32* %D1347, align 4
  %add1348 = add i32 %or1346, %543
  %C1349 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1348, i32* %C1349, align 4
  br label %do.end1350

do.end1350:                                       ; preds = %do.body1329
  br label %do.body1351

do.body1351:                                      ; preds = %do.end1350
  %C1352 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %544 = load i32, i32* %C1352, align 4
  %D1353 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %545 = load i32, i32* %D1353, align 4
  %xor1354 = xor i32 %544, %545
  %A1355 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %546 = load i32, i32* %A1355, align 4
  %xor1356 = xor i32 %xor1354, %546
  %X1357 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1358 = getelementptr inbounds [16 x i32], [16 x i32]* %X1357, i64 0, i64 2
  %547 = load i32, i32* %arrayidx1358, align 4
  %add1359 = add i32 %xor1356, %547
  %add1360 = add i32 %add1359, -995338651
  %B1361 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %548 = load i32, i32* %B1361, align 4
  %add1362 = add i32 %548, %add1360
  store i32 %add1362, i32* %B1361, align 4
  %B1363 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %549 = load i32, i32* %B1363, align 4
  %shl1364 = shl i32 %549, 23
  %B1365 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %550 = load i32, i32* %B1365, align 4
  %and1366 = and i32 %550, -1
  %shr1367 = lshr i32 %and1366, 9
  %or1368 = or i32 %shl1364, %shr1367
  %C1369 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %551 = load i32, i32* %C1369, align 4
  %add1370 = add i32 %or1368, %551
  %B1371 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1370, i32* %B1371, align 4
  br label %do.end1372

do.end1372:                                       ; preds = %do.body1351
  br label %do.body1373

do.body1373:                                      ; preds = %do.end1372
  %C1374 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %552 = load i32, i32* %C1374, align 4
  %B1375 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %553 = load i32, i32* %B1375, align 4
  %D1376 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %554 = load i32, i32* %D1376, align 4
  %neg = xor i32 %554, -1
  %or1377 = or i32 %553, %neg
  %xor1378 = xor i32 %552, %or1377
  %X1379 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1380 = getelementptr inbounds [16 x i32], [16 x i32]* %X1379, i64 0, i64 0
  %555 = load i32, i32* %arrayidx1380, align 4
  %add1381 = add i32 %xor1378, %555
  %add1382 = add i32 %add1381, -198630844
  %A1383 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %556 = load i32, i32* %A1383, align 4
  %add1384 = add i32 %556, %add1382
  store i32 %add1384, i32* %A1383, align 4
  %A1385 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %557 = load i32, i32* %A1385, align 4
  %shl1386 = shl i32 %557, 6
  %A1387 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %558 = load i32, i32* %A1387, align 4
  %and1388 = and i32 %558, -1
  %shr1389 = lshr i32 %and1388, 26
  %or1390 = or i32 %shl1386, %shr1389
  %B1391 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %559 = load i32, i32* %B1391, align 4
  %add1392 = add i32 %or1390, %559
  %A1393 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1392, i32* %A1393, align 4
  br label %do.end1394

do.end1394:                                       ; preds = %do.body1373
  br label %do.body1395

do.body1395:                                      ; preds = %do.end1394
  %B1396 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %560 = load i32, i32* %B1396, align 4
  %A1397 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %561 = load i32, i32* %A1397, align 4
  %C1398 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %562 = load i32, i32* %C1398, align 4
  %neg1399 = xor i32 %562, -1
  %or1400 = or i32 %561, %neg1399
  %xor1401 = xor i32 %560, %or1400
  %X1402 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1403 = getelementptr inbounds [16 x i32], [16 x i32]* %X1402, i64 0, i64 7
  %563 = load i32, i32* %arrayidx1403, align 4
  %add1404 = add i32 %xor1401, %563
  %add1405 = add i32 %add1404, 1126891415
  %D1406 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %564 = load i32, i32* %D1406, align 4
  %add1407 = add i32 %564, %add1405
  store i32 %add1407, i32* %D1406, align 4
  %D1408 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %565 = load i32, i32* %D1408, align 4
  %shl1409 = shl i32 %565, 10
  %D1410 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %566 = load i32, i32* %D1410, align 4
  %and1411 = and i32 %566, -1
  %shr1412 = lshr i32 %and1411, 22
  %or1413 = or i32 %shl1409, %shr1412
  %A1414 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %567 = load i32, i32* %A1414, align 4
  %add1415 = add i32 %or1413, %567
  %D1416 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1415, i32* %D1416, align 4
  br label %do.end1417

do.end1417:                                       ; preds = %do.body1395
  br label %do.body1418

do.body1418:                                      ; preds = %do.end1417
  %A1419 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %568 = load i32, i32* %A1419, align 4
  %D1420 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %569 = load i32, i32* %D1420, align 4
  %B1421 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %570 = load i32, i32* %B1421, align 4
  %neg1422 = xor i32 %570, -1
  %or1423 = or i32 %569, %neg1422
  %xor1424 = xor i32 %568, %or1423
  %X1425 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1426 = getelementptr inbounds [16 x i32], [16 x i32]* %X1425, i64 0, i64 14
  %571 = load i32, i32* %arrayidx1426, align 4
  %add1427 = add i32 %xor1424, %571
  %add1428 = add i32 %add1427, -1416354905
  %C1429 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %572 = load i32, i32* %C1429, align 4
  %add1430 = add i32 %572, %add1428
  store i32 %add1430, i32* %C1429, align 4
  %C1431 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %573 = load i32, i32* %C1431, align 4
  %shl1432 = shl i32 %573, 15
  %C1433 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %574 = load i32, i32* %C1433, align 4
  %and1434 = and i32 %574, -1
  %shr1435 = lshr i32 %and1434, 17
  %or1436 = or i32 %shl1432, %shr1435
  %D1437 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %575 = load i32, i32* %D1437, align 4
  %add1438 = add i32 %or1436, %575
  %C1439 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1438, i32* %C1439, align 4
  br label %do.end1440

do.end1440:                                       ; preds = %do.body1418
  br label %do.body1441

do.body1441:                                      ; preds = %do.end1440
  %D1442 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %576 = load i32, i32* %D1442, align 4
  %C1443 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %577 = load i32, i32* %C1443, align 4
  %A1444 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %578 = load i32, i32* %A1444, align 4
  %neg1445 = xor i32 %578, -1
  %or1446 = or i32 %577, %neg1445
  %xor1447 = xor i32 %576, %or1446
  %X1448 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1449 = getelementptr inbounds [16 x i32], [16 x i32]* %X1448, i64 0, i64 5
  %579 = load i32, i32* %arrayidx1449, align 4
  %add1450 = add i32 %xor1447, %579
  %add1451 = add i32 %add1450, -57434055
  %B1452 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %580 = load i32, i32* %B1452, align 4
  %add1453 = add i32 %580, %add1451
  store i32 %add1453, i32* %B1452, align 4
  %B1454 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %581 = load i32, i32* %B1454, align 4
  %shl1455 = shl i32 %581, 21
  %B1456 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %582 = load i32, i32* %B1456, align 4
  %and1457 = and i32 %582, -1
  %shr1458 = lshr i32 %and1457, 11
  %or1459 = or i32 %shl1455, %shr1458
  %C1460 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %583 = load i32, i32* %C1460, align 4
  %add1461 = add i32 %or1459, %583
  %B1462 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1461, i32* %B1462, align 4
  br label %do.end1463

do.end1463:                                       ; preds = %do.body1441
  br label %do.body1464

do.body1464:                                      ; preds = %do.end1463
  %C1465 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %584 = load i32, i32* %C1465, align 4
  %B1466 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %585 = load i32, i32* %B1466, align 4
  %D1467 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %586 = load i32, i32* %D1467, align 4
  %neg1468 = xor i32 %586, -1
  %or1469 = or i32 %585, %neg1468
  %xor1470 = xor i32 %584, %or1469
  %X1471 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1472 = getelementptr inbounds [16 x i32], [16 x i32]* %X1471, i64 0, i64 12
  %587 = load i32, i32* %arrayidx1472, align 4
  %add1473 = add i32 %xor1470, %587
  %add1474 = add i32 %add1473, 1700485571
  %A1475 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %588 = load i32, i32* %A1475, align 4
  %add1476 = add i32 %588, %add1474
  store i32 %add1476, i32* %A1475, align 4
  %A1477 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %589 = load i32, i32* %A1477, align 4
  %shl1478 = shl i32 %589, 6
  %A1479 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %590 = load i32, i32* %A1479, align 4
  %and1480 = and i32 %590, -1
  %shr1481 = lshr i32 %and1480, 26
  %or1482 = or i32 %shl1478, %shr1481
  %B1483 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %591 = load i32, i32* %B1483, align 4
  %add1484 = add i32 %or1482, %591
  %A1485 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1484, i32* %A1485, align 4
  br label %do.end1486

do.end1486:                                       ; preds = %do.body1464
  br label %do.body1487

do.body1487:                                      ; preds = %do.end1486
  %B1488 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %592 = load i32, i32* %B1488, align 4
  %A1489 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %593 = load i32, i32* %A1489, align 4
  %C1490 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %594 = load i32, i32* %C1490, align 4
  %neg1491 = xor i32 %594, -1
  %or1492 = or i32 %593, %neg1491
  %xor1493 = xor i32 %592, %or1492
  %X1494 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1495 = getelementptr inbounds [16 x i32], [16 x i32]* %X1494, i64 0, i64 3
  %595 = load i32, i32* %arrayidx1495, align 4
  %add1496 = add i32 %xor1493, %595
  %add1497 = add i32 %add1496, -1894986606
  %D1498 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %596 = load i32, i32* %D1498, align 4
  %add1499 = add i32 %596, %add1497
  store i32 %add1499, i32* %D1498, align 4
  %D1500 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %597 = load i32, i32* %D1500, align 4
  %shl1501 = shl i32 %597, 10
  %D1502 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %598 = load i32, i32* %D1502, align 4
  %and1503 = and i32 %598, -1
  %shr1504 = lshr i32 %and1503, 22
  %or1505 = or i32 %shl1501, %shr1504
  %A1506 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %599 = load i32, i32* %A1506, align 4
  %add1507 = add i32 %or1505, %599
  %D1508 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1507, i32* %D1508, align 4
  br label %do.end1509

do.end1509:                                       ; preds = %do.body1487
  br label %do.body1510

do.body1510:                                      ; preds = %do.end1509
  %A1511 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %600 = load i32, i32* %A1511, align 4
  %D1512 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %601 = load i32, i32* %D1512, align 4
  %B1513 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %602 = load i32, i32* %B1513, align 4
  %neg1514 = xor i32 %602, -1
  %or1515 = or i32 %601, %neg1514
  %xor1516 = xor i32 %600, %or1515
  %X1517 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1518 = getelementptr inbounds [16 x i32], [16 x i32]* %X1517, i64 0, i64 10
  %603 = load i32, i32* %arrayidx1518, align 4
  %add1519 = add i32 %xor1516, %603
  %add1520 = add i32 %add1519, -1051523
  %C1521 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %604 = load i32, i32* %C1521, align 4
  %add1522 = add i32 %604, %add1520
  store i32 %add1522, i32* %C1521, align 4
  %C1523 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %605 = load i32, i32* %C1523, align 4
  %shl1524 = shl i32 %605, 15
  %C1525 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %606 = load i32, i32* %C1525, align 4
  %and1526 = and i32 %606, -1
  %shr1527 = lshr i32 %and1526, 17
  %or1528 = or i32 %shl1524, %shr1527
  %D1529 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %607 = load i32, i32* %D1529, align 4
  %add1530 = add i32 %or1528, %607
  %C1531 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1530, i32* %C1531, align 4
  br label %do.end1532

do.end1532:                                       ; preds = %do.body1510
  br label %do.body1533

do.body1533:                                      ; preds = %do.end1532
  %D1534 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %608 = load i32, i32* %D1534, align 4
  %C1535 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %609 = load i32, i32* %C1535, align 4
  %A1536 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %610 = load i32, i32* %A1536, align 4
  %neg1537 = xor i32 %610, -1
  %or1538 = or i32 %609, %neg1537
  %xor1539 = xor i32 %608, %or1538
  %X1540 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1541 = getelementptr inbounds [16 x i32], [16 x i32]* %X1540, i64 0, i64 1
  %611 = load i32, i32* %arrayidx1541, align 4
  %add1542 = add i32 %xor1539, %611
  %add1543 = add i32 %add1542, -2054922799
  %B1544 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %612 = load i32, i32* %B1544, align 4
  %add1545 = add i32 %612, %add1543
  store i32 %add1545, i32* %B1544, align 4
  %B1546 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %613 = load i32, i32* %B1546, align 4
  %shl1547 = shl i32 %613, 21
  %B1548 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %614 = load i32, i32* %B1548, align 4
  %and1549 = and i32 %614, -1
  %shr1550 = lshr i32 %and1549, 11
  %or1551 = or i32 %shl1547, %shr1550
  %C1552 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %615 = load i32, i32* %C1552, align 4
  %add1553 = add i32 %or1551, %615
  %B1554 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1553, i32* %B1554, align 4
  br label %do.end1555

do.end1555:                                       ; preds = %do.body1533
  br label %do.body1556

do.body1556:                                      ; preds = %do.end1555
  %C1557 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %616 = load i32, i32* %C1557, align 4
  %B1558 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %617 = load i32, i32* %B1558, align 4
  %D1559 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %618 = load i32, i32* %D1559, align 4
  %neg1560 = xor i32 %618, -1
  %or1561 = or i32 %617, %neg1560
  %xor1562 = xor i32 %616, %or1561
  %X1563 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1564 = getelementptr inbounds [16 x i32], [16 x i32]* %X1563, i64 0, i64 8
  %619 = load i32, i32* %arrayidx1564, align 4
  %add1565 = add i32 %xor1562, %619
  %add1566 = add i32 %add1565, 1873313359
  %A1567 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %620 = load i32, i32* %A1567, align 4
  %add1568 = add i32 %620, %add1566
  store i32 %add1568, i32* %A1567, align 4
  %A1569 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %621 = load i32, i32* %A1569, align 4
  %shl1570 = shl i32 %621, 6
  %A1571 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %622 = load i32, i32* %A1571, align 4
  %and1572 = and i32 %622, -1
  %shr1573 = lshr i32 %and1572, 26
  %or1574 = or i32 %shl1570, %shr1573
  %B1575 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %623 = load i32, i32* %B1575, align 4
  %add1576 = add i32 %or1574, %623
  %A1577 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1576, i32* %A1577, align 4
  br label %do.end1578

do.end1578:                                       ; preds = %do.body1556
  br label %do.body1579

do.body1579:                                      ; preds = %do.end1578
  %B1580 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %624 = load i32, i32* %B1580, align 4
  %A1581 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %625 = load i32, i32* %A1581, align 4
  %C1582 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %626 = load i32, i32* %C1582, align 4
  %neg1583 = xor i32 %626, -1
  %or1584 = or i32 %625, %neg1583
  %xor1585 = xor i32 %624, %or1584
  %X1586 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1587 = getelementptr inbounds [16 x i32], [16 x i32]* %X1586, i64 0, i64 15
  %627 = load i32, i32* %arrayidx1587, align 4
  %add1588 = add i32 %xor1585, %627
  %add1589 = add i32 %add1588, -30611744
  %D1590 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %628 = load i32, i32* %D1590, align 4
  %add1591 = add i32 %628, %add1589
  store i32 %add1591, i32* %D1590, align 4
  %D1592 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %629 = load i32, i32* %D1592, align 4
  %shl1593 = shl i32 %629, 10
  %D1594 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %630 = load i32, i32* %D1594, align 4
  %and1595 = and i32 %630, -1
  %shr1596 = lshr i32 %and1595, 22
  %or1597 = or i32 %shl1593, %shr1596
  %A1598 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %631 = load i32, i32* %A1598, align 4
  %add1599 = add i32 %or1597, %631
  %D1600 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1599, i32* %D1600, align 4
  br label %do.end1601

do.end1601:                                       ; preds = %do.body1579
  br label %do.body1602

do.body1602:                                      ; preds = %do.end1601
  %A1603 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %632 = load i32, i32* %A1603, align 4
  %D1604 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %633 = load i32, i32* %D1604, align 4
  %B1605 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %634 = load i32, i32* %B1605, align 4
  %neg1606 = xor i32 %634, -1
  %or1607 = or i32 %633, %neg1606
  %xor1608 = xor i32 %632, %or1607
  %X1609 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1610 = getelementptr inbounds [16 x i32], [16 x i32]* %X1609, i64 0, i64 6
  %635 = load i32, i32* %arrayidx1610, align 4
  %add1611 = add i32 %xor1608, %635
  %add1612 = add i32 %add1611, -1560198380
  %C1613 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %636 = load i32, i32* %C1613, align 4
  %add1614 = add i32 %636, %add1612
  store i32 %add1614, i32* %C1613, align 4
  %C1615 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %637 = load i32, i32* %C1615, align 4
  %shl1616 = shl i32 %637, 15
  %C1617 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %638 = load i32, i32* %C1617, align 4
  %and1618 = and i32 %638, -1
  %shr1619 = lshr i32 %and1618, 17
  %or1620 = or i32 %shl1616, %shr1619
  %D1621 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %639 = load i32, i32* %D1621, align 4
  %add1622 = add i32 %or1620, %639
  %C1623 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1622, i32* %C1623, align 4
  br label %do.end1624

do.end1624:                                       ; preds = %do.body1602
  br label %do.body1625

do.body1625:                                      ; preds = %do.end1624
  %D1626 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %640 = load i32, i32* %D1626, align 4
  %C1627 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %641 = load i32, i32* %C1627, align 4
  %A1628 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %642 = load i32, i32* %A1628, align 4
  %neg1629 = xor i32 %642, -1
  %or1630 = or i32 %641, %neg1629
  %xor1631 = xor i32 %640, %or1630
  %X1632 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1633 = getelementptr inbounds [16 x i32], [16 x i32]* %X1632, i64 0, i64 13
  %643 = load i32, i32* %arrayidx1633, align 4
  %add1634 = add i32 %xor1631, %643
  %add1635 = add i32 %add1634, 1309151649
  %B1636 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %644 = load i32, i32* %B1636, align 4
  %add1637 = add i32 %644, %add1635
  store i32 %add1637, i32* %B1636, align 4
  %B1638 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %645 = load i32, i32* %B1638, align 4
  %shl1639 = shl i32 %645, 21
  %B1640 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %646 = load i32, i32* %B1640, align 4
  %and1641 = and i32 %646, -1
  %shr1642 = lshr i32 %and1641, 11
  %or1643 = or i32 %shl1639, %shr1642
  %C1644 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %647 = load i32, i32* %C1644, align 4
  %add1645 = add i32 %or1643, %647
  %B1646 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1645, i32* %B1646, align 4
  br label %do.end1647

do.end1647:                                       ; preds = %do.body1625
  br label %do.body1648

do.body1648:                                      ; preds = %do.end1647
  %C1649 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %648 = load i32, i32* %C1649, align 4
  %B1650 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %649 = load i32, i32* %B1650, align 4
  %D1651 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %650 = load i32, i32* %D1651, align 4
  %neg1652 = xor i32 %650, -1
  %or1653 = or i32 %649, %neg1652
  %xor1654 = xor i32 %648, %or1653
  %X1655 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1656 = getelementptr inbounds [16 x i32], [16 x i32]* %X1655, i64 0, i64 4
  %651 = load i32, i32* %arrayidx1656, align 4
  %add1657 = add i32 %xor1654, %651
  %add1658 = add i32 %add1657, -145523070
  %A1659 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %652 = load i32, i32* %A1659, align 4
  %add1660 = add i32 %652, %add1658
  store i32 %add1660, i32* %A1659, align 4
  %A1661 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %653 = load i32, i32* %A1661, align 4
  %shl1662 = shl i32 %653, 6
  %A1663 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %654 = load i32, i32* %A1663, align 4
  %and1664 = and i32 %654, -1
  %shr1665 = lshr i32 %and1664, 26
  %or1666 = or i32 %shl1662, %shr1665
  %B1667 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %655 = load i32, i32* %B1667, align 4
  %add1668 = add i32 %or1666, %655
  %A1669 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  store i32 %add1668, i32* %A1669, align 4
  br label %do.end1670

do.end1670:                                       ; preds = %do.body1648
  br label %do.body1671

do.body1671:                                      ; preds = %do.end1670
  %B1672 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %656 = load i32, i32* %B1672, align 4
  %A1673 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %657 = load i32, i32* %A1673, align 4
  %C1674 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %658 = load i32, i32* %C1674, align 4
  %neg1675 = xor i32 %658, -1
  %or1676 = or i32 %657, %neg1675
  %xor1677 = xor i32 %656, %or1676
  %X1678 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1679 = getelementptr inbounds [16 x i32], [16 x i32]* %X1678, i64 0, i64 11
  %659 = load i32, i32* %arrayidx1679, align 4
  %add1680 = add i32 %xor1677, %659
  %add1681 = add i32 %add1680, -1120210379
  %D1682 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %660 = load i32, i32* %D1682, align 4
  %add1683 = add i32 %660, %add1681
  store i32 %add1683, i32* %D1682, align 4
  %D1684 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %661 = load i32, i32* %D1684, align 4
  %shl1685 = shl i32 %661, 10
  %D1686 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %662 = load i32, i32* %D1686, align 4
  %and1687 = and i32 %662, -1
  %shr1688 = lshr i32 %and1687, 22
  %or1689 = or i32 %shl1685, %shr1688
  %A1690 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %663 = load i32, i32* %A1690, align 4
  %add1691 = add i32 %or1689, %663
  %D1692 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  store i32 %add1691, i32* %D1692, align 4
  br label %do.end1693

do.end1693:                                       ; preds = %do.body1671
  br label %do.body1694

do.body1694:                                      ; preds = %do.end1693
  %A1695 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %664 = load i32, i32* %A1695, align 4
  %D1696 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %665 = load i32, i32* %D1696, align 4
  %B1697 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %666 = load i32, i32* %B1697, align 4
  %neg1698 = xor i32 %666, -1
  %or1699 = or i32 %665, %neg1698
  %xor1700 = xor i32 %664, %or1699
  %X1701 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1702 = getelementptr inbounds [16 x i32], [16 x i32]* %X1701, i64 0, i64 2
  %667 = load i32, i32* %arrayidx1702, align 4
  %add1703 = add i32 %xor1700, %667
  %add1704 = add i32 %add1703, 718787259
  %C1705 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %668 = load i32, i32* %C1705, align 4
  %add1706 = add i32 %668, %add1704
  store i32 %add1706, i32* %C1705, align 4
  %C1707 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %669 = load i32, i32* %C1707, align 4
  %shl1708 = shl i32 %669, 15
  %C1709 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %670 = load i32, i32* %C1709, align 4
  %and1710 = and i32 %670, -1
  %shr1711 = lshr i32 %and1710, 17
  %or1712 = or i32 %shl1708, %shr1711
  %D1713 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %671 = load i32, i32* %D1713, align 4
  %add1714 = add i32 %or1712, %671
  %C1715 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  store i32 %add1714, i32* %C1715, align 4
  br label %do.end1716

do.end1716:                                       ; preds = %do.body1694
  br label %do.body1717

do.body1717:                                      ; preds = %do.end1716
  %D1718 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %672 = load i32, i32* %D1718, align 4
  %C1719 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %673 = load i32, i32* %C1719, align 4
  %A1720 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %674 = load i32, i32* %A1720, align 4
  %neg1721 = xor i32 %674, -1
  %or1722 = or i32 %673, %neg1721
  %xor1723 = xor i32 %672, %or1722
  %X1724 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 0
  %arrayidx1725 = getelementptr inbounds [16 x i32], [16 x i32]* %X1724, i64 0, i64 9
  %675 = load i32, i32* %arrayidx1725, align 4
  %add1726 = add i32 %xor1723, %675
  %add1727 = add i32 %add1726, -343485551
  %B1728 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %676 = load i32, i32* %B1728, align 4
  %add1729 = add i32 %676, %add1727
  store i32 %add1729, i32* %B1728, align 4
  %B1730 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %677 = load i32, i32* %B1730, align 4
  %shl1731 = shl i32 %677, 21
  %B1732 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %678 = load i32, i32* %B1732, align 4
  %and1733 = and i32 %678, -1
  %shr1734 = lshr i32 %and1733, 11
  %or1735 = or i32 %shl1731, %shr1734
  %C1736 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %679 = load i32, i32* %C1736, align 4
  %add1737 = add i32 %or1735, %679
  %B1738 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  store i32 %add1737, i32* %B1738, align 4
  br label %do.end1739

do.end1739:                                       ; preds = %do.body1717
  %A1740 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 1
  %680 = load i32, i32* %A1740, align 4
  %681 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state1741 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %681, i32 0, i32 1
  %arrayidx1742 = getelementptr inbounds [4 x i32], [4 x i32]* %state1741, i64 0, i64 0
  %682 = load i32, i32* %arrayidx1742, align 4
  %add1743 = add i32 %682, %680
  store i32 %add1743, i32* %arrayidx1742, align 4
  %B1744 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 2
  %683 = load i32, i32* %B1744, align 4
  %684 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state1745 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %684, i32 0, i32 1
  %arrayidx1746 = getelementptr inbounds [4 x i32], [4 x i32]* %state1745, i64 0, i64 1
  %685 = load i32, i32* %arrayidx1746, align 4
  %add1747 = add i32 %685, %683
  store i32 %add1747, i32* %arrayidx1746, align 4
  %C1748 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 3
  %686 = load i32, i32* %C1748, align 4
  %687 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state1749 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %687, i32 0, i32 1
  %arrayidx1750 = getelementptr inbounds [4 x i32], [4 x i32]* %state1749, i64 0, i64 2
  %688 = load i32, i32* %arrayidx1750, align 4
  %add1751 = add i32 %688, %686
  store i32 %add1751, i32* %arrayidx1750, align 4
  %D1752 = getelementptr inbounds %struct.anon, %struct.anon* %local, i32 0, i32 4
  %689 = load i32, i32* %D1752, align 4
  %690 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state1753 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %690, i32 0, i32 1
  %arrayidx1754 = getelementptr inbounds [4 x i32], [4 x i32]* %state1753, i64 0, i64 3
  %691 = load i32, i32* %arrayidx1754, align 4
  %add1755 = add i32 %691, %689
  store i32 %add1755, i32* %arrayidx1754, align 4
  %692 = bitcast %struct.anon* %local to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %692, i64 noundef 80) #6
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %ctx, i8* noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md5_context*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fill = alloca i64, align 8
  %left = alloca i32, align 4
  store %struct.mbedtls_md5_context* %ctx, %struct.mbedtls_md5_context** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %ilen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %and = and i32 %2, 63
  store i32 %and, i32* %left, align 4
  %3 = load i32, i32* %left, align 4
  %sub = sub i32 64, %3
  %conv = zext i32 %sub to i64
  store i64 %conv, i64* %fill, align 8
  %4 = load i64, i64* %ilen.addr, align 8
  %conv1 = trunc i64 %4 to i32
  %5 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total2 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %total2, i64 0, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %add = add i32 %6, %conv1
  store i32 %add, i32* %arrayidx3, align 4
  %7 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total4 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %7, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %total4, i64 0, i64 0
  %8 = load i32, i32* %arrayidx5, align 4
  %and6 = and i32 %8, -1
  store i32 %and6, i32* %arrayidx5, align 4
  %9 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total7 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %9, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %total7, i64 0, i64 0
  %10 = load i32, i32* %arrayidx8, align 4
  %11 = load i64, i64* %ilen.addr, align 8
  %conv9 = trunc i64 %11 to i32
  %cmp10 = icmp ult i32 %10, %conv9
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %12 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total13 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %total13, i64 0, i64 1
  %13 = load i32, i32* %arrayidx14, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %14 = load i32, i32* %left, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end15
  %15 = load i64, i64* %ilen.addr, align 8
  %16 = load i64, i64* %fill, align 8
  %cmp16 = icmp uge i64 %15, %16
  br i1 %cmp16, label %if.then18, label %if.end28

if.then18:                                        ; preds = %land.lhs.true
  %17 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i64 0, i64 0
  %18 = load i32, i32* %left, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %fill, align 8
  %call = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %19, i64 noundef %20) #5
  %21 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %22 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer19 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %22, i32 0, i32 2
  %arraydecay20 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer19, i64 0, i64 0
  %call21 = call i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef %21, i8* noundef %arraydecay20) #6
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then18
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then18
  %24 = load i64, i64* %fill, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %add.ptr26, i8** %input.addr, align 8
  %26 = load i64, i64* %fill, align 8
  %27 = load i64, i64* %ilen.addr, align 8
  %sub27 = sub i64 %27, %26
  store i64 %sub27, i64* %ilen.addr, align 8
  store i32 0, i32* %left, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %land.lhs.true, %if.end15
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end28
  %28 = load i64, i64* %ilen.addr, align 8
  %cmp29 = icmp uge i64 %28, 64
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %30 = load i8*, i8** %input.addr, align 8
  %call31 = call i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef %29, i8* noundef %30) #6
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %while.body
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %while.body
  %32 = load i8*, i8** %input.addr, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %32, i64 64
  store i8* %add.ptr36, i8** %input.addr, align 8
  %33 = load i64, i64* %ilen.addr, align 8
  %sub37 = sub i64 %33, 64
  store i64 %sub37, i64* %ilen.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %34 = load i64, i64* %ilen.addr, align 8
  %cmp38 = icmp ugt i64 %34, 0
  br i1 %cmp38, label %if.then40, label %if.end46

if.then40:                                        ; preds = %while.end
  %35 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer41 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %35, i32 0, i32 2
  %arraydecay42 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer41, i64 0, i64 0
  %36 = load i32, i32* %left, align 4
  %idx.ext43 = zext i32 %36 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %arraydecay42, i64 %idx.ext43
  %37 = load i8*, i8** %input.addr, align 8
  %38 = load i64, i64* %ilen.addr, align 8
  %call45 = call i8* @memcpy(i8* noundef %add.ptr44, i8* noundef %37, i64 noundef %38) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then34, %if.then24, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef %ctx, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md5_context*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %used = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  store %struct.mbedtls_md5_context* %ctx, %struct.mbedtls_md5_context** %ctx.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %total, i64 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 63
  store i32 %and, i32* %used, align 4
  %2 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %2, i32 0, i32 2
  %3 = load i32, i32* %used, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %used, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i64 0, i64 %idxprom
  store i8 -128, i8* %arrayidx1, align 1
  %4 = load i32, i32* %used, align 4
  %cmp = icmp ule i32 %4, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer2 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer2, i64 0, i64 0
  %6 = load i32, i32* %used, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %7 = load i32, i32* %used, align 4
  %sub = sub i32 56, %7
  %conv = zext i32 %sub to i64
  %call = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv) #5
  br label %if.end19

if.else:                                          ; preds = %entry
  %8 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer3 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %8, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer3, i64 0, i64 0
  %9 = load i32, i32* %used, align 4
  %idx.ext5 = zext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay4, i64 %idx.ext5
  %10 = load i32, i32* %used, align 4
  %sub7 = sub i32 64, %10
  %conv8 = zext i32 %sub7 to i64
  %call9 = call i8* @memset(i8* noundef %add.ptr6, i32 noundef 0, i64 noundef %conv8) #5
  %11 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %12 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer10 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %12, i32 0, i32 2
  %arraydecay11 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer10, i64 0, i64 0
  %call12 = call i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef %11, i8* noundef %arraydecay11) #6
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %14 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer16 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %14, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer16, i64 0, i64 0
  %call18 = call i8* @memset(i8* noundef %arraydecay17, i32 noundef 0, i64 noundef 56) #5
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %15 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total20 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %15, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %total20, i64 0, i64 0
  %16 = load i32, i32* %arrayidx21, align 4
  %shr = lshr i32 %16, 29
  %17 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total22 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %17, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %total22, i64 0, i64 1
  %18 = load i32, i32* %arrayidx23, align 4
  %shl = shl i32 %18, 3
  %or = or i32 %shr, %shl
  store i32 %or, i32* %high, align 4
  %19 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %total24 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %19, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %total24, i64 0, i64 0
  %20 = load i32, i32* %arrayidx25, align 4
  %shl26 = shl i32 %20, 3
  store i32 %shl26, i32* %low, align 4
  %21 = load i32, i32* %low, align 4
  %and27 = and i32 %21, 255
  %conv28 = trunc i32 %and27 to i8
  %22 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer29 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %22, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer29, i64 0, i64 56
  store i8 %conv28, i8* %arrayidx30, align 4
  %23 = load i32, i32* %low, align 4
  %shr31 = lshr i32 %23, 8
  %and32 = and i32 %shr31, 255
  %conv33 = trunc i32 %and32 to i8
  %24 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer34 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %24, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer34, i64 0, i64 57
  store i8 %conv33, i8* %arrayidx35, align 1
  %25 = load i32, i32* %low, align 4
  %shr36 = lshr i32 %25, 16
  %and37 = and i32 %shr36, 255
  %conv38 = trunc i32 %and37 to i8
  %26 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer39 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %26, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer39, i64 0, i64 58
  store i8 %conv38, i8* %arrayidx40, align 2
  %27 = load i32, i32* %low, align 4
  %shr41 = lshr i32 %27, 24
  %and42 = and i32 %shr41, 255
  %conv43 = trunc i32 %and42 to i8
  %28 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer44 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %28, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer44, i64 0, i64 59
  store i8 %conv43, i8* %arrayidx45, align 1
  %29 = load i32, i32* %high, align 4
  %and46 = and i32 %29, 255
  %conv47 = trunc i32 %and46 to i8
  %30 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer48 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %30, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer48, i64 0, i64 60
  store i8 %conv47, i8* %arrayidx49, align 4
  %31 = load i32, i32* %high, align 4
  %shr50 = lshr i32 %31, 8
  %and51 = and i32 %shr50, 255
  %conv52 = trunc i32 %and51 to i8
  %32 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer53 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %32, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer53, i64 0, i64 61
  store i8 %conv52, i8* %arrayidx54, align 1
  %33 = load i32, i32* %high, align 4
  %shr55 = lshr i32 %33, 16
  %and56 = and i32 %shr55, 255
  %conv57 = trunc i32 %and56 to i8
  %34 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer58 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %34, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer58, i64 0, i64 62
  store i8 %conv57, i8* %arrayidx59, align 2
  %35 = load i32, i32* %high, align 4
  %shr60 = lshr i32 %35, 24
  %and61 = and i32 %shr60, 255
  %conv62 = trunc i32 %and61 to i8
  %36 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer63 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %36, i32 0, i32 2
  %arrayidx64 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer63, i64 0, i64 63
  store i8 %conv62, i8* %arrayidx64, align 1
  %37 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %38 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %buffer65 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %38, i32 0, i32 2
  %arraydecay66 = getelementptr inbounds [64 x i8], [64 x i8]* %buffer65, i64 0, i64 0
  %call67 = call i32 @mbedtls_internal_md5_process(%struct.mbedtls_md5_context* noundef %37, i8* noundef %arraydecay66) #6
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end19
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end19
  %40 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %40, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %state, i64 0, i64 0
  %41 = load i32, i32* %arrayidx72, align 4
  %and73 = and i32 %41, 255
  %conv74 = trunc i32 %and73 to i8
  %42 = load i8*, i8** %output.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %conv74, i8* %arrayidx75, align 1
  %43 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state76 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %43, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %state76, i64 0, i64 0
  %44 = load i32, i32* %arrayidx77, align 4
  %shr78 = lshr i32 %44, 8
  %and79 = and i32 %shr78, 255
  %conv80 = trunc i32 %and79 to i8
  %45 = load i8*, i8** %output.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %conv80, i8* %arrayidx81, align 1
  %46 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state82 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %46, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %state82, i64 0, i64 0
  %47 = load i32, i32* %arrayidx83, align 4
  %shr84 = lshr i32 %47, 16
  %and85 = and i32 %shr84, 255
  %conv86 = trunc i32 %and85 to i8
  %48 = load i8*, i8** %output.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %conv86, i8* %arrayidx87, align 1
  %49 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state88 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %49, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %state88, i64 0, i64 0
  %50 = load i32, i32* %arrayidx89, align 4
  %shr90 = lshr i32 %50, 24
  %and91 = and i32 %shr90, 255
  %conv92 = trunc i32 %and91 to i8
  %51 = load i8*, i8** %output.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %conv92, i8* %arrayidx93, align 1
  %52 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state94 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %52, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %state94, i64 0, i64 1
  %53 = load i32, i32* %arrayidx95, align 4
  %and96 = and i32 %53, 255
  %conv97 = trunc i32 %and96 to i8
  %54 = load i8*, i8** %output.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %54, i64 4
  store i8 %conv97, i8* %arrayidx98, align 1
  %55 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state99 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %55, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [4 x i32], [4 x i32]* %state99, i64 0, i64 1
  %56 = load i32, i32* %arrayidx100, align 4
  %shr101 = lshr i32 %56, 8
  %and102 = and i32 %shr101, 255
  %conv103 = trunc i32 %and102 to i8
  %57 = load i8*, i8** %output.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %57, i64 5
  store i8 %conv103, i8* %arrayidx104, align 1
  %58 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state105 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %58, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %state105, i64 0, i64 1
  %59 = load i32, i32* %arrayidx106, align 4
  %shr107 = lshr i32 %59, 16
  %and108 = and i32 %shr107, 255
  %conv109 = trunc i32 %and108 to i8
  %60 = load i8*, i8** %output.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %60, i64 6
  store i8 %conv109, i8* %arrayidx110, align 1
  %61 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state111 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %61, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %state111, i64 0, i64 1
  %62 = load i32, i32* %arrayidx112, align 4
  %shr113 = lshr i32 %62, 24
  %and114 = and i32 %shr113, 255
  %conv115 = trunc i32 %and114 to i8
  %63 = load i8*, i8** %output.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %63, i64 7
  store i8 %conv115, i8* %arrayidx116, align 1
  %64 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state117 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %64, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %state117, i64 0, i64 2
  %65 = load i32, i32* %arrayidx118, align 4
  %and119 = and i32 %65, 255
  %conv120 = trunc i32 %and119 to i8
  %66 = load i8*, i8** %output.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %66, i64 8
  store i8 %conv120, i8* %arrayidx121, align 1
  %67 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state122 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %67, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [4 x i32], [4 x i32]* %state122, i64 0, i64 2
  %68 = load i32, i32* %arrayidx123, align 4
  %shr124 = lshr i32 %68, 8
  %and125 = and i32 %shr124, 255
  %conv126 = trunc i32 %and125 to i8
  %69 = load i8*, i8** %output.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %69, i64 9
  store i8 %conv126, i8* %arrayidx127, align 1
  %70 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state128 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %70, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %state128, i64 0, i64 2
  %71 = load i32, i32* %arrayidx129, align 4
  %shr130 = lshr i32 %71, 16
  %and131 = and i32 %shr130, 255
  %conv132 = trunc i32 %and131 to i8
  %72 = load i8*, i8** %output.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %72, i64 10
  store i8 %conv132, i8* %arrayidx133, align 1
  %73 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state134 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %73, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [4 x i32], [4 x i32]* %state134, i64 0, i64 2
  %74 = load i32, i32* %arrayidx135, align 4
  %shr136 = lshr i32 %74, 24
  %and137 = and i32 %shr136, 255
  %conv138 = trunc i32 %and137 to i8
  %75 = load i8*, i8** %output.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %75, i64 11
  store i8 %conv138, i8* %arrayidx139, align 1
  %76 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state140 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %76, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [4 x i32], [4 x i32]* %state140, i64 0, i64 3
  %77 = load i32, i32* %arrayidx141, align 4
  %and142 = and i32 %77, 255
  %conv143 = trunc i32 %and142 to i8
  %78 = load i8*, i8** %output.addr, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %78, i64 12
  store i8 %conv143, i8* %arrayidx144, align 1
  %79 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state145 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %79, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %state145, i64 0, i64 3
  %80 = load i32, i32* %arrayidx146, align 4
  %shr147 = lshr i32 %80, 8
  %and148 = and i32 %shr147, 255
  %conv149 = trunc i32 %and148 to i8
  %81 = load i8*, i8** %output.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %81, i64 13
  store i8 %conv149, i8* %arrayidx150, align 1
  %82 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state151 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %82, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [4 x i32], [4 x i32]* %state151, i64 0, i64 3
  %83 = load i32, i32* %arrayidx152, align 4
  %shr153 = lshr i32 %83, 16
  %and154 = and i32 %shr153, 255
  %conv155 = trunc i32 %and154 to i8
  %84 = load i8*, i8** %output.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %84, i64 14
  store i8 %conv155, i8* %arrayidx156, align 1
  %85 = load %struct.mbedtls_md5_context*, %struct.mbedtls_md5_context** %ctx.addr, align 8
  %state157 = getelementptr inbounds %struct.mbedtls_md5_context, %struct.mbedtls_md5_context* %85, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %state157, i64 0, i64 3
  %86 = load i32, i32* %arrayidx158, align 4
  %shr159 = lshr i32 %86, 24
  %and160 = and i32 %shr159, 255
  %conv161 = trunc i32 %and160 to i8
  %87 = load i8*, i8** %output.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %87, i64 15
  store i8 %conv161, i8* %arrayidx162, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then70, %if.then15
  %88 = load i32, i32* %retval, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md5(i8* noundef %input, i64 noundef %ilen, i8* noundef %output) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_md5_context, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef %ctx) #6
  %call = call i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef %ctx) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i64, i64* %ilen.addr, align 8
  %call1 = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %ctx, i8* noundef %0, i64 noundef %1) #6
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %output.addr, align 8
  %call5 = call i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef %ctx, i8* noundef %2) #6
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef %ctx) #6
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_md5_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %md5sum = alloca [16 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7 x [81 x i8]], [7 x [81 x i8]]* @md5_test_buf, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [81 x i8], [81 x i8]* %arrayidx, i64 0, i64 0
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [7 x i64], [7 x i64]* @md5_test_buflen, i64 0, i64 %idxprom2
  %5 = load i64, i64* %arrayidx3, align 8
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %call5 = call i32 @mbedtls_md5(i8* noundef %arraydecay, i64 noundef %5, i8* noundef %arraydecay4) #6
  store i32 %call5, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %6, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %fail

if.end8:                                          ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [7 x [16 x i8]], [7 x [16 x i8]]* @md5_test_sum, i64 0, i64 %idxprom10
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx11, i64 0, i64 0
  %call13 = call i32 @memcmp(i8* noundef %arraydecay9, i8* noundef %arraydecay12, i64 noundef 16) #7
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8
  store i32 1, i32* %ret, align 4
  br label %fail

if.end16:                                         ; preds = %if.end8
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp17 = icmp ne i32 %8, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %verbose.addr, align 4
  %cmp21 = icmp ne i32 %10, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

fail:                                             ; preds = %if.then15, %if.then7
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp25 = icmp ne i32 %11, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %fail
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %fail
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.end24
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
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
