; ModuleID = 'test/pem_read_depr_test.c'
source_filename = "test/pem_read_depr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.dh_st = type opaque
%struct.dsa_st = type opaque
%struct.rsa_st = type opaque

@.str = private unnamed_addr constant [26 x i8] c"test/pem_read_depr_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"datadir = test_get_argument(0)\00", align 1
@datadir = internal unnamed_addr global i8* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Error getting data dir\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"test_read_dh_params\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"test_read_dh_x942_params\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"test_read_dsa_params\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"test_read_dsa_private\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"test_read_dsa_public\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"test_read_rsa_private\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"test_read_rsa_public\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"dhparams.pem\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"infile\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"dh\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"paramsfile\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"x942params.pem\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"dsaparams.pem\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dsa\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"dsaprivatekey.pem\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"dsapublickey.pem\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"rsaprivatekey.pem\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"rsapublickey.pem\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #2
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #2
  store i8* %call1, i8** @datadir, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call1) #2
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #2
  br label %return

if.end5:                                          ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_read_dh_params) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_read_dh_x942_params) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_read_dsa_params) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_read_dsa_private) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_read_dsa_public) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_read_rsa_private) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_read_rsa_public) #2
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then4 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_dh_params() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dh_st* @PEM_read_bio_DHparams(%struct.bio_st* noundef %call, %struct.dh_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.dh_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %dh.0 = phi %struct.dh_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @DH_free(%struct.dh_st* noundef %dh.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_dh_x942_params() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dh_st* @PEM_read_bio_DHparams(%struct.bio_st* noundef %call, %struct.dh_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.dh_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %dh.0 = phi %struct.dh_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @DH_free(%struct.dh_st* noundef %dh.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_dsa_params() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dsa_st* @PEM_read_bio_DSAparams(%struct.bio_st* noundef %call, %struct.dsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.dsa_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %dsa.0 = phi %struct.dsa_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @DSA_free(%struct.dsa_st* noundef %dsa.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_dsa_private() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dsa_st* @PEM_read_bio_DSAPrivateKey(%struct.bio_st* noundef %call, %struct.dsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.dsa_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %dsa.0 = phi %struct.dsa_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @DSA_free(%struct.dsa_st* noundef %dsa.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_dsa_public() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dsa_st* @PEM_read_bio_DSA_PUBKEY(%struct.bio_st* noundef %call, %struct.dsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.dsa_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %dsa.0 = phi %struct.dsa_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @DSA_free(%struct.dsa_st* noundef %dsa.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_rsa_private() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef %call, %struct.rsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.rsa_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %rsa.0 = phi %struct.rsa_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @RSA_free(%struct.rsa_st* noundef %rsa.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_read_rsa_public() #0 {
entry:
  %call = tail call fastcc %struct.bio_st* @getfile(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0)) #3
  %0 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.rsa_st* @PEM_read_bio_RSA_PUBKEY(%struct.bio_st* noundef %call, %struct.rsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #2
  %1 = bitcast %struct.rsa_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp ne i32 %call3, 0
  %spec.select = zext i1 %tobool4.not to i32
  br label %err

err:                                              ; preds = %if.end, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  %rsa.0 = phi %struct.rsa_st* [ null, %entry ], [ %call2, %if.end ]
  %call7 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #2
  tail call void @RSA_free(%struct.rsa_st* noundef %rsa.0) #2
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_st* @getfile(i8* noundef %filename) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @datadir, align 8, !tbaa !3
  %call = tail call i8* @test_mk_file_path(i8* noundef %0, i8* noundef %filename) #2
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #2
  br label %err

err:                                              ; preds = %entry, %if.end
  %infile.0 = phi %struct.bio_st* [ %call2, %if.end ], [ null, %entry ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #2
  ret %struct.bio_st* %infile.0
}

declare dso_local %struct.dh_st* @PEM_read_bio_DHparams(%struct.bio_st* noundef, %struct.dh_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #1

declare dso_local i8* @test_mk_file_path(i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.dsa_st* @PEM_read_bio_DSAparams(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @DSA_free(%struct.dsa_st* noundef) local_unnamed_addr #1

declare dso_local %struct.dsa_st* @PEM_read_bio_DSAPrivateKey(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.dsa_st* @PEM_read_bio_DSA_PUBKEY(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef, %struct.rsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @PEM_read_bio_RSA_PUBKEY(%struct.bio_st* noundef, %struct.rsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
