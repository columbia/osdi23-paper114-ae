; ModuleID = 'test/helpers/ssltestlib.c'
source_filename = "test/helpers/ssltestlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_st = type opaque
%struct.stack_st_MEMPACKET = type opaque
%struct.mempacket_st = type { i8*, i32, i32, i32 }
%struct.stack_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque

@method_tls_dump = internal unnamed_addr global %struct.bio_method_st* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"TLS dump filter\00", align 1
@meth_mem = internal unnamed_addr global %struct.bio_method_st* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"test/helpers/ssltestlib.c\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"meth_mem = BIO_meth_new(BIO_TYPE_MEMPACKET_TEST, \22Mem Packet Test\22)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Mem Packet Test\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"BIO_meth_set_write(meth_mem, mempacket_test_write)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"BIO_meth_set_read(meth_mem, mempacket_test_read)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"BIO_meth_set_puts(meth_mem, mempacket_test_puts)\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"BIO_meth_set_gets(meth_mem, mempacket_test_gets)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"BIO_meth_set_ctrl(meth_mem, mempacket_test_ctrl)\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"BIO_meth_set_create(meth_mem, mempacket_test_new)\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"BIO_meth_set_destroy(meth_mem, mempacket_test_free)\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"allpkts[i] = OPENSSL_malloc(sizeof(*thispkt))\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"thispkt->data = OPENSSL_malloc(inl)\00", align 1
@meth_always_retry = internal unnamed_addr global %struct.bio_method_st* null, align 8
@.str.13 = private unnamed_addr constant [72 x i8] c"meth_always_retry = BIO_meth_new(BIO_TYPE_ALWAYS_RETRY, \22Always Retry\22)\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Always Retry\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"BIO_meth_set_write(meth_always_retry, always_retry_write)\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"BIO_meth_set_read(meth_always_retry, always_retry_read)\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"BIO_meth_set_puts(meth_always_retry, always_retry_puts)\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"BIO_meth_set_gets(meth_always_retry, always_retry_gets)\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"BIO_meth_set_ctrl(meth_always_retry, always_retry_ctrl)\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"BIO_meth_set_create(meth_always_retry, always_retry_new)\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"BIO_meth_set_destroy(meth_always_retry, always_retry_free)\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"serverctx = SSL_CTX_new_ex(libctx, NULL, sm)\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"SSL_CTX_set_options(serverctx, SSL_OP_ALLOW_CLIENT_RENEGOTIATION)\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"clientctx = SSL_CTX_new_ex(libctx, NULL, cm)\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"SSL_CTX_set_min_proto_version(serverctx, min_proto_version)\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"SSL_CTX_set_max_proto_version(serverctx, max_proto_version)\00", align 1
@.str.27 = private unnamed_addr constant [60 x i8] c"SSL_CTX_set_min_proto_version(clientctx, min_proto_version)\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"SSL_CTX_set_max_proto_version(clientctx, max_proto_version)\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"SSL_CTX_use_certificate_file(serverctx, certfile, SSL_FILETYPE_PEM)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"SSL_CTX_use_PrivateKey_file(serverctx, privkeyfile, SSL_FILETYPE_PEM)\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"SSL_CTX_check_private_key(serverctx)\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"serverssl = SSL_new(serverctx)\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"clientssl = SSL_new(clientctx)\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"s_to_c_bio = BIO_new(bio_s_mempacket_test())\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"c_to_s_bio = BIO_new(bio_s_mempacket_test())\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"s_to_c_bio = BIO_new(BIO_s_mem())\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"c_to_s_bio = BIO_new(BIO_s_mem())\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"s_to_c_bio = BIO_push(s_to_c_fbio, s_to_c_bio)\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"c_to_s_bio = BIO_push(c_to_s_fbio, c_to_s_bio)\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"SSL_connect() failed %d, %d\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"SSL_accept() failed %d, %d\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Unexpected SSL_read() success!\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"No progress made\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"readbytes\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"SSL_get_error(clientssl, 0)\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"SSL_ERROR_WANT_READ\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"---- START OF PACKET ----\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"*---- START OF RECORD ----\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"*---- RECORD TRUNCATED ----\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"** Record Content-type: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"** Record Version: %02x%02x\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"** Record Epoch: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"** Record Sequence: \00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"\0A** Record Length: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"**---- START OF HANDSHAKE MESSAGE FRAGMENT ----\0A\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"**---- HANDSHAKE MESSAGE FRAGMENT ENCRYPTED ----\0A\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"**---- HANDSHAKE MESSAGE FRAGMENT TRUNCATED ----\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"*** Message Type: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"*** Message Length: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"*** Message sequence: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"*** Message Fragment offset: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"*** Message Fragment len: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"***---- HANDSHAKE MESSAGE FRAGMENT INVALID ----\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"**---- END OF HANDSHAKE MESSAGE FRAGMENT ----\0A\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"*---- END OF RECORD ----\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"---- END OF PACKET ----\0A\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.71 = private unnamed_addr constant [35 x i8] c"ctx = OPENSSL_zalloc(sizeof(*ctx))\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"ctx->pkts = sk_MEMPACKET_new_null()\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bio_method_st* @bio_f_tls_dump_filter() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_meth_new(i32 noundef 640, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6
  store %struct.bio_method_st* %call, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.bio_method_st* %call, null
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @BIO_meth_set_write(%struct.bio_method_st* noundef nonnull %call, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @tls_dump_write) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %call4 = tail call i32 @BIO_meth_set_read(%struct.bio_method_st* noundef %1, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @tls_dump_read) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %call7 = tail call i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef %2, i32 (%struct.bio_st*, i8*)* noundef nonnull @tls_dump_puts) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %call10 = tail call i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef %3, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @tls_dump_gets) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %call13 = tail call i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef %4, i64 (%struct.bio_st*, i32, i64, i8*)* noundef nonnull @tls_dump_ctrl) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %call16 = tail call i32 @BIO_meth_set_create(%struct.bio_method_st* noundef %5, i32 (%struct.bio_st*)* noundef nonnull @tls_dump_new) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  %call19 = tail call i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef %6, i32 (%struct.bio_st*)* noundef nonnull @tls_dump_free) #6
  %tobool20.not = icmp eq i32 %call19, 0
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8
  %spec.select = select i1 %tobool20.not, %struct.bio_method_st* null, %struct.bio_method_st* %.pre
  br label %return

return:                                           ; preds = %lor.lhs.false18, %entry, %if.then, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12, %lor.lhs.false15
  %retval.0 = phi %struct.bio_method_st* [ null, %lor.lhs.false15 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ %0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  ret %struct.bio_method_st* %retval.0
}

declare dso_local %struct.bio_method_st* @BIO_meth_new(i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_meth_set_write(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_dump_write(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl) #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #6
  %call1 = tail call i32 @BIO_write(%struct.bio_st* noundef %call, i8* noundef %in, i32 noundef %inl) #6
  tail call fastcc void @copy_flags(%struct.bio_st* noundef %bio) #7
  ret i32 %call1
}

declare dso_local i32 @BIO_meth_set_read(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_dump_read(%struct.bio_st* noundef %bio, i8* noundef %out, i32 noundef %outl) #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #6
  %call1 = tail call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef %out, i32 noundef %outl) #6
  tail call fastcc void @copy_flags(%struct.bio_st* noundef %bio) #7
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @dump_data(i8* noundef %out, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call1
}

declare dso_local i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_dump_puts(%struct.bio_st* noundef %bio, i8* noundef %str) #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @tls_dump_write(%struct.bio_st* noundef %bio, i8* noundef %str, i32 noundef %conv) #7
  ret i32 %call1
}

declare dso_local i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef, i32 (%struct.bio_st*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @tls_dump_gets(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %buf, i32 noundef %size) #2 {
entry:
  ret i32 -1
}

declare dso_local i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef, i64 (%struct.bio_st*, i32, i64, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @tls_dump_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #6
  %cmp = icmp eq %struct.bio_st* %call, null
  %cond = icmp eq i32 %cmd, 12
  %or.cond = or i1 %cond, %cmp
  br i1 %or.cond, label %cleanup, label %sw.default

sw.default:                                       ; preds = %entry
  %call1 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call1, %sw.default ]
  ret i64 %retval.0
}

declare dso_local i32 @BIO_meth_set_create(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_dump_new(%struct.bio_st* noundef %bio) #0 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #6
  ret i32 1
}

declare dso_local i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef, i32 (%struct.bio_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_dump_free(%struct.bio_st* noundef %bio) #0 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bio_f_tls_dump_filter_free() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @method_tls_dump, align 8, !tbaa !3
  tail call void @BIO_meth_free(%struct.bio_method_st* noundef %0) #6
  ret void
}

declare dso_local void @BIO_meth_free(%struct.bio_method_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bio_method_st* @bio_s_mempacket_test() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_meth_new(i32 noundef 129, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #6
  store %struct.bio_method_st* %call, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %1 = bitcast %struct.bio_method_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call2 = tail call i32 @BIO_meth_set_write(%struct.bio_method_st* noundef %2, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @mempacket_test_write) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call7 = tail call i32 @BIO_meth_set_read(%struct.bio_method_st* noundef %3, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @mempacket_test_read) #6
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv9) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call13 = tail call i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef %4, i32 (%struct.bio_st*, i8*)* noundef nonnull @mempacket_test_puts) #6
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv15) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call19 = tail call i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef %5, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @mempacket_test_gets) #6
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv21) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call25 = tail call i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef %6, i64 (%struct.bio_st*, i32, i64, i8*)* noundef nonnull @mempacket_test_ctrl) #6
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv27) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %7 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call31 = tail call i32 @BIO_meth_set_create(%struct.bio_method_st* noundef %7, i32 (%struct.bio_st*)* noundef nonnull @mempacket_test_new) #6
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv33) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %return, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %8 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  %call37 = tail call i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef %8, i32 (%struct.bio_st*)* noundef nonnull @mempacket_test_free) #6
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv39) #6
  %tobool41.not = icmp eq i32 %call40, 0
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8
  %spec.select = select i1 %tobool41.not, %struct.bio_method_st* null, %struct.bio_method_st* %.pre
  br label %return

