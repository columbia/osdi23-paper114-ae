; ModuleID = 'test/srptest.c'
source_filename = "test/srptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.SRP_gN_st = type { i8*, %struct.bignum_st*, %struct.bignum_st* }

@.str = private unnamed_addr constant [14 x i8] c"run_srp_tests\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"run_srp_kat\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"test/srptest.c\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"run_srp: expecting a mismatch\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"run_srp(\22alice\22, \22password1\22, \22password2\22)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"password1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"password2\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"run_srp: expecting a match\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"run_srp(\22alice\22, \22password\22, \22password\22)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"GN = SRP_get_default_gN(\221024\22)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"SRP_create_verifier_BN(username, server_pass, &s, &v, GN->N, GN->g)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Salt\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Verifier\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"SRP_Verify_B_mod_N(Bpub, GN->N)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"SRP_Verify_A_mod_N(Apub, GN->N)\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Client's key\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Server's key\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Kclient\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Kserver\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"BEB25379D1A8581EB5A727673A2441EE\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"SRP_create_verifier_BN(\22alice\22, \22password123\22, &s, &v, GN->N, GN->g)\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"password123\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"checking v\00", align 1
@.str.32 = private unnamed_addr constant [289 x i8] c"check_bn(\22v\22, v, \227E273DE8696FFC4F4E337D05B4B375BEB0DDE1569E8FA00A9886D812\22 \229BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5\22 \22C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5\22 \22EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78\22 \22E955A5E29E7AB245DB2BE315E2099AFB\22)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.34 = private unnamed_addr constant [257 x i8] c"7E273DE8696FFC4F4E337D05B4B375BEB0DDE1569E8FA00A9886D8129BADA1F1822223CA1A605B530E379BA4729FDC59F105B4787E5186F5C671085A1447B52A48CF1970B4FB6F8400BBF4CEBFBB168152E08AB5EA53D15C1AFF87B2B9DA6E04E058AD51CC72BFC9033B564E26480D78E955A5E29E7AB245DB2BE315E2099AFB\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"    okay\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"E487CB59D31AC550471E81F00F6928E01DDA08E974A004F49E61F5D105284D20\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"checking B\00", align 1
@.str.38 = private unnamed_addr constant [292 x i8] c"check_bn(\22B\22, Bpub, \22BD0C61512C692C0CB6D041FA01BB152D4916A1E77AF46AE105393011\22 \22BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC99\22 \226C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA\22 \2237089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAE\22 \22EB4012B7D7665238A8E3FB004B117B58\22)\00", align 1
@.str.39 = private unnamed_addr constant [257 x i8] c"BD0C61512C692C0CB6D041FA01BB152D4916A1E77AF46AE105393011BAF38964DC46A0670DD125B95A981652236F99D9B681CBF87837EC996C6DA04453728610D0C6DDB58B318885D7D82C7F8DEB75CE7BD4FBAA37089E6F9C6059F388838E7A00030B331EB76840910440B1B27AAEAEEB4012B7D7665238A8E3FB004B117B58\00", align 1
@.str.40 = private unnamed_addr constant [65 x i8] c"60975527035CF2AD1989806F0407210BC81EDC04E2762A56AFD529DDDA2D4393\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"checking A\00", align 1
@.str.42 = private unnamed_addr constant [292 x i8] c"check_bn(\22A\22, Apub, \2261D5E490F6F1B79547B0704C436F523DD0E560F0C64115BB72557EC4\22 \224352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC\22 \228E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44\22 \22BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEA\22 \22B349EF5D76988A3672FAC47B0769447B\22)\00", align 1
@.str.43 = private unnamed_addr constant [257 x i8] c"61D5E490F6F1B79547B0704C436F523DD0E560F0C64115BB72557EC44352E8903211C04692272D8B2D1A5358A2CF1B6E0BFCF99F921530EC8E39356179EAE45E42BA92AEACED825171E1E8B9AF6D9C03E1327F44BE087EF06530E69F66615261EEF54073CA11CF5858F0EDFDFE15EFEAB349EF5D76988A3672FAC47B0769447B\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"check_bn(\22u\22, u, \22CE38B9593487DA98554ED47D70A7AE5F462EF019\22)\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"CE38B9593487DA98554ED47D70A7AE5F462EF019\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"checking client's key\00", align 1
@.str.48 = private unnamed_addr constant [306 x i8] c"check_bn(\22Client's key\22, Kclient, \22B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D\22 \22233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C\22 \2241BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F\22 \223499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D\22 \22C346D7E474B29EDE8A469FFECA686E5A\22)\00", align 1
@.str.49 = private unnamed_addr constant [257 x i8] c"B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C41BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F3499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212DC346D7E474B29EDE8A469FFECA686E5A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"checking server's key\00", align 1
@.str.51 = private unnamed_addr constant [306 x i8] c"check_bn(\22Server's key\22, Kserver, \22B0DC82BABCF30674AE450C0287745E7990A3381F63B387AAF271A10D\22 \22233861E359B48220F7C4693C9AE12B0A6F67809F0876E2D013800D6C\22 \2241BB59B6D5979B5C00A172B4A2A5903A0BDCAF8A709585EB2AFAFA8F\22 \223499B200210DCC1F10EB33943CD67FC88A2F39A4BE5BEC4EC0A3212D\22 \22C346D7E474B29EDE8A469FFECA686E5A\22)\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"BN_hex2bn(&tmp, hexbn)\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"unexpected %s value\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @run_srp_tests) #3
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @run_srp_kat) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_srp_tests() #0 {
entry:
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #3
  %call = tail call fastcc i32 @run_srp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #4
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0)) #3
  %call2 = tail call fastcc i32 @run_srp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv4) #3
  %tobool6.not = icmp ne i32 %call5, 0
  %. = zext i1 %tobool6.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_srp_kat() #0 {
