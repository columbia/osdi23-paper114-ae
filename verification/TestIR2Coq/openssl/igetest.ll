; ModuleID = 'test/igetest.c'
source_filename = "test/igetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bi_ige_test = type { [32 x i8], [32 x i8], [64 x i8], [64 x i8], [64 x i8], i64, i64, i32 }
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.ige_test = type { [16 x i8], [32 x i8], [64 x i8], [64 x i8], i64, i32 }

@rkey = internal global [16 x i8] zeroinitializer, align 16
@rkey2 = internal global [16 x i8] zeroinitializer, align 16
@plaintext = internal global [10240 x i8] zeroinitializer, align 16
@saved_iv = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"test_ige_enc_dec\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test_ige_enc_chaining\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"test_ige_dec_chaining\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"test_ige_garble_forwards\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"test_bi_ige_enc_dec\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"test_bi_ige_garble1\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"test_bi_ige_garble2\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"test_bi_ige_garble3\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"test_ige_vectors\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"test_bi_ige_vectors\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"test/igetest.c\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"checktext\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"matches\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"ctsize / 2 + ctsize / 100\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ctsize / 2\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"sizeof(checktext) / 100\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"v->length\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"MAX_VECTOR_SIZE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"v->out\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"IGE test vector %d failed\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"IGE test vector %d failed (with in == out)\00", align 1
@ige_test_vectors = internal constant <{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }> <{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 } { [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", [64 x i8] zeroinitializer, <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\1A\85\19\A6U{\E6R\E9\DA\8EC\DAN\F4E<\F4V\B4\CAH\8A\A3\83\C7\9C\98\B3G\97\CB", [32 x i8] zeroinitializer }>, i64 32, i32 1 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } { [16 x i8] c"This is an imple", [32 x i8] c"mentation of IGE mode for OpenSS", <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"L. Let's hope Ben got it right!\0A", [32 x i8] zeroinitializer }>, <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\99pd\87\A1\CD\E6\13\BCm\E0\B6\F2K\1Cz\A4H\C8\B9\C3@>4g\A8\CA\D8\93@\F5;", [32 x i8] zeroinitializer }>, i64 32, i32 0 } }>, align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"key 1\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"key 2\00", align 1
@bi_ige_test_vectors = internal constant <{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }> <{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 } { <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] zeroinitializer }>, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", [16 x i8] zeroinitializer }>, [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?", [64 x i8] zeroinitializer, <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\14@o\AE\A2y\F2V\1F\86\EB;}\FFS\DCN'\0C\03\DE|\E5\16j\9C 3\9D3\FE\12", [32 x i8] zeroinitializer }>, i64 16, i64 32, i32 1 }, %struct.bi_ige_test { [32 x i8] c"X\0A\06\E9\97\07Y\\\9E\19\D2\A7\BB@+z\C7\D8\11\9ELQ5ud(\0F#\ADt\AC7", [32 x i8] c"\D1\80\A01G\A3\11\13\86&\9Em\FF\AFrt[\A25\81\D2\A6=!g{X\A8\18\F9r\E4", [64 x i8] c"\80=\BDL\E6{\06\A9S5\D5~q\C1ppt\9A\00(\0C\BFlB\9B\A4\DDe\11w|g\FEv\0A\F0\D5\C6nj\E7^L\F2~\9E\F9 \0ETo-\8A\8D~\BDHy7\99\FF'\93\A3", [64 x i8] c"\F1T=\CA\FE\B5\EF\1CO\A6C\F6\E6HW\F0\EE\15\7F\E3\E7/\D0/\11\95z\17\00\AB\A7\0B\BED\09\9C\CD\AC\A8R\A1\8E{u\BC\A4\92Z\ABF\D3:\A0\D55\1CU\A4\B3\A8@\81\A5\0B", [64 x i8] c"B\E5(01\C2\A0#hIN\B3$Y\92y\C1\A5\CC\E6vS\B1\CF \86#\E8rU\99\92\0D\16\1CZ/\CE\CBQ\E2g\FA\10\EC\CD=g\A5\E6\F71&\B0\0Dv^(\DC\7F\01\C5\A5L", i64 32, i64 64, i32 1 } }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 16) #5
  %call1 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 16) #5
  %call2 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i32 noundef 10240) #5
  %call3 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i32 noundef 64) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_ige_enc_dec) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_ige_enc_chaining) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_ige_dec_chaining) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_ige_garble_forwards) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_bi_ige_enc_dec) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_bi_ige_garble1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_bi_ige_garble2) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_bi_ige_garble3) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* noundef nonnull @test_ige_vectors, i32 noundef 2, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bi_ige_vectors, i32 noundef 2, i32 noundef 1) #5
  ret i32 1
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ige_enc_dec() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  %call1 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 128, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 1) #5
  %call4 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call6 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef 128, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 0) #5
  %call11 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i64 noundef 128) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ige_enc_chaining() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %call = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call1 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 64, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 1) #5
  %add.ptr = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 64
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 64), i8* noundef nonnull %add.ptr, i64 noundef 64, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 1) #5
  %call6 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call8 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef 128, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 0) #5
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i64 noundef 128) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ige_dec_chaining() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %call = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call1 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 64, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 1) #5
  %add.ptr = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 64
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 64), i8* noundef nonnull %add.ptr, i64 noundef 64, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 1) #5
  %call6 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call8 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef 64, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 0) #5
  %add.ptr15 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 64
  call void @AES_ige_encrypt(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr15, i64 noundef 64, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 0) #5
  %call18 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 128, i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i64 noundef 128) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call18
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ige_garble_forwards() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %call = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call1 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 1) #5
  %arrayidx = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 5120
  %4 = load i8, i8* %arrayidx, align 16, !tbaa !3
  %inc = add i8 %4, 1
  store i8 %inc, i8* %arrayidx, align 16, !tbaa !3
  %call4 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call6 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %1, i32 noundef 0) #5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %entry ], [ %31, %vector.body ]
  %vec.phi41 = phi <2 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %5 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index
  %6 = bitcast i8* %5 to <2 x i8>*
  %wide.load = load <2 x i8>, <2 x i8>* %6, align 8, !tbaa !3
  %7 = getelementptr inbounds i8, i8* %5, i64 2
  %8 = bitcast i8* %7 to <2 x i8>*
  %wide.load42 = load <2 x i8>, <2 x i8>* %8, align 2, !tbaa !3
  %9 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index
  %10 = bitcast i8* %9 to <2 x i8>*
  %wide.load43 = load <2 x i8>, <2 x i8>* %10, align 8, !tbaa !3
  %11 = getelementptr inbounds i8, i8* %9, i64 2
  %12 = bitcast i8* %11 to <2 x i8>*
  %wide.load44 = load <2 x i8>, <2 x i8>* %12, align 2, !tbaa !3
  %13 = icmp eq <2 x i8> %wide.load, %wide.load43
  %14 = icmp eq <2 x i8> %wide.load42, %wide.load44
  %15 = zext <2 x i1> %13 to <2 x i64>
  %16 = zext <2 x i1> %14 to <2 x i64>
  %17 = add <2 x i64> %vec.phi, %15
  %18 = add <2 x i64> %vec.phi41, %16
  %index.next = or i64 %index, 4
  %19 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index.next
  %20 = bitcast i8* %19 to <2 x i8>*
  %wide.load.1 = load <2 x i8>, <2 x i8>* %20, align 4, !tbaa !3
  %21 = getelementptr inbounds i8, i8* %19, i64 2
  %22 = bitcast i8* %21 to <2 x i8>*
  %wide.load42.1 = load <2 x i8>, <2 x i8>* %22, align 2, !tbaa !3
  %23 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index.next
  %24 = bitcast i8* %23 to <2 x i8>*
  %wide.load43.1 = load <2 x i8>, <2 x i8>* %24, align 4, !tbaa !3
  %25 = getelementptr inbounds i8, i8* %23, i64 2
  %26 = bitcast i8* %25 to <2 x i8>*
  %wide.load44.1 = load <2 x i8>, <2 x i8>* %26, align 2, !tbaa !3
  %27 = icmp eq <2 x i8> %wide.load.1, %wide.load43.1
  %28 = icmp eq <2 x i8> %wide.load42.1, %wide.load44.1
  %29 = zext <2 x i1> %27 to <2 x i64>
  %30 = zext <2 x i1> %28 to <2 x i64>
  %31 = add <2 x i64> %17, %29
  %32 = add <2 x i64> %18, %30
  %index.next.1 = add nuw nsw i64 %index, 8
  %33 = icmp eq i64 %index.next.1, 10240
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %32, %31
  %34 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %call20 = call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i64 noundef %34, i64 noundef 5222) #5
  %tobool.not = icmp ne i32 %call20, 0
  %call23 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 noundef %34, i64 noundef 5120) #5
  %tobool24.not = icmp ne i32 %call23, 0
  %narrow = select i1 %tobool24.not, i1 %tobool.not, i1 false
  %testresult.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %testresult.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bi_ige_enc_dec() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %key2 = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = bitcast %struct.aes_key_st* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %4 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %4) #6
  %call = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  %call1 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call2 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_bi_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 128, %struct.aes_key_st* noundef nonnull %key, %struct.aes_key_st* noundef nonnull %key2, i8* noundef nonnull %2, i32 noundef 1) #5
  %call5 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call6 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_bi_ige_encrypt(i8* noundef nonnull %3, i8* noundef nonnull %4, i64 noundef 128, %struct.aes_key_st* noundef nonnull %key, %struct.aes_key_st* noundef nonnull %key2, i8* noundef nonnull %2, i32 noundef 0) #5
  %call11 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 128, i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i64 noundef 128) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bi_ige_garble1() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %key2 = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = bitcast %struct.aes_key_st* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %4 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %4) #6
  %call = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  %call1 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call2 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 1) #5
  %arrayidx = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 5120
  %5 = load i8, i8* %arrayidx, align 16, !tbaa !3
  %inc = add i8 %5, 1
  store i8 %inc, i8* %arrayidx, align 16, !tbaa !3
  %call5 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call6 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %3, i8* noundef nonnull %4, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 0) #5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi31 = phi <2 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %6 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index
  %7 = bitcast i8* %6 to <2 x i8>*
  %wide.load = load <2 x i8>, <2 x i8>* %7, align 8, !tbaa !3
  %8 = getelementptr inbounds i8, i8* %6, i64 2
  %9 = bitcast i8* %8 to <2 x i8>*
  %wide.load32 = load <2 x i8>, <2 x i8>* %9, align 2, !tbaa !3
  %10 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index
  %11 = bitcast i8* %10 to <2 x i8>*
  %wide.load33 = load <2 x i8>, <2 x i8>* %11, align 8, !tbaa !3
  %12 = getelementptr inbounds i8, i8* %10, i64 2
  %13 = bitcast i8* %12 to <2 x i8>*
  %wide.load34 = load <2 x i8>, <2 x i8>* %13, align 2, !tbaa !3
  %14 = icmp eq <2 x i8> %wide.load, %wide.load33
  %15 = icmp eq <2 x i8> %wide.load32, %wide.load34
  %16 = zext <2 x i1> %14 to <2 x i64>
  %17 = zext <2 x i1> %15 to <2 x i64>
  %18 = add <2 x i64> %vec.phi, %16
  %19 = add <2 x i64> %vec.phi31, %17
  %index.next = or i64 %index, 4
  %20 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index.next
  %21 = bitcast i8* %20 to <2 x i8>*
  %wide.load.1 = load <2 x i8>, <2 x i8>* %21, align 4, !tbaa !3
  %22 = getelementptr inbounds i8, i8* %20, i64 2
  %23 = bitcast i8* %22 to <2 x i8>*
  %wide.load32.1 = load <2 x i8>, <2 x i8>* %23, align 2, !tbaa !3
  %24 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index.next
  %25 = bitcast i8* %24 to <2 x i8>*
  %wide.load33.1 = load <2 x i8>, <2 x i8>* %25, align 4, !tbaa !3
  %26 = getelementptr inbounds i8, i8* %24, i64 2
  %27 = bitcast i8* %26 to <2 x i8>*
  %wide.load34.1 = load <2 x i8>, <2 x i8>* %27, align 2, !tbaa !3
  %28 = icmp eq <2 x i8> %wide.load.1, %wide.load33.1
  %29 = icmp eq <2 x i8> %wide.load32.1, %wide.load34.1
  %30 = zext <2 x i1> %28 to <2 x i64>
  %31 = zext <2 x i1> %29 to <2 x i64>
  %32 = add <2 x i64> %18, %30
  %33 = add <2 x i64> %19, %31
  %index.next.1 = add nuw nsw i64 %index, 8
  %34 = icmp eq i64 %index.next.1, 10240
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %33, %32
  %35 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %call20 = call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 noundef %35, i64 noundef 102) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call20
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bi_ige_garble2() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %key2 = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = bitcast %struct.aes_key_st* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %4 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %4) #6
  %call = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  %call1 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call2 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 1) #5
  %arrayidx = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 10239
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !3
  %inc = add i8 %5, 1
  store i8 %inc, i8* %arrayidx, align 1, !tbaa !3
  %call5 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call6 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %3, i8* noundef nonnull %4, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 0) #5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi31 = phi <2 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %6 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index
  %7 = bitcast i8* %6 to <2 x i8>*
  %wide.load = load <2 x i8>, <2 x i8>* %7, align 8, !tbaa !3
  %8 = getelementptr inbounds i8, i8* %6, i64 2
  %9 = bitcast i8* %8 to <2 x i8>*
  %wide.load32 = load <2 x i8>, <2 x i8>* %9, align 2, !tbaa !3
  %10 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index
  %11 = bitcast i8* %10 to <2 x i8>*
  %wide.load33 = load <2 x i8>, <2 x i8>* %11, align 8, !tbaa !3
  %12 = getelementptr inbounds i8, i8* %10, i64 2
  %13 = bitcast i8* %12 to <2 x i8>*
  %wide.load34 = load <2 x i8>, <2 x i8>* %13, align 2, !tbaa !3
  %14 = icmp eq <2 x i8> %wide.load, %wide.load33
  %15 = icmp eq <2 x i8> %wide.load32, %wide.load34
  %16 = zext <2 x i1> %14 to <2 x i64>
  %17 = zext <2 x i1> %15 to <2 x i64>
  %18 = add <2 x i64> %vec.phi, %16
  %19 = add <2 x i64> %vec.phi31, %17
  %index.next = or i64 %index, 4
  %20 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index.next
  %21 = bitcast i8* %20 to <2 x i8>*
  %wide.load.1 = load <2 x i8>, <2 x i8>* %21, align 4, !tbaa !3
  %22 = getelementptr inbounds i8, i8* %20, i64 2
  %23 = bitcast i8* %22 to <2 x i8>*
  %wide.load32.1 = load <2 x i8>, <2 x i8>* %23, align 2, !tbaa !3
  %24 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index.next
  %25 = bitcast i8* %24 to <2 x i8>*
  %wide.load33.1 = load <2 x i8>, <2 x i8>* %25, align 4, !tbaa !3
  %26 = getelementptr inbounds i8, i8* %24, i64 2
  %27 = bitcast i8* %26 to <2 x i8>*
  %wide.load34.1 = load <2 x i8>, <2 x i8>* %27, align 2, !tbaa !3
  %28 = icmp eq <2 x i8> %wide.load.1, %wide.load33.1
  %29 = icmp eq <2 x i8> %wide.load32.1, %wide.load34.1
  %30 = zext <2 x i1> %28 to <2 x i64>
  %31 = zext <2 x i1> %29 to <2 x i64>
  %32 = add <2 x i64> %18, %30
  %33 = add <2 x i64> %19, %31
  %index.next.1 = add nuw nsw i64 %index, 8
  %34 = icmp eq i64 %index.next.1, 10240
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %33, %32
  %35 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %call20 = call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 noundef %35, i64 noundef 102) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call20
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bi_ige_garble3() #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %key2 = alloca %struct.aes_key_st, align 4
  %iv = alloca [64 x i8], align 16
  %ciphertext = alloca [10240 x i8], align 16
  %checktext = alloca [10240 x i8], align 16
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = bitcast %struct.aes_key_st* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %3 = getelementptr inbounds [10240 x i8], [10240 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %3) #6
  %4 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10240, i8* nonnull %4) #6
  %call = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_iv, i64 0, i64 0), i64 noundef 64) #5
  %call1 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call2 = call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_ige_encrypt(i8* noundef getelementptr inbounds ([10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 1) #5
  %5 = load i8, i8* %3, align 16, !tbaa !3
  %inc = add i8 %5, 1
  store i8 %inc, i8* %3, align 16, !tbaa !3
  %call5 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  %call6 = call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rkey2, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull %key2) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %3, i8* noundef nonnull %4, i64 noundef 10240, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef 0) #5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %entry ], [ %32, %vector.body ]
  %vec.phi31 = phi <2 x i64> [ zeroinitializer, %entry ], [ %33, %vector.body ]
  %6 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index
  %7 = bitcast i8* %6 to <2 x i8>*
  %wide.load = load <2 x i8>, <2 x i8>* %7, align 8, !tbaa !3
  %8 = getelementptr inbounds i8, i8* %6, i64 2
  %9 = bitcast i8* %8 to <2 x i8>*
  %wide.load32 = load <2 x i8>, <2 x i8>* %9, align 2, !tbaa !3
  %10 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index
  %11 = bitcast i8* %10 to <2 x i8>*
  %wide.load33 = load <2 x i8>, <2 x i8>* %11, align 8, !tbaa !3
  %12 = getelementptr inbounds i8, i8* %10, i64 2
  %13 = bitcast i8* %12 to <2 x i8>*
  %wide.load34 = load <2 x i8>, <2 x i8>* %13, align 2, !tbaa !3
  %14 = icmp eq <2 x i8> %wide.load, %wide.load33
  %15 = icmp eq <2 x i8> %wide.load32, %wide.load34
  %16 = zext <2 x i1> %14 to <2 x i64>
  %17 = zext <2 x i1> %15 to <2 x i64>
  %18 = add <2 x i64> %vec.phi, %16
  %19 = add <2 x i64> %vec.phi31, %17
  %index.next = or i64 %index, 4
  %20 = getelementptr inbounds [10240 x i8], [10240 x i8]* %checktext, i64 0, i64 %index.next
  %21 = bitcast i8* %20 to <2 x i8>*
  %wide.load.1 = load <2 x i8>, <2 x i8>* %21, align 4, !tbaa !3
  %22 = getelementptr inbounds i8, i8* %20, i64 2
  %23 = bitcast i8* %22 to <2 x i8>*
  %wide.load32.1 = load <2 x i8>, <2 x i8>* %23, align 2, !tbaa !3
  %24 = getelementptr inbounds [10240 x i8], [10240 x i8]* @plaintext, i64 0, i64 %index.next
  %25 = bitcast i8* %24 to <2 x i8>*
  %wide.load33.1 = load <2 x i8>, <2 x i8>* %25, align 4, !tbaa !3
  %26 = getelementptr inbounds i8, i8* %24, i64 2
  %27 = bitcast i8* %26 to <2 x i8>*
  %wide.load34.1 = load <2 x i8>, <2 x i8>* %27, align 2, !tbaa !3
  %28 = icmp eq <2 x i8> %wide.load.1, %wide.load33.1
  %29 = icmp eq <2 x i8> %wide.load32.1, %wide.load34.1
  %30 = zext <2 x i1> %28 to <2 x i64>
  %31 = zext <2 x i1> %29 to <2 x i64>
  %32 = add <2 x i64> %18, %30
  %33 = add <2 x i64> %19, %31
  %index.next.1 = add nuw nsw i64 %index, 8
  %34 = icmp eq i64 %index.next.1, 10240
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %33, %32
  %35 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %call20 = call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 noundef %35, i64 noundef 102) #5
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 10240, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %call20
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ige_vectors(i32 noundef %n) #0 {
entry:
  %key = alloca %struct.aes_key_st, align 4
  %buf = alloca [64 x i8], align 16
  %iv = alloca [32 x i8], align 16
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds [2 x %struct.ige_test], [2 x %struct.ige_test]* bitcast (<{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }>* @ige_test_vectors to [2 x %struct.ige_test]*), i64 0, i64 %idxprom
  %0 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #6
  %length = getelementptr inbounds [2 x %struct.ige_test], [2 x %struct.ige_test]* bitcast (<{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }>* @ige_test_vectors to [2 x %struct.ige_test]*), i64 0, i64 %idxprom, i32 4
  %3 = load i64, i64* %length, align 16, !tbaa !12
  %conv = trunc i64 %3 to i32
  %call = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 64) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %encrypt = getelementptr inbounds [2 x %struct.ige_test], [2 x %struct.ige_test]* bitcast (<{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }>* @ige_test_vectors to [2 x %struct.ige_test]*), i64 0, i64 %idxprom, i32 5
  %4 = load i32, i32* %encrypt, align 8, !tbaa !16
  %cmp = icmp eq i32 %4, 1
  %arraydecay = getelementptr inbounds %struct.ige_test, %struct.ige_test* %arrayidx, i64 0, i32 0, i64 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call4 = call i32 @AES_set_encrypt_key(i8* noundef %arraydecay, i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call7 = call i32 @AES_set_decrypt_key(i8* noundef %arraydecay, i32 noundef 128, %struct.aes_key_st* noundef nonnull %key) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %arraydecay11 = getelementptr inbounds [2 x %struct.ige_test], [2 x %struct.ige_test]* bitcast (<{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }>* @ige_test_vectors to [2 x %struct.ige_test]*), i64 0, i64 %idxprom, i32 1, i64 0
  %call12 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay11, i64 noundef 32) #5
  %arraydecay13 = getelementptr inbounds [2 x %struct.ige_test], [2 x %struct.ige_test]* bitcast (<{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }>* @ige_test_vectors to [2 x %struct.ige_test]*), i64 0, i64 %idxprom, i32 2, i64 0
  call void @AES_ige_encrypt(i8* noundef nonnull %arraydecay13, i8* noundef nonnull %1, i64 noundef %3, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef %4) #5
  %arraydecay18 = getelementptr inbounds [2 x %struct.ige_test], [2 x %struct.ige_test]* bitcast (<{ { [16 x i8], [32 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i32 }, { [16 x i8], [32 x i8], <{ [32 x i8], [32 x i8] }>, <{ [32 x i8], [32 x i8] }>, i64, i32 } }>* @ige_test_vectors to [2 x %struct.ige_test]*), i64 0, i64 %idxprom, i32 3, i64 0
  %call22 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %arraydecay18, i64 noundef %3, i8* noundef nonnull %1, i64 noundef %3) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end8
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 noundef %n) #5
  %arraydecay26 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %arrayidx, i64 0, i32 0, i64 0
  call void @test_output_memory(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef %arraydecay26, i64 noundef 16) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %arraydecay11, i64 noundef 32) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %arraydecay13, i64 noundef %3) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end8
  %testresult.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then24 ]
  %call36 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %arraydecay11, i64 noundef 32) #5
  %call41 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %arraydecay13, i64 noundef %3) #5
  call void @AES_ige_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %1, i64 noundef %3, %struct.aes_key_st* noundef nonnull %key, i8* noundef nonnull %2, i32 noundef %4) #5
  %call52 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %arraydecay18, i64 noundef %3, i8* noundef nonnull %1, i64 noundef %3) #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %cleanup

