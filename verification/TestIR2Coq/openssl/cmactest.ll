; ModuleID = 'test/cmactest.c'
source_filename = "test/cmactest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_st = type { [32 x i8], i32, [64 x i8], i32, i8* }
%struct.CMAC_CTX_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [14 x i8] c"test_cmac_bad\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"test_cmac_run\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"test_cmac_copy\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test/cmactest.c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"CMAC_Init(ctx, NULL, 0, NULL, NULL)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"CMAC_Update(ctx, test[0].data, test[0].data_len)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"CMAC_Init(ctx, NULL, 0, EVP_aes_128_cbc(), NULL)\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"CMAC_Init(ctx, test[0].key, test[0].key_len, NULL, NULL)\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"CMAC_Init(ctx, xtskey, sizeof(xtskey), EVP_aes_128_xts(), NULL)\00", align 1
@xtskey = internal constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@.str.10 = private unnamed_addr constant [33 x i8] c"29cec977c48f63c200bd5c4a6881b224\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"db6493aa04e4761f473b2b453c031c9a\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"65c11c75ecf590badd0a5e56cbb8af60\00", align 1
@test = internal global <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }> <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* } { <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] zeroinitializer }>, i32 16, [64 x i8] c"My test data\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0) }, %struct.test_st { [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", i32 32, [64 x i8] c"My test data\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0) }, %struct.test_st { [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", i32 32, [64 x i8] c"My test data again\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0) } }>, align 16
@.str.14 = private unnamed_addr constant [70 x i8] c"CMAC_Init(ctx, test[0].key, test[0].key_len, EVP_aes_128_cbc(), NULL)\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"CMAC_Final(ctx, buf, &len)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"test[0].mac\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"CMAC_Init(ctx, test[1].key, test[1].key_len, EVP_aes_256_cbc(), NULL)\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"CMAC_Update(ctx, test[1].data, test[1].data_len)\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"test[1].mac\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"CMAC_Init(ctx, test[2].key, test[2].key_len, NULL, NULL)\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"CMAC_Update(ctx, test[2].data, test[2].data_len)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"test[2].mac\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"CMAC_Init(ctx, NULL, 0, EVP_aes_256_cbc(), NULL)\00", align 1
@pt.buf = internal global [80 x i8] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ctx2\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"CMAC_CTX_copy(ctx2, ctx)\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"CMAC_Final(ctx2, buf, &len)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_cmac_bad) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_cmac_run) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_cmac_copy) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmac_bad() #0 {
entry:
  %call = tail call %struct.CMAC_CTX_st* @CMAC_CTX_new() #4
  %0 = bitcast %struct.CMAC_CTX_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef null, i64 noundef 0, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %1 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 3), align 4, !tbaa !3
  %conv6 = sext i32 %1 to i64
  %call7 = tail call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 2, i64 0), i64 noundef %conv6) #4
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv9) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false5
  %call13 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #4
  %call14 = tail call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef null, i64 noundef 0, %struct.evp_cipher_st* noundef %call13, %struct.engine_st* noundef null) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false12
  %2 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 3), align 4, !tbaa !3
  %conv20 = sext i32 %2 to i64
  %call21 = tail call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 2, i64 0), i64 noundef %conv20) #4
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv23) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false19
  %3 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 1), align 16, !tbaa !9
  %conv27 = sext i32 %3 to i64
  %call28 = tail call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 0, i32 0, i64 0), i64 noundef %conv27, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv30) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %4 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 3), align 4, !tbaa !3
  %conv34 = sext i32 %4 to i64
  %call35 = tail call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 2, i64 0), i64 noundef %conv34) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv37) #4
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false33
  %call41 = tail call %struct.evp_cipher_st* @EVP_aes_128_xts() #4
  %call42 = tail call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @xtskey, i64 0, i64 0), i64 noundef 32, %struct.evp_cipher_st* noundef %call41, %struct.engine_st* noundef null) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false40
  %5 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 3), align 4, !tbaa !3
  %conv48 = sext i32 %5 to i64
  %call49 = tail call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 2, i64 0), i64 noundef %conv48) #4
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv51) #4
  %tobool53.not = icmp ne i32 %call52, 0
  %spec.select = zext i1 %tobool53.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false47, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false12, %lor.lhs.false19, %lor.lhs.false26, %lor.lhs.false33, %lor.lhs.false40
  %ret.0 = phi i32 [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false47 ]
  tail call void @CMAC_CTX_free(%struct.CMAC_CTX_st* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmac_run() #0 {
entry:
  %buf = alloca [16 x i8], align 16
  %len = alloca i64, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = tail call %struct.CMAC_CTX_st* @CMAC_CTX_new() #4
  %2 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 1), align 16, !tbaa !9
  %conv = sext i32 %2 to i64
  %call1 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #4
  %call2 = tail call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 0, i32 0, i64 0), i64 noundef %conv, %struct.evp_cipher_st* noundef %call1, %struct.engine_st* noundef null) #4
  %cmp = icmp ne i32 %call2, 0
  %conv3 = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv3) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 3), align 4, !tbaa !3
  %conv5 = sext i32 %3 to i64
  %call6 = tail call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 2, i64 0), i64 noundef %conv5) #4
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv8) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = call i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %len) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false11
  %4 = load i64, i64* %len, align 8, !tbaa !10
  %conv18 = trunc i64 %4 to i32
  call fastcc void @pt(i8* noundef nonnull %0, i32 noundef %conv18) #6
  %5 = load i8*, i8** getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 4), align 8, !tbaa !12
  %call20 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), i8* noundef %5) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end
  %6 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 1, i32 1), align 16, !tbaa !9
  %conv24 = sext i32 %6 to i64
  %call25 = call %struct.evp_cipher_st* @EVP_aes_256_cbc() #4
  %call26 = call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 1, i32 0, i64 0), i64 noundef %conv24, %struct.evp_cipher_st* noundef %call25, %struct.engine_st* noundef null) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end23
  %7 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 1, i32 3), align 4, !tbaa !3
  %conv32 = sext i32 %7 to i64
  %call33 = call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 1, i32 2, i64 0), i64 noundef %conv32) #4
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false31
  %call40 = call i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %len) #4
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv42) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false38
  %8 = load i64, i64* %len, align 8, !tbaa !10
  %conv48 = trunc i64 %8 to i32
  call fastcc void @pt(i8* noundef nonnull %0, i32 noundef %conv48) #6
  %9 = load i8*, i8** getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 1, i32 4), align 8, !tbaa !12
  %call50 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), i8* noundef %9) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %if.end46
  %10 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 1), align 16, !tbaa !9
  %conv54 = sext i32 %10 to i64
  %call55 = call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 0, i64 0), i64 noundef %conv54, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv57) #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end53
  %11 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 3), align 4, !tbaa !3
  %conv61 = sext i32 %11 to i64
  %call62 = call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 2, i64 0), i64 noundef %conv61) #4
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv64) #4
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %call69 = call i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %len) #4
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv71) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false67
  %12 = load i64, i64* %len, align 8, !tbaa !10
  %conv77 = trunc i64 %12 to i32
  call fastcc void @pt(i8* noundef nonnull %0, i32 noundef %conv77) #6
  %13 = load i8*, i8** getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 4), align 8, !tbaa !12
  %call79 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), i8* noundef %13) #4
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %if.end82

