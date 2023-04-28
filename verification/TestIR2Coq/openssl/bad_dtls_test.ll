; ModuleID = 'test/bad_dtls_test.c'
source_filename = "test/bad_dtls_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_ctx_st = type opaque
%struct.anon = type { i64, i32 }
%struct.ssl_session_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.PACKET = type { i8*, i64 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_mac_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@.str = private unnamed_addr constant [14 x i8] c"test_bad_dtls\00", align 1
@session_id = internal global [32 x i8] zeroinitializer, align 16
@master_secret = internal global [48 x i8] zeroinitializer, align 16
@cookie = internal global [20 x i8] zeroinitializer, align 16
@server_random = internal global [32 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"test/bad_dtls_test.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sess\00", align 1
@handshake_md = internal unnamed_addr global %struct.evp_md_ctx_st* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"handshake_md\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"EVP_DigestInit_ex(handshake_md, EVP_md5_sha1(), NULL)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"SSL_CTX_set_min_proto_version(ctx, DTLS1_BAD_VER)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"SSL_CTX_set_max_proto_version(ctx, DTLS1_BAD_VER)\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"SSL_CTX_set_options(ctx, SSL_OP_LEGACY_SERVER_CONNECT)\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"SSL_CTX_set_cipher_list(ctx, \22AES128-SHA\22)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SSL_set_session(con, sess)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rbio\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"wbio\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"BIO_up_ref(rbio)\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"BIO_up_ref(wbio)\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"SSL_get_error(con, ret)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"SSL_ERROR_WANT_READ\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"validate_client_hello(wbio)\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"send_hello_verify(rbio)\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"send_server_hello(rbio)\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"send_finished(con, rbio)\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"validate_ccs(wbio)\00", align 1
@.str.28 = private unnamed_addr constant [91 x i8] c"send_record(rbio, SSL3_RT_APPLICATION_DATA, tests[i].seq, &tests[i].seq, sizeof(uint64_t))\00", align 1
@tests = internal global [35 x %struct.anon] [%struct.anon { i64 1, i32 0 }, %struct.anon { i64 3, i32 0 }, %struct.anon { i64 2, i32 0 }, %struct.anon { i64 4660, i32 0 }, %struct.anon { i64 4656, i32 0 }, %struct.anon { i64 4661, i32 0 }, %struct.anon { i64 65535, i32 0 }, %struct.anon { i64 65537, i32 0 }, %struct.anon { i64 65534, i32 0 }, %struct.anon { i64 65536, i32 0 }, %struct.anon { i64 65537, i32 1 }, %struct.anon { i64 255, i32 1 }, %struct.anon { i64 1048576, i32 0 }, %struct.anon { i64 8388608, i32 0 }, %struct.anon { i64 8388577, i32 0 }, %struct.anon { i64 16777215, i32 0 }, %struct.anon { i64 16777216, i32 0 }, %struct.anon { i64 16777214, i32 0 }, %struct.anon { i64 16777215, i32 1 }, %struct.anon { i64 16777232, i32 0 }, %struct.anon { i64 16777213, i32 0 }, %struct.anon { i64 16777233, i32 0 }, %struct.anon { i64 18, i32 1 }, %struct.anon { i64 16777234, i32 0 }, %struct.anon { i64 33554431, i32 0 }, %struct.anon { i64 33554432, i32 0 }, %struct.anon { i64 33489150, i32 1 }, %struct.anon { i64 33554433, i32 0 }, %struct.anon { i64 34603007, i32 0 }, %struct.anon { i64 34624768, i32 0 }, %struct.anon { i64 34603006, i32 1 }, %struct.anon { i64 34624767, i32 0 }, %struct.anon { i64 34734079, i32 0 }, %struct.anon { i64 34668544, i32 1 }, %struct.anon { i64 34734080, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [40 x i8] c"Failed to send data seq #0x%x%08x (%d)\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"(int)sizeof(uint64_t)\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"SSL_read failed or wrong size on seq#0x%x%08x (%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"recv_buf[0] == tests[i].seq\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"tests[i-1].drop\00", align 1
@client_session.session_asn1 = internal global <{ [49 x i8], [48 x i8] }> <{ [49 x i8] c"0_\02\01\01\02\02\01\00\04\02\00/\04 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\040", [48 x i8] zeroinitializer }>, align 16
@client_random = internal global [32 x i8] zeroinitializer, align 16
@send_hello_verify.hello_verify = internal global <{ [28 x i8], [20 x i8] }> <{ [28 x i8] c"\16\01\00\00\00\00\00\00\00\00\00\00#\03\00\00\17\00\00\00\00\00\00\00\17\01\00\14", [20 x i8] zeroinitializer }>, align 16
@send_server_hello.server_hello = internal global [95 x i8] c"\16\01\00\00\00\00\00\00\00\00\01\00R\02\00\00F\00\01\00\00\00\00\00F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/\00", align 16
@send_server_hello.change_cipher_spec = internal global [16 x i8] c"\14\01\00\00\00\00\00\00\00\00\02\00\03\01\00\02", align 16
@send_finished.finished_msg = internal global <{ [12 x i8], [12 x i8] }> <{ [12 x i8] c"\14\00\00\0C\00\03\00\00\00\00\00\0C", [12 x i8] zeroinitializer }>, align 16
@.str.34 = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1
@key_block = internal global [104 x i8] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@send_record.epoch = internal global [2 x i8] c"\00\01", align 1
@send_record.seq = internal global [6 x i8] zeroinitializer, align 1
@send_record.ver = internal global [2 x i8] c"\01\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"hmac = EVP_MAC_fetch(NULL, \22HMAC\22, NULL)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"ctx = EVP_MAC_CTX_new(hmac)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"RAND_bytes(iv, sizeof(iv))\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"enc_ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.43 = private unnamed_addr constant [68 x i8] c"EVP_CipherInit_ex(enc_ctx, EVP_aes_128_cbc(), NULL, enc_key, iv, 1)\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"EVP_Cipher(enc_ctx, enc, enc, len)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_bad_dtls) #9
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bad_dtls() #0 {
entry:
  %now = alloca i64, align 8
  %recv_buf = alloca [2 x i64], align 16
  %0 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @session_id, i64 0, i64 0), i32 noundef 32) #9
  %call1 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @master_secret, i64 0, i64 0), i32 noundef 48) #9
  %call2 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @cookie, i64 0, i64 0), i32 noundef 20) #9
  %call3 = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @server_random, i64 0, i64 4), i32 noundef 28) #9
  %call4 = tail call i64 @time(i64* noundef null) #9
  store i64 %call4, i64* %now, align 8, !tbaa !3
  %call5 = call i8* @memcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @server_random, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 8) #9
  %call6 = call fastcc %struct.ssl_session_st* @client_session() #11
  %1 = bitcast %struct.ssl_session_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 484, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup209, label %if.end

