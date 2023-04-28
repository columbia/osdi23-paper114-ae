; ModuleID = 'test/servername_test.c'
source_filename = "test/servername_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.PACKET = type { i8*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"test/servername_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"test_servername\00", align 1
@sni_test_fns = internal unnamed_addr constant [3 x i32 ()*] [i32 ()* @client_setup_sni_before_state, i32 ()* @client_setup_sni_after_state, i32 ()* @server_setup_sni], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rbio\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"wbio\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"SSL_connect(con)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"get_sni_from_client_hello(wbio, &hostname)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"dummy-host\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"len = BIO_get_mem_data(bio, (char **)&data)\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"PACKET_buf_init(&pkt, data, len)\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"PACKET_forward(&pkt, SSL3_HM_HEADER_LENGTH)\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"PACKET_forward(&pkt, CLIENT_VERSION_LEN + SSL3_RANDOM_SIZE)\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"PACKET_get_length_prefixed_1(&pkt, &pkt2)\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"PACKET_get_length_prefixed_2(&pkt, &pkt2)\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"PACKET_as_length_prefixed_2(&pkt, &pkt2)\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"PACKET_get_net_2(&pkt2, &type)\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"PACKET_get_length_prefixed_2(&pkt2, &pkt3)\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"PACKET_get_length_prefixed_2(&pkt3, &pkt4)\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"PACKET_remaining(&pkt4)\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"PACKET_get_1(&pkt4, &servname_type)\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"servname_type\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"TLSEXT_NAMETYPE_host_name\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"PACKET_get_length_prefixed_2(&pkt4, &pkt5)\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"PACKET_remaining(&pkt5)\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"TLSEXT_MAXLEN_host_name\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"PACKET_contains_zero_byte(&pkt5)\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"PACKET_strndup(&pkt5, sni)\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1
@.str.36 = private unnamed_addr constant [114 x i8] c"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"SSL_get_servername(serverssl, TLSEXT_NAMETYPE_host_name)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #11
  store i8* %call1, i8** @cert, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call1) #11
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #11
  store i8* %call4, i8** @privkey, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call4) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* noundef nonnull @test_servername, i32 noundef 3, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end8, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_servername(i32 noundef %test) #0 {
entry:
  %idxprom = sext i32 %test to i64
  %arrayidx = getelementptr inbounds [3 x i32 ()*], [3 x i32 ()*]* @sni_test_fns, i64 0, i64 %idxprom
  %0 = load i32 ()*, i32 ()** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 %0() #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_setup_sni_before_state() #0 {
entry:
  %hostname = alloca i8*, align 8
  %0 = bitcast i8** %hostname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %hostname, align 8, !tbaa !3
  %call = tail call %struct.ssl_method_st* @TLS_method() #11
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #11
  %1 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end9

if.end9:                                          ; preds = %entry
  %call10 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #11
  %2 = bitcast %struct.ssl_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %call10, i32 noundef 55, i64 noundef 0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #11
  %call16 = tail call %struct.bio_method_st* @BIO_s_mem() #11
  %call17 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call16) #11
  %call18 = tail call %struct.bio_method_st* @BIO_s_mem() #11
  %call19 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call18) #11
  %3 = bitcast %struct.bio_st* %call17 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %4 = bitcast %struct.bio_st* %call19 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %4) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end27

if.then24:                                        ; preds = %lor.lhs.false, %if.end14
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %call17) #11
  %call26 = tail call i32 @BIO_free(%struct.bio_st* noundef %call19) #11
  br label %end

if.end27:                                         ; preds = %lor.lhs.false
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %call10, %struct.bio_st* noundef %call17, %struct.bio_st* noundef %call19) #11
  %call28 = tail call i32 @SSL_connect(%struct.ssl_st* noundef %call10) #11
  %call29 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call28, i32 noundef 0) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %if.end32

if.end32:                                         ; preds = %if.end27
  %call33 = call fastcc i32 @get_sni_from_client_hello(%struct.bio_st* noundef %call19, i8** noundef nonnull %hostname) #13
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv35) #11
  %tobool37.not = icmp eq i32 %call36, 0
  %.pre = load i8*, i8** %hostname, align 8, !tbaa !3
  br i1 %tobool37.not, label %end, label %if.end39

