; ModuleID = 'debug.c'
source_filename = "debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_context = type { %struct.mbedtls_ssl_config*, i32, i32, i32, i32, i32, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i32)*, i8*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_handshake_params*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, %struct.mbedtls_ssl_transform*, i8*, void (i8*, i32, i32)*, i32 (i8*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i16, i64, i64, i64, i64, i32, i32, i8, i8, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, [8 x i8], i16, i8*, i8*, i8*, i64, i32, i64, [12 x i8], [12 x i8], void (i8*, i32, i8*, i64, i8*, i8*, i32)*, i8*, %union.mbedtls_ssl_user_data_t }
%struct.mbedtls_ssl_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32*, void (i8*, i32, i8*, i32, i8*)*, i8*, i32 (i8*, i8*, i64)*, i8*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i32 (i8*, i8*, i64, %struct.mbedtls_ssl_session*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i8*, i32 (i8*, %struct.mbedtls_ssl_context*, i8*, i64)*, i8*, i32 (i8*, i8**, i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, i8*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i8*, i64*, i32*)*, i32 (i8*, %struct.mbedtls_ssl_session*, i8*, i64)*, i8*, %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_ssl_key_cert*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crl*, i32*, i16*, i32*, i16*, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i8*, i64, i8*, i64, i8**, i32, i32, i32, i32, [8 x i8], i32, i32, %union.mbedtls_ssl_user_data_t, i32 (%struct.mbedtls_ssl_context*)*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.mbedtls_ssl_key_cert = type opaque
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_ssl_handshake_params = type opaque
%struct.mbedtls_ssl_transform = type opaque
%union.mbedtls_ssl_user_data_t = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_pk_debug_item = type { i32, i8*, i8* }
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon }
%union.anon = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }

@debug_threshold = internal global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s() returned %d (-0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dumping '%s' (%u bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%04x: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s(X)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s(Y)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"value of '%s' (%u bits) is:\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s #%d:\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"crt->\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"invalid PK context\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"should not happen\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"ECDH: Q\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"ECDH: Qp\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ECDH: z\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_set_threshold(i32 noundef %threshold) #0 {
entry:
  %threshold.addr = alloca i32, align 4
  store i32 %threshold, i32* %threshold.addr, align 4
  %0 = load i32, i32* %threshold.addr, align 4
  store i32 %0, i32* @debug_threshold, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_msg(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %format, ...) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  %str = alloca [512 x i8], align 16
  %ret = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 15
  %5 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %cmp4 = icmp eq void (i8*, i32, i8*, i32, i8*)* null, %5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load i32, i32* %level.addr, align 4
  %7 = load i32, i32* @debug_threshold, align 4
  %cmp6 = icmp sgt i32 %6, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %arraydecay7 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %8 = load i8*, i8** %format.addr, align 8
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %call = call i32 @vsnprintf(i8* noundef %arraydecay8, i64 noundef 512, i8* noundef %8, %struct.__va_list_tag* noundef %arraydecay9) #4
  store i32 %call, i32* %ret, align 4
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %9 = load i32, i32* %ret, align 4
  %cmp12 = icmp sge i32 %9, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %cmp13 = icmp slt i32 %10, 511
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %ret, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 %idxprom
  store i8 10, i8* %arrayidx, align 1
  %12 = load i32, i32* %ret, align 4
  %add = add nsw i32 %12, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true, %if.end
  %13 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %14 = load i32, i32* %level.addr, align 4
  %15 = load i8*, i8** %file.addr, align 8
  %16 = load i32, i32* %line.addr, align 4
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %13, i32 noundef %14, i8* noundef %15, i32 noundef %16, i8* noundef %arraydecay18) #5
  br label %return

return:                                           ; preds = %if.end17, %if.then
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_send_line(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %str) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %1, i32 0, i32 15
  %2 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf1 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf1, align 8
  %p_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 16
  %5 = load i8*, i8** %p_dbg, align 8
  %6 = load i32, i32* %level.addr, align 4
  %7 = load i8*, i8** %file.addr, align 8
  %8 = load i32, i32* %line.addr, align 4
  %9 = load i8*, i8** %str.addr, align 8
  call void %2(i8* noundef %5, i32 noundef %6, i8* noundef %7, i32 noundef %8, i8* noundef %9) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_ret(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text, i32 noundef %ret) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %ret.addr = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %ret, i32* %ret.addr, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 15
  %5 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %cmp4 = icmp eq void (i8*, i32, i8*, i32, i8*)* null, %5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load i32, i32* %level.addr, align 4
  %7 = load i32, i32* @debug_threshold, align 4
  %cmp6 = icmp sgt i32 %6, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %8 = load i32, i32* %ret.addr, align 4
  %cmp7 = icmp eq i32 %8, -26880
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %return

if.end9:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %9 = load i8*, i8** %text.addr, align 8
  %10 = load i32, i32* %ret.addr, align 4
  %11 = load i32, i32* %ret.addr, align 4
  %sub = sub nsw i32 0, %11
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef %9, i32 noundef %10, i32 noundef %sub) #4
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %12, i32 noundef %13, i8* noundef %14, i32 noundef %15, i8* noundef %arraydecay10) #5
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_buf(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %str = alloca [512 x i8], align 16
  %txt = alloca [17 x i8], align 16
  %i = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %idx, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 15
  %5 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %cmp4 = icmp eq void (i8*, i32, i8*, i32, i8*)* null, %5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load i32, i32* %level.addr, align 4
  %7 = load i32, i32* @debug_threshold, align 4
  %cmp6 = icmp sgt i32 %6, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end81

if.end:                                           ; preds = %lor.lhs.false5
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %8 = load i64, i64* %idx, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %8
  %9 = load i64, i64* %idx, align 8
  %sub = sub i64 512, %9
  %10 = load i8*, i8** %text.addr, align 8
  %11 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %11 to i32
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10, i32 noundef %conv) #4
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %12, i32 noundef %13, i8* noundef %14, i32 noundef %15, i8* noundef %arraydecay7) #5
  store i64 0, i64* %idx, align 8
  %arraydecay8 = getelementptr inbounds [17 x i8], [17 x i8]* %txt, i64 0, i64 0
  %call9 = call i8* @memset(i8* noundef %arraydecay8, i32 noundef 0, i64 noundef 17) #4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %len.addr, align 8
  %cmp10 = icmp ult i64 %16, %17
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i64, i64* %i, align 8
  %cmp12 = icmp uge i64 %18, 4096
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  br label %for.end