if.end:                                           ; preds = %entry
  %call8 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #9
  store %struct.evp_md_ctx_st* %call8, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  %2 = bitcast %struct.evp_md_ctx_st* %call8 to i8*
  %call9 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* noundef %2) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup209, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  %call11 = call %struct.evp_md_st* @EVP_md5_sha1() #9
  %call12 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %3, %struct.evp_md_st* noundef %call11, %struct.engine_st* noundef null) #9
  %cmp = icmp ne i32 %call12, 0
  %conv = zext i1 %cmp to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup209, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = call %struct.ssl_method_st* @DTLS_client_method() #9
  %call18 = call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call17) #9
  %4 = bitcast %struct.ssl_ctx_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup209, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end16
  %call22 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call18, i32 noundef 123, i64 noundef 256, i8* noundef null) #9
  %cmp23 = icmp ne i64 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv24) #9
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup209, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %call28 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %call18, i32 noundef 124, i64 noundef 256, i8* noundef null) #9
  %cmp29 = icmp ne i64 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv30) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup209, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false27
  %call34 = call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call18, i64 noundef 4) #9
  %cmp35 = icmp ne i64 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv36) #9
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup209, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false33
  %call40 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %call18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 499, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv42) #9
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup209, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false39
  %call47 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call18) #9
  %5 = bitcast %struct.ssl_st* %call47 to i8*
  %call48 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 503, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef %5) #9
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup209, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end46
  %call51 = call i32 @SSL_set_session(%struct.ssl_st* noundef %call47, %struct.ssl_session_st* noundef %call6) #9
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 504, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv53) #9
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup209, label %if.end57

if.end57:                                         ; preds = %lor.lhs.false50
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %call6) #9
  %call58 = call %struct.bio_method_st* @BIO_s_mem() #9
  %call59 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call58) #9
  %call60 = call %struct.bio_method_st* @BIO_s_mem() #9
  %call61 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call60) #9
  %6 = bitcast %struct.bio_st* %call59 to i8*
  %call62 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef %6) #9
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup209, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end57
  %7 = bitcast %struct.bio_st* %call61 to i8*
  %call65 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %7) #9
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup209, label %if.end68

if.end68:                                         ; preds = %lor.lhs.false64
  call void @SSL_set_bio(%struct.ssl_st* noundef %call47, %struct.bio_st* noundef %call59, %struct.bio_st* noundef %call61) #9
  %call69 = call i32 @BIO_up_ref(%struct.bio_st* noundef %call59) #9
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv71) #9
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup209, label %if.end75

if.end75:                                         ; preds = %if.end68
  %call76 = call i32 @BIO_up_ref(%struct.bio_st* noundef %call61) #9
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv78) #9
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %cleanup209, label %if.end82

if.end82:                                         ; preds = %if.end75
  call void @SSL_set_connect_state(%struct.ssl_st* noundef %call47) #9
  %call83 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call47) #9
  %call84 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 535, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call83, i32 noundef 0) #9
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %cleanup209, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.end82
  %call87 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call47, i32 noundef %call83) #9
  %call88 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call87, i32 noundef 2) #9
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %cleanup209, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %call91 = call fastcc i32 @validate_client_hello(%struct.bio_st* noundef %call61) #11, !range !9
  %call92 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call91, i32 noundef 1) #9
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup209, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  call fastcc void @send_hello_verify(%struct.bio_st* noundef %call59) #11
  %call98 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 538, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 noundef 1) #9
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup209, label %if.end101

if.end101:                                        ; preds = %lor.lhs.false94
  %call102 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call47) #9
  %call103 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 542, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call102, i32 noundef 0) #9
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %cleanup209, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end101
  %call106 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call47, i32 noundef %call102) #9
  %call107 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 543, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call106, i32 noundef 2) #9
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup209, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false105
  %call110 = call fastcc i32 @validate_client_hello(%struct.bio_st* noundef %call61) #11, !range !9
  %call111 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 544, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call110, i32 noundef 2) #9
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %cleanup209, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false109
  %call114 = call fastcc i32 @send_server_hello(%struct.bio_st* noundef %call59) #11
  %cmp115 = icmp ne i32 %call114, 0
  %conv116 = zext i1 %cmp115 to i32
  %call117 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv116) #9
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %cleanup209, label %if.end120

