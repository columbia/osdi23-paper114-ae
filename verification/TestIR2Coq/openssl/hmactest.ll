; ModuleID = 'test/hmactest.c'
source_filename = "test/hmactest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_st = type { [16 x i8], i32, [64 x i8], i32, i8* }
%struct.evp_md_st = type opaque
%struct.hmac_ctx_st = type opaque
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [14 x i8] c"test_hmac_md5\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_hmac_single_shot\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"test_hmac_bad\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"test_hmac_run\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"test_hmac_copy\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"test/hmactest.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"test[idx].digest\00", align 1
@pt.buf = internal global [80 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"e9139d1e6ee064ef8cf514fc7dc83e86\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"9294727a3638bb1c13f48ef8158bfc9d\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"750c783e6ab0b503eaa86e310a5db738\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"56be34521d144c88dbb8c733f0e8b3f6\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"61afdecb95429ef494d61fdee15990cabf0826fc\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"2274b195d90ce8e03406f4b526a47e0787a88a65479938f1a5baa3ce0f079776\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"bab53058ae861a7f191abe2d0145cbb123776a6369ee3f9d79ce455667e411dd\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"a12396ceddd2a85f4c656bc1e0aa50c78cffde3e\00", align 1
@test = internal global <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }> <{ %struct.test_st { [16 x i8] zeroinitializer, i32 0, [64 x i8] c"More text test vectors to stuff up EBCDIC machines :-)\00\00\00\00\00\00\00\00\00\00", i32 54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.test_st { [16 x i8] c"\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B", i32 16, [64 x i8] c"Hi There\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0) }, %struct.test_st { [16 x i8] c"Jefe\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, [64 x i8] c"what do ya want for nothing?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0) }, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* } { [16 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", i32 16, <{ [50 x i8], [14 x i8] }> <{ [50 x i8] c"\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD", [14 x i8] zeroinitializer }>, i32 50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0) }, %struct.test_st { [16 x i8] zeroinitializer, i32 0, [64 x i8] c"My test data\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0) }, %struct.test_st { [16 x i8] zeroinitializer, i32 0, [64 x i8] c"My test data\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0) }, %struct.test_st { [16 x i8] c"123456\00\00\00\00\00\00\00\00\00\00", i32 6, [64 x i8] c"My test data\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0) }, %struct.test_st { [16 x i8] c"12345\00\00\00\00\00\00\00\00\00\00\00", i32 5, [64 x i8] c"My test data again\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0) } }>, align 16
@.str.18 = private unnamed_addr constant [15 x i8] c"test[4].digest\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"HMAC_CTX_get_md(ctx)\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"HMAC_Init_ex(ctx, NULL, 0, NULL, NULL)\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"HMAC_Update(ctx, test[4].data, test[4].data_len)\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"HMAC_Init_ex(ctx, NULL, 0, EVP_sha1(), NULL)\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"ctx = HMAC_CTX_new()\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"HMAC_Init_ex(ctx, test[4].key, -1, EVP_sha1(), NULL)\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"HMAC_Init_ex(ctx, test[4].key, test[4].key_len, EVP_sha1(), NULL)\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"HMAC_Final(ctx, buf, &len)\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"HMAC_Init_ex(ctx, NULL, 0, EVP_sha256(), NULL)\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"HMAC_Init_ex(ctx, test[5].key, test[5].key_len, EVP_sha256(), NULL)\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"EVP_sha256()\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"HMAC_Update(ctx, test[5].data, test[5].data_len)\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"test[5].digest\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"HMAC_Init_ex(ctx, test[6].key, test[6].key_len, NULL, NULL)\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"HMAC_Update(ctx, test[6].data, test[6].data_len)\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"test[6].digest\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"ctx2\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"HMAC_Init_ex(ctx, test[7].key, test[7].key_len, EVP_sha1(), NULL)\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"HMAC_Update(ctx, test[7].data, test[7].data_len)\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"HMAC_CTX_copy(ctx2, ctx)\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"HMAC_Final(ctx2, buf, &len)\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"test[7].digest\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_hmac_md5, i32 noundef 4, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_hmac_single_shot) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_hmac_bad) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_hmac_run) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_hmac_copy) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hmac_md5(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_md5() #4
  %idxprom = sext i32 %idx to i64
  %arraydecay = getelementptr inbounds [8 x %struct.test_st], [8 x %struct.test_st]* bitcast (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test to [8 x %struct.test_st]*), i64 0, i64 %idxprom, i32 0, i64 0
  %key_len = getelementptr inbounds [8 x %struct.test_st], [8 x %struct.test_st]* bitcast (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test to [8 x %struct.test_st]*), i64 0, i64 %idxprom, i32 1
  %0 = load i32, i32* %key_len, align 16, !tbaa !3
  %arraydecay5 = getelementptr inbounds [8 x %struct.test_st], [8 x %struct.test_st]* bitcast (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test to [8 x %struct.test_st]*), i64 0, i64 %idxprom, i32 2, i64 0
  %data_len = getelementptr inbounds [8 x %struct.test_st], [8 x %struct.test_st]* bitcast (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test to [8 x %struct.test_st]*), i64 0, i64 %idxprom, i32 3
  %1 = load i32, i32* %data_len, align 4, !tbaa !9
  %conv = sext i32 %1 to i64
  %call8 = tail call i8* @HMAC(%struct.evp_md_st* noundef %call, i8* noundef %arraydecay, i32 noundef %0, i8* noundef nonnull %arraydecay5, i64 noundef %conv, i8* noundef null, i32* noundef null) #4
  %call9 = tail call fastcc i8* @pt(i8* noundef %call8, i32 noundef 16) #5
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call9) #4
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %digest = getelementptr inbounds [8 x %struct.test_st], [8 x %struct.test_st]* bitcast (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test to [8 x %struct.test_st]*), i64 0, i64 %idxprom, i32 4
  %2 = load i8*, i8** %digest, align 8, !tbaa !10
  %call13 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call9, i8* noundef %2) #4
  %tobool14 = icmp ne i32 %call13, 0
  %phi.cast = zext i1 %tobool14 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hmac_single_shot() #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha1() #4
  %0 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 3), align 4, !tbaa !9
  %conv = sext i32 %0 to i64
  %call1 = tail call i8* @HMAC(%struct.evp_md_st* noundef %call, i8* noundef null, i32 noundef 0, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 2, i64 0), i64 noundef %conv, i8* noundef null, i32* noundef null) #4
  %call2 = tail call fastcc i8* @pt(i8* noundef %call1, i32 noundef 20) #5
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call2) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 4), align 8, !tbaa !10
  %call4 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call2, i8* noundef %1) #4
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hmac_bad() #0 {
entry:
  %call = tail call %struct.hmac_ctx_st* @HMAC_CTX_new() #4
  %0 = bitcast %struct.hmac_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.evp_md_st* @HMAC_CTX_get_md(%struct.hmac_ctx_st* noundef %call) #4
  %1 = bitcast %struct.evp_md_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %2 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 3), align 4, !tbaa !9
  %conv10 = sext i32 %2 to i64
  %call11 = tail call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 2, i64 0), i64 noundef %conv10) #4
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv13) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false9
  %call17 = tail call %struct.evp_md_st* @EVP_sha1() #4
  %call18 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef %call17, %struct.engine_st* noundef null) #4
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv20) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %3 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 3), align 4, !tbaa !9
  %conv24 = sext i32 %3 to i64
  %call25 = tail call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 2, i64 0), i64 noundef %conv24) #4
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv27) #4
  %tobool29.not = icmp ne i32 %call28, 0
  %spec.select = zext i1 %tobool29.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false23, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false16
  %ret.0 = phi i32 [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false23 ]
  tail call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hmac_run() #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %call = tail call %struct.hmac_ctx_st* @HMAC_CTX_new() #4
  %2 = bitcast %struct.hmac_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @HMAC_CTX_reset(%struct.hmac_ctx_st* noundef %call) #4
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %2) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call %struct.evp_md_st* @HMAC_CTX_get_md(%struct.hmac_ctx_st* noundef %call) #4
  %3 = bitcast %struct.evp_md_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* noundef %3) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %4 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 3), align 4, !tbaa !9
  %conv13 = sext i32 %4 to i64
  %call14 = tail call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 2, i64 0), i64 noundef %conv13) #4
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false12
  %call20 = tail call %struct.evp_md_st* @EVP_sha1() #4
  %call21 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 0, i64 0), i32 noundef -1, %struct.evp_md_st* noundef %call20, %struct.engine_st* noundef null) #4
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv23) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false19
  %5 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 1), align 16, !tbaa !3
  %call28 = tail call %struct.evp_md_st* @EVP_sha1() #4
  %call29 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 0, i64 0), i32 noundef %5, %struct.evp_md_st* noundef %call28, %struct.engine_st* noundef null) #4
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end27
  %6 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 3), align 4, !tbaa !9
  %conv35 = sext i32 %6 to i64
  %call36 = tail call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 2, i64 0), i64 noundef %conv35) #4
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv38) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false34
  %call42 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef nonnull %len) #4
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv44) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false41
  %7 = load i32, i32* %len, align 4, !tbaa !11
  %call50 = call fastcc i8* @pt(i8* noundef nonnull %0, i32 noundef %7) #5
  %call51 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call50) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end48
  %8 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 4, i32 4), align 8, !tbaa !10
  %call54 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call50, i8* noundef %8) #4
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %if.end57