if.end15:                                         ; preds = %for.body
  %19 = load i64, i64* %i, align 8
  %rem = urem i64 %19, 16
  %cmp16 = icmp eq i64 %rem, 0
  br i1 %cmp16, label %if.then18, label %if.end37

if.then18:                                        ; preds = %if.end15
  %20 = load i64, i64* %i, align 8
  %cmp19 = icmp ugt i64 %20, 0
  br i1 %cmp19, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.then18
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %21 = load i64, i64* %idx, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %arraydecay22, i64 %21
  %22 = load i64, i64* %idx, align 8
  %sub24 = sub i64 512, %22
  %arraydecay25 = getelementptr inbounds [17 x i8], [17 x i8]* %txt, i64 0, i64 0
  %call26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr23, i64 noundef %sub24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay25) #4
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %24 = load i32, i32* %level.addr, align 4
  %25 = load i8*, i8** %file.addr, align 8
  %26 = load i32, i32* %line.addr, align 4
  %arraydecay27 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %23, i32 noundef %24, i8* noundef %25, i32 noundef %26, i8* noundef %arraydecay27) #5
  store i64 0, i64* %idx, align 8
  %arraydecay28 = getelementptr inbounds [17 x i8], [17 x i8]* %txt, i64 0, i64 0
  %call29 = call i8* @memset(i8* noundef %arraydecay28, i32 noundef 0, i64 noundef 17) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.then18
  %arraydecay31 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %27 = load i64, i64* %idx, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %arraydecay31, i64 %27
  %28 = load i64, i64* %idx, align 8
  %sub33 = sub i64 512, %28
  %29 = load i64, i64* %i, align 8
  %conv34 = trunc i64 %29 to i32
  %call35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr32, i64 noundef %sub33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv34) #4
  %conv36 = sext i32 %call35 to i64
  %30 = load i64, i64* %idx, align 8
  %add = add i64 %30, %conv36
  store i64 %add, i64* %idx, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end30, %if.end15
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %31 = load i64, i64* %idx, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %arraydecay38, i64 %31
  %32 = load i64, i64* %idx, align 8
  %sub40 = sub i64 512, %32
  %33 = load i8*, i8** %buf.addr, align 8
  %34 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = load i8, i8* %arrayidx, align 1
  %conv41 = zext i8 %35 to i32
  %call42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr39, i64 noundef %sub40, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv41) #4
  %conv43 = sext i32 %call42 to i64
  %36 = load i64, i64* %idx, align 8
  %add44 = add i64 %36, %conv43
  store i64 %add44, i64* %idx, align 8
  %37 = load i8*, i8** %buf.addr, align 8
  %38 = load i64, i64* %i, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %37, i64 %38
  %39 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp sgt i32 %conv46, 31
  br i1 %cmp47, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end37
  %40 = load i8*, i8** %buf.addr, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %42 to i32
  %cmp51 = icmp slt i32 %conv50, 127
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %43 = load i8*, i8** %buf.addr, align 8
  %44 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %43, i64 %44
  %45 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %45 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv54, %cond.true ], [ 46, %cond.false ]
  %conv55 = trunc i32 %cond to i8
  %46 = load i64, i64* %i, align 8
  %rem56 = urem i64 %46, 16
  %arrayidx57 = getelementptr inbounds [17 x i8], [17 x i8]* %txt, i64 0, i64 %rem56
  store i8 %conv55, i8* %arrayidx57, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %47 = load i64, i64* %i, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then14, %for.cond
  %48 = load i64, i64* %len.addr, align 8
  %cmp58 = icmp ugt i64 %48, 0
  br i1 %cmp58, label %if.then60, label %if.end81

