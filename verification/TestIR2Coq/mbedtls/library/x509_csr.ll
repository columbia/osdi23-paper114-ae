; ModuleID = 'x509_csr.c'
source_filename = "x509_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_csr = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_pem_context = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [11 x i8] c"x509_csr.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"-----BEGIN CERTIFICATE REQUEST-----\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"-----END CERTIFICATE REQUEST-----\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"-----BEGIN NEW CERTIFICATE REQUEST-----\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"-----END NEW CERTIFICATE REQUEST-----\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%sCSR version   : %d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\0A%ssubject name  : \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A%ssigned using  : \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\0A%s%-14s: %d bits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_csr_parse_der(%struct.mbedtls_x509_csr* noundef %csr, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %csr.addr = alloca %struct.mbedtls_x509_csr*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %sig_params = alloca %struct.mbedtls_asn1_buf, align 8
  store %struct.mbedtls_x509_csr* %csr, %struct.mbedtls_x509_csr** %csr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.mbedtls_asn1_buf* %sig_params to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 24) #3
  %1 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_csr* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %buflen.addr, align 8
  %cmp3 = icmp eq i64 %3, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef %4) #4
  %5 = load i64, i64* %buflen.addr, align 8
  store i64 %5, i64* %len, align 8
  %call4 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #3
  store i8* %call4, i8** %p, align 8
  %6 = load i8*, i8** %p, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load i64, i64* %buflen.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %7, i8* noundef %8, i64 noundef %9) #3
  %10 = load i8*, i8** %p, align 8
  %11 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %11, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 2
  store i8* %10, i8** %p9, align 8
  %12 = load i64, i64* %len, align 8
  %13 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw10 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %13, i32 0, i32 0
  %len11 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw10, i32 0, i32 1
  store i64 %12, i64* %len11, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %add.ptr, i8** %end, align 8
  %16 = load i8*, i8** %end, align 8
  %call12 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %16, i64* noundef %len, i32 noundef 48) #4
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  %17 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %17) #4
  store i32 -8576, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end7
  %18 = load i64, i64* %len, align 8
  %19 = load i8*, i8** %end, align 8
  %20 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp16 = icmp ne i64 %18, %sub.ptr.sub
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %21 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %21) #4
  %call18 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #4
  store i32 %call18, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %22 = load i8*, i8** %p, align 8
  %23 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %cri = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %23, i32 0, i32 1
  %p20 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cri, i32 0, i32 2
  store i8* %22, i8** %p20, align 8
  %24 = load i8*, i8** %end, align 8
  %call21 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %24, i64* noundef %len, i32 noundef 48) #4
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  %25 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %25) #4
  %26 = load i32, i32* %ret, align 4
  %call24 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 147) #4
  store i32 %call24, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %27 = load i8*, i8** %p, align 8
  %28 = load i64, i64* %len, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %add.ptr26, i8** %end, align 8
  %29 = load i8*, i8** %end, align 8
  %30 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %cri27 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %30, i32 0, i32 1
  %p28 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cri27, i32 0, i32 2
  %31 = load i8*, i8** %p28, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %31 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %32 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %cri32 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %32, i32 0, i32 1
  %len33 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %cri32, i32 0, i32 1
  store i64 %sub.ptr.sub31, i64* %len33, align 8
  %33 = load i8*, i8** %end, align 8
  %34 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %34, i32 0, i32 2
  %call34 = call i32 @x509_csr_get_version(i8** noundef %p, i8* noundef %33, i32* noundef %version) #4
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end25
  %35 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %35) #4
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end25
  %37 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %version38 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %37, i32 0, i32 2
  %38 = load i32, i32* %version38, align 8
  %cmp39 = icmp ne i32 %38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  %39 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %39) #4
  store i32 -9600, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end37
  %40 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %version42 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %40, i32 0, i32 2
  %41 = load i32, i32* %version42, align 8
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %version42, align 8
  %42 = load i8*, i8** %p, align 8
  %43 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %subject_raw = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %43, i32 0, i32 3
  %p43 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw, i32 0, i32 2
  store i8* %42, i8** %p43, align 8
  %44 = load i8*, i8** %end, align 8
  %call44 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %44, i64* noundef %len, i32 noundef 48) #4
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end41
  %45 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %45) #4
  %46 = load i32, i32* %ret, align 4
  %call47 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %46, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #4
  store i32 %call47, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end41
  %47 = load i8*, i8** %p, align 8
  %48 = load i64, i64* %len, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %47, i64 %48
  %49 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %49, i32 0, i32 4
  %call50 = call i32 @mbedtls_x509_get_name(i8** noundef %p, i8* noundef %add.ptr49, %struct.mbedtls_asn1_named_data* noundef %subject) #4
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %50 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %50) #4
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end48
  %52 = load i8*, i8** %p, align 8
  %53 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %subject_raw54 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %53, i32 0, i32 3
  %p55 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw54, i32 0, i32 2
  %54 = load i8*, i8** %p55, align 8
  %sub.ptr.lhs.cast56 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast57 = ptrtoint i8* %54 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %55 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %subject_raw59 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %55, i32 0, i32 3
  %len60 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %subject_raw59, i32 0, i32 1
  store i64 %sub.ptr.sub58, i64* %len60, align 8
  %56 = load i8*, i8** %end, align 8
  %57 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %57, i32 0, i32 5
  %call61 = call i32 @mbedtls_pk_parse_subpubkey(i8** noundef %p, i8* noundef %56, %struct.mbedtls_pk_context* noundef %pk) #4
  store i32 %call61, i32* %ret, align 4
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end53
  %58 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %58) #4
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end53
  %60 = load i8*, i8** %end, align 8
  %call65 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %60, i64* noundef %len, i32 noundef 160) #4
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  %61 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %61) #4
  %62 = load i32, i32* %ret, align 4
  %call68 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %62, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 213) #4
  store i32 %call68, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end64
  %63 = load i64, i64* %len, align 8
  %64 = load i8*, i8** %p, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %add.ptr70, i8** %p, align 8
  %65 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw71 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %65, i32 0, i32 0
  %p72 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw71, i32 0, i32 2
  %66 = load i8*, i8** %p72, align 8
  %67 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw73 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %67, i32 0, i32 0
  %len74 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw73, i32 0, i32 1
  %68 = load i64, i64* %len74, align 8
  %add.ptr75 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %add.ptr75, i8** %end, align 8
  %69 = load i8*, i8** %end, align 8
  %70 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_oid = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %70, i32 0, i32 6
  %call76 = call i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %69, %struct.mbedtls_asn1_buf* noundef %sig_oid, %struct.mbedtls_asn1_buf* noundef %sig_params) #4
  store i32 %call76, i32* %ret, align 4
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end69
  %71 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %71) #4
  %72 = load i32, i32* %ret, align 4
  store i32 %72, i32* %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.end69
  %73 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_oid80 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %73, i32 0, i32 6
  %74 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %74, i32 0, i32 8
  %75 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %75, i32 0, i32 9
  %76 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %76, i32 0, i32 10
  %call81 = call i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef %sig_oid80, %struct.mbedtls_asn1_buf* noundef %sig_params, i32* noundef %sig_md, i32* noundef %sig_pk, i8** noundef %sig_opts) #4
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  %77 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %77) #4
  store i32 -9728, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end79
  %78 = load i8*, i8** %end, align 8
  %79 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %79, i32 0, i32 7
  %call85 = call i32 @mbedtls_x509_get_sig(i8** noundef %p, i8* noundef %78, %struct.mbedtls_asn1_buf* noundef %sig) #4
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  %80 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %80) #4
  %81 = load i32, i32* %ret, align 4
  store i32 %81, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end84
  %82 = load i8*, i8** %p, align 8
  %83 = load i8*, i8** %end, align 8
  %cmp89 = icmp ne i8* %82, %83
  br i1 %cmp89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end88
  %84 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  call void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %84) #4
  %call91 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 248) #4
  store i32 %call91, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end88
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end92, %if.then90, %if.then87, %if.then83, %if.then78, %if.then67, %if.then63, %if.then52, %if.then46, %if.then40, %if.then36, %if.then23, %if.then17, %if.then14, %if.then6, %if.then
  %85 = load i32, i32* %retval, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_csr_init(%struct.mbedtls_x509_csr* noundef %csr) #0 {
