; ModuleID = 'x509_crt.c'
source_filename = "x509_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_crt_profile = type { i32, i32, i32, i32 }
%struct.x509_crt_verify_string = type { i32, i8* }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_pem_context = type { i8*, i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque
%struct.mbedtls_x509_subject_alternative_name = type { i32, %union.anon }
%union.anon = type { %struct.mbedtls_x509_san_other_name }
%struct.mbedtls_x509_san_other_name = type { %struct.mbedtls_asn1_buf, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf }
%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_x509_crt_verify_chain = type { [10 x %struct.mbedtls_x509_crt_verify_chain_item], i32 }
%struct.mbedtls_x509_crt_verify_chain_item = type { %struct.mbedtls_x509_crt*, i32 }
%struct.mbedtls_asn1_bitstring = type { i64, i8, i8* }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_md_info_t = type opaque

@mbedtls_x509_crt_profile_default = dso_local constant %struct.mbedtls_x509_crt_profile { i32 56, i32 268435455, i32 252, i32 2048 }, align 4
@mbedtls_x509_crt_profile_next = dso_local constant %struct.mbedtls_x509_crt_profile { i32 56, i32 268435455, i32 2300, i32 2048 }, align 4
@mbedtls_x509_crt_profile_suiteb = dso_local constant %struct.mbedtls_x509_crt_profile { i32 24, i32 10, i32 12, i32 0 }, align 4
@mbedtls_x509_crt_profile_none = dso_local constant %struct.mbedtls_x509_crt_profile { i32 0, i32 0, i32 0, i32 -1 }, align 4
@.str = private unnamed_addr constant [28 x i8] c"-----BEGIN CERTIFICATE-----\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"-----END CERTIFICATE-----\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\0ACertificate is uninitialised!\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%scert. version     : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%sserial number     : \00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\0A%sissuer name       : \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\0A%ssubject name      : \00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\0A%sissued  on        : %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\0A%sexpires on        : %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\0A%ssigned using      : \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A%s%-18s: %d bits\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"\0A%sbasic constraints : CA=%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c", max_pathlen=%d\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\0A%ssubject alt name  :\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\0A%scert. type        : \00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\0A%skey usage         : \00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\0A%sext key usage     : \00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\0A%scertificate policies : \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@x509_crt_verify_strings = internal constant [21 x %struct.x509_crt_verify_string] [%struct.x509_crt_verify_string { i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.57, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 4, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.58, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 8, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.59, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.60, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 512, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.65, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 1024, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 2048, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.67, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 4096, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.68, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 8192, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.69, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 16384, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 32768, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.71, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 65536, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.72, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 131072, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 262144, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.74, i32 0, i32 0) }, %struct.x509_crt_verify_string { i32 524288, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.75, i32 0, i32 0) }, %struct.x509_crt_verify_string zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"%sUnknown reason (this should not happen)\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"U\1D%\00\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"x509_crt.c\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"U\1D \00\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"+\06\01\05\05\07\08\04\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"\0A%s    <unsupported>\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"\0A%s    <malformed>\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"\0A%s    otherName :\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"\0A%s        hardware module name :\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"\0A%s            hardware type          : \00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\0A%s            hardware serial number : \00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"\0A%s    dNSName : \00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"%sSSL Client\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"%sSSL Server\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"%sEmail\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"%sObject Signing\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"%sReserved\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"%sSSL CA\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%sEmail CA\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"%sObject Signing CA\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"%sDigital Signature\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"%sNon Repudiation\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"%sKey Encipherment\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"%sData Encipherment\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"%sKey Agreement\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"%sKey Cert Sign\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"%sCRL Sign\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%sEncipher Only\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"%sDecipher Only\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"The certificate validity has expired\00", align 1
@.str.57 = private unnamed_addr constant [47 x i8] c"The certificate has been revoked (is on a CRL)\00", align 1
@.str.58 = private unnamed_addr constant [69 x i8] c"The certificate Common Name (CN) does not match with the expected CN\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"The certificate is not correctly signed by the trusted CA\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"The CRL is not correctly signed by the trusted CA\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"The CRL is expired\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Certificate was missing\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"Certificate verification was skipped\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"Other reason (can be used by verify callback)\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"The certificate validity starts in the future\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"The CRL is from the future\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"Usage does not match the keyUsage extension\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c"Usage does not match the extendedKeyUsage extension\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Usage does not match the nsCertType extension\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"The certificate is signed with an unacceptable hash.\00", align 1
@.str.71 = private unnamed_addr constant [73 x i8] c"The certificate is signed with an unacceptable PK alg (eg RSA vs ECDSA).\00", align 1
@.str.72 = private unnamed_addr constant [82 x i8] c"The certificate is signed with an unacceptable key (eg bad curve, RSA too short).\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"The CRL is signed with an unacceptable hash.\00", align 1
@.str.74 = private unnamed_addr constant [65 x i8] c"The CRL is signed with an unacceptable PK alg (eg RSA vs ECDSA).\00", align 1
@.str.75 = private unnamed_addr constant [74 x i8] c"The CRL is signed with an unacceptable key (eg bad curve, RSA too short).\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"U\04\03\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse_der_nocopy(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %buflen.addr, align 8
  %call = call i32 @mbedtls_x509_crt_parse_der_internal(%struct.mbedtls_x509_crt* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef 0, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef null, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_x509_crt_parse_der_internal(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %buf, i64 noundef %buflen, i32 noundef %make_copy, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %cb, i8* noundef %p_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %make_copy.addr = alloca i32, align 4
  %cb.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %crt = alloca %struct.mbedtls_x509_crt*, align 8
  %prev = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 %make_copy, i32* %make_copy.addr, align 4
  store i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* %cb, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %crt, align 8
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %prev, align 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %3, i32 0, i32 3
  %4 = load i32, i32* %version, align 8
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %5, i32 0, i32 29
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  %cmp3 = icmp ne %struct.mbedtls_x509_crt* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  store %struct.mbedtls_x509_crt* %8, %struct.mbedtls_x509_crt** %prev, align 8
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next4 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %9, i32 0, i32 29
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next4, align 8
  store %struct.mbedtls_x509_crt* %10, %struct.mbedtls_x509_crt** %crt, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %version5 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %11, i32 0, i32 3
  %12 = load i32, i32* %version5, align 8
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %while.end
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next7 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %13, i32 0, i32 29
  %14 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next7, align 8
  %cmp8 = icmp eq %struct.mbedtls_x509_crt* %14, null
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %land.lhs.true
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 616) #6
  %15 = bitcast i8* %call to %struct.mbedtls_x509_crt*
  %16 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next10 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %16, i32 0, i32 29
  store %struct.mbedtls_x509_crt* %15, %struct.mbedtls_x509_crt** %next10, align 8
  %17 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next11 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %17, i32 0, i32 29
  %18 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next11, align 8
  %cmp12 = icmp eq %struct.mbedtls_x509_crt* %18, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then9
  %19 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  store %struct.mbedtls_x509_crt* %19, %struct.mbedtls_x509_crt** %prev, align 8
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next15 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %20, i32 0, i32 29
  %21 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next15, align 8
  call void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %21) #5
  %22 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %next16 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %22, i32 0, i32 29
  %23 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next16, align 8
  store %struct.mbedtls_x509_crt* %23, %struct.mbedtls_x509_crt** %crt, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %land.lhs.true, %while.end
  %24 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %25 = load i8*, i8** %buf.addr, align 8
  %26 = load i64, i64* %buflen.addr, align 8
  %27 = load i32, i32* %make_copy.addr, align 4
  %28 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %29 = load i8*, i8** %p_ctx.addr, align 8
  %call18 = call i32 @x509_crt_parse_der_core(%struct.mbedtls_x509_crt* noundef %24, i8* noundef %25, i64 noundef %26, i32 noundef %27, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %28, i8* noundef %29) #5
  store i32 %call18, i32* %ret, align 4
  %30 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %30, 0
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end17
  %31 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %prev, align 8
  %tobool = icmp ne %struct.mbedtls_x509_crt* %31, null
  br i1 %tobool, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then20
  %32 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %prev, align 8
  %next22 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %32, i32 0, i32 29
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %next22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then20
  %33 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %34 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %cmp24 = icmp ne %struct.mbedtls_x509_crt* %33, %34
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  %35 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %36 = bitcast %struct.mbedtls_x509_crt* %35 to i8*
  call void @free(i8* noundef %36) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.end26, %if.then13, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse_der_with_ext_cb(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %buf, i64 noundef %buflen, i32 noundef %make_copy, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %cb, i8* noundef %p_ctx) #0 {
entry:
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %make_copy.addr = alloca i32, align 4
  %cb.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, align 8
  %p_ctx.addr = alloca i8*, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 %make_copy, i32* %make_copy.addr, align 4
  store i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* %cb, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %buflen.addr, align 8
  %3 = load i32, i32* %make_copy.addr, align 4
  %4 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %5 = load i8*, i8** %p_ctx.addr, align 8
  %call = call i32 @mbedtls_x509_crt_parse_der_internal(%struct.mbedtls_x509_crt* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %4, i8* noundef %5) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %buflen.addr, align 8
  %call = call i32 @mbedtls_x509_crt_parse_der_internal(%struct.mbedtls_x509_crt* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef 1, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef null, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %success = alloca i32, align 4
  %first_error = alloca i32, align 4
  %total_failed = alloca i32, align 4
  %buf_format = alloca i32, align 4
  %ret = alloca i32, align 4
  %pem = alloca %struct.mbedtls_pem_context, align 8
  %use_len = alloca i64, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 0, i32* %success, align 4
  store i32 0, i32* %first_error, align 4
  store i32 0, i32* %total_failed, align 4
  store i32 1, i32* %buf_format, align 4
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %buflen.addr, align 8
  %cmp2 = icmp ne i64 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %buflen.addr, align 8
  %sub = sub i64 %4, 1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strstr(i8* noundef %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #7
  %cmp6 = icmp ne i8* %call, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true5
  store i32 2, i32* %buf_format, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true5, %land.lhs.true, %if.end
  %7 = load i32, i32* %buf_format, align 4
  %cmp10 = icmp eq i32 %7, 1
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %8 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %buflen.addr, align 8
  %call13 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %8, i8* noundef %9, i64 noundef %10) #5
  store i32 %call13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %11 = load i32, i32* %buf_format, align 4
  %cmp15 = icmp eq i32 %11, 2
  br i1 %cmp15, label %if.then17, label %if.end56

if.then17:                                        ; preds = %if.end14
  store i32 -110, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.end53, %if.end37, %if.then17
  %12 = load i64, i64* %buflen.addr, align 8
  %cmp18 = icmp ugt i64 %12, 1
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %pem) #5
  %13 = load i8*, i8** %buf.addr, align 8
  %call20 = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef %13, i8* noundef null, i64 noundef 0, i64* noundef %use_len) #5
  store i32 %call20, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.body
  %15 = load i64, i64* %use_len, align 8
  %16 = load i64, i64* %buflen.addr, align 8
  %sub24 = sub i64 %16, %15
  store i64 %sub24, i64* %buflen.addr, align 8
  %17 = load i64, i64* %use_len, align 8
  %18 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %17
  store i8* %add.ptr, i8** %buf.addr, align 8
  br label %if.end39

if.else:                                          ; preds = %while.body
  %19 = load i32, i32* %ret, align 4
  %cmp25 = icmp eq i32 %19, -5248
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.else
  %21 = load i32, i32* %ret, align 4
  %cmp29 = icmp ne i32 %21, -4224
  br i1 %cmp29, label %if.then31, label %if.else38

if.then31:                                        ; preds = %if.else28
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %22 = load i64, i64* %use_len, align 8
  %23 = load i64, i64* %buflen.addr, align 8
  %sub32 = sub i64 %23, %22
  store i64 %sub32, i64* %buflen.addr, align 8
  %24 = load i64, i64* %use_len, align 8
  %25 = load i8*, i8** %buf.addr, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %25, i64 %24
  store i8* %add.ptr33, i8** %buf.addr, align 8
  %26 = load i32, i32* %first_error, align 4
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then31
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %first_error, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then31
  %28 = load i32, i32* %total_failed, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %total_failed, align 4
  br label %while.cond, !llvm.loop !6

if.else38:                                        ; preds = %if.else28
  br label %while.end

if.end39:                                         ; preds = %if.then23
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %buf40 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %30 = load i8*, i8** %buf40, align 8
  %buflen41 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %31 = load i64, i64* %buflen41, align 8
  %call42 = call i32 @mbedtls_x509_crt_parse_der(%struct.mbedtls_x509_crt* noundef %29, i8* noundef %30, i64 noundef %31) #5
  store i32 %call42, i32* %ret, align 4
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %32 = load i32, i32* %ret, align 4
  %cmp43 = icmp ne i32 %32, 0
  br i1 %cmp43, label %if.then45, label %if.end55

if.then45:                                        ; preds = %if.end39
  %33 = load i32, i32* %ret, align 4
  %cmp46 = icmp eq i32 %33, -10368
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then45
  %35 = load i32, i32* %first_error, align 4
  %cmp50 = icmp eq i32 %35, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %first_error, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49
  %37 = load i32, i32* %total_failed, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, i32* %total_failed, align 4
  br label %while.cond, !llvm.loop !6

if.end55:                                         ; preds = %if.end39
  store i32 1, i32* %success, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.else38, %while.cond
  br label %if.end56

if.end56:                                         ; preds = %while.end, %if.end14
  %38 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.end56
  %39 = load i32, i32* %total_failed, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.else58:                                        ; preds = %if.end56
  %40 = load i32, i32* %first_error, align 4
  %tobool59 = icmp ne i32 %40, 0
  br i1 %tobool59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.else58
  %41 = load i32, i32* %first_error, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.else61:                                        ; preds = %if.else58
  store i32 -10112, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else61, %if.then60, %if.then57, %if.then48, %if.then27, %if.then12, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #1

declare dso_local void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef) #2

declare dso_local i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @mbedtls_pk_load_file(i8* noundef %0, i8** noundef %buf, i64* noundef %n) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %3 = load i8*, i8** %buf, align 8
  %4 = load i64, i64* %n, align 8
  %call1 = call i32 @mbedtls_x509_crt_parse(%struct.mbedtls_x509_crt* noundef %2, i8* noundef %3, i64 noundef %4) #5
  store i32 %call1, i32* %ret, align 4
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %6) #5
  %7 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %7) #6
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_pk_load_file(i8* noundef, i8** noundef, i64* noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_parse_path(%struct.mbedtls_x509_crt* noundef %chain, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %t_ret = alloca i32, align 4
  %snp_ret = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %entry1 = alloca %struct.dirent*, align 8
  %entry_name = alloca [512 x i8], align 16
  %dir = alloca %struct.__dirstream*, align 8
  store %struct.mbedtls_x509_crt* %chain, %struct.mbedtls_x509_crt** %chain.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* noundef %0) #5
  store %struct.__dirstream* %call, %struct.__dirstream** %dir, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %cmp = icmp eq %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10496, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.stat* %sb to i8*
  %call2 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 144) #6
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.then20, %if.end
  %3 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call3 = call %struct.dirent* @readdir(%struct.__dirstream* noundef %3) #5
  store %struct.dirent* %call3, %struct.dirent** %entry1, align 8
  %cmp4 = icmp ne %struct.dirent* %call3, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %entry_name, i64 0, i64 0
  %4 = load i8*, i8** %path.addr, align 8
  %5 = load %struct.dirent*, %struct.dirent** %entry1, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i64 0, i64 0
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay, i64 noundef 512, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef %4, i8* noundef %arraydecay5) #6
  store i32 %call6, i32* %snp_ret, align 4
  %6 = load i32, i32* %snp_ret, align 4
  %cmp7 = icmp slt i32 %6, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i32, i32* %snp_ret, align 4
  %conv = sext i32 %7 to i64
  %cmp8 = icmp uge i64 %conv, 512
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %lor.lhs.false, %while.body
  store i32 -10624, i32* %ret, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %entry_name, i64 0, i64 0
  %call12 = call i32 @stat(i8* noundef %arraydecay11, %struct.stat* noundef %sb) #6
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  store i32 -10496, i32* %ret, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %8 = load i32, i32* %st_mode, align 8
  %and = and i32 %8, 61440
  %cmp18 = icmp eq i32 %and, 32768
  br i1 %cmp18, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  br label %while.cond, !llvm.loop !7

if.end21:                                         ; preds = %if.end17
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %chain.addr, align 8
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %entry_name, i64 0, i64 0
  %call23 = call i32 @mbedtls_x509_crt_parse_file(%struct.mbedtls_x509_crt* noundef %9, i8* noundef %arraydecay22) #5
  store i32 %call23, i32* %t_ret, align 4
  %10 = load i32, i32* %t_ret, align 4
  %cmp24 = icmp slt i32 %10, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end21
  %11 = load i32, i32* %ret, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %ret, align 4
  br label %if.end28

if.else27:                                        ; preds = %if.end21
  %12 = load i32, i32* %t_ret, align 4
  %13 = load i32, i32* %ret, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %ret, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then15, %if.then10
  %14 = load %struct.__dirstream*, %struct.__dirstream** %dir, align 8
  %call29 = call i32 @closedir(%struct.__dirstream* noundef %14) #5
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local %struct.__dirstream* @opendir(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

declare dso_local %struct.dirent* @readdir(%struct.__dirstream* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #3

declare dso_local i32 @closedir(%struct.__dirstream* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_parse_subject_alt_name(%struct.mbedtls_asn1_buf* noundef %san_buf, %struct.mbedtls_x509_subject_alternative_name* noundef %san) #0 {
entry:
  %retval = alloca i32, align 4
  %san_buf.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %san.addr = alloca %struct.mbedtls_x509_subject_alternative_name*, align 8
  %ret = alloca i32, align 4
  %other_name = alloca %struct.mbedtls_x509_san_other_name, align 8
  store %struct.mbedtls_asn1_buf* %san_buf, %struct.mbedtls_asn1_buf** %san_buf.addr, align 8
  store %struct.mbedtls_x509_subject_alternative_name* %san, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %san_buf.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 0
  %1 = load i32, i32* %tag, align 8
  %and = and i32 %1, 223
  switch i32 %and, label %sw.default [
    i32 128, label %sw.bb
    i32 130, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %san_buf.addr, align 8
  %call = call i32 @x509_get_other_name(%struct.mbedtls_asn1_buf* noundef %2, %struct.mbedtls_x509_san_other_name* noundef %other_name) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load %struct.mbedtls_x509_subject_alternative_name*, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  %6 = bitcast %struct.mbedtls_x509_subject_alternative_name* %5 to i8*
  %call1 = call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef 80) #6
  %7 = load %struct.mbedtls_x509_subject_alternative_name*, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %7, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %8 = load %struct.mbedtls_x509_subject_alternative_name*, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  %san2 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %8, i32 0, i32 1
  %other_name3 = bitcast %union.anon* %san2 to %struct.mbedtls_x509_san_other_name*
  %9 = bitcast %struct.mbedtls_x509_san_other_name* %other_name3 to i8*
  %10 = bitcast %struct.mbedtls_x509_san_other_name* %other_name to i8*
  %call4 = call i8* @memcpy(i8* noundef %9, i8* noundef %10, i64 noundef 72) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %11 = load %struct.mbedtls_x509_subject_alternative_name*, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  %12 = bitcast %struct.mbedtls_x509_subject_alternative_name* %11 to i8*
  %call6 = call i8* @memset(i8* noundef %12, i32 noundef 0, i64 noundef 80) #6
  %13 = load %struct.mbedtls_x509_subject_alternative_name*, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  %type7 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %13, i32 0, i32 0
  store i32 2, i32* %type7, align 8
  %14 = load %struct.mbedtls_x509_subject_alternative_name*, %struct.mbedtls_x509_subject_alternative_name** %san.addr, align 8
  %san8 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %14, i32 0, i32 1
  %unstructured_name = bitcast %union.anon* %san8 to %struct.mbedtls_asn1_buf*
  %15 = bitcast %struct.mbedtls_asn1_buf* %unstructured_name to i8*
  %16 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %san_buf.addr, align 8
  %17 = bitcast %struct.mbedtls_asn1_buf* %16 to i8*
  %call9 = call i8* @memcpy(i8* noundef %15, i8* noundef %17, i64 noundef 24) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -8320, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb5, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_other_name(%struct.mbedtls_asn1_buf* noundef %subject_alt_name, %struct.mbedtls_x509_san_other_name* noundef %other_name) #0 {
entry:
  %retval = alloca i32, align 4
  %subject_alt_name.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %other_name.addr = alloca %struct.mbedtls_x509_san_other_name*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %cur_oid = alloca %struct.mbedtls_asn1_buf, align 8
  store %struct.mbedtls_asn1_buf* %subject_alt_name, %struct.mbedtls_asn1_buf** %subject_alt_name.addr, align 8
  store %struct.mbedtls_x509_san_other_name* %other_name, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %subject_alt_name.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 2
  %1 = load i8*, i8** %p1, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %subject_alt_name.addr, align 8
  %len2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %3, i32 0, i32 1
  %4 = load i64, i64* %len2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  store i8* %add.ptr, i8** %end, align 8
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %subject_alt_name.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %5, i32 0, i32 0
  %6 = load i32, i32* %tag, align 8
  %and = and i32 %6, 223
  %cmp = icmp ne i32 %and, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %end, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %7, i64* noundef %len, i32 noundef 6) #5
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call5 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1723) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %tag7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cur_oid, i32 0, i32 0
  store i32 6, i32* %tag7, align 8
  %9 = load i8*, i8** %p, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cur_oid, i32 0, i32 2
  store i8* %9, i8** %p8, align 8
  %10 = load i64, i64* %len, align 8
  %len9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cur_oid, i32 0, i32 1
  store i64 %10, i64* %len9, align 8
  %len10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cur_oid, i32 0, i32 1
  %11 = load i64, i64* %len10, align 8
  %cmp11 = icmp ne i64 8, %11
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end6
  %p12 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cur_oid, i32 0, i32 2
  %12 = load i8*, i8** %p12, align 8
  %len13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cur_oid, i32 0, i32 1
  %13 = load i64, i64* %len13, align 8
  %call14 = call i32 @memcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* noundef %12, i64 noundef %13) #7
  %cmp15 = icmp ne i32 %call14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end6
  %14 = phi i1 [ true, %if.end6 ], [ %cmp15, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  %cmp16 = icmp ne i32 %lor.ext, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.end
  store i32 -8320, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i64, i64* %len, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8*, i8** %end, align 8
  %cmp20 = icmp uge i8* %add.ptr19, %17
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %18 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %19 = bitcast %struct.mbedtls_x509_san_other_name* %18 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %19, i64 noundef 72) #5
  %call22 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1741) #5
  store i32 %call22, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %20 = load i64, i64* %len, align 8
  %21 = load i8*, i8** %p, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %add.ptr24, i8** %p, align 8
  %22 = load i8*, i8** %end, align 8
  %call25 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %22, i64* noundef %len, i32 noundef 160) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end23
  %23 = load i32, i32* %ret, align 4
  %call28 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %23, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1746) #5
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end23
  %24 = load i8*, i8** %end, align 8
  %call30 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %24, i64* noundef %len, i32 noundef 48) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %25 = load i32, i32* %ret, align 4
  %call33 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1750) #5
  store i32 %call33, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  %26 = load i8*, i8** %end, align 8
  %call35 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %26, i64* noundef %len, i32 noundef 6) #5
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %27 = load i32, i32* %ret, align 4
  %call38 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1753) #5
  store i32 %call38, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end34
  %28 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %value = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %28, i32 0, i32 1
  %hardware_module_name = bitcast %union.anon.0* %value to %struct.anon*
  %oid = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name, i32 0, i32 0
  %tag40 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 0
  store i32 6, i32* %tag40, align 8
  %29 = load i8*, i8** %p, align 8
  %30 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %value41 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %30, i32 0, i32 1
  %hardware_module_name42 = bitcast %union.anon.0* %value41 to %struct.anon*
  %oid43 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name42, i32 0, i32 0
  %p44 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid43, i32 0, i32 2
  store i8* %29, i8** %p44, align 8
  %31 = load i64, i64* %len, align 8
  %32 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %value45 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %32, i32 0, i32 1
  %hardware_module_name46 = bitcast %union.anon.0* %value45 to %struct.anon*
  %oid47 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name46, i32 0, i32 0
  %len48 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid47, i32 0, i32 1
  store i64 %31, i64* %len48, align 8
  %33 = load i8*, i8** %p, align 8
  %34 = load i64, i64* %len, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = load i8*, i8** %end, align 8
  %cmp50 = icmp uge i8* %add.ptr49, %35
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end39
  %36 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %37 = bitcast %struct.mbedtls_x509_san_other_name* %36 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %37, i64 noundef 72) #5
  %call52 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1763) #5
  store i32 %call52, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end39
  %38 = load i64, i64* %len, align 8
  %39 = load i8*, i8** %p, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %add.ptr54, i8** %p, align 8
  %40 = load i8*, i8** %end, align 8
  %call55 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %40, i64* noundef %len, i32 noundef 4) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  %41 = load i32, i32* %ret, align 4
  %call58 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %41, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1768) #5
  store i32 %call58, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end53
  %42 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %value60 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %42, i32 0, i32 1
  %hardware_module_name61 = bitcast %union.anon.0* %value60 to %struct.anon*
  %val = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name61, i32 0, i32 1
  %tag62 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 0
  store i32 4, i32* %tag62, align 8
  %43 = load i8*, i8** %p, align 8
  %44 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %value63 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %44, i32 0, i32 1
  %hardware_module_name64 = bitcast %union.anon.0* %value63 to %struct.anon*
  %val65 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name64, i32 0, i32 1
  %p66 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val65, i32 0, i32 2
  store i8* %43, i8** %p66, align 8
  %45 = load i64, i64* %len, align 8
  %46 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %value67 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %46, i32 0, i32 1
  %hardware_module_name68 = bitcast %union.anon.0* %value67 to %struct.anon*
  %val69 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name68, i32 0, i32 1
  %len70 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val69, i32 0, i32 1
  store i64 %45, i64* %len70, align 8
  %47 = load i64, i64* %len, align 8
  %48 = load i8*, i8** %p, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %add.ptr71, i8** %p, align 8
  %49 = load i8*, i8** %p, align 8
  %50 = load i8*, i8** %end, align 8
  %cmp72 = icmp ne i8* %49, %50
  br i1 %cmp72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end59
  %51 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name.addr, align 8
  %52 = bitcast %struct.mbedtls_x509_san_other_name* %51 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %52, i64 noundef 72) #5
  %call74 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1779) #5
  store i32 %call74, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %if.end59
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end75, %if.then73, %if.then57, %if.then51, %if.then37, %if.then32, %if.then27, %if.then21, %if.then17, %if.then4, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_info(i8* noundef %buf, i64 noundef %size, i8* noundef %prefix, %struct.mbedtls_x509_crt* noundef %crt) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %key_size_str = alloca [18 x i8], align 16
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* null, %2
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i64, i64* %n, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %3, i64 noundef %4, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #6
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load i32, i32* %ret, align 4
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %n, align 8
  %cmp2 = icmp uge i64 %conv, %7
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %ret, align 4
  %conv5 = sext i32 %8 to i64
  %9 = load i64, i64* %n, align 8
  %sub = sub i64 %9, %conv5
  store i64 %sub, i64* %n, align 8
  %10 = load i32, i32* %ret, align 4
  %conv6 = sext i32 %10 to i64
  %11 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %conv6
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8
  %13 = load i64, i64* %n, align 8
  %sub7 = sub i64 %12, %13
  %conv8 = trunc i64 %sub7 to i32
  store i32 %conv8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %entry
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load i8*, i8** %prefix.addr, align 8
  %17 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %17, i32 0, i32 3
  %18 = load i32, i32* %version, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %14, i64 noundef %15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef %16, i32 noundef %18) #6
  store i32 %call10, i32* %ret, align 4
  br label %do.body11

do.body11:                                        ; preds = %if.end9
  %19 = load i32, i32* %ret, align 4
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %do.body11
  %20 = load i32, i32* %ret, align 4
  %conv15 = sext i32 %20 to i64
  %21 = load i64, i64* %n, align 8
  %cmp16 = icmp uge i64 %conv15, %21
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %do.body11
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false14
  %22 = load i32, i32* %ret, align 4
  %conv20 = sext i32 %22 to i64
  %23 = load i64, i64* %n, align 8
  %sub21 = sub i64 %23, %conv20
  store i64 %sub21, i64* %n, align 8
  %24 = load i32, i32* %ret, align 4
  %conv22 = sext i32 %24 to i64
  %25 = load i8*, i8** %p, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %25, i64 %conv22
  store i8* %add.ptr23, i8** %p, align 8
  br label %do.end24

do.end24:                                         ; preds = %if.end19
  %26 = load i8*, i8** %p, align 8
  %27 = load i64, i64* %n, align 8
  %28 = load i8*, i8** %prefix.addr, align 8
  %call25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %26, i64 noundef %27, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef %28) #6
  store i32 %call25, i32* %ret, align 4
  br label %do.body26

do.body26:                                        ; preds = %do.end24
  %29 = load i32, i32* %ret, align 4
  %cmp27 = icmp slt i32 %29, 0
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %do.body26
  %30 = load i32, i32* %ret, align 4
  %conv30 = sext i32 %30 to i64
  %31 = load i64, i64* %n, align 8
  %cmp31 = icmp uge i64 %conv30, %31
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false29, %do.body26
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false29
  %32 = load i32, i32* %ret, align 4
  %conv35 = sext i32 %32 to i64
  %33 = load i64, i64* %n, align 8
  %sub36 = sub i64 %33, %conv35
  store i64 %sub36, i64* %n, align 8
  %34 = load i32, i32* %ret, align 4
  %conv37 = sext i32 %34 to i64
  %35 = load i8*, i8** %p, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %35, i64 %conv37
  store i8* %add.ptr38, i8** %p, align 8
  br label %do.end39

do.end39:                                         ; preds = %if.end34
  %36 = load i8*, i8** %p, align 8
  %37 = load i64, i64* %n, align 8
  %38 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %38, i32 0, i32 4
  %call40 = call i32 @mbedtls_x509_serial_gets(i8* noundef %36, i64 noundef %37, %struct.mbedtls_asn1_buf* noundef %serial) #5
  store i32 %call40, i32* %ret, align 4
  br label %do.body41