if.end120:                                        ; preds = %lor.lhs.false113
  %call121 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call47) #9
  %call122 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 549, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call121, i32 noundef 0) #9
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cleanup209, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.end120
  %call125 = call i32 @SSL_get_error(%struct.ssl_st* noundef %call47, i32 noundef %call121) #9
  %call126 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 550, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call125, i32 noundef 2) #9
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %cleanup209, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false124
  %call129 = call fastcc i32 @send_finished(%struct.bio_st* noundef %call59) #11
  %cmp130 = icmp ne i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv131) #9
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %cleanup209, label %if.end135

if.end135:                                        ; preds = %lor.lhs.false128
  %call136 = call i32 @SSL_do_handshake(%struct.ssl_st* noundef %call47) #9
  %call137 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call136, i32 noundef 0) #9
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %cleanup209, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %if.end135
  %call140 = call fastcc i32 @validate_ccs(%struct.bio_st* noundef %call61) #11
  %cmp141 = icmp ne i32 %call140, 0
  %conv142 = zext i1 %cmp141 to i32
  %call143 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv142) #9
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %cleanup209, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false139
  %8 = bitcast [2 x i64]* %recv_buf to i8*
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %recv_buf, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #10
  %arrayidx = getelementptr inbounds [35 x %struct.anon], [35 x %struct.anon]* @tests, i64 0, i64 %indvars.iv
  %seq = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i64 0, i32 0
  %9 = load i64, i64* %seq, align 16, !tbaa !10
  %10 = bitcast %struct.anon* %arrayidx to i8*
  %call152 = call fastcc i32 @send_record(%struct.bio_st* noundef %call59, i8 noundef zeroext 23, i64 noundef %9, i8* noundef nonnull %10, i64 noundef 8) #11
  %cmp153 = icmp ne i32 %call152, 0
  %conv154 = zext i1 %cmp153 to i32
  %call155 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 568, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv154) #9
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then157, label %if.end166

if.then157:                                       ; preds = %for.body
  %11 = trunc i64 %indvars.iv to i32
  %12 = load i64, i64* %seq, align 16, !tbaa !10
  %shr = lshr i64 %12, 32
  %conv161 = trunc i64 %shr to i32
  %conv165 = trunc i64 %12 to i32
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv161, i32 noundef %conv165, i32 noundef %11) #9
  br label %cleanup.thread

if.end166:                                        ; preds = %for.body
  %drop = getelementptr inbounds [35 x %struct.anon], [35 x %struct.anon]* @tests, i64 0, i64 %indvars.iv, i32 1
  %13 = load i32, i32* %drop, align 8, !tbaa !13
  %tobool169.not = icmp eq i32 %13, 0
  br i1 %tobool169.not, label %if.end171, label %for.inc

if.end171:                                        ; preds = %if.end166
  %call172 = call i32 @SSL_read(%struct.ssl_st* noundef %call47, i8* noundef nonnull %8, i32 noundef 16) #9
  %call173 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call172, i32 noundef 8) #9
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then175, label %if.end185

if.then175:                                       ; preds = %if.end171
  %14 = trunc i64 %indvars.iv to i32
  %15 = load i64, i64* %seq, align 16, !tbaa !10
  %shr179 = lshr i64 %15, 32
  %conv180 = trunc i64 %shr179 to i32
  %conv184 = trunc i64 %15 to i32
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv180, i32 noundef %conv184, i32 noundef %14) #9
  br label %cleanup.thread

if.end185:                                        ; preds = %if.end171
  %16 = load i64, i64* %arraydecay, align 16, !tbaa !3
  %17 = load i64, i64* %seq, align 16, !tbaa !10
  %cmp190 = icmp eq i64 %16, %17
  %conv191 = zext i1 %cmp190 to i32
  %call194 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv191) #9
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %if.end185, %if.then175, %if.then157
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10
  br label %cleanup209

for.inc:                                          ; preds = %if.end166, %if.end185
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 35
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.inc
  %18 = load i32, i32* getelementptr inbounds ([35 x %struct.anon], [35 x %struct.anon]* @tests, i64 0, i64 34, i32 1), align 8, !tbaa !13
  %cmp201 = icmp ne i32 %18, 0
  %conv202 = zext i1 %cmp201 to i32
  %call203 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 588, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv202) #9
  %tobool204.not = icmp ne i32 %call203, 0
  %spec.select = zext i1 %tobool204.not to i32
  br label %cleanup209

