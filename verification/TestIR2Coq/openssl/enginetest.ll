; ModuleID = 'test/enginetest.c'
source_filename = "test/enginetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_method_st = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.rsa_st = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [13 x i8] c"test_engines\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"test_redirect\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"test/enginetest.c\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"new_h1 = ENGINE_new()\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"ENGINE_set_id(new_h1, \22test_id0\22)\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"test_id0\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"ENGINE_set_name(new_h1, \22First test item\22)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"First test item\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"new_h2 = ENGINE_new()\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"ENGINE_set_id(new_h2, \22test_id1\22)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"test_id1\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"ENGINE_set_name(new_h2, \22Second test item\22)\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Second test item\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"new_h3 = ENGINE_new()\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"ENGINE_set_id(new_h3, \22test_id2\22)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"test_id2\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"ENGINE_set_name(new_h3, \22Third test item\22)\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Third test item\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"new_h4 = ENGINE_new()\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"ENGINE_set_id(new_h4, \22test_id3\22)\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"test_id3\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"ENGINE_set_name(new_h4, \22Fourth test item\22)\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Fourth test item\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Engines:\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"ENGINE_add(new_h1)\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"ENGINE_remove(ptr)\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"ENGINE_add(new_h3)\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"ENGINE_add(new_h2)\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"ENGINE_remove(new_h2)\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"ENGINE_add(new_h4)\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"ENGINE_remove(new_h3)\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"ENGINE_remove(new_h4)\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"Remove failed - probably no hardware support present\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"ENGINE_remove(new_h1)\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"About to beef up the engine-type list\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"id%d\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Fake engine type %d\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"block[loop] = ENGINE_new()\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"ENGINE_set_id(block[loop], eid[loop])\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"ENGINE_set_name(block[loop], ename[loop])\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"ENGINE_add(block[loop])\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Adding stopped at %d, (%s,%s)\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"About to empty the engine-type list\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"#%d: id = \22%s\22, name = \22%s\22\00", align 1
@__const.test_redirect.pt = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"pkey = get_test_pkey()\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"tmp = OPENSSL_malloc(len)\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"ctx = EVP_PKEY_CTX_new(pkey, NULL)\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_encrypt test: no redirection\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_encrypt_init(ctx)\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_encrypt(ctx, tmp, &len, pt, sizeof(pt))\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"called_encrypt\00", align 1
@called_encrypt = internal unnamed_addr global i1 false, align 4
@.str.52 = private unnamed_addr constant [17 x i8] c"e = ENGINE_new()\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"ENGINE_set_id(e, \22Test redirect engine\22)\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"Test redirect engine\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"ENGINE_set_name(e, \22Test redirect engine\22)\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"ctx = EVP_PKEY_CTX_new(pkey, e)\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"EVP_PKEY_set1_engine(pkey, e)\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"test_rsa = EVP_PKEY_meth_new(EVP_PKEY_RSA, 0)\00", align 1
@test_rsa = internal unnamed_addr global %struct.evp_pkey_method_st* null, align 8
@.str.59 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_encrypt test: redirection via EVP_PKEY_CTX_new()\00", align 1
@.str.60 = private unnamed_addr constant [62 x i8] c"EVP_PKEY_encrypt test: redirection via EVP_PKEY_set1_engine()\00", align 1
@get_test_pkey.n = internal global [66 x i8] c"\00\AA6\AB\CE\88\AC\FD\FFUR<\7F\C4R?\90\EF\A0\0D\F3wJ%\9F.b\B4\C5\D9\9C\B5\AD\B3\00\A0(^S\01\93\0E\0Cp\FBhv\93\9C\E6\16\CEbJ\11\E0\08m4\1E\BC\AC\A0\A1\F5\00", align 16
@get_test_pkey.e = internal global [2 x i8] c"\11\00", align 1
@test_pkey_meths.rnid = internal constant i32 6, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @global_init() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 128, %struct.ossl_init_settings_st* noundef null) #7
  ret i32 %call
}

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_engines) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_redirect) #7
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_engines() #0 {
entry:
  %block = alloca [512 x %struct.engine_st*], align 16
  %eid = alloca [512 x i8*], align 16
  %ename = alloca [512 x i8*], align 16
  %buf = alloca [256 x i8], align 16
  %0 = bitcast [512 x %struct.engine_st*]* %block to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #8
  %1 = bitcast [512 x i8*]* %eid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %1) #8
  %2 = bitcast [512 x i8*]* %ename to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %2) #8
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #8
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 4096) #7
  %call1 = call %struct.engine_st* @ENGINE_new() #7
  %4 = bitcast %struct.engine_st* %call1 to i8*
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @ENGINE_set_id(%struct.engine_st* noundef %call1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @ENGINE_set_name(%struct.engine_st* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #7
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv9) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %call13 = call %struct.engine_st* @ENGINE_new() #7
  %5 = bitcast %struct.engine_st* %call13 to i8*
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* noundef %5) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %call17 = call i32 @ENGINE_set_id(%struct.engine_st* noundef %call13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #7
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv19) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  %call23 = call i32 @ENGINE_set_name(%struct.engine_st* noundef %call13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #7
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 noundef %conv25) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = call %struct.engine_st* @ENGINE_new() #7
  %6 = bitcast %struct.engine_st* %call29 to i8*
  %call30 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* noundef %6) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %call33 = call i32 @ENGINE_set_id(%struct.engine_st* noundef %call29, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #7
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv35) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %end, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %call39 = call i32 @ENGINE_set_name(%struct.engine_st* noundef %call29, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #7
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv41) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %call45 = call %struct.engine_st* @ENGINE_new() #7
  %7 = bitcast %struct.engine_st* %call45 to i8*
  %call46 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* noundef %7) #7
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %call49 = call i32 @ENGINE_set_id(%struct.engine_st* noundef %call45, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #7
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv51) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %end, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %call55 = call i32 @ENGINE_set_name(%struct.engine_st* noundef %call45, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0)) #7
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv57) #7
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false54
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call60 = call i32 @ENGINE_add(%struct.engine_st* noundef %call1) #7
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv62) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %end, label %if.end66

