; ModuleID = 'test/bio_core_test.c'
source_filename = "test/bio_core_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_core_bio_st = type { i32, %struct.bio_st* }
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.bio_method_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"test/bio_core_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"test_bio_core\00", align 1
@biocbs = internal constant [8 x %struct.ossl_dispatch_st] [%struct.ossl_dispatch_st { i32 42, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @tst_bio_core_read_ex to void ()*) }, %struct.ossl_dispatch_st { i32 43, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, i64, i64*)* @tst_bio_core_write_ex to void ()*) }, %struct.ossl_dispatch_st { i32 49, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*, i32)* @tst_bio_core_gets to void ()*) }, %struct.ossl_dispatch_st { i32 48, void ()* bitcast (i32 (%struct.ossl_core_bio_st*, i8*)* @tst_bio_core_puts to void ()*) }, %struct.ossl_dispatch_st { i32 50, void ()* bitcast (i64 (%struct.ossl_core_bio_st*, i32, i64, i8*)* @tst_bio_core_ctrl to void ()*) }, %struct.ossl_dispatch_st { i32 44, void ()* bitcast (i32 (%struct.ossl_core_bio_st*)* @tst_bio_core_up_ref to void ()*) }, %struct.ossl_dispatch_st { i32 45, void ()* bitcast (i32 (%struct.ossl_core_bio_st*)* @tst_bio_core_free to void ()*) }, %struct.ossl_dispatch_st zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"corebio.bio\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"libctx\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"(cbiobad = BIO_new_from_core_bio(NULL, &corebio))\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"(cbio = BIO_new_from_core_bio(libctx, &corebio))\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"BIO_puts(corebio.bio, msg)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"BIO_eof(cbio)\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"BIO_gets(cbio, buf, sizeof(buf))\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"BIO_write(cbio, msg, strlen(msg) + 1)\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"BIO_read(cbio, buf, sizeof(buf))\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_bio_core) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_core() #0 {
entry:
  %corebio = alloca %struct.ossl_core_bio_st, align 8
  %buf = alloca [80 x i8], align 16
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_from_dispatch(%struct.ossl_core_handle_st* noundef null, %struct.ossl_dispatch_st* noundef getelementptr inbounds ([8 x %struct.ossl_dispatch_st], [8 x %struct.ossl_dispatch_st]* @biocbs, i64 0, i64 0)) #4
  %0 = bitcast %struct.ossl_core_bio_st* %corebio to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #5
  %call1 = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call1) #4
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %corebio, i64 0, i32 1
  store %struct.bio_st* %call2, %struct.bio_st** %bio, align 8, !tbaa !3
  %2 = bitcast %struct.bio_st* %call2 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call %struct.bio_st* @BIO_new_from_core_bio(%struct.ossl_lib_ctx_st* noundef null, %struct.ossl_core_bio_st* noundef nonnull %corebio) #4
  %4 = bitcast %struct.bio_st* %call8 to i8*
  %call9 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %call12 = call %struct.bio_st* @BIO_new_from_core_bio(%struct.ossl_lib_ctx_st* noundef %call, %struct.ossl_core_bio_st* noundef nonnull %corebio) #4
  %5 = bitcast %struct.bio_st* %call12 to i8*
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* noundef %5) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false11
  %6 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !3
  %call16 = call i32 @BIO_puts(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #4
  %call17 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %call20 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call12, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv = trunc i64 %call20 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv21 = zext i1 %cmp to i32
  %call22 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv21) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %call25 = call i32 @BIO_gets(%struct.bio_st* noundef %call12, i8* noundef nonnull %1, i32 noundef 80) #4
  %call26 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call25, i32 noundef 0) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call12, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv30 = trunc i64 %call29 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false28
  %call37 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %lor.lhs.false35
  store i8 0, i8* %1, align 16, !tbaa !9
  %call41 = call i64 @strlen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #6
  %7 = trunc i64 %call41 to i32
  %conv42 = add i32 %7, 1
  %call43 = call i32 @BIO_write(%struct.bio_st* noundef %call12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv42) #4
  %call44 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call43, i32 noundef 0) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end40
  %call48 = call i32 @BIO_read(%struct.bio_st* noundef %call12, i8* noundef nonnull %1, i32 noundef 80) #4
  %call49 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call48, i32 noundef 0) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %call53 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #4
  %tobool54.not = icmp ne i32 %call53, 0
  %spec.select = zext i1 %tobool54.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false51, %if.end40, %lor.lhs.false46, %if.end, %lor.lhs.false19, %lor.lhs.false24, %lor.lhs.false28, %lor.lhs.false35, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false11
  %cbiobad.0 = phi %struct.bio_st* [ %call8, %lor.lhs.false46 ], [ %call8, %if.end40 ], [ %call8, %lor.lhs.false35 ], [ %call8, %lor.lhs.false28 ], [ %call8, %lor.lhs.false24 ], [ %call8, %lor.lhs.false19 ], [ %call8, %if.end ], [ %call8, %lor.lhs.false11 ], [ %call8, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call8, %lor.lhs.false51 ]
  %testresult.0 = phi i32 [ 0, %lor.lhs.false46 ], [ 0, %if.end40 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false51 ]
  %cbio.0 = phi %struct.bio_st* [ %call12, %lor.lhs.false46 ], [ %call12, %if.end40 ], [ %call12, %lor.lhs.false35 ], [ %call12, %lor.lhs.false28 ], [ %call12, %lor.lhs.false24 ], [ %call12, %lor.lhs.false19 ], [ %call12, %if.end ], [ %call12, %lor.lhs.false11 ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call12, %lor.lhs.false51 ]
  %call57 = call i32 @BIO_free(%struct.bio_st* noundef %cbiobad.0) #4
  %call58 = call i32 @BIO_free(%struct.bio_st* noundef %cbio.0) #4
  %8 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !3
  %call60 = call i32 @BIO_free(%struct.bio_st* noundef %8) #4
  call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new_from_dispatch(%struct.ossl_core_handle_st* noundef, %struct.ossl_dispatch_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_from_core_bio(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_core_bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @tst_bio_core_read_ex(%struct.ossl_core_bio_st* nocapture noundef readonly %bio, i8* noundef %data, i64 noundef %data_len, i64* noundef %bytes_read) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i32 @BIO_read_ex(%struct.bio_st* noundef %0, i8* noundef %data, i64 noundef %data_len, i64* noundef %bytes_read) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tst_bio_core_write_ex(%struct.ossl_core_bio_st* nocapture noundef readonly %bio, i8* noundef %data, i64 noundef %data_len, i64* noundef %written) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i32 @BIO_write_ex(%struct.bio_st* noundef %0, i8* noundef %data, i64 noundef %data_len, i64* noundef %written) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tst_bio_core_gets(%struct.ossl_core_bio_st* nocapture noundef readonly %bio, i8* noundef %buf, i32 noundef %size) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef %0, i8* noundef %buf, i32 noundef %size) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tst_bio_core_puts(%struct.ossl_core_bio_st* nocapture noundef readonly %bio, i8* noundef %str) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef %str) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @tst_bio_core_ctrl(%struct.ossl_core_bio_st* nocapture noundef readonly %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tst_bio_core_up_ref(%struct.ossl_core_bio_st* nocapture noundef readonly %bio) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i32 @BIO_up_ref(%struct.bio_st* noundef %0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tst_bio_core_free(%struct.ossl_core_bio_st* nocapture noundef readonly %bio) #0 {
entry:
  %bio1 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %bio, i64 0, i32 1
  %0 = load %struct.bio_st*, %struct.bio_st** %bio1, align 8, !tbaa !3
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef %0) #4
  ret i32 %call
}

declare dso_local i32 @BIO_read_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_write_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #1

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
!3 = !{!4, !8, i64 8}
!4 = !{!"ossl_core_bio_st", !5, i64 0, !8, i64 8}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!6, !6, i64 0}