entry:
  %csr.addr = alloca %struct.mbedtls_x509_csr*, align 8
  store %struct.mbedtls_x509_csr* %csr, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %0 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %1 = bitcast %struct.mbedtls_x509_csr* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 224) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_csr_free(%struct.mbedtls_x509_csr* noundef %csr) #0 {
entry:
  %csr.addr = alloca %struct.mbedtls_x509_csr*, align 8
  %name_cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  %name_prv = alloca %struct.mbedtls_asn1_named_data*, align 8
  store %struct.mbedtls_x509_csr* %csr, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %0 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_csr* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %1, i32 0, i32 5
  call void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef %pk) #4
  %2 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %2, i32 0, i32 10
  %3 = load i8*, i8** %sig_opts, align 8
  call void @free(i8* noundef %3) #3
  %4 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %4, i32 0, i32 4
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %subject, i32 0, i32 2
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %5, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %cmp1 = icmp ne %struct.mbedtls_asn1_named_data* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  store %struct.mbedtls_asn1_named_data* %7, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %next2 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %8, i32 0, i32 2
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next2, align 8
  store %struct.mbedtls_asn1_named_data* %9, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  %10 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %11 = bitcast %struct.mbedtls_asn1_named_data* %10 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %11, i64 noundef 64) #4
  %12 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %13 = bitcast %struct.mbedtls_asn1_named_data* %12 to i8*
  call void @free(i8* noundef %13) #3
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %14 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %14, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 2
  %15 = load i8*, i8** %p, align 8
  %cmp3 = icmp ne i8* %15, null
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %while.end
  %16 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw5 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %16, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw5, i32 0, i32 2
  %17 = load i8*, i8** %p6, align 8
  %18 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw7 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %18, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw7, i32 0, i32 1
  %19 = load i64, i64* %len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %17, i64 noundef %19) #4
  %20 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %raw8 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %20, i32 0, i32 0
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw8, i32 0, i32 2
  %21 = load i8*, i8** %p9, align 8
  call void @free(i8* noundef %21) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %while.end
  %22 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %23 = bitcast %struct.mbedtls_x509_csr* %22 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %23, i64 noundef 224) #4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
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

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_csr_get_version(i8** noundef %p, i8* noundef %end, i32* noundef %ver) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ver.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %ver, i32** %ver.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i32*, i32** %ver.addr, align 8
  %call = call i32 @mbedtls_asn1_get_int(i8** noundef %0, i8* noundef %1, i32* noundef %2) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %3, -98
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32*, i32** %ver.addr, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %ret, align 4
  %call3 = call i32 @mbedtls_error_add(i32 noundef -8704, i32 noundef %5, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #4
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end, %if.then2
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_x509_get_name(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_pk_parse_subpubkey(i8** noundef, i8* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_x509_get_alg(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef, i32* noundef, i32* noundef, i8** noundef) #2

declare dso_local i32 @mbedtls_x509_get_sig(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_csr_parse(%struct.mbedtls_x509_csr* noundef %csr, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %csr.addr = alloca %struct.mbedtls_x509_csr*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %use_len = alloca i64, align 8
  %pem = alloca %struct.mbedtls_pem_context, align 8
  store %struct.mbedtls_x509_csr* %csr, %struct.mbedtls_x509_csr** %csr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_csr* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i64, i64* %buflen.addr, align 8
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %buflen.addr, align 8
  %sub = sub i64 %4, 1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.end23

if.then6:                                         ; preds = %if.end
  call void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %pem) #4
  %6 = load i8*, i8** %buf.addr, align 8
  %call = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6, i8* noundef null, i64 noundef 0, i64* noundef %use_len) #4
  store i32 %call, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp7 = icmp eq i32 %7, -4224
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %8 = load i8*, i8** %buf.addr, align 8
  %call10 = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* noundef %8, i8* noundef null, i64 noundef 0, i64* noundef %use_len) #4
  store i32 %call10, i32* %ret, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then6
  %9 = load i32, i32* %ret, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  %10 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %buf15 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %11 = load i8*, i8** %buf15, align 8
  %buflen16 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %12 = load i64, i64* %buflen16, align 8
  %call17 = call i32 @mbedtls_x509_csr_parse_der(%struct.mbedtls_x509_csr* noundef %10, i8* noundef %11, i64 noundef %12) #4
  store i32 %call17, i32* %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #4
  %13 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %13, -4224
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %15 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %16 = load i8*, i8** %buf.addr, align 8
  %17 = load i64, i64* %buflen.addr, align 8
  %call24 = call i32 @mbedtls_x509_csr_parse_der(%struct.mbedtls_x509_csr* noundef %15, i8* noundef %16, i64 noundef %17) #4
  store i32 %call24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then21, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare dso_local void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef) #2

declare dso_local i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_csr_parse_file(%struct.mbedtls_x509_csr* noundef %csr, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %csr.addr = alloca %struct.mbedtls_x509_csr*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.mbedtls_x509_csr* %csr, %struct.mbedtls_x509_csr** %csr.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @mbedtls_pk_load_file(i8* noundef %0, i8** noundef %buf, i64* noundef %n) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %3 = load i8*, i8** %buf, align 8
  %4 = load i64, i64* %n, align 8
  %call1 = call i32 @mbedtls_x509_csr_parse(%struct.mbedtls_x509_csr* noundef %2, i8* noundef %3, i64 noundef %4) #4
  store i32 %call1, i32* %ret, align 4
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %6) #4
  %7 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %7) #3
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
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_csr_info(i8* noundef %buf, i64 noundef %size, i8* noundef %prefix, %struct.mbedtls_x509_csr* noundef %csr) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %csr.addr = alloca %struct.mbedtls_x509_csr*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %key_size_str = alloca [14 x i8], align 1
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store %struct.mbedtls_x509_csr* %csr, %struct.mbedtls_x509_csr** %csr.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i64, i64* %n, align 8
  %4 = load i8*, i8** %prefix.addr, align 8
  %5 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %5, i32 0, i32 2
  %6 = load i32, i32* %version, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef %4, i32 noundef %6) #3
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %8 = load i32, i32* %ret, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %n, align 8
  %cmp1 = icmp uge i64 %conv, %9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %ret, align 4
  %conv3 = sext i32 %10 to i64
  %11 = load i64, i64* %n, align 8
  %sub = sub i64 %11, %conv3
  store i64 %sub, i64* %n, align 8
  %12 = load i32, i32* %ret, align 4
  %conv4 = sext i32 %12 to i64
  %13 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %conv4
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load i8*, i8** %prefix.addr, align 8
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %14, i64 noundef %15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* noundef %16) #3
  store i32 %call5, i32* %ret, align 4
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %17 = load i32, i32* %ret, align 4
  %cmp7 = icmp slt i32 %17, 0
  br i1 %cmp7, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %do.body6
  %18 = load i32, i32* %ret, align 4
  %conv10 = sext i32 %18 to i64
  %19 = load i64, i64* %n, align 8
  %cmp11 = icmp uge i64 %conv10, %19
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false9, %do.body6
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false9
  %20 = load i32, i32* %ret, align 4
  %conv15 = sext i32 %20 to i64
  %21 = load i64, i64* %n, align 8
  %sub16 = sub i64 %21, %conv15
  store i64 %sub16, i64* %n, align 8
  %22 = load i32, i32* %ret, align 4
  %conv17 = sext i32 %22 to i64
  %23 = load i8*, i8** %p, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %23, i64 %conv17
  store i8* %add.ptr18, i8** %p, align 8
  br label %do.end19