if.end57:                                         ; preds = %lor.lhs.false53
  %call58 = call %struct.evp_md_st* @EVP_sha256() #4
  %call59 = call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef %call58, %struct.engine_st* noundef null) #4
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv61) #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end65

if.end65:                                         ; preds = %if.end57
  %9 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 5, i32 1), align 16, !tbaa !3
  %call66 = call %struct.evp_md_st* @EVP_sha256() #4
  %call67 = call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 5, i32 0, i64 0), i32 noundef %9, %struct.evp_md_st* noundef %call66, %struct.engine_st* noundef null) #4
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv69) #4
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end65
  %call73 = call %struct.evp_md_st* @HMAC_CTX_get_md(%struct.hmac_ctx_st* noundef %call) #4
  %10 = bitcast %struct.evp_md_st* %call73 to i8*
  %call74 = call %struct.evp_md_st* @EVP_sha256() #4
  %11 = bitcast %struct.evp_md_st* %call74 to i8*
  %call75 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* noundef %10, i8* noundef %11) #4
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false72
  %12 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 5, i32 3), align 4, !tbaa !9
  %conv78 = sext i32 %12 to i64
  %call79 = call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 5, i32 2, i64 0), i64 noundef %conv78) #4
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv81) #4
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false77
  %call86 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef nonnull %len) #4
  %cmp87 = icmp ne i32 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv88) #4
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %if.end92

