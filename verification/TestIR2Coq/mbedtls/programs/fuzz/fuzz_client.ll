; ModuleID = 'fuzz_client.c'
source_filename = "fuzz_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_key_cert = type opaque
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_ssl_handshake_params = type opaque
%struct.mbedtls_ssl_transform = type opaque
%union.mbedtls_ssl_user_data_t = type { i64 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.fuzzBufferOffset = type { i8*, i64, i64 }

@psk = dso_local constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@psk_id = dso_local constant [16 x i8] c"Client_identity\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"fuzz_client\00", align 1
@pers = dso_local global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@initialized = internal global i32 0, align 4
@cacert = internal global %struct.mbedtls_x509_crt zeroinitializer, align 8
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@alpn_list = dso_local global [3 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"fuzzalpn\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* noundef %Data, i64 noundef %Size) #0 {
entry:
  %retval = alloca i32, align 4
  %Data.addr = alloca i8*, align 8
  %Size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %buf = alloca [4096 x i8], align 16
  %biomemfuzz = alloca %struct.fuzzBufferOffset, align 8
  %options = alloca i16, align 2
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  %0 = load i32, i32* @initialized, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef @cacert) #4
  %1 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef @cacert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %1) #4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 0), align 16
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 1), align 8
  store i8* null, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 2), align 16
  call void (...) @dummy_init() #4
  store i32 1, i32* @initialized, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %2 = load i64, i64* %Size.addr, align 8
  %cmp4 = icmp ult i64 %2, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %3 = load i8*, i8** %Data.addr, align 8
  %4 = load i64, i64* %Size.addr, align 8
  %sub = sub i64 %4, 2
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl i32 %conv, 8
  %6 = load i8*, i8** %Data.addr, align 8
  %7 = load i64, i64* %Size.addr, align 8
  %sub7 = sub i64 %7, 1
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 %sub7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %or = or i32 %shl, %conv9
  %conv10 = trunc i32 %or to i16
  store i16 %conv10, i16* %options, align 2
  %9 = load i16, i16* %options, align 2
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #4
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %10 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %11 = load i8*, i8** @pers, align 8
  %12 = load i8*, i8** @pers, align 8
  %call11 = call i64 @strlen(i8* noundef %12) #5
  %call12 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @dummy_entropy, i8* noundef %10, i8* noundef %11, i64 noundef %call11) #4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end6
  br label %exit

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %exit

if.end21:                                         ; preds = %if.end16
  %13 = load i16, i16* %options, align 2
  %conv22 = zext i16 %13 to i32
  %and = and i32 %conv22, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %call24 = call i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @psk, i64 0, i64 0), i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @psk_id, i64 0, i64 0), i64 noundef 15) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %14 = load i16, i16* %options, align 2
  %conv26 = zext i16 %14 to i32
  %and27 = and i32 %conv26, 4
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef @cacert, %struct.mbedtls_x509_crl* noundef null) #4
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 2) #4
  br label %if.end30

if.else:                                          ; preds = %if.end25
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0) #4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %15 = load i16, i16* %options, align 2
  %conv31 = zext i16 %15 to i32
  %and32 = and i32 %conv31, 16
  %tobool33 = icmp ne i32 %and32, 0
  %16 = zext i1 %tobool33 to i64
  %cond = select i1 %tobool33, i32 0, i32 1
  %conv34 = trunc i32 %cond to i8
  call void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv34) #4
  %17 = load i16, i16* %options, align 2
  %conv35 = zext i16 %17 to i32
  %and36 = and i32 %conv35, 32
  %tobool37 = icmp ne i32 %and36, 0
  %18 = zext i1 %tobool37 to i64
  %cond38 = select i1 %tobool37, i32 0, i32 1
  %conv39 = trunc i32 %cond38 to i8
  call void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv39) #4
  %19 = load i16, i16* %options, align 2
  %conv40 = zext i16 %19 to i32
  %and41 = and i32 %conv40, 128
  %tobool42 = icmp ne i32 %and41, 0
  %20 = zext i1 %tobool42 to i64
  %cond43 = select i1 %tobool42, i32 1, i32 0
  call void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %cond43) #4
  %21 = load i16, i16* %options, align 2
  %conv44 = zext i16 %21 to i32
  %and45 = and i32 %conv44, 256
  %tobool46 = icmp ne i32 %and45, 0
  %22 = zext i1 %tobool46 to i64
  %cond47 = select i1 %tobool46, i32 0, i32 1
  call void @mbedtls_ssl_conf_session_tickets(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %cond47) #4
  %23 = load i16, i16* %options, align 2
  %conv48 = zext i16 %23 to i32
  %and49 = and i32 %conv48, 512
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end30
  %call52 = call i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef %conf, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 0)) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end30
  call void @srand(i32 noundef 1) #6
  %24 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %24) #4
  %call54 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #4
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  br label %exit

if.end58:                                         ; preds = %if.end53
  %25 = load i16, i16* %options, align 2
  %conv59 = zext i16 %25 to i32
  %and60 = and i32 %conv59, 1
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.then63, label %if.end69

if.then63:                                        ; preds = %if.end58
  %call64 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then63
  br label %exit

if.end68:                                         ; preds = %if.then63
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end58
  %26 = load i8*, i8** %Data.addr, align 8
  %Data70 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 0
  store i8* %26, i8** %Data70, align 8
  %27 = load i64, i64* %Size.addr, align 8
  %sub71 = sub i64 %27, 2
  %Size72 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 1
  store i64 %sub71, i64* %Size72, align 8
  %Offset = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 2
  store i64 0, i64* %Offset, align 8
  %28 = bitcast %struct.fuzzBufferOffset* %biomemfuzz to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %28, i32 (i8*, i8*, i64)* noundef @dummy_send, i32 (i8*, i8*, i64)* noundef @fuzz_recv, i32 (i8*, i8*, i64, i32)* noundef null) #4
  %call73 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 %call73, i32* %ret, align 4
  %29 = load i32, i32* %ret, align 4
  %cmp74 = icmp eq i32 %29, 0
  br i1 %cmp74, label %if.then76, label %if.end87

if.then76:                                        ; preds = %if.end69
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then76
  store i64 4095, i64* %len, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %30 = load i64, i64* %len, align 8
  %call77 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay, i64 noundef %30) #4
  store i32 %call77, i32* %ret, align 4
  %31 = load i32, i32* %ret, align 4
  %cmp78 = icmp eq i32 %31, -26880
  br i1 %cmp78, label %if.then80, label %if.else81

if.then80:                                        ; preds = %do.body
  br label %do.cond

if.else81:                                        ; preds = %do.body
  %32 = load i32, i32* %ret, align 4
  %cmp82 = icmp sle i32 %32, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.else81
  br label %do.end

if.end85:                                         ; preds = %if.else81
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  br label %do.cond

do.cond:                                          ; preds = %if.end86, %if.then80
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then84
  br label %if.end87

if.end87:                                         ; preds = %do.end, %if.end69
  br label %exit

exit:                                             ; preds = %if.end87, %if.then67, %if.then57, %if.then20, %if.then15
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then5, %if.then2
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @dummy_init(...) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @dummy_entropy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #1

declare dso_local void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #1

declare dso_local void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_session_tickets(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef, i8** noundef) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @dummy_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @dummy_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fuzz_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

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