if.end66:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call67 = call %struct.engine_st* @ENGINE_get_first() #7
  %call68 = call i32 @ENGINE_remove(%struct.engine_st* noundef %call67) #7
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv70) #7
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %end, label %if.end74

if.end74:                                         ; preds = %if.end66
  %call75 = call i32 @ENGINE_free(%struct.engine_st* noundef %call67) #7
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call76 = call i32 @ENGINE_add(%struct.engine_st* noundef %call29) #7
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv78) #7
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %end, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end74
  %call82 = call i32 @ENGINE_add(%struct.engine_st* noundef %call13) #7
  %cmp83 = icmp ne i32 %call82, 0
  %conv84 = zext i1 %cmp83 to i32
  %call85 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv84) #7
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %end, label %if.end88

if.end88:                                         ; preds = %lor.lhs.false81
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call89 = call i32 @ENGINE_remove(%struct.engine_st* noundef %call13) #7
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv91) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %end, label %if.end95

if.end95:                                         ; preds = %if.end88
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call96 = call i32 @ENGINE_add(%struct.engine_st* noundef %call45) #7
  %cmp97 = icmp ne i32 %call96, 0
  %conv98 = zext i1 %cmp97 to i32
  %call99 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv98) #7
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %end, label %if.end102

if.end102:                                        ; preds = %if.end95
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call103 = call i32 @ENGINE_add(%struct.engine_st* noundef %call29) #7
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv105) #7
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %end, label %if.end109

if.end109:                                        ; preds = %if.end102
  call void @ERR_clear_error() #7
  %call110 = call i32 @ENGINE_remove(%struct.engine_st* noundef %call13) #7
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv112) #7
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %end, label %if.end116

if.end116:                                        ; preds = %if.end109
  call void @ERR_clear_error() #7
  %call117 = call i32 @ENGINE_remove(%struct.engine_st* noundef %call29) #7
  %cmp118 = icmp ne i32 %call117, 0
  %conv119 = zext i1 %cmp118 to i32
  %call120 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv119) #7
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %end, label %if.end123

if.end123:                                        ; preds = %if.end116
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call124 = call i32 @ENGINE_remove(%struct.engine_st* noundef %call45) #7
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv126) #7
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %end, label %if.end130