return:                                           ; preds = %lor.lhs.false36, %entry, %if.then, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false30
  %retval.0 = phi %struct.bio_method_st* [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ %0, %entry ], [ %spec.select, %lor.lhs.false36 ]
  ret %struct.bio_method_st* %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @mempacket_test_write(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl) #0 {
entry:
  %call = tail call i32 @mempacket_test_inject(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl, i32 noundef -1, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mempacket_test_read(%struct.bio_st* noundef %bio, i8* noundef %out, i32 noundef %outl) #0 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #6
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #6
  %pkts = bitcast i8* %call to %struct.stack_st_MEMPACKET**
  %0 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call1 = tail call fastcc %struct.mempacket_st* @sk_MEMPACKET_value(%struct.stack_st_MEMPACKET* noundef %0, i32 noundef 0) #7
  %cmp = icmp eq %struct.mempacket_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call1, i64 0, i32 2
  %1 = load i32, i32* %num, align 4, !tbaa !10
  %currpkt = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %currpkt to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !12
  %cmp2.not = icmp eq i32 %1, %3
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  tail call fastcc void @sk_MEMPACKET_shift(%struct.stack_st_MEMPACKET* noundef %4) #7
  %5 = load i32, i32* %2, align 8, !tbaa !12
  %inc = add i32 %5, 1
  store i32 %inc, i32* %2, align 8, !tbaa !12
  %len6 = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call1, i64 0, i32 1
  %6 = load i32, i32* %len6, align 8, !tbaa !13
  %cmp7 = icmp slt i32 %6, %outl
  %spec.select = select i1 %cmp7, i32 %6, i32 %outl
  %type = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call1, i64 0, i32 3
  %7 = load i32, i32* %type, align 8, !tbaa !14
  %cmp11.not = icmp eq i32 %7, 2
  br i1 %cmp11.not, label %if.end71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %injected = getelementptr inbounds i8, i8* %call, i64 24
  %8 = bitcast i8* %injected to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !15
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false12, label %if.then14

lor.lhs.false12:                                  ; preds = %land.lhs.true
  %droprec = getelementptr inbounds i8, i8* %call, i64 36
  %10 = bitcast i8* %droprec to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !16
  %cmp13 = icmp sgt i32 %11, -1
  %cmp16143 = icmp sgt i32 %6, 0
  %or.cond = select i1 %cmp13, i1 %cmp16143, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %if.end71

if.then14:                                        ; preds = %land.lhs.true
  %cmp16143.old = icmp sgt i32 %6, 0
  br i1 %cmp16143.old, label %for.body.lr.ph, label %if.end71

for.body.lr.ph:                                   ; preds = %lor.lhs.false12, %if.then14
  %data = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call1, i64 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !17
  %epoch22 = getelementptr inbounds i8, i8* %call, i64 8
  %13 = bitcast i8* %epoch22 to i32*
  %currrec = getelementptr inbounds i8, i8* %call, i64 12
  %14 = bitcast i8* %currrec to i32*
  %droprec44 = getelementptr inbounds i8, i8* %call, i64 36
  %15 = bitcast i8* %droprec44 to i32*
  %dropepoch = getelementptr inbounds i8, i8* %call, i64 32
  %16 = bitcast i8* %dropepoch to i32*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end67
  %outl.addr.1149 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %outl.addr.2, %if.end67 ]
  %rem.0145 = phi i32 [ %6, %for.body.lr.ph ], [ %sub70, %if.end67 ]
  %rec.0144 = phi i8* [ %12, %for.body.lr.ph ], [ %rec.1, %if.end67 ]
  %cmp17 = icmp ult i32 %rem.0145, 13
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %for.body
  %arrayidx = getelementptr inbounds i8, i8* %rec.0144, i64 3
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx20 = getelementptr inbounds i8, i8* %rec.0144, i64 4
  %18 = load i8, i8* %arrayidx20, align 1, !tbaa !18
  %conv21 = zext i8 %18 to i32
  %or = or i32 %shl, %conv21
  %19 = load i32, i32* %13, align 8, !tbaa !19
  %cmp23.not = icmp eq i32 %or, %19
  br i1 %cmp23.not, label %if.end19.if.end27_crit_edge, label %if.then25

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  %.pre = load i32, i32* %14, align 4, !tbaa !20
  br label %do.body.preheader

if.then25:                                        ; preds = %if.end19
  store i32 %or, i32* %13, align 8, !tbaa !19
  store i32 0, i32* %14, align 4, !tbaa !20
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end19.if.end27_crit_edge, %if.then25
  %seq.0.ph = phi i32 [ 0, %if.then25 ], [ %.pre, %if.end19.if.end27_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %do.body.preheader ]
  %seq.0 = phi i32 [ %shr, %do.body ], [ %seq.0.ph, %do.body.preheader ]
  %conv29 = trunc i32 %seq.0 to i8
  %20 = sub nsw i64 10, %indvars.iv
  %idxprom = and i64 %20, 4294967295
  %arrayidx30 = getelementptr inbounds i8, i8* %rec.0144, i64 %idxprom
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !18
  %shr = lshr i32 %seq.0, 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp32.not = icmp ult i32 %seq.0, 256
  br i1 %cmp32.not, label %do.end, label %do.body, !llvm.loop !21

do.end:                                           ; preds = %do.body
  %arrayidx34 = getelementptr inbounds i8, i8* %rec.0144, i64 11
  %21 = load i8, i8* %arrayidx34, align 1, !tbaa !18
  %conv35 = zext i8 %21 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %arrayidx37 = getelementptr inbounds i8, i8* %rec.0144, i64 12
  %22 = load i8, i8* %arrayidx37, align 1, !tbaa !18
  %conv38 = zext i8 %22 to i32
  %or39 = or i32 %shl36, %conv38
  %add = add nuw nsw i32 %or39, 13
  %cmp40 = icmp slt i32 %rem.0145, %add
  br i1 %cmp40, label %cleanup, label %if.end43

if.end43:                                         ; preds = %do.end
  %23 = load i32, i32* %15, align 4, !tbaa !16
  %24 = load i32, i32* %14, align 4, !tbaa !20
  %cmp46 = icmp eq i32 %23, %24
  br i1 %cmp46, label %land.lhs.true48, label %if.else

land.lhs.true48:                                  ; preds = %if.end43
  %25 = load i32, i32* %16, align 8, !tbaa !23
  %cmp49 = icmp eq i32 %25, %or
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %land.lhs.true48
  %cmp52 = icmp sgt i32 %rem.0145, %add
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.then51
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %rec.0144, i64 %idx.ext
  %sub55 = sub i32 %rem.0145, %add
  %conv56 = zext i32 %sub55 to i64
  %call57 = tail call i8* @memmove(i8* noundef nonnull %rec.0144, i8* noundef %add.ptr, i64 noundef %conv56) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.then51
  %sub59 = sub i32 %outl.addr.1149, %add
  store i32 -1, i32* %15, align 4, !tbaa !16
  %cmp61 = icmp eq i32 %sub59, 0
  br i1 %cmp61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end58
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #6
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true48, %if.end43
  %idx.ext65 = zext i32 %add to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %rec.0144, i64 %idx.ext65
  br label %if.end67

if.end67:                                         ; preds = %if.end58, %if.then63, %if.else
  %rec.1 = phi i8* [ %rec.0144, %if.then63 ], [ %rec.0144, %if.end58 ], [ %add.ptr66, %if.else ]
  %outl.addr.2 = phi i32 [ 0, %if.then63 ], [ %sub59, %if.end58 ], [ %outl.addr.1149, %if.else ]
  %26 = load i32, i32* %14, align 4, !tbaa !20
  %inc69 = add i32 %26, 1
  store i32 %inc69, i32* %14, align 4, !tbaa !20
  %sub70 = sub i32 %rem.0145, %add
  %cmp16 = icmp sgt i32 %sub70, 0
  br i1 %cmp16, label %for.body, label %if.end71, !llvm.loop !24

