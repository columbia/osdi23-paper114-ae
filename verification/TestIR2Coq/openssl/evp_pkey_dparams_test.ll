; ModuleID = 'test/evp_pkey_dparams_test.c'
source_filename = "test/evp_pkey_dparams_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.bio_st = type opaque
%struct.bio_method_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"params_bio_test\00", align 1
@pkey_params = internal unnamed_addr constant [3 x %struct.anon] [%struct.anon { i32 28, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @dhparam_bin, i32 0, i32 0), i64 268 }, %struct.anon { i32 116, i8* getelementptr inbounds ([556 x i8], [556 x i8]* @dsaparam_bin, i32 0, i32 0), i64 556 }, %struct.anon { i32 408, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @ecparam_bin, i32 0, i32 0), i64 10 }], align 16
@.str.1 = private unnamed_addr constant [29 x i8] c"test/evp_pkey_dparams_test.c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ctx = EVP_PKEY_CTX_new_id(type, NULL)\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"in = BIO_new_mem_buf(pkey_params[id].param_bin, (int)pkey_params[id].param_bin_len)\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"d2i_KeyParams_bio(type, &in_key, in)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"out = BIO_new(BIO_s_mem())\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"i2d_KeyParams_bio(out, in_key)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"out_len = BIO_get_mem_data(out, &out_bin)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"pkey_params[id].param_bin\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"out_bin\00", align 1
@dhparam_bin = internal constant [268 x i8] c"0\82\01\08\02\82\01\01\00\C0\D1.\14\18\BD\03\FD9\E1\99\F4\93\06-I\C6\B5\B9\F0\91\CB/HTy}\C4e\11U\F7\99\DEB\83\84\C0\F8\88\89\A0\FF\FF}\E8\EF\9E\BC\F7\1Dpm:3I(\A1\A3\E1A\C4\8B\91\F9\F2\B6\E2wy8}!\B3\DFy\9C^e\16\00\16\82\B26F!\AC\AF\86\C7\E3\10DH\FB\BD\ADN\11sL%\B0\8C\1C\1E\8EXP^C\89\E4\D94\F8;\CC6,\1B\B3\B2w\0C\A5\96\C1\8A8\D4\E3\9C*\DEIF\C7\D4\A2G\C9\0A\BD\84\D4\1C\BC\B6\19\04\94d\FA\8A\11\9C_JL\0FX\81\02\BF\CF\87'+\AE\8E\E2az\DB\BA#9%D\DC\22u\C3(\D9\123\842\D4]\D9w\F8\04\908\0A\EC\84\93C\CE\E7\07B}-\E0!;\19\22\A7\8FP1\DA\D0\0D\D3\0B\DB\AD\ED\94\92\FF\83\06\7F\7F\D7{B[\BA\93z\EBC_\CEY&\E8v\DC\EE\E2\BE6z\83\02\01\02", align 16
@dsaparam_bin = internal constant [556 x i8] c"0\82\02(\02\82\01\01\00\F2\85\01\A5\B9Ve\19\FF\9A}\F9\90\D6\AAs\AC\F7\94\FA\8Adm\A0\01B\E5E\FCSr\B0|\E6;\FB\093A'\BD\00\B5\18\87b\A8+\FC\D0RJ\14-\AA6\C6\F3\A9\E3\90\1Bt\DF\0Am3\BA\F42m\BA6h\1D\836P\C6b\C0@g\0E\F6\22\00b\1Bvrb_\A0\DF8\B1\1D&p\9B\84d\BB\16\15\C2f\B9\97\D0\07\F1Kp\02\03\F1\D2\03\DBx\8B\B4\DAo<\E21\A8\1C\99\EA\9Cu(\96\82\16w\ACy2a\87\EC\B7\B4\C3\EA\12b\1F\08\B8\16\AB\CC\EF(\DF\06\07\BE\B0\DCx\83\8Ap\804\E6\91\E3\D3\92\D9\F4VSR\B75\F6*\ECK\CB\A2<\C3\0C\94\A7N\1CB\9Cr\99`\8C\FE\FB`Wu\F5#\11\12\BA\97\CD\ADZ\0B\A6\1FjH.\8D\DA\95\C6\0E\14\DE\F7\22U\A8k%\DF\A2\AB3eV\FCxOb\DFH\DD\CE\8B\E1v\F4\F6\7F\02\1D\00\AC\B0\B8\92;ka\CF6m\F2\1E]\E0{\F5sH\A3\8B\86\9E\88\CE@\F8'm\02\82\01\00wk\89\D6\8F=\CER0t\B2\A1\13\96\D5\92\F2\F1k\101\0B\F3i\AA\BFKl\CB?mXvD\09\F9(\EF\A0\E4UwW\E0\FB\CC\9Aj,\90\ECr$\0BC\C5\BC1\ED\1AF,vB\9E\C0\82\FC\FF\F9~\E2\1F9\F3;\DB'6\E7\F5;\C2#\B6\D0\CF[\85.\1B\00[1\AAr\8F7\EEVq\C4\FD<\8D\FA[\AB\B1\A9Rv\A0\E4\E3x\83d]\D7l\EC\9B@e\E2\0A\11\19`\DD\CE)\9F\C6\1D\0A\AB\8EY%\C5\0B\9C\02E\BA\99t\22\1D\C1W\CAP\8C^\DF\D8]C\AE\06()\82\F6Z\A9Q\A2\04\1D\BF\88\15\98\CE\8A\B4;\E50)\CE\0C\9B\F8\DB\BF\06\9F\D0Y\18\D4\0B\94\BF\E9gk\9E\F0r\C6\BFy\8F\1E\A3\95$\E3\CBX\B5g\D3\AEy\B0(\9C\9A\D0\A4\E7\22\15\C1\8B\04\B9\8A\A8\B7\1BbD\C6\EFKt\D0\FD\A9\B4N\DD}8`\D1@\CD", align 16
@ecparam_bin = internal constant [10 x i8] c"\06\08*\86H\CE=\03\01\07", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @params_bio_test, i32 noundef 3, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @params_bio_test(i32 noundef %id) #0 {
entry:
  %in_key = alloca %struct.evp_pkey_st*, align 8
  %out_bin = alloca i8*, align 8
  %0 = bitcast %struct.evp_pkey_st** %in_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %in_key, align 8, !tbaa !3
  %1 = bitcast i8** %out_bin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %idxprom = sext i32 %id to i64
  %type1 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @pkey_params, i64 0, i64 %idxprom, i32 0
  %2 = load i32, i32* %type1, align 8, !tbaa !7
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %2, %struct.engine_st* noundef null) #3
  %3 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %param_bin = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @pkey_params, i64 0, i64 %idxprom, i32 1
  %4 = load i8*, i8** %param_bin, align 8, !tbaa !11
  %param_bin_len = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @pkey_params, i64 0, i64 %idxprom, i32 2
  %5 = load i64, i64* %param_bin_len, align 8, !tbaa !12
  %conv = trunc i64 %5 to i32
  %call7 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %4, i32 noundef %conv) #3
  %6 = bitcast %struct.bio_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i8* noundef %6) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = call %struct.evp_pkey_st* @d2i_KeyParams_bio(i32 noundef %2, %struct.evp_pkey_st** noundef nonnull %in_key, %struct.bio_st* noundef %call7) #3
  %7 = bitcast %struct.evp_pkey_st* %call11 to i8*
  %call12 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef %7) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %call15 = call %struct.bio_method_st* @BIO_s_mem() #3
  %call16 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call15) #3
  %8 = bitcast %struct.bio_st* %call16 to i8*
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* noundef %8) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %in_key, align 8, !tbaa !3
  %call20 = call i32 @i2d_KeyParams_bio(%struct.bio_st* noundef %call16, %struct.evp_pkey_st* noundef %9) #3
  %call21 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call20, i32 noundef 0) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true19
  %call24 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call16, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #3
  %conv25 = trunc i64 %call24 to i32
  %call26 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv25, i32 noundef 0) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true23
  %sext = shl i64 %5, 32
  %conv35 = ashr exact i64 %sext, 32
  %10 = load i8*, i8** %out_bin, align 8, !tbaa !3
  %sext56 = shl i64 %call24, 32
  %conv36 = ashr exact i64 %sext56, 32
  %call37 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* noundef %4, i64 noundef %conv35, i8* noundef %10, i64 noundef %conv36) #3
  %tobool38 = icmp ne i32 %call37, 0
  %phi.cast = zext i1 %tobool38 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true23, %land.lhs.true19, %land.lhs.true14, %land.lhs.true10, %land.lhs.true, %entry
  %out.0 = phi %struct.bio_st* [ %call16, %land.rhs ], [ %call16, %land.lhs.true23 ], [ %call16, %land.lhs.true19 ], [ %call16, %land.lhs.true14 ], [ null, %land.lhs.true10 ], [ null, %land.lhs.true ], [ null, %entry ]
  %in.0 = phi %struct.bio_st* [ %call7, %land.rhs ], [ %call7, %land.lhs.true23 ], [ %call7, %land.lhs.true19 ], [ %call7, %land.lhs.true14 ], [ %call7, %land.lhs.true10 ], [ %call7, %land.lhs.true ], [ null, %entry ]
  %11 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true23 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %call39 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #3
  %call40 = call i32 @BIO_free(%struct.bio_st* noundef %out.0) #3
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %in_key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %12) #3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @d2i_KeyParams_bio(i32 noundef, %struct.evp_pkey_st** noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_KeyParams_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !4, i64 8, !10, i64 16}
!9 = !{!"int", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !4, i64 8}
!12 = !{!8, !10, i64 16}