if.end130:                                        ; preds = %if.end123
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call131 = call %struct.engine_st* @ENGINE_get_first() #7
  %cmp132.not = icmp eq %struct.engine_st* %call131, null
  br i1 %cmp132.not, label %if.end139, label %if.then134

if.then134:                                       ; preds = %if.end130
  %call135 = call i32 @ENGINE_remove(%struct.engine_st* noundef nonnull %call131) #7
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.then134
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0)) #7
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.then137, %if.end130
  %call140 = call i32 @ENGINE_free(%struct.engine_st* noundef %call131) #7
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)) #7
  call fastcc void @display_engine_list() #9
  %call141 = call i32 @ENGINE_add(%struct.engine_st* noundef %call1) #7
  %cmp142 = icmp ne i32 %call141, 0
  %conv143 = zext i1 %cmp142 to i32
  %call144 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv143) #7
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %end, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %if.end139
  %call147 = call i32 @ENGINE_remove(%struct.engine_st* noundef %call1) #7
  %cmp148 = icmp ne i32 %call147, 0
  %conv149 = zext i1 %cmp148 to i32
  %call150 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv149) #7
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %end, label %if.end153

if.end153:                                        ; preds = %lor.lhs.false146
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0)) #7
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false181
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %for.body196, label %for.body, !llvm.loop !3

for.body:                                         ; preds = %if.end153, %for.cond
  %indvars.iv = phi i64 [ 0, %if.end153 ], [ %indvars.iv.next, %for.cond ]
  %8 = trunc i64 %indvars.iv to i32
  %call157 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 noundef %8) #7
  %call159 = call i8* @CRYPTO_strdup(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 149) #7
  %arrayidx = getelementptr inbounds [512 x i8*], [512 x i8*]* %eid, i64 0, i64 %indvars.iv
  store i8* %call159, i8** %arrayidx, align 8, !tbaa !5
  %call161 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 noundef %8) #7
  %call163 = call i8* @CRYPTO_strdup(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 151) #7
  %arrayidx165 = getelementptr inbounds [512 x i8*], [512 x i8*]* %ename, i64 0, i64 %indvars.iv
  store i8* %call163, i8** %arrayidx165, align 8, !tbaa !5
  %call166 = call %struct.engine_st* @ENGINE_new() #7
  %arrayidx168 = getelementptr inbounds [512 x %struct.engine_st*], [512 x %struct.engine_st*]* %block, i64 0, i64 %indvars.iv
  store %struct.engine_st* %call166, %struct.engine_st** %arrayidx168, align 8, !tbaa !5
  %9 = bitcast %struct.engine_st* %call166 to i8*
  %call169 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8* noundef %9) #7
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %end, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %for.body
  %10 = load %struct.engine_st*, %struct.engine_st** %arrayidx168, align 8, !tbaa !5
  %call176 = call i32 @ENGINE_set_id(%struct.engine_st* noundef %10, i8* noundef %call159) #7
  %cmp177 = icmp ne i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  %call179 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv178) #7
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %end, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false171
  %11 = load %struct.engine_st*, %struct.engine_st** %arrayidx168, align 8, !tbaa !5
  %call186 = call i32 @ENGINE_set_name(%struct.engine_st* noundef %11, i8* noundef %call163) #7
  %cmp187 = icmp ne i32 %call186, 0
  %conv188 = zext i1 %cmp187 to i32
  %call189 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv188) #7
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %end, label %for.cond

for.body196:                                      ; preds = %for.cond, %for.inc212
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %for.inc212 ], [ 0, %for.cond ]
  %arrayidx198 = getelementptr inbounds [512 x %struct.engine_st*], [512 x %struct.engine_st*]* %block, i64 0, i64 %indvars.iv319
  %12 = load %struct.engine_st*, %struct.engine_st** %arrayidx198, align 8, !tbaa !5
  %call199 = call i32 @ENGINE_add(%struct.engine_st* noundef %12) #7
  %cmp200 = icmp ne i32 %call199, 0
  %conv201 = zext i1 %cmp200 to i32
  %call202 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv201) #7
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then204, label %for.inc212