entry:
  %s = alloca %struct.bignum_st*, align 8
  %v = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %s, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %v, align 8, !tbaa !3
  %2 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !3
  %3 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !3
  %call = tail call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #3
  %4 = bitcast %struct.SRP_gN_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* noundef %4) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %s, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0)) #3
  %N = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call, i64 0, i32 2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %g = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call, i64 0, i32 1
  %6 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %call3 = call i32 @SRP_create_verifier_BN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), %struct.bignum_st** noundef nonnull %s, %struct.bignum_st** noundef nonnull %v, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6) #3
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0)) #3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  %call8 = call fastcc i32 @check_bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %struct.bignum_st* noundef %7, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.34, i64 0, i64 0)) #4
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([289 x i8], [289 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv10) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end7
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)) #3
  %call15 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.36, i64 0, i64 0)) #3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  %9 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %10 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %11 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  %call18 = call %struct.bignum_st* @SRP_Calc_B(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11) #3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call20 = call i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %12) #3
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv22) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %if.end14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0)) #3
  %call27 = call fastcc i32 @check_bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %struct.bignum_st* noundef %call18, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.39, i64 0, i64 0)) #4
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([292 x i8], [292 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv29) #3
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %if.end26
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)) #3
  %call34 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.40, i64 0, i64 0)) #3
  %13 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  %14 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %15 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %call37 = call %struct.bignum_st* @SRP_Calc_A(%struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15) #3
  %16 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call39 = call i32 @SRP_Verify_A_mod_N(%struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %16) #3
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv41) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end33
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0)) #3
  %call46 = call fastcc i32 @check_bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %struct.bignum_st* noundef %call37, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.43, i64 0, i64 0)) #4
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([292 x i8], [292 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv48) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.end45
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)) #3
  %17 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call54 = call %struct.bignum_st* @SRP_Calc_u(%struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %17) #3
  %call55 = call fastcc i32 @check_bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %struct.bignum_st* noundef %call54, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i64 0, i64 0)) #4
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv57) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end52
  %18 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  %call62 = call %struct.bignum_st* @SRP_Calc_x(%struct.bignum_st* noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #3
  %19 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %20 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %21 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  %call65 = call %struct.bignum_st* @SRP_Calc_client_key(%struct.bignum_st* noundef %19, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %20, %struct.bignum_st* noundef %call62, %struct.bignum_st* noundef %21, %struct.bignum_st* noundef %call54) #3
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0)) #3
  %call66 = call fastcc i32 @check_bn(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), %struct.bignum_st* noundef %call65, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.49, i64 0, i64 0)) #4
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([306 x i8], [306 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv68) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end72

if.end72:                                         ; preds = %if.end61
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)) #3
  %22 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  %23 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  %24 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call74 = call %struct.bignum_st* @SRP_Calc_server_key(%struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %22, %struct.bignum_st* noundef %call54, %struct.bignum_st* noundef %23, %struct.bignum_st* noundef %24) #3
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i64 0, i64 0)) #3
  %call75 = call fastcc i32 @check_bn(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %call74, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.49, i64 0, i64 0)) #4
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([306 x i8], [306 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv77) #3
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %if.end72
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)) #3
  br label %err