if.end92:                                         ; preds = %lor.lhs.false84
  %13 = load i32, i32* %len, align 4, !tbaa !11
  %call94 = call fastcc i8* @pt(i8* noundef nonnull %0, i32 noundef %13) #5
  %call95 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call94) #4
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end92
  %14 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 5, i32 4), align 8, !tbaa !10
  %call98 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call94, i8* noundef %14) #4
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %if.end101

if.end101:                                        ; preds = %lor.lhs.false97
  %15 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 1), align 16, !tbaa !3
  %call102 = call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 0, i64 0), i32 noundef %15, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp103 = icmp ne i32 %call102, 0
  %conv104 = zext i1 %cmp103 to i32
  %call105 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv104) #4
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.end101
  %16 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 3), align 4, !tbaa !9
  %conv108 = sext i32 %16 to i64
  %call109 = call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 2, i64 0), i64 noundef %conv108) #4
  %cmp110 = icmp ne i32 %call109, 0
  %conv111 = zext i1 %cmp110 to i32
  %call112 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv111) #4
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %err, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %lor.lhs.false107
  %call116 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef nonnull %len) #4
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv118) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %if.end122

if.end122:                                        ; preds = %lor.lhs.false114
  %17 = load i32, i32* %len, align 4, !tbaa !11
  %call124 = call fastcc i8* @pt(i8* noundef nonnull %0, i32 noundef %17) #5
  %call125 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call124) #4
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %if.end122
  %18 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 4), align 8, !tbaa !10
  %call128 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef %call124, i8* noundef %18) #4
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %err, label %if.end131