do.body41:                                        ; preds = %do.end39
  %39 = load i32, i32* %ret, align 4
  %cmp42 = icmp slt i32 %39, 0
  br i1 %cmp42, label %if.then48, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %do.body41
  %40 = load i32, i32* %ret, align 4
  %conv45 = sext i32 %40 to i64
  %41 = load i64, i64* %n, align 8
  %cmp46 = icmp uge i64 %conv45, %41
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false44, %do.body41
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %lor.lhs.false44
  %42 = load i32, i32* %ret, align 4
  %conv50 = sext i32 %42 to i64
  %43 = load i64, i64* %n, align 8
  %sub51 = sub i64 %43, %conv50
  store i64 %sub51, i64* %n, align 8
  %44 = load i32, i32* %ret, align 4
  %conv52 = sext i32 %44 to i64
  %45 = load i8*, i8** %p, align 8
  %add.ptr53 = getelementptr inbounds i8, i8* %45, i64 %conv52
  store i8* %add.ptr53, i8** %p, align 8
  br label %do.end54

do.end54:                                         ; preds = %if.end49
  %46 = load i8*, i8** %p, align 8
  %47 = load i64, i64* %n, align 8
  %48 = load i8*, i8** %prefix.addr, align 8
  %call55 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %46, i64 noundef %47, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* noundef %48) #6
  store i32 %call55, i32* %ret, align 4
  br label %do.body56

do.body56:                                        ; preds = %do.end54
  %49 = load i32, i32* %ret, align 4
  %cmp57 = icmp slt i32 %49, 0
  br i1 %cmp57, label %if.then63, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %do.body56
  %50 = load i32, i32* %ret, align 4
  %conv60 = sext i32 %50 to i64
  %51 = load i64, i64* %n, align 8
  %cmp61 = icmp uge i64 %conv60, %51
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %lor.lhs.false59, %do.body56
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %lor.lhs.false59
  %52 = load i32, i32* %ret, align 4
  %conv65 = sext i32 %52 to i64
  %53 = load i64, i64* %n, align 8
  %sub66 = sub i64 %53, %conv65
  store i64 %sub66, i64* %n, align 8
  %54 = load i32, i32* %ret, align 4
  %conv67 = sext i32 %54 to i64
  %55 = load i8*, i8** %p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %55, i64 %conv67
  store i8* %add.ptr68, i8** %p, align 8
  br label %do.end69

do.end69:                                         ; preds = %if.end64
  %56 = load i8*, i8** %p, align 8
  %57 = load i64, i64* %n, align 8
  %58 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %58, i32 0, i32 8
  %call70 = call i32 @mbedtls_x509_dn_gets(i8* noundef %56, i64 noundef %57, %struct.mbedtls_asn1_named_data* noundef %issuer) #5
  store i32 %call70, i32* %ret, align 4
  br label %do.body71

do.body71:                                        ; preds = %do.end69
  %59 = load i32, i32* %ret, align 4
  %cmp72 = icmp slt i32 %59, 0
  br i1 %cmp72, label %if.then78, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %do.body71
  %60 = load i32, i32* %ret, align 4
  %conv75 = sext i32 %60 to i64
  %61 = load i64, i64* %n, align 8
  %cmp76 = icmp uge i64 %conv75, %61
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %lor.lhs.false74, %do.body71
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %lor.lhs.false74
  %62 = load i32, i32* %ret, align 4
  %conv80 = sext i32 %62 to i64
  %63 = load i64, i64* %n, align 8
  %sub81 = sub i64 %63, %conv80
  store i64 %sub81, i64* %n, align 8
  %64 = load i32, i32* %ret, align 4
  %conv82 = sext i32 %64 to i64
  %65 = load i8*, i8** %p, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %65, i64 %conv82
  store i8* %add.ptr83, i8** %p, align 8
  br label %do.end84

do.end84:                                         ; preds = %if.end79
  %66 = load i8*, i8** %p, align 8
  %67 = load i64, i64* %n, align 8
  %68 = load i8*, i8** %prefix.addr, align 8
  %call85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %66, i64 noundef %67, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* noundef %68) #6
  store i32 %call85, i32* %ret, align 4
  br label %do.body86

do.body86:                                        ; preds = %do.end84
  %69 = load i32, i32* %ret, align 4
  %cmp87 = icmp slt i32 %69, 0
  br i1 %cmp87, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %do.body86
  %70 = load i32, i32* %ret, align 4
  %conv90 = sext i32 %70 to i64
  %71 = load i64, i64* %n, align 8
  %cmp91 = icmp uge i64 %conv90, %71
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false89, %do.body86
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %lor.lhs.false89
  %72 = load i32, i32* %ret, align 4
  %conv95 = sext i32 %72 to i64
  %73 = load i64, i64* %n, align 8
  %sub96 = sub i64 %73, %conv95
  store i64 %sub96, i64* %n, align 8
  %74 = load i32, i32* %ret, align 4
  %conv97 = sext i32 %74 to i64
  %75 = load i8*, i8** %p, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %75, i64 %conv97
  store i8* %add.ptr98, i8** %p, align 8
  br label %do.end99

do.end99:                                         ; preds = %if.end94
  %76 = load i8*, i8** %p, align 8
  %77 = load i64, i64* %n, align 8
  %78 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %78, i32 0, i32 9
  %call100 = call i32 @mbedtls_x509_dn_gets(i8* noundef %76, i64 noundef %77, %struct.mbedtls_asn1_named_data* noundef %subject) #5
  store i32 %call100, i32* %ret, align 4
  br label %do.body101

do.body101:                                       ; preds = %do.end99
  %79 = load i32, i32* %ret, align 4
  %cmp102 = icmp slt i32 %79, 0
  br i1 %cmp102, label %if.then108, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %do.body101
  %80 = load i32, i32* %ret, align 4
  %conv105 = sext i32 %80 to i64
  %81 = load i64, i64* %n, align 8
  %cmp106 = icmp uge i64 %conv105, %81
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %lor.lhs.false104, %do.body101
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end109:                                        ; preds = %lor.lhs.false104
  %82 = load i32, i32* %ret, align 4
  %conv110 = sext i32 %82 to i64
  %83 = load i64, i64* %n, align 8
  %sub111 = sub i64 %83, %conv110
  store i64 %sub111, i64* %n, align 8
  %84 = load i32, i32* %ret, align 4
  %conv112 = sext i32 %84 to i64
  %85 = load i8*, i8** %p, align 8
  %add.ptr113 = getelementptr inbounds i8, i8* %85, i64 %conv112
  store i8* %add.ptr113, i8** %p, align 8
  br label %do.end114

do.end114:                                        ; preds = %if.end109
  %86 = load i8*, i8** %p, align 8
  %87 = load i64, i64* %n, align 8
  %88 = load i8*, i8** %prefix.addr, align 8
  %89 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %89, i32 0, i32 10
  %year = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_from, i32 0, i32 0
  %90 = load i32, i32* %year, align 8
  %91 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from115 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %91, i32 0, i32 10
  %mon = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_from115, i32 0, i32 1
  %92 = load i32, i32* %mon, align 4
  %93 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from116 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %93, i32 0, i32 10
  %day = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_from116, i32 0, i32 2
  %94 = load i32, i32* %day, align 8
  %95 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from117 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %95, i32 0, i32 10
  %hour = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_from117, i32 0, i32 3
  %96 = load i32, i32* %hour, align 4
  %97 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from118 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %97, i32 0, i32 10
  %min = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_from118, i32 0, i32 4
  %98 = load i32, i32* %min, align 8
  %99 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from119 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %99, i32 0, i32 10
  %sec = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_from119, i32 0, i32 5
  %100 = load i32, i32* %sec, align 4
  %call120 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %86, i64 noundef %87, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100) #6
  store i32 %call120, i32* %ret, align 4
  br label %do.body121

do.body121:                                       ; preds = %do.end114
  %101 = load i32, i32* %ret, align 4
  %cmp122 = icmp slt i32 %101, 0
  br i1 %cmp122, label %if.then128, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %do.body121
  %102 = load i32, i32* %ret, align 4
  %conv125 = sext i32 %102 to i64
  %103 = load i64, i64* %n, align 8
  %cmp126 = icmp uge i64 %conv125, %103
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %lor.lhs.false124, %do.body121
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end129:                                        ; preds = %lor.lhs.false124
  %104 = load i32, i32* %ret, align 4
  %conv130 = sext i32 %104 to i64
  %105 = load i64, i64* %n, align 8
  %sub131 = sub i64 %105, %conv130
  store i64 %sub131, i64* %n, align 8
  %106 = load i32, i32* %ret, align 4
  %conv132 = sext i32 %106 to i64
  %107 = load i8*, i8** %p, align 8
  %add.ptr133 = getelementptr inbounds i8, i8* %107, i64 %conv132
  store i8* %add.ptr133, i8** %p, align 8
  br label %do.end134

do.end134:                                        ; preds = %if.end129
  %108 = load i8*, i8** %p, align 8
  %109 = load i64, i64* %n, align 8
  %110 = load i8*, i8** %prefix.addr, align 8
  %111 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %111, i32 0, i32 11
  %year135 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_to, i32 0, i32 0
  %112 = load i32, i32* %year135, align 8
  %113 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to136 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %113, i32 0, i32 11
  %mon137 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_to136, i32 0, i32 1
  %114 = load i32, i32* %mon137, align 4
  %115 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to138 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %115, i32 0, i32 11
  %day139 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_to138, i32 0, i32 2
  %116 = load i32, i32* %day139, align 8
  %117 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to140 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %117, i32 0, i32 11
  %hour141 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_to140, i32 0, i32 3
  %118 = load i32, i32* %hour141, align 4
  %119 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to142 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %119, i32 0, i32 11
  %min143 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_to142, i32 0, i32 4
  %120 = load i32, i32* %min143, align 8
  %121 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to144 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %121, i32 0, i32 11
  %sec145 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %valid_to144, i32 0, i32 5
  %122 = load i32, i32* %sec145, align 4
  %call146 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %108, i64 noundef %109, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122) #6
  store i32 %call146, i32* %ret, align 4
  br label %do.body147

do.body147:                                       ; preds = %do.end134
  %123 = load i32, i32* %ret, align 4
  %cmp148 = icmp slt i32 %123, 0
  br i1 %cmp148, label %if.then154, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %do.body147
  %124 = load i32, i32* %ret, align 4
  %conv151 = sext i32 %124 to i64
  %125 = load i64, i64* %n, align 8
  %cmp152 = icmp uge i64 %conv151, %125
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %lor.lhs.false150, %do.body147
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %lor.lhs.false150
  %126 = load i32, i32* %ret, align 4
  %conv156 = sext i32 %126 to i64
  %127 = load i64, i64* %n, align 8
  %sub157 = sub i64 %127, %conv156
  store i64 %sub157, i64* %n, align 8
  %128 = load i32, i32* %ret, align 4
  %conv158 = sext i32 %128 to i64
  %129 = load i8*, i8** %p, align 8
  %add.ptr159 = getelementptr inbounds i8, i8* %129, i64 %conv158
  store i8* %add.ptr159, i8** %p, align 8
  br label %do.end160

do.end160:                                        ; preds = %if.end155
  %130 = load i8*, i8** %p, align 8
  %131 = load i64, i64* %n, align 8
  %132 = load i8*, i8** %prefix.addr, align 8
  %call161 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %130, i64 noundef %131, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef %132) #6
  store i32 %call161, i32* %ret, align 4
  br label %do.body162

do.body162:                                       ; preds = %do.end160
  %133 = load i32, i32* %ret, align 4
  %cmp163 = icmp slt i32 %133, 0
  br i1 %cmp163, label %if.then169, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %do.body162
  %134 = load i32, i32* %ret, align 4
  %conv166 = sext i32 %134 to i64
  %135 = load i64, i64* %n, align 8
  %cmp167 = icmp uge i64 %conv166, %135
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %lor.lhs.false165, %do.body162
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end170:                                        ; preds = %lor.lhs.false165
  %136 = load i32, i32* %ret, align 4
  %conv171 = sext i32 %136 to i64
  %137 = load i64, i64* %n, align 8
  %sub172 = sub i64 %137, %conv171
  store i64 %sub172, i64* %n, align 8
  %138 = load i32, i32* %ret, align 4
  %conv173 = sext i32 %138 to i64
  %139 = load i8*, i8** %p, align 8
  %add.ptr174 = getelementptr inbounds i8, i8* %139, i64 %conv173
  store i8* %add.ptr174, i8** %p, align 8
  br label %do.end175

do.end175:                                        ; preds = %if.end170
  %140 = load i8*, i8** %p, align 8
  %141 = load i64, i64* %n, align 8
  %142 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_oid = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %142, i32 0, i32 5
  %143 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %143, i32 0, i32 27
  %144 = load i32, i32* %sig_pk, align 4
  %145 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %145, i32 0, i32 26
  %146 = load i32, i32* %sig_md, align 8
  %147 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %147, i32 0, i32 28
  %148 = load i8*, i8** %sig_opts, align 8
  %call176 = call i32 @mbedtls_x509_sig_alg_gets(i8* noundef %140, i64 noundef %141, %struct.mbedtls_asn1_buf* noundef %sig_oid, i32 noundef %144, i32 noundef %146, i8* noundef %148) #5
  store i32 %call176, i32* %ret, align 4
  br label %do.body177

do.body177:                                       ; preds = %do.end175
  %149 = load i32, i32* %ret, align 4
  %cmp178 = icmp slt i32 %149, 0
  br i1 %cmp178, label %if.then184, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %do.body177
  %150 = load i32, i32* %ret, align 4
  %conv181 = sext i32 %150 to i64
  %151 = load i64, i64* %n, align 8
  %cmp182 = icmp uge i64 %conv181, %151
  br i1 %cmp182, label %if.then184, label %if.end185

if.then184:                                       ; preds = %lor.lhs.false180, %do.body177
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end185:                                        ; preds = %lor.lhs.false180
  %152 = load i32, i32* %ret, align 4
  %conv186 = sext i32 %152 to i64
  %153 = load i64, i64* %n, align 8
  %sub187 = sub i64 %153, %conv186
  store i64 %sub187, i64* %n, align 8
  %154 = load i32, i32* %ret, align 4
  %conv188 = sext i32 %154 to i64
  %155 = load i8*, i8** %p, align 8
  %add.ptr189 = getelementptr inbounds i8, i8* %155, i64 %conv188
  store i8* %add.ptr189, i8** %p, align 8
  br label %do.end190

do.end190:                                        ; preds = %if.end185
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %key_size_str, i64 0, i64 0
  %156 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %156, i32 0, i32 13
  %call191 = call i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef %pk) #5
  %call192 = call i32 @mbedtls_x509_key_size_helper(i8* noundef %arraydecay, i64 noundef 18, i8* noundef %call191) #5
  store i32 %call192, i32* %ret, align 4
  %cmp193 = icmp ne i32 %call192, 0
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %do.end190
  %157 = load i32, i32* %ret, align 4
  store i32 %157, i32* %retval, align 4
  br label %return

if.end196:                                        ; preds = %do.end190
  %158 = load i8*, i8** %p, align 8
  %159 = load i64, i64* %n, align 8
  %160 = load i8*, i8** %prefix.addr, align 8
  %arraydecay197 = getelementptr inbounds [18 x i8], [18 x i8]* %key_size_str, i64 0, i64 0
  %161 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk198 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %161, i32 0, i32 13
  %call199 = call i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef %pk198) #5
  %conv200 = trunc i64 %call199 to i32
  %call201 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %158, i64 noundef %159, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* noundef %160, i8* noundef %arraydecay197, i32 noundef %conv200) #6
  store i32 %call201, i32* %ret, align 4
  br label %do.body202

do.body202:                                       ; preds = %if.end196
  %162 = load i32, i32* %ret, align 4
  %cmp203 = icmp slt i32 %162, 0
  br i1 %cmp203, label %if.then209, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %do.body202
  %163 = load i32, i32* %ret, align 4
  %conv206 = sext i32 %163 to i64
  %164 = load i64, i64* %n, align 8
  %cmp207 = icmp uge i64 %conv206, %164
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %lor.lhs.false205, %do.body202
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end210:                                        ; preds = %lor.lhs.false205
  %165 = load i32, i32* %ret, align 4
  %conv211 = sext i32 %165 to i64
  %166 = load i64, i64* %n, align 8
  %sub212 = sub i64 %166, %conv211
  store i64 %sub212, i64* %n, align 8
  %167 = load i32, i32* %ret, align 4
  %conv213 = sext i32 %167 to i64
  %168 = load i8*, i8** %p, align 8
  %add.ptr214 = getelementptr inbounds i8, i8* %168, i64 %conv213
  store i8* %add.ptr214, i8** %p, align 8
  br label %do.end215

do.end215:                                        ; preds = %if.end210
  %169 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %169, i32 0, i32 19
  %170 = load i32, i32* %ext_types, align 8
  %and = and i32 %170, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then216, label %if.end254

if.then216:                                       ; preds = %do.end215
  %171 = load i8*, i8** %p, align 8
  %172 = load i64, i64* %n, align 8
  %173 = load i8*, i8** %prefix.addr, align 8
  %174 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ca_istrue = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %174, i32 0, i32 20
  %175 = load i32, i32* %ca_istrue, align 4
  %tobool217 = icmp ne i32 %175, 0
  %176 = zext i1 %tobool217 to i64
  %cond = select i1 %tobool217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)
  %call218 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %171, i64 noundef %172, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* noundef %173, i8* noundef %cond) #6
  store i32 %call218, i32* %ret, align 4
  br label %do.body219

do.body219:                                       ; preds = %if.then216
  %177 = load i32, i32* %ret, align 4
  %cmp220 = icmp slt i32 %177, 0
  br i1 %cmp220, label %if.then226, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %do.body219
  %178 = load i32, i32* %ret, align 4
  %conv223 = sext i32 %178 to i64
  %179 = load i64, i64* %n, align 8
  %cmp224 = icmp uge i64 %conv223, %179
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %lor.lhs.false222, %do.body219
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end227:                                        ; preds = %lor.lhs.false222
  %180 = load i32, i32* %ret, align 4
  %conv228 = sext i32 %180 to i64
  %181 = load i64, i64* %n, align 8
  %sub229 = sub i64 %181, %conv228
  store i64 %sub229, i64* %n, align 8
  %182 = load i32, i32* %ret, align 4
  %conv230 = sext i32 %182 to i64
  %183 = load i8*, i8** %p, align 8
  %add.ptr231 = getelementptr inbounds i8, i8* %183, i64 %conv230
  store i8* %add.ptr231, i8** %p, align 8
  br label %do.end232

do.end232:                                        ; preds = %if.end227
  %184 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %max_pathlen = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %184, i32 0, i32 21
  %185 = load i32, i32* %max_pathlen, align 8
  %cmp233 = icmp sgt i32 %185, 0
  br i1 %cmp233, label %if.then235, label %if.end253

if.then235:                                       ; preds = %do.end232
  %186 = load i8*, i8** %p, align 8
  %187 = load i64, i64* %n, align 8
  %188 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %max_pathlen236 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %188, i32 0, i32 21
  %189 = load i32, i32* %max_pathlen236, align 8
  %sub237 = sub nsw i32 %189, 1
  %call238 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %186, i64 noundef %187, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 noundef %sub237) #6
  store i32 %call238, i32* %ret, align 4
  br label %do.body239

do.body239:                                       ; preds = %if.then235
  %190 = load i32, i32* %ret, align 4
  %cmp240 = icmp slt i32 %190, 0
  br i1 %cmp240, label %if.then246, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %do.body239
  %191 = load i32, i32* %ret, align 4
  %conv243 = sext i32 %191 to i64
  %192 = load i64, i64* %n, align 8
  %cmp244 = icmp uge i64 %conv243, %192
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %lor.lhs.false242, %do.body239
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end247:                                        ; preds = %lor.lhs.false242
  %193 = load i32, i32* %ret, align 4
  %conv248 = sext i32 %193 to i64
  %194 = load i64, i64* %n, align 8
  %sub249 = sub i64 %194, %conv248
  store i64 %sub249, i64* %n, align 8
  %195 = load i32, i32* %ret, align 4
  %conv250 = sext i32 %195 to i64
  %196 = load i8*, i8** %p, align 8
  %add.ptr251 = getelementptr inbounds i8, i8* %196, i64 %conv250
  store i8* %add.ptr251, i8** %p, align 8
  br label %do.end252

do.end252:                                        ; preds = %if.end247
  br label %if.end253

if.end253:                                        ; preds = %do.end252, %do.end232
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %do.end215
  %197 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types255 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %197, i32 0, i32 19
  %198 = load i32, i32* %ext_types255, align 8
  %and256 = and i32 %198, 32
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %if.then258, label %if.end279

if.then258:                                       ; preds = %if.end254
  %199 = load i8*, i8** %p, align 8
  %200 = load i64, i64* %n, align 8
  %201 = load i8*, i8** %prefix.addr, align 8
  %call259 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %199, i64 noundef %200, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef %201) #6
  store i32 %call259, i32* %ret, align 4
  br label %do.body260

do.body260:                                       ; preds = %if.then258
  %202 = load i32, i32* %ret, align 4
  %cmp261 = icmp slt i32 %202, 0
  br i1 %cmp261, label %if.then267, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %do.body260
  %203 = load i32, i32* %ret, align 4
  %conv264 = sext i32 %203 to i64
  %204 = load i64, i64* %n, align 8
  %cmp265 = icmp uge i64 %conv264, %204
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %lor.lhs.false263, %do.body260
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end268:                                        ; preds = %lor.lhs.false263
  %205 = load i32, i32* %ret, align 4
  %conv269 = sext i32 %205 to i64
  %206 = load i64, i64* %n, align 8
  %sub270 = sub i64 %206, %conv269
  store i64 %sub270, i64* %n, align 8
  %207 = load i32, i32* %ret, align 4
  %conv271 = sext i32 %207 to i64
  %208 = load i8*, i8** %p, align 8
  %add.ptr272 = getelementptr inbounds i8, i8* %208, i64 %conv271
  store i8* %add.ptr272, i8** %p, align 8
  br label %do.end273

do.end273:                                        ; preds = %if.end268
  %209 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_alt_names = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %209, i32 0, i32 17
  %210 = load i8*, i8** %prefix.addr, align 8
  %call274 = call i32 @x509_info_subject_alt_name(i8** noundef %p, i64* noundef %n, %struct.mbedtls_asn1_sequence* noundef %subject_alt_names, i8* noundef %210) #5
  store i32 %call274, i32* %ret, align 4
  %cmp275 = icmp ne i32 %call274, 0
  br i1 %cmp275, label %if.then277, label %if.end278

if.then277:                                       ; preds = %do.end273
  %211 = load i32, i32* %ret, align 4
  store i32 %211, i32* %retval, align 4
  br label %return

if.end278:                                        ; preds = %do.end273
  br label %if.end279

if.end279:                                        ; preds = %if.end278, %if.end254
  %212 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types280 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %212, i32 0, i32 19
  %213 = load i32, i32* %ext_types280, align 8
  %and281 = and i32 %213, 65536
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %if.then283, label %if.end304

if.then283:                                       ; preds = %if.end279
  %214 = load i8*, i8** %p, align 8
  %215 = load i64, i64* %n, align 8
  %216 = load i8*, i8** %prefix.addr, align 8
  %call284 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %214, i64 noundef %215, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef %216) #6
  store i32 %call284, i32* %ret, align 4
  br label %do.body285

do.body285:                                       ; preds = %if.then283
  %217 = load i32, i32* %ret, align 4
  %cmp286 = icmp slt i32 %217, 0
  br i1 %cmp286, label %if.then292, label %lor.lhs.false288

lor.lhs.false288:                                 ; preds = %do.body285
  %218 = load i32, i32* %ret, align 4
  %conv289 = sext i32 %218 to i64
  %219 = load i64, i64* %n, align 8
  %cmp290 = icmp uge i64 %conv289, %219
  br i1 %cmp290, label %if.then292, label %if.end293

if.then292:                                       ; preds = %lor.lhs.false288, %do.body285
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end293:                                        ; preds = %lor.lhs.false288
  %220 = load i32, i32* %ret, align 4
  %conv294 = sext i32 %220 to i64
  %221 = load i64, i64* %n, align 8
  %sub295 = sub i64 %221, %conv294
  store i64 %sub295, i64* %n, align 8
  %222 = load i32, i32* %ret, align 4
  %conv296 = sext i32 %222 to i64
  %223 = load i8*, i8** %p, align 8
  %add.ptr297 = getelementptr inbounds i8, i8* %223, i64 %conv296
  store i8* %add.ptr297, i8** %p, align 8
  br label %do.end298

do.end298:                                        ; preds = %if.end293
  %224 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ns_cert_type = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %224, i32 0, i32 24
  %225 = load i8, i8* %ns_cert_type, align 8
  %call299 = call i32 @x509_info_cert_type(i8** noundef %p, i64* noundef %n, i8 noundef zeroext %225) #5
  store i32 %call299, i32* %ret, align 4
  %cmp300 = icmp ne i32 %call299, 0
  br i1 %cmp300, label %if.then302, label %if.end303

if.then302:                                       ; preds = %do.end298
  %226 = load i32, i32* %ret, align 4
  store i32 %226, i32* %retval, align 4
  br label %return

if.end303:                                        ; preds = %do.end298
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end279
  %227 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types305 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %227, i32 0, i32 19
  %228 = load i32, i32* %ext_types305, align 8
  %and306 = and i32 %228, 4
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %if.then308, label %if.end329

if.then308:                                       ; preds = %if.end304
  %229 = load i8*, i8** %p, align 8
  %230 = load i64, i64* %n, align 8
  %231 = load i8*, i8** %prefix.addr, align 8
  %call309 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %229, i64 noundef %230, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* noundef %231) #6
  store i32 %call309, i32* %ret, align 4
  br label %do.body310

do.body310:                                       ; preds = %if.then308
  %232 = load i32, i32* %ret, align 4
  %cmp311 = icmp slt i32 %232, 0
  br i1 %cmp311, label %if.then317, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %do.body310
  %233 = load i32, i32* %ret, align 4
  %conv314 = sext i32 %233 to i64
  %234 = load i64, i64* %n, align 8
  %cmp315 = icmp uge i64 %conv314, %234
  br i1 %cmp315, label %if.then317, label %if.end318

if.then317:                                       ; preds = %lor.lhs.false313, %do.body310
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end318:                                        ; preds = %lor.lhs.false313
  %235 = load i32, i32* %ret, align 4
  %conv319 = sext i32 %235 to i64
  %236 = load i64, i64* %n, align 8
  %sub320 = sub i64 %236, %conv319
  store i64 %sub320, i64* %n, align 8
  %237 = load i32, i32* %ret, align 4
  %conv321 = sext i32 %237 to i64
  %238 = load i8*, i8** %p, align 8
  %add.ptr322 = getelementptr inbounds i8, i8* %238, i64 %conv321
  store i8* %add.ptr322, i8** %p, align 8
  br label %do.end323

do.end323:                                        ; preds = %if.end318
  %239 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %239, i32 0, i32 22
  %240 = load i32, i32* %key_usage, align 4
  %call324 = call i32 @x509_info_key_usage(i8** noundef %p, i64* noundef %n, i32 noundef %240) #5
  store i32 %call324, i32* %ret, align 4
  %cmp325 = icmp ne i32 %call324, 0
  br i1 %cmp325, label %if.then327, label %if.end328

if.then327:                                       ; preds = %do.end323
  %241 = load i32, i32* %ret, align 4
  store i32 %241, i32* %retval, align 4
  br label %return

if.end328:                                        ; preds = %do.end323
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.end304
  %242 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types330 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %242, i32 0, i32 19
  %243 = load i32, i32* %ext_types330, align 8
  %and331 = and i32 %243, 2048
  %tobool332 = icmp ne i32 %and331, 0
  br i1 %tobool332, label %if.then333, label %if.end354

if.then333:                                       ; preds = %if.end329
  %244 = load i8*, i8** %p, align 8
  %245 = load i64, i64* %n, align 8
  %246 = load i8*, i8** %prefix.addr, align 8
  %call334 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %244, i64 noundef %245, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* noundef %246) #6
  store i32 %call334, i32* %ret, align 4
  br label %do.body335

do.body335:                                       ; preds = %if.then333
  %247 = load i32, i32* %ret, align 4
  %cmp336 = icmp slt i32 %247, 0
  br i1 %cmp336, label %if.then342, label %lor.lhs.false338

lor.lhs.false338:                                 ; preds = %do.body335
  %248 = load i32, i32* %ret, align 4
  %conv339 = sext i32 %248 to i64
  %249 = load i64, i64* %n, align 8
  %cmp340 = icmp uge i64 %conv339, %249
  br i1 %cmp340, label %if.then342, label %if.end343

if.then342:                                       ; preds = %lor.lhs.false338, %do.body335
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end343:                                        ; preds = %lor.lhs.false338
  %250 = load i32, i32* %ret, align 4
  %conv344 = sext i32 %250 to i64
  %251 = load i64, i64* %n, align 8
  %sub345 = sub i64 %251, %conv344
  store i64 %sub345, i64* %n, align 8
  %252 = load i32, i32* %ret, align 4
  %conv346 = sext i32 %252 to i64
  %253 = load i8*, i8** %p, align 8
  %add.ptr347 = getelementptr inbounds i8, i8* %253, i64 %conv346
  store i8* %add.ptr347, i8** %p, align 8
  br label %do.end348

do.end348:                                        ; preds = %if.end343
  %254 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %254, i32 0, i32 23
  %call349 = call i32 @x509_info_ext_key_usage(i8** noundef %p, i64* noundef %n, %struct.mbedtls_asn1_sequence* noundef %ext_key_usage) #5
  store i32 %call349, i32* %ret, align 4
  %cmp350 = icmp ne i32 %call349, 0
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %do.end348
  %255 = load i32, i32* %ret, align 4
  store i32 %255, i32* %retval, align 4
  br label %return

if.end353:                                        ; preds = %do.end348
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.end329
  %256 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types355 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %256, i32 0, i32 19
  %257 = load i32, i32* %ext_types355, align 8
  %and356 = and i32 %257, 8
  %tobool357 = icmp ne i32 %and356, 0
  br i1 %tobool357, label %if.then358, label %if.end379

if.then358:                                       ; preds = %if.end354
  %258 = load i8*, i8** %p, align 8
  %259 = load i64, i64* %n, align 8
  %260 = load i8*, i8** %prefix.addr, align 8
  %call359 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %258, i64 noundef %259, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* noundef %260) #6
  store i32 %call359, i32* %ret, align 4
  br label %do.body360

do.body360:                                       ; preds = %if.then358
  %261 = load i32, i32* %ret, align 4
  %cmp361 = icmp slt i32 %261, 0
  br i1 %cmp361, label %if.then367, label %lor.lhs.false363

