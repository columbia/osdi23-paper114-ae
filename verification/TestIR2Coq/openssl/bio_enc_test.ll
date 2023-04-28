; ModuleID = 'test/bio_enc_test.c'
source_filename = "test/bio_enc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"test_bio_enc_aes_128_cbc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"test_bio_enc_aes_128_ctr\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"test_bio_enc_aes_256_cfb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"test_bio_enc_aes_256_ofb\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"test_bio_enc_chacha20\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"test_bio_enc_chacha20_poly1305\00", align 1
@KEY = internal constant [32 x i8] c"QP\D1w/P\83JP>\06\9A\97?\BD|\E6\1CC+r\0B\19\D1\8E\C8\D8K\DCc\15\1B", align 16
@IV = internal constant [32 x i8] c"\01\02\03\04\05\06\07\08\01\02\03\04\05\06\07\08\01\02\03\04\05\06\07\08\01\02\03\04\05\06\07\08", align 16
@do_bio_cipher.inp = internal global [1056 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"test/bio_enc_test.c\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"RAND_bytes(inp, DATA_SIZE)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"BIO_set_cipher(b, cipher, key, iv, ENCRYPT)\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Split encrypt failed @ operation %d\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"out[i]\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"(unsigned char)~ref[i]\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Encrypt overstep check failed @ operation %d\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Encrypt compare failed @ operation %d\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Small chunk encrypt failed @ operation %d\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Small chunk encrypt compare failed @ operation %d\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"BIO_set_cipher(b, cipher, key, iv, DECRYPT)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Split decrypt failed @ operation %d\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Decrypt overstep check failed @ operation %d\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Decrypt compare failed @ operation %d\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Small chunk decrypt failed @ operation %d\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"Small chunk decrypt compare failed @ operation %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bio_enc_aes_128_cbc, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bio_enc_aes_128_ctr, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bio_enc_aes_256_cfb, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bio_enc_aes_256_ofb, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bio_enc_chacha20, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bio_enc_chacha20_poly1305, i32 noundef 2, i32 noundef 1) #5
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_enc_aes_128_cbc(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #5
  %call1 = tail call fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %call, i32 noundef %idx) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_enc_aes_128_ctr(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_ctr() #5
  %call1 = tail call fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %call, i32 noundef %idx) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_enc_aes_256_cfb(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_256_cfb128() #5
  %call1 = tail call fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %call, i32 noundef %idx) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_enc_aes_256_ofb(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_256_ofb() #5
  %call1 = tail call fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %call, i32 noundef %idx) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_enc_chacha20(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_chacha20() #5
  %call1 = tail call fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %call, i32 noundef %idx) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bio_enc_chacha20_poly1305(i32 noundef %idx) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_chacha20_poly1305() #5
  %call1 = tail call fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %call, i32 noundef %idx) #6
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_test_bio_cipher(%struct.evp_cipher_st* noundef %cipher, i32 noundef %idx) unnamed_addr #0 {
entry:
  switch i32 %idx, label %return [
    i32 0, label %return.sink.split
    i32 1, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %return.sink.split

return.sink.split:                                ; preds = %entry, %sw.bb1
  %.sink = phi i8* [ getelementptr inbounds ([32 x i8], [32 x i8]* @IV, i64 0, i64 0), %sw.bb1 ], [ null, %entry ]
  %call2 = tail call fastcc i32 @do_bio_cipher(%struct.evp_cipher_st* noundef %cipher, i8* noundef %.sink) #6
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call2, %return.sink.split ]
  ret i32 %retval.0
}

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_bio_cipher(%struct.evp_cipher_st* noundef %cipher, i8* noundef %iv) unnamed_addr #0 {
entry:
  %out = alloca [1056 x i8], align 16
  %ref = alloca [1056 x i8], align 16
  %0 = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %0) #7
  %1 = getelementptr inbounds [1056 x i8], [1056 x i8]* %ref, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1056, i8* nonnull %1) #7
  %call = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i32 noundef 1024) #5
  %call1 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup213, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_method_st* @BIO_f_cipher() #5
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call2) #5
  %call4 = tail call i32 @BIO_set_cipher(%struct.bio_st* noundef %call3, %struct.evp_cipher_st* noundef %cipher, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @KEY, i64 0, i64 0), i8* noundef %iv, i32 noundef 1) #5
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup213, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i32 noundef 1024) #5
  %call10 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call3, %struct.bio_st* noundef %call9) #5
  %call11 = call i32 @BIO_read(%struct.bio_st* noundef %call3, i8* noundef nonnull %1, i32 noundef 1056) #5
  call void @BIO_free_all(%struct.bio_st* noundef %call3) #5
  %cmp1216 = icmp sgt i32 %call11, 1
  br i1 %cmp1216, label %for.body.lr.ph, label %for.cond56.preheader.thread

