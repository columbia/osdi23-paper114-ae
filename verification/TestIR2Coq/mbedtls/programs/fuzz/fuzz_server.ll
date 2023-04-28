; ModuleID = 'fuzz_server.c'
source_filename = "fuzz_server.c"
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
%struct.mbedtls_ssl_ticket_context = type { [2 x %struct.mbedtls_ssl_ticket_key], i8, i32, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_ssl_ticket_key = type { [4 x i8], i32, %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type opaque
%struct.fuzzBufferOffset = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"fuzz_server\00", align 1
@pers = dso_local global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@psk = dso_local constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@psk_id = dso_local constant [16 x i8] c"Client_identity\00", align 16
@initialized = internal global i32 0, align 4
@srvcert = internal global %struct.mbedtls_x509_crt zeroinitializer, align 8
@pkey = internal global %struct.mbedtls_pk_context zeroinitializer, align 8
@mbedtls_test_srv_crt = external dso_local global i8*, align 8
@mbedtls_test_srv_crt_len = external dso_local constant i64, align 8
@mbedtls_test_cas_pem = external dso_local constant [0 x i8], align 1
@mbedtls_test_cas_pem_len = external dso_local constant i64, align 8
@mbedtls_test_srv_key = external dso_local global i8*, align 8
@mbedtls_test_srv_key_len = external dso_local constant i64, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@alpn_list = dso_local global [3 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"fuzzalpn\00", align 1

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
  %ticket_ctx = alloca %struct.mbedtls_ssl_ticket_context, align 8
  %buf = alloca [4096 x i8], align 16
  %biomemfuzz = alloca %struct.fuzzBufferOffset, align 8
  %options = alloca i8, align 1
  store i8* %Data, i8** %Data.addr, align 8
  store i64 %Size, i64* %Size.addr, align 8
  %0 = load i64, i64* %Size.addr, align 8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %Data.addr, align 8
  %2 = load i64, i64* %Size.addr, align 8
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %options, align 1
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #4
  %4 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %5 = load i8*, i8** @pers, align 8
  %6 = load i8*, i8** @pers, align 8
  %call = call i64 @strlen(i8* noundef %6) #5
  %call1 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @dummy_entropy, i8* noundef %4, i8* noundef %5, i64 noundef %call) #4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* @initialized, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end19

if.then6:                                         ; preds = %if.end4
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef @srvcert) #4
  call void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef @pkey) #4
  %8 = load i8*, i8** @mbedtls_test_srv_crt, align 8
  %9 = load i64, i64* @mbedtls_test_srv_crt_len, align 8
  %call7 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef @srvcert, i8* noundef %8, i64 noundef %9) #4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 1, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %10 = load i64, i64* @mbedtls_test_cas_pem_len, align 8
  %call11 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef @srvcert, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @mbedtls_test_cas_pem, i64 0, i64 0), i64 noundef %10) #4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %11 = load i8*, i8** @mbedtls_test_srv_key, align 8
  %12 = load i64, i64* @mbedtls_test_srv_key_len, align 8
  %13 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call15 = call i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef @pkey, i8* noundef %11, i64 noundef %12, i8* noundef null, i64 noundef 0, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %13) #4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 0), align 16
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 1), align 8
  store i8* null, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 2), align 16
  call void (...) @dummy_init() #4
  store i32 1, i32* @initialized, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end4
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #4
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ssl_ticket_init(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx) #4
  %call20 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 1, i32 noundef 0, i32 noundef 0) #4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  br label %exit

if.end23:                                         ; preds = %if.end19
  call void @srand(i32 noundef 1) #6
  %14 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %14) #4
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** getelementptr inbounds (%struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* @srvcert, i32 0, i32 29), align 8
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %15, %struct.mbedtls_x509_crl* noundef null) #4
  %call24 = call i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef @srvcert, %struct.mbedtls_pk_context* noundef @pkey) #4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  br label %exit

if.end27:                                         ; preds = %if.end23
  %16 = load i8, i8* %options, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  %17 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %conv28 = trunc i32 %cond to i8
  call void @mbedtls_ssl_conf_cert_req_ca_list(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv28) #4
  %18 = load i8, i8* %options, align 1
  %conv29 = zext i8 %18 to i32
  %and30 = and i32 %conv29, 2
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end27
  %call33 = call i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef %conf, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @alpn_list, i64 0, i64 0)) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end27
  %19 = load i8, i8* %options, align 1
  %conv35 = zext i8 %19 to i32
  %and36 = and i32 %conv35, 4
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end34
  %20 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  %call39 = call i32 @mbedtls_ssl_ticket_setup(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx, i32 (i8*, i8*, i64)* noundef @dummy_random, i8* noundef %20, i32 noundef 16, i32 noundef 86400) #4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then38
  br label %exit