lor.lhs.false363:                                 ; preds = %do.body360
  %262 = load i32, i32* %ret, align 4
  %conv364 = sext i32 %262 to i64
  %263 = load i64, i64* %n, align 8
  %cmp365 = icmp uge i64 %conv364, %263
  br i1 %cmp365, label %if.then367, label %if.end368

if.then367:                                       ; preds = %lor.lhs.false363, %do.body360
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end368:                                        ; preds = %lor.lhs.false363
  %264 = load i32, i32* %ret, align 4
  %conv369 = sext i32 %264 to i64
  %265 = load i64, i64* %n, align 8
  %sub370 = sub i64 %265, %conv369
  store i64 %sub370, i64* %n, align 8
  %266 = load i32, i32* %ret, align 4
  %conv371 = sext i32 %266 to i64
  %267 = load i8*, i8** %p, align 8
  %add.ptr372 = getelementptr inbounds i8, i8* %267, i64 %conv371
  store i8* %add.ptr372, i8** %p, align 8
  br label %do.end373

do.end373:                                        ; preds = %if.end368
  %268 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %certificate_policies = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %268, i32 0, i32 18
  %call374 = call i32 @x509_info_cert_policies(i8** noundef %p, i64* noundef %n, %struct.mbedtls_asn1_sequence* noundef %certificate_policies) #5
  store i32 %call374, i32* %ret, align 4
  %cmp375 = icmp ne i32 %call374, 0
  br i1 %cmp375, label %if.then377, label %if.end378

if.then377:                                       ; preds = %do.end373
  %269 = load i32, i32* %ret, align 4
  store i32 %269, i32* %retval, align 4
  br label %return

if.end378:                                        ; preds = %do.end373
  br label %if.end379

if.end379:                                        ; preds = %if.end378, %if.end354
  %270 = load i8*, i8** %p, align 8
  %271 = load i64, i64* %n, align 8
  %call380 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %270, i64 noundef %271, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6
  store i32 %call380, i32* %ret, align 4
  br label %do.body381

do.body381:                                       ; preds = %if.end379
  %272 = load i32, i32* %ret, align 4
  %cmp382 = icmp slt i32 %272, 0
  br i1 %cmp382, label %if.then388, label %lor.lhs.false384

lor.lhs.false384:                                 ; preds = %do.body381
  %273 = load i32, i32* %ret, align 4
  %conv385 = sext i32 %273 to i64
  %274 = load i64, i64* %n, align 8
  %cmp386 = icmp uge i64 %conv385, %274
  br i1 %cmp386, label %if.then388, label %if.end389

if.then388:                                       ; preds = %lor.lhs.false384, %do.body381
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end389:                                        ; preds = %lor.lhs.false384
  %275 = load i32, i32* %ret, align 4
  %conv390 = sext i32 %275 to i64
  %276 = load i64, i64* %n, align 8
  %sub391 = sub i64 %276, %conv390
  store i64 %sub391, i64* %n, align 8
  %277 = load i32, i32* %ret, align 4
  %conv392 = sext i32 %277 to i64
  %278 = load i8*, i8** %p, align 8
  %add.ptr393 = getelementptr inbounds i8, i8* %278, i64 %conv392
  store i8* %add.ptr393, i8** %p, align 8
  br label %do.end394

do.end394:                                        ; preds = %if.end389
  %279 = load i64, i64* %size.addr, align 8
  %280 = load i64, i64* %n, align 8
  %sub395 = sub i64 %279, %280
  %conv396 = trunc i64 %sub395 to i32
  store i32 %conv396, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end394, %if.then388, %if.then377, %if.then367, %if.then352, %if.then342, %if.then327, %if.then317, %if.then302, %if.then292, %if.then277, %if.then267, %if.then246, %if.then226, %if.then209, %if.then195, %if.then184, %if.then169, %if.then154, %if.then128, %if.then108, %if.then93, %if.then78, %if.then63, %if.then48, %if.then33, %if.then18, %do.end, %if.then4
  %281 = load i32, i32* %retval, align 4
  ret i32 %281
}

declare dso_local i32 @mbedtls_x509_serial_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_x509_dn_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_x509_sig_alg_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_buf* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_key_size_helper(i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_subject_alt_name(i8** noundef %buf, i64* noundef %size, %struct.mbedtls_asn1_sequence* noundef %subject_alt_name, i8* noundef %prefix) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %subject_alt_name.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %prefix.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %san = alloca %struct.mbedtls_x509_subject_alternative_name, align 8
  %parse_ret = alloca i32, align 4
  %other_name = alloca %struct.mbedtls_x509_san_other_name*, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store %struct.mbedtls_asn1_sequence* %subject_alt_name, %struct.mbedtls_asn1_sequence** %subject_alt_name.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64*, i64** %size.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %p, align 8
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %subject_alt_name.addr, align 8
  store %struct.mbedtls_asn1_sequence* %4, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end28, %entry
  %5 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_sequence* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = bitcast %struct.mbedtls_x509_subject_alternative_name* %san to i8*
  %call = call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef 80) #6
  %7 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf1 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %7, i32 0, i32 0
  %call2 = call i32 @mbedtls_x509_parse_subject_alt_name(%struct.mbedtls_asn1_buf* noundef %buf1, %struct.mbedtls_x509_subject_alternative_name* noundef %san) #5
  store i32 %call2, i32* %parse_ret, align 4
  %8 = load i32, i32* %parse_ret, align 4
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then, label %if.end29

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %parse_ret, align 4
  %cmp4 = icmp eq i32 %9, -8320
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %10 = load i8*, i8** %p, align 8
  %11 = load i64, i64* %n, align 8
  %12 = load i8*, i8** %prefix.addr, align 8
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %10, i64 noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* noundef %12) #6
  store i32 %call6, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then5
  %13 = load i32, i32* %ret, align 4
  %cmp7 = icmp slt i32 %13, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %14 = load i32, i32* %ret, align 4
  %conv = sext i32 %14 to i64
  %15 = load i64, i64* %n, align 8
  %cmp8 = icmp uge i64 %conv, %15
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32, i32* %ret, align 4
  %conv11 = sext i32 %16 to i64
  %17 = load i64, i64* %n, align 8
  %sub = sub i64 %17, %conv11
  store i64 %sub, i64* %n, align 8
  %18 = load i32, i32* %ret, align 4
  %conv12 = sext i32 %18 to i64
  %19 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %conv12
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end28

if.else:                                          ; preds = %if.then
  %20 = load i8*, i8** %p, align 8
  %21 = load i64, i64* %n, align 8
  %22 = load i8*, i8** %prefix.addr, align 8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %20, i64 noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* noundef %22) #6
  store i32 %call13, i32* %ret, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.else
  %23 = load i32, i32* %ret, align 4
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %do.body14
  %24 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %24 to i64
  %25 = load i64, i64* %n, align 8
  %cmp19 = icmp uge i64 %conv18, %25
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false17, %do.body14
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false17
  %26 = load i32, i32* %ret, align 4
  %conv23 = sext i32 %26 to i64
  %27 = load i64, i64* %n, align 8
  %sub24 = sub i64 %27, %conv23
  store i64 %sub24, i64* %n, align 8
  %28 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %28 to i64
  %29 = load i8*, i8** %p, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %29, i64 %conv25
  store i8* %add.ptr26, i8** %p, align 8
  br label %do.end27

do.end27:                                         ; preds = %if.end22
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %do.end
  %30 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %30, i32 0, i32 1
  %31 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %31, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %while.cond, !llvm.loop !8

if.end29:                                         ; preds = %while.body
  %type = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 0
  %32 = load i32, i32* %type, align 8
  switch i32 %32, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb153
  ]

sw.bb:                                            ; preds = %if.end29
  %san30 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 1
  %other_name31 = bitcast %union.anon* %san30 to %struct.mbedtls_x509_san_other_name*
  store %struct.mbedtls_x509_san_other_name* %other_name31, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %33 = load i8*, i8** %p, align 8
  %34 = load i64, i64* %n, align 8
  %35 = load i8*, i8** %prefix.addr, align 8
  %call32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %33, i64 noundef %34, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* noundef %35) #6
  store i32 %call32, i32* %ret, align 4
  br label %do.body33

do.body33:                                        ; preds = %sw.bb
  %36 = load i32, i32* %ret, align 4
  %cmp34 = icmp slt i32 %36, 0
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %do.body33
  %37 = load i32, i32* %ret, align 4
  %conv37 = sext i32 %37 to i64
  %38 = load i64, i64* %n, align 8
  %cmp38 = icmp uge i64 %conv37, %38
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false36, %do.body33
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %lor.lhs.false36
  %39 = load i32, i32* %ret, align 4
  %conv42 = sext i32 %39 to i64
  %40 = load i64, i64* %n, align 8
  %sub43 = sub i64 %40, %conv42
  store i64 %sub43, i64* %n, align 8
  %41 = load i32, i32* %ret, align 4
  %conv44 = sext i32 %41 to i64
  %42 = load i8*, i8** %p, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %42, i64 %conv44
  store i8* %add.ptr45, i8** %p, align 8
  br label %do.end46

do.end46:                                         ; preds = %if.end41
  %43 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %43, i32 0, i32 1
  %hardware_module_name = bitcast %union.anon.0* %value to %struct.anon*
  %oid = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 1
  %44 = load i64, i64* %len, align 8
  %cmp47 = icmp ne i64 8, %44
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end46
  %45 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value49 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %45, i32 0, i32 1
  %hardware_module_name50 = bitcast %union.anon.0* %value49 to %struct.anon*
  %oid51 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name50, i32 0, i32 0
  %p52 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid51, i32 0, i32 2
  %46 = load i8*, i8** %p52, align 8
  %47 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value53 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %47, i32 0, i32 1
  %hardware_module_name54 = bitcast %union.anon.0* %value53 to %struct.anon*
  %oid55 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name54, i32 0, i32 0
  %len56 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid55, i32 0, i32 1
  %48 = load i64, i64* %len56, align 8
  %call57 = call i32 @memcmp(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* noundef %46, i64 noundef %48) #7
  %cmp58 = icmp ne i32 %call57, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end46
  %49 = phi i1 [ true, %do.end46 ], [ %cmp58, %lor.rhs ]
  %lor.ext = zext i1 %49 to i32
  %cmp60 = icmp ne i32 %lor.ext, 0
  br i1 %cmp60, label %if.then62, label %if.end152

if.then62:                                        ; preds = %lor.end
  %50 = load i8*, i8** %p, align 8
  %51 = load i64, i64* %n, align 8
  %52 = load i8*, i8** %prefix.addr, align 8
  %call63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %50, i64 noundef %51, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i8* noundef %52) #6
  store i32 %call63, i32* %ret, align 4
  br label %do.body64

do.body64:                                        ; preds = %if.then62
  %53 = load i32, i32* %ret, align 4
  %cmp65 = icmp slt i32 %53, 0
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %do.body64
  %54 = load i32, i32* %ret, align 4
  %conv68 = sext i32 %54 to i64
  %55 = load i64, i64* %n, align 8
  %cmp69 = icmp uge i64 %conv68, %55
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %lor.lhs.false67, %do.body64
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %lor.lhs.false67
  %56 = load i32, i32* %ret, align 4
  %conv73 = sext i32 %56 to i64
  %57 = load i64, i64* %n, align 8
  %sub74 = sub i64 %57, %conv73
  store i64 %sub74, i64* %n, align 8
  %58 = load i32, i32* %ret, align 4
  %conv75 = sext i32 %58 to i64
  %59 = load i8*, i8** %p, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %59, i64 %conv75
  store i8* %add.ptr76, i8** %p, align 8
  br label %do.end77

do.end77:                                         ; preds = %if.end72
  %60 = load i8*, i8** %p, align 8
  %61 = load i64, i64* %n, align 8
  %62 = load i8*, i8** %prefix.addr, align 8
  %call78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %60, i64 noundef %61, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0), i8* noundef %62) #6
  store i32 %call78, i32* %ret, align 4
  br label %do.body79

do.body79:                                        ; preds = %do.end77
  %63 = load i32, i32* %ret, align 4
  %cmp80 = icmp slt i32 %63, 0
  br i1 %cmp80, label %if.then86, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %do.body79
  %64 = load i32, i32* %ret, align 4
  %conv83 = sext i32 %64 to i64
  %65 = load i64, i64* %n, align 8
  %cmp84 = icmp uge i64 %conv83, %65
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false82, %do.body79
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %lor.lhs.false82
  %66 = load i32, i32* %ret, align 4
  %conv88 = sext i32 %66 to i64
  %67 = load i64, i64* %n, align 8
  %sub89 = sub i64 %67, %conv88
  store i64 %sub89, i64* %n, align 8
  %68 = load i32, i32* %ret, align 4
  %conv90 = sext i32 %68 to i64
  %69 = load i8*, i8** %p, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %69, i64 %conv90
  store i8* %add.ptr91, i8** %p, align 8
  br label %do.end92

do.end92:                                         ; preds = %if.end87
  %70 = load i8*, i8** %p, align 8
  %71 = load i64, i64* %n, align 8
  %72 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value93 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %72, i32 0, i32 1
  %hardware_module_name94 = bitcast %union.anon.0* %value93 to %struct.anon*
  %oid95 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name94, i32 0, i32 0
  %call96 = call i32 @mbedtls_oid_get_numeric_string(i8* noundef %70, i64 noundef %71, %struct.mbedtls_asn1_buf* noundef %oid95) #5
  store i32 %call96, i32* %ret, align 4
  br label %do.body97

do.body97:                                        ; preds = %do.end92
  %73 = load i32, i32* %ret, align 4
  %cmp98 = icmp slt i32 %73, 0
  br i1 %cmp98, label %if.then104, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %do.body97
  %74 = load i32, i32* %ret, align 4
  %conv101 = sext i32 %74 to i64
  %75 = load i64, i64* %n, align 8
  %cmp102 = icmp uge i64 %conv101, %75
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %lor.lhs.false100, %do.body97
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %lor.lhs.false100
  %76 = load i32, i32* %ret, align 4
  %conv106 = sext i32 %76 to i64
  %77 = load i64, i64* %n, align 8
  %sub107 = sub i64 %77, %conv106
  store i64 %sub107, i64* %n, align 8
  %78 = load i32, i32* %ret, align 4
  %conv108 = sext i32 %78 to i64
  %79 = load i8*, i8** %p, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %79, i64 %conv108
  store i8* %add.ptr109, i8** %p, align 8
  br label %do.end110

do.end110:                                        ; preds = %if.end105
  %80 = load i8*, i8** %p, align 8
  %81 = load i64, i64* %n, align 8
  %82 = load i8*, i8** %prefix.addr, align 8
  %call111 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %80, i64 noundef %81, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0), i8* noundef %82) #6
  store i32 %call111, i32* %ret, align 4
  br label %do.body112

do.body112:                                       ; preds = %do.end110
  %83 = load i32, i32* %ret, align 4
  %cmp113 = icmp slt i32 %83, 0
  br i1 %cmp113, label %if.then119, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %do.body112
  %84 = load i32, i32* %ret, align 4
  %conv116 = sext i32 %84 to i64
  %85 = load i64, i64* %n, align 8
  %cmp117 = icmp uge i64 %conv116, %85
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %lor.lhs.false115, %do.body112
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end120:                                        ; preds = %lor.lhs.false115
  %86 = load i32, i32* %ret, align 4
  %conv121 = sext i32 %86 to i64
  %87 = load i64, i64* %n, align 8
  %sub122 = sub i64 %87, %conv121
  store i64 %sub122, i64* %n, align 8
  %88 = load i32, i32* %ret, align 4
  %conv123 = sext i32 %88 to i64
  %89 = load i8*, i8** %p, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %89, i64 %conv123
  store i8* %add.ptr124, i8** %p, align 8
  br label %do.end125

do.end125:                                        ; preds = %if.end120
  %90 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value126 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %90, i32 0, i32 1
  %hardware_module_name127 = bitcast %union.anon.0* %value126 to %struct.anon*
  %val = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name127, i32 0, i32 1
  %len128 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 1
  %91 = load i64, i64* %len128, align 8
  %92 = load i64, i64* %n, align 8
  %cmp129 = icmp uge i64 %91, %92
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %do.end125
  %93 = load i8*, i8** %p, align 8
  store i8 0, i8* %93, align 1
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end132:                                        ; preds = %do.end125
  %94 = load i8*, i8** %p, align 8
  %95 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value133 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %95, i32 0, i32 1
  %hardware_module_name134 = bitcast %union.anon.0* %value133 to %struct.anon*
  %val135 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name134, i32 0, i32 1
  %p136 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val135, i32 0, i32 2
  %96 = load i8*, i8** %p136, align 8
  %97 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value137 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %97, i32 0, i32 1
  %hardware_module_name138 = bitcast %union.anon.0* %value137 to %struct.anon*
  %val139 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name138, i32 0, i32 1
  %len140 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val139, i32 0, i32 1
  %98 = load i64, i64* %len140, align 8
  %call141 = call i8* @memcpy(i8* noundef %94, i8* noundef %96, i64 noundef %98) #6
  %99 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value142 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %99, i32 0, i32 1
  %hardware_module_name143 = bitcast %union.anon.0* %value142 to %struct.anon*
  %val144 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name143, i32 0, i32 1
  %len145 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val144, i32 0, i32 1
  %100 = load i64, i64* %len145, align 8
  %101 = load i8*, i8** %p, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8* %add.ptr146, i8** %p, align 8
  %102 = load %struct.mbedtls_x509_san_other_name*, %struct.mbedtls_x509_san_other_name** %other_name, align 8
  %value147 = getelementptr inbounds %struct.mbedtls_x509_san_other_name, %struct.mbedtls_x509_san_other_name* %102, i32 0, i32 1
  %hardware_module_name148 = bitcast %union.anon.0* %value147 to %struct.anon*
  %val149 = getelementptr inbounds %struct.anon, %struct.anon* %hardware_module_name148, i32 0, i32 1
  %len150 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val149, i32 0, i32 1
  %103 = load i64, i64* %len150, align 8
  %104 = load i64, i64* %n, align 8
  %sub151 = sub i64 %104, %103
  store i64 %sub151, i64* %n, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.end132, %lor.end
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end29
  %105 = load i8*, i8** %p, align 8
  %106 = load i64, i64* %n, align 8
  %107 = load i8*, i8** %prefix.addr, align 8
  %call154 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %105, i64 noundef %106, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef %107) #6
  store i32 %call154, i32* %ret, align 4
  br label %do.body155

do.body155:                                       ; preds = %sw.bb153
  %108 = load i32, i32* %ret, align 4
  %cmp156 = icmp slt i32 %108, 0
  br i1 %cmp156, label %if.then162, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %do.body155
  %109 = load i32, i32* %ret, align 4
  %conv159 = sext i32 %109 to i64
  %110 = load i64, i64* %n, align 8
  %cmp160 = icmp uge i64 %conv159, %110
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %lor.lhs.false158, %do.body155
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end163:                                        ; preds = %lor.lhs.false158
  %111 = load i32, i32* %ret, align 4
  %conv164 = sext i32 %111 to i64
  %112 = load i64, i64* %n, align 8
  %sub165 = sub i64 %112, %conv164
  store i64 %sub165, i64* %n, align 8
  %113 = load i32, i32* %ret, align 4
  %conv166 = sext i32 %113 to i64
  %114 = load i8*, i8** %p, align 8
  %add.ptr167 = getelementptr inbounds i8, i8* %114, i64 %conv166
  store i8* %add.ptr167, i8** %p, align 8
  br label %do.end168

do.end168:                                        ; preds = %if.end163
  %san169 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 1
  %unstructured_name = bitcast %union.anon* %san169 to %struct.mbedtls_asn1_buf*
  %len170 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %unstructured_name, i32 0, i32 1
  %115 = load i64, i64* %len170, align 8
  %116 = load i64, i64* %n, align 8
  %cmp171 = icmp uge i64 %115, %116
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %do.end168
  %117 = load i8*, i8** %p, align 8
  store i8 0, i8* %117, align 1
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end174:                                        ; preds = %do.end168
  %118 = load i8*, i8** %p, align 8
  %san175 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 1
  %unstructured_name176 = bitcast %union.anon* %san175 to %struct.mbedtls_asn1_buf*
  %p177 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %unstructured_name176, i32 0, i32 2
  %119 = load i8*, i8** %p177, align 8
  %san178 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 1
  %unstructured_name179 = bitcast %union.anon* %san178 to %struct.mbedtls_asn1_buf*
  %len180 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %unstructured_name179, i32 0, i32 1
  %120 = load i64, i64* %len180, align 8
  %call181 = call i8* @memcpy(i8* noundef %118, i8* noundef %119, i64 noundef %120) #6
  %san182 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 1
  %unstructured_name183 = bitcast %union.anon* %san182 to %struct.mbedtls_asn1_buf*
  %len184 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %unstructured_name183, i32 0, i32 1
  %121 = load i64, i64* %len184, align 8
  %122 = load i8*, i8** %p, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %122, i64 %121
  store i8* %add.ptr185, i8** %p, align 8
  %san186 = getelementptr inbounds %struct.mbedtls_x509_subject_alternative_name, %struct.mbedtls_x509_subject_alternative_name* %san, i32 0, i32 1
  %unstructured_name187 = bitcast %union.anon* %san186 to %struct.mbedtls_asn1_buf*
  %len188 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %unstructured_name187, i32 0, i32 1
  %123 = load i64, i64* %len188, align 8
  %124 = load i64, i64* %n, align 8
  %sub189 = sub i64 %124, %123
  store i64 %sub189, i64* %n, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end29
  %125 = load i8*, i8** %p, align 8
  %126 = load i64, i64* %n, align 8
  %127 = load i8*, i8** %prefix.addr, align 8
  %call190 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %125, i64 noundef %126, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* noundef %127) #6
  store i32 %call190, i32* %ret, align 4
  br label %do.body191

do.body191:                                       ; preds = %sw.default
  %128 = load i32, i32* %ret, align 4
  %cmp192 = icmp slt i32 %128, 0
  br i1 %cmp192, label %if.then198, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %do.body191
  %129 = load i32, i32* %ret, align 4
  %conv195 = sext i32 %129 to i64
  %130 = load i64, i64* %n, align 8
  %cmp196 = icmp uge i64 %conv195, %130
  br i1 %cmp196, label %if.then198, label %if.end199

if.then198:                                       ; preds = %lor.lhs.false194, %do.body191
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end199:                                        ; preds = %lor.lhs.false194
  %131 = load i32, i32* %ret, align 4
  %conv200 = sext i32 %131 to i64
  %132 = load i64, i64* %n, align 8
  %sub201 = sub i64 %132, %conv200
  store i64 %sub201, i64* %n, align 8
  %133 = load i32, i32* %ret, align 4
  %conv202 = sext i32 %133 to i64
  %134 = load i8*, i8** %p, align 8
  %add.ptr203 = getelementptr inbounds i8, i8* %134, i64 %conv202
  store i8* %add.ptr203, i8** %p, align 8
  br label %do.end204

do.end204:                                        ; preds = %if.end199
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end204, %if.end174, %if.end152
  %135 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next205 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %135, i32 0, i32 1
  %136 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next205, align 8
  store %struct.mbedtls_asn1_sequence* %136, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %137 = load i8*, i8** %p, align 8
  store i8 0, i8* %137, align 1
  %138 = load i64, i64* %n, align 8
  %139 = load i64*, i64** %size.addr, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i8*, i8** %p, align 8
  %141 = load i8**, i8*** %buf.addr, align 8
  store i8* %140, i8** %141, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then198, %if.then173, %if.then162, %if.then131, %if.then119, %if.then104, %if.then86, %if.then71, %if.then40, %if.then21, %if.then10
  %142 = load i32, i32* %retval, align 4
  ret i32 %142
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_cert_type(i8** noundef %buf, i64* noundef %size, i8 noundef zeroext %ns_cert_type) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %ns_cert_type.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %sep = alloca i8*, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store i8 %ns_cert_type, i8* %ns_cert_type.addr, align 1
  store i32 -110, i32* %ret, align 4
  %0 = load i64*, i64** %size.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %p, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), i8** %sep, align 8
  %4 = load i8, i8* %ns_cert_type.addr, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %n, align 8
  %7 = load i8*, i8** %sep, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8* noundef %7) #6
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %9 = load i32, i32* %ret, align 4
  %conv2 = sext i32 %9 to i64
  %10 = load i64, i64* %n, align 8
  %cmp3 = icmp uge i64 %conv2, %10
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %ret, align 4
  %conv6 = sext i32 %11 to i64
  %12 = load i64, i64* %n, align 8
  %sub = sub i64 %12, %conv6
  store i64 %sub, i64* %n, align 8
  %13 = load i32, i32* %ret, align 4
  %conv7 = sext i32 %13 to i64
  %14 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %conv7
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry
  %15 = load i8, i8* %ns_cert_type.addr, align 1
  %conv9 = zext i8 %15 to i32
  %and10 = and i32 %conv9, 64
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end28

if.then12:                                        ; preds = %if.end8
  %16 = load i8*, i8** %p, align 8
  %17 = load i64, i64* %n, align 8
  %18 = load i8*, i8** %sep, align 8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %16, i64 noundef %17, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* noundef %18) #6
  store i32 %call13, i32* %ret, align 4
  br label %do.body14

do.body14:                                        ; preds = %if.then12
  %19 = load i32, i32* %ret, align 4
  %cmp15 = icmp slt i32 %19, 0
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %do.body14
  %20 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %20 to i64
  %21 = load i64, i64* %n, align 8
  %cmp19 = icmp uge i64 %conv18, %21
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false17, %do.body14
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false17
  %22 = load i32, i32* %ret, align 4
  %conv23 = sext i32 %22 to i64
  %23 = load i64, i64* %n, align 8
  %sub24 = sub i64 %23, %conv23
  store i64 %sub24, i64* %n, align 8
  %24 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %24 to i64
  %25 = load i8*, i8** %p, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %25, i64 %conv25
  store i8* %add.ptr26, i8** %p, align 8
  br label %do.end27

do.end27:                                         ; preds = %if.end22
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %if.end8
  %26 = load i8, i8* %ns_cert_type.addr, align 1
  %conv29 = zext i8 %26 to i32
  %and30 = and i32 %conv29, 32
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end48

if.then32:                                        ; preds = %if.end28
  %27 = load i8*, i8** %p, align 8
  %28 = load i64, i64* %n, align 8
  %29 = load i8*, i8** %sep, align 8
  %call33 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %27, i64 noundef %28, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* noundef %29) #6
  store i32 %call33, i32* %ret, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.then32
  %30 = load i32, i32* %ret, align 4
  %cmp35 = icmp slt i32 %30, 0
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %do.body34
  %31 = load i32, i32* %ret, align 4
  %conv38 = sext i32 %31 to i64
  %32 = load i64, i64* %n, align 8
  %cmp39 = icmp uge i64 %conv38, %32
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false37, %do.body34
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %lor.lhs.false37
  %33 = load i32, i32* %ret, align 4
  %conv43 = sext i32 %33 to i64
  %34 = load i64, i64* %n, align 8
  %sub44 = sub i64 %34, %conv43
  store i64 %sub44, i64* %n, align 8
  %35 = load i32, i32* %ret, align 4
  %conv45 = sext i32 %35 to i64
  %36 = load i8*, i8** %p, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %36, i64 %conv45
  store i8* %add.ptr46, i8** %p, align 8
  br label %do.end47

do.end47:                                         ; preds = %if.end42
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end28
  %37 = load i8, i8* %ns_cert_type.addr, align 1
  %conv49 = zext i8 %37 to i32
  %and50 = and i32 %conv49, 16
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then52, label %if.end68

if.then52:                                        ; preds = %if.end48
  %38 = load i8*, i8** %p, align 8
  %39 = load i64, i64* %n, align 8
  %40 = load i8*, i8** %sep, align 8
  %call53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %38, i64 noundef %39, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i8* noundef %40) #6
  store i32 %call53, i32* %ret, align 4
  br label %do.body54

do.body54:                                        ; preds = %if.then52
  %41 = load i32, i32* %ret, align 4
  %cmp55 = icmp slt i32 %41, 0
  br i1 %cmp55, label %if.then61, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %do.body54
  %42 = load i32, i32* %ret, align 4
  %conv58 = sext i32 %42 to i64
  %43 = load i64, i64* %n, align 8
  %cmp59 = icmp uge i64 %conv58, %43
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false57, %do.body54
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %lor.lhs.false57
  %44 = load i32, i32* %ret, align 4
  %conv63 = sext i32 %44 to i64
  %45 = load i64, i64* %n, align 8
  %sub64 = sub i64 %45, %conv63
  store i64 %sub64, i64* %n, align 8
  %46 = load i32, i32* %ret, align 4
  %conv65 = sext i32 %46 to i64
  %47 = load i8*, i8** %p, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %47, i64 %conv65
  store i8* %add.ptr66, i8** %p, align 8
  br label %do.end67

do.end67:                                         ; preds = %if.end62
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end48
  %48 = load i8, i8* %ns_cert_type.addr, align 1
  %conv69 = zext i8 %48 to i32
  %and70 = and i32 %conv69, 8
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end88

if.then72:                                        ; preds = %if.end68
  %49 = load i8*, i8** %p, align 8
  %50 = load i64, i64* %n, align 8
  %51 = load i8*, i8** %sep, align 8
  %call73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %49, i64 noundef %50, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* noundef %51) #6
  store i32 %call73, i32* %ret, align 4
  br label %do.body74

do.body74:                                        ; preds = %if.then72
  %52 = load i32, i32* %ret, align 4
  %cmp75 = icmp slt i32 %52, 0
  br i1 %cmp75, label %if.then81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %do.body74
  %53 = load i32, i32* %ret, align 4
  %conv78 = sext i32 %53 to i64
  %54 = load i64, i64* %n, align 8
  %cmp79 = icmp uge i64 %conv78, %54
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %lor.lhs.false77, %do.body74
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %lor.lhs.false77
  %55 = load i32, i32* %ret, align 4
  %conv83 = sext i32 %55 to i64
  %56 = load i64, i64* %n, align 8
  %sub84 = sub i64 %56, %conv83
  store i64 %sub84, i64* %n, align 8
  %57 = load i32, i32* %ret, align 4
  %conv85 = sext i32 %57 to i64
  %58 = load i8*, i8** %p, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %58, i64 %conv85
  store i8* %add.ptr86, i8** %p, align 8
  br label %do.end87

do.end87:                                         ; preds = %if.end82
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %if.end68
  %59 = load i8, i8* %ns_cert_type.addr, align 1
  %conv89 = zext i8 %59 to i32
  %and90 = and i32 %conv89, 4
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.end108