if.end82:                                         ; preds = %if.end75
  %call83 = call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef null, i64 noundef 0, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv85) #4
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end82
  %14 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 3), align 4, !tbaa !3
  %conv89 = sext i32 %14 to i64
  %call90 = call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 2, i64 0), i64 noundef %conv89) #4
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv92) #4
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false88
  %call97 = call i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %len) #4
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv99) #4
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %if.end103

if.end103:                                        ; preds = %lor.lhs.false95
  %15 = load i64, i64* %len, align 8, !tbaa !10
  %conv105 = trunc i64 %15 to i32
  call fastcc void @pt(i8* noundef nonnull %0, i32 noundef %conv105) #6
  %16 = load i8*, i8** getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 4), align 8, !tbaa !12
  %call107 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), i8* noundef %16) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %if.end110

if.end110:                                        ; preds = %if.end103
  %call111 = call %struct.evp_cipher_st* @EVP_aes_256_cbc() #4
  %call112 = call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef null, i64 noundef 0, %struct.evp_cipher_st* noundef %call111, %struct.engine_st* noundef null) #4
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv114) #4
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end110
  %17 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 1), align 16, !tbaa !9
  %conv118 = sext i32 %17 to i64
  %call119 = call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 0, i64 0), i64 noundef %conv118, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp120 = icmp ne i32 %call119, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv121) #4
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false117
  %18 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 3), align 4, !tbaa !3
  %conv125 = sext i32 %18 to i64
  %call126 = call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 2, i64 0), i64 noundef %conv125) #4
  %cmp127 = icmp ne i32 %call126, 0
  %conv128 = zext i1 %cmp127 to i32
  %call129 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv128) #4
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %lor.lhs.false124
  %call133 = call i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %len) #4
  %cmp134 = icmp ne i32 %call133, 0
  %conv135 = zext i1 %cmp134 to i32
  %call136 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv135) #4
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %if.end139

if.end139:                                        ; preds = %lor.lhs.false131
  %19 = load i64, i64* %len, align 8, !tbaa !10
  %conv141 = trunc i64 %19 to i32
  call fastcc void @pt(i8* noundef nonnull %0, i32 noundef %conv141) #6
  %20 = load i8*, i8** getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 2, i32 4), align 8, !tbaa !12
  %call143 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), i8* noundef %20) #4
  %tobool144.not = icmp ne i32 %call143, 0
  %spec.select = zext i1 %tobool144.not to i32
  br label %err