do.end19:                                         ; preds = %if.end14
  %24 = load i8*, i8** %p, align 8
  %25 = load i64, i64* %n, align 8
  %26 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %26, i32 0, i32 4
  %call20 = call i32 @mbedtls_x509_dn_gets(i8* noundef %24, i64 noundef %25, %struct.mbedtls_asn1_named_data* noundef %subject) #4
  store i32 %call20, i32* %ret, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.end19
  %27 = load i32, i32* %ret, align 4
  %cmp22 = icmp slt i32 %27, 0
  br i1 %cmp22, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %do.body21
  %28 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %28 to i64
  %29 = load i64, i64* %n, align 8
  %cmp26 = icmp uge i64 %conv25, %29
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false24, %do.body21
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false24
  %30 = load i32, i32* %ret, align 4
  %conv30 = sext i32 %30 to i64
  %31 = load i64, i64* %n, align 8
  %sub31 = sub i64 %31, %conv30
  store i64 %sub31, i64* %n, align 8
  %32 = load i32, i32* %ret, align 4
  %conv32 = sext i32 %32 to i64
  %33 = load i8*, i8** %p, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %33, i64 %conv32
  store i8* %add.ptr33, i8** %p, align 8
  br label %do.end34

do.end34:                                         ; preds = %if.end29
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %n, align 8
  %36 = load i8*, i8** %prefix.addr, align 8
  %call35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef %35, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* noundef %36) #3
  store i32 %call35, i32* %ret, align 4
  br label %do.body36