err:                                              ; preds = %if.end72, %if.end61, %if.end52, %if.end45, %if.end33, %if.end26, %if.end14, %if.end7, %if.end, %entry, %if.end81
  %u.0 = phi %struct.bignum_st* [ %call54, %if.end81 ], [ %call54, %if.end72 ], [ %call54, %if.end61 ], [ %call54, %if.end52 ], [ null, %if.end45 ], [ null, %if.end33 ], [ null, %if.end26 ], [ null, %if.end14 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ]
  %x.0 = phi %struct.bignum_st* [ %call62, %if.end81 ], [ %call62, %if.end72 ], [ %call62, %if.end61 ], [ null, %if.end52 ], [ null, %if.end45 ], [ null, %if.end33 ], [ null, %if.end26 ], [ null, %if.end14 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ]
  %Apub.0 = phi %struct.bignum_st* [ %call37, %if.end81 ], [ %call37, %if.end72 ], [ %call37, %if.end61 ], [ %call37, %if.end52 ], [ %call37, %if.end45 ], [ %call37, %if.end33 ], [ null, %if.end26 ], [ null, %if.end14 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ]
  %Bpub.0 = phi %struct.bignum_st* [ %call18, %if.end81 ], [ %call18, %if.end72 ], [ %call18, %if.end61 ], [ %call18, %if.end52 ], [ %call18, %if.end45 ], [ %call18, %if.end33 ], [ %call18, %if.end26 ], [ %call18, %if.end14 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ]
  %Kclient.0 = phi %struct.bignum_st* [ %call65, %if.end81 ], [ %call65, %if.end72 ], [ %call65, %if.end61 ], [ null, %if.end52 ], [ null, %if.end45 ], [ null, %if.end33 ], [ null, %if.end26 ], [ null, %if.end14 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ]
  %Kserver.0 = phi %struct.bignum_st* [ %call74, %if.end81 ], [ %call74, %if.end72 ], [ null, %if.end61 ], [ null, %if.end52 ], [ null, %if.end45 ], [ null, %if.end33 ], [ null, %if.end26 ], [ null, %if.end14 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ]
  %ret.0 = phi i32 [ 1, %if.end81 ], [ 0, %if.end72 ], [ 0, %if.end61 ], [ 0, %if.end52 ], [ 0, %if.end45 ], [ 0, %if.end33 ], [ 0, %if.end26 ], [ 0, %if.end14 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %entry ]
  call void @BN_clear_free(%struct.bignum_st* noundef %Kclient.0) #3
  call void @BN_clear_free(%struct.bignum_st* noundef %Kserver.0) #3
  call void @BN_clear_free(%struct.bignum_st* noundef %x.0) #3
  call void @BN_free(%struct.bignum_st* noundef %u.0) #3
  call void @BN_free(%struct.bignum_st* noundef %Apub.0) #3
  %25 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  call void @BN_clear_free(%struct.bignum_st* noundef %25) #3
  call void @BN_free(%struct.bignum_st* noundef %Bpub.0) #3
  %26 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  call void @BN_clear_free(%struct.bignum_st* noundef %26) #3
  %27 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %27) #3
  %28 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  call void @BN_clear_free(%struct.bignum_st* noundef %28) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_srp(i8* noundef %client_pass, i8* noundef %server_pass) unnamed_addr #0 {