cleanup209:                                       ; preds = %entry, %lor.lhs.false, %if.end, %lor.lhs.false39, %lor.lhs.false33, %lor.lhs.false27, %lor.lhs.false21, %if.end16, %lor.lhs.false50, %if.end46, %lor.lhs.false64, %if.end57, %lor.lhs.false94, %lor.lhs.false90, %lor.lhs.false86, %if.end82, %lor.lhs.false113, %lor.lhs.false109, %lor.lhs.false105, %if.end101, %lor.lhs.false128, %lor.lhs.false124, %if.end120, %lor.lhs.false139, %if.end135, %if.end68, %if.end75, %for.end, %cleanup.thread
  %ctx.0 = phi %struct.ssl_ctx_st* [ %call18, %lor.lhs.false139 ], [ %call18, %if.end135 ], [ %call18, %lor.lhs.false128 ], [ %call18, %lor.lhs.false124 ], [ %call18, %if.end120 ], [ %call18, %lor.lhs.false113 ], [ %call18, %lor.lhs.false109 ], [ %call18, %lor.lhs.false105 ], [ %call18, %if.end101 ], [ %call18, %lor.lhs.false94 ], [ %call18, %lor.lhs.false90 ], [ %call18, %lor.lhs.false86 ], [ %call18, %if.end82 ], [ %call18, %lor.lhs.false64 ], [ %call18, %if.end57 ], [ %call18, %lor.lhs.false50 ], [ %call18, %if.end46 ], [ %call18, %lor.lhs.false39 ], [ %call18, %lor.lhs.false33 ], [ %call18, %lor.lhs.false27 ], [ %call18, %lor.lhs.false21 ], [ %call18, %if.end16 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call18, %if.end68 ], [ %call18, %if.end75 ], [ %call18, %for.end ], [ %call18, %cleanup.thread ]
  %con.0 = phi %struct.ssl_st* [ %call47, %lor.lhs.false139 ], [ %call47, %if.end135 ], [ %call47, %lor.lhs.false128 ], [ %call47, %lor.lhs.false124 ], [ %call47, %if.end120 ], [ %call47, %lor.lhs.false113 ], [ %call47, %lor.lhs.false109 ], [ %call47, %lor.lhs.false105 ], [ %call47, %if.end101 ], [ %call47, %lor.lhs.false94 ], [ %call47, %lor.lhs.false90 ], [ %call47, %lor.lhs.false86 ], [ %call47, %if.end82 ], [ %call47, %lor.lhs.false64 ], [ %call47, %if.end57 ], [ %call47, %lor.lhs.false50 ], [ %call47, %if.end46 ], [ null, %lor.lhs.false39 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false27 ], [ null, %lor.lhs.false21 ], [ null, %if.end16 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call47, %if.end68 ], [ %call47, %if.end75 ], [ %call47, %for.end ], [ %call47, %cleanup.thread ]
  %rbio.0 = phi %struct.bio_st* [ %call59, %lor.lhs.false139 ], [ %call59, %if.end135 ], [ %call59, %lor.lhs.false128 ], [ %call59, %lor.lhs.false124 ], [ %call59, %if.end120 ], [ %call59, %lor.lhs.false113 ], [ %call59, %lor.lhs.false109 ], [ %call59, %lor.lhs.false105 ], [ %call59, %if.end101 ], [ %call59, %lor.lhs.false94 ], [ %call59, %lor.lhs.false90 ], [ %call59, %lor.lhs.false86 ], [ %call59, %if.end82 ], [ %call59, %lor.lhs.false64 ], [ %call59, %if.end57 ], [ null, %lor.lhs.false50 ], [ null, %if.end46 ], [ null, %lor.lhs.false39 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false27 ], [ null, %lor.lhs.false21 ], [ null, %if.end16 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ null, %if.end68 ], [ %call59, %if.end75 ], [ %call59, %for.end ], [ %call59, %cleanup.thread ]
  %wbio.0 = phi %struct.bio_st* [ %call61, %lor.lhs.false139 ], [ %call61, %if.end135 ], [ %call61, %lor.lhs.false128 ], [ %call61, %lor.lhs.false124 ], [ %call61, %if.end120 ], [ %call61, %lor.lhs.false113 ], [ %call61, %lor.lhs.false109 ], [ %call61, %lor.lhs.false105 ], [ %call61, %if.end101 ], [ %call61, %lor.lhs.false94 ], [ %call61, %lor.lhs.false90 ], [ %call61, %lor.lhs.false86 ], [ %call61, %if.end82 ], [ %call61, %lor.lhs.false64 ], [ %call61, %if.end57 ], [ null, %lor.lhs.false50 ], [ null, %if.end46 ], [ null, %lor.lhs.false39 ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false27 ], [ null, %lor.lhs.false21 ], [ null, %if.end16 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ null, %if.end68 ], [ null, %if.end75 ], [ %call61, %for.end ], [ %call61, %cleanup.thread ]
  %testresult.0 = phi i32 [ 0, %lor.lhs.false139 ], [ 0, %if.end135 ], [ 0, %lor.lhs.false128 ], [ 0, %lor.lhs.false124 ], [ 0, %if.end120 ], [ 0, %lor.lhs.false113 ], [ 0, %lor.lhs.false109 ], [ 0, %lor.lhs.false105 ], [ 0, %if.end101 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false90 ], [ 0, %lor.lhs.false86 ], [ 0, %if.end82 ], [ 0, %lor.lhs.false64 ], [ 0, %if.end57 ], [ 0, %lor.lhs.false50 ], [ 0, %if.end46 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false21 ], [ 0, %if.end16 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end68 ], [ 0, %if.end75 ], [ %spec.select, %for.end ], [ 0, %cleanup.thread ]
  %call207 = call i32 @BIO_free(%struct.bio_st* noundef %rbio.0) #9
  %call208 = call i32 @BIO_free(%struct.bio_st* noundef %wbio.0) #9
  call void @SSL_free(%struct.ssl_st* noundef %con.0) #9
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %ctx.0) #9
  %19 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %19) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @client_session() unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i8* getelementptr inbounds (<{ [49 x i8], [48 x i8] }>, <{ [49 x i8], [48 x i8] }>* @client_session.session_asn1, i64 0, i32 0, i64 0), i8** %p, align 8, !tbaa !7
  %call = tail call i8* @memcpy(i8* noundef getelementptr inbounds (<{ [49 x i8], [48 x i8] }>, <{ [49 x i8], [48 x i8] }>* @client_session.session_asn1, i64 0, i32 0, i64 15), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @session_id, i64 0, i64 0), i64 noundef 32) #9
  %call1 = tail call i8* @memcpy(i8* noundef getelementptr inbounds (<{ [49 x i8], [48 x i8] }>, <{ [49 x i8], [48 x i8] }>* @client_session.session_asn1, i64 0, i32 1, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @master_secret, i64 0, i64 0), i64 noundef 48) #9
  %call2 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef null, i8** noundef nonnull %p, i64 noundef 97) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.ssl_session_st* %call2
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_md5_sha1() local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @DTLS_client_method() local_unnamed_addr #1

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_do_handshake(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @validate_client_hello(%struct.bio_st* noundef %wbio) unnamed_addr #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %pkt2 = alloca %struct.PACKET, align 8
  %data = alloca i8*, align 8
  %u = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = bitcast %struct.PACKET* %pkt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  store i32 0, i32* %u, align 4, !tbaa !16
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %wbio, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %2) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %data, align 8, !tbaa !7
  call fastcc void @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %4, i64 noundef %call) #11
  %call4 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool5 = icmp eq i32 %call4, 0
  %5 = load i32, i32* %u, align 4
  %cmp6 = icmp ne i32 %5, 22
  %or.cond = select i1 %tobool5, i1 true, i1 %cmp6
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool10 = icmp eq i32 %call9, 0
  %6 = load i32, i32* %u, align 4
  %cmp12 = icmp ne i32 %6, 256
  %or.cond97 = select i1 %tobool10, i1 true, i1 %cmp12
  br i1 %or.cond97, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end8
  %call15 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 10) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool20 = icmp eq i32 %call19, 0
  %7 = load i32, i32* %u, align 4
  %cmp22 = icmp ne i32 %7, 1
  %or.cond98 = select i1 %tobool20, i1 true, i1 %cmp22
  br i1 %or.cond98, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end18
  %call25 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 11) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end24
  %call29 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool30 = icmp eq i32 %call29, 0
  %8 = load i32, i32* %u, align 4
  %cmp32 = icmp ne i32 %8, 256
  %or.cond99 = select i1 %tobool30, i1 true, i1 %cmp32
  br i1 %or.cond99, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end28
  %call35 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %pkt) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end34
  %call39 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end38
  %call42 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @session_id, i64 0, i64 0), i64 noundef 32) #11
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false41
  %call46 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end45
  %call50 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt2) #11
  %tobool51.not = icmp eq i64 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %if.then52