if.then60:                                        ; preds = %for.end
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc72, %if.then60
  %49 = load i64, i64* %i, align 8
  %rem62 = urem i64 %49, 16
  %cmp63 = icmp ne i64 %rem62, 0
  br i1 %cmp63, label %for.body65, label %for.end74

for.body65:                                       ; preds = %for.cond61
  %arraydecay66 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %50 = load i64, i64* %idx, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %arraydecay66, i64 %50
  %51 = load i64, i64* %idx, align 8
  %sub68 = sub i64 512, %51
  %call69 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr67, i64 noundef %sub68, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #4
  %conv70 = sext i32 %call69 to i64
  %52 = load i64, i64* %idx, align 8
  %add71 = add i64 %52, %conv70
  store i64 %add71, i64* %idx, align 8
  br label %for.inc72

for.inc72:                                        ; preds = %for.body65
  %53 = load i64, i64* %i, align 8
  %inc73 = add i64 %53, 1
  store i64 %inc73, i64* %i, align 8
  br label %for.cond61, !llvm.loop !6

for.end74:                                        ; preds = %for.cond61
  %arraydecay75 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %54 = load i64, i64* %idx, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %arraydecay75, i64 %54
  %55 = load i64, i64* %idx, align 8
  %sub77 = sub i64 512, %55
  %arraydecay78 = getelementptr inbounds [17 x i8], [17 x i8]* %txt, i64 0, i64 0
  %call79 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr76, i64 noundef %sub77, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %arraydecay78) #4
  %56 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %57 = load i32, i32* %level.addr, align 4
  %58 = load i8*, i8** %file.addr, align 8
  %59 = load i32, i32* %line.addr, align 4
  %arraydecay80 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %56, i32 noundef %57, i8* noundef %58, i32 noundef %59, i8* noundef %arraydecay80) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then, %for.end74, %for.end
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_ecp(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text, %struct.mbedtls_ecp_point* noundef %X) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %X.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %str = alloca [512 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store %struct.mbedtls_ecp_point* %X, %struct.mbedtls_ecp_point** %X.addr, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 15
  %5 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %cmp4 = icmp eq void (i8*, i32, i8*, i32, i8*)* null, %5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load i32, i32* %level.addr, align 4
  %7 = load i32, i32* @debug_threshold, align 4
  %cmp6 = icmp sgt i32 %6, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %8 = load i8*, i8** %text.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %8) #4
  %9 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %10 = load i32, i32* %level.addr, align 4
  %11 = load i8*, i8** %file.addr, align 8
  %12 = load i32, i32* %line.addr, align 4
  %arraydecay7 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %X8 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %13, i32 0, i32 0
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %9, i32 noundef %10, i8* noundef %11, i32 noundef %12, i8* noundef %arraydecay7, %struct.mbedtls_mpi* noundef %X8) #5
  %arraydecay9 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %14 = load i8*, i8** %text.addr, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay9, i64 noundef 512, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef %14) #4
  %15 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %16 = load i32, i32* %level.addr, align 4
  %17 = load i8*, i8** %file.addr, align 8
  %18 = load i32, i32* %line.addr, align 4
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %19 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %X.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %19, i32 0, i32 1
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %15, i32 noundef %16, i8* noundef %17, i32 noundef %18, i8* noundef %arraydecay11, %struct.mbedtls_mpi* noundef %Y) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text, %struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %str = alloca [512 x i8], align 16
  %bitlen = alloca i64, align 8
  %idx = alloca i64, align 8
  %n = alloca i32, align 4
  %limb_offset = alloca i64, align 8
  %offset_in_limb = alloca i64, align 8
  %octet = alloca i8, align 1
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 0, i64* %idx, align 8
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 15
  %5 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %cmp4 = icmp eq void (i8*, i32, i8*, i32, i8*)* null, %5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %cmp6 = icmp eq %struct.mbedtls_mpi* null, %6
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %7 = load i32, i32* %level.addr, align 4
  %8 = load i32, i32* @debug_threshold, align 4
  %cmp8 = icmp sgt i32 %7, %8
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end46

