; ModuleID = 'test/bio_memleak_test.c'
source_filename = "test/bio_memleak_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.pkcs7_st = type { i8*, i64, i32, i32, %struct.asn1_object_st*, %union.anon, %struct.PKCS7_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.PKCS7_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type opaque

@.str = private unnamed_addr constant [17 x i8] c"test_bio_memleak\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"test_bio_get_mem\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"test_bio_new_mem_buf\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test_bio_rdonly_mem_buf\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"test_bio_rdwr_rdonly\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"test_bio_nonclear_rst\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"test_bio_i2d_ASN1_mime\00", align 1
@test_bio_memleak.str = internal constant [10 x i8] c"BIO test\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"test/bio_memleak_test.c\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"BIO_read(bio, buf, sizeof(buf))\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sizeof(str)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"BIO_puts(bio, \22Hello World\\n\22)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"bufmem\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"BIO_set_close(bio, BIO_NOCLOSE)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"bufmem->data\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"\22Hello World\\n\22\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"BIO_read(bio, data, 5)\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"\22Hello\22\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"BIO_get_mem_ptr(bio, &bufmem)\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"BIO_write(bio, \22test\22, 4)\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"BIO_read(bio, data, 16)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"\22 World\\n\22\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" World\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"BIO_reset(bio)\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"bio2\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"BIO_read(bio2, data, 16)\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"BIO_reset(bio2)\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"BIO_puts(bio, \22Hi!\\n\22)\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Hi!\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"\22Hello World\\nHi!\\n\22\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Hello World\0AHi!\0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@test_bio_i2d_ASN1_mime.str = internal constant [15 x i8] c"BIO mime test\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"bio = BIO_new(BIO_s_mem())\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"out = BIO_new(BIO_s_mem())\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"p7 = PKCS7_new()\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"PKCS7_set_type(p7, NID_pkcs7_data)\00", align 1
@error_callback_fired = internal unnamed_addr global i1 false, align 4
@.str.48 = private unnamed_addr constant [100 x i8] c"i2d_ASN1_bio_stream(out, (ASN1_VALUE*) p7, bio, SMIME_STREAM | SMIME_BINARY, ASN1_ITEM_rptr(PKCS7))\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"error_callback_fired\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_memleak) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_get_mem) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_new_mem_buf) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_rdonly_mem_buf) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_rdwr_rdonly) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_nonclear_rst) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_i2d_ASN1_mime) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_memleak() #0 {
entry:
  %bufmem = alloca %struct.buf_mem_st, align 8
  %buf = alloca [100 x i8], align 16
  %0 = bitcast %struct.buf_mem_st* %bufmem to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %1) #5
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %2 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bufmem, i64 0, i32 0
  store i64 10, i64* %length, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bufmem, i64 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_bio_memleak.str, i64 0, i64 0), i8** %data, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bufmem, i64 0, i32 2
  store i64 10, i64* %max, align 8, !tbaa !10
  %call4 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 114, i64 noundef 0, i8* noundef nonnull %0) #4
  call void @BIO_set_flags(%struct.bio_st* noundef %call1, i32 noundef 512) #4
  %call5 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %1, i32 noundef 100) #4
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call5, i32 noundef 10) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %finish, label %if.end9

if.end9:                                          ; preds = %if.end
  %call11 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @test_bio_memleak.str, i64 0, i64 0), i64 noundef 10) #4
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %finish

finish:                                           ; preds = %if.end9, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end9 ]
  %call15 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_get_mem() #0 {
entry:
  %bufmem = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast %struct.buf_mem_st** %bufmem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %bufmem, align 8, !tbaa !11
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call3, i32 noundef 12) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %finish, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %0) #4
  %2 = bitcast %struct.buf_mem_st** %bufmem to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !11
  %call9 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* noundef %3) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %finish, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 9, i64 noundef 0, i8* noundef null) #4
  %conv = trunc i64 %call13 to i32
  %call14 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %finish, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bufmem, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !9
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 0
  %6 = load i64, i64* %length, align 8, !tbaa !3
  %call19 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 noundef 12) #4
  %tobool20.not = icmp ne i32 %call19, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %finish

