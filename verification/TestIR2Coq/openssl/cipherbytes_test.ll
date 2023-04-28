; ModuleID = 'test/cipherbytes_test.c'
source_filename = "test/cipherbytes_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.stack_st_SSL_CIPHER = type opaque
%struct.stack_st = type opaque
%struct.ssl_cipher_st = type opaque

@.str = private unnamed_addr constant [24 x i8] c"test/cipherbytes_test.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ctx = SSL_CTX_new(TLS_server_method())\00", align 1
@ctx = internal unnamed_addr global %struct.ssl_ctx_st* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"s = SSL_new(ctx)\00", align 1
@s = internal unnamed_addr global %struct.ssl_st* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"test_empty\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"test_unsupported\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"test_v2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"test_v3\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"SSL_bytes_to_cipher_list(s, bytes, 0, 0, &sk, &scsv)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"sk\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"scsv\00", align 1
@__const.test_unsupported.bytes = private unnamed_addr constant [6 x i8] c"\C0\0F\00/\01\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"SSL_bytes_to_cipher_list(s, bytes, sizeof(bytes), 0, &sk, &scsv)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"sk_SSL_CIPHER_num(sk)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"sk_SSL_CIPHER_num(scsv)\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(sk, 0))\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"\22AES128-SHA\22\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@__const.test_v2.bytes = private unnamed_addr constant [9 x i8] c"\00\005\01\00\80\00\003", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"SSL_bytes_to_cipher_list(s, bytes, sizeof(bytes), 1, &sk, &scsv)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"AES256-SHA\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"DHE-RSA-AES128-SHA\00", align 1
@__const.test_v3.bytes = private unnamed_addr constant [10 x i8] c"\00/\003\00\9F\00\FFV\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(sk, 1))\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"\22DHE-RSA-AES128-SHA\22\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(sk, 2))\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"\22DHE-RSA-AES256-GCM-SHA384\22\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"DHE-RSA-AES256-GCM-SHA384\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(scsv, 0))\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"\22TLS_EMPTY_RENEGOTIATION_INFO_SCSV\22\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"TLS_EMPTY_RENEGOTIATION_INFO_SCSV\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"SSL_CIPHER_get_name(sk_SSL_CIPHER_value(scsv, 1))\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"\22TLS_FALLBACK_SCSV\22\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"TLS_FALLBACK_SCSV\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #6
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #6
  store %struct.ssl_ctx_st* %call1, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %0 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call3 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %1) #6
  store %struct.ssl_st* %call3, %struct.ssl_st** @s, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_empty) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_unsupported) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_v2) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_v3) #6
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #1

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_empty() #0 {
entry:
  %sk = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %scsv = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %bytes = alloca [1 x i8], align 1
  %0 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %1 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %2 = getelementptr inbounds [1 x i8], [1 x i8]* %bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #7
  store i8 0, i8* %2, align 1
  %3 = load %struct.ssl_st*, %struct.ssl_st** @s, align 8, !tbaa !3
  %call = call i32 @SSL_bytes_to_cipher_list(%struct.ssl_st* noundef %3, i8* noundef nonnull %2, i64 noundef 0, i32 noundef 0, %struct.stack_st_SSL_CIPHER** noundef nonnull %sk, %struct.stack_st_SSL_CIPHER** noundef nonnull %scsv) #6
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !3
  %call2 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %5) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !3
  %call5 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %7) #6
  %tobool6.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false4, %entry, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false4 ]
  %8 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call7 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %8) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call7) #6
  %9 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call8 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %9) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call8) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unsupported() #0 {