for.cond56.preheader.thread:                      ; preds = %if.end8
  %div43 = sdiv i32 %call11, 2
  br label %for.end92

for.body.lr.ph:                                   ; preds = %if.end8
  %conv5147 = zext i32 %call11 to i64
  %wide.trip.count = zext i32 %call11 to i64
  br label %for.body

for.cond56.preheader:                             ; preds = %for.inc
  %div = sdiv i32 %call11, 2
  %cmp5718 = icmp sgt i32 %call11, 3
  br i1 %cmp5718, label %for.body59.lr.ph, label %for.end92

for.body59.lr.ph:                                 ; preds = %for.cond56.preheader
  %conv8548 = zext i32 %call11 to i64
  %smax = call i32 @llvm.smax.i32(i32 %div, i32 2)
  br label %for.body59

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %call14 = call %struct.bio_method_st* @BIO_f_cipher() #5
  %call15 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call14) #5
  %call16 = call i32 @BIO_set_cipher(%struct.bio_st* noundef %call15, %struct.evp_cipher_st* noundef %cipher, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @KEY, i64 0, i64 0), i8* noundef %iv, i32 noundef 1) #5
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 noundef %2) #5
  br label %cleanup213

if.end22:                                         ; preds = %for.body
  %call23 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i32 noundef 1024) #5
  %call24 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call15, %struct.bio_st* noundef %call23) #5
  %call26 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 1056) #5
  %arrayidx = getelementptr inbounds [1056 x i8], [1056 x i8]* %ref, i64 0, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !3
  %neg = xor i8 %3, -1
  %arrayidx30 = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 %indvars.iv
  store i8 %neg, i8* %arrayidx30, align 1, !tbaa !3
  %4 = trunc i64 %indvars.iv to i32
  %call32 = call i32 @BIO_read(%struct.bio_st* noundef %call15, i8* noundef nonnull %0, i32 noundef %4) #5
  %5 = load i8, i8* %arrayidx30, align 1, !tbaa !3
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !3
  %neg38 = xor i8 %6, -1
  %call40 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8 noundef zeroext %5, i8 noundef zeroext %neg38) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end22
  %7 = trunc i64 %indvars.iv to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 noundef %7) #5
  br label %cleanup213

if.end43:                                         ; preds = %if.end22
  %idx.ext = sext i32 %call32 to i64
  %add.ptr = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 %idx.ext
  %sub = sub i32 1056, %call32
  %call47 = call i32 @BIO_read(%struct.bio_st* noundef %call15, i8* noundef nonnull %add.ptr, i32 noundef %sub) #5
  %add = add nsw i32 %call47, %call32
  call void @BIO_free_all(%struct.bio_st* noundef %call15) #5
  %conv49 = sext i32 %add to i64
  %call52 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %conv49, i8* noundef nonnull %1, i64 noundef %conv5147) #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %for.inc

if.then54:                                        ; preds = %if.end43
  %8 = trunc i64 %indvars.iv to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 noundef %8) #5
  br label %cleanup213

for.inc:                                          ; preds = %if.end43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond56.preheader, label %for.body, !llvm.loop !6

for.body59:                                       ; preds = %for.body59.lr.ph, %for.inc90
  %i.119 = phi i32 [ 1, %for.body59.lr.ph ], [ %inc91, %for.inc90 ]
  %call60 = call %struct.bio_method_st* @BIO_f_cipher() #5
  %call61 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call60) #5
  %call62 = call i32 @BIO_set_cipher(%struct.bio_st* noundef %call61, %struct.evp_cipher_st* noundef %cipher, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @KEY, i64 0, i64 0), i8* noundef %iv, i32 noundef 1) #5
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv64) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.body59
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 noundef %i.119) #5
  br label %cleanup213

if.end68:                                         ; preds = %for.body59
  %call69 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i32 noundef 1024) #5
  %call70 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call61, %struct.bio_st* noundef %call69) #5
  %call72 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 1056) #5
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond73, %if.end68
  %len.0 = phi i32 [ 0, %if.end68 ], [ %add80, %for.cond73 ]
  %idx.ext75 = sext i32 %len.0 to i64
  %add.ptr76 = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 %idx.ext75
  %call77 = call i32 @BIO_read(%struct.bio_st* noundef %call61, i8* noundef nonnull %add.ptr76, i32 noundef %i.119) #5
  %tobool78.not = icmp eq i32 %call77, 0
  %add80 = add nsw i32 %call77, %len.0
  br i1 %tobool78.not, label %for.end81, label %for.cond73, !llvm.loop !8