if.then92:                                        ; preds = %if.end88
  %60 = load i8*, i8** %p, align 8
  %61 = load i64, i64* %n, align 8
  %62 = load i8*, i8** %sep, align 8
  %call93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %60, i64 noundef %61, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8* noundef %62) #6
  store i32 %call93, i32* %ret, align 4
  br label %do.body94

do.body94:                                        ; preds = %if.then92
  %63 = load i32, i32* %ret, align 4
  %cmp95 = icmp slt i32 %63, 0
  br i1 %cmp95, label %if.then101, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %do.body94
  %64 = load i32, i32* %ret, align 4
  %conv98 = sext i32 %64 to i64
  %65 = load i64, i64* %n, align 8
  %cmp99 = icmp uge i64 %conv98, %65
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %lor.lhs.false97, %do.body94
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end102:                                        ; preds = %lor.lhs.false97
  %66 = load i32, i32* %ret, align 4
  %conv103 = sext i32 %66 to i64
  %67 = load i64, i64* %n, align 8
  %sub104 = sub i64 %67, %conv103
  store i64 %sub104, i64* %n, align 8
  %68 = load i32, i32* %ret, align 4
  %conv105 = sext i32 %68 to i64
  %69 = load i8*, i8** %p, align 8
  %add.ptr106 = getelementptr inbounds i8, i8* %69, i64 %conv105
  store i8* %add.ptr106, i8** %p, align 8
  br label %do.end107

do.end107:                                        ; preds = %if.end102
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.end88
  %70 = load i8, i8* %ns_cert_type.addr, align 1
  %conv109 = zext i8 %70 to i32
  %and110 = and i32 %conv109, 2
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then112, label %if.end128

if.then112:                                       ; preds = %if.end108
  %71 = load i8*, i8** %p, align 8
  %72 = load i64, i64* %n, align 8
  %73 = load i8*, i8** %sep, align 8
  %call113 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %71, i64 noundef %72, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* noundef %73) #6
  store i32 %call113, i32* %ret, align 4
  br label %do.body114

do.body114:                                       ; preds = %if.then112
  %74 = load i32, i32* %ret, align 4
  %cmp115 = icmp slt i32 %74, 0
  br i1 %cmp115, label %if.then121, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %do.body114
  %75 = load i32, i32* %ret, align 4
  %conv118 = sext i32 %75 to i64
  %76 = load i64, i64* %n, align 8
  %cmp119 = icmp uge i64 %conv118, %76
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %lor.lhs.false117, %do.body114
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %lor.lhs.false117
  %77 = load i32, i32* %ret, align 4
  %conv123 = sext i32 %77 to i64
  %78 = load i64, i64* %n, align 8
  %sub124 = sub i64 %78, %conv123
  store i64 %sub124, i64* %n, align 8
  %79 = load i32, i32* %ret, align 4
  %conv125 = sext i32 %79 to i64
  %80 = load i8*, i8** %p, align 8
  %add.ptr126 = getelementptr inbounds i8, i8* %80, i64 %conv125
  store i8* %add.ptr126, i8** %p, align 8
  br label %do.end127

do.end127:                                        ; preds = %if.end122
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end128

if.end128:                                        ; preds = %do.end127, %if.end108
  %81 = load i8, i8* %ns_cert_type.addr, align 1
  %conv129 = zext i8 %81 to i32
  %and130 = and i32 %conv129, 1
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then132, label %if.end148

if.then132:                                       ; preds = %if.end128
  %82 = load i8*, i8** %p, align 8
  %83 = load i64, i64* %n, align 8
  %84 = load i8*, i8** %sep, align 8
  %call133 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %82, i64 noundef %83, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i8* noundef %84) #6
  store i32 %call133, i32* %ret, align 4
  br label %do.body134

do.body134:                                       ; preds = %if.then132
  %85 = load i32, i32* %ret, align 4
  %cmp135 = icmp slt i32 %85, 0
  br i1 %cmp135, label %if.then141, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %do.body134
  %86 = load i32, i32* %ret, align 4
  %conv138 = sext i32 %86 to i64
  %87 = load i64, i64* %n, align 8
  %cmp139 = icmp uge i64 %conv138, %87
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %lor.lhs.false137, %do.body134
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end142:                                        ; preds = %lor.lhs.false137
  %88 = load i32, i32* %ret, align 4
  %conv143 = sext i32 %88 to i64
  %89 = load i64, i64* %n, align 8
  %sub144 = sub i64 %89, %conv143
  store i64 %sub144, i64* %n, align 8
  %90 = load i32, i32* %ret, align 4
  %conv145 = sext i32 %90 to i64
  %91 = load i8*, i8** %p, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %91, i64 %conv145
  store i8* %add.ptr146, i8** %p, align 8
  br label %do.end147

do.end147:                                        ; preds = %if.end142
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end148

if.end148:                                        ; preds = %do.end147, %if.end128
  %92 = load i64, i64* %n, align 8
  %93 = load i64*, i64** %size.addr, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i8*, i8** %p, align 8
  %95 = load i8**, i8*** %buf.addr, align 8
  store i8* %94, i8** %95, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end148, %if.then141, %if.then121, %if.then101, %if.then81, %if.then61, %if.then41, %if.then21, %if.then5
  %96 = load i32, i32* %retval, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_key_usage(i8** noundef %buf, i64* noundef %size, i32 noundef %key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %key_usage.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %sep = alloca i8*, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store i32 %key_usage, i32* %key_usage.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i64*, i64** %size.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %p, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), i8** %sep, align 8
  %4 = load i32, i32* %key_usage.addr, align 4
  %and = and i32 %4, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %n, align 8
  %7 = load i8*, i8** %sep, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %5, i64 noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i8* noundef %7) #6
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %9 = load i32, i32* %ret, align 4
  %conv = sext i32 %9 to i64
  %10 = load i64, i64* %n, align 8
  %cmp1 = icmp uge i64 %conv, %10
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %ret, align 4
  %conv4 = sext i32 %11 to i64
  %12 = load i64, i64* %n, align 8
  %sub = sub i64 %12, %conv4
  store i64 %sub, i64* %n, align 8
  %13 = load i32, i32* %ret, align 4
  %conv5 = sext i32 %13 to i64
  %14 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %conv5
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry
  %15 = load i32, i32* %key_usage.addr, align 4
  %and7 = and i32 %15, 64
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.end25

if.then9:                                         ; preds = %if.end6
  %16 = load i8*, i8** %p, align 8
  %17 = load i64, i64* %n, align 8
  %18 = load i8*, i8** %sep, align 8
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %16, i64 noundef %17, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8* noundef %18) #6
  store i32 %call10, i32* %ret, align 4
  br label %do.body11

do.body11:                                        ; preds = %if.then9
  %19 = load i32, i32* %ret, align 4
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %do.body11
  %20 = load i32, i32* %ret, align 4
  %conv15 = sext i32 %20 to i64
  %21 = load i64, i64* %n, align 8
  %cmp16 = icmp uge i64 %conv15, %21
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %do.body11
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false14
  %22 = load i32, i32* %ret, align 4
  %conv20 = sext i32 %22 to i64
  %23 = load i64, i64* %n, align 8
  %sub21 = sub i64 %23, %conv20
  store i64 %sub21, i64* %n, align 8
  %24 = load i32, i32* %ret, align 4
  %conv22 = sext i32 %24 to i64
  %25 = load i8*, i8** %p, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %25, i64 %conv22
  store i8* %add.ptr23, i8** %p, align 8
  br label %do.end24

do.end24:                                         ; preds = %if.end19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end6
  %26 = load i32, i32* %key_usage.addr, align 4
  %and26 = and i32 %26, 32
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end44

if.then28:                                        ; preds = %if.end25
  %27 = load i8*, i8** %p, align 8
  %28 = load i64, i64* %n, align 8
  %29 = load i8*, i8** %sep, align 8
  %call29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %27, i64 noundef %28, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i8* noundef %29) #6
  store i32 %call29, i32* %ret, align 4
  br label %do.body30

do.body30:                                        ; preds = %if.then28
  %30 = load i32, i32* %ret, align 4
  %cmp31 = icmp slt i32 %30, 0
  br i1 %cmp31, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %do.body30
  %31 = load i32, i32* %ret, align 4
  %conv34 = sext i32 %31 to i64
  %32 = load i64, i64* %n, align 8
  %cmp35 = icmp uge i64 %conv34, %32
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false33, %do.body30
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %lor.lhs.false33
  %33 = load i32, i32* %ret, align 4
  %conv39 = sext i32 %33 to i64
  %34 = load i64, i64* %n, align 8
  %sub40 = sub i64 %34, %conv39
  store i64 %sub40, i64* %n, align 8
  %35 = load i32, i32* %ret, align 4
  %conv41 = sext i32 %35 to i64
  %36 = load i8*, i8** %p, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %36, i64 %conv41
  store i8* %add.ptr42, i8** %p, align 8
  br label %do.end43

do.end43:                                         ; preds = %if.end38
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.end25
  %37 = load i32, i32* %key_usage.addr, align 4
  %and45 = and i32 %37, 16
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end63

if.then47:                                        ; preds = %if.end44
  %38 = load i8*, i8** %p, align 8
  %39 = load i64, i64* %n, align 8
  %40 = load i8*, i8** %sep, align 8
  %call48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %38, i64 noundef %39, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0), i8* noundef %40) #6
  store i32 %call48, i32* %ret, align 4
  br label %do.body49

do.body49:                                        ; preds = %if.then47
  %41 = load i32, i32* %ret, align 4
  %cmp50 = icmp slt i32 %41, 0
  br i1 %cmp50, label %if.then56, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %do.body49
  %42 = load i32, i32* %ret, align 4
  %conv53 = sext i32 %42 to i64
  %43 = load i64, i64* %n, align 8
  %cmp54 = icmp uge i64 %conv53, %43
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %lor.lhs.false52, %do.body49
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %lor.lhs.false52
  %44 = load i32, i32* %ret, align 4
  %conv58 = sext i32 %44 to i64
  %45 = load i64, i64* %n, align 8
  %sub59 = sub i64 %45, %conv58
  store i64 %sub59, i64* %n, align 8
  %46 = load i32, i32* %ret, align 4
  %conv60 = sext i32 %46 to i64
  %47 = load i8*, i8** %p, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %47, i64 %conv60
  store i8* %add.ptr61, i8** %p, align 8
  br label %do.end62

do.end62:                                         ; preds = %if.end57
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %if.end44
  %48 = load i32, i32* %key_usage.addr, align 4
  %and64 = and i32 %48, 8
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end82

if.then66:                                        ; preds = %if.end63
  %49 = load i8*, i8** %p, align 8
  %50 = load i64, i64* %n, align 8
  %51 = load i8*, i8** %sep, align 8
  %call67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %49, i64 noundef %50, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8* noundef %51) #6
  store i32 %call67, i32* %ret, align 4
  br label %do.body68

do.body68:                                        ; preds = %if.then66
  %52 = load i32, i32* %ret, align 4
  %cmp69 = icmp slt i32 %52, 0
  br i1 %cmp69, label %if.then75, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %do.body68
  %53 = load i32, i32* %ret, align 4
  %conv72 = sext i32 %53 to i64
  %54 = load i64, i64* %n, align 8
  %cmp73 = icmp uge i64 %conv72, %54
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %lor.lhs.false71, %do.body68
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %lor.lhs.false71
  %55 = load i32, i32* %ret, align 4
  %conv77 = sext i32 %55 to i64
  %56 = load i64, i64* %n, align 8
  %sub78 = sub i64 %56, %conv77
  store i64 %sub78, i64* %n, align 8
  %57 = load i32, i32* %ret, align 4
  %conv79 = sext i32 %57 to i64
  %58 = load i8*, i8** %p, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %58, i64 %conv79
  store i8* %add.ptr80, i8** %p, align 8
  br label %do.end81

do.end81:                                         ; preds = %if.end76
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.end63
  %59 = load i32, i32* %key_usage.addr, align 4
  %and83 = and i32 %59, 4
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end101

if.then85:                                        ; preds = %if.end82
  %60 = load i8*, i8** %p, align 8
  %61 = load i64, i64* %n, align 8
  %62 = load i8*, i8** %sep, align 8
  %call86 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %60, i64 noundef %61, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i8* noundef %62) #6
  store i32 %call86, i32* %ret, align 4
  br label %do.body87

do.body87:                                        ; preds = %if.then85
  %63 = load i32, i32* %ret, align 4
  %cmp88 = icmp slt i32 %63, 0
  br i1 %cmp88, label %if.then94, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %do.body87
  %64 = load i32, i32* %ret, align 4
  %conv91 = sext i32 %64 to i64
  %65 = load i64, i64* %n, align 8
  %cmp92 = icmp uge i64 %conv91, %65
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %lor.lhs.false90, %do.body87
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end95:                                         ; preds = %lor.lhs.false90
  %66 = load i32, i32* %ret, align 4
  %conv96 = sext i32 %66 to i64
  %67 = load i64, i64* %n, align 8
  %sub97 = sub i64 %67, %conv96
  store i64 %sub97, i64* %n, align 8
  %68 = load i32, i32* %ret, align 4
  %conv98 = sext i32 %68 to i64
  %69 = load i8*, i8** %p, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %69, i64 %conv98
  store i8* %add.ptr99, i8** %p, align 8
  br label %do.end100

do.end100:                                        ; preds = %if.end95
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end101

if.end101:                                        ; preds = %do.end100, %if.end82
  %70 = load i32, i32* %key_usage.addr, align 4
  %and102 = and i32 %70, 2
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.then104, label %if.end120

if.then104:                                       ; preds = %if.end101
  %71 = load i8*, i8** %p, align 8
  %72 = load i64, i64* %n, align 8
  %73 = load i8*, i8** %sep, align 8
  %call105 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %71, i64 noundef %72, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i8* noundef %73) #6
  store i32 %call105, i32* %ret, align 4
  br label %do.body106

do.body106:                                       ; preds = %if.then104
  %74 = load i32, i32* %ret, align 4
  %cmp107 = icmp slt i32 %74, 0
  br i1 %cmp107, label %if.then113, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %do.body106
  %75 = load i32, i32* %ret, align 4
  %conv110 = sext i32 %75 to i64
  %76 = load i64, i64* %n, align 8
  %cmp111 = icmp uge i64 %conv110, %76
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %lor.lhs.false109, %do.body106
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end114:                                        ; preds = %lor.lhs.false109
  %77 = load i32, i32* %ret, align 4
  %conv115 = sext i32 %77 to i64
  %78 = load i64, i64* %n, align 8
  %sub116 = sub i64 %78, %conv115
  store i64 %sub116, i64* %n, align 8
  %79 = load i32, i32* %ret, align 4
  %conv117 = sext i32 %79 to i64
  %80 = load i8*, i8** %p, align 8
  %add.ptr118 = getelementptr inbounds i8, i8* %80, i64 %conv117
  store i8* %add.ptr118, i8** %p, align 8
  br label %do.end119

do.end119:                                        ; preds = %if.end114
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end120

if.end120:                                        ; preds = %do.end119, %if.end101
  %81 = load i32, i32* %key_usage.addr, align 4
  %and121 = and i32 %81, 1
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then123, label %if.end139

if.then123:                                       ; preds = %if.end120
  %82 = load i8*, i8** %p, align 8
  %83 = load i64, i64* %n, align 8
  %84 = load i8*, i8** %sep, align 8
  %call124 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %82, i64 noundef %83, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i8* noundef %84) #6
  store i32 %call124, i32* %ret, align 4
  br label %do.body125

do.body125:                                       ; preds = %if.then123
  %85 = load i32, i32* %ret, align 4
  %cmp126 = icmp slt i32 %85, 0
  br i1 %cmp126, label %if.then132, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %do.body125
  %86 = load i32, i32* %ret, align 4
  %conv129 = sext i32 %86 to i64
  %87 = load i64, i64* %n, align 8
  %cmp130 = icmp uge i64 %conv129, %87
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %lor.lhs.false128, %do.body125
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end133:                                        ; preds = %lor.lhs.false128
  %88 = load i32, i32* %ret, align 4
  %conv134 = sext i32 %88 to i64
  %89 = load i64, i64* %n, align 8
  %sub135 = sub i64 %89, %conv134
  store i64 %sub135, i64* %n, align 8
  %90 = load i32, i32* %ret, align 4
  %conv136 = sext i32 %90 to i64
  %91 = load i8*, i8** %p, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %91, i64 %conv136
  store i8* %add.ptr137, i8** %p, align 8
  br label %do.end138

do.end138:                                        ; preds = %if.end133
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end139

if.end139:                                        ; preds = %do.end138, %if.end120
  %92 = load i32, i32* %key_usage.addr, align 4
  %and140 = and i32 %92, 32768
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %if.then142, label %if.end158

if.then142:                                       ; preds = %if.end139
  %93 = load i8*, i8** %p, align 8
  %94 = load i64, i64* %n, align 8
  %95 = load i8*, i8** %sep, align 8
  %call143 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %93, i64 noundef %94, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* noundef %95) #6
  store i32 %call143, i32* %ret, align 4
  br label %do.body144

do.body144:                                       ; preds = %if.then142
  %96 = load i32, i32* %ret, align 4
  %cmp145 = icmp slt i32 %96, 0
  br i1 %cmp145, label %if.then151, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %do.body144
  %97 = load i32, i32* %ret, align 4
  %conv148 = sext i32 %97 to i64
  %98 = load i64, i64* %n, align 8
  %cmp149 = icmp uge i64 %conv148, %98
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %lor.lhs.false147, %do.body144
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end152:                                        ; preds = %lor.lhs.false147
  %99 = load i32, i32* %ret, align 4
  %conv153 = sext i32 %99 to i64
  %100 = load i64, i64* %n, align 8
  %sub154 = sub i64 %100, %conv153
  store i64 %sub154, i64* %n, align 8
  %101 = load i32, i32* %ret, align 4
  %conv155 = sext i32 %101 to i64
  %102 = load i8*, i8** %p, align 8
  %add.ptr156 = getelementptr inbounds i8, i8* %102, i64 %conv155
  store i8* %add.ptr156, i8** %p, align 8
  br label %do.end157

do.end157:                                        ; preds = %if.end152
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  br label %if.end158

if.end158:                                        ; preds = %do.end157, %if.end139
  %103 = load i64, i64* %n, align 8
  %104 = load i64*, i64** %size.addr, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i8*, i8** %p, align 8
  %106 = load i8**, i8*** %buf.addr, align 8
  store i8* %105, i8** %106, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end158, %if.then151, %if.then132, %if.then113, %if.then94, %if.then75, %if.then56, %if.then37, %if.then18, %if.then3
  %107 = load i32, i32* %retval, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_ext_key_usage(i8** noundef %buf, i64* noundef %size, %struct.mbedtls_asn1_sequence* noundef %extended_key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %extended_key_usage.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %ret = alloca i32, align 4
  %desc = alloca i8*, align 8
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %sep = alloca i8*, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store %struct.mbedtls_asn1_sequence* %extended_key_usage, %struct.mbedtls_asn1_sequence** %extended_key_usage.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64*, i64** %size.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %p, align 8
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %extended_key_usage.addr, align 8
  store %struct.mbedtls_asn1_sequence* %4, %struct.mbedtls_asn1_sequence** %cur, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), i8** %sep, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %5 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_sequence* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf1 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %6, i32 0, i32 0
  %call = call i32 @mbedtls_oid_get_extended_key_usage(%struct.mbedtls_asn1_buf* noundef %buf1, i8** noundef %desc) #5
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8** %desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %n, align 8
  %9 = load i8*, i8** %sep, align 8
  %10 = load i8*, i8** %desc, align 8
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %7, i64 noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef %9, i8* noundef %10) #6
  store i32 %call3, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load i32, i32* %ret, align 4
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %12 = load i32, i32* %ret, align 4
  %conv = sext i32 %12 to i64
  %13 = load i64, i64* %n, align 8
  %cmp5 = icmp uge i64 %conv, %13
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %ret, align 4
  %conv9 = sext i32 %14 to i64
  %15 = load i64, i64* %n, align 8
  %sub = sub i64 %15, %conv9
  store i64 %sub, i64* %n, align 8
  %16 = load i32, i32* %ret, align 4
  %conv10 = sext i32 %16 to i64
  %17 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %conv10
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  %18 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %18, i32 0, i32 1
  %19 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %19, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %20 = load i64, i64* %n, align 8
  %21 = load i64*, i64** %size.addr, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load i8**, i8*** %buf.addr, align 8
  store i8* %22, i8** %23, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then7
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_info_cert_policies(i8** noundef %buf, i64* noundef %size, %struct.mbedtls_asn1_sequence* noundef %certificate_policies) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8**, align 8
  %size.addr = alloca i64*, align 8
  %certificate_policies.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %ret = alloca i32, align 4
  %desc = alloca i8*, align 8
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %sep = alloca i8*, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store %struct.mbedtls_asn1_sequence* %certificate_policies, %struct.mbedtls_asn1_sequence** %certificate_policies.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64*, i64** %size.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8**, i8*** %buf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %p, align 8
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %certificate_policies.addr, align 8
  store %struct.mbedtls_asn1_sequence* %4, %struct.mbedtls_asn1_sequence** %cur, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i64 0, i64 0), i8** %sep, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %5 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_sequence* %5, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf1 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %6, i32 0, i32 0
  %call = call i32 @mbedtls_oid_get_certificate_policies(%struct.mbedtls_asn1_buf* noundef %buf1, i8** noundef %desc) #5
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8** %desc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %n, align 8
  %9 = load i8*, i8** %sep, align 8
  %10 = load i8*, i8** %desc, align 8
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %7, i64 noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* noundef %9, i8* noundef %10) #6
  store i32 %call3, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load i32, i32* %ret, align 4
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %12 = load i32, i32* %ret, align 4
  %conv = sext i32 %12 to i64
  %13 = load i64, i64* %n, align 8
  %cmp5 = icmp uge i64 %conv, %13
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %ret, align 4
  %conv9 = sext i32 %14 to i64
  %15 = load i64, i64* %n, align 8
  %sub = sub i64 %15, %conv9
  store i64 %sub, i64* %n, align 8
  %16 = load i32, i32* %ret, align 4
  %conv10 = sext i32 %16 to i64
  %17 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %conv10
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8** %sep, align 8
  %18 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %18, i32 0, i32 1
  %19 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %19, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %20 = load i64, i64* %n, align 8
  %21 = load i64*, i64** %size.addr, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load i8**, i8*** %buf.addr, align 8
  store i8* %22, i8** %23, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then7
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_verify_info(i8* noundef %buf, i64 noundef %size, i8* noundef %prefix, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cur = alloca %struct.x509_crt_verify_string*, align 8
  %p = alloca i8*, align 8
  %n = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  store %struct.x509_crt_verify_string* getelementptr inbounds ([21 x %struct.x509_crt_verify_string], [21 x %struct.x509_crt_verify_string]* @x509_crt_verify_strings, i64 0, i64 0), %struct.x509_crt_verify_string** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %cur, align 8
  %string = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %2, i32 0, i32 1
  %3 = load i8*, i8** %string, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %flags.addr, align 4
  %5 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %cur, align 8
  %code = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %5, i32 0, i32 0
  %6 = load i32, i32* %code, align 8
  %and = and i32 %4, %6
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %n, align 8
  %9 = load i8*, i8** %prefix.addr, align 8
  %10 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %cur, align 8
  %string2 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %10, i32 0, i32 1
  %11 = load i8*, i8** %string2, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %7, i64 noundef %8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* noundef %9, i8* noundef %11) #6
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %13 = load i32, i32* %ret, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, i64* %n, align 8
  %cmp4 = icmp uge i64 %conv, %14
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %15 = load i32, i32* %ret, align 4
  %conv8 = sext i32 %15 to i64
  %16 = load i64, i64* %n, align 8
  %sub = sub i64 %16, %conv8
  store i64 %sub, i64* %n, align 8
  %17 = load i32, i32* %ret, align 4
  %conv9 = sext i32 %17 to i64
  %18 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %conv9
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end7
  %19 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %cur, align 8
  %code10 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %19, i32 0, i32 0
  %20 = load i32, i32* %code10, align 8
  %21 = load i32, i32* %flags.addr, align 4
  %xor = xor i32 %21, %20
  store i32 %xor, i32* %flags.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then
  %22 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %22, i32 1
  store %struct.x509_crt_verify_string* %incdec.ptr, %struct.x509_crt_verify_string** %cur, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %flags.addr, align 4
  %cmp11 = icmp ne i32 %23, 0
  br i1 %cmp11, label %if.then13, label %if.end29

if.then13:                                        ; preds = %for.end
  %24 = load i8*, i8** %p, align 8
  %25 = load i64, i64* %n, align 8
  %26 = load i8*, i8** %prefix.addr, align 8
  %call14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %24, i64 noundef %25, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8* noundef %26) #6
  store i32 %call14, i32* %ret, align 4
  br label %do.body15

do.body15:                                        ; preds = %if.then13
  %27 = load i32, i32* %ret, align 4
  %cmp16 = icmp slt i32 %27, 0
  br i1 %cmp16, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %do.body15
  %28 = load i32, i32* %ret, align 4
  %conv19 = sext i32 %28 to i64
  %29 = load i64, i64* %n, align 8
  %cmp20 = icmp uge i64 %conv19, %29
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false18, %do.body15
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %lor.lhs.false18
  %30 = load i32, i32* %ret, align 4
  %conv24 = sext i32 %30 to i64
  %31 = load i64, i64* %n, align 8
  %sub25 = sub i64 %31, %conv24
  store i64 %sub25, i64* %n, align 8
  %32 = load i32, i32* %ret, align 4
  %conv26 = sext i32 %32 to i64
  %33 = load i8*, i8** %p, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %33, i64 %conv26
  store i8* %add.ptr27, i8** %p, align 8
  br label %do.end28

do.end28:                                         ; preds = %if.end23
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %for.end
  %34 = load i64, i64* %size.addr, align 8
  %35 = load i64, i64* %n, align 8
  %sub30 = sub i64 %34, %35
  %conv31 = trunc i64 %sub30 to i32
  store i32 %conv31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then22, %if.then6
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_check_key_usage(%struct.mbedtls_x509_crt* noundef %crt, i32 noundef %usage) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %usage.addr = alloca i32, align 4
  %usage_must = alloca i32, align 4
  %usage_may = alloca i32, align 4
  %may_mask = alloca i32, align 4
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i32 %usage, i32* %usage.addr, align 4
  store i32 32769, i32* %may_mask, align 4
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %0, i32 0, i32 19
  %1 = load i32, i32* %ext_types, align 8
  %and = and i32 %1, 4
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %usage.addr, align 4
  %3 = load i32, i32* %may_mask, align 4
  %neg = xor i32 %3, -1
  %and1 = and i32 %2, %neg
  store i32 %and1, i32* %usage_must, align 4
  %4 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %4, i32 0, i32 22
  %5 = load i32, i32* %key_usage, align 4
  %6 = load i32, i32* %may_mask, align 4
  %neg2 = xor i32 %6, -1
  %and3 = and i32 %5, %neg2
  %7 = load i32, i32* %usage_must, align 4
  %and4 = and i32 %and3, %7
  %8 = load i32, i32* %usage_must, align 4
  %cmp5 = icmp ne i32 %and4, %8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load i32, i32* %usage.addr, align 4
  %10 = load i32, i32* %may_mask, align 4
  %and8 = and i32 %9, %10
  store i32 %and8, i32* %usage_may, align 4
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %key_usage9 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %11, i32 0, i32 22
  %12 = load i32, i32* %key_usage9, align 4
  %13 = load i32, i32* %may_mask, align 4
  %and10 = and i32 %12, %13
  %14 = load i32, i32* %usage_may, align 4
  %or = or i32 %and10, %14
  %15 = load i32, i32* %usage_may, align 4
  %cmp11 = icmp ne i32 %or, %15
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then6, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_check_extended_key_usage(%struct.mbedtls_x509_crt* noundef %crt, i8* noundef %usage_oid, i64 noundef %usage_len) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %usage_oid.addr = alloca i8*, align 8
  %usage_len.addr = alloca i64, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %cur_oid = alloca %struct.mbedtls_asn1_buf*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i8* %usage_oid, i8** %usage_oid.addr, align 8
  store i64 %usage_len, i64* %usage_len.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %0, i32 0, i32 19
  %1 = load i32, i32* %ext_types, align 8
  %and = and i32 %1, 2048
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %2, i32 0, i32 23
  store %struct.mbedtls_asn1_sequence* %ext_key_usage, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %cmp1 = icmp ne %struct.mbedtls_asn1_sequence* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %4, i32 0, i32 0
  store %struct.mbedtls_asn1_buf* %buf, %struct.mbedtls_asn1_buf** %cur_oid, align 8
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %cur_oid, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %7 = load i64, i64* %usage_len.addr, align 8
  %cmp2 = icmp eq i64 %6, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %cur_oid, align 8
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 2
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %usage_oid.addr, align 8
  %11 = load i64, i64* %usage_len.addr, align 8
  %call = call i32 @memcmp(i8* noundef %9, i8* noundef %10, i64 noundef %11) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %for.body
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %cur_oid, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 1
  %13 = load i64, i64* %len6, align 8
  %cmp7 = icmp ne i64 4, %13
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end5
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %cur_oid, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 2
  %15 = load i8*, i8** %p8, align 8
  %16 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %cur_oid, align 8
  %len9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %16, i32 0, i32 1
  %17 = load i64, i64* %len9, align 8
  %call10 = call i32 @memcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* noundef %15, i64 noundef %17) #7
  %cmp11 = icmp ne i32 %call10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end5
  %18 = phi i1 [ true, %if.end5 ], [ %cmp11, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32
  %cmp12 = icmp eq i32 %lor.ext, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %19 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %19, i32 0, i32 1
  %20 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %20, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 -10240, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then13, %if.then4, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_is_revoked(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crl* noundef %crl) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %cur = alloca %struct.mbedtls_x509_crl_entry*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crl* %crl, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %0 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %entry1 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %0, i32 0, i32 8
  store %struct.mbedtls_x509_crl_entry* %entry1, %struct.mbedtls_x509_crl_entry** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_x509_crl_entry* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %2, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %serial, i32 0, i32 1
  %3 = load i64, i64* %len, align 8
  %cmp2 = icmp ne i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %serial3 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %5, i32 0, i32 4
  %len4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %serial3, i32 0, i32 1
  %6 = load i64, i64* %len4, align 8
  %7 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur, align 8
  %serial5 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %7, i32 0, i32 1
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %serial5, i32 0, i32 1
  %8 = load i64, i64* %len6, align 8
  %cmp7 = icmp eq i64 %6, %8
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %serial8 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %9, i32 0, i32 4
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %serial8, i32 0, i32 2
  %10 = load i8*, i8** %p, align 8
  %11 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur, align 8
  %serial9 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %11, i32 0, i32 1
  %p10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %serial9, i32 0, i32 2
  %12 = load i8*, i8** %p10, align 8
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %serial11 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %13, i32 0, i32 4
  %len12 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %serial11, i32 0, i32 1
  %14 = load i64, i64* %len12, align 8
  %call = call i32 @memcmp(i8* noundef %10, i8* noundef %12, i64 noundef %14) #7
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %15 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %15, i32 0, i32 4
  %16 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %next, align 8
  store %struct.mbedtls_x509_crl_entry* %16, %struct.mbedtls_x509_crl_entry** %cur, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_verify(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %trust_ca, %struct.mbedtls_x509_crl* noundef %ca_crl, i8* noundef %cn, i32* noundef %flags, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy) #0 {
entry:
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %cn.addr = alloca i8*, align 8
  %flags.addr = alloca i32*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %3 = load i8*, i8** %cn.addr, align 8
  %4 = load i32*, i32** %flags.addr, align 8
  %5 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %6 = load i8*, i8** %p_vrfy.addr, align 8
  %call = call i32 @x509_crt_verify_restartable_ca_cb(%struct.mbedtls_x509_crt* noundef %0, %struct.mbedtls_x509_crt* noundef %1, %struct.mbedtls_x509_crl* noundef %2, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* noundef null, i8* noundef null, %struct.mbedtls_x509_crt_profile* noundef @mbedtls_x509_crt_profile_default, i8* noundef %3, i32* noundef %4, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %5, i8* noundef %6, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_verify_restartable_ca_cb(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %trust_ca, %struct.mbedtls_x509_crl* noundef %ca_crl, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* noundef %f_ca_cb, i8* noundef %p_ca_cb, %struct.mbedtls_x509_crt_profile* noundef %profile, i8* noundef %cn, i32* noundef %flags, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %f_ca_cb.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)*, align 8
  %p_ca_cb.addr = alloca i8*, align 8
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %cn.addr = alloca i8*, align 8
  %flags.addr = alloca i32*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %pk_type = alloca i32, align 4
  %ver_chain = alloca %struct.mbedtls_x509_crt_verify_chain, align 8
  %ee_flags = alloca i32, align 4
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* %f_ca_cb, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)** %f_ca_cb.addr, align 8
  store i8* %p_ca_cb, i8** %p_ca_cb.addr, align 8
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32*, i32** %flags.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 0, i32* %ee_flags, align 4
  call void @x509_crt_verify_chain_reset(%struct.mbedtls_x509_crt_verify_chain* noundef %ver_chain) #5
  %1 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt_profile* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10240, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %cn.addr, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %4 = load i8*, i8** %cn.addr, align 8
  call void @x509_crt_verify_name(%struct.mbedtls_x509_crt* noundef %3, i8* noundef %4, i32* noundef %ee_flags) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %5, i32 0, i32 13
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  store i32 %call, i32* %pk_type, align 4
  %6 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %7 = load i32, i32* %pk_type, align 4
  %call4 = call i32 @x509_profile_check_pk_alg(%struct.mbedtls_x509_crt_profile* noundef %6, i32 noundef %7) #5
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %8 = load i32, i32* %ee_flags, align 4
  %or = or i32 %8, 32768
  store i32 %or, i32* %ee_flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3
  %9 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk8 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %10, i32 0, i32 13
  %call9 = call i32 @x509_profile_check_key(%struct.mbedtls_x509_crt_profile* noundef %9, %struct.mbedtls_pk_context* noundef %pk8) #5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %11 = load i32, i32* %ee_flags, align 4
  %or12 = or i32 %11, 65536
  store i32 %or12, i32* %ee_flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %12 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  %14 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %15 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)** %f_ca_cb.addr, align 8
  %16 = load i8*, i8** %p_ca_cb.addr, align 8
  %17 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %18 = load i8*, i8** %rs_ctx.addr, align 8
  %call14 = call i32 @x509_crt_verify_chain(%struct.mbedtls_x509_crt* noundef %12, %struct.mbedtls_x509_crt* noundef %13, %struct.mbedtls_x509_crl* noundef %14, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* noundef %15, i8* noundef %16, %struct.mbedtls_x509_crt_profile* noundef %17, %struct.mbedtls_x509_crt_verify_chain* noundef %ver_chain, i8* noundef %18) #5
  store i32 %call14, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %exit