if.end:                                           ; preds = %lor.lhs.false7
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %9) #5
  store i64 %call, i64* %bitlen, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %10 = load i8*, i8** %text.addr, align 8
  %11 = load i64, i64* %bitlen, align 8
  %conv = trunc i64 %11 to i32
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* noundef %10, i32 noundef %conv) #4
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %12, i32 noundef %13, i8* noundef %14, i32 noundef %15, i8* noundef %arraydecay10) #5
  %16 = load i64, i64* %bitlen, align 8
  %cmp11 = icmp eq i64 %16, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  store i8 32, i8* %arrayidx, align 16
  %arrayidx14 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 1
  store i8 48, i8* %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 2
  store i8 48, i8* %arrayidx15, align 2
  store i64 3, i64* %idx, align 8
  br label %if.end37

if.else:                                          ; preds = %if.end
  %17 = load i64, i64* %bitlen, align 8
  %sub = sub i64 %17, 1
  %div = udiv i64 %sub, 8
  %conv16 = trunc i64 %div to i32
  store i32 %conv16, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load i32, i32* %n, align 4
  %cmp17 = icmp sge i32 %18, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %n, align 4
  %conv19 = sext i32 %19 to i64
  %div20 = udiv i64 %conv19, 8
  store i64 %div20, i64* %limb_offset, align 8
  %20 = load i32, i32* %n, align 4
  %conv21 = sext i32 %20 to i64
  %rem = urem i64 %conv21, 8
  store i64 %rem, i64* %offset_in_limb, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 2
  %22 = load i64*, i64** %p, align 8
  %23 = load i64, i64* %limb_offset, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %22, i64 %23
  %24 = load i64, i64* %arrayidx22, align 8
  %25 = load i64, i64* %offset_in_limb, align 8
  %mul = mul i64 %25, 8
  %shr = lshr i64 %24, %mul
  %and = and i64 %shr, 255
  %conv23 = trunc i64 %and to i8
  store i8 %conv23, i8* %octet, align 1
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %26 = load i64, i64* %idx, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay24, i64 %26
  %27 = load i64, i64* %idx, align 8
  %sub25 = sub i64 512, %27
  %28 = load i8, i8* %octet, align 1
  %conv26 = zext i8 %28 to i32
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr, i64 noundef %sub25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv26) #4
  %29 = load i64, i64* %idx, align 8
  %add = add i64 %29, 3
  store i64 %add, i64* %idx, align 8
  %30 = load i64, i64* %idx, align 8
  %cmp28 = icmp uge i64 %30, 48
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %for.body
  %arraydecay31 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %31 = load i64, i64* %idx, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %arraydecay31, i64 %31
  %32 = load i64, i64* %idx, align 8
  %sub33 = sub i64 512, %32
  %call34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr32, i64 noundef %sub33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #4
  %33 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %34 = load i32, i32* %level.addr, align 4
  %35 = load i8*, i8** %file.addr, align 8
  %36 = load i32, i32* %line.addr, align 4
  %arraydecay35 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %33, i32 noundef %34, i8* noundef %35, i32 noundef %36, i8* noundef %arraydecay35) #5
  store i64 0, i64* %idx, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %37 = load i32, i32* %n, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %n, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.then13
  %38 = load i64, i64* %idx, align 8
  %cmp38 = icmp ne i64 %38, 0
  br i1 %cmp38, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end37
  %arraydecay41 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %39 = load i64, i64* %idx, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %arraydecay41, i64 %39
  %40 = load i64, i64* %idx, align 8
  %sub43 = sub i64 512, %40
  %call44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %add.ptr42, i64 noundef %sub43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #4
  %41 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %42 = load i32, i32* %level.addr, align 4
  %43 = load i8*, i8** %file.addr, align 8
  %44 = load i32, i32* %line.addr, align 4
  %arraydecay45 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %41, i32 noundef %42, i8* noundef %43, i32 noundef %44, i8* noundef %arraydecay45) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then, %if.then40, %if.end37
  ret void
}

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_print_crt(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text, %struct.mbedtls_x509_crt* noundef %crt) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %str = alloca [512 x i8], align 16
  %i = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_context* null, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf, align 8
  %cmp1 = icmp eq %struct.mbedtls_ssl_config* null, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %conf3 = getelementptr inbounds %struct.mbedtls_ssl_context, %struct.mbedtls_ssl_context* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ssl_config*, %struct.mbedtls_ssl_config** %conf3, align 8
  %f_dbg = getelementptr inbounds %struct.mbedtls_ssl_config, %struct.mbedtls_ssl_config* %4, i32 0, i32 15
  %5 = load void (i8*, i32, i8*, i32, i8*)*, void (i8*, i32, i8*, i32, i8*)** %f_dbg, align 8
  %cmp4 = icmp eq void (i8*, i32, i8*, i32, i8*)* null, %5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %cmp6 = icmp eq %struct.mbedtls_x509_crt* null, %6
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %7 = load i32, i32* %level.addr, align 4
  %8 = load i32, i32* @debug_threshold, align 4
  %cmp8 = icmp sgt i32 %7, %8
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %cmp9 = icmp ne %struct.mbedtls_x509_crt* %9, null
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %10 = load i8*, i8** %text.addr, align 8
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* noundef %10, i32 noundef %inc) #4
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %12, i32 noundef %13, i8* noundef %14, i32 noundef %15, i8* noundef %arraydecay10) #5
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %16 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %call12 = call i32 @mbedtls_x509_crt_info(i8* noundef %arraydecay11, i64 noundef 1023, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %struct.mbedtls_x509_crt* noundef %16) #5
  %17 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %18 = load i32, i32* %level.addr, align 4
  %19 = load i8*, i8** %file.addr, align 8
  %20 = load i32, i32* %line.addr, align 4
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @debug_print_line_by_line(%struct.mbedtls_ssl_context* noundef %17, i32 noundef %18, i8* noundef %19, i32 noundef %20, i8* noundef %arraydecay13) #5
  %21 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %22 = load i32, i32* %level.addr, align 4
  %23 = load i8*, i8** %file.addr, align 8
  %24 = load i32, i32* %line.addr, align 4
  %25 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %25, i32 0, i32 13
  call void @debug_print_pk(%struct.mbedtls_ssl_context* noundef %21, i32 noundef %22, i8* noundef %23, i32 noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.mbedtls_pk_context* noundef %pk) #5
  %26 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %26, i32 0, i32 29
  %27 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %27, %struct.mbedtls_x509_crt** %crt.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