if.end71:                                         ; preds = %if.end67, %if.then14, %lor.lhs.false12, %if.end
  %outl.addr.3 = phi i32 [ %spec.select, %lor.lhs.false12 ], [ %spec.select, %if.end ], [ %spec.select, %if.then14 ], [ %outl.addr.2, %if.end67 ]
  %data72 = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call1, i64 0, i32 0
  %27 = load i8*, i8** %data72, align 8, !tbaa !17
  %conv73 = sext i32 %outl.addr.3 to i64
  %call74 = tail call i8* @memcpy(i8* noundef %out, i8* noundef %27, i64 noundef %conv73) #6
  tail call void @mempacket_free(%struct.mempacket_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body, %if.end71, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %outl.addr.3, %if.end71 ], [ -1, %for.body ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mempacket_test_puts(%struct.bio_st* noundef %bio, i8* noundef %str) #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @mempacket_test_write(%struct.bio_st* noundef %bio, i8* noundef %str, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @mempacket_test_gets(%struct.bio_st* nocapture noundef readnone %bio, i8* nocapture noundef readnone %buf, i32 noundef %size) #2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mempacket_test_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* nocapture noundef readnone %ptr) #0 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #6
  switch i32 %cmd, label %sw.epilog [
    i32 2, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb6
    i32 131072, label %sw.bb23
    i32 10, label %sw.bb9
    i32 11, label %sw.bb15
    i32 32768, label %sw.bb16
    i32 65536, label %sw.bb18
    i32 98304, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %pkts = bitcast i8* %call to %struct.stack_st_MEMPACKET**
  %0 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call1 = tail call fastcc i32 @sk_MEMPACKET_num(%struct.stack_st_MEMPACKET* noundef %0) #7
  %cmp = icmp eq i32 %call1, 0
  %1 = zext i1 %cmp to i64
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @BIO_get_shutdown(%struct.bio_st* noundef %bio) #6
  %conv5 = sext i32 %call4 to i64
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %conv7 = trunc i64 %num to i32
  tail call void @BIO_set_shutdown(%struct.bio_st* noundef %bio, i32 noundef %conv7) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %pkts10 = bitcast i8* %call to %struct.stack_st_MEMPACKET**
  %2 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts10, align 8, !tbaa !7
  %call11 = tail call fastcc %struct.mempacket_st* @sk_MEMPACKET_value(%struct.stack_st_MEMPACKET* noundef %2, i32 noundef 0) #7
  %cmp12 = icmp eq %struct.mempacket_st* %call11, null
  br i1 %cmp12, label %sw.epilog, label %if.else

if.else:                                          ; preds = %sw.bb9
  %len = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call11, i64 0, i32 1
  %3 = load i32, i32* %len, align 8, !tbaa !13
  %conv14 = sext i32 %3 to i64
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %conv17 = trunc i64 %num to i32
  %dropepoch = getelementptr inbounds i8, i8* %call, i64 32
  %4 = bitcast i8* %dropepoch to i32*
  store i32 %conv17, i32* %4, align 8, !tbaa !23
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %conv19 = trunc i64 %num to i32
  %droprec = getelementptr inbounds i8, i8* %call, i64 36
  %5 = bitcast i8* %droprec to i32*
  store i32 %conv19, i32* %5, align 4, !tbaa !16
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %droprec21 = getelementptr inbounds i8, i8* %call, i64 36
  %6 = bitcast i8* %droprec21 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !16
  %conv22 = sext i32 %7 to i64
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %conv24 = trunc i64 %num to i32
  %duprec = getelementptr inbounds i8, i8* %call, i64 40
  %8 = bitcast i8* %duprec to i32*
  store i32 %conv24, i32* %8, align 8, !tbaa !25
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb9, %if.else, %sw.bb23, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb15, %sw.bb6, %sw.bb3, %sw.bb
  %ret.0 = phi i64 [ 1, %sw.bb23 ], [ %conv22, %sw.bb20 ], [ 1, %sw.bb18 ], [ 1, %sw.bb16 ], [ 1, %sw.bb15 ], [ %conv14, %if.else ], [ 1, %sw.bb6 ], [ %conv5, %sw.bb3 ], [ %1, %sw.bb ], [ 0, %sw.bb9 ], [ 0, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mempacket_test_new(%struct.bio_st* noundef %bio) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 311) #6
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.71, i64 0, i64 0), i8* noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st_MEMPACKET* @sk_MEMPACKET_new_null() #7
  %pkts = bitcast i8* %call to %struct.stack_st_MEMPACKET**
  store %struct.stack_st_MEMPACKET* %call2, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %0 = bitcast %struct.stack_st_MEMPACKET* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.72, i64 0, i64 0), i8* noundef %0) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 314) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dropepoch = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %dropepoch to i32*
  store i32 0, i32* %1, align 8, !tbaa !23
  %droprec = getelementptr inbounds i8, i8* %call, i64 36
  %2 = bitcast i8* %droprec to i32*
  store i32 -1, i32* %2, align 4, !tbaa !16
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #6
  tail call void @BIO_set_data(%struct.bio_st* noundef %bio, i8* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6, %if.then5
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.then5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mempacket_test_free(%struct.bio_st* noundef %bio) #0 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #6
  %pkts = bitcast i8* %call to %struct.stack_st_MEMPACKET**
  %0 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  tail call fastcc void @sk_MEMPACKET_pop_free(%struct.stack_st_MEMPACKET* noundef %0) #7
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 329) #6
  tail call void @BIO_set_data(%struct.bio_st* noundef %bio, i8* noundef null) #6
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bio_s_mempacket_test_free() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_mem, align 8, !tbaa !3
  tail call void @BIO_meth_free(%struct.bio_method_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mempacket_test_inject(%struct.bio_st* noundef %bio, i8* noundef %in, i32 noundef %inl, i32 noundef %pktnum, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %allpkts = alloca [3 x %struct.mempacket_st*], align 16
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bio) #6
  %0 = bitcast [3 x %struct.mempacket_st*]* %allpkts to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 11
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx1 = getelementptr inbounds i8, i8* %in, i64 12
  %2 = load i8, i8* %arrayidx1, align 1, !tbaa !18
  %conv2 = zext i8 %2 to i64
  %or = or i64 %shl, %conv2
  %add = add nuw nsw i64 %or, 13
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv5 = sext i32 %inl to i64
  %cmp6 = icmp ugt i64 %add, %conv5
  br i1 %cmp6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %cmp11 = icmp eq i64 %add, %conv5
  br i1 %cmp11, label %if.end21, label %if.end17

if.end17:                                         ; preds = %if.end9
  %duprec14 = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %duprec14 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !25
  %cmp15 = icmp sgt i32 %4, 0
  %cmp18 = icmp ne i32 %pktnum, -1
  %or.cond = and i1 %cmp18, %cmp15
  br i1 %or.cond, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end9, %if.end17
  %tobool255 = phi i1 [ %cmp15, %if.end17 ], [ false, %if.end9 ]
  %cmp22 = icmp sgt i32 %pktnum, -1
  %noinject = getelementptr inbounds i8, i8* %call, i64 28
  %5 = bitcast i8* %noinject to i32*
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.end21
  %6 = load i32, i32* %5, align 4, !tbaa !26
  %tobool25.not = icmp eq i32 %6, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.then24
  %injected = getelementptr inbounds i8, i8* %call, i64 24
  %7 = bitcast i8* %injected to i32*
  store i32 1, i32* %7, align 8, !tbaa !15
  br label %if.end30

if.else28:                                        ; preds = %if.end21
  store i32 1, i32* %5, align 4, !tbaa !26
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.end27
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %add
  %sub = sub nsw i64 %conv5, %add
  %conv58 = trunc i64 %sub to i32
  %lastpkt = getelementptr inbounds i8, i8* %call, i64 20
  %8 = bitcast i8* %lastpkt to i32*
  %wide.trip.count = select i1 %tobool255, i64 3, i64 1
  br label %for.body

for.cond71.preheader:                             ; preds = %cond.end
  %9 = bitcast i8* %call34 to %struct.mempacket_st*
  %10 = bitcast i8* %num to i32*
  %pkts = bitcast i8* %call to %struct.stack_st_MEMPACKET**
  %11 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call72268 = tail call fastcc %struct.mempacket_st* @sk_MEMPACKET_value(%struct.stack_st_MEMPACKET* noundef %11, i32 noundef 0) #7
  %cmp73.not269 = icmp eq %struct.mempacket_st* %call72268, null
  br i1 %cmp73.not269, label %for.cond127.preheader, label %for.body75.lr.ph

for.body75.lr.ph:                                 ; preds = %for.cond71.preheader
  %noinject114 = getelementptr inbounds i8, i8* %call, i64 28
  %12 = bitcast i8* %noinject114 to i32*
  br label %for.body75

for.body:                                         ; preds = %if.end30, %cond.end
  %indvars.iv = phi i64 [ 0, %if.end30 ], [ %indvars.iv.next, %cond.end ]
  %call34 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 448) #6
  %arrayidx35 = getelementptr inbounds [3 x %struct.mempacket_st*], [3 x %struct.mempacket_st*]* %allpkts, i64 0, i64 %indvars.iv
  %13 = bitcast %struct.mempacket_st** %arrayidx35 to i8**
  store i8* %call34, i8** %13, align 8, !tbaa !3
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 448, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call34) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %for.body
  %call43 = tail call i8* @CRYPTO_malloc(i64 noundef %conv5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 452) #6
  %data = bitcast i8* %call34 to i8**
  store i8* %call43, i8** %data, align 8, !tbaa !17
  %call44 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end39
  %cmp50 = icmp ne i64 %indvars.iv, 2
  %or.cond170 = select i1 %tobool255, i1 %cmp50, i1 false
  %14 = load i8*, i8** %data, align 8, !tbaa !17
  br i1 %or.cond170, label %if.then52, label %if.else60

if.then52:                                        ; preds = %if.end47
  %call55 = tail call i8* @memcpy(i8* noundef %14, i8* noundef nonnull %add.ptr, i64 noundef %sub) #6
  br label %if.end65

if.else60:                                        ; preds = %if.end47
  %call63 = tail call i8* @memcpy(i8* noundef %14, i8* noundef %in, i64 noundef %conv5) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.then52
  %inl.sink = phi i32 [ %conv58, %if.then52 ], [ %inl, %if.else60 ]
  %15 = getelementptr inbounds i8, i8* %call34, i64 8
  %16 = bitcast i8* %15 to i32*
  store i32 %inl.sink, i32* %16, align 8
  br i1 %cmp22, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end65
  %17 = load i32, i32* %8, align 4, !tbaa !27
  %18 = trunc i64 %indvars.iv to i32
  %add68 = add i32 %17, %18
  br label %cond.end

cond.end:                                         ; preds = %if.end65, %cond.false
  %cond69 = phi i32 [ %add68, %cond.false ], [ %pktnum, %if.end65 ]
  %num = getelementptr inbounds i8, i8* %call34, i64 12
  %19 = bitcast i8* %num to i32*
  store i32 %cond69, i32* %19, align 4, !tbaa !10
  %type70 = getelementptr inbounds i8, i8* %call34, i64 16
  %20 = bitcast i8* %type70 to i32*
  store i32 %type, i32* %20, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond71.preheader, label %for.body, !llvm.loop !28

