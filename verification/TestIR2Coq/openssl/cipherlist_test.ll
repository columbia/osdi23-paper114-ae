; ModuleID = 'test/cipherlist_test.c'
source_filename = "test/cipherlist_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipherlist_test_fixture = type { i8*, %struct.ssl_ctx_st*, %struct.ssl_ctx_st* }
%struct.ssl_ctx_st = type opaque
%struct.ssl_st = type opaque
%struct.ssl_method_st = type opaque
%struct.stack_st_SSL_CIPHER = type opaque
%struct.stack_st = type opaque
%struct.ssl_cipher_st = type opaque

@.str = private unnamed_addr constant [33 x i8] c"test_default_cipherlist_implicit\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"test_default_cipherlist_explicit\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"test_default_cipherlist_clear\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"test/cipherlist_test.c\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"fixture->server = SSL_CTX_new(TLS_server_method())\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"fixture->client = SSL_CTX_new(TLS_client_method())\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ssl = SSL_new(ctx)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ciphers = SSL_get1_supported_ciphers(ssl)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"num_ciphers\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"num_expected_ciphers\00", align 1
@default_ciphers_in_order = internal unnamed_addr constant [30 x i32] [i32 50336514, i32 50336515, i32 50336513, i32 50380844, i32 50380848, i32 50331807, i32 50384041, i32 50384040, i32 50384042, i32 50380843, i32 50380847, i32 50331806, i32 50380836, i32 50380840, i32 50331755, i32 50380835, i32 50380839, i32 50331751, i32 50380810, i32 50380820, i32 50331705, i32 50380809, i32 50380819, i32 50331699, i32 50331805, i32 50331804, i32 50331709, i32 50331708, i32 50331701, i32 50331695], align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"cipher_id\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"expected_cipher_id\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Wrong cipher at position %d\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_cipher_list(fixture->server, \22DEFAULT\22)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_cipher_list(fixture->client, \22DEFAULT\22)\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"SSL_CTX_set_cipher_list(fixture->server, \22no-such\22)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"no-such\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"ERR_GET_REASON(ERR_get_error())\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SSL_R_NO_CIPHER_MATCH\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"SSL_set_cipher_list(s, \22no-such\22)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_default_cipherlist_implicit) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_default_cipherlist_explicit) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_default_cipherlist_clear) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_default_cipherlist_implicit() #0 {
entry:
  %call = tail call fastcc %struct.cipherlist_test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.cipherlist_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_test(%struct.cipherlist_test_fixture* noundef nonnull %call) #4
  tail call fastcc void @tear_down(%struct.cipherlist_test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_default_cipherlist_explicit() #0 {
entry:
  %call = tail call fastcc %struct.cipherlist_test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.cipherlist_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %server, align 8, !tbaa !3
  %call1 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #3
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %client = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %call, i64 0, i32 2
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %client, align 8, !tbaa !8
  %call4 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #3
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv6) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false
  %call14 = tail call fastcc i32 @execute_test(%struct.cipherlist_test_fixture* noundef nonnull %call) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then13
  %retval.0.ph = phi i32 [ %call14, %if.then13 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  tail call fastcc void @tear_down(%struct.cipherlist_test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_default_cipherlist_clear() #0 {
entry:
  %call = tail call fastcc %struct.cipherlist_test_fixture* @set_up(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.cipherlist_test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %call, i64 0, i32 1
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %server, align 8, !tbaa !3
  %call1 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #3
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #3
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @ERR_get_error() #3
  %call6 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call5) #4, !range !9
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call6, i32 noundef 185) #3
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %if.end4
  %client = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %call, i64 0, i32 2
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %client, align 8, !tbaa !8
  %call11 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %1) #3
  %2 = bitcast %struct.ssl_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %if.end15

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @SSL_set_cipher_list(%struct.ssl_st* noundef %call11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #3
  %call17 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %if.end20

if.end20:                                         ; preds = %if.end15
  %call21 = tail call i64 @ERR_get_error() #3
  %call22 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call21) #4, !range !9
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call22, i32 noundef 185) #3
  %tobool24.not = icmp ne i32 %call23, 0
  %spec.select = zext i1 %tobool24.not to i32
  br label %end