if.then204:                                       ; preds = %for.body196
  %13 = trunc i64 %indvars.iv319 to i32
  %idxprom197.le = and i64 %indvars.iv319, 4294967295
  %arrayidx198.le = getelementptr inbounds [512 x %struct.engine_st*], [512 x %struct.engine_st*]* %block, i64 0, i64 %idxprom197.le
  %14 = load %struct.engine_st*, %struct.engine_st** %arrayidx198.le, align 8, !tbaa !5
  %call207 = call i8* @ENGINE_get_id(%struct.engine_st* noundef %14) #7
  %15 = load %struct.engine_st*, %struct.engine_st** %arrayidx198.le, align 8, !tbaa !5
  %call210 = call i8* @ENGINE_get_name(%struct.engine_st* noundef %15) #7
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 noundef %13, i8* noundef %call207, i8* noundef %call210) #7
  br label %cleanup_loop

for.inc212:                                       ; preds = %for.body196
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %exitcond322.not = icmp eq i64 %indvars.iv.next320, 512
  br i1 %exitcond322.not, label %cleanup_loop, label %for.body196, !llvm.loop !9

cleanup_loop:                                     ; preds = %for.inc212, %if.then204
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0)) #7
  %call215310 = call %struct.engine_st* @ENGINE_get_first() #7
  %cmp216.not311 = icmp eq %struct.engine_st* %call215310, null
  br i1 %cmp216.not311, label %for.body229.preheader, label %while.body

while.body:                                       ; preds = %cleanup_loop, %if.end224
  %call215312 = phi %struct.engine_st* [ %call215, %if.end224 ], [ %call215310, %cleanup_loop ]
  %call218 = call i32 @ENGINE_remove(%struct.engine_st* noundef nonnull %call215312) #7
  %cmp219 = icmp ne i32 %call218, 0
  %conv220 = zext i1 %cmp219 to i32
  %call221 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv220) #7
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %end, label %if.end224

if.end224:                                        ; preds = %while.body
  %call225 = call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call215312) #7
  %call215 = call %struct.engine_st* @ENGINE_get_first() #7
  %cmp216.not = icmp eq %struct.engine_st* %call215, null
  br i1 %cmp216.not, label %for.body229.preheader, label %while.body, !llvm.loop !10

for.body229.preheader:                            ; preds = %if.end224, %cleanup_loop
  br label %for.body229

for.body229:                                      ; preds = %for.body229.preheader, %for.body229
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %for.body229 ], [ 0, %for.body229.preheader ]
  %arrayidx231 = getelementptr inbounds [512 x i8*], [512 x i8*]* %eid, i64 0, i64 %indvars.iv323
  %16 = load i8*, i8** %arrayidx231, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 173) #7
  %arrayidx233 = getelementptr inbounds [512 x i8*], [512 x i8*]* %ename, i64 0, i64 %indvars.iv323
  %17 = load i8*, i8** %arrayidx233, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 174) #7
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1
  %exitcond326.not = icmp eq i64 %indvars.iv.next324, 512
  br i1 %exitcond326.not, label %end, label %for.body229, !llvm.loop !11