for.cond127.preheader:                            ; preds = %for.inc124, %for.cond71.preheader
  %cmp140 = icmp slt i32 %pktnum, 0
  br label %for.body132

for.body75:                                       ; preds = %for.body75.lr.ph, %for.inc124
  %call72271 = phi %struct.mempacket_st* [ %call72268, %for.body75.lr.ph ], [ %call72, %for.inc124 ]
  %i.1270 = phi i32 [ 0, %for.body75.lr.ph ], [ %inc125, %for.inc124 ]
  %num76 = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call72271, i64 0, i32 2
  %21 = load i32, i32* %num76, align 4, !tbaa !10
  %22 = load i32, i32* %10, align 4, !tbaa !10
  %cmp78 = icmp ugt i32 %21, %22
  br i1 %cmp78, label %if.then80, label %if.else108

if.then80:                                        ; preds = %for.body75
  %23 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call82 = tail call fastcc i32 @sk_MEMPACKET_insert(%struct.stack_st_MEMPACKET* noundef %23, %struct.mempacket_st* noundef nonnull %9, i32 noundef %i.1270) #7
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %err, label %if.end86

if.end86:                                         ; preds = %if.then80
  br i1 %cmp22, label %cleanup, label %if.end90

if.end90:                                         ; preds = %if.end86
  %24 = load i32, i32* %8, align 4, !tbaa !27
  br label %do.body

do.body:                                          ; preds = %land.lhs.true98, %if.end90
  %storemerge.in = phi i32 [ %24, %if.end90 ], [ %26, %land.lhs.true98 ]
  %i.2 = phi i32 [ %i.1270, %if.end90 ], [ %inc93, %land.lhs.true98 ]
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, i32* %8, align 4, !tbaa !27
  %inc93 = add nuw nsw i32 %i.2, 1
  %25 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call95 = tail call fastcc %struct.mempacket_st* @sk_MEMPACKET_value(%struct.stack_st_MEMPACKET* noundef %25, i32 noundef %inc93) #7
  %cmp96.not = icmp eq %struct.mempacket_st* %call95, null
  br i1 %cmp96.not, label %cleanup, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %do.body
  %num99 = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %call95, i64 0, i32 2
  %26 = load i32, i32* %num99, align 4, !tbaa !10
  %27 = load i32, i32* %8, align 4, !tbaa !27
  %cmp101 = icmp eq i32 %26, %27
  br i1 %cmp101, label %do.body, label %cleanup

if.else108:                                       ; preds = %for.body75
  %cmp111 = icmp eq i32 %21, %22
  br i1 %cmp111, label %if.then113, label %for.inc124

if.then113:                                       ; preds = %if.else108
  %28 = load i32, i32* %12, align 4, !tbaa !26
  %tobool115.not = icmp eq i32 %28, 0
  br i1 %tobool115.not, label %err, label %if.end117

if.end117:                                        ; preds = %if.then113
  %29 = load i32, i32* %8, align 4, !tbaa !27
  %inc119 = add i32 %29, 1
  store i32 %inc119, i32* %8, align 4, !tbaa !27
  %inc121 = add i32 %21, 1
  store i32 %inc121, i32* %10, align 4, !tbaa !10
  br label %for.inc124

for.inc124:                                       ; preds = %if.end117, %if.else108
  %inc125 = add nuw nsw i32 %i.1270, 1
  %30 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call72 = tail call fastcc %struct.mempacket_st* @sk_MEMPACKET_value(%struct.stack_st_MEMPACKET* noundef %30, i32 noundef %inc125) #7
  %cmp73.not = icmp eq %struct.mempacket_st* %call72, null
  br i1 %cmp73.not, label %for.cond127.preheader, label %for.body75, !llvm.loop !29

for.body132:                                      ; preds = %for.cond127.preheader, %for.inc146
  %indvars.iv283 = phi i64 [ 0, %for.cond127.preheader ], [ %indvars.iv.next284, %for.inc146 ]
  %arrayidx134 = getelementptr inbounds [3 x %struct.mempacket_st*], [3 x %struct.mempacket_st*]* %allpkts, i64 0, i64 %indvars.iv283
  %31 = load %struct.mempacket_st*, %struct.mempacket_st** %arrayidx134, align 8, !tbaa !3
  %32 = load %struct.stack_st_MEMPACKET*, %struct.stack_st_MEMPACKET** %pkts, align 8, !tbaa !7
  %call136 = tail call fastcc i32 @sk_MEMPACKET_push(%struct.stack_st_MEMPACKET* noundef %32, %struct.mempacket_st* noundef %31) #7
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %if.end139

if.end139:                                        ; preds = %for.body132
  br i1 %cmp140, label %if.then142, label %for.inc146

if.then142:                                       ; preds = %if.end139
  %33 = load i32, i32* %8, align 4, !tbaa !27
  %inc144 = add i32 %33, 1
  store i32 %inc144, i32* %8, align 4, !tbaa !27
  br label %for.inc146

for.inc146:                                       ; preds = %if.end139, %if.then142
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count
  br i1 %exitcond287.not, label %cleanup, label %for.body132, !llvm.loop !30

err:                                              ; preds = %if.end39, %for.body, %if.then113, %for.body132, %if.then80
  %duprec150 = getelementptr inbounds i8, i8* %call, i64 40
  %34 = bitcast i8* %duprec150 to i32*
  br label %for.body156

for.body156:                                      ; preds = %err, %for.body156
  %indvars.iv288 = phi i64 [ 0, %err ], [ %indvars.iv.next289, %for.body156 ]
  %arrayidx158 = getelementptr inbounds [3 x %struct.mempacket_st*], [3 x %struct.mempacket_st*]* %allpkts, i64 0, i64 %indvars.iv288
  %35 = load %struct.mempacket_st*, %struct.mempacket_st** %arrayidx158, align 8, !tbaa !3
  tail call void @mempacket_free(%struct.mempacket_st* noundef %35) #7
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1
  %36 = load i32, i32* %34, align 8, !tbaa !25
  %cmp151.inv = icmp slt i32 %36, 1
  %cond153 = select i1 %cmp151.inv, i64 1, i64 3
  %cmp154 = icmp ult i64 %indvars.iv.next289, %cond153
  br i1 %cmp154, label %for.body156, label %cleanup, !llvm.loop !31

cleanup:                                          ; preds = %do.body, %land.lhs.true98, %for.inc146, %for.body156, %if.end86, %if.then24, %if.end17, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end17 ], [ -1, %if.then24 ], [ %inl, %if.end86 ], [ -1, %for.body156 ], [ %inl, %for.inc146 ], [ %inl, %land.lhs.true98 ], [ %inl, %do.body ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.mempacket_st* @sk_MEMPACKET_value(%struct.stack_st_MEMPACKET* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MEMPACKET* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.mempacket_st*
  ret %struct.mempacket_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MEMPACKET_insert(%struct.stack_st_MEMPACKET* noundef %sk, %struct.mempacket_st* noundef %ptr, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MEMPACKET* %sk to %struct.stack_st*
  %1 = bitcast %struct.mempacket_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %0, i8* noundef %1, i32 noundef %idx) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MEMPACKET_push(%struct.stack_st_MEMPACKET* noundef %sk, %struct.mempacket_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MEMPACKET* %sk to %struct.stack_st*
  %1 = bitcast %struct.mempacket_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @mempacket_free(%struct.mempacket_st* noundef %pkt) #0 {
entry:
  %data = getelementptr inbounds %struct.mempacket_st, %struct.mempacket_st* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %data, align 8, !tbaa !17
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 260) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.mempacket_st* %pkt to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 261) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.bio_method_st* @bio_s_always_retry() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %cmp = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_meth_new(i32 noundef 130, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #6
  store %struct.bio_method_st* %call, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %1 = bitcast %struct.bio_method_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 604, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call2 = tail call i32 @BIO_meth_set_write(%struct.bio_method_st* noundef %2, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @always_retry_write) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %3 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call7 = tail call i32 @BIO_meth_set_read(%struct.bio_method_st* noundef %3, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @always_retry_read) #6
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 608, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv9) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %return, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call13 = tail call i32 @BIO_meth_set_puts(%struct.bio_method_st* noundef %4, i32 (%struct.bio_st*, i8*)* noundef nonnull @always_retry_puts) #6
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv15) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call19 = tail call i32 @BIO_meth_set_gets(%struct.bio_method_st* noundef %5, i32 (%struct.bio_st*, i8*, i32)* noundef nonnull @always_retry_gets) #6
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 612, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv21) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %return, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call25 = tail call i32 @BIO_meth_set_ctrl(%struct.bio_method_st* noundef %6, i64 (%struct.bio_st*, i32, i64, i8*)* noundef nonnull @always_retry_ctrl) #6
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 614, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv27) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %return, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %7 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call31 = tail call i32 @BIO_meth_set_create(%struct.bio_method_st* noundef %7, i32 (%struct.bio_st*)* noundef nonnull @always_retry_new) #6
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv33) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %return, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %8 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  %call37 = tail call i32 @BIO_meth_set_destroy(%struct.bio_method_st* noundef %8, i32 (%struct.bio_st*)* noundef nonnull @always_retry_free) #6
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 618, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv39) #6
  %tobool41.not = icmp eq i32 %call40, 0
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8
  %spec.select = select i1 %tobool41.not, %struct.bio_method_st* null, %struct.bio_method_st* %.pre
  br label %return

