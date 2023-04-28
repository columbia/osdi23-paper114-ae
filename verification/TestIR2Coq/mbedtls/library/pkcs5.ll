; ModuleID = 'pkcs5.c'
source_filename = "pkcs5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cmac_context_t = type opaque

@.str = private unnamed_addr constant [8 x i8] c"pkcs5.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\05\0C\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  PBKDF2 (SHA1) #%d: \00", align 1
@password_test_data = internal constant [6 x [32 x i8]] [[32 x i8] c"password\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"password\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"password\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"passwordPASSWORDpassword\00\00\00\00\00\00\00\00", [32 x i8] c"pass\00word\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer], align 16
@plen_test_data = internal constant [6 x i64] [i64 8, i64 8, i64 8, i64 24, i64 9, i64 0], align 16
@salt_test_data = internal constant [6 x [40 x i8]] [[40 x i8] c"salt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [40 x i8] c"salt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [40 x i8] c"salt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [40 x i8] c"saltSALTsaltSALTsaltSALTsaltSALTsalt\00\00\00\00", [40 x i8] c"sa\00lt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [40 x i8] zeroinitializer], align 16
@slen_test_data = internal constant [6 x i64] [i64 4, i64 4, i64 4, i64 36, i64 5, i64 0], align 16
@it_cnt_test_data = internal constant [6 x i32] [i32 1, i32 2, i32 4096, i32 4096, i32 4096, i32 0], align 16
@key_len_test_data = internal constant [6 x i32] [i32 20, i32 20, i32 20, i32 25, i32 16, i32 0], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@result_key_test_data = internal constant <{ <{ [20 x i8], [12 x i8] }>, <{ [20 x i8], [12 x i8] }>, <{ [20 x i8], [12 x i8] }>, [32 x i8], <{ [16 x i8], [16 x i8] }>, [32 x i8] }> <{ <{ [20 x i8], [12 x i8] }> <{ [20 x i8] c"\0C`\C8\0F\96\1F\0Eq\F3\A9\B5$\AF`\12\06/\E07\A6", [12 x i8] zeroinitializer }>, <{ [20 x i8], [12 x i8] }> <{ [20 x i8] c"\EAl\01M\C7-o\8C\CD\1E\D9*\CE\1DA\F0\D8\DE\89W", [12 x i8] zeroinitializer }>, <{ [20 x i8], [12 x i8] }> <{ [20 x i8] c"K\00y\01\B7eH\9A\BE\ADI\D9&\F7!\D0e\A4)\C1", [12 x i8] zeroinitializer }>, [32 x i8] c"=.\ECO\E4\1C\84\9B\80\C8\D86b\C0\E4J\8B)\1A\96L\F2\F0p8\00\00\00\00\00\00\00", <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"V\FAj\A7UH\09\9D\CC7\D7\F04%\E0\C3", [16 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs5_pbes2(%struct.mbedtls_asn1_buf* noundef %pbe_params, i32 noundef %mode, i8* noundef %pwd, i64 noundef %pwdlen, i8* noundef %data, i64 noundef %datalen, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %pbe_params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %mode.addr = alloca i32, align 4
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %datalen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %iterations = alloca i32, align 4
  %keylen = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %kdf_alg_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %enc_scheme_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %kdf_alg_params = alloca %struct.mbedtls_asn1_buf, align 8
  %enc_scheme_params = alloca %struct.mbedtls_asn1_buf, align 8
  %salt = alloca %struct.mbedtls_asn1_buf, align 8
  %md_type = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  %iv = alloca [32 x i8], align 16
  %olen = alloca i64, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %cipher_info = alloca %struct.mbedtls_cipher_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  %cipher_alg = alloca i32, align 4
  %cipher_ctx = alloca %struct.mbedtls_cipher_context_t, align 8
  store %struct.mbedtls_asn1_buf* %pbe_params, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %datalen, i64* %datalen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 0, i32* %iterations, align 4
  store i32 0, i32* %keylen, align 4
  store i32 2, i32* %md_type, align 4
  store i64 0, i64* %olen, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 2
  %1 = load i8*, i8** %p1, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %3, i32 0, i32 1
  %4 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %end, align 8
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %pbe_params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %5, i32 0, i32 0
  %6 = load i32, i32* %tag, align 8
  %cmp = icmp ne i32 %6, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef -98, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 138) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %end, align 8
  %call2 = call i32 @mbedtls_asn1_get_alg(i8** noundef %p, i8* noundef %7, %struct.mbedtls_asn1_buf* noundef %kdf_alg_oid, %struct.mbedtls_asn1_buf* noundef %kdf_alg_params) #4
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call5 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 142) #4
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %len7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %kdf_alg_oid, i32 0, i32 1
  %9 = load i64, i64* %len7, align 8
  %cmp8 = icmp ne i64 9, %9
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end6
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %kdf_alg_oid, i32 0, i32 2
  %10 = load i8*, i8** %p9, align 8
  %len10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %kdf_alg_oid, i32 0, i32 1
  %11 = load i64, i64* %len10, align 8
  %call11 = call i32 @memcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10, i64 noundef %11) #5
  %cmp12 = icmp ne i32 %call11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end6
  %12 = phi i1 [ true, %if.end6 ], [ %cmp12, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  %cmp13 = icmp ne i32 %lor.ext, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.end
  store i32 -11904, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.end
  %call16 = call i32 @pkcs5_parse_pbkdf2_params(%struct.mbedtls_asn1_buf* noundef %kdf_alg_params, %struct.mbedtls_asn1_buf* noundef %salt, i32* noundef %iterations, i32* noundef %keylen, i32* noundef %md_type) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %14 = load i32, i32* %md_type, align 4
  %call20 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %14) #4
  store %struct.mbedtls_md_info_t* %call20, %struct.mbedtls_md_info_t** %md_info, align 8
  %15 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp21 = icmp eq %struct.mbedtls_md_info_t* %15, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  store i32 -11904, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end19
  %16 = load i8*, i8** %end, align 8
  %call24 = call i32 @mbedtls_asn1_get_alg(i8** noundef %p, i8* noundef %16, %struct.mbedtls_asn1_buf* noundef %enc_scheme_oid, %struct.mbedtls_asn1_buf* noundef %enc_scheme_params) #4
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %17 = load i32, i32* %ret, align 4
  %call27 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 163) #4
  store i32 %call27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  %call29 = call i32 @mbedtls_oid_get_cipher_alg(%struct.mbedtls_asn1_buf* noundef %enc_scheme_oid, i32* noundef %cipher_alg) #4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i32 -11904, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %18 = load i32, i32* %cipher_alg, align 4
  %call33 = call %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef %18) #4
  store %struct.mbedtls_cipher_info_t* %call33, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %19 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %cmp34 = icmp eq %struct.mbedtls_cipher_info_t* %19, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 -11904, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %20 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %key_bitlen = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %20, i32 0, i32 2
  %21 = load i32, i32* %key_bitlen, align 8
  %div = udiv i32 %21, 8
  store i32 %div, i32* %keylen, align 4
  %tag37 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %enc_scheme_params, i32 0, i32 0
  %22 = load i32, i32* %tag37, align 8
  %cmp38 = icmp ne i32 %22, 4
  br i1 %cmp38, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %len39 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %enc_scheme_params, i32 0, i32 1
  %23 = load i64, i64* %len39, align 8
  %24 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %iv_size = getelementptr inbounds %struct.mbedtls_cipher_info_t, %struct.mbedtls_cipher_info_t* %24, i32 0, i32 4
  %25 = load i32, i32* %iv_size, align 8
  %conv = zext i32 %25 to i64
  %cmp40 = icmp ne i64 %23, %conv
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false, %if.end36
  store i32 -12032, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %lor.lhs.false
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #4
  call void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %iv, i64 0, i64 0
  %p44 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %enc_scheme_params, i32 0, i32 2
  %26 = load i8*, i8** %p44, align 8
  %len45 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %enc_scheme_params, i32 0, i32 1
  %27 = load i64, i64* %len45, align 8
  %call46 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %26, i64 noundef %27) #6
  %28 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call47 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %28, i32 noundef 1) #4
  store i32 %call47, i32* %ret, align 4
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end43
  br label %exit