do.body36:                                        ; preds = %do.end34
  %37 = load i32, i32* %ret, align 4
  %cmp37 = icmp slt i32 %37, 0
  br i1 %cmp37, label %if.then43, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %do.body36
  %38 = load i32, i32* %ret, align 4
  %conv40 = sext i32 %38 to i64
  %39 = load i64, i64* %n, align 8
  %cmp41 = icmp uge i64 %conv40, %39
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false39, %do.body36
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %lor.lhs.false39
  %40 = load i32, i32* %ret, align 4
  %conv45 = sext i32 %40 to i64
  %41 = load i64, i64* %n, align 8
  %sub46 = sub i64 %41, %conv45
  store i64 %sub46, i64* %n, align 8
  %42 = load i32, i32* %ret, align 4
  %conv47 = sext i32 %42 to i64
  %43 = load i8*, i8** %p, align 8
  %add.ptr48 = getelementptr inbounds i8, i8* %43, i64 %conv47
  store i8* %add.ptr48, i8** %p, align 8
  br label %do.end49

do.end49:                                         ; preds = %if.end44
  %44 = load i8*, i8** %p, align 8
  %45 = load i64, i64* %n, align 8
  %46 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_oid = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %46, i32 0, i32 6
  %47 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %47, i32 0, i32 9
  %48 = load i32, i32* %sig_pk, align 4
  %49 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %49, i32 0, i32 8
  %50 = load i32, i32* %sig_md, align 8
  %51 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %51, i32 0, i32 10
  %52 = load i8*, i8** %sig_opts, align 8
  %call50 = call i32 @mbedtls_x509_sig_alg_gets(i8* noundef %44, i64 noundef %45, %struct.mbedtls_asn1_buf* noundef %sig_oid, i32 noundef %48, i32 noundef %50, i8* noundef %52) #4
  store i32 %call50, i32* %ret, align 4
  br label %do.body51