return:                                           ; preds = %lor.lhs.false36, %entry, %if.then, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false30
  %retval.0 = phi %struct.bio_method_st* [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ %0, %entry ], [ %spec.select, %lor.lhs.false36 ]
  ret %struct.bio_method_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @always_retry_write(%struct.bio_st* noundef %bio, i8* nocapture noundef readnone %in, i32 noundef %inl) #0 {
entry:
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 10) #6
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @always_retry_read(%struct.bio_st* noundef %bio, i8* nocapture noundef readnone %out, i32 noundef %outl) #0 {
entry:
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #6
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @always_retry_puts(%struct.bio_st* noundef %bio, i8* nocapture noundef readnone %str) #0 {
entry:
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 10) #6
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @always_retry_gets(%struct.bio_st* noundef %bio, i8* nocapture noundef readnone %buf, i32 noundef %size) #0 {
entry:
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 9) #6
  ret i32 -1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @always_retry_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* nocapture noundef readnone %ptr) #0 {
entry:
  %cond = icmp eq i32 %cmd, 11
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef 10) #6
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @always_retry_new(%struct.bio_st* noundef %bio) #0 {
entry:
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 1) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @always_retry_free(%struct.bio_st* noundef %bio) #0 {
entry:
  tail call void @BIO_set_data(%struct.bio_st* noundef %bio, i8* noundef null) #6
  tail call void @BIO_set_init(%struct.bio_st* noundef %bio, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bio_s_always_retry_free() local_unnamed_addr #0 {
entry:
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** @meth_always_retry, align 8, !tbaa !3
  tail call void @BIO_meth_free(%struct.bio_method_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_ssl_ctx_pair(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.ssl_method_st* noundef %sm, %struct.ssl_method_st* noundef %cm, i32 noundef %min_proto_version, i32 noundef %max_proto_version, %struct.ssl_ctx_st** noundef %sctx, %struct.ssl_ctx_st** noundef %cctx, i8* noundef %certfile, i8* noundef %privkeyfile) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ssl_ctx_st** %sctx, null
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %cmp1.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp1.not, label %if.else, label %if.end10

if.else:                                          ; preds = %if.then
  %call = tail call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef null, %struct.ssl_method_st* noundef %sm) #6
  %1 = bitcast %struct.ssl_ctx_st* %call to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 697, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true105, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call4 = tail call i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef %call, i64 noundef 256) #6
  %cmp5 = icmp ne i64 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 699, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true105, label %if.end10

if.end10:                                         ; preds = %if.then, %lor.lhs.false, %entry
  %serverctx.0 = phi %struct.ssl_ctx_st* [ %call, %lor.lhs.false ], [ null, %entry ], [ %0, %if.then ]
  %cmp11.not = icmp eq %struct.ssl_ctx_st** %cctx, null
  br i1 %cmp11.not, label %if.end24, label %if.then13

if.then13:                                        ; preds = %if.end10
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %cmp14.not = icmp eq %struct.ssl_ctx_st* %2, null
  br i1 %cmp14.not, label %if.else17, label %if.end24

if.else17:                                        ; preds = %if.then13
  %call18 = tail call %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef null, %struct.ssl_method_st* noundef %cm) #6
  %3 = bitcast %struct.ssl_ctx_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 706, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8* noundef %3) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.then13, %if.else17, %if.end10
  %clientctx.0 = phi %struct.ssl_ctx_st* [ %call18, %if.else17 ], [ null, %if.end10 ], [ %2, %if.then13 ]
  %cmp25 = icmp ne %struct.ssl_ctx_st* %serverctx.0, null
  br i1 %cmp25, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.end24
  %cmp27 = icmp sgt i32 %min_proto_version, 0
  br i1 %cmp27, label %land.lhs.true29, label %lor.lhs.false36

land.lhs.true29:                                  ; preds = %land.lhs.true
  %conv30161 = zext i32 %min_proto_version to i64
  %call31 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %serverctx.0, i32 noundef 123, i64 noundef %conv30161, i8* noundef null) #6
  %cmp32 = icmp ne i64 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 725, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv33) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true29, %land.lhs.true
  %cmp37 = icmp sgt i32 %max_proto_version, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.end47

land.lhs.true39:                                  ; preds = %lor.lhs.false36
  %conv40162 = zext i32 %max_proto_version to i64
  %call41 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %serverctx.0, i32 noundef 124, i64 noundef %conv40162, i8* noundef null) #6
  %cmp42 = icmp ne i64 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 728, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %land.lhs.true39, %lor.lhs.false36, %if.end24
  %cmp48.not = icmp eq %struct.ssl_ctx_st* %clientctx.0, null
  br i1 %cmp48.not, label %if.end71, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.end47
  %cmp51 = icmp sgt i32 %min_proto_version, 0
  br i1 %cmp51, label %land.lhs.true53, label %lor.lhs.false60

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %conv54163 = zext i32 %min_proto_version to i64
  %call55 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %clientctx.0, i32 noundef 123, i64 noundef %conv54163, i8* noundef null) #6
  %cmp56 = icmp ne i64 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv57) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %land.lhs.true53, %land.lhs.true50
  %cmp61 = icmp sgt i32 %max_proto_version, 0
  br i1 %cmp61, label %land.lhs.true63, label %if.end71

land.lhs.true63:                                  ; preds = %lor.lhs.false60
  %conv64164 = zext i32 %max_proto_version to i64
  %call65 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %clientctx.0, i32 noundef 124, i64 noundef %conv64164, i8* noundef null) #6
  %cmp66 = icmp ne i64 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 736, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %land.lhs.true63, %lor.lhs.false60, %if.end47
  %cmp75 = icmp ne i8* %certfile, null
  %or.cond = and i1 %cmp75, %cmp25
  %cmp78 = icmp ne i8* %privkeyfile, null
  %or.cond118 = and i1 %cmp78, %or.cond
  br i1 %or.cond118, label %if.then80, label %if.end94

if.then80:                                        ; preds = %if.end71
  %call81 = tail call i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st* noundef nonnull %serverctx.0, i8* noundef nonnull %certfile, i32 noundef 1) #6
  %call82 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call81, i32 noundef 1) #6
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.then80
  %call85 = tail call i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* noundef nonnull %serverctx.0, i8* noundef nonnull %privkeyfile, i32 noundef 1) #6
  %call86 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 744, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call85, i32 noundef 1) #6
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false84
  %call89 = tail call i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* noundef nonnull %serverctx.0) #6
  %call90 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call89, i32 noundef 1) #6
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end94

if.end94:                                         ; preds = %lor.lhs.false88, %if.end71
  br i1 %cmp.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end94
  store %struct.ssl_ctx_st* %serverctx.0, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94
  br i1 %cmp11.not, label %cleanup, label %if.then101

if.then101:                                       ; preds = %if.end98
  store %struct.ssl_ctx_st* %clientctx.0, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  br label %cleanup

err:                                              ; preds = %if.then80, %lor.lhs.false84, %lor.lhs.false88, %land.lhs.true53, %land.lhs.true63, %land.lhs.true29, %land.lhs.true39, %if.else17
  %clientctx.1 = phi %struct.ssl_ctx_st* [ %clientctx.0, %lor.lhs.false88 ], [ %clientctx.0, %lor.lhs.false84 ], [ %clientctx.0, %if.then80 ], [ %clientctx.0, %land.lhs.true63 ], [ %clientctx.0, %land.lhs.true53 ], [ %clientctx.0, %land.lhs.true39 ], [ %clientctx.0, %land.lhs.true29 ], [ %call18, %if.else17 ]
  br i1 %cmp.not, label %if.end109, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %lor.lhs.false, %if.else, %err
  %clientctx.1159 = phi %struct.ssl_ctx_st* [ %clientctx.1, %err ], [ null, %if.else ], [ null, %lor.lhs.false ]
  %serverctx.1158 = phi %struct.ssl_ctx_st* [ %serverctx.0, %err ], [ %call, %if.else ], [ %call, %lor.lhs.false ]
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %sctx, align 8, !tbaa !3
  %cmp106 = icmp eq %struct.ssl_ctx_st* %4, null
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %land.lhs.true105
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %serverctx.1158) #6
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %land.lhs.true105, %err
  %clientctx.1160 = phi %struct.ssl_ctx_st* [ %clientctx.1159, %if.then108 ], [ %clientctx.1159, %land.lhs.true105 ], [ %clientctx.1, %err ]
  %cmp110.not = icmp eq %struct.ssl_ctx_st** %cctx, null
  br i1 %cmp110.not, label %cleanup, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.end109
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %cctx, align 8, !tbaa !3
  %cmp113 = icmp eq %struct.ssl_ctx_st* %5, null
  br i1 %cmp113, label %if.then115, label %cleanup

if.then115:                                       ; preds = %land.lhs.true112
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %clientctx.1160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %land.lhs.true112, %if.then115, %if.end98, %if.then101
  %retval.0 = phi i32 [ 1, %if.then101 ], [ 1, %if.end98 ], [ 0, %if.then115 ], [ 0, %land.lhs.true112 ], [ 0, %if.end109 ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_CTX_set_options(%struct.ssl_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_check_private_key(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %serverctx, %struct.ssl_ctx_st* noundef %clientctx, %struct.ssl_st** nocapture noundef %sssl, %struct.ssl_st** nocapture noundef %cssl, %struct.bio_st* noundef %s_to_c_fbio, %struct.bio_st* noundef %c_to_s_fbio) local_unnamed_addr #0 {
entry:
  %0 = load %struct.ssl_st*, %struct.ssl_st** %sssl, align 8, !tbaa !3
  %cmp.not = icmp eq %struct.ssl_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.end3

if.else:                                          ; preds = %entry
  %call = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %serverctx) #6
  %1 = bitcast %struct.ssl_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 883, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %error, label %if.end3

if.end3:                                          ; preds = %entry, %if.else
  %serverssl.0 = phi %struct.ssl_st* [ %call, %if.else ], [ %0, %entry ]
  %2 = load %struct.ssl_st*, %struct.ssl_st** %cssl, align 8, !tbaa !3
  %cmp4.not = icmp eq %struct.ssl_st* %2, null
  br i1 %cmp4.not, label %if.else6, label %if.end12

if.else6:                                         ; preds = %if.end3
  %call7 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %clientctx) #6
  %3 = bitcast %struct.ssl_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 887, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %error, label %if.end12

