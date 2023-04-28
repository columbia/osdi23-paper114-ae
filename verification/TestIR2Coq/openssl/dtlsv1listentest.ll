; ModuleID = 'test/dtlsv1listentest.c'
source_filename = "test/dtlsv1listentest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tests = type { i8*, i32, i32 }
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%union.bio_addr_st = type opaque
%struct.ssl_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [17 x i8] c"dtls_listen_test\00", align 1
@testpackets = internal unnamed_addr constant [9 x %struct.tests] [%struct.tests { i8* getelementptr inbounds ([71 x i8], [71 x i8]* @clienthello_nocookie, i32 0, i32 0), i32 71, i32 1 }, %struct.tests { i8* getelementptr inbounds ([61 x i8], [61 x i8]* @clienthello_nocookie_frag, i32 0, i32 0), i32 61, i32 1 }, %struct.tests { i8* getelementptr inbounds ([60 x i8], [60 x i8]* @clienthello_nocookie_short, i32 0, i32 0), i32 60, i32 2 }, %struct.tests { i8* getelementptr inbounds ([69 x i8], [69 x i8]* @clienthello_2ndfrag, i32 0, i32 0), i32 69, i32 2 }, %struct.tests { i8* getelementptr inbounds ([91 x i8], [91 x i8]* @clienthello_cookie, i32 0, i32 0), i32 91, i32 0 }, %struct.tests { i8* getelementptr inbounds ([81 x i8], [81 x i8]* @clienthello_cookie_frag, i32 0, i32 0), i32 81, i32 0 }, %struct.tests { i8* getelementptr inbounds ([91 x i8], [91 x i8]* @clienthello_badcookie, i32 0, i32 0), i32 91, i32 1 }, %struct.tests { i8* getelementptr inbounds ([80 x i8], [80 x i8]* @clienthello_cookie_short, i32 0, i32 0), i32 80, i32 2 }, %struct.tests { i8* getelementptr inbounds ([11 x i8], [11 x i8]* bitcast (<{ i8, i8, i8, [8 x i8] }>* @record_short to [11 x i8]*), i32 0, i32 0), i32 11, i32 2 }], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"test/dtlsv1listentest.c\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ctx = SSL_CTX_new(DTLS_server_method())\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"peer = BIO_ADDR_new()\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ssl = SSL_new(ctx)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"outbio = BIO_new(BIO_s_mem())\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"inbio = BIO_new_mem_buf((char *)tp->in, tp->inlen)\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"ret = DTLSv1_listen(ssl, peer)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@verify = internal constant [48 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00#\03\00\00\17\00\00\00\00\00\00\00\17\FE\FF\14\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@.str.12 = private unnamed_addr constant [71 x i8] c"(ret == 0 && tp->outtype == DROP) || (ret == 1 && tp->outtype == GOOD)\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Test %d: unexpected data output\00", align 1
@clienthello_nocookie = internal constant [71 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00:\01\00\00.\00\00\00\00\00\00\00.\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\00\00\04\00/\00\FF\01\00\00\00", align 16
@clienthello_nocookie_frag = internal constant [61 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\000\01\00\00.\00\00\00\00\00\00\00$\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\00", align 16
@clienthello_nocookie_short = internal constant [60 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00/\01\00\00.\00\00\00\00\00\00\00#\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00", align 16
@clienthello_2ndfrag = internal constant [69 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\008\01\00\00.\00\00\00\00\02\00\00,\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\00\00\04\00/\00\FF\01\00\00\00", align 16
@clienthello_cookie = internal constant [91 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00N\01\00\00B\00\00\00\00\00\00\00B\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\14\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\00\04\00/\00\FF\01\00\00\00", align 16
@clienthello_cookie_frag = internal constant [81 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00D\01\00\00B\00\00\00\00\00\00\008\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\14\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13", align 16
@clienthello_badcookie = internal constant [91 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00N\01\00\00B\00\00\00\00\00\00\00B\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\14\01\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\00\04\00/\00\FF\01\00\00\00", align 16
@clienthello_cookie_short = internal constant [80 x i8] c"\16\FE\FF\00\00\00\00\00\00\00\00\00C\01\00\00B\00\00\00\00\00\00\007\FE\FD\CA\18\9Fv\ECW\CE\E5\B3\ABy\90\AD\ACn\D1X5\03\97\16\10\82V\D8U\FF\E1\8A\A3.\F6\00\14\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 16
@record_short = internal constant <{ i8, i8, i8, [8 x i8] }> <{ i8 22, i8 -2, i8 -1, [8 x i8] zeroinitializer }>, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @dtls_listen_test, i32 noundef 9, i32 noundef 1) #5
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dtls_listen_test(i32 noundef %i) #0 {
entry:
  %data = alloca i8*, align 8
  %idxprom = sext i32 %i to i64
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %call = tail call %struct.ssl_method_st* @DTLS_server_method() #5
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #5
  %1 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %union.bio_addr_st* @BIO_ADDR_new() #5
  %2 = bitcast %union.bio_addr_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef %2) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* noundef %call1, i32 (%struct.ssl_st*, i8*, i32*)* noundef nonnull @cookie_gen) #5
  tail call void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* noundef %call1, i32 (%struct.ssl_st*, i8*, i32)* noundef nonnull @cookie_verify) #5
  %call6 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #5
  %3 = bitcast %struct.ssl_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %3) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %call10 = tail call %struct.bio_method_st* @BIO_s_mem() #5
  %call11 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call10) #5
  %4 = bitcast %struct.bio_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false9
  tail call void @SSL_set0_wbio(%struct.ssl_st* noundef %call6, %struct.bio_st* noundef %call11) #5
  %in = getelementptr inbounds [9 x %struct.tests], [9 x %struct.tests]* @testpackets, i64 0, i64 %idxprom, i32 0
  %5 = load i8*, i8** %in, align 16, !tbaa !3
  %inlen = getelementptr inbounds [9 x %struct.tests], [9 x %struct.tests]* @testpackets, i64 0, i64 %idxprom, i32 1
  %6 = load i32, i32* %inlen, align 8, !tbaa !9
  %call16 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %5, i32 noundef %6) #5
  %7 = bitcast %struct.bio_st* %call16 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* noundef %7) #5
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call16, i32 noundef 130, i64 noundef -1, i8* noundef null) #5
  tail call void @SSL_set0_rbio(%struct.ssl_st* noundef %call6, %struct.bio_st* noundef %call16) #5
  %call22 = tail call i32 @DTLSv1_listen(%struct.ssl_st* noundef %call6, %union.bio_addr_st* noundef %call3) #5
  %call23 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %if.end20
  %call27 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call11, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #5
  %8 = lshr i64 67, %idxprom
  %9 = and i64 %8, 1
  %cmp.not = icmp eq i64 %9, 0
  br i1 %cmp.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call29 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then28
  %10 = load i8*, i8** %data, align 8, !tbaa !10
  %call32 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef %10, i64 noundef %call27, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @verify, i64 0, i64 0), i64 noundef 48) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end51