if.then52:                                        ; preds = %if.end49
  %call53 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %pkt2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @cookie, i64 0, i64 0), i64 noundef 20) #11
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end49
  %cookie_found.0 = phi i32 [ 1, %if.end49 ], [ 2, %if.then52 ]
  %call58 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end57
  %9 = load i32, i32* %u, align 4, !tbaa !16
  %conv = zext i32 %9 to i64
  %call61 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef %conv) #11
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false60
  %call65 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end64
  %10 = load i32, i32* %u, align 4, !tbaa !16
  %conv68 = zext i32 %10 to i64
  %call69 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef %conv68) #11
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %cleanup, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false67
  %call73 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %cleanup, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end72
  %11 = load i32, i32* %u, align 4, !tbaa !16
  %conv76 = zext i32 %11 to i64
  %call77 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef %conv76) #11
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %cleanup, label %if.end80

if.end80:                                         ; preds = %lor.lhs.false75
  %call81 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #11
  %tobool82.not = icmp eq i64 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %cleanup

if.end84:                                         ; preds = %if.end80
  br i1 %tobool51.not, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end84
  %12 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  %13 = load i8*, i8** %data, align 8, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 25
  %sub = add nsw i64 %call, -25
  %call86 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %12, i8* noundef nonnull %add.ptr, i64 noundef %sub) #9
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup, label %if.end89

if.end89:                                         ; preds = %land.lhs.true, %if.end84
  %call90 = call i64 @BIO_ctrl(%struct.bio_st* noundef %wbio, i32 noundef 1, i64 noundef 0, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end80, %if.end72, %lor.lhs.false75, %if.end64, %lor.lhs.false67, %if.end57, %lor.lhs.false60, %if.then52, %if.end45, %if.end38, %lor.lhs.false41, %if.end34, %if.end28, %if.end24, %if.end18, %if.end14, %if.end8, %if.end, %entry, %if.end89
  %retval.0 = phi i32 [ %cookie_found.0, %if.end89 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end14 ], [ 0, %if.end18 ], [ 0, %if.end24 ], [ 0, %if.end28 ], [ 0, %if.end34 ], [ 0, %lor.lhs.false41 ], [ 0, %if.end38 ], [ 0, %if.end45 ], [ 0, %if.then52 ], [ 0, %lor.lhs.false60 ], [ 0, %if.end57 ], [ 0, %lor.lhs.false67 ], [ 0, %if.end64 ], [ 0, %lor.lhs.false75 ], [ 0, %if.end72 ], [ 0, %if.end80 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @send_hello_verify(%struct.bio_st* noundef %rbio) unnamed_addr #0 {
entry:
  %call = tail call i8* @memcpy(i8* noundef getelementptr inbounds (<{ [28 x i8], [20 x i8] }>, <{ [28 x i8], [20 x i8] }>* @send_hello_verify.hello_verify, i64 0, i32 1, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @cookie, i64 0, i64 0), i64 noundef 20) #9
  %call1 = tail call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef getelementptr inbounds (<{ [28 x i8], [20 x i8] }>, <{ [28 x i8], [20 x i8] }>* @send_hello_verify.hello_verify, i64 0, i32 0, i64 0), i32 noundef 48) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @send_server_hello(%struct.bio_st* noundef %rbio) unnamed_addr #0 {
entry:
  %call = tail call i8* @memcpy(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @send_server_hello.server_hello, i64 0, i64 27), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @server_random, i64 0, i64 0), i64 noundef 32) #9
  %call1 = tail call i8* @memcpy(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @send_server_hello.server_hello, i64 0, i64 60), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @session_id, i64 0, i64 0), i64 noundef 32) #9
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  %call2 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @send_server_hello.server_hello, i64 0, i64 25), i64 noundef 70) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @send_server_hello.server_hello, i64 0, i64 0), i32 noundef 95) #9
  %call4 = tail call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @send_server_hello.change_cipher_spec, i64 0, i64 0), i32 noundef 16) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @send_finished(%struct.bio_st* noundef %rbio) unnamed_addr #0 {