if.end39:                                         ; preds = %if.end32
  %call40 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %.pre, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #11
  %tobool41.not = icmp ne i32 %call40, 0
  %spec.select = zext i1 %tobool41.not to i32
  br label %end

end:                                              ; preds = %if.end32, %if.end39, %if.end27, %if.end9, %entry, %if.then24
  %5 = phi i8* [ null, %if.end27 ], [ null, %if.then24 ], [ null, %if.end9 ], [ null, %entry ], [ %.pre, %if.end39 ], [ %.pre, %if.end32 ]
  %con.0 = phi %struct.ssl_st* [ %call10, %if.end27 ], [ %call10, %if.then24 ], [ %call10, %if.end9 ], [ null, %entry ], [ %call10, %if.end39 ], [ %call10, %if.end32 ]
  %ret.0 = phi i32 [ 0, %if.end27 ], [ 0, %if.then24 ], [ 0, %if.end9 ], [ 0, %entry ], [ %spec.select, %if.end39 ], [ 0, %if.end32 ]
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 143) #11
  tail call void @SSL_free(%struct.ssl_st* noundef %con.0) #11
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_setup_sni_after_state() #0 {
entry:
  %hostname = alloca i8*, align 8
  %0 = bitcast i8** %hostname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i8* null, i8** %hostname, align 8, !tbaa !3
  %call = tail call %struct.ssl_method_st* @TLS_method() #11
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #11
  %1 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end9

if.end9:                                          ; preds = %entry
  %call10 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #11
  %2 = bitcast %struct.ssl_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = tail call %struct.bio_method_st* @BIO_s_mem() #11
  %call16 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call15) #11
  %call17 = tail call %struct.bio_method_st* @BIO_s_mem() #11
  %call18 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call17) #11
  %3 = bitcast %struct.bio_st* %call16 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %4 = bitcast %struct.bio_st* %call18 to i8*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %4) #11
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end26

if.then23:                                        ; preds = %lor.lhs.false, %if.end14
  %call24 = tail call i32 @BIO_free(%struct.bio_st* noundef %call16) #11
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %call18) #11
  br label %end

if.end26:                                         ; preds = %lor.lhs.false
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %call10, %struct.bio_st* noundef %call16, %struct.bio_st* noundef %call18) #11
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef %call10) #11
  %call27 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %call10, i32 noundef 55, i64 noundef 0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #11
  %call28 = tail call i32 @SSL_connect(%struct.ssl_st* noundef %call10) #11
  %call29 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call28, i32 noundef 0) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %if.end32

if.end32:                                         ; preds = %if.end26
  %call33 = call fastcc i32 @get_sni_from_client_hello(%struct.bio_st* noundef %call18, i8** noundef nonnull %hostname) #13
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv35) #11
  %tobool37.not = icmp eq i32 %call36, 0
  %.pre = load i8*, i8** %hostname, align 8, !tbaa !3
  br i1 %tobool37.not, label %end, label %if.end39

if.end39:                                         ; preds = %if.end32
  %call40 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %.pre, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #11
  %tobool41.not = icmp ne i32 %call40, 0
  %spec.select = zext i1 %tobool41.not to i32
  br label %end