if.else:                                          ; preds = %if.end26
  %cmp36 = icmp eq i64 %call27, 0
  br i1 %cmp36, label %if.then37, label %if.else49

if.then37:                                        ; preds = %if.else
  switch i32 %call22, label %lor.end [
    i32 0, label %land.lhs.true
    i32 1, label %land.rhs
  ]

land.lhs.true:                                    ; preds = %if.then37
  %11 = lshr i64 396, %idxprom
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 1
  br label %lor.end

land.rhs:                                         ; preds = %if.then37
  %14 = and i32 %i, -2
  %15 = icmp eq i32 %14, 4
  %phi.cast = zext i1 %15 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %if.then37, %land.rhs
  %16 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %if.then37 ], [ %13, %land.lhs.true ]
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.12, i64 0, i64 0), i32 noundef %16) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end51

if.else49:                                        ; preds = %if.else
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 noundef %i) #5
  br label %err

if.end51:                                         ; preds = %lor.end, %lor.lhs.false31
  %call52 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call11, i32 noundef 1, i64 noundef 0, i8* noundef null) #5
  call void @SSL_set0_rbio(%struct.ssl_st* noundef %call6, %struct.bio_st* noundef null) #5
  br label %err

err:                                              ; preds = %entry, %lor.end, %if.then28, %lor.lhs.false31, %if.end20, %if.end15, %if.end, %lor.lhs.false9, %lor.lhs.false, %if.end51, %if.else49
  %inbio.0 = phi %struct.bio_st* [ null, %if.end51 ], [ %call16, %lor.lhs.false31 ], [ %call16, %if.then28 ], [ %call16, %lor.end ], [ %call16, %if.else49 ], [ %call16, %if.end20 ], [ %call16, %if.end15 ], [ null, %lor.lhs.false9 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  %peer.0 = phi %union.bio_addr_st* [ %call3, %if.end51 ], [ %call3, %lor.lhs.false31 ], [ %call3, %if.then28 ], [ %call3, %lor.end ], [ %call3, %if.else49 ], [ %call3, %if.end20 ], [ %call3, %if.end15 ], [ %call3, %lor.lhs.false9 ], [ %call3, %if.end ], [ %call3, %lor.lhs.false ], [ null, %entry ]
  %ssl.0 = phi %struct.ssl_st* [ %call6, %if.end51 ], [ %call6, %lor.lhs.false31 ], [ %call6, %if.then28 ], [ %call6, %lor.end ], [ %call6, %if.else49 ], [ %call6, %if.end20 ], [ %call6, %if.end15 ], [ %call6, %lor.lhs.false9 ], [ %call6, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  %success.0 = phi i32 [ 1, %if.end51 ], [ 0, %lor.lhs.false31 ], [ 0, %if.then28 ], [ 0, %lor.end ], [ 0, %if.else49 ], [ 0, %if.end20 ], [ 0, %if.end15 ], [ 0, %lor.lhs.false9 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @SSL_free(%struct.ssl_st* noundef %ssl.0) #5
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #5
  %call54 = call i32 @BIO_free(%struct.bio_st* noundef %inbio.0) #5
  %17 = bitcast %union.bio_addr_st* %peer.0 to i8*
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 346) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %success.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @DTLS_server_method() local_unnamed_addr #1

declare dso_local %union.bio_addr_st* @BIO_ADDR_new() local_unnamed_addr #1

declare dso_local void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32*)* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal i32 @cookie_gen(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef writeonly %cookie, i32* nocapture noundef writeonly %cookie_len) #3 {
entry:
  %0 = bitcast i8* %cookie to <16 x i8>*
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* %0, align 1, !tbaa !11
  %incdec.ptr.15 = getelementptr inbounds i8, i8* %cookie, i64 16
  store i8 16, i8* %incdec.ptr.15, align 1, !tbaa !11
  %incdec.ptr.16 = getelementptr inbounds i8, i8* %cookie, i64 17
  store i8 17, i8* %incdec.ptr.16, align 1, !tbaa !11
  %incdec.ptr.17 = getelementptr inbounds i8, i8* %cookie, i64 18
  store i8 18, i8* %incdec.ptr.17, align 1, !tbaa !11
  %incdec.ptr.18 = getelementptr inbounds i8, i8* %cookie, i64 19
  store i8 19, i8* %incdec.ptr.18, align 1, !tbaa !11
  store i32 20, i32* %cookie_len, align 4, !tbaa !12
  ret i32 1
}