entry:
  %handshake_hash = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %handshake_hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #10
  tail call fastcc void @do_PRF(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @server_random, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @client_random, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @key_block, i64 0, i64 0), i32 noundef 104) #11
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  %call1 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %1, i8* noundef nonnull %0, i32* noundef null) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** @handshake_md, align 8, !tbaa !7
  %call3 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %2) #9
  %call4 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call3) #9
  call fastcc void @do_PRF(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i32 noundef 15, i8* noundef nonnull %0, i32 noundef %call4, i8* noundef null, i32 noundef 0, i8* noundef getelementptr inbounds (<{ [12 x i8], [12 x i8] }>, <{ [12 x i8], [12 x i8] }>* @send_finished.finished_msg, i64 0, i32 1, i64 0), i32 noundef 12) #11
  %call6 = call fastcc i32 @send_record(%struct.bio_st* noundef %rbio, i8 noundef zeroext 22, i64 noundef 0, i8* noundef getelementptr inbounds (<{ [12 x i8], [12 x i8] }>, <{ [12 x i8], [12 x i8] }>* @send_finished.finished_msg, i64 0, i32 0, i64 0), i64 noundef 24) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @validate_ccs(%struct.bio_st* noundef %wbio) unnamed_addr #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %data = alloca i8*, align 8
  %u = alloca i32, align 4
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %wbio, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #9
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !tbaa !7
  call fastcc void @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %3, i64 noundef %call) #11
  %call4 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool5 = icmp eq i32 %call4, 0
  %4 = load i32, i32* %u, align 4
  %cmp6 = icmp ne i32 %4, 20
  %or.cond = select i1 %tobool5, i1 true, i1 %cmp6
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool10 = icmp eq i32 %call9, 0
  %5 = load i32, i32* %u, align 4
  %cmp12 = icmp ne i32 %5, 256
  %or.cond52 = select i1 %tobool10, i1 true, i1 %cmp12
  br i1 %or.cond52, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end8
  %call15 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 10) #11
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool20 = icmp eq i32 %call19, 0
  %6 = load i32, i32* %u, align 4
  %cmp22 = icmp ne i32 %6, 1
  %or.cond53 = select i1 %tobool20, i1 true, i1 %cmp22
  br i1 %or.cond53, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end18
  %call25 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool26 = icmp eq i32 %call25, 0
  %7 = load i32, i32* %u, align 4
  %cmp28 = icmp ne i32 %7, 2
  %or.cond54 = select i1 %tobool26, i1 true, i1 %cmp28
  br i1 %or.cond54, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.end24
  %call31 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool32 = icmp eq i32 %call31, 0
  %8 = load i32, i32* %u, align 4
  %cmp34 = icmp ne i32 %8, 22
  %or.cond55 = select i1 %tobool32, i1 true, i1 %cmp34
  br i1 %or.cond55, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end30
  %call37 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool38 = icmp eq i32 %call37, 0
  %9 = load i32, i32* %u, align 4
  %cmp40 = icmp ne i32 %9, 256
  %or.cond56 = select i1 %tobool38, i1 true, i1 %cmp40
  br i1 %or.cond56, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end36
  %call43 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %u) #11
  %tobool44 = icmp ne i32 %call43, 0
  %10 = load i32, i32* %u, align 4
  %cmp46 = icmp eq i32 %10, 1
  %or.cond57 = select i1 %tobool44, i1 %cmp46, i1 false
  %. = zext i1 %or.cond57 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end36, %if.end30, %if.end24, %if.end18, %if.end14, %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end14 ], [ 0, %if.end18 ], [ 0, %if.end24 ], [ 0, %if.end30 ], [ 0, %if.end36 ], [ %., %if.end42 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @send_record(%struct.bio_st* noundef %rbio, i8 noundef zeroext %type, i64 noundef %seqnr, i8* noundef %msg, i64 noundef %len) unnamed_addr #0 {
entry:
  %type.addr = alloca i8, align 1
  %lenbytes = alloca [2 x i8], align 1
  %iv = alloca [16 x i8], align 16
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp30 = alloca %struct.ossl_param_st, align 8
  store i8 %type, i8* %type.addr, align 1, !tbaa !17
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %lenbytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #10
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #10
  %shr = lshr i64 %seqnr, 40
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 0), align 1, !tbaa !17
  %shr1 = lshr i64 %seqnr, 32
  %conv3 = trunc i64 %shr1 to i8
  store i8 %conv3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 1), align 1, !tbaa !17
  %shr4 = lshr i64 %seqnr, 24
  %conv6 = trunc i64 %shr4 to i8
  store i8 %conv6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 2), align 1, !tbaa !17
  %shr7 = lshr i64 %seqnr, 16
  %conv9 = trunc i64 %shr7 to i8
  store i8 %conv9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 3), align 1, !tbaa !17
  %shr10 = lshr i64 %seqnr, 8
  %conv12 = trunc i64 %shr10 to i8
  store i8 %conv12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 4), align 1, !tbaa !17
  %conv14 = trunc i64 %seqnr to i8
  store i8 %conv14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 5), align 1, !tbaa !17
  %add = add i64 %len, 20
  %3 = trunc i64 %add to i8
  %4 = and i8 %3, 15
  %conv15 = xor i8 %4, 15
  %add17 = add i64 %len, 21
  %conv18 = zext i8 %conv15 to i64
  %add19 = add i64 %add17, %conv18
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add19, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 301) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call21 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %msg, i64 noundef %len) #9
  %call22 = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* noundef null) #9
  %5 = bitcast %struct.evp_mac_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i64 0, i64 0), i8* noundef %5) #9
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call24 = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef %call22) #9
  %6 = bitcast %struct.evp_mac_ctx_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i8* noundef %6) #9
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params165 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params165, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i64 noundef 0) #9
  %arrayidx29 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %7 = bitcast %struct.ossl_param_st* %tmp30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #10
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp30) #9
  %8 = bitcast %struct.ossl_param_st* %arrayidx29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #10
  store i8 0, i8* %0, align 1, !tbaa !17
  %conv34 = trunc i64 %len to i8
  %arrayidx35 = getelementptr inbounds [2 x i8], [2 x i8]* %lenbytes, i64 0, i64 1
  store i8 %conv34, i8* %arrayidx35, align 1, !tbaa !17
  %call36 = call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @key_block, i64 0, i64 20), i64 noundef 20, %struct.ossl_param_st* noundef nonnull %arrayidx) #9
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %end, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end28
  %call39 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.epoch, i64 0, i64 0), i64 noundef 2) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %end, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 0), i64 noundef 6) #9
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %call45 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef nonnull %type.addr, i64 noundef 1) #9
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %end, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %call48 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.ver, i64 0, i64 0), i64 noundef 2) #9
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %end, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %call52 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef nonnull %0, i64 noundef 2) #9
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %end, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %call55 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef nonnull %call, i64 noundef %len) #9
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %end, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %len
  %call58 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef %call24, i8* noundef nonnull %add.ptr, i64* noundef null, i64 noundef 20) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %end, label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false57
  %9 = sub i64 11, %len
  %10 = and i64 %9, 15
  %11 = add nuw nsw i64 %10, 1
  %min.iters.check.not = icmp eq i64 %10, 15
  br i1 %min.iters.check.not, label %vector.ph, label %do.body.preheader166