if.end17:                                         ; preds = %if.end13
  %20 = load i32, i32* %ee_flags, align 4
  %items = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %ver_chain, i32 0, i32 0
  %arrayidx = getelementptr inbounds [10 x %struct.mbedtls_x509_crt_verify_chain_item], [10 x %struct.mbedtls_x509_crt_verify_chain_item]* %items, i64 0, i64 0
  %flags18 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %arrayidx, i32 0, i32 1
  %21 = load i32, i32* %flags18, align 8
  %or19 = or i32 %21, %20
  store i32 %or19, i32* %flags18, align 8
  %22 = load i32*, i32** %flags.addr, align 8
  %23 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %24 = load i8*, i8** %p_vrfy.addr, align 8
  %call20 = call i32 @x509_crt_merge_flags_with_cb(i32* noundef %22, %struct.mbedtls_x509_crt_verify_chain* noundef %ver_chain, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %23, i8* noundef %24) #5
  store i32 %call20, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end17, %if.then16, %if.then
  %25 = load i32, i32* %ret, align 4
  %cmp21 = icmp eq i32 %25, -9984
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %exit
  store i32 -12288, i32* %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %exit
  %26 = load i32, i32* %ret, align 4
  %cmp24 = icmp ne i32 %26, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  %27 = load i32*, i32** %flags.addr, align 8
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end23
  %29 = load i32*, i32** %flags.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp27 = icmp ne i32 %30, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  store i32 -9984, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end26
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.then25
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_verify_with_profile(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %trust_ca, %struct.mbedtls_x509_crl* noundef %ca_crl, %struct.mbedtls_x509_crt_profile* noundef %profile, i8* noundef %cn, i32* noundef %flags, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy) #0 {
entry:
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %cn.addr = alloca i8*, align 8
  %flags.addr = alloca i32*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %3 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %4 = load i8*, i8** %cn.addr, align 8
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %7 = load i8*, i8** %p_vrfy.addr, align 8
  %call = call i32 @x509_crt_verify_restartable_ca_cb(%struct.mbedtls_x509_crt* noundef %0, %struct.mbedtls_x509_crt* noundef %1, %struct.mbedtls_x509_crl* noundef %2, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* noundef null, i8* noundef null, %struct.mbedtls_x509_crt_profile* noundef %3, i8* noundef %4, i32* noundef %5, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %6, i8* noundef %7, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_verify_restartable(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %trust_ca, %struct.mbedtls_x509_crl* noundef %ca_crl, %struct.mbedtls_x509_crt_profile* noundef %profile, i8* noundef %cn, i32* noundef %flags, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy, i8* noundef %rs_ctx) #0 {
entry:
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %cn.addr = alloca i8*, align 8
  %flags.addr = alloca i32*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %3 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %4 = load i8*, i8** %cn.addr, align 8
  %5 = load i32*, i32** %flags.addr, align 8
  %6 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %7 = load i8*, i8** %p_vrfy.addr, align 8
  %8 = load i8*, i8** %rs_ctx.addr, align 8
  %call = call i32 @x509_crt_verify_restartable_ca_cb(%struct.mbedtls_x509_crt* noundef %0, %struct.mbedtls_x509_crt* noundef %1, %struct.mbedtls_x509_crl* noundef %2, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* noundef null, i8* noundef null, %struct.mbedtls_x509_crt_profile* noundef %3, i8* noundef %4, i32* noundef %5, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %6, i8* noundef %7, i8* noundef %8) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_crt_init(%struct.mbedtls_x509_crt* noundef %crt) #0 {
entry:
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %1 = bitcast %struct.mbedtls_x509_crt* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 616) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %crt) #0 {
entry:
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %cert_cur = alloca %struct.mbedtls_x509_crt*, align 8
  %cert_prv = alloca %struct.mbedtls_x509_crt*, align 8
  %name_cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  %name_prv = alloca %struct.mbedtls_asn1_named_data*, align 8
  %seq_cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %seq_prv = alloca %struct.mbedtls_asn1_sequence*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end44

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %2, i32 0, i32 13
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #5
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %3, i32 0, i32 28
  %4 = load i8*, i8** %sig_opts, align 8
  call void @free(i8* noundef %4) #6
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %5, i32 0, i32 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %issuer, i32 0, i32 2
  %6 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %6, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %7 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %cmp1 = icmp ne %struct.mbedtls_asn1_named_data* %7, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  store %struct.mbedtls_asn1_named_data* %8, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %next2 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %9, i32 0, i32 2
  %10 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next2, align 8
  store %struct.mbedtls_asn1_named_data* %10, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %11 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %12 = bitcast %struct.mbedtls_asn1_named_data* %11 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %12, i64 noundef 64) #5
  %13 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %14 = bitcast %struct.mbedtls_asn1_named_data* %13 to i8*
  call void @free(i8* noundef %14) #6
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %15, i32 0, i32 9
  %next3 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %subject, i32 0, i32 2
  %16 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next3, align 8
  store %struct.mbedtls_asn1_named_data* %16, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %17 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %cmp5 = icmp ne %struct.mbedtls_asn1_named_data* %17, null
  br i1 %cmp5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %18 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  store %struct.mbedtls_asn1_named_data* %18, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %19 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %next7 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %19, i32 0, i32 2
  %20 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next7, align 8
  store %struct.mbedtls_asn1_named_data* %20, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %21 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %22 = bitcast %struct.mbedtls_asn1_named_data* %21 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %22, i64 noundef 64) #5
  %23 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %24 = bitcast %struct.mbedtls_asn1_named_data* %23 to i8*
  call void @free(i8* noundef %24) #6
  br label %while.cond4, !llvm.loop !15

while.end8:                                       ; preds = %while.cond4
  %25 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %ext_key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %25, i32 0, i32 23
  %next9 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %ext_key_usage, i32 0, i32 1
  %26 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next9, align 8
  store %struct.mbedtls_asn1_sequence* %26, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  br label %while.cond10

while.cond10:                                     ; preds = %while.body12, %while.end8
  %27 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %cmp11 = icmp ne %struct.mbedtls_asn1_sequence* %27, null
  br i1 %cmp11, label %while.body12, label %while.end14

while.body12:                                     ; preds = %while.cond10
  %28 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  store %struct.mbedtls_asn1_sequence* %28, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %29 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %next13 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %29, i32 0, i32 1
  %30 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next13, align 8
  store %struct.mbedtls_asn1_sequence* %30, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %31 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %32 = bitcast %struct.mbedtls_asn1_sequence* %31 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %32, i64 noundef 32) #5
  %33 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %34 = bitcast %struct.mbedtls_asn1_sequence* %33 to i8*
  call void @free(i8* noundef %34) #6
  br label %while.cond10, !llvm.loop !16

while.end14:                                      ; preds = %while.cond10
  %35 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %subject_alt_names = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %35, i32 0, i32 17
  %next15 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %subject_alt_names, i32 0, i32 1
  %36 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next15, align 8
  store %struct.mbedtls_asn1_sequence* %36, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  br label %while.cond16

while.cond16:                                     ; preds = %while.body18, %while.end14
  %37 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %cmp17 = icmp ne %struct.mbedtls_asn1_sequence* %37, null
  br i1 %cmp17, label %while.body18, label %while.end20

while.body18:                                     ; preds = %while.cond16
  %38 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  store %struct.mbedtls_asn1_sequence* %38, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %39 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %next19 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %39, i32 0, i32 1
  %40 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next19, align 8
  store %struct.mbedtls_asn1_sequence* %40, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %41 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %42 = bitcast %struct.mbedtls_asn1_sequence* %41 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %42, i64 noundef 32) #5
  %43 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %44 = bitcast %struct.mbedtls_asn1_sequence* %43 to i8*
  call void @free(i8* noundef %44) #6
  br label %while.cond16, !llvm.loop !17

while.end20:                                      ; preds = %while.cond16
  %45 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %certificate_policies = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %45, i32 0, i32 18
  %next21 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %certificate_policies, i32 0, i32 1
  %46 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next21, align 8
  store %struct.mbedtls_asn1_sequence* %46, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  br label %while.cond22

while.cond22:                                     ; preds = %while.body24, %while.end20
  %47 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %cmp23 = icmp ne %struct.mbedtls_asn1_sequence* %47, null
  br i1 %cmp23, label %while.body24, label %while.end26

while.body24:                                     ; preds = %while.cond22
  %48 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  store %struct.mbedtls_asn1_sequence* %48, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %49 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %next25 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %49, i32 0, i32 1
  %50 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next25, align 8
  store %struct.mbedtls_asn1_sequence* %50, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %51 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %52 = bitcast %struct.mbedtls_asn1_sequence* %51 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %52, i64 noundef 32) #5
  %53 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %54 = bitcast %struct.mbedtls_asn1_sequence* %53 to i8*
  call void @free(i8* noundef %54) #6
  br label %while.cond22, !llvm.loop !18

while.end26:                                      ; preds = %while.cond22
  %55 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %55, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 2
  %56 = load i8*, i8** %p, align 8
  %cmp27 = icmp ne i8* %56, null
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %while.end26
  %57 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %own_buffer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %57, i32 0, i32 0
  %58 = load i32, i32* %own_buffer, align 8
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.then28, label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  %59 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %raw29 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %59, i32 0, i32 1
  %p30 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw29, i32 0, i32 2
  %60 = load i8*, i8** %p30, align 8
  %61 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %raw31 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %61, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw31, i32 0, i32 1
  %62 = load i64, i64* %len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %60, i64 noundef %62) #5
  %63 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %raw32 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %63, i32 0, i32 1
  %p33 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw32, i32 0, i32 2
  %64 = load i8*, i8** %p33, align 8
  call void @free(i8* noundef %64) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %land.lhs.true, %while.end26
  %65 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %next35 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %65, i32 0, i32 29
  %66 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next35, align 8
  store %struct.mbedtls_x509_crt* %66, %struct.mbedtls_x509_crt** %cert_cur, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end34
  %67 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %cmp36 = icmp ne %struct.mbedtls_x509_crt* %67, null
  br i1 %cmp36, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  %68 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %68, %struct.mbedtls_x509_crt** %cert_cur, align 8
  br label %do.body37

do.body37:                                        ; preds = %do.cond42, %do.end
  %69 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  store %struct.mbedtls_x509_crt* %69, %struct.mbedtls_x509_crt** %cert_prv, align 8
  %70 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %next38 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %70, i32 0, i32 29
  %71 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next38, align 8
  store %struct.mbedtls_x509_crt* %71, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %72 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_prv, align 8
  %73 = bitcast %struct.mbedtls_x509_crt* %72 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %73, i64 noundef 616) #5
  %74 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_prv, align 8
  %75 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %cmp39 = icmp ne %struct.mbedtls_x509_crt* %74, %75
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body37
  %76 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_prv, align 8
  %77 = bitcast %struct.mbedtls_x509_crt* %76 to i8*
  call void @free(i8* noundef %77) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %do.body37
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  %78 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cert_cur, align 8
  %cmp43 = icmp ne %struct.mbedtls_x509_crt* %78, null
  br i1 %cmp43, label %do.body37, label %do.end44, !llvm.loop !20

do.end44:                                         ; preds = %if.then, %do.cond42
  ret void
}

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_parse_der_core(%struct.mbedtls_x509_crt* noundef %crt, i8* noundef %buf, i64 noundef %buflen, i32 noundef %make_copy, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %cb, i8* noundef %p_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %make_copy.addr = alloca i32, align 4
  %cb.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %crt_end = alloca i8*, align 8
  %sig_params1 = alloca %struct.mbedtls_asn1_buf, align 8
  %sig_params2 = alloca %struct.mbedtls_asn1_buf, align 8
  %sig_oid2 = alloca %struct.mbedtls_asn1_buf, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 %make_copy, i32* %make_copy.addr, align 4
  store i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* %cb, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.mbedtls_asn1_buf* %sig_params1 to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 24) #6
  %1 = bitcast %struct.mbedtls_asn1_buf* %sig_params2 to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 24) #6
  %2 = bitcast %struct.mbedtls_asn1_buf* %sig_oid2 to i8*
  %call2 = call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 24) #6
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %buf.addr, align 8
  store i8* %5, i8** %p, align 8
  %6 = load i64, i64* %buflen.addr, align 8
  store i64 %6, i64* %len, align 8
  %7 = load i8*, i8** %p, align 8
  %8 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  store i8* %add.ptr, i8** %end, align 8
  %9 = load i8*, i8** %end, align 8
  %call4 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %9, i64* noundef %len, i32 noundef 48) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %10) #5
  store i32 -8576, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %12 = load i64, i64* %len, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr8, i8** %crt_end, align 8
  store i8* %add.ptr8, i8** %end, align 8
  %13 = load i8*, i8** %crt_end, align 8
  %14 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %15, i32 0, i32 1
  %len9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %len9, align 8
  %16 = load i32, i32* %make_copy.addr, align 4
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %17 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw12 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %17, i32 0, i32 1
  %len13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw12, i32 0, i32 1
  %18 = load i64, i64* %len13, align 8
  %call14 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %18) #6
  store i8* %call14, i8** %p, align 8
  %19 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw15 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %19, i32 0, i32 1
  %p16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw15, i32 0, i32 2
  store i8* %call14, i8** %p16, align 8
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw17 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %20, i32 0, i32 1
  %p18 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw17, i32 0, i32 2
  %21 = load i8*, i8** %p18, align 8
  %cmp19 = icmp eq i8* %21, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then11
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then11
  %22 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw22 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %22, i32 0, i32 1
  %p23 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw22, i32 0, i32 2
  %23 = load i8*, i8** %p23, align 8
  %24 = load i8*, i8** %buf.addr, align 8
  %25 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw24 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %25, i32 0, i32 1
  %len25 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw24, i32 0, i32 1
  %26 = load i64, i64* %len25, align 8
  %call26 = call i8* @memcpy(i8* noundef %23, i8* noundef %24, i64 noundef %26) #6
  %27 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %own_buffer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %27, i32 0, i32 0
  store i32 1, i32* %own_buffer, align 8
  %28 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw27 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %28, i32 0, i32 1
  %len28 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw27, i32 0, i32 1
  %29 = load i64, i64* %len28, align 8
  %30 = load i64, i64* %len, align 8
  %sub = sub i64 %29, %30
  %31 = load i8*, i8** %p, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %31, i64 %sub
  store i8* %add.ptr29, i8** %p, align 8
  %32 = load i8*, i8** %p, align 8
  %33 = load i64, i64* %len, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %add.ptr30, i8** %crt_end, align 8
  store i8* %add.ptr30, i8** %end, align 8
  br label %if.end34

if.else:                                          ; preds = %if.end7
  %34 = load i8*, i8** %buf.addr, align 8
  %35 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw31 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %35, i32 0, i32 1
  %p32 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw31, i32 0, i32 2
  store i8* %34, i8** %p32, align 8
  %36 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %own_buffer33 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %36, i32 0, i32 0
  store i32 0, i32* %own_buffer33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end21
  %37 = load i8*, i8** %p, align 8
  %38 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %tbs = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %38, i32 0, i32 2
  %p35 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs, i32 0, i32 2
  store i8* %37, i8** %p35, align 8
  %39 = load i8*, i8** %end, align 8
  %call36 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %39, i64* noundef %len, i32 noundef 48) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end34
  %40 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %40) #5
  %41 = load i32, i32* %ret, align 4
  %call39 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %41, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1157) #5
  store i32 %call39, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end34
  %42 = load i8*, i8** %p, align 8
  %43 = load i64, i64* %len, align 8
  %add.ptr41 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %add.ptr41, i8** %end, align 8
  %44 = load i8*, i8** %end, align 8
  %45 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %tbs42 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %45, i32 0, i32 2
  %p43 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs42, i32 0, i32 2
  %46 = load i8*, i8** %p43, align 8
  %sub.ptr.lhs.cast44 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast45 = ptrtoint i8* %46 to i64
  %sub.ptr.sub46 = sub i64 %sub.ptr.lhs.cast44, %sub.ptr.rhs.cast45
  %47 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %tbs47 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %47, i32 0, i32 2
  %len48 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs47, i32 0, i32 1
  store i64 %sub.ptr.sub46, i64* %len48, align 8
  %48 = load i8*, i8** %end, align 8
  %49 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %49, i32 0, i32 3
  %call49 = call i32 @x509_get_version(i8** noundef %p, i8* noundef %48, i32* noundef %version) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then57, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end40
  %50 = load i8*, i8** %end, align 8
  %51 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %51, i32 0, i32 4
  %call52 = call i32 @mbedtls_x509_get_serial(i8** noundef %p, i8* noundef %50, %struct.mbedtls_asn1_buf* noundef %serial) #5
  store i32 %call52, i32* %ret, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then57, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %52 = load i8*, i8** %end, align 8
  %53 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_oid = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %53, i32 0, i32 5
  %call55 = call i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %52, %struct.mbedtls_asn1_buf* noundef %sig_oid, %struct.mbedtls_asn1_buf* noundef %sig_params1) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false54, %lor.lhs.false51, %if.end40
  %54 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %54) #5
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %lor.lhs.false54
  %56 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version59 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %56, i32 0, i32 3
  %57 = load i32, i32* %version59, align 8
  %cmp60 = icmp slt i32 %57, 0
  br i1 %cmp60, label %if.then64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end58
  %58 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version62 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %58, i32 0, i32 3
  %59 = load i32, i32* %version62, align 8
  %cmp63 = icmp sgt i32 %59, 2
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %lor.lhs.false61, %if.end58
  %60 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %60) #5
  store i32 -9600, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %lor.lhs.false61
  %61 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version66 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %61, i32 0, i32 3
  %62 = load i32, i32* %version66, align 8
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %version66, align 8
  %63 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_oid67 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %63, i32 0, i32 5
  %64 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %64, i32 0, i32 26
  %65 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %65, i32 0, i32 27
  %66 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %66, i32 0, i32 28
  %call68 = call i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef %sig_oid67, %struct.mbedtls_asn1_buf* noundef %sig_params1, i32* noundef %sig_md, i32* noundef %sig_pk, i8** noundef %sig_opts) #5
  store i32 %call68, i32* %ret, align 4
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end65
  %67 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %67) #5
  %68 = load i32, i32* %ret, align 4
  store i32 %68, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end65
  %69 = load i8*, i8** %p, align 8
  %70 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer_raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %70, i32 0, i32 6
  %p72 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %issuer_raw, i32 0, i32 2
  store i8* %69, i8** %p72, align 8
  %71 = load i8*, i8** %end, align 8
  %call73 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %71, i64* noundef %len, i32 noundef 48) #5
  store i32 %call73, i32* %ret, align 4
  %cmp74 = icmp ne i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end71
  %72 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %72) #5
  %73 = load i32, i32* %ret, align 4
  %call76 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %73, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1204) #5
  store i32 %call76, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end71
  %74 = load i8*, i8** %p, align 8
  %75 = load i64, i64* %len, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %74, i64 %75
  %76 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %76, i32 0, i32 8
  %call79 = call i32 @mbedtls_x509_get_name(i8** noundef %p, i8* noundef %add.ptr78, %struct.mbedtls_asn1_named_data* noundef %issuer) #5
  store i32 %call79, i32* %ret, align 4
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end77
  %77 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %77) #5
  %78 = load i32, i32* %ret, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.end77
  %79 = load i8*, i8** %p, align 8
  %80 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer_raw83 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %80, i32 0, i32 6
  %p84 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %issuer_raw83, i32 0, i32 2
  %81 = load i8*, i8** %p84, align 8
  %sub.ptr.lhs.cast85 = ptrtoint i8* %79 to i64
  %sub.ptr.rhs.cast86 = ptrtoint i8* %81 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast85, %sub.ptr.rhs.cast86
  %82 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer_raw88 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %82, i32 0, i32 6
  %len89 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %issuer_raw88, i32 0, i32 1
  store i64 %sub.ptr.sub87, i64* %len89, align 8
  %83 = load i8*, i8** %end, align 8
  %84 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_from = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %84, i32 0, i32 10
  %85 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %valid_to = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %85, i32 0, i32 11
  %call90 = call i32 @x509_get_dates(i8** noundef %p, i8* noundef %83, %struct.mbedtls_x509_time* noundef %valid_from, %struct.mbedtls_x509_time* noundef %valid_to) #5
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end82
  %86 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %86) #5
  %87 = load i32, i32* %ret, align 4
  store i32 %87, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.end82
  %88 = load i8*, i8** %p, align 8
  %89 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %89, i32 0, i32 7
  %p94 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw, i32 0, i32 2
  store i8* %88, i8** %p94, align 8
  %90 = load i8*, i8** %end, align 8
  %call95 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %90, i64* noundef %len, i32 noundef 48) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end93
  %91 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %91) #5
  %92 = load i32, i32* %ret, align 4
  %call98 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %92, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1237) #5
  store i32 %call98, i32* %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.end93
  %93 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %93, 0
  br i1 %tobool, label %land.lhs.true, label %if.end104

land.lhs.true:                                    ; preds = %if.end99
  %94 = load i8*, i8** %p, align 8
  %95 = load i64, i64* %len, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %94, i64 %95
  %96 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %96, i32 0, i32 9
  %call101 = call i32 @mbedtls_x509_get_name(i8** noundef %p, i8* noundef %add.ptr100, %struct.mbedtls_asn1_named_data* noundef %subject) #5
  store i32 %call101, i32* %ret, align 4
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %land.lhs.true
  %97 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %97) #5
  %98 = load i32, i32* %ret, align 4
  store i32 %98, i32* %retval, align 4
  br label %return

if.end104:                                        ; preds = %land.lhs.true, %if.end99
  %99 = load i8*, i8** %p, align 8
  %100 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_raw105 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %100, i32 0, i32 7
  %p106 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw105, i32 0, i32 2
  %101 = load i8*, i8** %p106, align 8
  %sub.ptr.lhs.cast107 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast108 = ptrtoint i8* %101 to i64
  %sub.ptr.sub109 = sub i64 %sub.ptr.lhs.cast107, %sub.ptr.rhs.cast108
  %102 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_raw110 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %102, i32 0, i32 7
  %len111 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw110, i32 0, i32 1
  store i64 %sub.ptr.sub109, i64* %len111, align 8
  %103 = load i8*, i8** %p, align 8
  %104 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk_raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %104, i32 0, i32 12
  %p112 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %pk_raw, i32 0, i32 2
  store i8* %103, i8** %p112, align 8
  %105 = load i8*, i8** %end, align 8
  %106 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %106, i32 0, i32 13
  %call113 = call i32 @mbedtls_pk_parse_subpubkey(i8** noundef %p, i8* noundef %105, %struct.mbedtls_pk_context* noundef %pk) #5
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp ne i32 %call113, 0
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end104
  %107 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %107) #5
  %108 = load i32, i32* %ret, align 4
  store i32 %108, i32* %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.end104
  %109 = load i8*, i8** %p, align 8
  %110 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk_raw117 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %110, i32 0, i32 12
  %p118 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %pk_raw117, i32 0, i32 2
  %111 = load i8*, i8** %p118, align 8
  %sub.ptr.lhs.cast119 = ptrtoint i8* %109 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %111 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %112 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %pk_raw122 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %112, i32 0, i32 12
  %len123 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %pk_raw122, i32 0, i32 1
  store i64 %sub.ptr.sub121, i64* %len123, align 8
  %113 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version124 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %113, i32 0, i32 3
  %114 = load i32, i32* %version124, align 8
  %cmp125 = icmp eq i32 %114, 2
  br i1 %cmp125, label %if.then129, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.end116
  %115 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version127 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %115, i32 0, i32 3
  %116 = load i32, i32* %version127, align 8
  %cmp128 = icmp eq i32 %116, 3
  br i1 %cmp128, label %if.then129, label %if.end134

if.then129:                                       ; preds = %lor.lhs.false126, %if.end116
  %117 = load i8*, i8** %end, align 8
  %118 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer_id = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %118, i32 0, i32 14
  %call130 = call i32 @x509_get_uid(i8** noundef %p, i8* noundef %117, %struct.mbedtls_asn1_buf* noundef %issuer_id, i32 noundef 1) #5
  store i32 %call130, i32* %ret, align 4
  %119 = load i32, i32* %ret, align 4
  %cmp131 = icmp ne i32 %119, 0
  br i1 %cmp131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.then129
  %120 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %120) #5
  %121 = load i32, i32* %ret, align 4
  store i32 %121, i32* %retval, align 4
  br label %return

if.end133:                                        ; preds = %if.then129
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %lor.lhs.false126
  %122 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version135 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %122, i32 0, i32 3
  %123 = load i32, i32* %version135, align 8
  %cmp136 = icmp eq i32 %123, 2
  br i1 %cmp136, label %if.then140, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.end134
  %124 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version138 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %124, i32 0, i32 3
  %125 = load i32, i32* %version138, align 8
  %cmp139 = icmp eq i32 %125, 3
  br i1 %cmp139, label %if.then140, label %if.end145

if.then140:                                       ; preds = %lor.lhs.false137, %if.end134
  %126 = load i8*, i8** %end, align 8
  %127 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_id = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %127, i32 0, i32 15
  %call141 = call i32 @x509_get_uid(i8** noundef %p, i8* noundef %126, %struct.mbedtls_asn1_buf* noundef %subject_id, i32 noundef 2) #5
  store i32 %call141, i32* %ret, align 4
  %128 = load i32, i32* %ret, align 4
  %cmp142 = icmp ne i32 %128, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.then140
  %129 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %129) #5
  %130 = load i32, i32* %ret, align 4
  store i32 %130, i32* %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.then140
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %lor.lhs.false137
  %131 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %version146 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %131, i32 0, i32 3
  %132 = load i32, i32* %version146, align 8
  %cmp147 = icmp eq i32 %132, 3
  br i1 %cmp147, label %if.then148, label %if.end153