declare dso_local void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @cookie_verify(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readonly %cookie, i32 noundef %cookie_len) #4 {
entry:
  %cmp.not = icmp eq i32 %cookie_len, 20
  br i1 %cmp.not, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = load i8, i8* %cookie, align 1, !tbaa !11
  %cmp2.not = icmp eq i8 %0, 0
  br i1 %cmp2.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %incdec.ptr = getelementptr inbounds i8, i8* %cookie, i64 1
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !11
  %cmp2.not.1 = icmp eq i8 %1, 1
  br i1 %cmp2.not.1, label %for.inc.1, label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %cookie, i64 2
  %2 = load i8, i8* %incdec.ptr.1, align 1, !tbaa !11
  %cmp2.not.2 = icmp eq i8 %2, 2
  br i1 %cmp2.not.2, label %for.inc.2, label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %cookie, i64 3
  %3 = load i8, i8* %incdec.ptr.2, align 1, !tbaa !11
  %cmp2.not.3 = icmp eq i8 %3, 3
  br i1 %cmp2.not.3, label %for.inc.3, label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %cookie, i64 4
  %4 = load i8, i8* %incdec.ptr.3, align 1, !tbaa !11
  %cmp2.not.4 = icmp eq i8 %4, 4
  br i1 %cmp2.not.4, label %for.inc.4, label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %cookie, i64 5
  %5 = load i8, i8* %incdec.ptr.4, align 1, !tbaa !11
  %cmp2.not.5 = icmp eq i8 %5, 5
  br i1 %cmp2.not.5, label %for.inc.5, label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %cookie, i64 6
  %6 = load i8, i8* %incdec.ptr.5, align 1, !tbaa !11
  %cmp2.not.6 = icmp eq i8 %6, 6
  br i1 %cmp2.not.6, label %for.inc.6, label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %cookie, i64 7
  %7 = load i8, i8* %incdec.ptr.6, align 1, !tbaa !11
  %cmp2.not.7 = icmp eq i8 %7, 7
  br i1 %cmp2.not.7, label %for.inc.7, label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %cookie, i64 8
  %8 = load i8, i8* %incdec.ptr.7, align 1, !tbaa !11
  %cmp2.not.8 = icmp eq i8 %8, 8
  br i1 %cmp2.not.8, label %for.inc.8, label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %incdec.ptr.8 = getelementptr inbounds i8, i8* %cookie, i64 9
  %9 = load i8, i8* %incdec.ptr.8, align 1, !tbaa !11
  %cmp2.not.9 = icmp eq i8 %9, 9
  br i1 %cmp2.not.9, label %for.inc.9, label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %incdec.ptr.9 = getelementptr inbounds i8, i8* %cookie, i64 10
  %10 = load i8, i8* %incdec.ptr.9, align 1, !tbaa !11
  %cmp2.not.10 = icmp eq i8 %10, 10
  br i1 %cmp2.not.10, label %for.inc.10, label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %incdec.ptr.10 = getelementptr inbounds i8, i8* %cookie, i64 11
  %11 = load i8, i8* %incdec.ptr.10, align 1, !tbaa !11
  %cmp2.not.11 = icmp eq i8 %11, 11
  br i1 %cmp2.not.11, label %for.inc.11, label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %incdec.ptr.11 = getelementptr inbounds i8, i8* %cookie, i64 12
  %12 = load i8, i8* %incdec.ptr.11, align 1, !tbaa !11
  %cmp2.not.12 = icmp eq i8 %12, 12
  br i1 %cmp2.not.12, label %for.inc.12, label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  %incdec.ptr.12 = getelementptr inbounds i8, i8* %cookie, i64 13
  %13 = load i8, i8* %incdec.ptr.12, align 1, !tbaa !11
  %cmp2.not.13 = icmp eq i8 %13, 13
  br i1 %cmp2.not.13, label %for.inc.13, label %cleanup