if.then54:                                        ; preds = %if.end32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i32 noundef %n) #5
  %arraydecay56 = getelementptr inbounds %struct.ige_test, %struct.ige_test* %arrayidx, i64 0, i32 0, i64 0
  call void @test_output_memory(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* noundef %arraydecay56, i64 noundef 16) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %arraydecay11, i64 noundef 32) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %arraydecay13, i64 noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then54, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %testresult.0, %if.end32 ], [ 0, %if.then54 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bi_ige_vectors(i32 noundef %n) #0 {
entry:
  %key1 = alloca %struct.aes_key_st, align 4
  %key2 = alloca %struct.aes_key_st, align 4
  %buf = alloca [64 x i8], align 16
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom
  %0 = bitcast %struct.aes_key_st* %key1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %0) #6
  %1 = bitcast %struct.aes_key_st* %key2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %length = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 6
  %3 = load i64, i64* %length, align 8, !tbaa !17
  %conv = trunc i64 %3 to i32
  %call = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv, i32 noundef 64) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %encrypt = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 7
  %4 = load i32, i32* %encrypt, align 8, !tbaa !19
  %cmp = icmp eq i32 %4, 1
  %arraydecay = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %arrayidx, i64 0, i32 0, i64 0
  %keysize = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 5
  %5 = load i64, i64* %keysize, align 8, !tbaa !20
  %.tr73 = trunc i64 %5 to i32
  %conv4 = shl i32 %.tr73, 3
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call5 = call i32 @AES_set_encrypt_key(i8* noundef %arraydecay, i32 noundef %conv4, %struct.aes_key_st* noundef nonnull %key1) #5
  %arraydecay7 = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 1, i64 0
  %call11 = call i32 @AES_set_encrypt_key(i8* noundef nonnull %arraydecay7, i32 noundef %conv4, %struct.aes_key_st* noundef nonnull %key2) #5
  br label %if.end24