end:                                              ; preds = %for.body, %lor.lhs.false171, %lor.lhs.false181, %while.body, %for.body229, %if.end139, %lor.lhs.false146, %if.end123, %if.end116, %if.end109, %if.end102, %if.end95, %if.end88, %if.end74, %lor.lhs.false81, %if.end66, %if.end, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false22, %lor.lhs.false28, %lor.lhs.false32, %lor.lhs.false38, %lor.lhs.false44, %lor.lhs.false48, %lor.lhs.false54
  %to_return.0 = phi i32 [ 0, %lor.lhs.false146 ], [ 0, %if.end139 ], [ 0, %if.end123 ], [ 0, %if.end116 ], [ 0, %if.end109 ], [ 0, %if.end102 ], [ 0, %if.end95 ], [ 0, %if.end88 ], [ 0, %lor.lhs.false81 ], [ 0, %if.end74 ], [ 0, %if.end66 ], [ 0, %if.end ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.body229 ], [ 0, %while.body ], [ 0, %lor.lhs.false181 ], [ 0, %lor.lhs.false171 ], [ 0, %for.body ]
  %new_h2.0 = phi %struct.engine_st* [ %call13, %lor.lhs.false146 ], [ %call13, %if.end139 ], [ %call13, %if.end123 ], [ %call13, %if.end116 ], [ %call13, %if.end109 ], [ %call13, %if.end102 ], [ %call13, %if.end95 ], [ %call13, %if.end88 ], [ %call13, %lor.lhs.false81 ], [ %call13, %if.end74 ], [ %call13, %if.end66 ], [ %call13, %if.end ], [ %call13, %lor.lhs.false54 ], [ %call13, %lor.lhs.false48 ], [ %call13, %lor.lhs.false44 ], [ %call13, %lor.lhs.false38 ], [ %call13, %lor.lhs.false32 ], [ %call13, %lor.lhs.false28 ], [ %call13, %lor.lhs.false22 ], [ %call13, %lor.lhs.false16 ], [ %call13, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call13, %for.body229 ], [ %call13, %while.body ], [ %call13, %lor.lhs.false181 ], [ %call13, %lor.lhs.false171 ], [ %call13, %for.body ]
  %new_h3.0 = phi %struct.engine_st* [ %call29, %lor.lhs.false146 ], [ %call29, %if.end139 ], [ %call29, %if.end123 ], [ %call29, %if.end116 ], [ %call29, %if.end109 ], [ %call29, %if.end102 ], [ %call29, %if.end95 ], [ %call29, %if.end88 ], [ %call29, %lor.lhs.false81 ], [ %call29, %if.end74 ], [ %call29, %if.end66 ], [ %call29, %if.end ], [ %call29, %lor.lhs.false54 ], [ %call29, %lor.lhs.false48 ], [ %call29, %lor.lhs.false44 ], [ %call29, %lor.lhs.false38 ], [ %call29, %lor.lhs.false32 ], [ %call29, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call29, %for.body229 ], [ %call29, %while.body ], [ %call29, %lor.lhs.false181 ], [ %call29, %lor.lhs.false171 ], [ %call29, %for.body ]
  %new_h4.0 = phi %struct.engine_st* [ %call45, %lor.lhs.false146 ], [ %call45, %if.end139 ], [ %call45, %if.end123 ], [ %call45, %if.end116 ], [ %call45, %if.end109 ], [ %call45, %if.end102 ], [ %call45, %if.end95 ], [ %call45, %if.end88 ], [ %call45, %lor.lhs.false81 ], [ %call45, %if.end74 ], [ %call45, %if.end66 ], [ %call45, %if.end ], [ %call45, %lor.lhs.false54 ], [ %call45, %lor.lhs.false48 ], [ %call45, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false32 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call45, %for.body229 ], [ %call45, %while.body ], [ %call45, %lor.lhs.false181 ], [ %call45, %lor.lhs.false171 ], [ %call45, %for.body ]
  %call237 = call i32 @ENGINE_free(%struct.engine_st* noundef %call1) #7
  %call238 = call i32 @ENGINE_free(%struct.engine_st* noundef %new_h2.0) #7
  %call239 = call i32 @ENGINE_free(%struct.engine_st* noundef %new_h3.0) #7
  %call240 = call i32 @ENGINE_free(%struct.engine_st* noundef %new_h4.0) #7
  br label %for.body244

for.body244:                                      ; preds = %end, %for.body244
  %indvars.iv327 = phi i64 [ 0, %end ], [ %indvars.iv.next328, %for.body244 ]
  %arrayidx246 = getelementptr inbounds [512 x %struct.engine_st*], [512 x %struct.engine_st*]* %block, i64 0, i64 %indvars.iv327
  %18 = load %struct.engine_st*, %struct.engine_st** %arrayidx246, align 8, !tbaa !5
  %call247 = call i32 @ENGINE_free(%struct.engine_st* noundef %18) #7
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  %exitcond330.not = icmp eq i64 %indvars.iv.next328, 512
  br i1 %exitcond330.not, label %for.end250, label %for.body244, !llvm.loop !12

for.end250:                                       ; preds = %for.body244
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #8
  ret i32 %to_return.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_redirect() #0 {