for.inc.13:                                       ; preds = %for.inc.12
  %incdec.ptr.13 = getelementptr inbounds i8, i8* %cookie, i64 14
  %14 = load i8, i8* %incdec.ptr.13, align 1, !tbaa !11
  %cmp2.not.14 = icmp eq i8 %14, 14
  br i1 %cmp2.not.14, label %for.inc.14, label %cleanup

for.inc.14:                                       ; preds = %for.inc.13
  %incdec.ptr.14 = getelementptr inbounds i8, i8* %cookie, i64 15
  %15 = load i8, i8* %incdec.ptr.14, align 1, !tbaa !11
  %cmp2.not.15 = icmp eq i8 %15, 15
  br i1 %cmp2.not.15, label %for.inc.15, label %cleanup

for.inc.15:                                       ; preds = %for.inc.14
  %incdec.ptr.15 = getelementptr inbounds i8, i8* %cookie, i64 16
  %16 = load i8, i8* %incdec.ptr.15, align 1, !tbaa !11
  %cmp2.not.16 = icmp eq i8 %16, 16
  br i1 %cmp2.not.16, label %for.inc.16, label %cleanup

for.inc.16:                                       ; preds = %for.inc.15
  %incdec.ptr.16 = getelementptr inbounds i8, i8* %cookie, i64 17
  %17 = load i8, i8* %incdec.ptr.16, align 1, !tbaa !11
  %cmp2.not.17 = icmp eq i8 %17, 17
  br i1 %cmp2.not.17, label %for.inc.17, label %cleanup

for.inc.17:                                       ; preds = %for.inc.16
  %incdec.ptr.17 = getelementptr inbounds i8, i8* %cookie, i64 18
  %18 = load i8, i8* %incdec.ptr.17, align 1, !tbaa !11
  %cmp2.not.18 = icmp eq i8 %18, 18
  br i1 %cmp2.not.18, label %for.inc.18, label %cleanup

for.inc.18:                                       ; preds = %for.inc.17
  %incdec.ptr.18 = getelementptr inbounds i8, i8* %cookie, i64 19
  %19 = load i8, i8* %incdec.ptr.18, align 1, !tbaa !11
  %cmp2.not.19 = icmp eq i8 %19, 19
  %spec.select = zext i1 %cmp2.not.19 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.inc.18, %for.body.preheader, %for.inc, %for.inc.1, %for.inc.2, %for.inc.3, %for.inc.4, %for.inc.5, %for.inc.6, %for.inc.7, %for.inc.8, %for.inc.9, %for.inc.10, %for.inc.11, %for.inc.12, %for.inc.13, %for.inc.14, %for.inc.15, %for.inc.16, %for.inc.17, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.body.preheader ], [ 0, %for.inc ], [ 0, %for.inc.1 ], [ 0, %for.inc.2 ], [ 0, %for.inc.3 ], [ 0, %for.inc.4 ], [ 0, %for.inc.5 ], [ 0, %for.inc.6 ], [ 0, %for.inc.7 ], [ 0, %for.inc.8 ], [ 0, %for.inc.9 ], [ 0, %for.inc.10 ], [ 0, %for.inc.11 ], [ 0, %for.inc.12 ], [ 0, %for.inc.13 ], [ 0, %for.inc.14 ], [ 0, %for.inc.15 ], [ 0, %for.inc.16 ], [ 0, %for.inc.17 ], [ %spec.select, %for.inc.18 ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local void @SSL_set0_wbio(%struct.ssl_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @SSL_set0_rbio(%struct.ssl_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @DTLSv1_listen(%struct.ssl_st* noundef, %union.bio_addr_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !8, i64 8, !6, i64 12}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !8, i64 8}
!10 = !{!5, !5, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!8, !8, i64 0}