finish:                                           ; preds = %if.end17, %if.end12, %if.end7, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end12 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end17 ]
  %bio.0 = phi %struct.bio_st* [ %call1, %if.end12 ], [ %call1, %if.end7 ], [ %call1, %if.end ], [ %call1, %entry ], [ null, %if.end17 ]
  %call23 = call i32 @BIO_free(%struct.bio_st* noundef %bio.0) #4
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bufmem, align 8, !tbaa !11
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_new_mem_buf() #0 {
entry:
  %bufmem = alloca %struct.buf_mem_st*, align 8
  %data = alloca [16 x i8], align 16
  %0 = bitcast %struct.buf_mem_st** %bufmem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #5
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 noundef 12) #4
  %2 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef nonnull %1, i32 noundef 5) #4
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call2, i32 noundef 5) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %finish, label %if.end6

if.end6:                                          ; preds = %if.end
  %call8 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i64 noundef 5) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %finish, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %0) #4
  %conv = trunc i64 %call12 to i32
  %call13 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %finish, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = call i32 @BIO_write(%struct.bio_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 noundef 4) #4
  %call18 = call i32 @test_int_lt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call17, i32 noundef 0) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %finish, label %if.end21

if.end21:                                         ; preds = %if.end16
  %call23 = call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef nonnull %1, i32 noundef 16) #4
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call23, i32 noundef 7) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %finish, label %if.end27

if.end27:                                         ; preds = %if.end21
  %call29 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 noundef 7) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %finish, label %if.end32

if.end32:                                         ; preds = %if.end27
  %call33 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 1, i64 noundef 0, i8* noundef null) #4
  %conv34 = trunc i64 %call33 to i32
  %call35 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv34, i32 noundef 0) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %finish, label %if.end38

if.end38:                                         ; preds = %if.end32
  %call40 = call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef nonnull %1, i32 noundef 16) #4
  %call41 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call40, i32 noundef 12) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %finish, label %if.end44

if.end44:                                         ; preds = %if.end38
  %call46 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 noundef 12) #4
  %tobool47.not = icmp ne i32 %call46, 0
  %spec.select = zext i1 %tobool47.not to i32
  br label %finish

finish:                                           ; preds = %if.end44, %if.end38, %if.end32, %if.end27, %if.end21, %if.end16, %if.end11, %if.end6, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end38 ], [ 0, %if.end32 ], [ 0, %if.end27 ], [ 0, %if.end21 ], [ 0, %if.end16 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end44 ]
  %call50 = call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_rdonly_mem_buf() #0 {
entry:
  %bufmem = alloca %struct.buf_mem_st*, align 8
  %data = alloca [16 x i8], align 16
  %0 = bitcast %struct.buf_mem_st** %bufmem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #5
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 noundef 12) #4
  %2 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef nonnull %1, i32 noundef 5) #4
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call2, i32 noundef 5) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %finish, label %if.end6

if.end6:                                          ; preds = %if.end
  %call8 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i64 noundef 5) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %finish, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %0) #4
  %conv = trunc i64 %call12 to i32
  %call13 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %finish, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call, i32 noundef 9, i64 noundef 0, i8* noundef null) #4
  %call19 = call %struct.bio_method_st* @BIO_s_mem() #4
  %call20 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call19) #4
  %3 = bitcast %struct.bio_st* %call20 to i8*
  %call21 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* noundef %3) #4
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %finish, label %if.end24

if.end24:                                         ; preds = %if.end16
  %4 = bitcast %struct.buf_mem_st** %bufmem to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !11
  %call25 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call20, i32 noundef 114, i64 noundef 1, i8* noundef %5) #4
  call void @BIO_set_flags(%struct.bio_st* noundef %call20, i32 noundef 512) #4
  %call27 = call i32 @BIO_read(%struct.bio_st* noundef %call20, i8* noundef nonnull %1, i32 noundef 16) #4
  %call28 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call27, i32 noundef 7) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %finish, label %if.end31

if.end31:                                         ; preds = %if.end24
  %call33 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 noundef 7) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %finish, label %if.end36

if.end36:                                         ; preds = %if.end31
  %call37 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call20, i32 noundef 1, i64 noundef 0, i8* noundef null) #4
  %conv38 = trunc i64 %call37 to i32
  %call39 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv38, i32 noundef 0) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %finish, label %if.end42