entry:
  %pt = alloca [13 x i8], align 1
  %len = alloca i64, align 8
  %0 = getelementptr inbounds [13 x i8], [13 x i8]* %pt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(13) %0, i8* noundef nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @__const.test_redirect.pt, i64 0, i64 0), i64 13, i1 false)
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %call = tail call fastcc %struct.evp_pkey_st* @get_test_pkey() #9
  %2 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i8* noundef %2) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %call) #7
  %conv = sext i32 %call2 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !13
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 264) #7
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call3) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef null) #7
  %3 = bitcast %struct.evp_pkey_ctx_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.46, i64 0, i64 0), i8* noundef %3) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0)) #7
  %call13 = tail call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call8) #7
  %call14 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %call16 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %call8, i8* noundef %call3, i64* noundef nonnull %len, i8* noundef nonnull %0, i64 noundef 13) #7
  %call17 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %.b174 = load i1, i1* @called_encrypt, align 4
  %conv20 = zext i1 %.b174 to i32
  %call21 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv20) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false19
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call8) #7
  %call25 = call %struct.engine_st* @ENGINE_new() #7
  %4 = bitcast %struct.engine_st* %call25 to i8*
  %call26 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* noundef %4) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end24
  %call29 = call i32 @ENGINE_set_id(%struct.engine_st* noundef %call25, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0)) #7
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv31) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %call35 = call i32 @ENGINE_set_name(%struct.engine_st* noundef %call25, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0)) #7
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv37) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false34
  %call42 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef %call25) #7
  %5 = bitcast %struct.evp_pkey_ctx_st* %call42 to i8*
  %call43 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0), i8* noundef %5) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end41
  %call46 = call i32 @EVP_PKEY_set1_engine(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef %call25) #7
  %call47 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call46, i32 noundef 0) #7
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false45
  %call51 = call %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef 6, i32 noundef 0) #7
  store %struct.evp_pkey_method_st* %call51, %struct.evp_pkey_method_st** @test_rsa, align 8, !tbaa !5
  %6 = bitcast %struct.evp_pkey_method_st* %call51 to i8*
  %call52 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.58, i64 0, i64 0), i8* noundef %6) #7
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end55

if.end55:                                         ; preds = %if.end50
  %call56 = call i32 @ENGINE_set_pkey_meths(%struct.engine_st* noundef %call25, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* noundef nonnull @test_pkey_meths) #7
  %call57 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef %call25) #7
  %7 = bitcast %struct.evp_pkey_ctx_st* %call57 to i8*
  %call58 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0), i8* noundef %7) #7
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %if.end55
  %call62 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call57) #7
  %call63 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call62, i32 noundef 0) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %if.end66

if.end66:                                         ; preds = %if.end61
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call57) #7
  %8 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @test_rsa, align 8, !tbaa !5
  call void @EVP_PKEY_meth_set_encrypt(%struct.evp_pkey_method_st* noundef %8, i32 (%struct.evp_pkey_ctx_st*)* noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @test_encrypt) #7
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.59, i64 0, i64 0)) #7
  %call67 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef %call25) #7
  %9 = bitcast %struct.evp_pkey_ctx_st* %call67 to i8*
  %call68 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0), i8* noundef %9) #7
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end66
  %call72 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call67) #7
  %call73 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call72, i32 noundef 0) #7
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end71
  %call77 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %call67, i8* noundef %call3, i64* noundef nonnull %len, i8* noundef nonnull %0, i64 noundef 13) #7
  %call78 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call77, i32 noundef 0) #7
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false75
  %.b173 = load i1, i1* @called_encrypt, align 4
  %conv82 = zext i1 %.b173 to i32
  %call83 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv82) #7
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %if.end86

if.end86:                                         ; preds = %lor.lhs.false80
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call67) #7
  store i1 false, i1* @called_encrypt, align 4
  %call87 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef null) #7
  %10 = bitcast %struct.evp_pkey_ctx_st* %call87 to i8*
  %call88 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.46, i64 0, i64 0), i8* noundef %10) #7
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end86
  %call91 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call87) #7
  %call92 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call91, i32 noundef 0) #7
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  %call96 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %call87, i8* noundef %call3, i64* noundef nonnull %len, i8* noundef nonnull %0, i64 noundef 13) #7
  %call97 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call96, i32 noundef 0) #7
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false94
  %.b172 = load i1, i1* @called_encrypt, align 4
  %conv101 = zext i1 %.b172 to i32
  %call102 = call i32 @test_false(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv101) #7
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %if.end105