for.end81:                                        ; preds = %for.cond73
  call void @BIO_free_all(%struct.bio_st* noundef %call61) #5
  %call86 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %idx.ext75, i8* noundef nonnull %1, i64 noundef %conv8548) #5
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %for.inc90

if.then88:                                        ; preds = %for.end81
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i32 noundef %i.119) #5
  br label %cleanup213

for.inc90:                                        ; preds = %for.end81
  %inc91 = add nuw nsw i32 %i.119, 1
  %exitcond35.not = icmp eq i32 %inc91, %smax
  br i1 %exitcond35.not, label %for.end92, label %for.body59, !llvm.loop !9

for.end92:                                        ; preds = %for.inc90, %for.cond56.preheader.thread, %for.cond56.preheader
  %cmp571846 = phi i1 [ false, %for.cond56.preheader.thread ], [ false, %for.cond56.preheader ], [ %cmp5718, %for.inc90 ]
  %div45 = phi i32 [ %div43, %for.cond56.preheader.thread ], [ %div, %for.cond56.preheader ], [ %div, %for.inc90 ]
  %call93 = call %struct.bio_method_st* @BIO_f_cipher() #5
  %call94 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call93) #5
  %call95 = call i32 @BIO_set_cipher(%struct.bio_st* noundef %call94, %struct.evp_cipher_st* noundef %cipher, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @KEY, i64 0, i64 0), i8* noundef %iv, i32 noundef 0) #5
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv97) #5
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup213, label %if.end101

if.end101:                                        ; preds = %for.end92
  %call103 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef nonnull %1, i32 noundef %call11) #5
  %call104 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call94, %struct.bio_st* noundef %call103) #5
  %call105 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call94, i32 noundef 11, i64 noundef 0, i8* noundef null) #5
  %call108 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 1056) #5
  %call110 = call i32 @BIO_read(%struct.bio_st* noundef %call94, i8* noundef nonnull %0, i32 noundef 1056) #5
  call void @BIO_free_all(%struct.bio_st* noundef %call94) #5
  %conv112 = sext i32 %call110 to i64
  %call113 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i64 noundef 1024, i8* noundef nonnull %0, i64 noundef %conv112) #5
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cleanup213, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %if.end101
  br i1 %cmp1216, label %for.body120.preheader, label %for.cond172.preheader

for.body120.preheader:                            ; preds = %for.cond117.preheader
  %wide.trip.count39 = zext i32 %call11 to i64
  br label %for.body120

for.cond172.preheader:                            ; preds = %for.inc169, %for.cond117.preheader
  br i1 %cmp571846, label %for.body176.preheader, label %cleanup213

for.body176.preheader:                            ; preds = %for.cond172.preheader
  %smax41 = call i32 @llvm.smax.i32(i32 %div45, i32 2)
  br label %for.body176

for.body120:                                      ; preds = %for.body120.preheader, %for.inc169
  %indvars.iv36 = phi i64 [ 1, %for.body120.preheader ], [ %indvars.iv.next37, %for.inc169 ]
  %call121 = call %struct.bio_method_st* @BIO_f_cipher() #5
  %call122 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call121) #5
  %call123 = call i32 @BIO_set_cipher(%struct.bio_st* noundef %call122, %struct.evp_cipher_st* noundef %cipher, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @KEY, i64 0, i64 0), i8* noundef %iv, i32 noundef 0) #5
  %cmp124 = icmp ne i32 %call123, 0
  %conv125 = zext i1 %cmp124 to i32
  %call126 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv125) #5
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %if.end129

if.then128:                                       ; preds = %for.body120
  %9 = trunc i64 %indvars.iv36 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 noundef %9) #5
  br label %cleanup213

if.end129:                                        ; preds = %for.body120
  %call131 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef nonnull %1, i32 noundef %call11) #5
  %call132 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call122, %struct.bio_st* noundef %call131) #5
  %call134 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 1056) #5
  %arrayidx136 = getelementptr inbounds [1056 x i8], [1056 x i8]* %ref, i64 0, i64 %indvars.iv36
  %10 = load i8, i8* %arrayidx136, align 1, !tbaa !3
  %neg138 = xor i8 %10, -1
  %arrayidx141 = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 %indvars.iv36
  store i8 %neg138, i8* %arrayidx141, align 1, !tbaa !3
  %11 = trunc i64 %indvars.iv36 to i32
  %call143 = call i32 @BIO_read(%struct.bio_st* noundef %call122, i8* noundef nonnull %0, i32 noundef %11) #5
  %12 = load i8, i8* %arrayidx141, align 1, !tbaa !3
  %13 = load i8, i8* %arrayidx136, align 1, !tbaa !3
  %neg149 = xor i8 %13, -1
  %call151 = call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8 noundef zeroext %12, i8 noundef zeroext %neg149) #5
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.end129
  %14 = trunc i64 %indvars.iv36 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 noundef %14) #5
  br label %cleanup213