if.end42:                                         ; preds = %if.end36
  %call44 = call i32 @BIO_read(%struct.bio_st* noundef %call20, i8* noundef nonnull %1, i32 noundef 16) #4
  %call45 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call44, i32 noundef 7) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %finish, label %if.end48

if.end48:                                         ; preds = %if.end42
  %call50 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 noundef 7) #4
  %tobool51.not = icmp ne i32 %call50, 0
  %spec.select = zext i1 %tobool51.not to i32
  br label %finish

finish:                                           ; preds = %if.end48, %if.end42, %if.end36, %if.end31, %if.end24, %if.end16, %if.end11, %if.end6, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end42 ], [ 0, %if.end36 ], [ 0, %if.end31 ], [ 0, %if.end24 ], [ 0, %if.end16 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end48 ]
  %bio2.0 = phi %struct.bio_st* [ %call20, %if.end42 ], [ %call20, %if.end36 ], [ %call20, %if.end31 ], [ %call20, %if.end24 ], [ %call20, %if.end16 ], [ null, %if.end11 ], [ null, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ %call20, %if.end48 ]
  %call54 = call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  %call55 = call i32 @BIO_free(%struct.bio_st* noundef %bio2.0) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_rdwr_rdonly() #0 {
entry:
  %data = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call3, i32 noundef 12) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %finish, label %if.end7

if.end7:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call1, i32 noundef 512) #4
  %call8 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %0, i32 noundef 16) #4
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call8, i32 noundef 12) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %finish, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call14 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 noundef 12) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %finish, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef 0, i8* noundef null) #4
  %conv = trunc i64 %call18 to i32
  %call19 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %finish, label %if.end22

if.end22:                                         ; preds = %if.end17
  call void @BIO_clear_flags(%struct.bio_st* noundef %call1, i32 noundef 512) #4
  %call23 = call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #4
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef %call23, i32 noundef 4) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %finish, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call29 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %0, i32 noundef 16) #4
  %call30 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call29, i32 noundef 16) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %finish, label %if.end33

if.end33:                                         ; preds = %if.end27
  %call35 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 16, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i64 noundef 16) #4
  %tobool36.not = icmp ne i32 %call35, 0
  %spec.select = zext i1 %tobool36.not to i32
  br label %finish

finish:                                           ; preds = %if.end33, %if.end27, %if.end22, %if.end17, %if.end12, %if.end7, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %if.end12 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end33 ]
  %call39 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_nonclear_rst() #0 {
entry:
  %data = alloca [16 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BIO_puts(%struct.bio_st* noundef %call1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call3, i32 noundef 12) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %finish, label %if.end7

if.end7:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call1, i32 noundef 1024) #4
  %call8 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %0, i32 noundef 16) #4
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call8, i32 noundef 12) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %finish, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call14 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 noundef 12) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %finish, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef 0, i8* noundef null) #4
  %conv = trunc i64 %call18 to i32
  %call19 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %finish, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call24 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %0, i32 noundef 16) #4
  %call25 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call24, i32 noundef 12) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %finish, label %if.end28

if.end28:                                         ; preds = %if.end22
  %call30 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 noundef 12) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %finish, label %if.end33

if.end33:                                         ; preds = %if.end28
  call void @BIO_clear_flags(%struct.bio_st* noundef %call1, i32 noundef 1024) #4
  %call34 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef 0, i8* noundef null) #4
  %conv35 = trunc i64 %call34 to i32
  %call36 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv35, i32 noundef 0) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %finish, label %if.end39

if.end39:                                         ; preds = %if.end33
  %call41 = call i32 @BIO_read(%struct.bio_st* noundef %call1, i8* noundef nonnull %0, i32 noundef 16) #4
  %call42 = call i32 @test_int_lt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %call41, i32 noundef 1) #4
  %tobool43.not = icmp ne i32 %call42, 0
  %spec.select = zext i1 %tobool43.not to i32
  br label %finish

finish:                                           ; preds = %if.end39, %if.end33, %if.end28, %if.end22, %if.end17, %if.end12, %if.end7, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end33 ], [ 0, %if.end28 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %if.end12 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end39 ]
  %call46 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_i2d_ASN1_mime() #0 {