vector.ph:                                        ; preds = %do.body.preheader
  %n.vec = and i64 %11, 16
  %ind.end = add i64 %add, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %conv15, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %12 = getelementptr inbounds i8, i8* %call, i64 %add
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %broadcast.splat, <16 x i8>* %13, align 1, !tbaa !17
  %cmp.n = icmp eq i64 %11, %n.vec
  %cast.cmo = add nsw i64 %n.vec, -1
  %ind.escape = add i64 %add, %cast.cmo
  br i1 %cmp.n, label %do.end, label %do.body.preheader166

do.body.preheader166:                             ; preds = %do.body.preheader, %vector.ph
  %len.addr.0.ph = phi i64 [ %add, %do.body.preheader ], [ %ind.end, %vector.ph ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader166, %do.body
  %len.addr.0 = phi i64 [ %inc, %do.body ], [ %len.addr.0.ph, %do.body.preheader166 ]
  %inc = add i64 %len.addr.0, 1
  %arrayidx63 = getelementptr inbounds i8, i8* %call, i64 %len.addr.0
  store i8 %conv15, i8* %arrayidx63, align 1, !tbaa !17
  %rem64 = and i64 %inc, 15
  %tobool65.not = icmp eq i64 %rem64, 0
  br i1 %tobool65.not, label %do.end, label %do.body, !llvm.loop !19

do.end:                                           ; preds = %do.body, %vector.ph
  %len.addr.0.lcssa = phi i64 [ %ind.escape, %vector.ph ], [ %len.addr.0, %do.body ]
  %inc.lcssa = phi i64 [ %ind.end, %vector.ph ], [ %inc, %do.body ]
  %call67 = call i32 @RAND_bytes(i8* noundef nonnull %1, i32 noundef 16) #9
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv69) #9
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %end, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %do.end
  %call73 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #9
  %14 = bitcast %struct.evp_cipher_ctx_st* %call73 to i8*
  %call74 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i8* noundef %14) #9
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %end, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %call77 = call %struct.evp_cipher_st* @EVP_aes_128_cbc() #9
  %call79 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call73, %struct.evp_cipher_st* noundef %call77, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @key_block, i64 0, i64 56), i8* noundef nonnull %1, i32 noundef 1) #9
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv81) #9
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %end, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false76
  %conv85 = trunc i64 %inc.lcssa to i32
  %call86 = call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef %call73, i8* noundef nonnull %call, i8* noundef nonnull %call, i32 noundef %conv85) #9
  %call87 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call86, i32 noundef 0) #9
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %end, label %if.end90