if.end51:                                         ; preds = %if.end43
  %29 = load i8*, i8** %pwd.addr, align 8
  %30 = load i64, i64* %pwdlen.addr, align 8
  %p52 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %salt, i32 0, i32 2
  %31 = load i8*, i8** %p52, align 8
  %len53 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %salt, i32 0, i32 1
  %32 = load i64, i64* %len53, align 8
  %33 = load i32, i32* %iterations, align 4
  %34 = load i32, i32* %keylen, align 4
  %arraydecay54 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call55 = call i32 @mbedtls_pkcs5_pbkdf2_hmac(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %29, i64 noundef %30, i8* noundef %31, i64 noundef %32, i32 noundef %33, i32 noundef %34, i8* noundef %arraydecay54) #4
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end51
  br label %exit

if.end59:                                         ; preds = %if.end51
  %35 = load %struct.mbedtls_cipher_info_t*, %struct.mbedtls_cipher_info_t** %cipher_info, align 8
  %call60 = call i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, %struct.mbedtls_cipher_info_t* noundef %35) #4
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  br label %exit

if.end64:                                         ; preds = %if.end59
  %arraydecay65 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %36 = load i32, i32* %keylen, align 4
  %mul = mul nsw i32 8, %36
  %37 = load i32, i32* %mode.addr, align 4
  %call66 = call i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay65, i32 noundef %mul, i32 noundef %37) #4
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end64
  br label %exit