if.then148:                                       ; preds = %if.end145
  %133 = load i8*, i8** %end, align 8
  %134 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %135 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %136 = load i8*, i8** %p_ctx.addr, align 8
  %call149 = call i32 @x509_get_crt_ext(i8** noundef %p, i8* noundef %133, %struct.mbedtls_x509_crt* noundef %134, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %135, i8* noundef %136) #5
  store i32 %call149, i32* %ret, align 4
  %137 = load i32, i32* %ret, align 4
  %cmp150 = icmp ne i32 %137, 0
  br i1 %cmp150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.then148
  %138 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %138) #5
  %139 = load i32, i32* %ret, align 4
  store i32 %139, i32* %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.then148
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end145
  %140 = load i8*, i8** %p, align 8
  %141 = load i8*, i8** %end, align 8
  %cmp154 = icmp ne i8* %140, %141
  br i1 %cmp154, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end153
  %142 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %142) #5
  %call156 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1301) #5
  store i32 %call156, i32* %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.end153
  %143 = load i8*, i8** %crt_end, align 8
  store i8* %143, i8** %end, align 8
  %144 = load i8*, i8** %end, align 8
  %call158 = call i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %144, %struct.mbedtls_asn1_buf* noundef %sig_oid2, %struct.mbedtls_asn1_buf* noundef %sig_params2) #5
  store i32 %call158, i32* %ret, align 4
  %cmp159 = icmp ne i32 %call158, 0
  br i1 %cmp159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end157
  %145 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %145) #5
  %146 = load i32, i32* %ret, align 4
  store i32 %146, i32* %retval, align 4
  br label %return

if.end161:                                        ; preds = %if.end157
  %147 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_oid162 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %147, i32 0, i32 5
  %len163 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid162, i32 0, i32 1
  %148 = load i64, i64* %len163, align 8
  %len164 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid2, i32 0, i32 1
  %149 = load i64, i64* %len164, align 8
  %cmp165 = icmp ne i64 %148, %149
  br i1 %cmp165, label %if.then190, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %if.end161
  %150 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_oid167 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %150, i32 0, i32 5
  %p168 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid167, i32 0, i32 2
  %151 = load i8*, i8** %p168, align 8
  %p169 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid2, i32 0, i32 2
  %152 = load i8*, i8** %p169, align 8
  %153 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig_oid170 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %153, i32 0, i32 5
  %len171 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid170, i32 0, i32 1
  %154 = load i64, i64* %len171, align 8
  %call172 = call i32 @memcmp(i8* noundef %151, i8* noundef %152, i64 noundef %154) #7
  %cmp173 = icmp ne i32 %call172, 0
  br i1 %cmp173, label %if.then190, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false166
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 0
  %155 = load i32, i32* %tag, align 8
  %tag175 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params2, i32 0, i32 0
  %156 = load i32, i32* %tag175, align 8
  %cmp176 = icmp ne i32 %155, %156
  br i1 %cmp176, label %if.then190, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %lor.lhs.false174
  %len178 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 1
  %157 = load i64, i64* %len178, align 8
  %len179 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params2, i32 0, i32 1
  %158 = load i64, i64* %len179, align 8
  %cmp180 = icmp ne i64 %157, %158
  br i1 %cmp180, label %if.then190, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false177
  %len182 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 1
  %159 = load i64, i64* %len182, align 8
  %cmp183 = icmp ne i64 %159, 0
  br i1 %cmp183, label %land.lhs.true184, label %if.end191

land.lhs.true184:                                 ; preds = %lor.lhs.false181
  %p185 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 2
  %160 = load i8*, i8** %p185, align 8
  %p186 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params2, i32 0, i32 2
  %161 = load i8*, i8** %p186, align 8
  %len187 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 1
  %162 = load i64, i64* %len187, align 8
  %call188 = call i32 @memcmp(i8* noundef %160, i8* noundef %161, i64 noundef %162) #7
  %cmp189 = icmp ne i32 %call188, 0
  br i1 %cmp189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %land.lhs.true184, %lor.lhs.false177, %lor.lhs.false174, %lor.lhs.false166, %if.end161
  %163 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %163) #5
  store i32 -9856, i32* %retval, align 4
  br label %return

if.end191:                                        ; preds = %land.lhs.true184, %lor.lhs.false181
  %164 = load i8*, i8** %end, align 8
  %165 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %sig = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %165, i32 0, i32 25
  %call192 = call i32 @mbedtls_x509_get_sig(i8** noundef %p, i8* noundef %164, %struct.mbedtls_asn1_buf* noundef %sig) #5
  store i32 %call192, i32* %ret, align 4
  %cmp193 = icmp ne i32 %call192, 0
  br i1 %cmp193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end191
  %166 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %166) #5
  %167 = load i32, i32* %ret, align 4
  store i32 %167, i32* %retval, align 4
  br label %return

if.end195:                                        ; preds = %if.end191
  %168 = load i8*, i8** %p, align 8
  %169 = load i8*, i8** %end, align 8
  %cmp196 = icmp ne i8* %168, %169
  br i1 %cmp196, label %if.then197, label %if.end199

if.then197:                                       ; preds = %if.end195
  %170 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  call void @mbedtls_x509_crt_free(%struct.mbedtls_x509_crt* noundef %170) #5
  %call198 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1340) #5
  store i32 %call198, i32* %retval, align 4
  br label %return

if.end199:                                        ; preds = %if.end195
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end199, %if.then197, %if.then194, %if.then190, %if.then160, %if.then155, %if.then151, %if.then143, %if.then132, %if.then115, %if.then103, %if.then97, %if.then92, %if.then81, %if.then75, %if.then70, %if.then64, %if.then57, %if.then38, %if.then20, %if.then6, %if.then
  %171 = load i32, i32* %retval, align 4
  ret i32 %171
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #2

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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_version(i8** noundef %p, i8* noundef %end, i32* noundef %ver) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ver.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %ver, i32** %ver.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 160) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %2, -98
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i32*, i32** %ver.addr, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i32, i32* %ret, align 4
  %call3 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 423) #5
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  store i8* %add.ptr, i8** %end.addr, align 8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %end.addr, align 8
  %10 = load i32*, i32** %ver.addr, align 8
  %call5 = call i32 @mbedtls_asn1_get_int(i8** noundef %8, i8* noundef %9, i32* noundef %10) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %11 = load i32, i32* %ret, align 4
  %call8 = call i32 @mbedtls_error_add(i32 noundef -8704, i32 noundef %11, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 429) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %cmp10 = icmp ne i8* %13, %14
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @mbedtls_error_add(i32 noundef -8704, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 433) #5
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then7, %if.end, %if.then2
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @mbedtls_x509_get_serial(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_x509_get_alg(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef, i32* noundef, i32* noundef, i8** noundef) #2

declare dso_local i32 @mbedtls_x509_get_name(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_dates(i8** noundef %p, i8* noundef %end, %struct.mbedtls_x509_time* noundef %from, %struct.mbedtls_x509_time* noundef %to) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %from.addr = alloca %struct.mbedtls_x509_time*, align 8
  %to.addr = alloca %struct.mbedtls_x509_time*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_x509_time* %from, %struct.mbedtls_x509_time** %from.addr, align 8
  store %struct.mbedtls_x509_time* %to, %struct.mbedtls_x509_time** %to.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef %2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 453) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %end.addr, align 8
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %8 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %from.addr, align 8
  %call2 = call i32 @mbedtls_x509_get_time(i8** noundef %6, i8* noundef %7, %struct.mbedtls_x509_time* noundef %8) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %12 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %to.addr, align 8
  %call6 = call i32 @mbedtls_x509_get_time(i8** noundef %10, i8* noundef %11, %struct.mbedtls_x509_time* noundef %12) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %end.addr, align 8
  %cmp10 = icmp ne i8* %15, %16
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 465) #5
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then8, %if.then4, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_pk_parse_subpubkey(i8** noundef, i8* noundef, %struct.mbedtls_pk_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_uid(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %uid, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %uid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %n.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %uid, %struct.mbedtls_asn1_buf** %uid.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %uid.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 0
  store i32 %conv, i32* %tag, align 8
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %end.addr, align 8
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %uid.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 1
  %10 = load i32, i32* %n.addr, align 4
  %or = or i32 160, %10
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %7, i8* noundef %8, i64* noundef %len, i32 noundef %or) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %11 = load i32, i32* %ret, align 4
  %cmp4 = icmp eq i32 %11, -98
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  %12 = load i32, i32* %ret, align 4
  %call8 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 490) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %uid.addr, align 8
  %p10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %15, i32 0, i32 2
  store i8* %14, i8** %p10, align 8
  %16 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %uid.addr, align 8
  %len11 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %16, i32 0, i32 1
  %17 = load i64, i64* %len11, align 8
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %17
  store i8* %add.ptr, i8** %18, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.end7, %if.then6, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_crt_ext(i8** noundef %p, i8* noundef %end, %struct.mbedtls_x509_crt* noundef %crt, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* noundef %cb, i8* noundef %p_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %cb.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %end_ext_data = alloca i8*, align 8
  %start_ext_octet = alloca i8*, align 8
  %end_ext_octet = alloca i8*, align 8
  %extn_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %is_critical = alloca i32, align 4
  %ext_type = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* %cb, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %end.addr, align 8
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %v3_ext = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %5, i32 0, i32 16
  %call = call i32 @mbedtls_x509_get_ext(i8** noundef %3, i8* noundef %4, %struct.mbedtls_asn1_buf* noundef %v3_ext, i32 noundef 3) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %v3_ext4 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %7, i32 0, i32 16
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %v3_ext4, i32 0, i32 2
  %8 = load i8*, i8** %p5, align 8
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %v3_ext6 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %9, i32 0, i32 16
  %len7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %v3_ext6, i32 0, i32 1
  %10 = load i64, i64* %len7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %add.ptr, i8** %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end54, %if.end49, %if.end3
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %cmp8 = icmp ult i8* %12, %13
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = bitcast %struct.mbedtls_asn1_buf* %extn_oid to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %is_critical, align 4
  store i32 0, i32* %ext_type, align 4
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %end.addr, align 8
  %call9 = call i32 @mbedtls_asn1_get_tag(i8** noundef %15, i8* noundef %16, i64* noundef %len, i32 noundef 48) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %while.body
  %17 = load i32, i32* %ret, align 4
  %call12 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 936) #5
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %while.body
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* %len, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %add.ptr14, i8** %end_ext_data, align 8
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %end_ext_data, align 8
  %len15 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %extn_oid, i32 0, i32 1
  %call16 = call i32 @mbedtls_asn1_get_tag(i8** noundef %21, i8* noundef %22, i64* noundef %len15, i32 noundef 6) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  %23 = load i32, i32* %ret, align 4
  %call19 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %23, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 943) #5
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end13
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %extn_oid, i32 0, i32 0
  store i32 6, i32* %tag, align 8
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %p21 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %extn_oid, i32 0, i32 2
  store i8* %25, i8** %p21, align 8
  %len22 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %extn_oid, i32 0, i32 1
  %26 = load i64, i64* %len22, align 8
  %27 = load i8**, i8*** %p.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %28, i64 %26
  store i8* %add.ptr23, i8** %27, align 8
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %end_ext_data, align 8
  %call24 = call i32 @mbedtls_asn1_get_bool(i8** noundef %29, i8* noundef %30, i32* noundef %is_critical) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end20
  %31 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %31, -98
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true
  %32 = load i32, i32* %ret, align 4
  %call28 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 952) #5
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true, %if.end20
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %end_ext_data, align 8
  %call30 = call i32 @mbedtls_asn1_get_tag(i8** noundef %33, i8* noundef %34, i64* noundef %len, i32 noundef 4) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %35 = load i32, i32* %ret, align 4
  %call33 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %35, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 957) #5
  store i32 %call33, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  %36 = load i8**, i8*** %p.addr, align 8
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %start_ext_octet, align 8
  %38 = load i8**, i8*** %p.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %len, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %add.ptr35, i8** %end_ext_octet, align 8
  %41 = load i8*, i8** %end_ext_octet, align 8
  %42 = load i8*, i8** %end_ext_data, align 8
  %cmp36 = icmp ne i8* %41, %42
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 964) #5
  store i32 %call38, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 @mbedtls_oid_get_x509_ext_type(%struct.mbedtls_asn1_buf* noundef %extn_oid, i32* noundef %ext_type) #5
  store i32 %call40, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp41 = icmp ne i32 %43, 0
  br i1 %cmp41, label %if.then42, label %if.end55

if.then42:                                        ; preds = %if.end39
  %44 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %cmp43 = icmp ne i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* %44, null
  br i1 %cmp43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.then42
  %45 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %46 = load i8*, i8** %p_ctx.addr, align 8
  %47 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %48 = load i32, i32* %is_critical, align 4
  %49 = load i8**, i8*** %p.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %end_ext_octet, align 8
  %call45 = call i32 %45(i8* noundef %46, %struct.mbedtls_x509_crt* noundef %47, %struct.mbedtls_asn1_buf* noundef %extn_oid, i32 noundef %48, i8* noundef %50, i8* noundef %51) #5
  store i32 %call45, i32* %ret, align 4
  %52 = load i32, i32* %ret, align 4
  %cmp46 = icmp ne i32 %52, 0
  br i1 %cmp46, label %land.lhs.true47, label %if.end49

land.lhs.true47:                                  ; preds = %if.then44
  %53 = load i32, i32* %is_critical, align 4
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true47
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %land.lhs.true47, %if.then44
  %55 = load i8*, i8** %end_ext_octet, align 8
  %56 = load i8**, i8*** %p.addr, align 8
  store i8* %55, i8** %56, align 8
  br label %while.cond, !llvm.loop !21

if.end50:                                         ; preds = %if.then42
  %57 = load i8*, i8** %end_ext_octet, align 8
  %58 = load i8**, i8*** %p.addr, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %is_critical, align 4
  %tobool51 = icmp ne i32 %59, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end50
  %call53 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -98, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 990) #5
  store i32 %call53, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end50
  br label %while.cond, !llvm.loop !21

if.end55:                                         ; preds = %if.end39
  %60 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %60, i32 0, i32 19
  %61 = load i32, i32* %ext_types, align 8
  %62 = load i32, i32* %ext_type, align 4
  %and = and i32 %61, %62
  %cmp56 = icmp ne i32 %and, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end55
  store i32 -9472, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end55
  %63 = load i32, i32* %ext_type, align 4
  %64 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types59 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %64, i32 0, i32 19
  %65 = load i32, i32* %ext_types59, align 8
  %or = or i32 %65, %63
  store i32 %or, i32* %ext_types59, align 8
  %66 = load i32, i32* %ext_type, align 4
  switch i32 %66, label %sw.default [
    i32 256, label %sw.bb
    i32 4, label %sw.bb64
    i32 2048, label %sw.bb69
    i32 32, label %sw.bb74
    i32 65536, label %sw.bb79
    i32 8, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end58
  %67 = load i8**, i8*** %p.addr, align 8
  %68 = load i8*, i8** %end_ext_octet, align 8
  %69 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ca_istrue = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %69, i32 0, i32 20
  %70 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %max_pathlen = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %70, i32 0, i32 21
  %call60 = call i32 @x509_get_basic_constraints(i8** noundef %67, i8* noundef %68, i32* noundef %ca_istrue, i32* noundef %max_pathlen) #5
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.bb
  %71 = load i32, i32* %ret, align 4
  store i32 %71, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end58
  %72 = load i8**, i8*** %p.addr, align 8
  %73 = load i8*, i8** %end_ext_octet, align 8
  %74 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %74, i32 0, i32 22
  %call65 = call i32 @x509_get_key_usage(i8** noundef %72, i8* noundef %73, i32* noundef %key_usage) #5
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %sw.bb64
  %75 = load i32, i32* %ret, align 4
  store i32 %75, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %sw.bb64
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end58
  %76 = load i8**, i8*** %p.addr, align 8
  %77 = load i8*, i8** %end_ext_octet, align 8
  %78 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_key_usage = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %78, i32 0, i32 23
  %call70 = call i32 @x509_get_ext_key_usage(i8** noundef %76, i8* noundef %77, %struct.mbedtls_asn1_sequence* noundef %ext_key_usage) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %sw.bb69
  %79 = load i32, i32* %ret, align 4
  store i32 %79, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %sw.bb69
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end58
  %80 = load i8**, i8*** %p.addr, align 8
  %81 = load i8*, i8** %end_ext_octet, align 8
  %82 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_alt_names = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %82, i32 0, i32 17
  %call75 = call i32 @x509_get_subject_alt_name(i8** noundef %80, i8* noundef %81, %struct.mbedtls_asn1_sequence* noundef %subject_alt_names) #5
  store i32 %call75, i32* %ret, align 4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %sw.bb74
  %83 = load i32, i32* %ret, align 4
  store i32 %83, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %sw.bb74
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end58
  %84 = load i8**, i8*** %p.addr, align 8
  %85 = load i8*, i8** %end_ext_octet, align 8
  %86 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ns_cert_type = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %86, i32 0, i32 24
  %call80 = call i32 @x509_get_ns_cert_type(i8** noundef %84, i8* noundef %85, i8* noundef %ns_cert_type) #5
  store i32 %call80, i32* %ret, align 4
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %sw.bb79
  %87 = load i32, i32* %ret, align 4
  store i32 %87, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %sw.bb79
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end58
  %88 = load i8**, i8*** %p.addr, align 8
  %89 = load i8*, i8** %end_ext_octet, align 8
  %90 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %certificate_policies = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %90, i32 0, i32 18
  %call85 = call i32 @x509_get_certificate_policies(i8** noundef %88, i8* noundef %89, %struct.mbedtls_asn1_sequence* noundef %certificate_policies) #5
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %if.end102

if.then87:                                        ; preds = %sw.bb84
  %91 = load i32, i32* %ret, align 4
  %cmp88 = icmp eq i32 %91, -8320
  br i1 %cmp88, label %land.lhs.true89, label %if.end95

land.lhs.true89:                                  ; preds = %if.then87
  %92 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %cmp90 = icmp ne i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)* %92, null
  br i1 %cmp90, label %land.lhs.true91, label %if.end95

land.lhs.true91:                                  ; preds = %land.lhs.true89
  %93 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_asn1_buf*, i32, i8*, i8*)** %cb.addr, align 8
  %94 = load i8*, i8** %p_ctx.addr, align 8
  %95 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %96 = load i32, i32* %is_critical, align 4
  %97 = load i8*, i8** %start_ext_octet, align 8
  %98 = load i8*, i8** %end_ext_octet, align 8
  %call92 = call i32 %93(i8* noundef %94, %struct.mbedtls_x509_crt* noundef %95, %struct.mbedtls_asn1_buf* noundef %extn_oid, i32 noundef %96, i8* noundef %97, i8* noundef %98) #5
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %land.lhs.true91
  br label %sw.epilog

if.end95:                                         ; preds = %land.lhs.true91, %land.lhs.true89, %if.then87
  %99 = load i32, i32* %is_critical, align 4
  %tobool96 = icmp ne i32 %99, 0
  br i1 %tobool96, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.end95
  %100 = load i32, i32* %ret, align 4
  store i32 %100, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end95
  %101 = load i32, i32* %ret, align 4
  %cmp98 = icmp ne i32 %101, -8320
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.else
  %102 = load i32, i32* %ret, align 4
  store i32 %102, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.else
  br label %if.end101

if.end101:                                        ; preds = %if.end100
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %sw.bb84
  br label %sw.epilog

sw.default:                                       ; preds = %if.end58
  %103 = load i32, i32* %is_critical, align 4
  %tobool103 = icmp ne i32 %103, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %sw.default
  store i32 -8320, i32* %retval, align 4
  br label %return

if.else105:                                       ; preds = %sw.default
  %104 = load i8*, i8** %end_ext_octet, align 8
  %105 = load i8**, i8*** %p.addr, align 8
  store i8* %104, i8** %105, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.else105
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end106, %if.end102, %if.then94, %if.end83, %if.end78, %if.end73, %if.end68, %if.end63
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %106 = load i8**, i8*** %p.addr, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** %end.addr, align 8
  %cmp107 = icmp ne i8* %107, %108
  br i1 %cmp107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %while.end
  %call109 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1079) #5
  store i32 %call109, i32* %retval, align 4
  br label %return

if.end110:                                        ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end110, %if.then108, %if.then104, %if.then99, %if.then97, %if.then82, %if.then77, %if.then72, %if.then67, %if.then62, %if.then57, %if.then52, %if.then48, %if.then37, %if.then32, %if.then27, %if.then18, %if.then11, %if.then2, %if.then
  %109 = load i32, i32* %retval, align 4
  ret i32 %109
}

declare dso_local i32 @mbedtls_x509_get_sig(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #2

declare dso_local i32 @mbedtls_x509_get_time(i8** noundef, i8* noundef, %struct.mbedtls_x509_time* noundef) #2

declare dso_local i32 @mbedtls_x509_get_ext(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @mbedtls_asn1_get_bool(i8** noundef, i8* noundef, i32* noundef) #2

declare dso_local i32 @mbedtls_oid_get_x509_ext_type(%struct.mbedtls_asn1_buf* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_basic_constraints(i8** noundef %p, i8* noundef %end, i32* noundef %ca_istrue, i32* noundef %max_pathlen) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ca_istrue.addr = alloca i32*, align 8
  %max_pathlen.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %ca_istrue, i32** %ca_istrue.addr, align 8
  store i32* %max_pathlen, i32** %max_pathlen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32*, i32** %ca_istrue.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32*, i32** %max_pathlen.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %2, i8* noundef %3, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 517) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp eq i8* %6, %7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %end.addr, align 8
  %10 = load i32*, i32** %ca_istrue.addr, align 8
  %call5 = call i32 @mbedtls_asn1_get_bool(i8** noundef %8, i8* noundef %9, i32* noundef %10) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end4
  %11 = load i32, i32* %ret, align 4
  %cmp8 = icmp eq i32 %11, -98
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %14 = load i32*, i32** %ca_istrue.addr, align 8
  %call10 = call i32 @mbedtls_asn1_get_int(i8** noundef %12, i8* noundef %13, i32* noundef %14) #5
  store i32 %call10, i32* %ret, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  %15 = load i32, i32* %ret, align 4
  %cmp12 = icmp ne i32 %15, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %16 = load i32, i32* %ret, align 4
  %call14 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 528) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %17 = load i32*, i32** %ca_istrue.addr, align 8
  %18 = load i32, i32* %17, align 4
  %cmp16 = icmp ne i32 %18, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %19 = load i32*, i32** %ca_istrue.addr, align 8
  store i32 1, i32* %19, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end4
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %end.addr, align 8
  %cmp20 = icmp eq i8* %21, %22
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  store i32 0, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end19
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %end.addr, align 8
  %25 = load i32*, i32** %max_pathlen.addr, align 8
  %call23 = call i32 @mbedtls_asn1_get_int(i8** noundef %23, i8* noundef %24, i32* noundef %25) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  %26 = load i32, i32* %ret, align 4
  %call26 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 538) #5
  store i32 %call26, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end22
  %27 = load i8**, i8*** %p.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %end.addr, align 8
  %cmp28 = icmp ne i8* %28, %29
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  %call30 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 542) #5
  store i32 %call30, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end27
  %30 = load i32*, i32** %max_pathlen.addr, align 8
  %31 = load i32, i32* %30, align 4
  %cmp32 = icmp eq i32 %31, 2147483647
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %call34 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 548) #5
  store i32 %call34, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end31
  %32 = load i32*, i32** %max_pathlen.addr, align 8
  %33 = load i32, i32* %32, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %32, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then29, %if.then25, %if.then21, %if.then13, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_key_usage(i8** noundef %p, i8* noundef %end, i32* noundef %key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %key_usage.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %bs = alloca %struct.mbedtls_asn1_bitstring, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %key_usage, i32** %key_usage.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.mbedtls_asn1_bitstring* %bs to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false)
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_bitstring(i8** noundef %1, i8* noundef %2, %struct.mbedtls_asn1_bitstring* noundef %bs) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 583) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %bs, i32 0, i32 0
  %4 = load i64, i64* %len, align 8
  %cmp2 = icmp ult i64 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 587) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load i32*, i32** %key_usage.addr, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %6 = load i64, i64* %i, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %bs, i32 0, i32 0
  %7 = load i64, i64* %len6, align 8
  %cmp7 = icmp ult i64 %6, %7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %cmp8 = icmp ult i64 %8, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %bs, i32 0, i32 2
  %10 = load i8*, i8** %p9, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %13 = load i64, i64* %i, align 8
  %mul = mul i64 8, %13
  %sh_prom = trunc i64 %mul to i32
  %shl = shl i32 %conv, %sh_prom
  %14 = load i32*, i32** %key_usage.addr, align 8
  %15 = load i32, i32* %14, align 4
  %or = or i32 %15, %shl
  store i32 %or, i32* %14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_ext_key_usage(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_sequence* noundef %ext_key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ext_key_usage.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_sequence* %ext_key_usage, %struct.mbedtls_asn1_sequence** %ext_key_usage.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %ext_key_usage.addr, align 8
  %call = call i32 @mbedtls_asn1_get_sequence_of(i8** noundef %0, i8* noundef %1, %struct.mbedtls_asn1_sequence* noundef %2, i32 noundef 6) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 611) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %ext_key_usage.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %4, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf, i32 0, i32 2
  %5 = load i8*, i8** %p2, align 8
  %cmp3 = icmp eq i8* %5, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 616) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_subject_alt_name(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_sequence* noundef %subject_alt_name) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %subject_alt_name.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %tag_len = alloca i64, align 8
  %buf = alloca %struct.mbedtls_asn1_buf*, align 8
  %tag = alloca i8, align 1
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %dummy_san_buf = alloca %struct.mbedtls_x509_subject_alternative_name, align 8
  %seq_cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %seq_prv = alloca %struct.mbedtls_asn1_sequence*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_sequence* %subject_alt_name, %struct.mbedtls_asn1_sequence** %subject_alt_name.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %subject_alt_name.addr, align 8
  store %struct.mbedtls_asn1_sequence* %0, %struct.mbedtls_asn1_sequence** %cur, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %1, i8* noundef %2, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 661) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ne i8* %add.ptr, %7
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 665) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %if.end5
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %cmp6 = icmp ult i8* %9, %10
  br i1 %cmp6, label %while.body, label %while.end59

while.body:                                       ; preds = %while.cond
  %11 = bitcast %struct.mbedtls_x509_subject_alternative_name* %dummy_san_buf to i8*
  %call7 = call i8* @memset(i8* noundef %11, i32 noundef 0, i64 noundef 80) #6
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %tag, align 1
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %15, align 8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %end.addr, align 8
  %call8 = call i32 @mbedtls_asn1_get_len(i8** noundef %17, i8* noundef %18, i64* noundef %tag_len) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.body
  %19 = load i32, i32* %ret, align 4
  %call11 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 675) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %while.body
  %20 = load i8, i8* %tag, align 1
  %conv = zext i8 %20 to i32
  %and = and i32 %conv, 192
  %cmp13 = icmp ne i32 %and, 128
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -98, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 681) #5
  store i32 %call16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %21 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf18 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %21, i32 0, i32 0
  %call19 = call i32 @mbedtls_x509_parse_subject_alt_name(%struct.mbedtls_asn1_buf* noundef %buf18, %struct.mbedtls_x509_subject_alternative_name* noundef %dummy_san_buf) #5
  store i32 %call19, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp20 = icmp ne i32 %22, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end17
  %23 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %23, -8320
  br i1 %cmp22, label %if.then24, label %if.end31

if.then24:                                        ; preds = %land.lhs.true
  %24 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %subject_alt_name.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %24, i32 0, i32 1
  %25 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %25, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  br label %while.cond25

while.cond25:                                     ; preds = %while.body28, %if.then24
  %26 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %cmp26 = icmp ne %struct.mbedtls_asn1_sequence* %26, null
  br i1 %cmp26, label %while.body28, label %while.end

while.body28:                                     ; preds = %while.cond25
  %27 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  store %struct.mbedtls_asn1_sequence* %27, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %28 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %next29 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %28, i32 0, i32 1
  %29 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next29, align 8
  store %struct.mbedtls_asn1_sequence* %29, %struct.mbedtls_asn1_sequence** %seq_cur, align 8
  %30 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %31 = bitcast %struct.mbedtls_asn1_sequence* %30 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %31, i64 noundef 32) #5
  %32 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq_prv, align 8
  %33 = bitcast %struct.mbedtls_asn1_sequence* %32 to i8*
  call void @free(i8* noundef %33) #6
  br label %while.cond25, !llvm.loop !23

while.end:                                        ; preds = %while.cond25
  %34 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %subject_alt_name.addr, align 8
  %next30 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %34, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* null, %struct.mbedtls_asn1_sequence** %next30, align 8
  %35 = load i32, i32* %ret, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %land.lhs.true, %if.end17
  %36 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf32 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %36, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf32, i32 0, i32 2
  %37 = load i8*, i8** %p33, align 8
  %cmp34 = icmp ne i8* %37, null
  br i1 %cmp34, label %if.then36, label %if.end51

if.then36:                                        ; preds = %if.end31
  %38 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next37 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %38, i32 0, i32 1
  %39 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next37, align 8
  %cmp38 = icmp ne %struct.mbedtls_asn1_sequence* %39, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then36
  store i32 -9472, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.then36
  %call42 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #6
  %40 = bitcast i8* %call42 to %struct.mbedtls_asn1_sequence*
  %41 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next43 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %41, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* %40, %struct.mbedtls_asn1_sequence** %next43, align 8
  %42 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next44 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %42, i32 0, i32 1
  %43 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next44, align 8
  %cmp45 = icmp eq %struct.mbedtls_asn1_sequence* %43, null
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end41
  %call48 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -106, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 718) #5
  store i32 %call48, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end41
  %44 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next50 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %44, i32 0, i32 1
  %45 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next50, align 8
  store %struct.mbedtls_asn1_sequence* %45, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end31
  %46 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf52 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %46, i32 0, i32 0
  store %struct.mbedtls_asn1_buf* %buf52, %struct.mbedtls_asn1_buf** %buf, align 8
  %47 = load i8, i8* %tag, align 1
  %conv53 = zext i8 %47 to i32
  %48 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %tag54 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %48, i32 0, i32 0
  store i32 %conv53, i32* %tag54, align 8
  %49 = load i8**, i8*** %p.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %p55 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %51, i32 0, i32 2
  store i8* %50, i8** %p55, align 8
  %52 = load i64, i64* %tag_len, align 8
  %53 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %len56 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %53, i32 0, i32 1
  store i64 %52, i64* %len56, align 8
  %54 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %len57 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %54, i32 0, i32 1
  %55 = load i64, i64* %len57, align 8
  %56 = load i8**, i8*** %p.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %57, i64 %55
  store i8* %add.ptr58, i8** %56, align 8
  br label %while.cond, !llvm.loop !24

