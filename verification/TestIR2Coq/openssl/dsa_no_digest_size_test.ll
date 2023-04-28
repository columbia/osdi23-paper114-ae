; ModuleID = 'test/dsa_no_digest_size_test.c'
source_filename = "test/dsa_no_digest_size_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_st = type opaque
%struct.bignum_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.engine_st = type opaque

@dsakey = internal unnamed_addr global %struct.dsa_st* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"dsa_exact_size_test\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dsa_small_digest_test\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dsa_large_digest_test\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"test/dsa_no_digest_size_test.c\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"dsakey = load_dsa_params()\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"DSA_generate_key(dsakey)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@load_dsa_params.dsap_2048 = internal global [256 x i8] c"\AE5}N\1D\96\E2\9F\00\96`ZnM\07\8D\A5|\BC\F9\AD\D7\9F\D5\E9\EE\A63Q\DE{r\D2u\AAqw\F1c\FB\B6\ECZ\BA\0Dr\A2\1A\1Cd\B8\E5\89\09m\C9o\0B\7F\D2\CE\9F\EF\87Z\B6g/\EF\EE\EBY\F5^\FF\A8(\84\9E[7\09\11\80|\08\\\D5\E1HK\D2h\FB?\9F+kl\0DH\1B\1A\80\C2\EB\11\1B7y\D6\8C\8Br>g\A5\05\0EA\8A\9E5P\B4\D2@'k\FD\E0dk[8B\94\B5I\DA\EFnx7\CD0\89\C3EP{\9C\8C\E7\1C\98pq]y_\EF\E8\94\85S>\EF\A3,\CE\1A\AB}\D6^\14\CDQT\89\9Dw\E4\F8\22\F05\10u\05qQO\8CL\\\0D,,\BEl4\EE\12\82\87\03\19\06\12\A8\AA\F4\0D<I\CCpZ\D82\EE2P\85p\E8\18\FDt\80S2W\EEP\C9\AE\EB\AE\B6\222\16k\8CY\DA\EE\1D3\DFL\A2=", align 16
@load_dsa_params.dsaq_2048 = internal global [32 x i8] c"\AD-n\17\B0\F3\EB\C7\B8\EE\95x\F2\17\F53\01g\BC\DE\93\FF\EE@\E8\7F\F1\93mK\87\13", align 16
@load_dsa_params.dsag_2048 = internal global [256 x i8] c"fo\DAc\A5\8E\D2L\D5E-v]_\CDJ\B4\1AB5\86:o\A9\FA'\AB\DE\03!6\0A\07)\C9/mI\A8\F7\C6\F4\92\D7s\C1\D8v\0Ea\A7\0Bn\96\B8\C8\CB85\12 y\A5\08(5\\\BCR\16\AFR\BA\0F\C3\B1c\12'\0Bt\A4GC\D60\B8\9C.@\14\CD\99\7F\E8\8E7\B0\A9?T\E9f\22aL\F8I\03W\142\1D7=\E2\92\F8\8E\A0jfc\F0\B0n\07+=\BF\D0\84j\AA\1F0we\E5\FC\F5\ECU\CEs\DB\BE\A7\8D:\9Fz\EDO\AF\A2\80L0\9E(Ie@\F0\03EV\99\A2\93\1B\9CF\DE\BD\A8\AB_\90?\B7?\D4o\8DZ0\E1\D4c:j|\8F$\FC\D9\14(\09\E4\84N\17CV\B8\D4K\A2)E\D3\13\F0\C2v\9B\01\A0\80n\93c^\87$ *\FF\BB\9F\A8\99l\A7\9A\00\B9}\DAf\C9\C0rr\22\0F\1A\CC#\D9\B7_\1B", align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"dataToSign\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"paddedData\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"RAND_bytes(dataToSign, len)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"pkey = EVP_PKEY_new()\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"ctx = EVP_PKEY_CTX_new(pkey, NULL)\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_sign_init(ctx)\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Failed to get signature length, len=%d\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"signature = OPENSSL_malloc(sigLength)\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Failed to sign, len=%d\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_verify_init(ctx)\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"EVP verify with unpadded length %d failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"EVP verify with length %d failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Verification with unpadded data failed, len=%d\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"verify with length %d failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.dsa_st*, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  tail call void @DSA_free(%struct.dsa_st* noundef %0) #4
  ret void
}