err:                                              ; preds = %if.end139, %if.end110, %lor.lhs.false117, %lor.lhs.false124, %lor.lhs.false131, %if.end103, %if.end82, %lor.lhs.false88, %lor.lhs.false95, %if.end75, %if.end53, %lor.lhs.false60, %lor.lhs.false67, %if.end46, %if.end23, %lor.lhs.false31, %lor.lhs.false38, %if.end, %entry, %lor.lhs.false, %lor.lhs.false11
  %ret.0 = phi i32 [ 0, %lor.lhs.false131 ], [ 0, %lor.lhs.false124 ], [ 0, %lor.lhs.false117 ], [ 0, %if.end110 ], [ 0, %if.end103 ], [ 0, %lor.lhs.false95 ], [ 0, %lor.lhs.false88 ], [ 0, %if.end82 ], [ 0, %if.end75 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false60 ], [ 0, %if.end53 ], [ 0, %if.end46 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false31 ], [ 0, %if.end23 ], [ 0, %if.end ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end139 ]
  call void @CMAC_CTX_free(%struct.CMAC_CTX_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cmac_copy() #0 {
entry:
  %buf = alloca [16 x i8], align 16
  %len = alloca i64, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = tail call %struct.CMAC_CTX_st* @CMAC_CTX_new() #4
  %call1 = tail call %struct.CMAC_CTX_st* @CMAC_CTX_new() #4
  %2 = bitcast %struct.CMAC_CTX_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast %struct.CMAC_CTX_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %3) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 1), align 16, !tbaa !9
  %conv = sext i32 %4 to i64
  %call5 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #4
  %call6 = tail call i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 0, i32 0, i64 0), i64 noundef %conv, %struct.evp_cipher_st* noundef %call5, %struct.engine_st* noundef null) #4
  %cmp = icmp ne i32 %call6, 0
  %conv7 = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv7) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 3), align 4, !tbaa !3
  %conv11 = sext i32 %5 to i64
  %call12 = tail call i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef %call, i8* noundef getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 2, i64 0), i64 noundef %conv11) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv14) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false10
  %call18 = tail call i32 @CMAC_CTX_copy(%struct.CMAC_CTX_st* noundef %call1, %struct.CMAC_CTX_st* noundef %call) #4
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv20) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %call24 = call i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef %call1, i8* noundef nonnull %0, i64* noundef nonnull %len) #4
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv26) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false23
  %6 = load i64, i64* %len, align 8, !tbaa !10
  %conv32 = trunc i64 %6 to i32
  call fastcc void @pt(i8* noundef nonnull %0, i32 noundef %conv32) #6
  %7 = load i8*, i8** getelementptr inbounds (<{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>, <{ { <{ [16 x i8], [16 x i8] }>, i32, [64 x i8], i32, i8* }, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 0, i32 4), align 8, !tbaa !12
  %call34 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), i8* noundef %7) #4
  %tobool35.not = icmp ne i32 %call34, 0
  %spec.select = zext i1 %tobool35.not to i32
  br label %err

err:                                              ; preds = %if.end30, %if.end, %lor.lhs.false10, %lor.lhs.false17, %lor.lhs.false23, %entry, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false10 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end30 ]
  call void @CMAC_CTX_free(%struct.CMAC_CTX_st* noundef %call1) #4
  call void @CMAC_CTX_free(%struct.CMAC_CTX_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.CMAC_CTX_st* @CMAC_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CMAC_Init(%struct.CMAC_CTX_st* noundef, i8* noundef, i64 noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @CMAC_Update(%struct.CMAC_CTX_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_xts() local_unnamed_addr #1

declare dso_local void @CMAC_CTX_free(%struct.CMAC_CTX_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @CMAC_Final(%struct.CMAC_CTX_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pt(i8* nocapture noundef readonly %md, i32 noundef %len) unnamed_addr #0 {
entry:
  %cmp1.not = icmp eq i32 %len, 0
  br i1 %cmp1.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %mul = shl nuw i64 %indvars.iv, 1
  %idxprom = and i64 %mul, 4294967294
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* @pt.buf, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds i8, i8* %md, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx2, align 1, !tbaa !13
  %conv = zext i8 %0 to i32
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arrayidx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_cbc() local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @CMAC_CTX_copy(%struct.CMAC_CTX_st* noundef, %struct.CMAC_CTX_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !7, i64 100}
!4 = !{!"test_st", !5, i64 0, !7, i64 32, !5, i64 36, !7, i64 100, !8, i64 104}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!4, !7, i64 32}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!4, !8, i64 104}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