while.end59:                                      ; preds = %while.cond
  %58 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next60 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %58, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* null, %struct.mbedtls_asn1_sequence** %next60, align 8
  %59 = load i8**, i8*** %p.addr, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %end.addr, align 8
  %cmp61 = icmp ne i8* %60, %61
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %while.end59
  %call64 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 735) #5
  store i32 %call64, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %while.end59
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then63, %if.then47, %if.then40, %while.end, %if.then15, %if.then10, %if.then3, %if.then
  %62 = load i32, i32* %retval, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_ns_cert_type(i8** noundef %p, i8* noundef %end, i8* noundef %ns_cert_type) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ns_cert_type.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %bs = alloca %struct.mbedtls_asn1_bitstring, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %ns_cert_type, i8** %ns_cert_type.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.mbedtls_asn1_bitstring* %bs to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false)
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_bitstring(i8** noundef %1, i8* noundef %2, %struct.mbedtls_asn1_bitstring* noundef %bs) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 563) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %bs, i32 0, i32 0
  %4 = load i64, i64* %len, align 8
  %cmp2 = icmp ne i64 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -100, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 567) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %p6 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %bs, i32 0, i32 2
  %5 = load i8*, i8** %p6, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %ns_cert_type.addr, align 8
  store i8 %6, i8* %7, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_certificate_policies(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_sequence* noundef %certificate_policies) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %certificate_policies.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %ret = alloca i32, align 4
  %parse_ret = alloca i32, align 4
  %len = alloca i64, align 8
  %buf = alloca %struct.mbedtls_asn1_buf*, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %policy_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %policy_end = alloca i8*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_sequence* %certificate_policies, %struct.mbedtls_asn1_sequence** %certificate_policies.addr, align 8
  store i32 0, i32* %parse_ret, align 4
  %0 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %certificate_policies.addr, align 8
  store %struct.mbedtls_asn1_sequence* %0, %struct.mbedtls_asn1_sequence** %cur, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %1, i8* noundef %2, i64* noundef %len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 802) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8*, i8** %end.addr, align 8
  %cmp2 = icmp ne i8* %add.ptr, %8
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 806) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i64, i64* %len, align 8
  %cmp6 = icmp eq i64 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %call8 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 813) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  br label %while.cond

while.cond:                                       ; preds = %if.end69, %if.end9
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %cmp10 = icmp ult i8* %11, %12
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %call11 = call i32 @mbedtls_asn1_get_tag(i8** noundef %13, i8* noundef %14, i64* noundef %len, i32 noundef 48) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.body
  %15 = load i32, i32* %ret, align 4
  %call14 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 825) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %while.body
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %len, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %add.ptr16, i8** %policy_end, align 8
  %19 = load i8**, i8*** %p.addr, align 8
  %20 = load i8*, i8** %policy_end, align 8
  %call17 = call i32 @mbedtls_asn1_get_tag(i8** noundef %19, i8* noundef %20, i64* noundef %len, i32 noundef 6) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %21 = load i32, i32* %ret, align 4
  %call20 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 831) #5
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end15
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 0
  store i32 6, i32* %tag, align 8
  %22 = load i64, i64* %len, align 8
  %len22 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 1
  store i64 %22, i64* %len22, align 8
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %p23 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 2
  store i8* %24, i8** %p23, align 8
  %len24 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 1
  %25 = load i64, i64* %len24, align 8
  %cmp25 = icmp ne i64 4, %25
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end21
  %p26 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 2
  %26 = load i8*, i8** %p26, align 8
  %len27 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 1
  %27 = load i64, i64* %len27, align 8
  %call28 = call i32 @memcmp(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* noundef %26, i64 noundef %27) #7
  %cmp29 = icmp ne i32 %call28, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end21
  %28 = phi i1 [ true, %if.end21 ], [ %cmp29, %lor.rhs ]
  %lor.ext = zext i1 %28 to i32
  %cmp30 = icmp ne i32 %lor.ext, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.end
  store i32 -8320, i32* %parse_ret, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lor.end
  %29 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf33 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %29, i32 0, i32 0
  %p34 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf33, i32 0, i32 2
  %30 = load i8*, i8** %p34, align 8
  %cmp35 = icmp ne i8* %30, null
  br i1 %cmp35, label %if.then36, label %if.end48

if.then36:                                        ; preds = %if.end32
  %31 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %31, i32 0, i32 1
  %32 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  %cmp37 = icmp ne %struct.mbedtls_asn1_sequence* %32, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then36
  store i32 -9472, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.then36
  %call40 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #6
  %33 = bitcast i8* %call40 to %struct.mbedtls_asn1_sequence*
  %34 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next41 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %34, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* %33, %struct.mbedtls_asn1_sequence** %next41, align 8
  %35 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next42 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %35, i32 0, i32 1
  %36 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next42, align 8
  %cmp43 = icmp eq %struct.mbedtls_asn1_sequence* %36, null
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end39
  %call45 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -106, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 859) #5
  store i32 %call45, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end39
  %37 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next47 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %37, i32 0, i32 1
  %38 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next47, align 8
  store %struct.mbedtls_asn1_sequence* %38, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end32
  %39 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf49 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %39, i32 0, i32 0
  store %struct.mbedtls_asn1_buf* %buf49, %struct.mbedtls_asn1_buf** %buf, align 8
  %tag50 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 0
  %40 = load i32, i32* %tag50, align 8
  %41 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %tag51 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %41, i32 0, i32 0
  store i32 %40, i32* %tag51, align 8
  %p52 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 2
  %42 = load i8*, i8** %p52, align 8
  %43 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %p53 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %43, i32 0, i32 2
  store i8* %42, i8** %p53, align 8
  %len54 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %policy_oid, i32 0, i32 1
  %44 = load i64, i64* %len54, align 8
  %45 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %buf, align 8
  %len55 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %45, i32 0, i32 1
  store i64 %44, i64* %len55, align 8
  %46 = load i64, i64* %len, align 8
  %47 = load i8**, i8*** %p.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %48, i64 %46
  store i8* %add.ptr56, i8** %47, align 8
  %49 = load i8**, i8*** %p.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %policy_end, align 8
  %cmp57 = icmp ult i8* %50, %51
  br i1 %cmp57, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.end48
  %52 = load i8**, i8*** %p.addr, align 8
  %53 = load i8*, i8** %policy_end, align 8
  %call59 = call i32 @mbedtls_asn1_get_tag(i8** noundef %52, i8* noundef %53, i64* noundef %len, i32 noundef 48) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then58
  %54 = load i32, i32* %ret, align 4
  %call62 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %54, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 879) #5
  store i32 %call62, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.then58
  %55 = load i64, i64* %len, align 8
  %56 = load i8**, i8*** %p.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %57, i64 %55
  store i8* %add.ptr64, i8** %56, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end48
  %58 = load i8**, i8*** %p.addr, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %policy_end, align 8
  %cmp66 = icmp ne i8* %59, %60
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  %call68 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 888) #5
  store i32 %call68, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end65
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %61 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next70 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %61, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* null, %struct.mbedtls_asn1_sequence** %next70, align 8
  %62 = load i8**, i8*** %p.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %end.addr, align 8
  %cmp71 = icmp ne i8* %63, %64
  br i1 %cmp71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %while.end
  %call73 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 noundef 896) #5
  store i32 %call73, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %while.end
  %65 = load i32, i32* %parse_ret, align 4
  store i32 %65, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.then72, %if.then67, %if.then61, %if.then44, %if.then38, %if.then19, %if.then13, %if.then7, %if.then3, %if.then
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

declare dso_local i32 @mbedtls_asn1_get_bitstring(i8** noundef, i8* noundef, %struct.mbedtls_asn1_bitstring* noundef) #2

declare dso_local i32 @mbedtls_asn1_get_sequence_of(i8** noundef, i8* noundef, %struct.mbedtls_asn1_sequence* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_asn1_get_len(i8** noundef, i8* noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_oid_get_numeric_string(i8* noundef, i64 noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_oid_get_extended_key_usage(%struct.mbedtls_asn1_buf* noundef, i8** noundef) #2

declare dso_local i32 @mbedtls_oid_get_certificate_policies(%struct.mbedtls_asn1_buf* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x509_crt_verify_chain_reset(%struct.mbedtls_x509_crt_verify_chain* noundef %ver_chain) #0 {
entry:
  %ver_chain.addr = alloca %struct.mbedtls_x509_crt_verify_chain*, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_x509_crt_verify_chain* %ver_chain, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %items = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %1, i32 0, i32 0
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [10 x %struct.mbedtls_x509_crt_verify_chain_item], [10 x %struct.mbedtls_x509_crt_verify_chain_item]* %items, i64 0, i64 %2
  %crt = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %arrayidx, i32 0, i32 0
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %crt, align 8
  %3 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %items1 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %3, i32 0, i32 0
  %4 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [10 x %struct.mbedtls_x509_crt_verify_chain_item], [10 x %struct.mbedtls_x509_crt_verify_chain_item]* %items1, i64 0, i64 %4
  %flags = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %arrayidx2, i32 0, i32 1
  store i32 -1, i32* %flags, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %6 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %6, i32 0, i32 1
  store i32 0, i32* %len, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x509_crt_verify_name(%struct.mbedtls_x509_crt* noundef %crt, i8* noundef %cn, i32* noundef %flags) #0 {
entry:
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %cn.addr = alloca i8*, align 8
  %flags.addr = alloca i32*, align 8
  %name = alloca %struct.mbedtls_asn1_named_data*, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  %cn_len = alloca i64, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i32* %flags, i32** %flags.addr, align 8
  %0 = load i8*, i8** %cn.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #7
  store i64 %call, i64* %cn_len, align 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %ext_types = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %1, i32 0, i32 19
  %2 = load i32, i32* %ext_types, align 8
  %and = and i32 %2, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject_alt_names = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %3, i32 0, i32 17
  store %struct.mbedtls_asn1_sequence* %subject_alt_names, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_sequence* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %5, i32 0, i32 0
  %6 = load i8*, i8** %cn.addr, align 8
  %7 = load i64, i64* %cn_len, align 8
  %call1 = call i32 @x509_crt_check_san(%struct.mbedtls_asn1_buf* noundef %buf, i8* noundef %6, i64 noundef %7) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %9, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %if.then3, %for.cond
  %10 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %cmp4 = icmp eq %struct.mbedtls_asn1_sequence* %10, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  %11 = load i32*, i32** %flags.addr, align 8
  %12 = load i32, i32* %11, align 4
  %or = or i32 %12, 4
  store i32 %or, i32* %11, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end
  br label %if.end28

if.else:                                          ; preds = %entry
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %13, i32 0, i32 9
  store %struct.mbedtls_asn1_named_data* %subject, %struct.mbedtls_asn1_named_data** %name, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc21, %if.else
  %14 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %cmp8 = icmp ne %struct.mbedtls_asn1_named_data* %14, null
  br i1 %cmp8, label %for.body9, label %for.end23

for.body9:                                        ; preds = %for.cond7
  %15 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %oid = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %15, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 1
  %16 = load i64, i64* %len, align 8
  %cmp10 = icmp ne i64 3, %16
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body9
  %17 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %oid11 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %17, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid11, i32 0, i32 2
  %18 = load i8*, i8** %p, align 8
  %19 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %oid12 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %19, i32 0, i32 0
  %len13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid12, i32 0, i32 1
  %20 = load i64, i64* %len13, align 8
  %call14 = call i32 @memcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i8* noundef %18, i64 noundef %20) #7
  %cmp15 = icmp ne i32 %call14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body9
  %21 = phi i1 [ true, %for.body9 ], [ %cmp15, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  %cmp16 = icmp eq i32 %lor.ext, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %lor.end
  %22 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %22, i32 0, i32 1
  %23 = load i8*, i8** %cn.addr, align 8
  %24 = load i64, i64* %cn_len, align 8
  %call17 = call i32 @x509_crt_check_cn(%struct.mbedtls_asn1_buf* noundef %val, i8* noundef %23, i64 noundef %24) #5
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  br label %for.end23

if.end20:                                         ; preds = %land.lhs.true, %lor.end
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %25 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %next22 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %25, i32 0, i32 2
  %26 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next22, align 8
  store %struct.mbedtls_asn1_named_data* %26, %struct.mbedtls_asn1_named_data** %name, align 8
  br label %for.cond7, !llvm.loop !28

for.end23:                                        ; preds = %if.then19, %for.cond7
  %27 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %cmp24 = icmp eq %struct.mbedtls_asn1_named_data* %27, null
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end23
  %28 = load i32*, i32** %flags.addr, align 8
  %29 = load i32, i32* %28, align 4
  %or26 = or i32 %29, 4
  store i32 %or26, i32* %28, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end6
  ret void
}

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_profile_check_pk_alg(%struct.mbedtls_x509_crt_profile* noundef %profile, i32 noundef %pk_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %pk_alg.addr = alloca i32, align 4
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store i32 %pk_alg, i32* %pk_alg.addr, align 4
  %0 = load i32, i32* %pk_alg.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %allowed_pks = getelementptr inbounds %struct.mbedtls_x509_crt_profile, %struct.mbedtls_x509_crt_profile* %1, i32 0, i32 1
  %2 = load i32, i32* %allowed_pks, align 4
  %3 = load i32, i32* %pk_alg.addr, align 4
  %sub = sub i32 %3, 1
  %shl = shl i32 1, %sub
  %and = and i32 %2, %shl
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_profile_check_key(%struct.mbedtls_x509_crt_profile* noundef %profile, %struct.mbedtls_pk_context* noundef %pk) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %pk.addr = alloca %struct.mbedtls_pk_context*, align 8
  %pk_alg = alloca i32, align 4
  %gid = alloca i32, align 4
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store %struct.mbedtls_pk_context* %pk, %struct.mbedtls_pk_context** %pk.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %0) #5
  store i32 %call, i32* %pk_alg, align 4
  %1 = load i32, i32* %pk_alg, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %pk_alg, align 4
  %cmp1 = icmp eq i32 %2, 6
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %call2 = call i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef %3) #5
  %4 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %rsa_min_bitlen = getelementptr inbounds %struct.mbedtls_x509_crt_profile, %struct.mbedtls_x509_crt_profile* %4, i32 0, i32 3
  %5 = load i32, i32* %rsa_min_bitlen, align 4
  %conv = zext i32 %5 to i64
  %cmp3 = icmp uge i64 %call2, %conv
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %pk_alg, align 4
  %cmp7 = icmp eq i32 %6, 4
  br i1 %cmp7, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end6
  %7 = load i32, i32* %pk_alg, align 4
  %cmp10 = icmp eq i32 %7, 2
  br i1 %cmp10, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %8 = load i32, i32* %pk_alg, align 4
  %cmp13 = icmp eq i32 %8, 3
  br i1 %cmp13, label %if.then15, label %if.end25

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %if.end6
  %9 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %pk.addr, align 8
  %10 = bitcast %struct.mbedtls_pk_context* %9 to { %struct.mbedtls_pk_info_t*, i8* }*
  %11 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %10, i32 0, i32 0
  %12 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %11, align 8
  %13 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %10, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %call16 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %12, i8* %14) #5
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %call16, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %15 = load i32, i32* %id, align 8
  store i32 %15, i32* %gid, align 4
  %16 = load i32, i32* %gid, align 4
  %cmp17 = icmp eq i32 %16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then15
  %17 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %allowed_curves = getelementptr inbounds %struct.mbedtls_x509_crt_profile, %struct.mbedtls_x509_crt_profile* %17, i32 0, i32 2
  %18 = load i32, i32* %allowed_curves, align 4
  %19 = load i32, i32* %gid, align 4
  %sub = sub i32 %19, 1
  %shl = shl i32 1, %sub
  %and = and i32 %18, %shl
  %cmp21 = icmp ne i32 %and, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  store i32 -1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false12
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.end24, %if.then23, %if.then19, %if.end, %if.then5
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_verify_chain(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %trust_ca, %struct.mbedtls_x509_crl* noundef %ca_crl, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* noundef %f_ca_cb, i8* noundef %p_ca_cb, %struct.mbedtls_x509_crt_profile* noundef %profile, %struct.mbedtls_x509_crt_verify_chain* noundef %ver_chain, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca_crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %f_ca_cb.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)*, align 8
  %p_ca_cb.addr = alloca i8*, align 8
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %ver_chain.addr = alloca %struct.mbedtls_x509_crt_verify_chain*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %flags = alloca i32*, align 8
  %cur = alloca %struct.mbedtls_x509_crt_verify_chain_item*, align 8
  %child = alloca %struct.mbedtls_x509_crt*, align 8
  %parent = alloca %struct.mbedtls_x509_crt*, align 8
  %parent_is_trusted = alloca i32, align 4
  %child_is_trusted = alloca i32, align 4
  %signature_is_good = alloca i32, align 4
  %self_cnt = alloca i32, align 4
  %cur_trust_ca = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crl* %ca_crl, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)* %f_ca_cb, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)** %f_ca_cb.addr, align 8
  store i8* %p_ca_cb, i8** %p_ca_cb.addr, align 8
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store %struct.mbedtls_x509_crt_verify_chain* %ver_chain, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %cur_trust_ca, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %child, align 8
  store i32 0, i32* %self_cnt, align 4
  store i32 0, i32* %parent_is_trusted, align 4
  store i32 0, i32* %child_is_trusted, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end56
  %1 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %items = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %1, i32 0, i32 0
  %2 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.mbedtls_x509_crt_verify_chain_item], [10 x %struct.mbedtls_x509_crt_verify_chain_item]* %items, i64 0, i64 %idxprom
  store %struct.mbedtls_x509_crt_verify_chain_item* %arrayidx, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %4 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %5 = load %struct.mbedtls_x509_crt_verify_chain_item*, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %crt1 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %5, i32 0, i32 0
  store %struct.mbedtls_x509_crt* %4, %struct.mbedtls_x509_crt** %crt1, align 8
  %6 = load %struct.mbedtls_x509_crt_verify_chain_item*, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %flags2 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %6, i32 0, i32 1
  store i32 0, i32* %flags2, align 8
  %7 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len3 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %7, i32 0, i32 1
  %8 = load i32, i32* %len3, align 8
  %inc = add i32 %8, 1
  store i32 %inc, i32* %len3, align 8
  %9 = load %struct.mbedtls_x509_crt_verify_chain_item*, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %flags4 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %9, i32 0, i32 1
  store i32* %flags4, i32** %flags, align 8
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %valid_to = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %10, i32 0, i32 11
  %call = call i32 @mbedtls_x509_time_is_past(%struct.mbedtls_x509_time* noundef %valid_to) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32*, i32** %flags, align 8
  %12 = load i32, i32* %11, align 4
  %or = or i32 %12, 1
  store i32 %or, i32* %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %valid_from = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %13, i32 0, i32 10
  %call5 = call i32 @mbedtls_x509_time_is_future(%struct.mbedtls_x509_time* noundef %valid_from) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %14 = load i32*, i32** %flags, align 8
  %15 = load i32, i32* %14, align 4
  %or8 = or i32 %15, 512
  store i32 %or8, i32* %14, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %16 = load i32, i32* %child_is_trusted, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  %17 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %18 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %18, i32 0, i32 26
  %19 = load i32, i32* %sig_md, align 8
  %call13 = call i32 @x509_profile_check_md_alg(%struct.mbedtls_x509_crt_profile* noundef %17, i32 noundef %19) #5
  %cmp = icmp ne i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %20 = load i32*, i32** %flags, align 8
  %21 = load i32, i32* %20, align 4
  %or15 = or i32 %21, 16384
  store i32 %or15, i32* %20, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %22 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %23 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %23, i32 0, i32 27
  %24 = load i32, i32* %sig_pk, align 4
  %call17 = call i32 @x509_profile_check_pk_alg(%struct.mbedtls_x509_crt_profile* noundef %22, i32 noundef %24) #5
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %25 = load i32*, i32** %flags, align 8
  %26 = load i32, i32* %25, align 4
  %or20 = or i32 %26, 32768
  store i32 %or20, i32* %25, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %27 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len22 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %27, i32 0, i32 1
  %28 = load i32, i32* %len22, align 8
  %cmp23 = icmp eq i32 %28, 1
  br i1 %cmp23, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end21
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %30 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  %call24 = call i32 @x509_crt_check_ee_locally_trusted(%struct.mbedtls_x509_crt* noundef %29, %struct.mbedtls_x509_crt* noundef %30) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %land.lhs.true, %if.end21
  %31 = load i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)*, i32 (i8*, %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt**)** %f_ca_cb.addr, align 8
  %32 = load i8*, i8** %p_ca_cb.addr, align 8
  %33 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crt* %33, %struct.mbedtls_x509_crt** %cur_trust_ca, align 8
  %34 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %35 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur_trust_ca, align 8
  %36 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len28 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %36, i32 0, i32 1
  %37 = load i32, i32* %len28, align 8
  %sub = sub i32 %37, 1
  %38 = load i32, i32* %self_cnt, align 4
  %39 = load i8*, i8** %rs_ctx.addr, align 8
  %call29 = call i32 @x509_crt_find_parent(%struct.mbedtls_x509_crt* noundef %34, %struct.mbedtls_x509_crt* noundef %35, %struct.mbedtls_x509_crt** noundef %parent, i32* noundef %parent_is_trusted, i32* noundef %signature_is_good, i32 noundef %sub, i32 noundef %38, i8* noundef %39) #5
  store i32 %call29, i32* %ret, align 4
  %40 = load i32, i32* %ret, align 4
  %41 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %cmp30 = icmp eq %struct.mbedtls_x509_crt* %41, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  %42 = load i32*, i32** %flags, align 8
  %43 = load i32, i32* %42, align 4
  %or32 = or i32 %43, 8
  store i32 %or32, i32* %42, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end27
  %44 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len34 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %44, i32 0, i32 1
  %45 = load i32, i32* %len34, align 8
  %cmp35 = icmp ne i32 %45, 1
  br i1 %cmp35, label %land.lhs.true36, label %if.end41

land.lhs.true36:                                  ; preds = %if.end33
  %46 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %46, i32 0, i32 8
  %47 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %47, i32 0, i32 9
  %call37 = call i32 @x509_name_cmp(%struct.mbedtls_asn1_named_data* noundef %issuer, %struct.mbedtls_asn1_named_data* noundef %subject) #5
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %land.lhs.true36
  %48 = load i32, i32* %self_cnt, align 4
  %inc40 = add i32 %48, 1
  store i32 %inc40, i32* %self_cnt, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true36, %if.end33
  %49 = load i32, i32* %parent_is_trusted, align 4
  %tobool42 = icmp ne i32 %49, 0
  br i1 %tobool42, label %if.end47, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.end41
  %50 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len44 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %50, i32 0, i32 1
  %51 = load i32, i32* %len44, align 8
  %cmp45 = icmp ugt i32 %51, 8
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true43
  store i32 -12288, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %land.lhs.true43, %if.end41
  %52 = load i32, i32* %signature_is_good, align 4
  %tobool48 = icmp ne i32 %52, 0
  br i1 %tobool48, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.end47
  %53 = load i32*, i32** %flags, align 8
  %54 = load i32, i32* %53, align 4
  %or50 = or i32 %54, 8
  store i32 %or50, i32* %53, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %55 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %56 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %56, i32 0, i32 13
  %call52 = call i32 @x509_profile_check_key(%struct.mbedtls_x509_crt_profile* noundef %55, %struct.mbedtls_pk_context* noundef %pk) #5
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  %57 = load i32*, i32** %flags, align 8
  %58 = load i32, i32* %57, align 4
  %or55 = or i32 %58, 65536
  store i32 %or55, i32* %57, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  %59 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child, align 8
  %60 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %61 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %ca_crl.addr, align 8
  %62 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %call57 = call i32 @x509_crt_verifycrl(%struct.mbedtls_x509_crt* noundef %59, %struct.mbedtls_x509_crt* noundef %60, %struct.mbedtls_x509_crl* noundef %61, %struct.mbedtls_x509_crt_profile* noundef %62) #5
  %63 = load i32*, i32** %flags, align 8
  %64 = load i32, i32* %63, align 4
  %or58 = or i32 %64, %call57
  store i32 %or58, i32* %63, align 4
  %65 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  store %struct.mbedtls_x509_crt* %65, %struct.mbedtls_x509_crt** %child, align 8
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %parent, align 8
  %66 = load i32, i32* %parent_is_trusted, align 4
  store i32 %66, i32* %child_is_trusted, align 4
  store i32 0, i32* %signature_is_good, align 4
  br label %while.body

