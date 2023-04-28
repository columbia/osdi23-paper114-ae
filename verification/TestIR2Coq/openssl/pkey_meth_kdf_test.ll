; ModuleID = 'test/pkey_meth_kdf_test.c'
source_filename = "test/pkey_meth_kdf_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_md_st = type opaque

@.str = private unnamed_addr constant [18 x i8] c"test_kdf_tls1_prf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"test_kdf_hkdf\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test_kdf_scrypt\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"test/pkey_meth_kdf_test.c\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"EVP_PKEY_TLS1_PRF\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"EVP_PKEY_derive_init\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_CTX_set_tls1_prf_md\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_CTX_set1_tls1_prf_secret\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_CTX_add1_tls1_prf_seed\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"EVP_PKEY_derive\00", align 1
@__const.test_kdf_tls1_prf.expected = private unnamed_addr constant [16 x i8] c"\8EM\93%0\D7e\A0\AA\E9t\C3\04s^\CC", align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"EVP_PKEY_HKDF\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"EVP_PKEY_CTX_set_hkdf_md\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_CTX_set1_hkdf_salt\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_CTX_set1_hkdf_key\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_CTX_set1_hkdf_info\00", align 1
@__const.test_kdf_hkdf.expected = private unnamed_addr constant [10 x i8] c"*\C46\9FRY\96\F8\DE\13", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"EVP_PKEY_SCRYPT\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_CTX_set1_pbe_pass\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"NaCl\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_CTX_set1_scrypt_salt\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_CTX_set_scrypt_N\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_CTX_set_scrypt_r\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_CTX_set_scrypt_p\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_CTX_set_maxmem_bytes\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"EVP_PKEY_derive should have failed\00", align 1
@__const.test_kdf_scrypt.expected = private unnamed_addr constant [64 x i8] c"\FD\BA\BE\1C\9D4r\00xV\E7\19\0D\01\E9\FE|j\D7\CB\C8#x0\E7svcK71b.\AF0\D9.\22\A3\88o\F1\09'\9D\980\DA\C7'\AF\B9J\83\EEm\83`\CB\DF\A2\CC\06@", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_tls1_prf) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_hkdf) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_kdf_scrypt) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_tls1_prf() #0 {
entry:
  %out = alloca [16 x i8], align 16
  %outlen = alloca i64, align 8
  %expected = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %1 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i64 16, i64* %outlen, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 1021, %struct.engine_st* noundef null) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.evp_md_st* @EVP_sha256() #4
  %call6 = tail call i32 @EVP_PKEY_CTX_set_tls1_prf_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %call5) #4
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %err

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @EVP_PKEY_CTX_set1_tls1_prf_secret(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef 6) #4
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0)) #4
  br label %err

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 noundef 4) #4
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #4
  br label %err

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen) #4
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %err

if.end21:                                         ; preds = %if.end17
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %2, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_kdf_tls1_prf.expected, i64 0, i64 0), i64 16, i1 false)
  %call24 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 16, i8* noundef nonnull %2, i64 noundef 16) #4
  %tobool.not = icmp ne i32 %call24, 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end21, %if.then20, %if.then16, %if.then12, %if.then8, %if.then3, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then8 ], [ 0, %if.then12 ], [ 0, %if.then16 ], [ 0, %if.then20 ], [ %spec.select, %if.end21 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_hkdf() #0 {
entry:
  %out = alloca [10 x i8], align 1
  %outlen = alloca i64, align 8
  %expected = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #5
  %1 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i64 10, i64* %outlen, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 1036, %struct.engine_st* noundef null) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)) #4
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.evp_md_st* @EVP_sha256() #4
  %call6 = tail call i32 @EVP_PKEY_CTX_set_hkdf_md(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %call5) #4
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %err

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @EVP_PKEY_CTX_set1_hkdf_salt(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef 4) #4
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0)) #4
  br label %err

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @EVP_PKEY_CTX_set1_hkdf_key(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 noundef 6) #4
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %err

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @EVP_PKEY_CTX_add1_hkdf_info(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #4
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0)) #4
  br label %err

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen) #4
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %err

if.end25:                                         ; preds = %if.end21
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %2) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %2, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_kdf_hkdf.expected, i64 0, i64 0), i64 10, i1 false)
  %call28 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 10, i8* noundef nonnull %2, i64 noundef 10) #4
  %tobool.not = icmp ne i32 %call28, 0
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %2) #5
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end25, %if.then24, %if.then20, %if.then16, %if.then12, %if.then8, %if.then3, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then8 ], [ 0, %if.then12 ], [ 0, %if.then16 ], [ 0, %if.then20 ], [ 0, %if.then24 ], [ %spec.select, %if.end25 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_kdf_scrypt() #0 {
entry:
  %out = alloca [64 x i8], align 16
  %outlen = alloca i64, align 8
  %expected = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  %1 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i64 64, i64* %outlen, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 973, %struct.engine_st* noundef null) #4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #4
  br label %err

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %err

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @EVP_PKEY_CTX_set1_pbe_pass(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 noundef 8) #4
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #4
  br label %err

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @EVP_PKEY_CTX_set1_scrypt_salt(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 noundef 4) #4
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0)) #4
  br label %err

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @EVP_PKEY_CTX_set_scrypt_N(%struct.evp_pkey_ctx_st* noundef nonnull %call, i64 noundef 1024) #4
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0)) #4
  br label %err

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @EVP_PKEY_CTX_set_scrypt_r(%struct.evp_pkey_ctx_st* noundef nonnull %call, i64 noundef 8) #4
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #4
  br label %err

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @EVP_PKEY_CTX_set_scrypt_p(%struct.evp_pkey_ctx_st* noundef nonnull %call, i64 noundef 16) #4
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0)) #4
  br label %err

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(%struct.evp_pkey_ctx_st* noundef nonnull %call, i64 noundef 16) #4
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0)) #4
  br label %err

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen) #4
  %cmp30 = icmp sgt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0)) #4
  br label %err

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(%struct.evp_pkey_ctx_st* noundef nonnull %call, i64 noundef 10485760) #4
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0)) #4
  br label %err

if.end36:                                         ; preds = %if.end32
  %call38 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen) #4
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #4
  br label %err

if.end41:                                         ; preds = %if.end36
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %2, i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @__const.test_kdf_scrypt.expected, i64 0, i64 0), i64 64, i1 false)
  %call44 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 64, i8* noundef nonnull %2, i64 noundef 64) #4
  %tobool.not = icmp ne i32 %call44, 0
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #5
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end41, %if.then40, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then7 ], [ 0, %if.then11 ], [ 0, %if.then15 ], [ 0, %if.then19 ], [ 0, %if.then23 ], [ 0, %if.then27 ], [ 0, %if.then31 ], [ 0, %if.then35 ], [ 0, %if.then40 ], [ %spec.select, %if.end41 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_tls1_prf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set1_tls1_prf_secret(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_hkdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set1_hkdf_salt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set1_hkdf_key(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_add1_hkdf_info(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set1_pbe_pass(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set1_scrypt_salt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_scrypt_N(%struct.evp_pkey_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_scrypt_r(%struct.evp_pkey_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_scrypt_p(%struct.evp_pkey_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_scrypt_maxmem_bytes(%struct.evp_pkey_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
