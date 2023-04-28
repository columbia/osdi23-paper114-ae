; ModuleID = 'test/sha_test.c'
source_filename = "test/sha_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"test_static_sha1\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"test_static_sha224\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"test_static_sha256\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"test_static_sha384\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"test_static_sha512\00", align 1
@test_static_sha1.output = internal constant [20 x i8] c"\A9\99>6G\06\81j\BA>%qxP\C2l\9C\D0\D8\9D", align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"test/sha_test.c\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sbuf\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@test_static_sha224.output = internal constant [28 x i8] c"#\09}\224\05\D8\22\86B\A4w\BD\A2U\B3*\AD\BC\E4\BD\A0\B3\F7\E3l\9D\A7", align 16
@test_static_sha256.output = internal constant [32 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD", align 16
@test_static_sha384.output = internal constant [48 x i8] c"\CB\00u?E\A3^\8B\B5\A0=i\9A\C6P\07',2\AB\0E\DE\D1c\1A\8B`ZC\FF[\ED\80\86\07+\A1\E7\CC#X\BA\EC\A14\C8%\A7", align 16
@test_static_sha512.output = internal constant [64 x i8] c"\DD\AF5\A1\93az\BA\CCAsI\AE A1\12\E6\FAN\89\A9~\A2\0A\9E\EE\E6KU\D3\9A!\92\99*'O\C1\A86\BA<#\A3\FE\EB\BDEMD#d<\E8\0E*\9A\C9O\A5L\A4\9F", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_static_sha1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_static_sha224) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_static_sha256) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_static_sha384) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_static_sha512) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_static_sha1() #0 {
entry:
  %call = tail call fastcc i32 @test_static_sha_common(i64 noundef 20, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @test_static_sha1.output, i64 0, i64 0), i8* (i8*, i64, i8*)* noundef nonnull @SHA1) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_static_sha224() #0 {
entry:
  %call = tail call fastcc i32 @test_static_sha_common(i64 noundef 28, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @test_static_sha224.output, i64 0, i64 0), i8* (i8*, i64, i8*)* noundef nonnull @SHA224) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_static_sha256() #0 {
entry:
  %call = tail call fastcc i32 @test_static_sha_common(i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_static_sha256.output, i64 0, i64 0), i8* (i8*, i64, i8*)* noundef nonnull @SHA256) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_static_sha384() #0 {
entry:
  %call = tail call fastcc i32 @test_static_sha_common(i64 noundef 48, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @test_static_sha384.output, i64 0, i64 0), i8* (i8*, i64, i8*)* noundef nonnull @SHA384) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_static_sha512() #0 {
entry:
  %call = tail call fastcc i32 @test_static_sha_common(i64 noundef 64, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_static_sha512.output, i64 0, i64 0), i8* (i8*, i64, i8*)* noundef nonnull @SHA512) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_static_sha_common(i64 noundef %length, i8* noundef %out, i8* (i8*, i64, i8*)* nocapture noundef readonly %md) unnamed_addr #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7
  %call1 = call i8* %md(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef %call, i8* noundef nonnull %0) #4
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call1, i8* noundef nonnull %0) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call1, i64 noundef %length, i8* noundef %out, i64 noundef %length) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %call9 = call i8* %md(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef %call, i8* noundef null) #4
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call9) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %call14 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call9, i8* noundef nonnull %0) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call9, i64 noundef %length, i8* noundef %out, i64 noundef %length) #4
  %tobool18.not = icmp ne i32 %call17, 0
  %spec.select = zext i1 %tobool18.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false16, %if.end, %lor.lhs.false12, %entry, %lor.lhs.false, %lor.lhs.false6
  %retval.0 = phi i32 [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false12 ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false16 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare dso_local i8* @SHA1(i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @SHA224(i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i8* @SHA256(i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i8* @SHA384(i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i8* @SHA512(i8* noundef, i64 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
