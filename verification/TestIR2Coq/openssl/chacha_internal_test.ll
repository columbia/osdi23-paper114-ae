; ModuleID = 'test/chacha_internal_test.c'
source_filename = "test/chacha_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"test_cha_cha_internal\00", align 1
@ref = internal constant [1024 x i8] c"\F7\98\A1\89\F1\95\E6i\82\10_\FBd\0B\B7u\7FW\9D\A3\16\02\FC\93\EC\01\ACV\F8Z\C3\C14\A4T{s;FA0B\C9D\00I\17i\05\D3\BEY\EA\1CS\F1Y\16\15\\+\E8$\1A8\00\8B\9A&\BC5\94\1E$D\17|\8A\DEf\89\DE\95&I\86\D9X\89\FB`\E8F)\C9\BD\9AZ\CB\1C\C1\18\BEV>\B9\B3\A4\A4r\F8.\09\A7\E7xI+V.\F7\13\0E\88\DF\E01\C7\9D\B9\D4\F7\C7\A8\99\15\1B\9AGP2\B6?\C3\85$_\E0T\E3\DDZ\97\A5\F5v\FE\06@%\D3\CE\04,Vj\B2\C5\07\B18\DB\85>=iYf\09\96Tl\C9\C4\A6\EA\FD\C7w\C0@\D7\0E\AFF\F7m\AD9y\E5\C56\0C3\17\16j\1C\89L\94\A3q\87j\94\DFv(\FEN\AA\F2\CC\B2}Z\AA\E0\ADz\D0\F9\D4\B6\AD;T\09\87F\D4RM8@zm\EB:\B7\8F\ABx\C9B\13f\8B\BB\D3\94\C5\DE\93\B8S\17\8A\DD\D6\B9\7F\9F\A1\EC>V\C0\0C\9D\DF\F0\A4J BA\17ZL\AB\0F\96\1B\A5>\DE\9B\DF\96\0B\94\F9\82\9B\1F4\14rd)\B3b\C5\B58\E3\91R\0FH\9B~\D8\D2\0A\E3\FDI\E9\E2Y\E4C\97QMa\8C\96\C4\84k\E3\C6\80\BD\C1\1Cq\DC\BB\E2\9C\CF\80\D6*\098\FAT\93\91\E6\EAW\EC\BE&\06y\0E\C1]\22$\AE0|\14B&\B7\C4\E8\C2\F9}*\1Dg\85-)\BE\BA\11\0E\DDDQ\97\01 b\A3\93\A9\C9(\03\AD;O1\D7\BC`3\CC\F7\93,\FE\D3\F0\19\04M%\90Y\16wr\86\F8/\9AL\C1\FF\E40\FF\D1\DC\FC'\DE\ED2{\9F\960\D2\FA\96\9F\B6\F0`<\D1\9D\D9\A9Q\9Eg;\CF\CD\90\14\12R\91\A4Fi\EFr\85\E7N\D3r\9Bg\7F\80\1C<\DF\05\8CP\961h\B4\96\047\16\C70|\D9\E0\CD\D17\FC\CB\0F\05\B4|\DB\B9\\_T\83\16\22\C3e*2\B2S\1F\E3&\BC\D6\E2\BB\F5j\19O\A1\96\FB\D1\A5IR\11\0FQ\C743\86_vd\B86h^6d\B3\D8DJ\F8\9A$(\05\E1\8C\97_\11F2I\96\FD\E1p\07\CF>n\8FNv@\22S>\DB\FE\07\D4s>H\BB7-u\B0\EFH\EC\98>\B7\852\16\1C\C5)\E5\AB\B8\987\DF\CC\A6&\1D\BB7\C7\C5\E6\A8tx\BFA\EE\85\A5\18\C0\F4\EF\A9\BD\E8(\C5\A7\1B\8EFY{cJ\FD M<P\134#\9C4\14(^\D7-:\91i\EA\BB\D4\DC%\D5+\B7Qm;\A7\12\D7Z\D8\C0\AE]I<\19\E3\8Aw\93\9Ez\05\8Dq>\9C\CC\CAX\04_CkCK\1C\80\D3eG$\06\E3\92\95\19\87\DBi\05\C8\0DC\1D\A1\84Q\13[\E7\E8+\CA\B3X\CB9q\E6\14\05\B2\FF\17\98\0Dn~g\E8a\E2\82\01\C1\EE0\B4A\04\0F\D0hx\D6PB\C9U\82\A41\82\07\BF\C7\00\BE\0C\E3(\89\AE\C2\FF\E5\08^\89g\91\0D\87\9F\A0\E8\C0\FF\85\FD\C5\10\B9\FF/\BF\87\CF\CB)W}h\09\9E\04\FF\A0_u*s\D3w\C7\0D:\8B\C2\DA\80\E6\E7\80\EC\05q\82\C3:\D1\DE8rR%\8A\1E\18\E6\FA\D9\102|\E7\F4/\D1\E1\E0Q_\95\86\E2\F2\EF\CB\9FG+\1D\BD\BA\C3T\A4\16!Q\E9\D9,y\FB\08\BBM\DCV\F1\94H\C0\17ZF\E2\E6\C4\91\FE\C7\14\19\AAC\A3I\BE\A7h\A9,u\DEh\FD\95\91\E6\80g\F3\19p\94\D3\FB\87\ED\81x^\A0u\E4\B6^>Lx\F8\1D\A9\B7Q\C5\EF\E0$\15#\01\C4\8Ec$[UlLg\AF\F8W\E5\EA\15\A9\08\D8:\1D\97\04\F8\E5^sR\B2\0BiK\F9\97\02\98\E6\B5\AA\D3>\A2\15]\10]N", align 16
@key = internal constant [8 x i32] [i32 50462976, i32 117835012, i32 185207048, i32 252579084, i32 319951120, i32 387323156, i32 454695192, i32 522067228], align 16
@ivp = internal constant [4 x i32] [i32 0, i32 0, i32 50462976, i32 117835012], align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"test/chacha_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"buf[j]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ref[j]\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%d failed at %u (%02x)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_cha_cha_internal, i32 noundef 1024, i32 noundef 1) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cha_cha_internal(i32 noundef %n) #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #5
  %add = add nsw i32 %n, 1
  %conv = zext i32 %add to i64
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef %conv) #4
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %conv
  %add.ptr3 = getelementptr inbounds [1024 x i8], [1024 x i8]* @ref, i64 0, i64 %conv
  %sub = sub nsw i64 1024, %conv
  %call5 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr3, i64 noundef %sub) #4
  call void @ChaCha20_ctr32(i8* noundef nonnull %0, i8* noundef nonnull %0, i64 noundef %conv, i32* noundef getelementptr inbounds ([8 x i32], [8 x i32]* @key, i64 0, i64 0), i32* noundef getelementptr inbounds ([4 x i32], [4 x i32]* @ivp, i64 0, i64 0)) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !3
  %arrayidx12 = getelementptr inbounds [1024 x i8], [1024 x i8]* @ref, i64 0, i64 %indvars.iv
  %2 = load i8, i8* %arrayidx12, align 1, !tbaa !3
  %call13 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 noundef zeroext %1, i8 noundef zeroext %2) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %conv9.le = and i64 %indvars.iv, 4294967295
  %arrayidx.le = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %conv9.le
  %4 = load i8, i8* %arrayidx.le, align 1, !tbaa !3
  %conv16 = zext i8 %4 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef %add, i32 noundef %3, i32 noundef %conv16) #4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !6

cleanup:                                          ; preds = %for.inc, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @ChaCha20_ctr32(i8* noundef, i8* noundef, i64 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_uchar_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