if.end70:                                         ; preds = %if.end64
  %arraydecay71 = getelementptr inbounds [32 x i8], [32 x i8]* %iv, i64 0, i64 0
  %len72 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %enc_scheme_params, i32 0, i32 1
  %38 = load i64, i64* %len72, align 8
  %39 = load i8*, i8** %data.addr, align 8
  %40 = load i64, i64* %datalen.addr, align 8
  %41 = load i8*, i8** %output.addr, align 8
  %call73 = call i32 @mbedtls_cipher_crypt(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx, i8* noundef %arraydecay71, i64 noundef %38, i8* noundef %39, i64 noundef %40, i8* noundef %41, i64* noundef %olen) #4
  store i32 %call73, i32* %ret, align 4
  %cmp74 = icmp ne i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end70
  store i32 -11776, i32* %ret, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end70
  br label %exit

exit:                                             ; preds = %if.end77, %if.then69, %if.then63, %if.then58, %if.then50
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #4
  call void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef %cipher_ctx) #4
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then42, %if.then35, %if.then31, %if.then26, %if.then22, %if.then18, %if.then14, %if.then4, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_error_add(i32 noundef %high, i32 noundef %low, i8* noundef %file, i32 noundef %line) #0 {
entry:
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %low, i32* %low.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %3 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %2, %3
  ret i32 %add
}