declare dso_local i32 @mbedtls_x509_crt_info(i8* noundef, i64 noundef, i8* noundef, %struct.mbedtls_x509_crt* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_line_by_line(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %str = alloca [512 x i8], align 16
  %start = alloca i8*, align 8
  %cur = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %text.addr, align 8
  store i8* %0, i8** %start, align 8
  %1 = load i8*, i8** %text.addr, align 8
  store i8* %1, i8** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %cur, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %cur, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 10
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %cur, align 8
  %7 = load i8*, i8** %start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  store i64 %add, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %cmp5 = icmp ugt i64 %8, 511
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i64 511, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  %9 = load i8*, i8** %start, align 8
  %10 = load i64, i64* %len, align 8
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %9, i64 noundef %10) #4
  %11 = load i64, i64* %len, align 8
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 %11
  store i8 0, i8* %arrayidx, align 1
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  %arraydecay8 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i64 0, i64 0
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %12, i32 noundef %13, i8* noundef %14, i32 noundef %15, i8* noundef %arraydecay8) #5
  %16 = load i8*, i8** %cur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %add.ptr, i8** %start, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %17 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_pk(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, i8* noundef %text, %struct.mbedtls_pk_context* noundef %pk) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %i = alloca i64, align 8
  %items = alloca [3 x %struct.mbedtls_pk_debug_item], align 16
  %name = alloca [16 x i8], align 16
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  %arraydecay = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 0
  %0 = bitcast %struct.mbedtls_pk_debug_item* %arraydecay to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 72) #4
  %1 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %arraydecay1 = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 0
  %call2 = call i32 @mbedtls_pk_debug(%struct.mbedtls_pk_context* noundef %1, %struct.mbedtls_pk_debug_item* noundef %arraydecay1) #5
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %level.addr, align 4
  %4 = load i8*, i8** %file.addr, align 8
  %5 = load i32, i32* %line.addr, align 4
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %for.end

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, i64* %i, align 8
  %cmp3 = icmp ult i64 %6, 3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 %7
  %type = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %type, align 8
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.end

