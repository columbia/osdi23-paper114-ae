; ModuleID = 'ssl/mini_client.c'
source_filename = "ssl/mini_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_net_context = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
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
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [12 x i8] c"mini_client\00", align 1
@pers = dso_local global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@psk = dso_local constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@psk_id = dso_local constant [16 x i8] c"Client_identity\00", align 16
@ca_cert = dso_local constant [598 x i8] c"0\82\02R0\82\01\D7\A0\03\02\01\02\02\09\00\C1C\E2~bC\CC\E80\0A\06\08*\86H\CE=\04\03\020>1\0B0\09\06\03U\04\06\13\02NL1\110\0F\06\03U\04\0A\13\08PolarSSL1\1C0\1A\06\03U\04\03\13\13Polarssl Test EC CA0\1E\17\0D130924154948Z\17\0D230922154948Z0>1\0B0\09\06\03U\04\06\13\02NL1\110\0F\06\03U\04\0A\13\08PolarSSL1\1C0\1A\06\03U\04\03\13\13Polarssl Test EC CA0v0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\22\03b\00\04\C3\DA+4A7X/\87V\FE\FC\89\BA)CKN\E0n\C3\0EWS39X\D4R\B4\91\959\0B#\DF_\17$bH\FC\1A\95)\CE,-\87\C2\88R\80\AF\D6j\AB!\DD\B8\D3\1CnX\B8\CA\E8\B2i\8E\F3A\AD)\C3\B4_u\A7Go\D5\19)Ui\9AS; \B4f\16`3\1E\A3\81\A00\81\9D0\1D\06\03U\1D\0E\04\16\04\14\9Dm $I\01?+\CBx\B5\19\BC~$\C9\DB\FB6|0n\06\03U\1D#\04g0e\80\14\9Dm $I\01?+\CBx\B5\19\BC~$\C9\DB\FB6|\A1B\A4@0>1\0B0\09\06\03U\04\06\13\02NL1\110\0F\06\03U\04\0A\13\08PolarSSL1\1C0\1A\06\03U\04\03\13\13Polarssl Test EC CA\82\09\00\C1C\E2~bC\CC\E80\0C\06\03U\1D\13\04\050\03\01\01\FF0\0A\06\08*\86H\CE=\04\03\02\03i\000f\021\00\C3\B4bsV(\95\00}x\12&\D2q{\19\F8\8A\98>\92\FE3\9E\E4y\D2\FEz\B7\87t<+\B8\D7i\94\0B\A3gw\B8\B3\BE\D162\021\00\FDg\9C\94#g\C0V\BAK3\15\00\C6\E3\CC1\08,\9C\8B\DA\A9u#/\B8(\E7\F2\9C\14:@\01\\\AF\0C\B2\CFt\7F0\9F\08C\AD ", align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.0\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %addr = alloca %struct.sockaddr_in, align 4
  %ca = alloca %struct.mbedtls_x509_crt, align 8
  %entropy = alloca %struct.mbedtls_entropy_context, align 8
  %ctr_drbg = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %ssl = alloca %struct.mbedtls_ssl_context, align 8
  %conf = alloca %struct.mbedtls_ssl_config, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %ca) #5
  call void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef %entropy) #5
  %0 = bitcast %struct.mbedtls_entropy_context* %entropy to i8*
  %1 = load i8*, i8** @pers, align 8
  %2 = load i8*, i8** @pers, align 8
  %call = call i64 @strlen(i8* noundef %2) #6
  %call1 = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg, i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %0, i8* noundef %1, i64 noundef %call) #5
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %call2 = call i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 2, i32* %ret, align 4
  br label %exit

if.end5:                                          ; preds = %if.end
  %3 = bitcast %struct.mbedtls_ctr_drbg_context* %ctr_drbg to i8*
  call void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef %conf, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %3) #5
  %call6 = call i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef %conf, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @psk, i64 0, i64 0), i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @psk_id, i64 0, i64 0), i64 noundef 15) #5
  %call7 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %ca, i8* noundef getelementptr inbounds ([598 x i8], [598 x i8]* @ca_cert, i64 0, i64 0), i64 noundef 598) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 7, i32* %ret, align 4
  br label %exit

if.end10:                                         ; preds = %if.end5
  call void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef %conf, %struct.mbedtls_x509_crt* noundef %ca, %struct.mbedtls_x509_crl* noundef null) #5
  call void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef %conf, i32 noundef 2) #5
  %call11 = call i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef %ssl, %struct.mbedtls_ssl_config* noundef %conf) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 3, i32* %ret, align 4
  br label %exit

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #5
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  store i32 4, i32* %ret, align 4
  br label %exit