entry:
  %s = alloca %struct.bignum_st*, align 8
  %v = alloca %struct.bignum_st*, align 8
  %rand_tmp = alloca [32 x i8], align 16
  %0 = bitcast %struct.bignum_st** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %s, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.bignum_st* null, %struct.bignum_st** %v, align 8, !tbaa !3
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %rand_tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #5
  %call = tail call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #3
  %3 = bitcast %struct.SRP_gN_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* noundef %3) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %N = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %g = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call, i64 0, i32 1
  %5 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %call2 = call i32 @SRP_create_verifier_BN(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef %server_pass, %struct.bignum_st** noundef nonnull %s, %struct.bignum_st** noundef nonnull %v, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5) #3
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %if.end6

if.end6:                                          ; preds = %if.end
  %6 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.bignum_st* noundef %6) #3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct.bignum_st* noundef %7) #3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.bignum_st* noundef %8) #3
  %9 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct.bignum_st* noundef %9) #3
  %call9 = call i32 @RAND_bytes(i8* noundef nonnull %2, i32 noundef 32) #3
  %call11 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %2, i32 noundef 32, %struct.bignum_st* noundef null) #3
  %call12 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct.bignum_st* noundef %call11) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %if.end15

if.end15:                                         ; preds = %if.end6
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct.bignum_st* noundef %call11) #3
  %10 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %11 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %12 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  %call18 = call %struct.bignum_st* @SRP_Calc_B(%struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %struct.bignum_st* noundef %call18) #3
  %13 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call20 = call i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %13) #3
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv22) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %end, label %if.end26

if.end26:                                         ; preds = %if.end15
  %call28 = call i32 @RAND_bytes(i8* noundef nonnull %2, i32 noundef 32) #3
  %call30 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %2, i32 noundef 32, %struct.bignum_st* noundef null) #3
  %call31 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st* noundef %call30) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %end, label %if.end34

if.end34:                                         ; preds = %if.end26
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %struct.bignum_st* noundef %call30) #3
  %14 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %15 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %call37 = call %struct.bignum_st* @SRP_Calc_A(%struct.bignum_st* noundef %call30, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %struct.bignum_st* noundef %call37) #3
  %16 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call39 = call i32 @SRP_Verify_A_mod_N(%struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %16) #3
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv41) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %if.end45

if.end45:                                         ; preds = %if.end34
  %17 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call47 = call %struct.bignum_st* @SRP_Calc_u(%struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %17) #3
  %18 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  %call48 = call %struct.bignum_st* @SRP_Calc_x(%struct.bignum_st* noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef %client_pass) #3
  %19 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %20 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !9
  %call51 = call %struct.bignum_st* @SRP_Calc_client_key(%struct.bignum_st* noundef %19, %struct.bignum_st* noundef %call18, %struct.bignum_st* noundef %20, %struct.bignum_st* noundef %call48, %struct.bignum_st* noundef %call30, %struct.bignum_st* noundef %call47) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), %struct.bignum_st* noundef %call51) #3
  %21 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  %22 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !7
  %call53 = call %struct.bignum_st* @SRP_Calc_server_key(%struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %21, %struct.bignum_st* noundef %call47, %struct.bignum_st* noundef %call11, %struct.bignum_st* noundef %22) #3
  call void @test_output_bignum(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %call53) #3
  %call54 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), %struct.bignum_st* noundef %call51, %struct.bignum_st* noundef %call53) #3
  %tobool55.not = icmp ne i32 %call54, 0
  %spec.select = zext i1 %tobool55.not to i32
  br label %end