return:                                           ; preds = %if.then46, %if.then31, %if.then26, %if.then11
  %67 = load i32, i32* %retval, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_merge_flags_with_cb(i32* noundef %flags, %struct.mbedtls_x509_crt_verify_chain* noundef %ver_chain, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* noundef %f_vrfy, i8* noundef %p_vrfy) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32*, align 8
  %ver_chain.addr = alloca %struct.mbedtls_x509_crt_verify_chain*, align 8
  %f_vrfy.addr = alloca i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, align 8
  %p_vrfy.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cur_flags = alloca i32, align 4
  %cur = alloca %struct.mbedtls_x509_crt_verify_chain_item*, align 8
  store i32* %flags, i32** %flags.addr, align 8
  store %struct.mbedtls_x509_crt_verify_chain* %ver_chain, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  store i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* %f_vrfy, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  store i8* %p_vrfy, i8** %p_vrfy.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %0, i32 0, i32 1
  %1 = load i32, i32* %len, align 8
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_x509_crt_verify_chain*, %struct.mbedtls_x509_crt_verify_chain** %ver_chain.addr, align 8
  %items = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain, %struct.mbedtls_x509_crt_verify_chain* %3, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10 x %struct.mbedtls_x509_crt_verify_chain_item], [10 x %struct.mbedtls_x509_crt_verify_chain_item]* %items, i64 0, i64 %idxprom
  store %struct.mbedtls_x509_crt_verify_chain_item* %arrayidx, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %5 = load %struct.mbedtls_x509_crt_verify_chain_item*, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %flags1 = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %5, i32 0, i32 1
  %6 = load i32, i32* %flags1, align 8
  store i32 %6, i32* %cur_flags, align 4
  %7 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %cmp2 = icmp ne i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)* null, %7
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %8 = load i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)*, i32 (i8*, %struct.mbedtls_x509_crt*, i32, i32*)** %f_vrfy.addr, align 8
  %9 = load i8*, i8** %p_vrfy.addr, align 8
  %10 = load %struct.mbedtls_x509_crt_verify_chain_item*, %struct.mbedtls_x509_crt_verify_chain_item** %cur, align 8
  %crt = getelementptr inbounds %struct.mbedtls_x509_crt_verify_chain_item, %struct.mbedtls_x509_crt_verify_chain_item* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt, align 8
  %12 = load i32, i32* %i, align 4
  %sub3 = sub nsw i32 %12, 1
  %call = call i32 %8(i8* noundef %9, %struct.mbedtls_x509_crt* noundef %11, i32 noundef %sub3, i32* noundef %cur_flags) #5
  store i32 %call, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  %14 = load i32, i32* %cur_flags, align 4
  %15 = load i32*, i32** %flags.addr, align 8
  %16 = load i32, i32* %15, align 4
  %or = or i32 %16, %14
  store i32 %or, i32* %15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %17 = load i32, i32* %i, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then5
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_check_san(%struct.mbedtls_asn1_buf* noundef %name, i8* noundef %cn, i64 noundef %cn_len) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %cn.addr = alloca i8*, align 8
  %cn_len.addr = alloca i64, align 8
  %san_type = alloca i8, align 1
  store %struct.mbedtls_asn1_buf* %name, %struct.mbedtls_asn1_buf** %name.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i64 %cn_len, i64* %cn_len.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 0
  %1 = load i32, i32* %tag, align 8
  %conv = trunc i32 %1 to i8
  %conv1 = zext i8 %conv to i32
  %and = and i32 %conv1, 31
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, i8* %san_type, align 1
  %2 = load i8, i8* %san_type, align 1
  %conv3 = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %4 = load i8*, i8** %cn.addr, align 8
  %5 = load i64, i64* %cn_len.addr, align 8
  %call = call i32 @x509_crt_check_cn(%struct.mbedtls_asn1_buf* noundef %3, i8* noundef %4, i64 noundef %5) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_check_cn(%struct.mbedtls_asn1_buf* noundef %name, i8* noundef %cn, i64 noundef %cn_len) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %cn.addr = alloca i8*, align 8
  %cn_len.addr = alloca i64, align 8
  store %struct.mbedtls_asn1_buf* %name, %struct.mbedtls_asn1_buf** %name.addr, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store i64 %cn_len, i64* %cn_len.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %2 = load i64, i64* %cn_len.addr, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %cn.addr, align 8
  %4 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %4, i32 0, i32 2
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %cn_len.addr, align 8
  %call = call i32 @x509_memcasecmp(i8* noundef %3, i8* noundef %5, i64 noundef %6) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %cn.addr, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %call2 = call i32 @x509_check_wildcard(i8* noundef %7, %struct.mbedtls_asn1_buf* noundef %8) #5
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_memcasecmp(i8* noundef %s1, i8* noundef %s2, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %diff = alloca i8, align 1
  %n1 = alloca i8*, align 8
  %n2 = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %n1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %n2, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %n1, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i8*, i8** %n2, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %9 to i32
  %xor = xor i32 %conv, %conv2
  %conv3 = trunc i32 %xor to i8
  store i8 %conv3, i8* %diff, align 1
  %10 = load i8, i8* %diff, align 1
  %conv4 = zext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i8, i8* %diff, align 1
  %conv7 = zext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 32
  br i1 %cmp8, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %12 = load i8*, i8** %n1, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %cmp12 = icmp sge i32 %conv11, 97
  br i1 %cmp12, label %land.lhs.true14, label %lor.lhs.false

land.lhs.true14:                                  ; preds = %land.lhs.true
  %15 = load i8*, i8** %n1, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %cmp17 = icmp sle i32 %conv16, 122
  br i1 %cmp17, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true14, %land.lhs.true
  %18 = load i8*, i8** %n1, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %20 to i32
  %cmp21 = icmp sge i32 %conv20, 65
  br i1 %cmp21, label %land.lhs.true23, label %if.end29

land.lhs.true23:                                  ; preds = %lor.lhs.false
  %21 = load i8*, i8** %n1, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %21, i64 %22
  %23 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %23 to i32
  %cmp26 = icmp sle i32 %conv25, 90
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true23, %land.lhs.true14
  br label %for.inc

if.end29:                                         ; preds = %land.lhs.true23, %lor.lhs.false, %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

for.inc:                                          ; preds = %if.then28, %if.then
  %24 = load i64, i64* %i, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end29
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_check_wildcard(i8* noundef %cn, %struct.mbedtls_asn1_buf* noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %cn.addr = alloca i8*, align 8
  %name.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %i = alloca i64, align 8
  %cn_idx = alloca i64, align 8
  %cn_len = alloca i64, align 8
  store i8* %cn, i8** %cn.addr, align 8
  store %struct.mbedtls_asn1_buf* %name, %struct.mbedtls_asn1_buf** %name.addr, align 8
  store i64 0, i64* %cn_idx, align 8
  %0 = load i8*, i8** %cn.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #7
  store i64 %call, i64* %cn_len, align 8
  %1 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %1, i32 0, i32 1
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %2, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %3, i32 0, i32 2
  %4 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 42
  br i1 %cmp1, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 2
  %7 = load i8*, i8** %p4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %cmp7 = icmp ne i32 %conv6, 46
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %cn_len, align 8
  %cmp9 = icmp ult i64 %9, %10
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %cn.addr, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 46
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  store i64 %14, i64* %cn_idx, align 8
  br label %for.end

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %if.then15, %for.cond
  %16 = load i64, i64* %cn_idx, align 8
  %cmp17 = icmp eq i64 %16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %for.end
  %17 = load i64, i64* %cn_len, align 8
  %18 = load i64, i64* %cn_idx, align 8
  %sub = sub i64 %17, %18
  %19 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %len21 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %19, i32 0, i32 1
  %20 = load i64, i64* %len21, align 8
  %sub22 = sub i64 %20, 1
  %cmp23 = icmp eq i64 %sub, %sub22
  br i1 %cmp23, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end20
  %21 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %p25 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %21, i32 0, i32 2
  %22 = load i8*, i8** %p25, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8*, i8** %cn.addr, align 8
  %24 = load i64, i64* %cn_idx, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %name.addr, align 8
  %len27 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %25, i32 0, i32 1
  %26 = load i64, i64* %len27, align 8
  %sub28 = sub i64 %26, 1
  %call29 = call i32 @x509_memcasecmp(i8* noundef %add.ptr, i8* noundef %add.ptr26, i64 noundef %sub28) #5
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %land.lhs.true, %if.end20
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then32, %if.then19, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_keypair*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #5
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_ecp_keypair*
  store %struct.mbedtls_ecp_keypair* %4, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %retval, align 8
  ret %struct.mbedtls_ecp_keypair* %5
}

declare dso_local i32 @mbedtls_x509_time_is_past(%struct.mbedtls_x509_time* noundef) #2

declare dso_local i32 @mbedtls_x509_time_is_future(%struct.mbedtls_x509_time* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_profile_check_md_alg(%struct.mbedtls_x509_crt_profile* noundef %profile, i32 noundef %md_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %md_alg.addr = alloca i32, align 4
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %allowed_mds = getelementptr inbounds %struct.mbedtls_x509_crt_profile, %struct.mbedtls_x509_crt_profile* %1, i32 0, i32 0
  %2 = load i32, i32* %allowed_mds, align 4
  %3 = load i32, i32* %md_alg.addr, align 4
  %sub = sub i32 %3, 1
  %shl = shl i32 1, %sub
  %and = and i32 %2, %shl
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_check_ee_locally_trusted(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %trust_ca) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %cur = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %0, i32 0, i32 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %1, i32 0, i32 9
  %call = call i32 @x509_name_cmp(%struct.mbedtls_asn1_named_data* noundef %issuer, %struct.mbedtls_asn1_named_data* noundef %subject) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crt* %2, %struct.mbedtls_x509_crt** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %cmp1 = icmp ne %struct.mbedtls_x509_crt* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %4, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %raw2 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %6, i32 0, i32 1
  %len3 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw2, i32 0, i32 1
  %7 = load i64, i64* %len3, align 8
  %cmp4 = icmp eq i64 %5, %7
  br i1 %cmp4, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw5 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %8, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw5, i32 0, i32 2
  %9 = load i8*, i8** %p, align 8
  %10 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %raw6 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %10, i32 0, i32 1
  %p7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw6, i32 0, i32 2
  %11 = load i8*, i8** %p7, align 8
  %12 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %raw8 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %12, i32 0, i32 1
  %len9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw8, i32 0, i32 1
  %13 = load i64, i64* %len9, align 8
  %call10 = call i32 @memcmp(i8* noundef %9, i8* noundef %11, i64 noundef %13) #7
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %14 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %14, i32 0, i32 29
  %15 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %15, %struct.mbedtls_x509_crt** %cur, align 8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_find_parent(%struct.mbedtls_x509_crt* noundef %child, %struct.mbedtls_x509_crt* noundef %trust_ca, %struct.mbedtls_x509_crt** noundef %parent, i32* noundef %parent_is_trusted, i32* noundef %signature_is_good, i32 noundef %path_cnt, i32 noundef %self_cnt, i8* noundef %rs_ctx) #0 {
entry:
  %child.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %trust_ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %parent.addr = alloca %struct.mbedtls_x509_crt**, align 8
  %parent_is_trusted.addr = alloca i32*, align 8
  %signature_is_good.addr = alloca i32*, align 8
  %path_cnt.addr = alloca i32, align 4
  %self_cnt.addr = alloca i32, align 4
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %search_list = alloca %struct.mbedtls_x509_crt*, align 8
  store %struct.mbedtls_x509_crt* %child, %struct.mbedtls_x509_crt** %child.addr, align 8
  store %struct.mbedtls_x509_crt* %trust_ca, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  store %struct.mbedtls_x509_crt** %parent, %struct.mbedtls_x509_crt*** %parent.addr, align 8
  store i32* %parent_is_trusted, i32** %parent_is_trusted.addr, align 8
  store i32* %signature_is_good, i32** %signature_is_good.addr, align 8
  store i32 %path_cnt, i32* %path_cnt.addr, align 4
  store i32 %self_cnt, i32* %self_cnt.addr, align 4
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32*, i32** %parent_is_trusted.addr, align 8
  store i32 1, i32* %0, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %1 = load i32*, i32** %parent_is_trusted.addr, align 8
  %2 = load i32, i32* %1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %trust_ca.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %4 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %4, i32 0, i32 29
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mbedtls_x509_crt* [ %3, %cond.true ], [ %5, %cond.false ]
  store %struct.mbedtls_x509_crt* %cond, %struct.mbedtls_x509_crt** %search_list, align 8
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %7 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %search_list, align 8
  %8 = load %struct.mbedtls_x509_crt**, %struct.mbedtls_x509_crt*** %parent.addr, align 8
  %9 = load i32*, i32** %signature_is_good.addr, align 8
  %10 = load i32*, i32** %parent_is_trusted.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %path_cnt.addr, align 4
  %13 = load i32, i32* %self_cnt.addr, align 4
  %14 = load i8*, i8** %rs_ctx.addr, align 8
  %call = call i32 @x509_crt_find_parent_in(%struct.mbedtls_x509_crt* noundef %6, %struct.mbedtls_x509_crt* noundef %7, %struct.mbedtls_x509_crt** noundef %8, i32* noundef %9, i32 noundef %11, i32 noundef %12, i32 noundef %13, i8* noundef %14) #5
  store i32 %call, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %16 = load %struct.mbedtls_x509_crt**, %struct.mbedtls_x509_crt*** %parent.addr, align 8
  %17 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %16, align 8
  %cmp = icmp ne %struct.mbedtls_x509_crt* %17, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %18 = load i32*, i32** %parent_is_trusted.addr, align 8
  %19 = load i32, i32* %18, align 4
  %cmp1 = icmp eq i32 %19, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %20 = load i32*, i32** %parent_is_trusted.addr, align 8
  store i32 0, i32* %20, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %21 = load %struct.mbedtls_x509_crt**, %struct.mbedtls_x509_crt*** %parent.addr, align 8
  %22 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %21, align 8
  %cmp2 = icmp eq %struct.mbedtls_x509_crt* %22, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.end
  %23 = load i32*, i32** %parent_is_trusted.addr, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %signature_is_good.addr, align 8
  store i32 0, i32* %24, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.end
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_name_cmp(%struct.mbedtls_asn1_named_data* noundef %a, %struct.mbedtls_asn1_named_data* noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %b.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  store %struct.mbedtls_asn1_named_data* %a, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  store %struct.mbedtls_asn1_named_data* %b, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %entry
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_named_data* %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %cmp1 = icmp ne %struct.mbedtls_asn1_named_data* %1, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %cmp2 = icmp eq %struct.mbedtls_asn1_named_data* %3, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %cmp3 = icmp eq %struct.mbedtls_asn1_named_data* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %oid = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %5, i32 0, i32 0
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 0
  %6 = load i32, i32* %tag, align 8
  %7 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %oid4 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %7, i32 0, i32 0
  %tag5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid4, i32 0, i32 0
  %8 = load i32, i32* %tag5, align 8
  %cmp6 = icmp ne i32 %6, %8
  br i1 %cmp6, label %if.then19, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %oid8 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %9, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid8, i32 0, i32 1
  %10 = load i64, i64* %len, align 8
  %11 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %oid9 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %11, i32 0, i32 0
  %len10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid9, i32 0, i32 1
  %12 = load i64, i64* %len10, align 8
  %cmp11 = icmp ne i64 %10, %12
  br i1 %cmp11, label %if.then19, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %13 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %oid13 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %13, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid13, i32 0, i32 2
  %14 = load i8*, i8** %p, align 8
  %15 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %oid14 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %15, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid14, i32 0, i32 2
  %16 = load i8*, i8** %p15, align 8
  %17 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %oid16 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %17, i32 0, i32 0
  %len17 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid16, i32 0, i32 1
  %18 = load i64, i64* %len17, align 8
  %call = call i32 @memcmp(i8* noundef %14, i8* noundef %16, i64 noundef %18) #7
  %cmp18 = icmp ne i32 %call, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false12, %lor.lhs.false7, %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false12
  %19 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %19, i32 0, i32 1
  %20 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %val21 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %20, i32 0, i32 1
  %call22 = call i32 @x509_string_cmp(%struct.mbedtls_asn1_buf* noundef %val, %struct.mbedtls_asn1_buf* noundef %val21) #5
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end20
  %21 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %next_merged = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %21, i32 0, i32 3
  %22 = load i8, i8* %next_merged, align 8
  %conv = zext i8 %22 to i32
  %23 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %next_merged26 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %23, i32 0, i32 3
  %24 = load i8, i8* %next_merged26, align 8
  %conv27 = zext i8 %24 to i32
  %cmp28 = icmp ne i32 %conv, %conv27
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  store i32 -1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end25
  %25 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %25, i32 0, i32 2
  %26 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %26, %struct.mbedtls_asn1_named_data** %a.addr, align 8
  %27 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  %next32 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %27, i32 0, i32 2
  %28 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next32, align 8
  store %struct.mbedtls_asn1_named_data* %28, %struct.mbedtls_asn1_named_data** %b.addr, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then30, %if.then24, %if.then19, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_verifycrl(%struct.mbedtls_x509_crt* noundef %crt, %struct.mbedtls_x509_crt* noundef %ca, %struct.mbedtls_x509_crl* noundef %crl_list, %struct.mbedtls_x509_crt_profile* noundef %profile) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %ca.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %crl_list.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %profile.addr = alloca %struct.mbedtls_x509_crt_profile*, align 8
  %flags = alloca i32, align 4
  %hash = alloca [64 x i8], align 16
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %hash_length = alloca i64, align 8
  store %struct.mbedtls_x509_crt* %crt, %struct.mbedtls_x509_crt** %crt.addr, align 8
  store %struct.mbedtls_x509_crt* %ca, %struct.mbedtls_x509_crt** %ca.addr, align 8
  store %struct.mbedtls_x509_crl* %crl_list, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  store %struct.mbedtls_x509_crt_profile* %profile, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crt* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %flags, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end62, %if.then4, %if.end
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %cmp1 = icmp ne %struct.mbedtls_x509_crl* %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %3, i32 0, i32 2
  %4 = load i32, i32* %version, align 8
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %5, i32 0, i32 5
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %6, i32 0, i32 9
  %call = call i32 @x509_name_cmp(%struct.mbedtls_asn1_named_data* noundef %issuer, %struct.mbedtls_asn1_named_data* noundef %subject) #5
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %while.body
  %7 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %7, i32 0, i32 15
  %8 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next, align 8
  store %struct.mbedtls_x509_crl* %8, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  br label %while.cond, !llvm.loop !34

if.end5:                                          ; preds = %lor.lhs.false
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca.addr, align 8
  %call6 = call i32 @mbedtls_x509_crt_check_key_usage(%struct.mbedtls_x509_crt* noundef %9, i32 noundef 2) #5
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %10 = load i32, i32* %flags, align 4
  %or = or i32 %10, 16
  store i32 %or, i32* %flags, align 4
  br label %while.end

if.end9:                                          ; preds = %if.end5
  %11 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %12 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %12, i32 0, i32 12
  %13 = load i32, i32* %sig_md, align 8
  %call10 = call i32 @x509_profile_check_md_alg(%struct.mbedtls_x509_crt_profile* noundef %11, i32 noundef %13) #5
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %14 = load i32, i32* %flags, align 4
  %or13 = or i32 %14, 131072
  store i32 %or13, i32* %flags, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9
  %15 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %16 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %16, i32 0, i32 13
  %17 = load i32, i32* %sig_pk, align 4
  %call15 = call i32 @x509_profile_check_pk_alg(%struct.mbedtls_x509_crt_profile* noundef %15, i32 noundef %17) #5
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %18 = load i32, i32* %flags, align 4
  %or18 = or i32 %18, 262144
  store i32 %or18, i32* %flags, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  %19 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig_md20 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %19, i32 0, i32 12
  %20 = load i32, i32* %sig_md20, align 8
  %call21 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %20) #5
  store %struct.mbedtls_md_info_t* %call21, %struct.mbedtls_md_info_t** %md_info, align 8
  %21 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call22 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %21) #5
  %conv = zext i8 %call22 to i64
  store i64 %conv, i64* %hash_length, align 8
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %23 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %tbs = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %23, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs, i32 0, i32 2
  %24 = load i8*, i8** %p, align 8
  %25 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %tbs23 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %25, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs23, i32 0, i32 1
  %26 = load i64, i64* %len, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call24 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %22, i8* noundef %24, i64 noundef %26, i8* noundef %arraydecay) #5
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end19
  %27 = load i32, i32* %flags, align 4
  %or28 = or i32 %27, 16
  store i32 %or28, i32* %flags, align 4
  br label %while.end

if.end29:                                         ; preds = %if.end19
  %28 = load %struct.mbedtls_x509_crt_profile*, %struct.mbedtls_x509_crt_profile** %profile.addr, align 8
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %29, i32 0, i32 13
  %call30 = call i32 @x509_profile_check_key(%struct.mbedtls_x509_crt_profile* noundef %28, %struct.mbedtls_pk_context* noundef %pk) #5
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  %30 = load i32, i32* %flags, align 4
  %or34 = or i32 %30, 65536
  store i32 %or34, i32* %flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29
  %31 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig_pk36 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %31, i32 0, i32 13
  %32 = load i32, i32* %sig_pk36, align 4
  %33 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %33, i32 0, i32 14
  %34 = load i8*, i8** %sig_opts, align 8
  %35 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %ca.addr, align 8
  %pk37 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %35, i32 0, i32 13
  %36 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig_md38 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %36, i32 0, i32 12
  %37 = load i32, i32* %sig_md38, align 8
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %38 = load i64, i64* %hash_length, align 8
  %39 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %39, i32 0, i32 11
  %p40 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig, i32 0, i32 2
  %40 = load i8*, i8** %p40, align 8
  %41 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %sig41 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %41, i32 0, i32 11
  %len42 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig41, i32 0, i32 1
  %42 = load i64, i64* %len42, align 8
  %call43 = call i32 @mbedtls_pk_verify_ext(i32 noundef %32, i8* noundef %34, %struct.mbedtls_pk_context* noundef %pk37, i32 noundef %37, i8* noundef %arraydecay39, i64 noundef %38, i8* noundef %40, i64 noundef %42) #5
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end35
  %43 = load i32, i32* %flags, align 4
  %or47 = or i32 %43, 16
  store i32 %or47, i32* %flags, align 4
  br label %while.end

if.end48:                                         ; preds = %if.end35
  %44 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %next_update = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %44, i32 0, i32 7
  %call49 = call i32 @mbedtls_x509_time_is_past(%struct.mbedtls_x509_time* noundef %next_update) #5
  %tobool = icmp ne i32 %call49, 0
  br i1 %tobool, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end48
  %45 = load i32, i32* %flags, align 4
  %or51 = or i32 %45, 32
  store i32 %or51, i32* %flags, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48
  %46 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %this_update = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %46, i32 0, i32 6
  %call53 = call i32 @mbedtls_x509_time_is_future(%struct.mbedtls_x509_time* noundef %this_update) #5
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end52
  %47 = load i32, i32* %flags, align 4
  %or56 = or i32 %47, 1024
  store i32 %or56, i32* %flags, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52
  %48 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %crt.addr, align 8
  %49 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %call58 = call i32 @mbedtls_x509_crt_is_revoked(%struct.mbedtls_x509_crt* noundef %48, %struct.mbedtls_x509_crl* noundef %49) #5
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end57
  %50 = load i32, i32* %flags, align 4
  %or61 = or i32 %50, 2
  store i32 %or61, i32* %flags, align 4
  br label %while.end

if.end62:                                         ; preds = %if.end57
  %51 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  %next63 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %51, i32 0, i32 15
  %52 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next63, align 8
  store %struct.mbedtls_x509_crl* %52, %struct.mbedtls_x509_crl** %crl_list.addr, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %if.then60, %if.then46, %if.then27, %if.then8, %while.cond
  %53 = load i32, i32* %flags, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_find_parent_in(%struct.mbedtls_x509_crt* noundef %child, %struct.mbedtls_x509_crt* noundef %candidates, %struct.mbedtls_x509_crt** noundef %r_parent, i32* noundef %r_signature_is_good, i32 noundef %top, i32 noundef %path_cnt, i32 noundef %self_cnt, i8* noundef %rs_ctx) #0 {
entry:
  %child.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %candidates.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %r_parent.addr = alloca %struct.mbedtls_x509_crt**, align 8
  %r_signature_is_good.addr = alloca i32*, align 8
  %top.addr = alloca i32, align 4
  %path_cnt.addr = alloca i32, align 4
  %self_cnt.addr = alloca i32, align 4
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %parent = alloca %struct.mbedtls_x509_crt*, align 8
  %fallback_parent = alloca %struct.mbedtls_x509_crt*, align 8
  %signature_is_good = alloca i32, align 4
  %fallback_signature_is_good = alloca i32, align 4
  store %struct.mbedtls_x509_crt* %child, %struct.mbedtls_x509_crt** %child.addr, align 8
  store %struct.mbedtls_x509_crt* %candidates, %struct.mbedtls_x509_crt** %candidates.addr, align 8
  store %struct.mbedtls_x509_crt** %r_parent, %struct.mbedtls_x509_crt*** %r_parent.addr, align 8
  store i32* %r_signature_is_good, i32** %r_signature_is_good.addr, align 8
  store i32 %top, i32* %top.addr, align 4
  store i32 %path_cnt, i32* %path_cnt.addr, align 4
  store i32 %self_cnt, i32* %self_cnt.addr, align 4
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %signature_is_good, align 4
  store %struct.mbedtls_x509_crt* null, %struct.mbedtls_x509_crt** %fallback_parent, align 8
  store i32 0, i32* %fallback_signature_is_good, align 4
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %candidates.addr, align 8
  store %struct.mbedtls_x509_crt* %0, %struct.mbedtls_x509_crt** %parent, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %cmp = icmp ne %struct.mbedtls_x509_crt* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %4 = load i32, i32* %top.addr, align 4
  %call = call i32 @x509_crt_check_parent(%struct.mbedtls_x509_crt* noundef %2, %struct.mbedtls_x509_crt* noundef %3, i32 noundef %4) #5
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %max_pathlen = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %5, i32 0, i32 21
  %6 = load i32, i32* %max_pathlen, align 8
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %max_pathlen3 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %7, i32 0, i32 21
  %8 = load i32, i32* %max_pathlen3, align 8
  %conv = sext i32 %8 to i64
  %9 = load i32, i32* %path_cnt.addr, align 4
  %add = add i32 1, %9
  %10 = load i32, i32* %self_cnt.addr, align 4
  %sub = sub i32 %add, %10
  %conv4 = zext i32 %sub to i64
  %cmp5 = icmp ult i64 %conv, %conv4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  br label %for.inc

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %11 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %12 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %13 = load i8*, i8** %rs_ctx.addr, align 8
  %call9 = call i32 @x509_crt_check_signature(%struct.mbedtls_x509_crt* noundef %11, %struct.mbedtls_x509_crt* noundef %12, i8* noundef %13) #5
  store i32 %call9, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp10 = icmp eq i32 %15, 0
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %signature_is_good, align 4
  %16 = load i32, i32* %top.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true12, label %if.end15

land.lhs.true12:                                  ; preds = %if.end8
  %17 = load i32, i32* %signature_is_good, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %land.lhs.true12
  br label %for.inc

if.end15:                                         ; preds = %land.lhs.true12, %if.end8
  %18 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %valid_to = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %18, i32 0, i32 11
  %call16 = call i32 @mbedtls_x509_time_is_past(%struct.mbedtls_x509_time* noundef %valid_to) #5
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %19 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %valid_from = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %19, i32 0, i32 10
  %call18 = call i32 @mbedtls_x509_time_is_future(%struct.mbedtls_x509_time* noundef %valid_from) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %lor.lhs.false, %if.end15
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %fallback_parent, align 8
  %cmp21 = icmp eq %struct.mbedtls_x509_crt* %20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  %21 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  store %struct.mbedtls_x509_crt* %21, %struct.mbedtls_x509_crt** %fallback_parent, align 8
  %22 = load i32, i32* %signature_is_good, align 4
  store i32 %22, i32* %fallback_signature_is_good, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20
  br label %for.inc

if.end25:                                         ; preds = %lor.lhs.false
  %23 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %24 = load %struct.mbedtls_x509_crt**, %struct.mbedtls_x509_crt*** %r_parent.addr, align 8
  store %struct.mbedtls_x509_crt* %23, %struct.mbedtls_x509_crt** %24, align 8
  %25 = load i32, i32* %signature_is_good, align 4
  %26 = load i32*, i32** %r_signature_is_good.addr, align 8
  store i32 %25, i32* %26, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end24, %if.then14, %if.then7, %if.then
  %27 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %27, i32 0, i32 29
  %28 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %next, align 8
  store %struct.mbedtls_x509_crt* %28, %struct.mbedtls_x509_crt** %parent, align 8
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %if.end25, %for.cond
  %29 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent, align 8
  %cmp26 = icmp eq %struct.mbedtls_x509_crt* %29, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.end
  %30 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %fallback_parent, align 8
  %31 = load %struct.mbedtls_x509_crt**, %struct.mbedtls_x509_crt*** %r_parent.addr, align 8
  store %struct.mbedtls_x509_crt* %30, %struct.mbedtls_x509_crt** %31, align 8
  %32 = load i32, i32* %fallback_signature_is_good, align 4
  %33 = load i32*, i32** %r_signature_is_good.addr, align 8
  store i32 %32, i32* %33, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.end
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_check_parent(%struct.mbedtls_x509_crt* noundef %child, %struct.mbedtls_x509_crt* noundef %parent, i32 noundef %top) #0 {
entry:
  %retval = alloca i32, align 4
  %child.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %parent.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %top.addr = alloca i32, align 4
  %need_ca_bit = alloca i32, align 4
  store %struct.mbedtls_x509_crt* %child, %struct.mbedtls_x509_crt** %child.addr, align 8
  store %struct.mbedtls_x509_crt* %parent, %struct.mbedtls_x509_crt** %parent.addr, align 8
  store i32 %top, i32* %top.addr, align 4
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %0, i32 0, i32 8
  %1 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %1, i32 0, i32 9
  %call = call i32 @x509_name_cmp(%struct.mbedtls_asn1_named_data* noundef %issuer, %struct.mbedtls_asn1_named_data* noundef %subject) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %need_ca_bit, align 4
  %2 = load i32, i32* %top.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %3, i32 0, i32 3
  %4 = load i32, i32* %version, align 8
  %cmp1 = icmp slt i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  store i32 0, i32* %need_ca_bit, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %5 = load i32, i32* %need_ca_bit, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %land.lhs.true5, label %if.end8

land.lhs.true5:                                   ; preds = %if.end3
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent.addr, align 8
  %ca_istrue = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %6, i32 0, i32 20
  %7 = load i32, i32* %ca_istrue, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true5, %if.end3
  %8 = load i32, i32* %need_ca_bit, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.end14

land.lhs.true10:                                  ; preds = %if.end8
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent.addr, align 8
  %call11 = call i32 @mbedtls_x509_crt_check_key_usage(%struct.mbedtls_x509_crt* noundef %9, i32 noundef 4) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true10
  store i32 -1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %land.lhs.true10, %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then7, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_crt_check_signature(%struct.mbedtls_x509_crt* noundef %child, %struct.mbedtls_x509_crt* noundef %parent, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %child.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %parent.addr = alloca %struct.mbedtls_x509_crt*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %hash_len = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store %struct.mbedtls_x509_crt* %child, %struct.mbedtls_x509_crt** %child.addr, align 8
  store %struct.mbedtls_x509_crt* %parent, %struct.mbedtls_x509_crt** %parent.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  %0 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %0, i32 0, i32 26
  %1 = load i32, i32* %sig_md, align 8
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %1) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %2 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call1 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %2) #5
  %conv = zext i8 %call1 to i64
  store i64 %conv, i64* %hash_len, align 8
  %3 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %4 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %tbs = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %4, i32 0, i32 2
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs, i32 0, i32 2
  %5 = load i8*, i8** %p, align 8
  %6 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %tbs2 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %6, i32 0, i32 2
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs2, i32 0, i32 1
  %7 = load i64, i64* %len, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call3 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %3, i8* noundef %5, i64 noundef %7, i8* noundef %arraydecay) #5
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %8, i32 0, i32 13
  %9 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %9, i32 0, i32 27
  %10 = load i32, i32* %sig_pk, align 4
  %call5 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %pk, i32 noundef %10) #5
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load i8*, i8** %rs_ctx.addr, align 8
  %12 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig_pk8 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %12, i32 0, i32 27
  %13 = load i32, i32* %sig_pk8, align 4
  %14 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %14, i32 0, i32 28
  %15 = load i8*, i8** %sig_opts, align 8
  %16 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %parent.addr, align 8
  %pk9 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %16, i32 0, i32 13
  %17 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig_md10 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %17, i32 0, i32 26
  %18 = load i32, i32* %sig_md10, align 8
  %arraydecay11 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %19 = load i64, i64* %hash_len, align 8
  %20 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %20, i32 0, i32 25
  %p12 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig, i32 0, i32 2
  %21 = load i8*, i8** %p12, align 8
  %22 = load %struct.mbedtls_x509_crt*, %struct.mbedtls_x509_crt** %child.addr, align 8
  %sig13 = getelementptr inbounds %struct.mbedtls_x509_crt, %struct.mbedtls_x509_crt* %22, i32 0, i32 25
  %len14 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig13, i32 0, i32 1
  %23 = load i64, i64* %len14, align 8
  %call15 = call i32 @mbedtls_pk_verify_ext(i32 noundef %13, i8* noundef %15, %struct.mbedtls_pk_context* noundef %pk9, i32 noundef %18, i8* noundef %arraydecay11, i64 noundef %19, i8* noundef %21, i64 noundef %23) #5
  store i32 %call15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #2

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #2

declare dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_pk_verify_ext(i32 noundef, i8* noundef, %struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_string_cmp(%struct.mbedtls_asn1_buf* noundef %a, %struct.mbedtls_asn1_buf* noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %b.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  store %struct.mbedtls_asn1_buf* %a, %struct.mbedtls_asn1_buf** %a.addr, align 8
  store %struct.mbedtls_asn1_buf* %b, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 0
  %1 = load i32, i32* %tag, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %tag1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 0
  %3 = load i32, i32* %tag1, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %4, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %len2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 1
  %7 = load i64, i64* %len2, align 8
  %cmp3 = icmp eq i64 %5, %7
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 2
  %9 = load i8*, i8** %p, align 8
  %10 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %10, i32 0, i32 2
  %11 = load i8*, i8** %p5, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 1
  %13 = load i64, i64* %len6, align 8
  %call = call i32 @memcmp(i8* noundef %9, i8* noundef %11, i64 noundef %13) #7
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %tag8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 0
  %15 = load i32, i32* %tag8, align 8
  %cmp9 = icmp eq i32 %15, 12
  br i1 %cmp9, label %land.lhs.true12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %tag10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %16, i32 0, i32 0
  %17 = load i32, i32* %tag10, align 8
  %cmp11 = icmp eq i32 %17, 19
  br i1 %cmp11, label %land.lhs.true12, label %if.end29

land.lhs.true12:                                  ; preds = %lor.lhs.false, %if.end
  %18 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %tag13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %18, i32 0, i32 0
  %19 = load i32, i32* %tag13, align 8
  %cmp14 = icmp eq i32 %19, 12
  br i1 %cmp14, label %land.lhs.true18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true12
  %20 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %tag16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %20, i32 0, i32 0
  %21 = load i32, i32* %tag16, align 8
  %cmp17 = icmp eq i32 %21, 19
  br i1 %cmp17, label %land.lhs.true18, label %if.end29

land.lhs.true18:                                  ; preds = %lor.lhs.false15, %land.lhs.true12
  %22 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %len19 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %22, i32 0, i32 1
  %23 = load i64, i64* %len19, align 8
  %24 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %len20 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %24, i32 0, i32 1
  %25 = load i64, i64* %len20, align 8
  %cmp21 = icmp eq i64 %23, %25
  br i1 %cmp21, label %land.lhs.true22, label %if.end29

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %26 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %a.addr, align 8
  %p23 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %26, i32 0, i32 2
  %27 = load i8*, i8** %p23, align 8
  %28 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %p24 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %28, i32 0, i32 2
  %29 = load i8*, i8** %p24, align 8
  %30 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %b.addr, align 8
  %len25 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %30, i32 0, i32 1
  %31 = load i64, i64* %len25, align 8
  %call26 = call i32 @x509_memcasecmp(i8* noundef %27, i8* noundef %29, i64 noundef %31) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true22
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true22, %land.lhs.true18, %lor.lhs.false15, %lor.lhs.false
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then28, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