if.end6:                                          ; preds = %for.body
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  %9 = load i8*, i8** %text.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 %10
  %name9 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %arrayidx8, i32 0, i32 1
  %11 = load i8*, i8** %name9, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay7, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* noundef %9, i8* noundef %11) #4
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 15
  store i8 0, i8* %arrayidx11, align 1
  %12 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 %12
  %type13 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %arrayidx12, i32 0, i32 0
  %13 = load i32, i32* %type13, align 8
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end6
  %14 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %15 = load i32, i32* %level.addr, align 4
  %16 = load i8*, i8** %file.addr, align 8
  %17 = load i32, i32* %line.addr, align 4
  %arraydecay16 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  %18 = load i64, i64* %i, align 8
  %arrayidx17 = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 %18
  %value = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %arrayidx17, i32 0, i32 2
  %19 = load i8*, i8** %value, align 8
  %20 = bitcast i8* %19 to %struct.mbedtls_mpi*
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %14, i32 noundef %15, i8* noundef %16, i32 noundef %17, i8* noundef %arraydecay16, %struct.mbedtls_mpi* noundef %20) #5
  br label %if.end27

if.else:                                          ; preds = %if.end6
  %21 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 %21
  %type19 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %arrayidx18, i32 0, i32 0
  %22 = load i32, i32* %type19, align 8
  %cmp20 = icmp eq i32 %22, 2
  br i1 %cmp20, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.else
  %23 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %24 = load i32, i32* %level.addr, align 4
  %25 = load i8*, i8** %file.addr, align 8
  %26 = load i32, i32* %line.addr, align 4
  %arraydecay22 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  %27 = load i64, i64* %i, align 8
  %arrayidx23 = getelementptr inbounds [3 x %struct.mbedtls_pk_debug_item], [3 x %struct.mbedtls_pk_debug_item]* %items, i64 0, i64 %27
  %value24 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %arrayidx23, i32 0, i32 2
  %28 = load i8*, i8** %value24, align 8
  %29 = bitcast i8* %28 to %struct.mbedtls_ecp_point*
  call void @mbedtls_debug_print_ecp(%struct.mbedtls_ssl_context* noundef %23, i32 noundef %24, i8* noundef %25, i32 noundef %26, i8* noundef %arraydecay22, %struct.mbedtls_ecp_point* noundef %29) #5
  br label %if.end26