if.end12:                                         ; preds = %if.end3, %if.else6
  %clientssl.0 = phi %struct.ssl_st* [ %call7, %if.else6 ], [ %2, %if.end3 ]
  %call13 = tail call i32 @SSL_is_dtls(%struct.ssl_st* noundef %clientssl.0) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else26, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call %struct.bio_method_st* @bio_s_mempacket_test() #7
  %call17 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call16) #6
  %4 = bitcast %struct.bio_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 891, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0), i8* noundef %4) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %error, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %call20 = tail call %struct.bio_method_st* @bio_s_mempacket_test() #7
  %call21 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call20) #6
  %5 = bitcast %struct.bio_st* %call21 to i8*
  %call22 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 892, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i64 0, i64 0), i8* noundef %5) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %error, label %if.end38

if.else26:                                        ; preds = %if.end12
  %call27 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call28 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call27) #6
  %6 = bitcast %struct.bio_st* %call28 to i8*
  %call29 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 895, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0), i8* noundef %6) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %error, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.else26
  %call32 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call33 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call32) #6
  %7 = bitcast %struct.bio_st* %call33 to i8*
  %call34 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 896, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i8* noundef %7) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %error, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false31, %lor.lhs.false
  %s_to_c_bio.0 = phi %struct.bio_st* [ %call17, %lor.lhs.false ], [ %call28, %lor.lhs.false31 ]
  %c_to_s_bio.0 = phi %struct.bio_st* [ %call21, %lor.lhs.false ], [ %call33, %lor.lhs.false31 ]
  %cmp39.not = icmp eq %struct.bio_st* %s_to_c_fbio, null
  br i1 %cmp39.not, label %if.end44, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end38
  %call40 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %s_to_c_fbio, %struct.bio_st* noundef %s_to_c_bio.0) #6
  %8 = bitcast %struct.bio_st* %call40 to i8*
  %call41 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 901, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i64 0, i64 0), i8* noundef %8) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %error, label %if.end44

if.end44:                                         ; preds = %land.lhs.true, %if.end38
  %s_to_c_bio.1 = phi %struct.bio_st* [ %call40, %land.lhs.true ], [ %s_to_c_bio.0, %if.end38 ]
  %cmp45.not = icmp eq %struct.bio_st* %c_to_s_fbio, null
  br i1 %cmp45.not, label %if.end51, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end44
  %call47 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %c_to_s_fbio, %struct.bio_st* noundef %c_to_s_bio.0) #6
  %9 = bitcast %struct.bio_st* %call47 to i8*
  %call48 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 904, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i8* noundef %9) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %error, label %if.end51

if.end51:                                         ; preds = %land.lhs.true46, %if.end44
  %c_to_s_bio.1 = phi %struct.bio_st* [ %call47, %land.lhs.true46 ], [ %c_to_s_bio.0, %if.end44 ]
  %call52 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %s_to_c_bio.1, i32 noundef 130, i64 noundef -1, i8* noundef null) #6
  %call53 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %c_to_s_bio.1, i32 noundef 130, i64 noundef -1, i8* noundef null) #6
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %serverssl.0, %struct.bio_st* noundef %c_to_s_bio.1, %struct.bio_st* noundef %s_to_c_bio.1) #6
  %call54 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef %s_to_c_bio.1) #6
  %call55 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef %c_to_s_bio.1) #6
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %clientssl.0, %struct.bio_st* noundef %s_to_c_bio.1, %struct.bio_st* noundef %c_to_s_bio.1) #6
  store %struct.ssl_st* %serverssl.0, %struct.ssl_st** %sssl, align 8, !tbaa !3
  store %struct.ssl_st* %clientssl.0, %struct.ssl_st** %cssl, align 8, !tbaa !3
  br label %cleanup

error:                                            ; preds = %land.lhs.true46, %land.lhs.true, %if.else26, %lor.lhs.false31, %if.then15, %lor.lhs.false, %if.else6, %if.else
  %serverssl.1 = phi %struct.ssl_st* [ %serverssl.0, %land.lhs.true46 ], [ %serverssl.0, %land.lhs.true ], [ %serverssl.0, %lor.lhs.false ], [ %serverssl.0, %if.then15 ], [ %serverssl.0, %lor.lhs.false31 ], [ %serverssl.0, %if.else26 ], [ %serverssl.0, %if.else6 ], [ %call, %if.else ]
  %clientssl.1 = phi %struct.ssl_st* [ %clientssl.0, %land.lhs.true46 ], [ %clientssl.0, %land.lhs.true ], [ %clientssl.0, %lor.lhs.false ], [ %clientssl.0, %if.then15 ], [ %clientssl.0, %lor.lhs.false31 ], [ %clientssl.0, %if.else26 ], [ %call7, %if.else6 ], [ null, %if.else ]
  %s_to_c_bio.2 = phi %struct.bio_st* [ %s_to_c_bio.1, %land.lhs.true46 ], [ %call40, %land.lhs.true ], [ %call17, %lor.lhs.false ], [ %call17, %if.then15 ], [ %call28, %lor.lhs.false31 ], [ %call28, %if.else26 ], [ null, %if.else6 ], [ null, %if.else ]
  %c_to_s_bio.2 = phi %struct.bio_st* [ %call47, %land.lhs.true46 ], [ %c_to_s_bio.0, %land.lhs.true ], [ %call21, %lor.lhs.false ], [ null, %if.then15 ], [ %call33, %lor.lhs.false31 ], [ null, %if.else26 ], [ null, %if.else6 ], [ null, %if.else ]
  tail call void @SSL_free(%struct.ssl_st* noundef %serverssl.1) #6
  tail call void @SSL_free(%struct.ssl_st* noundef %clientssl.1) #6
  %call56 = tail call i32 @BIO_free(%struct.bio_st* noundef %s_to_c_bio.2) #6
  %call57 = tail call i32 @BIO_free(%struct.bio_st* noundef %c_to_s_bio.2) #6
  %call58 = tail call i32 @BIO_free(%struct.bio_st* noundef %s_to_c_fbio) #6
  %call59 = tail call i32 @BIO_free(%struct.bio_st* noundef %c_to_s_fbio) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end51
  %retval.0 = phi i32 [ 1, %if.end51 ], [ 0, %error ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_is_dtls(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_bare_ssl_connection(%struct.ssl_st* noundef %serverssl, %struct.ssl_st* noundef %clientssl, i32 noundef %want, i32 noundef %read) local_unnamed_addr #0 {
entry:
  %buf = alloca [20 x i8], align 16
  %call = tail call i32 @SSL_is_dtls(%struct.ssl_st* noundef %serverssl) #6
  %cmp11.not = icmp eq i32 %want, 1
  %cmp15.not = icmp ne i32 %want, 0
  %tobool56 = icmp ne i32 %call, 0
  %tobool58 = icmp ne i32 %read, 0
  %or.cond106 = and i1 %tobool58, %tobool56
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %retc.0 = phi i32 [ -1, %entry ], [ %retc.1.lcssa193, %do.cond ]
  %rets.0 = phi i32 [ -1, %entry ], [ %rets.1.lcssa207, %do.cond ]
  %abortctr.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond ]
  %clienterr.0 = phi i32 [ 0, %entry ], [ %clienterr.1, %do.cond ]
  %servererr.0 = phi i32 [ 0, %entry ], [ %servererr.1, %do.cond ]
  %tobool = icmp eq i32 %clienterr.0, 0
  %cmp166 = icmp slt i32 %retc.0, 1
  %or.cond167 = select i1 %tobool, i1 %cmp166, i1 false
  br i1 %or.cond167, label %while.body, label %if.end14

while.body:                                       ; preds = %do.body, %if.end
  %call2 = call i32 @SSL_connect(%struct.ssl_st* noundef %clientssl) #6
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.end, label %if.end14

if.end:                                           ; preds = %while.body
  %call4 = call i32 @SSL_get_error(%struct.ssl_st* noundef %clientssl, i32 noundef %call2) #6
  switch i32 %call4, label %if.then10 [
    i32 3, label %while.body
    i32 2, label %if.end14
  ]

if.then10:                                        ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 957, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call2, i32 noundef %call4) #6
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @test_openssl_errors() #6
  br label %if.end14

if.end14:                                         ; preds = %while.body, %if.end, %do.body, %if.then10, %if.then12
  %cmp.lcssa197 = phi i1 [ true, %if.then12 ], [ true, %if.then10 ], [ %cmp166, %do.body ], [ %cmp3, %if.end ], [ %cmp3, %while.body ]
  %err.0.lcssa196 = phi i32 [ %call4, %if.then12 ], [ %call4, %if.then10 ], [ 3, %do.body ], [ 3, %while.body ], [ %call4, %if.end ]
  %retc.1.lcssa193 = phi i32 [ %call2, %if.then12 ], [ %call2, %if.then10 ], [ %retc.0, %do.body ], [ %call2, %if.end ], [ %call2, %while.body ]
  %clienterr.1 = phi i32 [ 1, %if.then12 ], [ 1, %if.then10 ], [ %clienterr.0, %do.body ], [ %clienterr.0, %if.end ], [ %clienterr.0, %while.body ]
  %cmp17 = icmp eq i32 %err.0.lcssa196, %want
  %or.cond158 = select i1 %cmp15.not, i1 %cmp17, i1 false
  br i1 %or.cond158, label %cleanup92, label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %if.end14
  %tobool21 = icmp eq i32 %servererr.0, 0
  %cmp23172 = icmp slt i32 %rets.0, 1
  %or.cond101173 = select i1 %tobool21, i1 %cmp23172, i1 false
  br i1 %or.cond101173, label %while.body27, label %if.end45