if.end18:                                         ; preds = %if.end14
  %4 = bitcast %struct.sockaddr_in* %addr to i8*
  %call19 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 16) #7
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 0
  store i16 2, i16* %sin_family, align 4
  store i32 1, i32* %ret, align 4
  %5 = bitcast i32* %ret to i8*
  %6 = load i8, i8* %5, align 4
  %conv = sext i8 %6 to i32
  %7 = load i32, i32* %ret, align 4
  %cmp20 = icmp eq i32 %conv, %7
  %8 = zext i1 %cmp20 to i64
  %cond = select i1 %cmp20, i32 20753, i32 4433
  %conv22 = trunc i32 %cond to i16
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 1
  store i16 %conv22, i16* %sin_port, align 2
  %9 = bitcast i32* %ret to i8*
  %10 = load i8, i8* %9, align 4
  %conv23 = sext i8 %10 to i32
  %11 = load i32, i32* %ret, align 4
  %cmp24 = icmp eq i32 %conv23, %11
  %12 = zext i1 %cmp24 to i64
  %cond26 = select i1 %cmp24, i32 16777343, i32 2130706433
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %addr, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %cond26, i32* %s_addr, align 4
  store i32 0, i32* %ret, align 4
  %call27 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #7
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  store i32 %call27, i32* %fd, align 4
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end18
  store i32 5, i32* %ret, align 4
  br label %exit

if.end31:                                         ; preds = %if.end18
  %fd32 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %13 = load i32, i32* %fd32, align 4
  %14 = bitcast %struct.sockaddr_in* %addr to %struct.sockaddr*
  %call33 = call i32 @connect(i32 noundef %13, %struct.sockaddr* noundef %14, i32 noundef 16) #5
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  store i32 6, i32* %ret, align 4
  br label %exit

if.end37:                                         ; preds = %if.end31
  %15 = bitcast %struct.mbedtls_net_context* %server_fd to i8*
  call void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef %15, i32 (i8*, i8*, i64)* noundef @mbedtls_net_send, i32 (i8*, i8*, i64)* noundef @mbedtls_net_recv, i32 (i8*, i8*, i64, i32)* noundef null) #5
  %call38 = call i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef %ssl) #5
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 8, i32* %ret, align 4
  br label %exit

if.end42:                                         ; preds = %if.end37
  %call43 = call i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef %ssl, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 noundef 18) #5
  %cmp44 = icmp sle i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  store i32 9, i32* %ret, align 4
  br label %exit

if.end47:                                         ; preds = %if.end42
  %call48 = call i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef %ssl) #5
  br label %exit

exit:                                             ; preds = %if.end47, %if.then46, %if.then41, %if.then36, %if.then30, %if.then17, %if.then13, %if.then9, %if.then4, %if.then
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef %ssl) #5
  call void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef %conf) #5
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %ctr_drbg) #5
  call void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef %entropy) #5
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %ca) #5
  %16 = load i32, i32* %ret, align 4
  call void @exit(i32 noundef %16) #8
  unreachable
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ssl_init(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_init(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef) #1

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @mbedtls_ssl_config_defaults(%struct.mbedtls_ssl_config* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_conf_rng(%struct.mbedtls_ssl_config* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_conf_psk(%struct.mbedtls_ssl_config* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_ssl_conf_ca_chain(%struct.mbedtls_ssl_config* noundef, %struct.mbedtls_x509_crt* noundef, %struct.mbedtls_x509_crl* noundef) #1

declare dso_local void @mbedtls_ssl_conf_authmode(%struct.mbedtls_ssl_config* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_ssl_setup(%struct.mbedtls_ssl_context* noundef, %struct.mbedtls_ssl_config* noundef) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(%struct.mbedtls_ssl_context* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

declare dso_local i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #1

declare dso_local void @mbedtls_ssl_set_bio(%struct.mbedtls_ssl_context* noundef, i8* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64)* noundef, i32 (i8*, i8*, i64, i32)* noundef) #1

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local i32 @mbedtls_ssl_write(%struct.mbedtls_ssl_context* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ssl_close_notify(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local void @mbedtls_ssl_free(%struct.mbedtls_ssl_context* noundef) #1

declare dso_local void @mbedtls_ssl_config_free(%struct.mbedtls_ssl_config* noundef) #1

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #1

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #1

declare dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