declare dso_local void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @genkeys() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @dsa_exact_size_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @dsa_small_digest_test) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @dsa_large_digest_test) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @genkeys() unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.dsa_st* @load_dsa_params() #5
  store %struct.dsa_st* %call, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  %0 = bitcast %struct.dsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.dsa_st*, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  %call2 = tail call i32 @DSA_generate_key(%struct.dsa_st* noundef %1) #4
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #4
  %tobool4.not = icmp ne i32 %call3, 0
  %. = zext i1 %tobool4.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_exact_size_test() #0 {
entry:
  %call = tail call fastcc i32 @sign_and_verify(i32 noundef 28) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @sign_and_verify(i32 noundef 32) #5
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_small_digest_test() #0 {
entry:
  %call = tail call fastcc i32 @sign_and_verify(i32 noundef 16) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @sign_and_verify(i32 noundef 1) #5
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dsa_large_digest_test() #0 {
entry:
  %call = tail call fastcc i32 @sign_and_verify(i32 noundef 33) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @sign_and_verify(i32 noundef 64) #5
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.dsa_st* @load_dsa_params() unnamed_addr #0 {
entry:
  %call = tail call %struct.dsa_st* @DSA_new() #4
  %cmp = icmp eq %struct.dsa_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @load_dsa_params.dsap_2048, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #4
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @load_dsa_params.dsaq_2048, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #4
  %call3 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @load_dsa_params.dsag_2048, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #4
  %call4 = tail call i32 @DSA_set0_pqg(%struct.dsa_st* noundef nonnull %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void @DSA_free(%struct.dsa_st* noundef nonnull %call) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call1) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call2) #4
  tail call void @BN_free(%struct.bignum_st* noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then5
  %retval.0 = phi %struct.dsa_st* [ null, %if.then5 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.dsa_st* %retval.0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DSA_generate_key(%struct.dsa_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.dsa_st* @DSA_new() local_unnamed_addr #1

declare dso_local i32 @DSA_set0_pqg(%struct.dsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sign_and_verify(i32 noundef %len) unnamed_addr #0 {
entry:
  %sigLength = alloca i64, align 8
  %0 = bitcast i64* %sigLength to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = load %struct.dsa_st*, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  %call = tail call %struct.bignum_st* @DSA_get0_q(%struct.dsa_st* noundef %1) #4
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call) #4
  %add = add nsw i32 %call1, 7
  %div = sdiv i32 %add, 8
  %2 = zext i32 %len to i64
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 137) #4
  %conv3 = sext i32 %div to i64
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %conv3, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 138) #4
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call2) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call4) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @RAND_bytes(i8* noundef %call2, i32 noundef %len) #4
  %call10 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call9, i32 noundef 1) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false8
  %call13 = tail call i8* @memset(i8* noundef %call4, i32 noundef 0, i64 noundef %conv3) #4
  %cmp = icmp slt i32 %div, %len
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %call17 = tail call i8* @memcpy(i8* noundef %call4, i8* noundef %call2, i64 noundef %conv3) #4
  br label %if.end22

if.else:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %conv3
  %idx.neg = sub nsw i64 0, %2
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call21 = tail call i8* @memcpy(i8* noundef %add.ptr19, i8* noundef %call2, i64 noundef %2) #4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %call23 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  %3 = bitcast %struct.evp_pkey_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %if.end27

if.end27:                                         ; preds = %if.end22
  %4 = load %struct.dsa_st*, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  %call28 = tail call i32 @EVP_PKEY_set1_DSA(%struct.evp_pkey_st* noundef %call23, %struct.dsa_st* noundef %4) #4
  %call29 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call23, %struct.engine_st* noundef null) #4
  %5 = bitcast %struct.evp_pkey_ctx_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* noundef %5) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %if.end33

if.end33:                                         ; preds = %if.end27
  %call34 = tail call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef %call29) #4
  %call35 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call34, i32 noundef 1) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %if.end38

if.end38:                                         ; preds = %if.end33
  %call40 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %call29, i8* noundef null, i64* noundef nonnull %sigLength, i8* noundef %call2, i64 noundef %2) #4
  %cmp41.not = icmp eq i32 %call40, 1
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 noundef %len) #4
  br label %end

if.end44:                                         ; preds = %if.end38
  %6 = load i64, i64* %sigLength, align 8, !tbaa !7
  %call45 = call i8* @CRYPTO_malloc(i64 noundef %6, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 168) #4
  %call46 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call45) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %if.end49

if.end49:                                         ; preds = %if.end44
  %call51 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef %call29, i8* noundef %call45, i64* noundef nonnull %sigLength, i8* noundef %call2, i64 noundef %2) #4
  %cmp52.not = icmp eq i32 %call51, 1
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 noundef %len) #4
  br label %end