if.end131:                                        ; preds = %lor.lhs.false127
  %call132 = call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null) #4
  %cmp133 = icmp ne i32 %call132, 0
  %conv134 = zext i1 %cmp133 to i32
  %call135 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv134) #4
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.end131
  %19 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 3), align 4, !tbaa !9
  %conv138 = sext i32 %19 to i64
  %call139 = call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 2, i64 0), i64 noundef %conv138) #4
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv141) #4
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false137
  %call146 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef nonnull %len) #4
  %cmp147 = icmp ne i32 %call146, 0
  %conv148 = zext i1 %cmp147 to i32
  %call149 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv148) #4
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %if.end152

if.end152:                                        ; preds = %lor.lhs.false144
  %20 = load i32, i32* %len, align 4, !tbaa !11
  %call154 = call fastcc i8* @pt(i8* noundef nonnull %0, i32 noundef %20) #5
  %call155 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call154) #4
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %err, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %if.end152
  %21 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 4), align 8, !tbaa !10
  %call158 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef %call154, i8* noundef %21) #4
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %err, label %if.end161

if.end161:                                        ; preds = %lor.lhs.false157
  %call162 = call %struct.evp_md_st* @EVP_sha256() #4
  %call163 = call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef null, i32 noundef 0, %struct.evp_md_st* noundef %call162, %struct.engine_st* noundef null) #4
  %cmp164 = icmp ne i32 %call163, 0
  %conv165 = zext i1 %cmp164 to i32
  %call166 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv165) #4
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.end161
  %22 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 3), align 4, !tbaa !9
  %conv169 = sext i32 %22 to i64
  %call170 = call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 2, i64 0), i64 noundef %conv169) #4
  %cmp171 = icmp ne i32 %call170, 0
  %conv172 = zext i1 %cmp171 to i32
  %call173 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv172) #4
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %err, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false168
  %call177 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef nonnull %len) #4
  %cmp178 = icmp ne i32 %call177, 0
  %conv179 = zext i1 %cmp178 to i32
  %call180 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv179) #4
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %if.end183

