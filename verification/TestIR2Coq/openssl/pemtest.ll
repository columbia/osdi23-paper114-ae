; ModuleID = 'test/pemtest.c'
source_filename = "test/pemtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TESTDATA = type { i8*, i8* }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"test/pemtest.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"pemfile = test_get_argument(0)\00", align 1
@pemfile = internal unnamed_addr global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"test_b64\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test_invalid\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"test_cert_key_cert\00", align 1
@b64_pem_data = internal unnamed_addr constant [2 x %struct.TESTDATA] [%struct.TESTDATA { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct.TESTDATA { i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.21, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"BIO_printf(b, \22-----BEGIN %s-----\\n\22, pemtype)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"-----BEGIN %s-----\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"BIO_printf(b, \22%s\\n\22, encoded)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"BIO_printf(b, \22-----END %s-----\\n\22, pemtype)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"-----END %s-----\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"PEM_read_bio_ex(b, &name, &header, &data, &len, PEM_FLAG_ONLY_B64)\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"memcmp(pemtype, name, strlen(pemtype))\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"strlen(raw)\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"memcmp(data, raw, strlen(raw))\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"aGVsbG8gd29ybGQ=\00", align 1
@.str.20 = private unnamed_addr constant [107 x i8] c"a very ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong input\00", align 1
@.str.21 = private unnamed_addr constant [145 x i8] c"YSB2ZXJ5IG9vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29vb29uZyBpbnB1dA==\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"PEMTESTDATA\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"BIO_printf(b, \22%c%s\\n\22, '\\t', encoded)\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%c%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"key = load_pkey_pem(pemfile, NULL)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @test_get_argument(i64 noundef 0) #4
  store i8* %call, i8** @pemfile, align 8, !tbaa !3
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_b64, i32 noundef 2, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_invalid) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_cert_key_cert) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_b64(i32 noundef %idx) #0 {
entry:
  %name = alloca i8*, align 8
  %header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %name, align 8, !tbaa !3
  %1 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %header, align 8, !tbaa !3
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* null, i8** %data, align 8, !tbaa !3
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %idxprom = sext i32 %idx to i64
  %raw2 = getelementptr inbounds [2 x %struct.TESTDATA], [2 x %struct.TESTDATA]* @b64_pem_data, i64 0, i64 %idxprom, i32 0
  %4 = load i8*, i8** %raw2, align 16, !tbaa !7
  %encoded5 = getelementptr inbounds [2 x %struct.TESTDATA], [2 x %struct.TESTDATA]* @b64_pem_data, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %encoded5, align 8, !tbaa !9
  %6 = bitcast %struct.bio_st* %call1 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef %5) #4
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv13) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #4
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %call23 = call i32 @PEM_read_bio_ex(%struct.bio_st* noundef %call1, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len, i32 noundef 4) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false22
  %7 = load i8*, i8** %name, align 8, !tbaa !3
  %call28 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #6
  %call29 = call i32 @memcmp(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %7, i64 noundef %call28) #6
  %call30 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call29, i32 noundef 0) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end
  %8 = load i64, i64* %len, align 8, !tbaa !10
  %conv33 = trunc i64 %8 to i32
  %call34 = call i64 @strlen(i8* noundef %4) #6
  %conv35 = trunc i64 %call34 to i32
  %call36 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv33, i32 noundef %conv35) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %9 = load i8*, i8** %data, align 8, !tbaa !3
  %call39 = call i64 @strlen(i8* noundef %4) #6
  %call40 = call i32 @memcmp(i8* noundef %9, i8* noundef %4, i64 noundef %call39) #6
  %call41 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call40, i32 noundef 0) #4
  %tobool42.not = icmp ne i32 %call41, 0
  %spec.select = zext i1 %tobool42.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false38, %if.end, %lor.lhs.false32, %entry, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false16, %lor.lhs.false22
  %ret.0 = phi i32 [ 0, %lor.lhs.false32 ], [ 0, %if.end ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false38 ]
  %call45 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  %10 = load i8*, i8** %name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 57) #4
  %11 = load i8*, i8** %header, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #4
  %12 = load i8*, i8** %data, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_invalid() #0 {
entry:
  %name = alloca i8*, align 8
  %header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %name, align 8, !tbaa !3
  %1 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %header, align 8, !tbaa !3
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* null, i8** %data, align 8, !tbaa !3
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  %4 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 noundef 9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0)) #4
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv9) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #4
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv15) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = call i32 @PEM_read_bio_ex(%struct.bio_st* noundef %call1, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len, i32 noundef 4) #4
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv21) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false12, %lor.lhs.false6, %lor.lhs.false, %entry
  %call24 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false18
  %call25 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  %5 = load i8*, i8** %name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #4
  %6 = load i8*, i8** %header, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #4
  %7 = load i8*, i8** %data, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_cert_key_cert() #0 {
entry:
  %0 = load i8*, i8** @pemfile, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef null) #4
  %1 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @PEM_read_bio_ex(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.evp_pkey_st* @load_pkey_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"", !4, i64 0, !4, i64 8}
!9 = !{!8, !4, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