if.else:                                          ; preds = %if.end
  %call17 = call i32 @AES_set_decrypt_key(i8* noundef %arraydecay, i32 noundef %conv4, %struct.aes_key_st* noundef nonnull %key1) #5
  %arraydecay19 = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 1, i64 0
  %call23 = call i32 @AES_set_decrypt_key(i8* noundef nonnull %arraydecay19, i32 noundef %conv4, %struct.aes_key_st* noundef nonnull %key2) #5
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then2
  %arraydecay25 = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 3, i64 0
  %arraydecay28 = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 2, i64 0
  call void @AES_bi_ige_encrypt(i8* noundef nonnull %arraydecay25, i8* noundef nonnull %2, i64 noundef %3, %struct.aes_key_st* noundef nonnull %key1, %struct.aes_key_st* noundef nonnull %key2, i8* noundef nonnull %arraydecay28, i32 noundef %4) #5
  %arraydecay30 = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 4, i64 0
  %call34 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef nonnull %arraydecay30, i64 noundef %3, i8* noundef nonnull %2, i64 noundef %3) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %cleanup

if.then36:                                        ; preds = %if.end24
  %arraydecay38 = getelementptr inbounds %struct.bi_ige_test, %struct.bi_ige_test* %arrayidx, i64 0, i32 0, i64 0
  call void @test_output_memory(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef %arraydecay38, i64 noundef 32) #5
  %arraydecay40 = getelementptr inbounds [2 x %struct.bi_ige_test], [2 x %struct.bi_ige_test]* bitcast (<{ { <{ [16 x i8], [16 x i8] }>, <{ [16 x i8], [16 x i8] }>, [64 x i8], [64 x i8], <{ [32 x i8], [32 x i8] }>, i64, i64, i32 }, %struct.bi_ige_test }>* @bi_ige_test_vectors to [2 x %struct.bi_ige_test]*), i64 0, i64 %idxprom, i32 1, i64 0
  call void @test_output_memory(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %arraydecay40, i64 noundef 32) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %arraydecay28, i64 noundef 64) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %arraydecay25, i64 noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry, %if.then36
  %retval.0 = phi i32 [ 0, %if.then36 ], [ 0, %entry ], [ 1, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @AES_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #1

declare dso_local void @AES_ige_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @AES_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_size_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @AES_bi_ige_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_output_memory(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !7, !8}
!10 = distinct !{!10, !7, !8}
!11 = distinct !{!11, !7, !8}
!12 = !{!13, !14, i64 176}
!13 = !{!"ige_test", !4, i64 0, !4, i64 16, !4, i64 48, !4, i64 112, !14, i64 176, !15, i64 184}
!14 = !{!"long", !4, i64 0}
!15 = !{!"int", !4, i64 0}
!16 = !{!13, !15, i64 184}
!17 = !{!18, !14, i64 264}
!18 = !{!"bi_ige_test", !4, i64 0, !4, i64 32, !4, i64 64, !4, i64 128, !4, i64 192, !14, i64 256, !14, i64 264, !15, i64 272}
!19 = !{!18, !15, i64 272}
!20 = !{!18, !14, i64 256}
