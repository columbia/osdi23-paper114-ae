; ModuleID = 'test/cipher_overhead_test.c'
source_filename = "test/cipher_overhead_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"cipher_overhead\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"test/cipher_overhead_test.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Skipping disabled cipher %s\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"ssl_cipher_get_overhead(ciph, &mac, &in, &blk, &ex)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Failed getting %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Cipher %s: %zu %zu %zu %zu\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @cipher_overhead) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cipher_overhead() #0 {
entry:
  %mac = alloca i64, align 8
  %in = alloca i64, align 8
  %blk = alloca i64, align 8
  %ex = alloca i64, align 8
  %call = tail call i32 @ssl3_num_ciphers() #3
  %0 = bitcast i64* %mac to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i64* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast i64* %blk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %3 = bitcast i64* %ex to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %cmp26 = icmp sgt i32 %call, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %ret.028 = phi i32 [ %ret.1, %for.inc ], [ 1, %entry ]
  %i.027 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %call1 = call %struct.ssl_cipher_st* @ssl3_get_cipher(i32 noundef %i.027) #3
  %min_dtls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call1, i64 0, i32 10
  %4 = load i32, i32* %min_dtls, align 4, !tbaa !3
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %call2 = call fastcc i32 @cipher_enabled(%struct.ssl_cipher_st* noundef nonnull %call1) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call1, i64 0, i32 1
  %5 = load i8*, i8** %name, align 8, !tbaa !9
  %call5 = call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %5) #3
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @ssl_cipher_get_overhead(%struct.ssl_cipher_st* noundef nonnull %call1, i64* noundef nonnull %mac, i64* noundef nonnull %in, i64* noundef nonnull %blk, i64* noundef nonnull %ex) #3
  %cmp8 = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #3
  %tobool10.not = icmp eq i32 %call9, 0
  %name12 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call1, i64 0, i32 1
  %6 = load i8*, i8** %name12, align 8, !tbaa !9
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* noundef %6) #3
  br label %for.inc

if.else:                                          ; preds = %if.end6
  %7 = load i64, i64* %mac, align 8, !tbaa !10
  %8 = load i64, i64* %in, align 8, !tbaa !10
  %9 = load i64, i64* %blk, align 8, !tbaa !10
  %10 = load i64, i64* %ex, align 8, !tbaa !10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else, %for.body, %if.then4
  %ret.1 = phi i32 [ %ret.028, %if.else ], [ 0, %if.then11 ], [ %ret.028, %if.then4 ], [ %ret.028, %for.body ]
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.inc, %entry
  %ret.0.lcssa = phi i32 [ 1, %entry ], [ %ret.1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @ssl3_num_ciphers() local_unnamed_addr #1

declare dso_local %struct.ssl_cipher_st* @ssl3_get_cipher(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cipher_enabled(%struct.ssl_cipher_st* noundef %ciph) unnamed_addr #0 {
entry:
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %ciph, i64 0, i32 7
  %0 = load i32, i32* %algorithm_mac, align 8, !tbaa !14
  %and = and i32 %0, 64
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %ciph, i64 0, i32 6
  %1 = load i32, i32* %algorithm_enc, align 4, !tbaa !15
  %cmp1.not = icmp eq i32 %1, 32
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @SSL_CIPHER_get_cipher_nid(%struct.ssl_cipher_st* noundef nonnull %ciph) #3
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #3
  %call3 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call2) #3
  %cmp4 = icmp eq %struct.evp_cipher_st* %call3, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = tail call i32 @SSL_CIPHER_get_digest_nid(%struct.ssl_cipher_st* noundef nonnull %ciph) #3
  %call8 = tail call i8* @OBJ_nid2sn(i32 noundef %call7) #3
  %call9 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call8) #3
  %cmp10 = icmp ne %struct.evp_md_st* %call9, null
  %. = zext i1 %cmp10 to i32
  br label %return

return:                                           ; preds = %if.end6, %land.lhs.true, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true ], [ %., %if.end6 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ssl_cipher_get_overhead(%struct.ssl_cipher_st* noundef, i64* noundef, i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CIPHER_get_cipher_nid(%struct.ssl_cipher_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CIPHER_get_digest_nid(%struct.ssl_cipher_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 52}
!4 = !{!"ssl_cipher_st", !5, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!4, !5, i64 40}
!15 = !{!4, !5, i64 36}