if.end105:                                        ; preds = %lor.lhs.false99
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call87) #7
  %call106 = call i32 @EVP_PKEY_set1_engine(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef %call25) #7
  %cmp107 = icmp ne i32 %call106, 0
  %conv108 = zext i1 %cmp107 to i32
  %call109 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv108) #7
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %if.end112

if.end112:                                        ; preds = %if.end105
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.60, i64 0, i64 0)) #7
  %call113 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call, %struct.engine_st* noundef null) #7
  %11 = bitcast %struct.evp_pkey_ctx_st* %call113 to i8*
  %call114 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.46, i64 0, i64 0), i8* noundef %11) #7
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %if.end112
  %call117 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call113) #7
  %call118 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call117, i32 noundef 0) #7
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %lor.lhs.false116
  %call122 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %call113, i8* noundef %call3, i64* noundef nonnull %len, i8* noundef nonnull %0, i64 noundef 13) #7
  %call123 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i32 noundef %call122, i32 noundef 0) #7
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false120
  %.b = load i1, i1* @called_encrypt, align 4
  %conv127 = zext i1 %.b to i32
  %call128 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv127) #7
  %tobool129.not = icmp ne i32 %call128, 0
  %spec.select = zext i1 %tobool129.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false125, %if.end112, %lor.lhs.false116, %lor.lhs.false120, %if.end105, %if.end86, %lor.lhs.false90, %lor.lhs.false94, %lor.lhs.false99, %if.end71, %lor.lhs.false75, %lor.lhs.false80, %if.end66, %if.end61, %if.end55, %if.end50, %if.end41, %lor.lhs.false45, %if.end24, %lor.lhs.false28, %lor.lhs.false34, %if.end12, %lor.lhs.false, %lor.lhs.false19, %if.end7, %if.end, %entry
  %tmp.0 = phi i8* [ %call3, %lor.lhs.false120 ], [ %call3, %lor.lhs.false116 ], [ %call3, %if.end112 ], [ %call3, %if.end105 ], [ %call3, %lor.lhs.false99 ], [ %call3, %lor.lhs.false94 ], [ %call3, %lor.lhs.false90 ], [ %call3, %if.end86 ], [ %call3, %lor.lhs.false80 ], [ %call3, %lor.lhs.false75 ], [ %call3, %if.end71 ], [ %call3, %if.end66 ], [ %call3, %if.end61 ], [ %call3, %if.end55 ], [ %call3, %if.end50 ], [ %call3, %lor.lhs.false45 ], [ %call3, %if.end41 ], [ %call3, %lor.lhs.false34 ], [ %call3, %lor.lhs.false28 ], [ %call3, %if.end24 ], [ %call3, %lor.lhs.false19 ], [ %call3, %lor.lhs.false ], [ %call3, %if.end12 ], [ %call3, %if.end7 ], [ %call3, %if.end ], [ null, %entry ], [ %call3, %lor.lhs.false125 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call113, %lor.lhs.false120 ], [ %call113, %lor.lhs.false116 ], [ %call113, %if.end112 ], [ null, %if.end105 ], [ %call87, %lor.lhs.false99 ], [ %call87, %lor.lhs.false94 ], [ %call87, %lor.lhs.false90 ], [ %call87, %if.end86 ], [ %call67, %lor.lhs.false80 ], [ %call67, %lor.lhs.false75 ], [ %call67, %if.end71 ], [ %call67, %if.end66 ], [ %call57, %if.end61 ], [ %call57, %if.end55 ], [ %call42, %if.end50 ], [ %call42, %lor.lhs.false45 ], [ %call42, %if.end41 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false28 ], [ null, %if.end24 ], [ %call8, %lor.lhs.false19 ], [ %call8, %lor.lhs.false ], [ %call8, %if.end12 ], [ %call8, %if.end7 ], [ null, %if.end ], [ null, %entry ], [ %call113, %lor.lhs.false125 ]
  %e.0 = phi %struct.engine_st* [ %call25, %lor.lhs.false120 ], [ %call25, %lor.lhs.false116 ], [ %call25, %if.end112 ], [ %call25, %if.end105 ], [ %call25, %lor.lhs.false99 ], [ %call25, %lor.lhs.false94 ], [ %call25, %lor.lhs.false90 ], [ %call25, %if.end86 ], [ %call25, %lor.lhs.false80 ], [ %call25, %lor.lhs.false75 ], [ %call25, %if.end71 ], [ %call25, %if.end66 ], [ %call25, %if.end61 ], [ %call25, %if.end55 ], [ %call25, %if.end50 ], [ %call25, %lor.lhs.false45 ], [ %call25, %if.end41 ], [ %call25, %lor.lhs.false34 ], [ %call25, %lor.lhs.false28 ], [ %call25, %if.end24 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false ], [ null, %if.end12 ], [ null, %if.end7 ], [ null, %if.end ], [ null, %entry ], [ %call25, %lor.lhs.false125 ]
  %to_return.0 = phi i32 [ 0, %lor.lhs.false120 ], [ 0, %lor.lhs.false116 ], [ 0, %if.end112 ], [ 0, %if.end105 ], [ 0, %lor.lhs.false99 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false90 ], [ 0, %if.end86 ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false75 ], [ 0, %if.end71 ], [ 0, %if.end66 ], [ 0, %if.end61 ], [ 0, %if.end55 ], [ 0, %if.end50 ], [ 0, %lor.lhs.false45 ], [ 0, %if.end41 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false28 ], [ 0, %if.end24 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false ], [ 0, %if.end12 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false125 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #7
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #7
  %call132 = call i32 @ENGINE_free(%struct.engine_st* noundef %e.0) #7
  call void @CRYPTO_free(i8* noundef %tmp.0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 352) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %0) #8
  ret i32 %to_return.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.engine_st* @ENGINE_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @display_engine_list() unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_first() #7
  %cmp.not11 = icmp eq %struct.engine_st* %call, null
  br i1 %cmp.not11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %loop.013 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %h.012 = phi %struct.engine_st* [ %call3, %for.body ], [ %call, %entry ]
  %inc = add nuw nsw i32 %loop.013, 1
  %call1 = tail call i8* @ENGINE_get_id(%struct.engine_st* noundef nonnull %h.012) #7
  %call2 = tail call i8* @ENGINE_get_name(%struct.engine_st* noundef nonnull %h.012) #7
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %loop.013, i8* noundef %call1, i8* noundef %call2) #7
  %call3 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %h.012) #7
  %cmp.not = icmp eq %struct.engine_st* %call3, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.body, %entry
  %call4 = tail call i32 @ENGINE_free(%struct.engine_st* noundef null) #7
  ret void
}