if.end154:                                        ; preds = %if.end129
  %idx.ext156 = sext i32 %call143 to i64
  %add.ptr157 = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 %idx.ext156
  %sub159 = sub i32 1056, %call143
  %call161 = call i32 @BIO_read(%struct.bio_st* noundef %call122, i8* noundef nonnull %add.ptr157, i32 noundef %sub159) #5
  %add162 = add nsw i32 %call161, %call143
  call void @BIO_free_all(%struct.bio_st* noundef %call122) #5
  %conv164 = sext i32 %add162 to i64
  %call165 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i64 noundef 1024, i8* noundef nonnull %0, i64 noundef %conv164) #5
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then167, label %for.inc169

if.then167:                                       ; preds = %if.end154
  %15 = trunc i64 %indvars.iv36 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i32 noundef %15) #5
  br label %cleanup213

for.inc169:                                       ; preds = %if.end154
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %for.cond172.preheader, label %for.body120, !llvm.loop !10

for.body176:                                      ; preds = %for.body176.preheader, %for.inc210
  %i.323 = phi i32 [ %inc211, %for.inc210 ], [ 1, %for.body176.preheader ]
  %call178 = call %struct.bio_method_st* @BIO_f_cipher() #5
  %call179 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call178) #5
  %call180 = call i32 @BIO_set_cipher(%struct.bio_st* noundef %call179, %struct.evp_cipher_st* noundef %cipher, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @KEY, i64 0, i64 0), i8* noundef %iv, i32 noundef 0) #5
  %cmp181 = icmp ne i32 %call180, 0
  %conv182 = zext i1 %cmp181 to i32
  %call183 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv182) #5
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then185, label %if.end186

if.then185:                                       ; preds = %for.body176
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i32 noundef %i.323) #5
  br label %cleanup213

if.end186:                                        ; preds = %for.body176
  %call188 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef nonnull %1, i32 noundef %call11) #5
  %call189 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call179, %struct.bio_st* noundef %call188) #5
  %call191 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 1056) #5
  br label %for.cond192

for.cond192:                                      ; preds = %for.cond192, %if.end186
  %len.1 = phi i32 [ 0, %if.end186 ], [ %add199, %for.cond192 ]
  %idx.ext194 = sext i32 %len.1 to i64
  %add.ptr195 = getelementptr inbounds [1056 x i8], [1056 x i8]* %out, i64 0, i64 %idx.ext194
  %call196 = call i32 @BIO_read(%struct.bio_st* noundef %call179, i8* noundef nonnull %add.ptr195, i32 noundef %i.323) #5
  %tobool197.not = icmp eq i32 %call196, 0
  %add199 = add nsw i32 %call196, %len.1
  br i1 %tobool197.not, label %for.end200, label %for.cond192, !llvm.loop !11

for.end200:                                       ; preds = %for.cond192
  call void @BIO_free_all(%struct.bio_st* noundef %call179) #5
  %call203 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([1056 x i8], [1056 x i8]* @do_bio_cipher.inp, i64 0, i64 0), i64 noundef 1024, i8* noundef nonnull %0, i64 noundef %idx.ext194) #5
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.then205, label %for.inc210

if.then205:                                       ; preds = %for.end200
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 noundef %i.323) #5
  br label %cleanup213

for.inc210:                                       ; preds = %for.end200
  %inc211 = add nuw nsw i32 %i.323, 1
  %exitcond42.not = icmp eq i32 %inc211, %smax41
  br i1 %exitcond42.not, label %cleanup213, label %for.body176, !llvm.loop !12

cleanup213:                                       ; preds = %for.inc210, %for.cond172.preheader, %if.then185, %if.then205, %if.end101, %for.end92, %if.then67, %if.then88, %if.end, %entry, %if.then167, %if.then153, %if.then128, %if.then54, %if.then42, %if.then21
  %retval.4 = phi i32 [ 0, %if.then54 ], [ 0, %if.then42 ], [ 0, %if.then21 ], [ 0, %if.then167 ], [ 0, %if.then153 ], [ 0, %if.then128 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then88 ], [ 0, %if.then67 ], [ 0, %for.end92 ], [ 0, %if.end101 ], [ 0, %if.then205 ], [ 0, %if.then185 ], [ 1, %for.cond172.preheader ], [ 1, %for.inc210 ]
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 1056, i8* nonnull %0) #7
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_f_cipher() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_set_cipher(%struct.bio_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_uchar_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_ctr() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_cfb128() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_ofb() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_chacha20() local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_chacha20_poly1305() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