while.body27:                                     ; preds = %while.cond20.preheader, %if.end32
  %call28 = call i32 @SSL_accept(%struct.ssl_st* noundef %serverssl) #6
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %if.end32, label %if.end45

if.end32:                                         ; preds = %while.body27
  %call31 = call i32 @SSL_get_error(%struct.ssl_st* noundef %serverssl, i32 noundef %call28) #6
  switch i32 %call31, label %if.then41 [
    i32 3, label %while.body27
    i32 4, label %if.end45
    i32 2, label %if.end45
  ]

if.then41:                                        ; preds = %if.end32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 975, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 noundef %call28, i32 noundef %call31) #6
  br i1 %cmp11.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.then41
  call void @test_openssl_errors() #6
  br label %if.end45

if.end45:                                         ; preds = %while.body27, %if.end32, %if.end32, %while.cond20.preheader, %if.then41, %if.then43
  %cmp23.lcssa209 = phi i1 [ true, %if.then43 ], [ true, %if.then41 ], [ %cmp23172, %while.cond20.preheader ], [ false, %while.body27 ], [ true, %if.end32 ], [ true, %if.end32 ]
  %err.2.lcssa208 = phi i32 [ %call31, %if.then43 ], [ %call31, %if.then41 ], [ 3, %while.cond20.preheader ], [ 3, %while.body27 ], [ %call31, %if.end32 ], [ %call31, %if.end32 ]
  %rets.1.lcssa207 = phi i32 [ %call28, %if.then43 ], [ %call28, %if.then41 ], [ %rets.0, %while.cond20.preheader ], [ %call28, %if.end32 ], [ %call28, %if.end32 ], [ %call28, %while.body27 ]
  %servererr.1 = phi i32 [ 1, %if.then43 ], [ 1, %if.then41 ], [ %servererr.0, %while.cond20.preheader ], [ %servererr.0, %if.end32 ], [ %servererr.0, %if.end32 ], [ %servererr.0, %while.body27 ]
  %cmp48 = icmp eq i32 %err.2.lcssa208, %want
  %or.cond160 = select i1 %cmp15.not, i1 %cmp48, i1 false
  br i1 %or.cond160, label %cleanup92, label %if.end50

if.end50:                                         ; preds = %if.end45
  %tobool51 = icmp ne i32 %clienterr.1, 0
  %tobool53 = icmp ne i32 %servererr.1, 0
  %or.cond105 = select i1 %tobool51, i1 %tobool53, i1 false
  br i1 %or.cond105, label %cleanup92, label %if.end55

if.end55:                                         ; preds = %if.end50
  br i1 %or.cond106, label %if.then59, label %if.end79

if.then59:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #9
  %cmp60 = icmp sgt i32 %rets.1.lcssa207, 0
  %or.cond107 = select i1 %cmp60, i1 %cmp.lcssa197, i1 false
  br i1 %or.cond107, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.then59
  %call64 = call i32 @SSL_read(%struct.ssl_st* noundef %serverssl, i8* noundef nonnull %0, i32 noundef 20) #6
  %cmp65 = icmp sgt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %cleanup

if.then66:                                        ; preds = %if.then63
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 991, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  br label %cleanup92

if.end68:                                         ; preds = %if.then59
  %cmp69 = icmp sgt i32 %retc.1.lcssa193, 0
  %or.cond108 = select i1 %cmp69, i1 %cmp23.lcssa209, i1 false
  br i1 %or.cond108, label %if.then72, label %cleanup

if.then72:                                        ; preds = %if.end68
  %call74 = call i32 @SSL_read(%struct.ssl_st* noundef %clientssl, i8* noundef nonnull %0, i32 noundef 20) #6
  %cmp75 = icmp sgt i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %cleanup

if.then76:                                        ; preds = %if.then72
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  br label %cleanup92

cleanup:                                          ; preds = %if.then63, %if.end68, %if.then72
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  br label %if.end79

if.end79:                                         ; preds = %cleanup, %if.end55
  %inc = add nuw nsw i32 %abortctr.0, 1
  %cmp80 = icmp eq i32 %inc, 1000000
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end79
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1004, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0)) #6
  br label %cleanup92

if.end82:                                         ; preds = %if.end79
  %cmp85 = icmp ult i32 %abortctr.0, 50
  %or.cond109 = select i1 %tobool56, i1 %cmp85, i1 false
  %rem = urem i32 %inc, 10
  %cmp87 = icmp eq i32 %rem, 0
  %or.cond162 = select i1 %or.cond109, i1 %cmp87, i1 false
  br i1 %or.cond162, label %if.then88, label %do.cond

if.then88:                                        ; preds = %if.end82
  call fastcc void @ossl_sleep() #7
  br label %do.cond

do.cond:                                          ; preds = %if.end82, %if.then88
  %1 = select i1 %cmp.lcssa197, i1 true, i1 %cmp23.lcssa209
  br i1 %1, label %do.body, label %cleanup92, !llvm.loop !32

cleanup92:                                        ; preds = %do.cond, %if.end50, %if.end45, %if.end14, %if.then66, %if.then76, %if.then81
  %retval.3 = phi i32 [ 0, %if.then81 ], [ 0, %if.then76 ], [ 0, %if.then66 ], [ 1, %do.cond ], [ 0, %if.end50 ], [ 0, %if.end45 ], [ 0, %if.end14 ]
  ret i32 %retval.3
}

declare dso_local i32 @SSL_connect(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_openssl_errors() local_unnamed_addr #1

declare dso_local i32 @SSL_accept(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sleep() unnamed_addr #0 {
entry:
  %call = tail call i32 @usleep(i32 noundef 50000) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef %serverssl, %struct.ssl_st* noundef %clientssl, i32 noundef %want) local_unnamed_addr #0 {
entry:
  %buf = alloca i8, align 1
  %readbytes = alloca i64, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %buf) #9
  %0 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @create_bare_ssl_connection(%struct.ssl_st* noundef %serverssl, %struct.ssl_st* noundef %clientssl, i32 noundef %want, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %call1 = call i32 @SSL_read_ex(%struct.ssl_st* noundef %clientssl, i8* noundef nonnull %buf, i64 noundef 1, i64* noundef nonnull %readbytes) #6
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body.preheader
  %1 = load i64, i64* %readbytes, align 8, !tbaa !33
  %call4 = call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1040, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i64 noundef %1, i64 noundef 0) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %for.inc

if.else:                                          ; preds = %for.body.preheader
  %call8 = call i32 @SSL_get_error(%struct.ssl_st* noundef %clientssl, i32 noundef 0) #6
  %call9 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1043, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call8, i32 noundef 2) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else
  %call1.1 = call i32 @SSL_read_ex(%struct.ssl_st* noundef %clientssl, i8* noundef nonnull %buf, i64 noundef 1, i64* noundef nonnull %readbytes) #6
  %cmp2.1 = icmp sgt i32 %call1.1, 0
  br i1 %cmp2.1, label %if.then3.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  %call8.1 = call i32 @SSL_get_error(%struct.ssl_st* noundef %clientssl, i32 noundef 0) #6
  %call9.1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1043, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call8.1, i32 noundef 2) #6
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %cleanup, label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  %2 = load i64, i64* %readbytes, align 8, !tbaa !33
  %call4.1 = call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1040, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i64 noundef %2, i64 noundef 0) #6
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %cleanup, label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %if.else.1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.else.1, %if.then3.1, %for.inc.1, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.else ], [ 0, %if.else.1 ], [ 0, %if.then3.1 ], [ 1, %for.inc.1 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %buf) #9
  ret i32 %retval.0
}

declare dso_local i32 @SSL_read_ex(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @shutdown_ssl_connection(%struct.ssl_st* noundef %serverssl, %struct.ssl_st* noundef %clientssl) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef %clientssl) #6
  %call1 = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef %serverssl) #6
  tail call void @SSL_free(%struct.ssl_st* noundef %serverssl) #6
  tail call void @SSL_free(%struct.ssl_st* noundef %clientssl) #6
  ret void
}

declare dso_local i32 @SSL_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @copy_flags(%struct.bio_st* noundef %bio) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %bio) #6
  %call1 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %call, i32 noundef 15) #6
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #6
  tail call void @BIO_set_flags(%struct.bio_st* noundef %bio, i32 noundef %call1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dump_data(i8* nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0)) #6
  %cmp168 = icmp sgt i32 %len, 0
  br i1 %cmp168, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end114
  %rec.0170 = phi i8* [ %add.ptr111, %if.end114 ], [ %data, %entry ]
  %rem.0169 = phi i32 [ %sub112, %if.end114 ], [ %len, %entry ]
  %cmp1.not = icmp eq i32 %rem.0169, %len
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0)) #6
  %cmp4 = icmp ult i32 %rem.0169, 13
  br i1 %cmp4, label %while.end.sink.split, label %if.end7