entry:
  %bufmem = alloca %struct.buf_mem_st, align 8
  %0 = bitcast %struct.buf_mem_st* %bufmem to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bufmem, i64 0, i32 0
  store i64 15, i64* %length, align 8, !tbaa !3
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bufmem, i64 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_bio_i2d_ASN1_mime.str, i64 0, i64 0), i8** %data, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bufmem, i64 0, i32 2
  store i64 15, i64* %max, align 8, !tbaa !10
  %call4 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 114, i64 noundef 0, i8* noundef nonnull %0) #4
  call void @BIO_set_flags(%struct.bio_st* noundef %call1, i32 noundef 512) #4
  call void @BIO_set_callback_ex(%struct.bio_st* noundef %call1, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef nonnull @BIO_error_callback) #4
  %call5 = call %struct.bio_method_st* @BIO_s_mem() #4
  %call6 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call5) #4
  %2 = bitcast %struct.bio_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i8* noundef %2) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %finish, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call %struct.pkcs7_st* @PKCS7_new() #4
  %3 = bitcast %struct.pkcs7_st* %call11 to i8*
  %call12 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef %3) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %finish, label %if.end15

if.end15:                                         ; preds = %if.end10
  %call16 = call i32 @PKCS7_set_type(%struct.pkcs7_st* noundef %call11, i32 noundef 21) #4
  %cmp = icmp ne i32 %call16, 0
  %conv = zext i1 %cmp to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %finish, label %if.end20

if.end20:                                         ; preds = %if.end15
  store i1 false, i1* @error_callback_fired, align 4
  %4 = bitcast %struct.pkcs7_st* %call11 to %struct.ASN1_VALUE_st*
  %call21 = call %struct.ASN1_ITEM_st* @PKCS7_it() #4
  %call22 = call i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef %call6, %struct.ASN1_VALUE_st* noundef %4, %struct.bio_st* noundef %call1, i32 noundef 4224, %struct.ASN1_ITEM_st* noundef %call21) #4
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv24) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %finish, label %if.end28

if.end28:                                         ; preds = %if.end20
  %.b = load i1, i1* @error_callback_fired, align 4
  %5 = zext i1 %.b to i32
  %call29 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %5, i32 noundef 1) #4
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %finish

finish:                                           ; preds = %if.end28, %if.end20, %if.end15, %if.end10, %if.end, %entry
  %ok.0 = phi i32 [ 0, %if.end20 ], [ 0, %if.end15 ], [ 0, %if.end10 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end28 ]
  %out.0 = phi %struct.bio_st* [ %call6, %if.end20 ], [ %call6, %if.end15 ], [ %call6, %if.end10 ], [ %call6, %if.end ], [ null, %entry ], [ %call6, %if.end28 ]
  %p7.0 = phi %struct.pkcs7_st* [ %call11, %if.end20 ], [ %call11, %if.end15 ], [ %call11, %if.end10 ], [ null, %if.end ], [ null, %entry ], [ %call11, %if.end28 ]
  %call33 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  %call34 = call i32 @BIO_free(%struct.bio_st* noundef %out.0) #4
  call void @PKCS7_free(%struct.pkcs7_st* noundef %p7.0) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i32 %ok.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i64 @BIO_error_callback(%struct.bio_st* nocapture noundef readnone %bio, i32 noundef %cmd, i8* nocapture noundef readnone %argp, i64 noundef %len, i32 noundef %argi, i64 noundef %argl, i32 noundef %ret, i64* nocapture noundef readnone %processed) #3 {
entry:
  %and = and i32 %cmd, 130
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @error_callback_fired, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.addr.0 = phi i32 [ 0, %if.then ], [ %ret, %entry ]
  %conv = sext i32 %ret.addr.0 to i64
  ret i64 %conv
}

declare dso_local %struct.pkcs7_st* @PKCS7_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @PKCS7_set_type(%struct.pkcs7_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ASN1_bio_stream(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, %struct.bio_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ASN1_ITEM_st* @PKCS7_it() local_unnamed_addr #1

declare dso_local void @PKCS7_free(%struct.pkcs7_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"buf_mem_st", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 24}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!4, !5, i64 16}
!11 = !{!8, !8, i64 0}