entry:
  %sk = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %scsv = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %bytes = alloca [6 x i8], align 1
  %0 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = getelementptr inbounds [6 x i8], [6 x i8]* %bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %2) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %2, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_unsupported.bytes, i64 0, i64 0), i64 6, i1 false)
  %3 = load %struct.ssl_st*, %struct.ssl_st** @s, align 8, !tbaa !3
  %call = call i32 @SSL_bytes_to_cipher_list(%struct.ssl_st* noundef %3, i8* noundef nonnull %2, i64 noundef 6, i32 noundef 0, %struct.stack_st_SSL_CIPHER** noundef nonnull %sk, %struct.stack_st_SSL_CIPHER** noundef nonnull %scsv) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !3
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %5) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call5 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %6) #8
  %call6 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %call7 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false4
  %7 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %8) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %9 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call13 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %9) #8
  %call14 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #6
  %call15 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false12
  %10 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call18 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %10) #8
  %call19 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef 0) #6
  %11 = bitcast i8* %call19 to %struct.ssl_cipher_st*
  %call20 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %11) #6
  %call21 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0)) #6
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false9, %lor.lhs.false12
  %ret.0 = phi i32 [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false17 ]
  %12 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call23 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %12) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call23) #6
  %13 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call24 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %13) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call24) #6
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_v2() #0 {
entry:
  %sk = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %scsv = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %bytes = alloca [9 x i8], align 1
  %0 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = getelementptr inbounds [9 x i8], [9 x i8]* %bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %2) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %2, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_v2.bytes, i64 0, i64 0), i64 9, i1 false)
  %3 = load %struct.ssl_st*, %struct.ssl_st** @s, align 8, !tbaa !3
  %call = call i32 @SSL_bytes_to_cipher_list(%struct.ssl_st* noundef %3, i8* noundef nonnull %2, i64 noundef 9, i32 noundef 1, %struct.stack_st_SSL_CIPHER** noundef nonnull %sk, %struct.stack_st_SSL_CIPHER** noundef nonnull %scsv) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !3
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %5) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %6 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call5 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %6) #8
  %call6 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %call7 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call6, i32 noundef 2) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false4
  %7 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %8) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %9 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call13 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %9) #8
  %call14 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call13) #6
  %call15 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false12
  %10 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call17 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %10) #8
  %call18 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef 0) #6
  %11 = bitcast i8* %call18 to %struct.ssl_cipher_st*
  %call19 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %11) #6
  %call20 = call i32 @strcmp(i8* noundef %call19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #9
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %lor.lhs.false23, label %err

lor.lhs.false23:                                  ; preds = %if.end
  %12 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call24 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %12) #8
  %call25 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call24, i32 noundef 1) #6
  %13 = bitcast i8* %call25 to %struct.ssl_cipher_st*
  %call26 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %13) #6
  %call27 = call i32 @strcmp(i8* noundef %call26, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #9
  %cmp28.not = icmp eq i32 %call27, 0
  %spec.select = zext i1 %cmp28.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false23, %if.end, %entry, %lor.lhs.false, %lor.lhs.false4, %lor.lhs.false9, %lor.lhs.false12
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false23 ]
  %14 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call32 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %14) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call32) #6
  %15 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call33 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %15) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call33) #6
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_v3() #0 {
entry:
  %sk = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %scsv = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %bytes = alloca [10 x i8], align 1
  %0 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %1 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %2) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %2, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_v3.bytes, i64 0, i64 0), i64 10, i1 false)
  %3 = load %struct.ssl_st*, %struct.ssl_st** @s, align 8, !tbaa !3
  %call = call i32 @SSL_bytes_to_cipher_list(%struct.ssl_st* noundef %3, i8* noundef nonnull %2, i64 noundef 10, i32 noundef 0, %struct.stack_st_SSL_CIPHER** noundef nonnull %sk, %struct.stack_st_SSL_CIPHER** noundef nonnull %scsv) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = bitcast %struct.stack_st_SSL_CIPHER** %sk to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !3
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* noundef %5) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call4 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %6) #8
  %call5 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #6
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call5, i32 noundef 3) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false3
  %7 = bitcast %struct.stack_st_SSL_CIPHER** %scsv to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %call9 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %8) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %9 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call12 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %9) #8
  %call13 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call12) #6
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call13, i32 noundef 2) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %10 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call17 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %10) #8
  %call18 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call17, i32 noundef 0) #6
  %11 = bitcast i8* %call18 to %struct.ssl_cipher_st*
  %call19 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %11) #6
  %call20 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0)) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %12 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call23 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %12) #8
  %call24 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call23, i32 noundef 1) #6
  %13 = bitcast i8* %call24 to %struct.ssl_cipher_st*
  %call25 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %13) #6
  %call26 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call25, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %14 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call29 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %14) #8
  %call30 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call29, i32 noundef 2) #6
  %15 = bitcast i8* %call30 to %struct.ssl_cipher_st*
  %call31 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %15) #6
  %call32 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i8* noundef %call31, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %16 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call35 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %16) #8
  %call36 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call35, i32 noundef 0) #6
  %17 = bitcast i8* %call36 to %struct.ssl_cipher_st*
  %call37 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %17) #6
  %call38 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call37, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0)) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %18 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call41 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %18) #8
  %call42 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call41, i32 noundef 1) #6
  %19 = bitcast i8* %call42 to %struct.ssl_cipher_st*
  %call43 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %19) #6
  %call44 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call43, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0)) #6
  %tobool45.not = icmp ne i32 %call44, 0
  %spec.select = zext i1 %tobool45.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false40, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false8, %lor.lhs.false11, %lor.lhs.false16, %lor.lhs.false22, %lor.lhs.false28, %lor.lhs.false34
  %ret.0 = phi i32 [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false40 ]
  %20 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %sk, align 8, !tbaa !3
  %call46 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %20) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call46) #6
  %21 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsv, align 8, !tbaa !3
  %call47 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %21) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call47) #6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ssl_st*, %struct.ssl_st** @s, align 8, !tbaa !3
  tail call void @SSL_free(%struct.ssl_st* noundef %0) #6
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %1) #6
  ret void
}

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_bytes_to_cipher_list(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i32 noundef, %struct.stack_st_SSL_CIPHER** noundef, %struct.stack_st_SSL_CIPHER** noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