end:                                              ; preds = %if.end20, %if.end15, %if.end10, %if.end4, %if.end
  %s.0 = phi %struct.ssl_st* [ %call11, %if.end15 ], [ %call11, %if.end10 ], [ null, %if.end4 ], [ null, %if.end ], [ %call11, %if.end20 ]
  %result.0 = phi i32 [ 0, %if.end15 ], [ 0, %if.end10 ], [ 0, %if.end4 ], [ 0, %if.end ], [ %spec.select, %if.end20 ]
  tail call void @SSL_free(%struct.ssl_st* noundef %s.0) #3
  tail call fastcc void @tear_down(%struct.cipherlist_test_fixture* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %result.0, %end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.cipherlist_test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 45) #3
  %0 = bitcast i8* %call to %struct.cipherlist_test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !10
  %call3 = tail call %struct.ssl_method_st* @TLS_server_method() #3
  %call4 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call3) #3
  %server = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %server to %struct.ssl_ctx_st**
  store %struct.ssl_ctx_st* %call4, %struct.ssl_ctx_st** %1, align 8, !tbaa !3
  %2 = bitcast %struct.ssl_ctx_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* noundef %2) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call %struct.ssl_method_st* @TLS_client_method() #3
  %call8 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call7) #3
  %client = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %client to %struct.ssl_ctx_st**
  store %struct.ssl_ctx_st* %call8, %struct.ssl_ctx_st** %3, align 8, !tbaa !8
  %4 = bitcast %struct.ssl_ctx_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  tail call fastcc void @tear_down(%struct.cipherlist_test_fixture* noundef nonnull %0) #4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.then11
  %retval.0 = phi %struct.cipherlist_test_fixture* [ null, %if.then11 ], [ null, %entry ], [ %0, %lor.lhs.false ]
  ret %struct.cipherlist_test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_test(%struct.cipherlist_test_fixture* noundef readonly %fixture) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.cipherlist_test_fixture* %fixture, null
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %server = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %server, align 8, !tbaa !3
  %call = tail call fastcc i32 @test_default_cipherlist(%struct.ssl_ctx_st* noundef %0) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %client = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %client, align 8, !tbaa !8
  %call1 = tail call fastcc i32 @test_default_cipherlist(%struct.ssl_ctx_st* noundef %1) #4
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.cipherlist_test_fixture* noundef %fixture) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.cipherlist_test_fixture* %fixture, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %fixture, i64 0, i32 1
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %server, align 8, !tbaa !3
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %0) #3
  %client = getelementptr inbounds %struct.cipherlist_test_fixture, %struct.cipherlist_test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %client, align 8, !tbaa !8
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %1) #3
  %2 = bitcast %struct.ssl_ctx_st** %server to <2 x %struct.ssl_ctx_st*>*
  store <2 x %struct.ssl_ctx_st*> zeroinitializer, <2 x %struct.ssl_ctx_st*>* %2, align 8, !tbaa !11
  %3 = bitcast %struct.cipherlist_test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 37) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_server_method() local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_default_cipherlist(%struct.ssl_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef nonnull %ctx) #3
  %0 = bitcast %struct.ssl_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* noundef %0) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef %call) #3
  %1 = bitcast %struct.stack_st_SSL_CIPHER* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call2) #4
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #3
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call8, i32 noundef 30) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %cmp1347 = icmp sgt i32 %call8, 0
  br i1 %cmp1347, label %for.body.preheader, label %err

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %call8 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* @default_ciphers_in_order, i64 0, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !12
  %3 = trunc i64 %indvars.iv to i32
  %call15 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call7, i32 noundef %3) #3
  %4 = bitcast i8* %call15 to %struct.ssl_cipher_st*
  %call16 = tail call i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef %4) #3
  %call17 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call16, i32 noundef %2) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 noundef %5) #3
  br label %err

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %err, label %for.body, !llvm.loop !14

err:                                              ; preds = %for.inc, %for.cond.preheader, %if.end6, %if.end, %lor.lhs.false, %if.then19
  %ret.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %for.cond.preheader ], [ 1, %for.inc ]
  %ciphers.0 = phi %struct.stack_st_SSL_CIPHER* [ %call2, %if.then19 ], [ %call2, %if.end6 ], [ %call2, %lor.lhs.false ], [ null, %if.end ], [ %call2, %for.cond.preheader ], [ %call2, %for.inc ]
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %ciphers.0) #4
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call21) #3
  tail call void @SSL_free(%struct.ssl_st* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_get1_supported_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #2 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local i64 @ERR_get_error() local_unnamed_addr #1

declare dso_local i32 @SSL_set_cipher_list(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 8}
!4 = !{!"cipherlist_test_fixture", !5, i64 0, !5, i64 8, !5, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 16}
!9 = !{i32 0, i32 -2147483648}
!10 = !{!4, !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