end:                                              ; preds = %if.end45, %if.end34, %if.end26, %if.end15, %if.end6, %if.end
  %ret.0 = phi i32 [ 0, %if.end34 ], [ 0, %if.end26 ], [ 0, %if.end15 ], [ 0, %if.end6 ], [ 0, %if.end ], [ %spec.select, %if.end45 ]
  %a.0 = phi %struct.bignum_st* [ %call30, %if.end34 ], [ %call30, %if.end26 ], [ null, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call30, %if.end45 ]
  %b.0 = phi %struct.bignum_st* [ %call11, %if.end34 ], [ %call11, %if.end26 ], [ %call11, %if.end15 ], [ %call11, %if.end6 ], [ null, %if.end ], [ %call11, %if.end45 ]
  %u.0 = phi %struct.bignum_st* [ null, %if.end34 ], [ null, %if.end26 ], [ null, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call47, %if.end45 ]
  %x.0 = phi %struct.bignum_st* [ null, %if.end34 ], [ null, %if.end26 ], [ null, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call48, %if.end45 ]
  %Apub.0 = phi %struct.bignum_st* [ %call37, %if.end34 ], [ null, %if.end26 ], [ null, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call37, %if.end45 ]
  %Bpub.0 = phi %struct.bignum_st* [ %call18, %if.end34 ], [ %call18, %if.end26 ], [ %call18, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call18, %if.end45 ]
  %Kclient.0 = phi %struct.bignum_st* [ null, %if.end34 ], [ null, %if.end26 ], [ null, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call51, %if.end45 ]
  %Kserver.0 = phi %struct.bignum_st* [ null, %if.end34 ], [ null, %if.end26 ], [ null, %if.end15 ], [ null, %if.end6 ], [ null, %if.end ], [ %call53, %if.end45 ]
  call void @BN_clear_free(%struct.bignum_st* noundef %Kclient.0) #3
  call void @BN_clear_free(%struct.bignum_st* noundef %Kserver.0) #3
  call void @BN_clear_free(%struct.bignum_st* noundef %x.0) #3
  call void @BN_free(%struct.bignum_st* noundef %u.0) #3
  call void @BN_free(%struct.bignum_st* noundef %Apub.0) #3
  call void @BN_clear_free(%struct.bignum_st* noundef %a.0) #3
  call void @BN_free(%struct.bignum_st* noundef %Bpub.0) #3
  call void @BN_clear_free(%struct.bignum_st* noundef %b.0) #3
  %23 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %23) #3
  %24 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !3
  call void @BN_clear_free(%struct.bignum_st* noundef %24) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @SRP_create_verifier_BN(i8* noundef, i8* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @test_output_bignum(i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_ne_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @SRP_Calc_B(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @SRP_Calc_A(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @SRP_Verify_A_mod_N(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @SRP_Calc_u(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @SRP_Calc_x(%struct.bignum_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @SRP_Calc_client_key(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @SRP_Calc_server_key(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_bn(i8* noundef %name, %struct.bignum_st* noundef %bn, i8* noundef %hexbn) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %tmp, align 8, !tbaa !3
  %call = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %tmp, i8* noundef %hexbn) #3
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %tmp, align 8, !tbaa !3
  %call2 = call i32 @BN_cmp(%struct.bignum_st* noundef %bn, %struct.bignum_st* noundef %1) #3
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i8* noundef %name) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %2 = load %struct.bignum_st*, %struct.bignum_st** %tmp, align 8, !tbaa !3
  %call7 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), %struct.bignum_st* noundef %bn, %struct.bignum_st* noundef %2) #3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %tmp, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %3) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 16}
!8 = !{!"SRP_gN_st", !4, i64 0, !4, i64 8, !4, i64 16}
!9 = !{!8, !4, i64 8}