if.end90:                                         ; preds = %lor.lhs.false84
  %call91 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef nonnull %type.addr, i32 noundef 1) #9
  %call92 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.ver, i64 0, i64 0), i32 noundef 2) #9
  %call93 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @send_record.epoch, i64 0, i64 0), i32 noundef 2) #9
  %call94 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @send_record.seq, i64 0, i64 0), i32 noundef 6) #9
  %add95 = add i64 %len.addr.0.lcssa, 17
  %shr96 = lshr i64 %add95, 8
  %conv97 = trunc i64 %shr96 to i8
  store i8 %conv97, i8* %0, align 1, !tbaa !17
  %conv100 = trunc i64 %add95 to i8
  store i8 %conv100, i8* %arrayidx35, align 1, !tbaa !17
  %call103 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef nonnull %0, i32 noundef 2) #9
  %call105 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef nonnull %1, i32 noundef 16) #9
  %call107 = call i32 @BIO_write(%struct.bio_st* noundef %rbio, i8* noundef nonnull %call, i32 noundef %conv85) #9
  br label %end

end:                                              ; preds = %do.end, %lor.lhs.false72, %lor.lhs.false76, %lor.lhs.false84, %if.end28, %lor.lhs.false38, %lor.lhs.false41, %lor.lhs.false44, %lor.lhs.false47, %lor.lhs.false50, %lor.lhs.false54, %lor.lhs.false57, %if.end, %lor.lhs.false, %if.end90
  %ctx.0 = phi %struct.evp_mac_ctx_st* [ %call24, %if.end90 ], [ %call24, %lor.lhs.false84 ], [ %call24, %lor.lhs.false76 ], [ %call24, %lor.lhs.false72 ], [ %call24, %do.end ], [ %call24, %lor.lhs.false57 ], [ %call24, %lor.lhs.false54 ], [ %call24, %lor.lhs.false50 ], [ %call24, %lor.lhs.false47 ], [ %call24, %lor.lhs.false44 ], [ %call24, %lor.lhs.false41 ], [ %call24, %lor.lhs.false38 ], [ %call24, %if.end28 ], [ %call24, %lor.lhs.false ], [ null, %if.end ]
  %enc_ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call73, %if.end90 ], [ %call73, %lor.lhs.false84 ], [ %call73, %lor.lhs.false76 ], [ %call73, %lor.lhs.false72 ], [ null, %do.end ], [ null, %lor.lhs.false57 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false47 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false38 ], [ null, %if.end28 ], [ null, %lor.lhs.false ], [ null, %if.end ]
  %ret.0 = phi i32 [ 1, %if.end90 ], [ 0, %lor.lhs.false84 ], [ 0, %lor.lhs.false76 ], [ 0, %lor.lhs.false72 ], [ 0, %do.end ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false47 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false38 ], [ 0, %if.end28 ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %call22) #9
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx.0) #9
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %enc_ctx.0) #9
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 357) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 32) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #6 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !16
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  %5 = load i8*, i8** %data, align 8, !tbaa !7
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_equal(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %ptr, i64 noundef %num) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp.not = icmp eq i64 %call, %num
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %call1 = tail call i32 @CRYPTO_memcmp(i8* noundef %0, i8* noundef %ptr, i64 noundef %num) #9
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !24
  ret i64 %0
}

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !22
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !24
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !16
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !17
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #0 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, 32
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  %call1 = tail call i8* @memcpy(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @client_random, i64 0, i64 0), i8* noundef %0, i64 noundef 32) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #11
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !22
  store i8* %0, i8** %data, align 8, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_PRF(i8* noundef %seed1, i32 noundef %seed1_len, i8* noundef %seed2, i32 noundef %seed2_len, i8* noundef %seed3, i32 noundef %seed3_len, i8* noundef %out, i32 noundef %olen) unnamed_addr #0 {
entry:
  %outlen = alloca i64, align 8
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 1021, %struct.engine_st* noundef null) #9
  %0 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = zext i32 %olen to i64
  store i64 %1, i64* %outlen, align 8, !tbaa !3
  %call1 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call) #9
  %call2 = tail call %struct.evp_md_st* @EVP_md5_sha1() #9
  %call3 = tail call i32 @EVP_PKEY_CTX_set_tls1_prf_md(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_md_st* noundef %call2) #9
  %call4 = tail call i32 @EVP_PKEY_CTX_set1_tls1_prf_secret(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @master_secret, i64 0, i64 0), i32 noundef 48) #9
  %call5 = tail call i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef %seed1, i32 noundef %seed1_len) #9
  %call6 = tail call i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef %seed2, i32 noundef %seed2_len) #9
  %call7 = tail call i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef %seed3, i32 noundef %seed3_len) #9
  %call8 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef %out, i64* noundef nonnull %outlen) #9
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret void
}

declare dso_local i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_tls1_prf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set1_tls1_prf_secret(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_add1_tls1_prf_seed(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare dso_local i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #1

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{i32 0, i32 3}
!10 = !{!11, !4, i64 0}
!11 = !{!"", !4, i64 0, !12, i64 8}
!12 = !{!"int", !5, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !12, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{i64 0, i64 8, !7, i64 8, i64 4, !16, i64 16, i64 8, !7, i64 24, i64 8, !3, i64 32, i64 8, !3}
!19 = distinct !{!19, !15, !20, !21}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!23, !8, i64 0}
!23 = !{!"", !8, i64 0, !4, i64 8}
!24 = !{!23, !4, i64 8}
!25 = !{i64 0, i64 8, !7, i64 8, i64 8, !3}