declare dso_local i32 @mbedtls_asn1_get_alg(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs5_parse_pbkdf2_params(%struct.mbedtls_asn1_buf* noundef %params, %struct.mbedtls_asn1_buf* noundef %salt, i32* noundef %iterations, i32* noundef %keylen, i32* noundef %md_type) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %salt.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %iterations.addr = alloca i32*, align 8
  %keylen.addr = alloca i32*, align 8
  %md_type.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %prf_alg_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store %struct.mbedtls_asn1_buf* %salt, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  store i32* %iterations, i32** %iterations.addr, align 8
  store i32* %keylen, i32** %keylen.addr, align 8
  store i32* %md_type, i32** %md_type.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 2
  %1 = load i8*, i8** %p1, align 8
  store i8* %1, i8** %p, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 2
  %3 = load i8*, i8** %p2, align 8
  %4 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %4, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %5
  store i8* %add.ptr, i8** %end, align 8
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 0
  %7 = load i32, i32* %tag, align 8
  %cmp = icmp ne i32 %7, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef -98, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 64) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %end, align 8
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  %len3 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 1
  %call4 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %8, i64* noundef %len3, i32 noundef 4) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %call7 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef %10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #4
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 2
  store i8* %11, i8** %p9, align 8
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %salt.addr, align 8
  %len10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 1
  %14 = load i64, i64* %len10, align 8
  %15 = load i8*, i8** %p, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8* %add.ptr11, i8** %p, align 8
  %16 = load i8*, i8** %end, align 8
  %17 = load i32*, i32** %iterations.addr, align 8
  %call12 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %16, i32* noundef %17) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8
  %18 = load i32, i32* %ret, align 4
  %call15 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #4
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end8
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %end, align 8
  %cmp17 = icmp eq i8* %19, %20
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end16
  %21 = load i8*, i8** %end, align 8
  %22 = load i32*, i32** %keylen.addr, align 8
  %call20 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %21, i32* noundef %22) #4
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end19
  %23 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %23, -98
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then22
  %24 = load i32, i32* %ret, align 4
  %call25 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef %24, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #4
  store i32 %call25, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then22
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end19
  %25 = load i8*, i8** %p, align 8
  %26 = load i8*, i8** %end, align 8
  %cmp28 = icmp eq i8* %25, %26
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 0, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end27
  %27 = load i8*, i8** %end, align 8
  %call31 = call i32 @mbedtls_asn1_get_alg_null(i8** noundef %p, i8* noundef %27, %struct.mbedtls_asn1_buf* noundef %prf_alg_oid) #4
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %28 = load i32, i32* %ret, align 4
  %call34 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 97) #4
  store i32 %call34, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  %29 = load i32*, i32** %md_type.addr, align 8
  %call36 = call i32 @mbedtls_oid_get_md_hmac(%struct.mbedtls_asn1_buf* noundef %prf_alg_oid, i32* noundef %29) #4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  store i32 -11904, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end35
  %30 = load i8*, i8** %p, align 8
  %31 = load i8*, i8** %end, align 8
  %cmp40 = icmp ne i8* %30, %31
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 @mbedtls_error_add(i32 noundef -12032, i32 noundef -102, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #4
  store i32 %call42, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end39
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then41, %if.then38, %if.then33, %if.then29, %if.then24, %if.then18, %if.then14, %if.then6, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_oid_get_cipher_alg(%struct.mbedtls_asn1_buf* noundef, i32* noundef) #1

declare dso_local %struct.mbedtls_cipher_info_t* @mbedtls_cipher_info_from_type(i32 noundef) #1

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_cipher_init(%struct.mbedtls_cipher_context_t* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs5_pbkdf2_hmac(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %password, i64 noundef %plen, i8* noundef %salt, i64 noundef %slen, i32 noundef %iteration_count, i32 noundef %key_length, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %password.addr = alloca i8*, align 8
  %plen.addr = alloca i64, align 8
  %salt.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %iteration_count.addr = alloca i32, align 4
  %key_length.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %md1 = alloca [64 x i8], align 16
  %work = alloca [64 x i8], align 16
  %md_size = alloca i8, align 1
  %use_len = alloca i64, align 8
  %out_p = alloca i8*, align 8
  %counter = alloca [4 x i8], align 1
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %password, i8** %password.addr, align 8
  store i64 %plen, i64* %plen.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i32 %iteration_count, i32* %iteration_count.addr, align 4
  store i32 %key_length, i32* %key_length.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #4
  store i8 %call, i8* %md_size, align 1
  %2 = load i8*, i8** %output.addr, align 8
  store i8* %2, i8** %out_p, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 0
  %call1 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 4) #6
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 3
  store i8 1, i8* %arrayidx, align 1
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %4 = load i8*, i8** %password.addr, align 8
  %5 = load i64, i64* %plen.addr, align 8
  %call2 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %3, i8* noundef %4, i64 noundef %5) #4
  store i32 %call2, i32* %ret, align 4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end80, %if.end
  %7 = load i32, i32* %key_length.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %9 = load i8*, i8** %salt.addr, align 8
  %10 = load i64, i64* %slen.addr, align 8
  %call3 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %8, i8* noundef %9, i64 noundef %10) #4
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %11 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 0
  %call8 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %11, i8* noundef %arraydecay7, i64 noundef 4) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %12 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay12 = getelementptr inbounds [64 x i8], [64 x i8]* %work, i64 0, i64 0
  %call13 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %12, i8* noundef %arraydecay12) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call17 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %13) #4
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %arraydecay21 = getelementptr inbounds [64 x i8], [64 x i8]* %md1, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %work, i64 0, i64 0
  %14 = load i8, i8* %md_size, align 1
  %conv = zext i8 %14 to i64
  %call23 = call i8* @memcpy(i8* noundef %arraydecay21, i8* noundef %arraydecay22, i64 noundef %conv) #6
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.end20
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %iteration_count.addr, align 4
  %cmp24 = icmp ult i32 %15, %16
  br i1 %cmp24, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  %17 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %md1, i64 0, i64 0
  %18 = load i8, i8* %md_size, align 1
  %conv27 = zext i8 %18 to i64
  %call28 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %17, i8* noundef %arraydecay26, i64 noundef %conv27) #4
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  br label %cleanup