end:                                              ; preds = %if.end32, %if.end39, %if.end26, %if.end9, %entry, %if.then23
  %5 = phi i8* [ null, %if.end26 ], [ null, %if.then23 ], [ null, %if.end9 ], [ null, %entry ], [ %.pre, %if.end39 ], [ %.pre, %if.end32 ]
  %con.0 = phi %struct.ssl_st* [ %call10, %if.end26 ], [ %call10, %if.then23 ], [ %call10, %if.end9 ], [ null, %entry ], [ %call10, %if.end39 ], [ %call10, %if.end32 ]
  %ret.0 = phi i32 [ 0, %if.end26 ], [ 0, %if.then23 ], [ 0, %if.end9 ], [ 0, %entry ], [ %spec.select, %if.end39 ], [ 0, %if.end32 ]
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 196) #11
  tail call void @SSL_free(%struct.ssl_st* noundef %con.0) #11
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @server_setup_sni() #0 {
entry:
  %cctx = alloca %struct.ssl_ctx_st*, align 8
  %sctx = alloca %struct.ssl_ctx_st*, align 8
  %clientssl = alloca %struct.ssl_st*, align 8
  %serverssl = alloca %struct.ssl_st*, align 8
  %0 = bitcast %struct.ssl_ctx_st** %cctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %1 = bitcast %struct.ssl_ctx_st** %sctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_st** %clientssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #12
  store %struct.ssl_st* null, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %3 = bitcast %struct.ssl_st** %serverssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #12
  store %struct.ssl_st* null, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call = tail call %struct.ssl_method_st* @TLS_server_method() #11
  %call1 = tail call %struct.ssl_method_st* @TLS_client_method() #11
  %4 = load i8*, i8** @cert, align 8, !tbaa !3
  %5 = load i8*, i8** @privkey, align 8, !tbaa !3
  %call2 = call i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef null, %struct.ssl_method_st* noundef %call, %struct.ssl_method_st* noundef %call1, i32 noundef 769, i32 noundef 0, %struct.ssl_ctx_st** noundef nonnull %sctx, %struct.ssl_ctx_st** noundef nonnull %cctx, i8* noundef %4, i8* noundef %5) #11
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %call4 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %6, %struct.ssl_ctx_st* noundef %7, %struct.ssl_st** noundef nonnull %serverssl, %struct.ssl_st** noundef nonnull %clientssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #11
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv6) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call9 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %8, i32 noundef 55, i64 noundef 0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #11
  %9 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %10 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  %call10 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %9, %struct.ssl_st* noundef %10, i32 noundef 0) #11
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv12) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %if.end16

if.end16:                                         ; preds = %if.end
  %11 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  %call17 = call i8* @SSL_get_servername(%struct.ssl_st* noundef %11, i32 noundef 0) #11
  %call18 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.39, i64 0, i64 0), i8* noundef %call17) #11
  %tobool19.not = icmp ne i32 %call18, 0
  %spec.select = zext i1 %tobool19.not to i32
  br label %end

end:                                              ; preds = %if.end16, %if.end, %entry, %lor.lhs.false
  %testresult.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end16 ]
  %12 = load %struct.ssl_st*, %struct.ssl_st** %serverssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %12) #11
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clientssl, align 8, !tbaa !3
  call void @SSL_free(%struct.ssl_st* noundef %13) #11
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %14) #11
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %15) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_connect(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_sni_from_client_hello(%struct.bio_st* noundef %bio, i8** nocapture noundef %sni) unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %pkt = alloca %struct.PACKET, align 8
  %pkt2 = alloca %struct.PACKET, align 8
  %pkt3 = alloca %struct.PACKET, align 8
  %pkt4 = alloca %struct.PACKET, align 8
  %pkt5 = alloca %struct.PACKET, align 8
  %servname_type = alloca i32, align 4
  %type = alloca i32, align 4
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %1 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %pkt2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #12
  %4 = bitcast %struct.PACKET* %pkt4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #12
  %5 = bitcast %struct.PACKET* %pkt5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #12
  %6 = bitcast i32* %servname_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12
  store i32 0, i32* %servname_type, align 4, !tbaa !7
  %7 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #12
  store i32 0, i32* %type, align 4, !tbaa !7
  %call = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 16) #11
  %call1 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 16) #11
  %call2 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 16) #11
  %call3 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 16) #11
  %call4 = call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 16) #11
  %call5 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #11
  %call6 = call i32 @test_long_ge(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 noundef %call5, i64 noundef 0) #11
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i8*, i8** %data, align 8, !tbaa !3
  %call7 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %8, i64 noundef %call5) #13
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 5) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 4) #13
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv16) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %pkt, i64 noundef 34) #13
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv22) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #13
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv28) #11
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #13
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv34) #11
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #13
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv40) #11
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %end, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %call44 = call fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %pkt2) #13
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv46) #11
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %end, label %while.cond

while.cond:                                       ; preds = %lor.lhs.false43, %if.end63
  %call49 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt2) #13
  %tobool50.not = icmp eq i64 %call49, 0
  br i1 %tobool50.not, label %end, label %while.body