if.else25:                                        ; preds = %if.else
  %30 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %31 = load i32, i32* %level.addr, align 4
  %32 = load i8*, i8** %file.addr, align 8
  %33 = load i32, i32* %line.addr, align 4
  call void @debug_send_line(%struct.mbedtls_ssl_context* noundef %30, i32 noundef %31, i8* noundef %32, i32 noundef %33, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then, %if.then5, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_debug_printf_ecdh(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, %struct.mbedtls_ecdh_context* noundef %ecdh, i32 noundef %attr) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %ecdh.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %attr.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store %struct.mbedtls_ecdh_context* %ecdh, %struct.mbedtls_ecdh_context** %ecdh.addr, align 8
  store i32 %attr, i32* %attr.addr, align 4
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ecdh.addr, align 8
  %var = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %0, i32 0, i32 2
  %1 = load i32, i32* %var, align 8
  switch i32 %1, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %level.addr, align 4
  %4 = load i8*, i8** %file.addr, align 8
  %5 = load i32, i32* %line.addr, align 4
  %6 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ecdh.addr, align 8
  %7 = load i32, i32* %attr.addr, align 4
  call void @mbedtls_debug_printf_ecdh_internal(%struct.mbedtls_ssl_context* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, %struct.mbedtls_ecdh_context* noundef %6, i32 noundef %7) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_debug_printf_ecdh_internal(%struct.mbedtls_ssl_context* noundef %ssl, i32 noundef %level, i8* noundef %file, i32 noundef %line, %struct.mbedtls_ecdh_context* noundef %ecdh, i32 noundef %attr) #0 {
entry:
  %ssl.addr = alloca %struct.mbedtls_ssl_context*, align 8
  %level.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %ecdh.addr = alloca %struct.mbedtls_ecdh_context*, align 8
  %attr.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ecdh_context_mbed*, align 8
  store %struct.mbedtls_ssl_context* %ssl, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store %struct.mbedtls_ecdh_context* %ecdh, %struct.mbedtls_ecdh_context** %ecdh.addr, align 8
  store i32 %attr, i32* %attr.addr, align 4
  %0 = load %struct.mbedtls_ecdh_context*, %struct.mbedtls_ecdh_context** %ecdh.addr, align 8
  %ctx1 = getelementptr inbounds %struct.mbedtls_ecdh_context, %struct.mbedtls_ecdh_context* %0, i32 0, i32 3
  %mbed_ecdh = bitcast %union.anon* %ctx1 to %struct.mbedtls_ecdh_context_mbed*
  store %struct.mbedtls_ecdh_context_mbed* %mbed_ecdh, %struct.mbedtls_ecdh_context_mbed** %ctx, align 8
  %1 = load i32, i32* %attr.addr, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %3 = load i32, i32* %level.addr, align 4
  %4 = load i8*, i8** %file.addr, align 8
  %5 = load i32, i32* %line.addr, align 4
  %6 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %6, i32 0, i32 2
  call void @mbedtls_debug_print_ecp(%struct.mbedtls_ssl_context* noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %struct.mbedtls_ecp_point* noundef %Q) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %7 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %8 = load i32, i32* %level.addr, align 4
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load i32, i32* %line.addr, align 4
  %11 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx, align 8
  %Qp = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %11, i32 0, i32 3
  call void @mbedtls_debug_print_ecp(%struct.mbedtls_ssl_context* noundef %7, i32 noundef %8, i8* noundef %9, i32 noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct.mbedtls_ecp_point* noundef %Qp) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %12 = load %struct.mbedtls_ssl_context*, %struct.mbedtls_ssl_context** %ssl.addr, align 8
  %13 = load i32, i32* %level.addr, align 4
  %14 = load i8*, i8** %file.addr, align 8
  %15 = load i32, i32* %line.addr, align 4
  %16 = load %struct.mbedtls_ecdh_context_mbed*, %struct.mbedtls_ecdh_context_mbed** %ctx, align 8
  %z = getelementptr inbounds %struct.mbedtls_ecdh_context_mbed, %struct.mbedtls_ecdh_context_mbed* %16, i32 0, i32 4
  call void @mbedtls_debug_print_mpi(%struct.mbedtls_ssl_context* noundef %12, i32 noundef %13, i8* noundef %14, i32 noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), %struct.mbedtls_mpi* noundef %z) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_debug(%struct.mbedtls_pk_context* noundef, %struct.mbedtls_pk_debug_item* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!10 = distinct !{!10, !5}