if.end7:                                          ; preds = %if.end
  %0 = load i8, i8* %rec.0170, align 1, !tbaa !18
  %conv = zext i8 %0 to i32
  %call8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv) #6
  %arrayidx9 = getelementptr inbounds i8, i8* %rec.0170, i64 1
  %1 = load i8, i8* %arrayidx9, align 1, !tbaa !18
  %conv10 = zext i8 %1 to i32
  %arrayidx11 = getelementptr inbounds i8, i8* %rec.0170, i64 2
  %2 = load i8, i8* %arrayidx11, align 1, !tbaa !18
  %conv12 = zext i8 %2 to i32
  %call13 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv10, i32 noundef %conv12) #6
  %arrayidx14 = getelementptr inbounds i8, i8* %rec.0170, i64 3
  %3 = load i8, i8* %arrayidx14, align 1, !tbaa !18
  %conv15 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv15, 8
  %arrayidx16 = getelementptr inbounds i8, i8* %rec.0170, i64 4
  %4 = load i8, i8* %arrayidx16, align 1, !tbaa !18
  %conv17 = zext i8 %4 to i32
  %or = or i32 %shl, %conv17
  %call18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i32 noundef %or) #6
  %call19 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0)) #6
  %arrayidx22 = getelementptr inbounds i8, i8* %rec.0170, i64 5
  %5 = load i8, i8* %arrayidx22, align 1, !tbaa !18
  %conv23 = zext i8 %5 to i32
  %call24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv23) #6
  %arrayidx22.1 = getelementptr inbounds i8, i8* %rec.0170, i64 6
  %6 = load i8, i8* %arrayidx22.1, align 1, !tbaa !18
  %conv23.1 = zext i8 %6 to i32
  %call24.1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv23.1) #6
  %arrayidx22.2 = getelementptr inbounds i8, i8* %rec.0170, i64 7
  %7 = load i8, i8* %arrayidx22.2, align 1, !tbaa !18
  %conv23.2 = zext i8 %7 to i32
  %call24.2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv23.2) #6
  %arrayidx22.3 = getelementptr inbounds i8, i8* %rec.0170, i64 8
  %8 = load i8, i8* %arrayidx22.3, align 1, !tbaa !18
  %conv23.3 = zext i8 %8 to i32
  %call24.3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv23.3) #6
  %arrayidx22.4 = getelementptr inbounds i8, i8* %rec.0170, i64 9
  %9 = load i8, i8* %arrayidx22.4, align 1, !tbaa !18
  %conv23.4 = zext i8 %9 to i32
  %call24.4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv23.4) #6
  %arrayidx22.5 = getelementptr inbounds i8, i8* %rec.0170, i64 10
  %10 = load i8, i8* %arrayidx22.5, align 1, !tbaa !18
  %conv23.5 = zext i8 %10 to i32
  %call24.5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv23.5) #6
  %arrayidx25 = getelementptr inbounds i8, i8* %rec.0170, i64 11
  %11 = load i8, i8* %arrayidx25, align 1, !tbaa !18
  %conv26 = zext i8 %11 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %arrayidx28 = getelementptr inbounds i8, i8* %rec.0170, i64 12
  %12 = load i8, i8* %arrayidx28, align 1, !tbaa !18
  %conv29 = zext i8 %12 to i32
  %or30 = or i32 %shl27, %conv29
  %call31 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i64 0, i64 0), i32 noundef %or30) #6
  %add.ptr = getelementptr inbounds i8, i8* %rec.0170, i64 13
  %sub = add nsw i32 %rem.0169, -13
  %cmp32 = icmp eq i8 %0, 22
  br i1 %cmp32, label %if.then34, label %if.end105

if.then34:                                        ; preds = %if.end7
  %call35 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i64 0, i64 0)) #6
  %cmp36.not = icmp eq i32 %or, 0
  br i1 %cmp36.not, label %if.else, label %if.end105.sink.split

if.else:                                          ; preds = %if.then34
  %cmp40 = icmp slt i32 %rem.0169, 25
  %cmp42 = icmp ult i32 %or30, 12
  %or.cond = or i1 %cmp40, %cmp42
  br i1 %or.cond, label %if.end105.sink.split, label %if.else46

if.else46:                                        ; preds = %if.else
  %13 = load i8, i8* %add.ptr, align 1, !tbaa !18
  %conv48 = zext i8 %13 to i32
  %call49 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv48) #6
  %arrayidx50 = getelementptr inbounds i8, i8* %rec.0170, i64 14
  %14 = load i8, i8* %arrayidx50, align 1, !tbaa !18
  %conv51 = zext i8 %14 to i32
  %shl52 = shl nuw nsw i32 %conv51, 16
  %arrayidx53 = getelementptr inbounds i8, i8* %rec.0170, i64 15
  %15 = load i8, i8* %arrayidx53, align 1, !tbaa !18
  %conv54 = zext i8 %15 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or56 = or i32 %shl55, %shl52
  %arrayidx57 = getelementptr inbounds i8, i8* %rec.0170, i64 16
  %16 = load i8, i8* %arrayidx57, align 1, !tbaa !18
  %conv58 = zext i8 %16 to i32
  %or59 = or i32 %or56, %conv58
  %call60 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i32 noundef %or59) #6
  %arrayidx61 = getelementptr inbounds i8, i8* %rec.0170, i64 17
  %17 = load i8, i8* %arrayidx61, align 1, !tbaa !18
  %conv62 = zext i8 %17 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %arrayidx64 = getelementptr inbounds i8, i8* %rec.0170, i64 18
  %18 = load i8, i8* %arrayidx64, align 1, !tbaa !18
  %conv65 = zext i8 %18 to i32
  %or66 = or i32 %shl63, %conv65
  %call67 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0), i32 noundef %or66) #6
  %arrayidx68 = getelementptr inbounds i8, i8* %rec.0170, i64 19
  %19 = load i8, i8* %arrayidx68, align 1, !tbaa !18
  %conv69 = zext i8 %19 to i32
  %shl70 = shl nuw nsw i32 %conv69, 16
  %arrayidx71 = getelementptr inbounds i8, i8* %rec.0170, i64 20
  %20 = load i8, i8* %arrayidx71, align 1, !tbaa !18
  %conv72 = zext i8 %20 to i32
  %shl73 = shl nuw nsw i32 %conv72, 8
  %or74 = or i32 %shl73, %shl70
  %arrayidx75 = getelementptr inbounds i8, i8* %rec.0170, i64 21
  %21 = load i8, i8* %arrayidx75, align 1, !tbaa !18
  %conv76 = zext i8 %21 to i32
  %or77 = or i32 %or74, %conv76
  %call78 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0), i32 noundef %or77) #6
  %arrayidx79 = getelementptr inbounds i8, i8* %rec.0170, i64 22
  %22 = load i8, i8* %arrayidx79, align 1, !tbaa !18
  %conv80 = zext i8 %22 to i32
  %shl81 = shl nuw nsw i32 %conv80, 16
  %arrayidx82 = getelementptr inbounds i8, i8* %rec.0170, i64 23
  %23 = load i8, i8* %arrayidx82, align 1, !tbaa !18
  %conv83 = zext i8 %23 to i32
  %shl84 = shl nuw nsw i32 %conv83, 8
  %or85 = or i32 %shl84, %shl81
  %arrayidx86 = getelementptr inbounds i8, i8* %rec.0170, i64 24
  %24 = load i8, i8* %arrayidx86, align 1, !tbaa !18
  %conv87 = zext i8 %24 to i32
  %or88 = or i32 %or85, %conv87
  %call89 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0), i32 noundef %or88) #6
  %add = add nuw nsw i32 %or88, %or77
  %cmp90 = icmp ugt i32 %add, %or59
  br i1 %cmp90, label %if.end105.sink.split, label %if.else94

if.else94:                                        ; preds = %if.else46
  %cmp95 = icmp ult i32 %or30, %or88
  %. = select i1 %cmp95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i64 0, i64 0)
  br label %if.end105.sink.split

if.end105.sink.split:                             ; preds = %if.else94, %if.else46, %if.else, %if.then34
  %.sink = phi i8* [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.60, i64 0, i64 0), %if.then34 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.61, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.67, i64 0, i64 0), %if.else46 ], [ %., %if.else94 ]
  %call39 = tail call i32 (i8*, ...) @printf(i8* noundef %.sink) #6
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.end7
  %cmp106 = icmp slt i32 %sub, %or30
  br i1 %cmp106, label %while.end.sink.split, label %if.end114

if.end114:                                        ; preds = %if.end105
  %idx.ext = zext i32 %or30 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %sub112 = sub nsw i32 %sub, %or30
  %call113 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i64 0, i64 0)) #6
  %cmp = icmp sgt i32 %sub112, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !35

while.end.sink.split:                             ; preds = %if.end105, %if.end
  %call109 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %while.end

while.end:                                        ; preds = %if.end114, %while.end.sink.split, %entry
  %call115 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i64 0, i64 0)) #6
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call116 = tail call i32 @fflush(%struct._IO_FILE* noundef %25) #6
  ret void
}

declare dso_local i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_MEMPACKET* @sk_MEMPACKET_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_MEMPACKET*
  ret %struct.stack_st_MEMPACKET* %0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_MEMPACKET_pop_free(%struct.stack_st_MEMPACKET* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MEMPACKET* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.mempacket_st*)* @mempacket_free to void (i8*)*)) #6
  ret void
}

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_MEMPACKET_shift(%struct.stack_st_MEMPACKET* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MEMPACKET* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %0) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_MEMPACKET_num(%struct.stack_st_MEMPACKET* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_MEMPACKET* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

declare dso_local i32 @BIO_get_shutdown(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @BIO_set_shutdown(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare dso_local i32 @usleep(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

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
!8 = !{!"mempacket_test_ctx_st", !4, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !9, i64 12}
!11 = !{!"mempacket_st", !4, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!12 = !{!8, !9, i64 16}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 16}
!15 = !{!8, !9, i64 24}
!16 = !{!8, !9, i64 36}
!17 = !{!11, !4, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!8, !9, i64 8}
!20 = !{!8, !9, i64 12}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!8, !9, i64 32}
!24 = distinct !{!24, !22}
!25 = !{!8, !9, i64 40}
!26 = !{!8, !9, i64 28}
!27 = !{!8, !9, i64 20}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = distinct !{!35, !22}