if.end32:                                         ; preds = %for.body
  %19 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay33 = getelementptr inbounds [64 x i8], [64 x i8]* %md1, i64 0, i64 0
  %call34 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %19, i8* noundef %arraydecay33) #4
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %20 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call39 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %20) #4
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  store i32 0, i32* %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %if.end43
  %21 = load i32, i32* %j, align 4
  %22 = load i8, i8* %md_size, align 1
  %conv45 = zext i8 %22 to i32
  %cmp46 = icmp slt i32 %21, %conv45
  br i1 %cmp46, label %for.body48, label %for.end

for.body48:                                       ; preds = %for.cond44
  %23 = load i32, i32* %j, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx49 = getelementptr inbounds [64 x i8], [64 x i8]* %md1, i64 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %24 to i32
  %25 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %25 to i64
  %arrayidx52 = getelementptr inbounds [64 x i8], [64 x i8]* %work, i64 0, i64 %idxprom51
  %26 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %26 to i32
  %xor = xor i32 %conv53, %conv50
  %conv54 = trunc i32 %xor to i8
  store i8 %conv54, i8* %arrayidx52, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body48
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond44, !llvm.loop !4

for.end:                                          ; preds = %for.cond44
  br label %for.inc55

for.inc55:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4
  %inc56 = add i32 %28, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end57:                                        ; preds = %for.cond
  %29 = load i32, i32* %key_length.addr, align 4
  %30 = load i8, i8* %md_size, align 1
  %conv58 = zext i8 %30 to i32
  %cmp59 = icmp ult i32 %29, %conv58
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end57
  %31 = load i32, i32* %key_length.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end57
  %32 = load i8, i8* %md_size, align 1
  %conv61 = zext i8 %32 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %conv61, %cond.false ]
  %conv62 = zext i32 %cond to i64
  store i64 %conv62, i64* %use_len, align 8
  %33 = load i8*, i8** %out_p, align 8
  %arraydecay63 = getelementptr inbounds [64 x i8], [64 x i8]* %work, i64 0, i64 0
  %34 = load i64, i64* %use_len, align 8
  %call64 = call i8* @memcpy(i8* noundef %33, i8* noundef %arraydecay63, i64 noundef %34) #6
  %35 = load i64, i64* %use_len, align 8
  %conv65 = trunc i64 %35 to i32
  %36 = load i32, i32* %key_length.addr, align 4
  %sub = sub i32 %36, %conv65
  store i32 %sub, i32* %key_length.addr, align 4
  %37 = load i64, i64* %use_len, align 8
  %38 = load i8*, i8** %out_p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %add.ptr, i8** %out_p, align 8
  store i32 4, i32* %i, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc79, %cond.end
  %39 = load i32, i32* %i, align 4
  %cmp67 = icmp ugt i32 %39, 0
  br i1 %cmp67, label %for.body69, label %for.end80

for.body69:                                       ; preds = %for.cond66
  %40 = load i32, i32* %i, align 4
  %sub70 = sub i32 %40, 1
  %idxprom71 = zext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 %idxprom71
  %41 = load i8, i8* %arrayidx72, align 1
  %inc73 = add i8 %41, 1
  store i8 %inc73, i8* %arrayidx72, align 1
  %conv74 = zext i8 %inc73 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %for.body69
  br label %for.end80

if.end78:                                         ; preds = %for.body69
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %42 = load i32, i32* %i, align 4
  %dec = add i32 %42, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond66, !llvm.loop !7