if.end43:                                         ; preds = %if.then38
  %21 = bitcast %struct.mbedtls_ssl_ticket_context* %ticket_ctx to i8*
  call void @mbedtls_ssl_conf_session_tickets_cb(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* noundef @mbedtls_ssl_ticket_write, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* noundef @mbedtls_ssl_ticket_parse, i8* noundef %21) #4
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end34
  %22 = load i8, i8* %options, align 1
  %conv45 = zext i8 %22 to i32
  %and46 = and i32 %conv45, 16
  %tobool47 = icmp ne i32 %and46, 0
  %23 = zext i1 %tobool47 to i64
  %cond48 = select i1 %tobool47, i32 0, i32 1
  %conv49 = trunc i32 %cond48 to i8
  call void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv49) #4
  %24 = load i8, i8* %options, align 1
  %conv50 = zext i8 %24 to i32
  %and51 = and i32 %conv50, 32
  %tobool52 = icmp ne i32 %and51, 0
  %25 = zext i1 %tobool52 to i64
  %cond53 = select i1 %tobool52, i32 1, i32 0
  %conv54 = trunc i32 %cond53 to i8
  call void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef %conf, i8 noundef signext %conv54) #4
  %26 = load i8, i8* %options, align 1
  %conv55 = zext i8 %26 to i32
  %and56 = and i32 %conv55, 64
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end44
  %call59 = call i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @psk, i64 0, i64 0), i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @psk_id, i64 0, i64 0), i64 noundef 15) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end44
  %27 = load i8, i8* %options, align 1
  %conv61 = zext i8 %27 to i32
  %and62 = and i32 %conv61, 128
  %tobool63 = icmp ne i32 %and62, 0
  %28 = zext i1 %tobool63 to i64
  %cond64 = select i1 %tobool63, i32 1, i32 0
  call void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef %cond64) #4
  %call65 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end60
  br label %exit

if.end69:                                         ; preds = %if.end60
  %29 = load i8*, i8** %Data.addr, align 8
  %Data70 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 0
  store i8* %29, i8** %Data70, align 8
  %30 = load i64, i64* %Size.addr, align 8
  %sub71 = sub i64 %30, 1
  %Size72 = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 1
  store i64 %sub71, i64* %Size72, align 8
  %Offset = getelementptr inbounds %struct.fuzzBufferOffset, %struct.fuzzBufferOffset* %biomemfuzz, i32 0, i32 2
  store i64 0, i64* %Offset, align 8
  %31 = bitcast %struct.fuzzBufferOffset* %biomemfuzz to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %31, i32 (i8*, i8*, i64)* noundef @dummy_send, i32 (i8*, i8*, i64)* noundef @fuzz_recv, i32 (i8*, i8*, i64, i32)* noundef null) #4
  %call73 = call i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef %ssl) #4
  %call74 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 %call74, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %cmp75 = icmp eq i32 %32, 0
  br i1 %cmp75, label %if.then77, label %if.end87

if.then77:                                        ; preds = %if.end69
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then77
  store i64 4095, i64* %len, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %33 = load i64, i64* %len, align 8
  %call78 = call i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %arraydecay, i64 noundef %33) #4
  store i32 %call78, i32* %ret, align 4
  %34 = load i32, i32* %ret, align 4
  %cmp79 = icmp eq i32 %34, -26880
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %do.body
  br label %do.cond

if.else:                                          ; preds = %do.body
  %35 = load i32, i32* %ret, align 4
  %cmp82 = icmp sle i32 %35, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.else
  br label %do.end

if.end85:                                         ; preds = %if.else
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  br label %do.cond

do.cond:                                          ; preds = %if.end86, %if.then81
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then84
  br label %if.end87

if.end87:                                         ; preds = %do.end, %if.end69
  br label %exit

exit:                                             ; preds = %if.end87, %if.then68, %if.then42, %if.then26, %if.then22
  call void @mbedtls_ssl_ticket_free(%struct.mbedtls_ssl_ticket_context* noundef %ticket_ctx) #4
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #4
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #4
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #4
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then17, %if.then13, %if.then9, %if.then3, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @dummy_entropy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_pk_init(%struct.mbedtls_pk_context* noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_pk_parse_key(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @dummy_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @dummy_init(...) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_ticket_init(%struct.mbedtls_ssl_ticket_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_pk_context* noundef) #1

declare dso_local void @mbedtls_ssl_conf_cert_req_ca_list(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #1

declare dso_local i32 @mbedtls_ssl_conf_alpn_protocols(%struct.mbedtls_ssl_config* noundef, i8** noundef) #1

declare dso_local i32 @mbedtls_ssl_ticket_setup(%struct.mbedtls_ssl_ticket_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_session_tickets_cb(%struct.mbedtls_ssl_config* noundef, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)* noundef, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ssl_ticket_write(i8* noundef, %struct.mbedtls_ssl_session* noundef, i8* noundef, i8* noundef, i64* noundef, i32* noundef) #1

declare dso_local i32 @mbedtls_ssl_ticket_parse(i8* noundef, %struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ssl_conf_extended_master_secret(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #1

declare dso_local void @mbedtls_ssl_conf_encrypt_then_mac(%struct.mbedtls_ssl_config* noundef, i8 noundef signext) #1

declare dso_local i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ssl_conf_renegotiation(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @dummy_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @fuzz_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_session_reset(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_read(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ssl_ticket_free(%struct.mbedtls_ssl_ticket_context* noundef) #1

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