if.end55:                                         ; preds = %if.end49
  %call56 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef %call29) #4
  %call57 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call56, i32 noundef 1) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %end, label %if.end60

if.end60:                                         ; preds = %if.end55
  %7 = load i64, i64* %sigLength, align 8, !tbaa !7
  %call62 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %call29, i8* noundef %call45, i64 noundef %7, i8* noundef %call2, i64 noundef %2) #4
  %cmp63.not = icmp eq i32 %call62, 1
  br i1 %cmp63.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end60
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 noundef %len) #4
  br label %end

if.end66:                                         ; preds = %if.end60
  %8 = load i64, i64* %sigLength, align 8, !tbaa !7
  %call68 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %call29, i8* noundef %call45, i64 noundef %8, i8* noundef %call4, i64 noundef %conv3) #4
  %cmp69.not = icmp eq i32 %call68, 1
  br i1 %cmp69.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end66
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 noundef %len) #4
  br label %end

if.end72:                                         ; preds = %if.end66
  %9 = load i64, i64* %sigLength, align 8, !tbaa !7
  %conv73 = trunc i64 %9 to i32
  %10 = load %struct.dsa_st*, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  %call74 = call i32 @DSA_verify(i32 noundef 0, i8* noundef %call2, i32 noundef %len, i8* noundef %call45, i32 noundef %conv73, %struct.dsa_st* noundef %10) #4
  %cmp75.not = icmp eq i32 %call74, 1
  br i1 %cmp75.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end72
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 noundef %len) #4
  br label %end

if.end78:                                         ; preds = %if.end72
  %11 = load i64, i64* %sigLength, align 8, !tbaa !7
  %conv79 = trunc i64 %11 to i32
  %12 = load %struct.dsa_st*, %struct.dsa_st** @dsakey, align 8, !tbaa !3
  %call80 = call i32 @DSA_verify(i32 noundef 0, i8* noundef %call4, i32 noundef %div, i8* noundef %call45, i32 noundef %conv79, %struct.dsa_st* noundef %12) #4
  %cmp81.not = icmp eq i32 %call80, 1
  br i1 %cmp81.not, label %end, label %if.then83

if.then83:                                        ; preds = %if.end78
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 noundef %len) #4
  br label %end

end:                                              ; preds = %if.end78, %if.end55, %if.end44, %if.end33, %if.end27, %if.end22, %entry, %lor.lhs.false, %lor.lhs.false8, %if.then83, %if.then77, %if.then71, %if.then65, %if.then54, %if.then43
  %ok.0 = phi i32 [ 0, %if.then43 ], [ 0, %if.then54 ], [ 0, %if.then65 ], [ 0, %if.then71 ], [ 0, %if.then77 ], [ 0, %if.then83 ], [ 0, %if.end55 ], [ 0, %if.end44 ], [ 0, %if.end33 ], [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end78 ]
  %signature.0 = phi i8* [ null, %if.then43 ], [ %call45, %if.then54 ], [ %call45, %if.then65 ], [ %call45, %if.then71 ], [ %call45, %if.then77 ], [ %call45, %if.then83 ], [ %call45, %if.end55 ], [ %call45, %if.end44 ], [ null, %if.end33 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call45, %if.end78 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call29, %if.then43 ], [ %call29, %if.then54 ], [ %call29, %if.then65 ], [ %call29, %if.then71 ], [ %call29, %if.then77 ], [ %call29, %if.then83 ], [ %call29, %if.end55 ], [ %call29, %if.end44 ], [ %call29, %if.end33 ], [ %call29, %if.end27 ], [ null, %if.end22 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call29, %if.end78 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call23, %if.then43 ], [ %call23, %if.then54 ], [ %call23, %if.then65 ], [ %call23, %if.then71 ], [ %call23, %if.then77 ], [ %call23, %if.then83 ], [ %call23, %if.end55 ], [ %call23, %if.end44 ], [ %call23, %if.end33 ], [ %call23, %if.end27 ], [ %call23, %if.end22 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call23, %if.end78 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #4
  call void @CRYPTO_free(i8* noundef %signature.0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 208) #4
  call void @CRYPTO_free(i8* noundef %call4, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 209) #4
  call void @CRYPTO_free(i8* noundef %call2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef 210) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ok.0
}

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @DSA_get0_q(%struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_set1_DSA(%struct.evp_pkey_st* noundef, %struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @DSA_verify(i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, %struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