for.end80:                                        ; preds = %if.then77, %for.cond66
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then42, %if.then37, %if.then31, %if.then19, %if.then15, %if.then10, %if.then5
  %arraydecay81 = getelementptr inbounds [64 x i8], [64 x i8]* %work, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay81, i64 noundef 64) #4
  %arraydecay82 = getelementptr inbounds [64 x i8], [64 x i8]* %md1, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay82, i64 noundef 64) #4
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

declare dso_local i32 @mbedtls_cipher_setup(%struct.mbedtls_cipher_context_t* noundef, %struct.mbedtls_cipher_info_t* noundef) #1

declare dso_local i32 @mbedtls_cipher_setkey(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_cipher_crypt(%struct.mbedtls_cipher_context_t* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) #1

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_cipher_free(%struct.mbedtls_cipher_context_t* noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs5_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %sha1_ctx = alloca %struct.mbedtls_md_context_t, align 8
  %info_sha1 = alloca %struct.mbedtls_md_info_t*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %key = alloca [64 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %sha1_ctx) #4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 2) #4
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %info_sha1, align 8
  %0 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %info_sha1, align 8
  %cmp = icmp eq %struct.mbedtls_md_info_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %info_sha1, align 8
  %call1 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %sha1_ctx, %struct.mbedtls_md_info_t* noundef %1, i32 noundef 1) #4
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %ret, align 4
  br label %exit

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp6 = icmp ne i32 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef %4) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @password_test_data, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i64 0, i64 0
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [6 x i64], [6 x i64]* @plen_test_data, i64 0, i64 %idxprom10
  %7 = load i64, i64* %arrayidx11, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [6 x [40 x i8]], [6 x [40 x i8]]* @salt_test_data, i64 0, i64 %idxprom12
  %arraydecay14 = getelementptr inbounds [40 x i8], [40 x i8]* %arrayidx13, i64 0, i64 0
  %9 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [6 x i64], [6 x i64]* @slen_test_data, i64 0, i64 %idxprom15
  %10 = load i64, i64* %arrayidx16, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [6 x i32], [6 x i32]* @it_cnt_test_data, i64 0, i64 %idxprom17
  %12 = load i32, i32* %arrayidx18, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [6 x i32], [6 x i32]* @key_len_test_data, i64 0, i64 %idxprom19
  %14 = load i32, i32* %arrayidx20, align 4
  %arraydecay21 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  %call22 = call i32 @mbedtls_pkcs5_pbkdf2_hmac(%struct.mbedtls_md_context_t* noundef %sha1_ctx, i8* noundef %arraydecay, i64 noundef %7, i8* noundef %arraydecay14, i64 noundef %10, i32 noundef %12, i32 noundef %14, i8* noundef %arraydecay21) #4
  store i32 %call22, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %15, 0
  br i1 %cmp23, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %16 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* bitcast (<{ <{ [20 x i8], [12 x i8] }>, <{ [20 x i8], [12 x i8] }>, <{ [20 x i8], [12 x i8] }>, [32 x i8], <{ [16 x i8], [16 x i8] }>, [32 x i8] }>* @result_key_test_data to [6 x [32 x i8]]*), i64 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx25, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [6 x i32], [6 x i32]* @key_len_test_data, i64 0, i64 %idxprom28
  %18 = load i32, i32* %arrayidx29, align 4
  %conv = zext i32 %18 to i64
  %call30 = call i32 @memcmp(i8* noundef %arraydecay26, i8* noundef %arraydecay27, i64 noundef %conv) #5
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end39

if.then33:                                        ; preds = %lor.lhs.false, %if.end9
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp34 = icmp ne i32 %19, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then33
  %call37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then33
  store i32 1, i32* %ret, align 4
  br label %exit

if.end39:                                         ; preds = %lor.lhs.false
  %20 = load i32, i32* %verbose.addr, align 4
  %cmp40 = icmp ne i32 %20, 0
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp45 = icmp ne i32 %22, 0
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.end
  %call48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end
  br label %exit

exit:                                             ; preds = %if.end49, %if.end38, %if.then3, %if.then
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %sha1_ctx) #4
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #1

declare dso_local i32 @mbedtls_asn1_get_alg_null(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #1

declare dso_local i32 @mbedtls_oid_get_md_hmac(%struct.mbedtls_asn1_buf* noundef, i32* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
