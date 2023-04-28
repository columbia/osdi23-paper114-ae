; ModuleID = 'test/afalgtest.c'
source_filename = "test/afalgtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_cipher_ctx_st = type opaque

@.str = private unnamed_addr constant [6 x i8] c"afalg\00", align 1
@e = internal unnamed_addr global %struct.engine_st* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"test/afalgtest.c\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't load AFALG engine\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"test_afalg_aes_cbc\00", align 1
@test_afalg_aes_cbc.key = internal constant [33 x i8] c"\06\A9!@6\B8\A1[Q.\03\D54\12\00\06\06\A9!@6\B8\A1[Q.\03\D54\12\00\06\00", align 16
@test_afalg_aes_cbc.iv = internal constant [17 x i8] c"=\AF\BAB\9D\9E\B40\B4\22\DA\80,\9F\ACA\00", align 16
@test_afalg_aes_cbc.in = internal constant [17 x i8] c"Single block msg\0A", align 16
@test_afalg_aes_cbc.encresult_128 = internal constant [17 x i8] c"\E3Sw\9C\10y\AE\B8'\08\94-\BEw\18\1A-", align 16
@test_afalg_aes_cbc.encresult_192 = internal constant [17 x i8] c"\F7\E4&\D1\D5O\8F9\B1\9E\E0\DFa\B9\C2U\EB", align 16
@test_afalg_aes_cbc.encresult_256 = internal constant [17 x i8] c"\A0v\85\FD\C1eq\9D\C7\E9\13n\AEUI\B4\13", align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"EVP_CipherInit_ex(ctx, cipher, e, key, iv, 1)\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"EVP_CipherUpdate(ctx, ebuf, &encl, in, BUFFER_SIZE)\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"EVP_CipherFinal_ex(ctx, ebuf + encl, &encf)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"enc_result\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ebuf\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"EVP_CIPHER_CTX_reset(ctx)\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"EVP_CipherInit_ex(ctx, cipher, e, key, iv, 0)\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"EVP_CipherUpdate(ctx, dbuf, &decl, ebuf, encl)\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"EVP_CipherFinal_ex(ctx, dbuf + decl, &decf)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"BUFFER_SIZE\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dbuf\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"in\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @global_init() local_unnamed_addr #0 {
entry:
  tail call void @ENGINE_load_builtin_engines() #3
  ret i32 1
}

declare dso_local void @ENGINE_load_builtin_engines() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_by_id(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #3
  store %struct.engine_st* %call, %struct.engine_st** @e, align 8, !tbaa !3
  %cmp = icmp eq %struct.engine_st* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_afalg_aes_cbc, i32 noundef 3, i32 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

declare dso_local %struct.engine_st* @ENGINE_by_id(i8* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_afalg_aes_cbc(i32 noundef %keysize_idx) #0 {
entry:
  %ebuf = alloca [49 x i8], align 16
  %dbuf = alloca [49 x i8], align 16
  %encl = alloca i32, align 4
  %encf = alloca i32, align 4
  %decl = alloca i32, align 4
  %decf = alloca i32, align 4
  %0 = getelementptr inbounds [49 x i8], [49 x i8]* %ebuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 49, i8* nonnull %0) #4
  %1 = getelementptr inbounds [49 x i8], [49 x i8]* %dbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 49, i8* nonnull %1) #4
  %2 = bitcast i32* %encl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %3 = bitcast i32* %encf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = bitcast i32* %decl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = bitcast i32* %decf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  switch i32 %keysize_idx, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call %struct.evp_cipher_st* @EVP_aes_192_cbc() #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call %struct.evp_cipher_st* @EVP_aes_256_cbc() #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  %cipher.0 = phi %struct.evp_cipher_st* [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ null, %entry ]
  %enc_result.0 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.encresult_256, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.encresult_192, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.encresult_128, i64 0, i64 0), %sw.bb ], [ null, %entry ]
  %call5 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #3
  %6 = bitcast %struct.evp_cipher_ctx_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef %6) #3
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.epilog
  %7 = load %struct.engine_st*, %struct.engine_st** @e, align 8, !tbaa !3
  %call7 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call5, %struct.evp_cipher_st* noundef %cipher.0, %struct.engine_st* noundef %7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @test_afalg_aes_cbc.key, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.iv, i64 0, i64 0), i32 noundef 1) #3
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call10 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call5, i8* noundef nonnull %0, i32* noundef nonnull %encl, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.in, i64 0, i64 0), i32 noundef 17) #3
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv12) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %encl, align 4, !tbaa !7
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds [49 x i8], [49 x i8]* %ebuf, i64 0, i64 %idx.ext
  %call17 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call5, i8* noundef nonnull %add.ptr, i32* noundef nonnull %encf) #3
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv19) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false15
  %9 = load i32, i32* %encf, align 4, !tbaa !7
  %10 = load i32, i32* %encl, align 4, !tbaa !7
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %encl, align 4, !tbaa !7
  %call25 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %enc_result.0, i64 noundef 17, i8* noundef nonnull %0, i64 noundef 17) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %if.end28

if.end28:                                         ; preds = %if.end23
  %call29 = call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %call5) #3
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv31) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end28
  %11 = load %struct.engine_st*, %struct.engine_st** @e, align 8, !tbaa !3
  %call35 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call5, %struct.evp_cipher_st* noundef %cipher.0, %struct.engine_st* noundef %11, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @test_afalg_aes_cbc.key, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.iv, i64 0, i64 0), i32 noundef 0) #3
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %end, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %12 = load i32, i32* %encl, align 4, !tbaa !7
  %call43 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call5, i8* noundef nonnull %1, i32* noundef nonnull %decl, i8* noundef nonnull %0, i32 noundef %12) #3
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv45) #3
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false40
  %13 = load i32, i32* %decl, align 4, !tbaa !7
  %idx.ext50 = sext i32 %13 to i64
  %add.ptr51 = getelementptr inbounds [49 x i8], [49 x i8]* %dbuf, i64 0, i64 %idx.ext50
  %call52 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call5, i8* noundef nonnull %add.ptr51, i32* noundef nonnull %decf) #3
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv54) #3
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %end, label %if.end58

if.end58:                                         ; preds = %lor.lhs.false48
  %14 = load i32, i32* %decf, align 4, !tbaa !7
  %15 = load i32, i32* %decl, align 4, !tbaa !7
  %add59 = add nsw i32 %15, %14
  store i32 %add59, i32* %decl, align 4, !tbaa !7
  %call60 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 noundef %add59, i32 noundef 17) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %end, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end58
  %call64 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 17, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @test_afalg_aes_cbc.in, i64 0, i64 0), i64 noundef 17) #3
  %tobool65.not = icmp ne i32 %call64, 0
  %spec.select = zext i1 %tobool65.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false62, %if.end58, %if.end28, %lor.lhs.false34, %lor.lhs.false40, %lor.lhs.false48, %if.end23, %if.end, %lor.lhs.false, %lor.lhs.false15
  %ret.0 = phi i32 [ 0, %if.end58 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false34 ], [ 0, %if.end28 ], [ 0, %if.end23 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false62 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call5) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 49, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 49, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.engine_st*, %struct.engine_st** @e, align 8, !tbaa !3
  %call = tail call i32 @ENGINE_free(%struct.engine_st* noundef %0) #3
  ret void
}

declare dso_local i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_192_cbc() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_cbc() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