while.body:                                       ; preds = %while.cond
  %call51 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt2, i32* noundef nonnull %type) #13
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv53) #11
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %while.body
  %call57 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt2, %struct.PACKET* noundef nonnull %pkt3) #13
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv59) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %end, label %if.end63

if.end63:                                         ; preds = %lor.lhs.false56
  %9 = load i32, i32* %type, align 4, !tbaa !7
  %cmp64 = icmp eq i32 %9, 0
  br i1 %cmp64, label %if.then66, label %while.cond, !llvm.loop !9

if.then66:                                        ; preds = %if.end63
  %call67 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt3, %struct.PACKET* noundef nonnull %pkt4) #13
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv69) #11
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %end, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then66
  %call73 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt4) #13
  %conv74 = trunc i64 %call73 to i32
  %call75 = call i32 @test_uint_ne(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv74, i32 noundef 0) #11
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %end, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false72
  %call78 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt4, i32* noundef nonnull %servname_type) #13
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv80) #11
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %end, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false77
  %10 = load i32, i32* %servname_type, align 4, !tbaa !7
  %call84 = call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 noundef %10, i32 noundef 0) #11
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %end, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %call87 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt4, %struct.PACKET* noundef nonnull %pkt5) #13
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv89) #11
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %end, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %call93 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt5) #13
  %conv94 = trunc i64 %call93 to i32
  %call95 = call i32 @test_uint_le(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv94, i32 noundef 255) #11
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %end, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false92
  %call98 = call fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* noundef nonnull %pkt5) #13
  %cmp99 = icmp ne i32 %call98, 0
  %conv100 = zext i1 %cmp99 to i32
  %call101 = call i32 @test_false(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv100) #11
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %end, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %lor.lhs.false97
  %call104 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %pkt5, i8** noundef %sni) #13
  %cmp105 = icmp ne i32 %call104, 0
  %conv106 = zext i1 %cmp105 to i32
  %call107 = call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv106) #11
  %tobool108.not = icmp ne i32 %call107, 0
  %spec.select = zext i1 %tobool108.not to i32
  br label %end

end:                                              ; preds = %while.cond, %while.body, %lor.lhs.false56, %lor.lhs.false103, %if.then66, %lor.lhs.false72, %lor.lhs.false77, %lor.lhs.false83, %lor.lhs.false86, %lor.lhs.false92, %lor.lhs.false97, %entry, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false37, %lor.lhs.false43
  %ret.0 = phi i32 [ 0, %lor.lhs.false97 ], [ 0, %lor.lhs.false92 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false83 ], [ 0, %lor.lhs.false77 ], [ 0, %lor.lhs.false72 ], [ 0, %if.then66 ], [ 0, %lor.lhs.false43 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false103 ], [ 0, %lor.lhs.false56 ], [ 0, %while.body ], [ 0, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i32 %ret.0
}

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_long_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #4 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #6 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_as_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #6 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #12
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !7
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %tmp) #13
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !15
  %5 = load i8*, i8** %data, align 8, !tbaa !3
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !14
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_uint_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @PACKET_contains_zero_byte(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !14
  %call = tail call i8* @memchr(i8* noundef %0, i32 noundef 0, i64 noundef %1) #14
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_strndup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 noundef 450) #11
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !11
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %call1 = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 noundef 453) #11
  store i8* %call1, i8** %data, align 8, !tbaa !3
  %cmp = icmp ne i8* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !11
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !14
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  store i8* %0, i8** %data, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !7
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !17
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #5 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !11
  %1 = load i8, i8* %0, align 1, !tbaa !17
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare dso_local i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef, %struct.ssl_method_st* noundef, %struct.ssl_method_st* noundef, i32 noundef, i32 noundef, %struct.ssl_ctx_st** noundef, %struct.ssl_ctx_st** noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #1

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @SSL_get_servername(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !4, i64 0}
!12 = !{!"", !4, i64 0, !13, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{i64 0, i64 8, !3, i64 8, i64 8, !16}
!16 = !{!13, !13, i64 0}
!17 = !{!5, !5, i64 0}