do.body51:                                        ; preds = %do.end49
  %53 = load i32, i32* %ret, align 4
  %cmp52 = icmp slt i32 %53, 0
  br i1 %cmp52, label %if.then58, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %do.body51
  %54 = load i32, i32* %ret, align 4
  %conv55 = sext i32 %54 to i64
  %55 = load i64, i64* %n, align 8
  %cmp56 = icmp uge i64 %conv55, %55
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %lor.lhs.false54, %do.body51
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %lor.lhs.false54
  %56 = load i32, i32* %ret, align 4
  %conv60 = sext i32 %56 to i64
  %57 = load i64, i64* %n, align 8
  %sub61 = sub i64 %57, %conv60
  store i64 %sub61, i64* %n, align 8
  %58 = load i32, i32* %ret, align 4
  %conv62 = sext i32 %58 to i64
  %59 = load i8*, i8** %p, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %59, i64 %conv62
  store i8* %add.ptr63, i8** %p, align 8
  br label %do.end64

do.end64:                                         ; preds = %if.end59
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %key_size_str, i64 0, i64 0
  %60 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %pk = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %60, i32 0, i32 5
  %call65 = call i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef %pk) #4
  %call66 = call i32 @mbedtls_x509_key_size_helper(i8* noundef %arraydecay, i64 noundef 14, i8* noundef %call65) #4
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.end64
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval, align 4
  br label %return