if.end183:                                        ; preds = %lor.lhs.false175
  %23 = load i32, i32* %len, align 4, !tbaa !11
  %call185 = call fastcc i8* @pt(i8* noundef nonnull %0, i32 noundef %23) #5
  %call186 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call185) #4
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %err, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %if.end183
  %24 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 6, i32 4), align 8, !tbaa !10
  %call189 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* noundef %call185, i8* noundef %24) #4
  %tobool190.not = icmp ne i32 %call189, 0
  %spec.select = zext i1 %tobool190.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false188, %if.end183, %if.end161, %lor.lhs.false168, %lor.lhs.false175, %if.end152, %lor.lhs.false157, %if.end131, %lor.lhs.false137, %lor.lhs.false144, %if.end122, %lor.lhs.false127, %if.end101, %lor.lhs.false107, %lor.lhs.false114, %if.end92, %lor.lhs.false97, %if.end65, %lor.lhs.false72, %lor.lhs.false77, %lor.lhs.false84, %if.end57, %if.end48, %lor.lhs.false53, %if.end27, %lor.lhs.false34, %lor.lhs.false41, %if.end, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false19
  %ret.0 = phi i32 [ 0, %if.end183 ], [ 0, %lor.lhs.false175 ], [ 0, %lor.lhs.false168 ], [ 0, %if.end161 ], [ 0, %lor.lhs.false157 ], [ 0, %if.end152 ], [ 0, %lor.lhs.false144 ], [ 0, %lor.lhs.false137 ], [ 0, %if.end131 ], [ 0, %lor.lhs.false127 ], [ 0, %if.end122 ], [ 0, %lor.lhs.false114 ], [ 0, %lor.lhs.false107 ], [ 0, %if.end101 ], [ 0, %lor.lhs.false97 ], [ 0, %if.end92 ], [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false77 ], [ 0, %lor.lhs.false72 ], [ 0, %if.end65 ], [ 0, %if.end57 ], [ 0, %lor.lhs.false53 ], [ 0, %if.end48 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false34 ], [ 0, %if.end27 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false188 ]
  call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_hmac_copy() #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %call = tail call %struct.hmac_ctx_st* @HMAC_CTX_new() #4
  %call1 = tail call %struct.hmac_ctx_st* @HMAC_CTX_new() #4
  %2 = bitcast %struct.hmac_ctx_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast %struct.hmac_ctx_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8* noundef %3) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 7, i32 1), align 16, !tbaa !3
  %call5 = tail call %struct.evp_md_st* @EVP_sha1() #4
  %call6 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 7, i32 0, i64 0), i32 noundef %4, %struct.evp_md_st* noundef %call5, %struct.engine_st* noundef null) #4
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 7, i32 3), align 4, !tbaa !9
  %conv10 = sext i32 %5 to i64
  %call11 = tail call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %call, i8* noundef getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 7, i32 2, i64 0), i64 noundef %conv10) #4
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv13) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false9
  %call17 = tail call i32 @HMAC_CTX_copy(%struct.hmac_ctx_st* noundef %call1, %struct.hmac_ctx_st* noundef %call) #4
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %call23 = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %call1, i8* noundef nonnull %0, i32* noundef nonnull %len) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false22
  %6 = load i32, i32* %len, align 4, !tbaa !11
  %call31 = call fastcc i8* @pt(i8* noundef nonnull %0, i32 noundef %6) #5
  %call32 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end29
  %7 = load i8*, i8** getelementptr inbounds (<{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>, <{ %struct.test_st, %struct.test_st, %struct.test_st, { [16 x i8], i32, <{ [50 x i8], [14 x i8] }>, i32, i8* }, %struct.test_st, %struct.test_st, %struct.test_st, %struct.test_st }>* @test, i64 0, i32 7, i32 4), align 8, !tbaa !10
  %call35 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8* noundef %call31, i8* noundef %7) #4
  %tobool36.not = icmp ne i32 %call35, 0
  %spec.select = zext i1 %tobool36.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false34, %if.end29, %if.end, %lor.lhs.false9, %lor.lhs.false16, %lor.lhs.false22, %entry, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %if.end29 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false9 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false34 ]
  call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %call1) #4
  call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @pt(i8* noundef readonly %md, i32 noundef %len) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %md, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp19.not = icmp eq i32 %len, 0
  br i1 %cmp19.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %len to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %mul = shl nuw i64 %indvars.iv, 1
  %idxprom = and i64 %mul, 4294967294
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* @pt.buf, i64 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds i8, i8* %md, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx3, align 1, !tbaa !12
  %conv = zext i8 %0 to i32
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arrayidx, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !13

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i8* [ null, %entry ], [ getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), %for.cond.preheader ], [ getelementptr inbounds ([80 x i8], [80 x i8]* @pt.buf, i64 0, i64 0), %for.body ]
  ret i8* %retval.0
}

declare dso_local i8* @HMAC(%struct.evp_md_st* noundef, i8* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_md5() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #1

declare dso_local %struct.hmac_ctx_st* @HMAC_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @HMAC_CTX_get_md(%struct.hmac_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef, i8* noundef, i32 noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @HMAC_Update(%struct.hmac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @HMAC_CTX_reset(%struct.hmac_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @HMAC_Final(%struct.hmac_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @HMAC_CTX_copy(%struct.hmac_ctx_st* noundef, %struct.hmac_ctx_st* noundef) local_unnamed_addr #1

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
!3 = !{!4, !7, i64 16}
!4 = !{!"test_st", !5, i64 0, !7, i64 16, !5, i64 20, !7, i64 84, !8, i64 88}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!4, !7, i64 84}
!10 = !{!4, !8, i64 88}
!11 = !{!7, !7, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