declare dso_local i32 @ENGINE_add(%struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #1

declare dso_local i32 @ENGINE_remove(%struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @ENGINE_get_id(%struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i8* @ENGINE_get_name(%struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @get_test_pkey() unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #7
  %call1 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #7
  %cmp = icmp eq %struct.rsa_st* %call, null
  %cmp2 = icmp eq %struct.evp_pkey_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %entry
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call4 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call1, i32 noundef 6, i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %entry
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #7
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call1) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call5 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @get_test_pkey.n, i64 0, i64 0), i32 noundef 65, %struct.bignum_st* noundef null) #7
  %call6 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @get_test_pkey.e, i64 0, i64 0), i32 noundef 1, %struct.bignum_st* noundef null) #7
  %call7 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef nonnull %call, %struct.bignum_st* noundef %call5, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef null) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then9 ], [ %call1, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_set1_engine(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ENGINE_set_pkey_meths(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @test_pkey_meths(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_pkey_method_st** noundef writeonly %pmeth, i32** nocapture noundef writeonly %pnids, i32 noundef %nid) #5 {
entry:
  %cmp = icmp eq %struct.evp_pkey_method_st** %pmeth, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* @test_pkey_meths.rnid, i32** %pnids, align 8, !tbaa !5
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %nid, 6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @test_rsa, align 8, !tbaa !5
  store %struct.evp_pkey_method_st* %0, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !5
  br label %return

if.end3:                                          ; preds = %if.end
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare dso_local void @EVP_PKEY_meth_set_encrypt(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @test_encrypt(%struct.evp_pkey_ctx_st* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %sig, i64* nocapture noundef readnone %siglen, i8* nocapture noundef readnone %tbs, i64 noundef %tbslen) #6 {
entry:
  store i1 true, i1* @called_encrypt, align 4
  ret i32 1
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @RSA_new() local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !4}