if.end70:                                         ; preds = %do.end64
  %62 = load i8*, i8** %p, align 8
  %63 = load i64, i64* %n, align 8
  %64 = load i8*, i8** %prefix.addr, align 8
  %arraydecay71 = getelementptr inbounds [14 x i8], [14 x i8]* %key_size_str, i64 0, i64 0
  %65 = load %struct.mbedtls_x509_csr*, %struct.mbedtls_x509_csr** %csr.addr, align 8
  %pk72 = getelementptr inbounds %struct.mbedtls_x509_csr, %struct.mbedtls_x509_csr* %65, i32 0, i32 5
  %call73 = call i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef %pk72) #4
  %conv74 = trunc i64 %call73 to i32
  %call75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %62, i64 noundef %63, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef %64, i8* noundef %arraydecay71, i32 noundef %conv74) #3
  store i32 %call75, i32* %ret, align 4
  br label %do.body76

do.body76:                                        ; preds = %if.end70
  %66 = load i32, i32* %ret, align 4
  %cmp77 = icmp slt i32 %66, 0
  br i1 %cmp77, label %if.then83, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %do.body76
  %67 = load i32, i32* %ret, align 4
  %conv80 = sext i32 %67 to i64
  %68 = load i64, i64* %n, align 8
  %cmp81 = icmp uge i64 %conv80, %68
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %lor.lhs.false79, %do.body76
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %lor.lhs.false79
  %69 = load i32, i32* %ret, align 4
  %conv85 = sext i32 %69 to i64
  %70 = load i64, i64* %n, align 8
  %sub86 = sub i64 %70, %conv85
  store i64 %sub86, i64* %n, align 8
  %71 = load i32, i32* %ret, align 4
  %conv87 = sext i32 %71 to i64
  %72 = load i8*, i8** %p, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %72, i64 %conv87
  store i8* %add.ptr88, i8** %p, align 8
  br label %do.end89

do.end89:                                         ; preds = %if.end84
  %73 = load i64, i64* %size.addr, align 8
  %74 = load i64, i64* %n, align 8
  %sub90 = sub i64 %73, %74
  %conv91 = trunc i64 %sub90 to i32
  store i32 %conv91, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end89, %if.then83, %if.then69, %if.then58, %if.then43, %if.then28, %if.then13, %if.then
  %75 = load i32, i32* %retval, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

declare dso_local i32 @mbedtls_x509_dn_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_x509_sig_alg_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_buf* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_x509_key_size_helper(i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i8* @mbedtls_pk_get_name(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i64 @mbedtls_pk_get_bitlen(%struct.mbedtls_pk_context* noundef) #2

declare dso_local void @mbedtls_pk_free(%struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
