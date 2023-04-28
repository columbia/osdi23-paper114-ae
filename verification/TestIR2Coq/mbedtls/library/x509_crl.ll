; ModuleID = 'x509_crl.c'
source_filename = "x509_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509_crl = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_x509_crl_entry, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crl* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_x509_crl_entry = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_x509_crl_entry* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_pem_context = type { i8*, i64, i8* }

@.str = private unnamed_addr constant [11 x i8] c"x509_crl.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"-----BEGIN X509 CRL-----\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"-----END X509 CRL-----\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%sCRL version   : %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\0A%sissuer name   : \00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\0A%sthis update   : %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\0A%snext update   : %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"\0A%sRevoked certificates:\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\0A%sserial number: \00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c" revocation date: %04d-%02d-%02d %02d:%02d:%02d\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\0A%ssigned using  : \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crl_parse_der(%struct.mbedtls_x509_crl* noundef %chain, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %sig_params1 = alloca %struct.mbedtls_asn1_buf, align 8
  %sig_params2 = alloca %struct.mbedtls_asn1_buf, align 8
  %sig_oid2 = alloca %struct.mbedtls_asn1_buf, align 8
  %crl = alloca %struct.mbedtls_x509_crl*, align 8
  store %struct.mbedtls_x509_crl* %chain, %struct.mbedtls_x509_crl** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8* null, i8** %p, align 8
  store i8* null, i8** %end, align 8
  %0 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %chain.addr, align 8
  store %struct.mbedtls_x509_crl* %0, %struct.mbedtls_x509_crl** %crl, align 8
  %1 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crl* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = bitcast %struct.mbedtls_asn1_buf* %sig_params1 to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 24) #4
  %4 = bitcast %struct.mbedtls_asn1_buf* %sig_params2 to i8*
  %call2 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 24) #4
  %5 = bitcast %struct.mbedtls_asn1_buf* %sig_oid2 to i8*
  %call3 = call i8* @memset(i8* noundef %5, i32 noundef 0, i64 noundef 24) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %6, i32 0, i32 2
  %7 = load i32, i32* %version, align 8
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %8, i32 0, i32 15
  %9 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next, align 8
  %cmp5 = icmp ne %struct.mbedtls_x509_crl* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next6 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %11, i32 0, i32 15
  %12 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next6, align 8
  store %struct.mbedtls_x509_crl* %12, %struct.mbedtls_x509_crl** %crl, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %13 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version7 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %13, i32 0, i32 2
  %14 = load i32, i32* %version7, align 8
  %cmp8 = icmp ne i32 %14, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %while.end
  %15 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next9 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %15, i32 0, i32 15
  %16 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next9, align 8
  %cmp10 = icmp eq %struct.mbedtls_x509_crl* %16, null
  br i1 %cmp10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %land.lhs.true
  %call12 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 416) #4
  %17 = bitcast i8* %call12 to %struct.mbedtls_x509_crl*
  %18 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next13 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %18, i32 0, i32 15
  store %struct.mbedtls_x509_crl* %17, %struct.mbedtls_x509_crl** %next13, align 8
  %19 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next14 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %19, i32 0, i32 15
  %20 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next14, align 8
  %cmp15 = icmp eq %struct.mbedtls_x509_crl* %20, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then11
  %21 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %21) #5
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then11
  %22 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next18 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %22, i32 0, i32 15
  %23 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next18, align 8
  call void @mbedtls_x509_crl_init(%struct.mbedtls_x509_crl* noundef %23) #5
  %24 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next19 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %24, i32 0, i32 15
  %25 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next19, align 8
  store %struct.mbedtls_x509_crl* %25, %struct.mbedtls_x509_crl** %crl, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %land.lhs.true, %while.end
  %26 = load i64, i64* %buflen.addr, align 8
  %cmp21 = icmp eq i64 %26, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  store i32 -8576, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end20
  %27 = load i64, i64* %buflen.addr, align 8
  %call24 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %27) #4
  store i8* %call24, i8** %p, align 8
  %28 = load i8*, i8** %p, align 8
  %cmp25 = icmp eq i8* %28, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %buf.addr, align 8
  %31 = load i64, i64* %buflen.addr, align 8
  %call28 = call i8* @memcpy(i8* noundef %29, i8* noundef %30, i64 noundef %31) #4
  %32 = load i8*, i8** %p, align 8
  %33 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %33, i32 0, i32 0
  %p29 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 2
  store i8* %32, i8** %p29, align 8
  %34 = load i64, i64* %buflen.addr, align 8
  %35 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %raw30 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %35, i32 0, i32 0
  %len31 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw30, i32 0, i32 1
  store i64 %34, i64* %len31, align 8
  %36 = load i8*, i8** %p, align 8
  %37 = load i64, i64* %buflen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %add.ptr, i8** %end, align 8
  %38 = load i8*, i8** %end, align 8
  %call32 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %38, i64* noundef %len, i32 noundef 48) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end27
  %39 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %39) #5
  store i32 -8576, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end27
  %40 = load i64, i64* %len, align 8
  %41 = load i8*, i8** %end, align 8
  %42 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp36 = icmp ne i64 %40, %sub.ptr.sub
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %43 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %43) #5
  %call38 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 370) #5
  store i32 %call38, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end35
  %44 = load i8*, i8** %p, align 8
  %45 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %tbs = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %45, i32 0, i32 1
  %p40 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs, i32 0, i32 2
  store i8* %44, i8** %p40, align 8
  %46 = load i8*, i8** %end, align 8
  %call41 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %46, i64* noundef %len, i32 noundef 48) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end39
  %47 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %47) #5
  %48 = load i32, i32* %ret, align 4
  %call44 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %48, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 382) #5
  store i32 %call44, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end39
  %49 = load i8*, i8** %p, align 8
  %50 = load i64, i64* %len, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %add.ptr46, i8** %end, align 8
  %51 = load i8*, i8** %end, align 8
  %52 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %tbs47 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %52, i32 0, i32 1
  %p48 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs47, i32 0, i32 2
  %53 = load i8*, i8** %p48, align 8
  %sub.ptr.lhs.cast49 = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast50 = ptrtoint i8* %53 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %54 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %tbs52 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %54, i32 0, i32 1
  %len53 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %tbs52, i32 0, i32 1
  store i64 %sub.ptr.sub51, i64* %len53, align 8
  %55 = load i8*, i8** %end, align 8
  %56 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version54 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %56, i32 0, i32 2
  %call55 = call i32 @x509_crl_get_version(i8** noundef %p, i8* noundef %55, i32* noundef %version54) #5
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then60, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end45
  %57 = load i8*, i8** %end, align 8
  %58 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_oid = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %58, i32 0, i32 3
  %call58 = call i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %57, %struct.mbedtls_asn1_buf* noundef %sig_oid, %struct.mbedtls_asn1_buf* noundef %sig_params1) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %lor.lhs.false57, %if.end45
  %59 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %59) #5
  %60 = load i32, i32* %ret, align 4
  store i32 %60, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %lor.lhs.false57
  %61 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version62 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %61, i32 0, i32 2
  %62 = load i32, i32* %version62, align 8
  %cmp63 = icmp slt i32 %62, 0
  br i1 %cmp63, label %if.then67, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end61
  %63 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version65 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %63, i32 0, i32 2
  %64 = load i32, i32* %version65, align 8
  %cmp66 = icmp sgt i32 %64, 1
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %lor.lhs.false64, %if.end61
  %65 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %65) #5
  store i32 -9600, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %lor.lhs.false64
  %66 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version69 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %66, i32 0, i32 2
  %67 = load i32, i32* %version69, align 8
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %version69, align 8
  %68 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_oid70 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %68, i32 0, i32 3
  %69 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %69, i32 0, i32 12
  %70 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %70, i32 0, i32 13
  %71 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %71, i32 0, i32 14
  %call71 = call i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef %sig_oid70, %struct.mbedtls_asn1_buf* noundef %sig_params1, i32* noundef %sig_md, i32* noundef %sig_pk, i8** noundef %sig_opts) #5
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end68
  %72 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %72) #5
  store i32 -9728, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end68
  %73 = load i8*, i8** %p, align 8
  %74 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %issuer_raw = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %74, i32 0, i32 4
  %p75 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %issuer_raw, i32 0, i32 2
  store i8* %73, i8** %p75, align 8
  %75 = load i8*, i8** %end, align 8
  %call76 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %75, i64* noundef %len, i32 noundef 48) #5
  store i32 %call76, i32* %ret, align 4
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end74
  %76 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %76) #5
  %77 = load i32, i32* %ret, align 4
  %call79 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef %77, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 426) #5
  store i32 %call79, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end74
  %78 = load i8*, i8** %p, align 8
  %79 = load i64, i64* %len, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %78, i64 %79
  %80 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %80, i32 0, i32 5
  %call82 = call i32 @mbedtls_x509_get_name(i8** noundef %p, i8* noundef %add.ptr81, %struct.mbedtls_asn1_named_data* noundef %issuer) #5
  store i32 %call82, i32* %ret, align 4
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end80
  %81 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %81) #5
  %82 = load i32, i32* %ret, align 4
  store i32 %82, i32* %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end80
  %83 = load i8*, i8** %p, align 8
  %84 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %issuer_raw86 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %84, i32 0, i32 4
  %p87 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %issuer_raw86, i32 0, i32 2
  %85 = load i8*, i8** %p87, align 8
  %sub.ptr.lhs.cast88 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast89 = ptrtoint i8* %85 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %86 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %issuer_raw91 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %86, i32 0, i32 4
  %len92 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %issuer_raw91, i32 0, i32 1
  store i64 %sub.ptr.sub90, i64* %len92, align 8
  %87 = load i8*, i8** %end, align 8
  %88 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %this_update = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %88, i32 0, i32 6
  %call93 = call i32 @mbedtls_x509_get_time(i8** noundef %p, i8* noundef %87, %struct.mbedtls_x509_time* noundef %this_update) #5
  store i32 %call93, i32* %ret, align 4
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end85
  %89 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %89) #5
  %90 = load i32, i32* %ret, align 4
  store i32 %90, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end85
  %91 = load i8*, i8** %end, align 8
  %92 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %next_update = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %92, i32 0, i32 7
  %call97 = call i32 @mbedtls_x509_get_time(i8** noundef %p, i8* noundef %91, %struct.mbedtls_x509_time* noundef %next_update) #5
  store i32 %call97, i32* %ret, align 4
  %cmp98 = icmp ne i32 %call97, 0
  br i1 %cmp98, label %if.then99, label %if.end107

if.then99:                                        ; preds = %if.end96
  %93 = load i32, i32* %ret, align 4
  %call100 = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef -98, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 450) #5
  %cmp101 = icmp ne i32 %93, %call100
  br i1 %cmp101, label %land.lhs.true102, label %if.end106

land.lhs.true102:                                 ; preds = %if.then99
  %94 = load i32, i32* %ret, align 4
  %call103 = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef -96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 452) #5
  %cmp104 = icmp ne i32 %94, %call103
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %land.lhs.true102
  %95 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %95) #5
  %96 = load i32, i32* %ret, align 4
  store i32 %96, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %land.lhs.true102, %if.then99
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end96
  %97 = load i8*, i8** %end, align 8
  %98 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %entry108 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %98, i32 0, i32 8
  %call109 = call i32 @x509_get_entries(i8** noundef %p, i8* noundef %97, %struct.mbedtls_x509_crl_entry* noundef %entry108) #5
  store i32 %call109, i32* %ret, align 4
  %cmp110 = icmp ne i32 %call109, 0
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end107
  %99 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %99) #5
  %100 = load i32, i32* %ret, align 4
  store i32 %100, i32* %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.end107
  %101 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %version113 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %101, i32 0, i32 2
  %102 = load i32, i32* %version113, align 8
  %cmp114 = icmp eq i32 %102, 2
  br i1 %cmp114, label %if.then115, label %if.end120

if.then115:                                       ; preds = %if.end112
  %103 = load i8*, i8** %end, align 8
  %104 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %crl_ext = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %104, i32 0, i32 9
  %call116 = call i32 @x509_get_crl_ext(i8** noundef %p, i8* noundef %103, %struct.mbedtls_asn1_buf* noundef %crl_ext) #5
  store i32 %call116, i32* %ret, align 4
  %105 = load i32, i32* %ret, align 4
  %cmp117 = icmp ne i32 %105, 0
  br i1 %cmp117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then115
  %106 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %106) #5
  %107 = load i32, i32* %ret, align 4
  store i32 %107, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.then115
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end112
  %108 = load i8*, i8** %p, align 8
  %109 = load i8*, i8** %end, align 8
  %cmp121 = icmp ne i8* %108, %109
  br i1 %cmp121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.end120
  %110 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %110) #5
  %call123 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 492) #5
  store i32 %call123, i32* %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.end120
  %111 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %raw125 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %111, i32 0, i32 0
  %p126 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw125, i32 0, i32 2
  %112 = load i8*, i8** %p126, align 8
  %113 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %raw127 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %113, i32 0, i32 0
  %len128 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw127, i32 0, i32 1
  %114 = load i64, i64* %len128, align 8
  %add.ptr129 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8* %add.ptr129, i8** %end, align 8
  %115 = load i8*, i8** %end, align 8
  %call130 = call i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %115, %struct.mbedtls_asn1_buf* noundef %sig_oid2, %struct.mbedtls_asn1_buf* noundef %sig_params2) #5
  store i32 %call130, i32* %ret, align 4
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end124
  %116 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %116) #5
  %117 = load i32, i32* %ret, align 4
  store i32 %117, i32* %retval, align 4
  br label %return

if.end133:                                        ; preds = %if.end124
  %118 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_oid134 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %118, i32 0, i32 3
  %len135 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid134, i32 0, i32 1
  %119 = load i64, i64* %len135, align 8
  %len136 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid2, i32 0, i32 1
  %120 = load i64, i64* %len136, align 8
  %cmp137 = icmp ne i64 %119, %120
  br i1 %cmp137, label %if.then159, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %if.end133
  %121 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_oid139 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %121, i32 0, i32 3
  %p140 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid139, i32 0, i32 2
  %122 = load i8*, i8** %p140, align 8
  %p141 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid2, i32 0, i32 2
  %123 = load i8*, i8** %p141, align 8
  %124 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig_oid142 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %124, i32 0, i32 3
  %len143 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_oid142, i32 0, i32 1
  %125 = load i64, i64* %len143, align 8
  %call144 = call i32 @memcmp(i8* noundef %122, i8* noundef %123, i64 noundef %125) #6
  %cmp145 = icmp ne i32 %call144, 0
  br i1 %cmp145, label %if.then159, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %lor.lhs.false138
  %len147 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 1
  %126 = load i64, i64* %len147, align 8
  %len148 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params2, i32 0, i32 1
  %127 = load i64, i64* %len148, align 8
  %cmp149 = icmp ne i64 %126, %127
  br i1 %cmp149, label %if.then159, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false146
  %len151 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 1
  %128 = load i64, i64* %len151, align 8
  %cmp152 = icmp ne i64 %128, 0
  br i1 %cmp152, label %land.lhs.true153, label %if.end160

land.lhs.true153:                                 ; preds = %lor.lhs.false150
  %p154 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 2
  %129 = load i8*, i8** %p154, align 8
  %p155 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params2, i32 0, i32 2
  %130 = load i8*, i8** %p155, align 8
  %len156 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %sig_params1, i32 0, i32 1
  %131 = load i64, i64* %len156, align 8
  %call157 = call i32 @memcmp(i8* noundef %129, i8* noundef %130, i64 noundef %131) #6
  %cmp158 = icmp ne i32 %call157, 0
  br i1 %cmp158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %land.lhs.true153, %lor.lhs.false146, %lor.lhs.false138, %if.end133
  %132 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %132) #5
  store i32 -9856, i32* %retval, align 4
  br label %return

if.end160:                                        ; preds = %land.lhs.true153, %lor.lhs.false150
  %133 = load i8*, i8** %end, align 8
  %134 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  %sig = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %134, i32 0, i32 11
  %call161 = call i32 @mbedtls_x509_get_sig(i8** noundef %p, i8* noundef %133, %struct.mbedtls_asn1_buf* noundef %sig) #5
  store i32 %call161, i32* %ret, align 4
  %cmp162 = icmp ne i32 %call161, 0
  br i1 %cmp162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end160
  %135 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %135) #5
  %136 = load i32, i32* %ret, align 4
  store i32 %136, i32* %retval, align 4
  br label %return

if.end164:                                        ; preds = %if.end160
  %137 = load i8*, i8** %p, align 8
  %138 = load i8*, i8** %end, align 8
  %cmp165 = icmp ne i8* %137, %138
  br i1 %cmp165, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.end164
  %139 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl, align 8
  call void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %139) #5
  %call167 = call i32 @mbedtls_error_add(i32 noundef -8576, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 527) #5
  store i32 %call167, i32* %retval, align 4
  br label %return

if.end168:                                        ; preds = %if.end164
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end168, %if.then166, %if.then163, %if.then159, %if.then132, %if.then122, %if.then118, %if.then111, %if.then105, %if.then95, %if.then84, %if.then78, %if.then73, %if.then67, %if.then60, %if.then43, %if.then37, %if.then34, %if.then26, %if.then22, %if.then16, %if.then
  %140 = load i32, i32* %retval, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_crl_free(%struct.mbedtls_x509_crl* noundef %crl) #0 {
entry:
  %crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %crl_cur = alloca %struct.mbedtls_x509_crl*, align 8
  %crl_prv = alloca %struct.mbedtls_x509_crl*, align 8
  %name_cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  %name_prv = alloca %struct.mbedtls_asn1_named_data*, align 8
  %entry_cur = alloca %struct.mbedtls_x509_crl_entry*, align 8
  %entry_prv = alloca %struct.mbedtls_x509_crl_entry*, align 8
  store %struct.mbedtls_x509_crl* %crl, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %0 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  store %struct.mbedtls_x509_crl* %0, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %1 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end27

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %2, i32 0, i32 14
  %3 = load i8*, i8** %sig_opts, align 8
  call void @free(i8* noundef %3) #4
  %4 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %4, i32 0, i32 5
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %issuer, i32 0, i32 2
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %5, %struct.mbedtls_asn1_named_data** %name_cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
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
  call void @mbedtls_platform_zeroize(i8* noundef %11, i64 noundef 64) #5
  %12 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name_prv, align 8
  %13 = bitcast %struct.mbedtls_asn1_named_data* %12 to i8*
  call void @free(i8* noundef %13) #4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %14 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %entry3 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %14, i32 0, i32 8
  %next4 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %entry3, i32 0, i32 4
  %15 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %next4, align 8
  store %struct.mbedtls_x509_crl_entry* %15, %struct.mbedtls_x509_crl_entry** %entry_cur, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %while.body7, %while.end
  %16 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry_cur, align 8
  %cmp6 = icmp ne %struct.mbedtls_x509_crl_entry* %16, null
  br i1 %cmp6, label %while.body7, label %while.end9

while.body7:                                      ; preds = %while.cond5
  %17 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry_cur, align 8
  store %struct.mbedtls_x509_crl_entry* %17, %struct.mbedtls_x509_crl_entry** %entry_prv, align 8
  %18 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry_cur, align 8
  %next8 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %18, i32 0, i32 4
  %19 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %next8, align 8
  store %struct.mbedtls_x509_crl_entry* %19, %struct.mbedtls_x509_crl_entry** %entry_cur, align 8
  %20 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry_prv, align 8
  %21 = bitcast %struct.mbedtls_x509_crl_entry* %20 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %21, i64 noundef 104) #5
  %22 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry_prv, align 8
  %23 = bitcast %struct.mbedtls_x509_crl_entry* %22 to i8*
  call void @free(i8* noundef %23) #4
  br label %while.cond5, !llvm.loop !7

while.end9:                                       ; preds = %while.cond5
  %24 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %24, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 2
  %25 = load i8*, i8** %p, align 8
  %cmp10 = icmp ne i8* %25, null
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %while.end9
  %26 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %raw12 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %26, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw12, i32 0, i32 2
  %27 = load i8*, i8** %p13, align 8
  %28 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %raw14 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %28, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw14, i32 0, i32 1
  %29 = load i64, i64* %len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %27, i64 noundef %29) #5
  %30 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %raw15 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %30, i32 0, i32 0
  %p16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw15, i32 0, i32 2
  %31 = load i8*, i8** %p16, align 8
  call void @free(i8* noundef %31) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %while.end9
  %32 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %next18 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %32, i32 0, i32 15
  %33 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next18, align 8
  store %struct.mbedtls_x509_crl* %33, %struct.mbedtls_x509_crl** %crl_cur, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end17
  %34 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %cmp19 = icmp ne %struct.mbedtls_x509_crl* %34, null
  br i1 %cmp19, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %35 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  store %struct.mbedtls_x509_crl* %35, %struct.mbedtls_x509_crl** %crl_cur, align 8
  br label %do.body20

do.body20:                                        ; preds = %do.cond25, %do.end
  %36 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  store %struct.mbedtls_x509_crl* %36, %struct.mbedtls_x509_crl** %crl_prv, align 8
  %37 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %next21 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %37, i32 0, i32 15
  %38 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %next21, align 8
  store %struct.mbedtls_x509_crl* %38, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %39 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_prv, align 8
  %40 = bitcast %struct.mbedtls_x509_crl* %39 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %40, i64 noundef 416) #5
  %41 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_prv, align 8
  %42 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %cmp22 = icmp ne %struct.mbedtls_x509_crl* %41, %42
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body20
  %43 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_prv, align 8
  %44 = bitcast %struct.mbedtls_x509_crl* %43 to i8*
  call void @free(i8* noundef %44) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.body20
  br label %do.cond25

do.cond25:                                        ; preds = %if.end24
  %45 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl_cur, align 8
  %cmp26 = icmp ne %struct.mbedtls_x509_crl* %45, null
  br i1 %cmp26, label %do.body20, label %do.end27, !llvm.loop !9

do.end27:                                         ; preds = %if.then, %do.cond25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_crl_init(%struct.mbedtls_x509_crl* noundef %crl) #0 {
entry:
  %crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  store %struct.mbedtls_x509_crl* %crl, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %0 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %1 = bitcast %struct.mbedtls_x509_crl* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 416) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

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
define internal i32 @x509_crl_get_version(i8** noundef %p, i8* noundef %end, i32* noundef %ver) #0 {
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
  %call = call i32 @mbedtls_asn1_get_int(i8** noundef %0, i8* noundef %1, i32* noundef %2) #5
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
  %call3 = call i32 @mbedtls_error_add(i32 noundef -8704, i32 noundef %5, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #5
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end, %if.then2
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_x509_get_alg(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef, i32* noundef, i32* noundef, i8** noundef) #2

declare dso_local i32 @mbedtls_x509_get_name(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_x509_get_time(i8** noundef, i8* noundef, %struct.mbedtls_x509_time* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_entries(i8** noundef %p, i8* noundef %end, %struct.mbedtls_x509_crl_entry* noundef %entry1) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %entry.addr = alloca %struct.mbedtls_x509_crl_entry*, align 8
  %ret = alloca i32, align 4
  %entry_len = alloca i64, align 8
  %cur_entry = alloca %struct.mbedtls_x509_crl_entry*, align 8
  %len2 = alloca i64, align 8
  %end2 = alloca i8*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_x509_crl_entry* %entry1, %struct.mbedtls_x509_crl_entry** %entry.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry.addr, align 8
  store %struct.mbedtls_x509_crl_entry* %0, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %4, i8* noundef %5, i64* noundef %entry_len, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  %cmp4 = icmp eq i32 %6, -98
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then3
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i64, i64* %entry_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %add.ptr, i8** %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %if.end7
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %cmp8 = icmp ult i8* %12, %13
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %conv = zext i8 %16 to i32
  %17 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %17, i32 0, i32 0
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 0
  store i32 %conv, i32* %tag, align 8
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %end.addr, align 8
  %call9 = call i32 @mbedtls_asn1_get_tag(i8** noundef %18, i8* noundef %19, i64* noundef %len2, i32 noundef 48) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %while.body
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %raw14 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %23, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw14, i32 0, i32 2
  store i8* %22, i8** %p15, align 8
  %24 = load i64, i64* %len2, align 8
  %25 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %raw16 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %25, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw16, i32 0, i32 1
  store i64 %24, i64* %len, align 8
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %len2, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %add.ptr17, i8** %end2, align 8
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %end2, align 8
  %31 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %31, i32 0, i32 1
  %call18 = call i32 @mbedtls_x509_get_serial(i8** noundef %29, i8* noundef %30, %struct.mbedtls_asn1_buf* noundef %serial) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end13
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end13
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %end2, align 8
  %35 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %revocation_date = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %35, i32 0, i32 2
  %call23 = call i32 @mbedtls_x509_get_time(i8** noundef %33, i8* noundef %34, %struct.mbedtls_x509_time* noundef %revocation_date) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end22
  %37 = load i8**, i8*** %p.addr, align 8
  %38 = load i8*, i8** %end2, align 8
  %39 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %entry_ext = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %39, i32 0, i32 3
  %call28 = call i32 @x509_get_crl_entry_ext(i8** noundef %37, i8* noundef %38, %struct.mbedtls_asn1_buf* noundef %entry_ext) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  %40 = load i32, i32* %ret, align 4
  store i32 %40, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end27
  %41 = load i8**, i8*** %p.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %end.addr, align 8
  %cmp33 = icmp ult i8* %42, %43
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end32
  %call36 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 104) #4
  %44 = bitcast i8* %call36 to %struct.mbedtls_x509_crl_entry*
  %45 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %45, i32 0, i32 4
  store %struct.mbedtls_x509_crl_entry* %44, %struct.mbedtls_x509_crl_entry** %next, align 8
  %46 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %next37 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %46, i32 0, i32 4
  %47 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %next37, align 8
  %cmp38 = icmp eq %struct.mbedtls_x509_crl_entry* %47, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then35
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.then35
  %48 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  %next42 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %48, i32 0, i32 4
  %49 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %next42, align 8
  store %struct.mbedtls_x509_crl_entry* %49, %struct.mbedtls_x509_crl_entry** %cur_entry, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end32
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then40, %if.then31, %if.then26, %if.then21, %if.then12, %if.end6, %if.then5, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_crl_ext(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %ext) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ext.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %is_critical = alloca i32, align 4
  %end_ext_data = alloca i8*, align 8
  %len6 = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %ext, %struct.mbedtls_asn1_buf** %ext.addr, align 8
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
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %call = call i32 @mbedtls_x509_get_ext(i8** noundef %3, i8* noundef %4, %struct.mbedtls_asn1_buf* noundef %5, i32 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %p4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %7, i32 0, i32 2
  %8 = load i8*, i8** %p4, align 8
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 1
  %10 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %add.ptr, i8** %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end3
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %end.addr, align 8
  %cmp5 = icmp ult i8* %12, %13
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %is_critical, align 4
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %end.addr, align 8
  %call7 = call i32 @mbedtls_asn1_get_tag(i8** noundef %14, i8* noundef %15, i64* noundef %len6, i32 noundef 48) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %while.body
  %16 = load i32, i32* %ret, align 4
  %call10 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #5
  store i32 %call10, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i64, i64* %len6, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr12, i8** %end_ext_data, align 8
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %end_ext_data, align 8
  %call13 = call i32 @mbedtls_asn1_get_tag(i8** noundef %20, i8* noundef %21, i64* noundef %len6, i32 noundef 6) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %22 = load i32, i32* %ret, align 4
  %call16 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 138) #5
  store i32 %call16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end11
  %23 = load i64, i64* %len6, align 8
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %25, i64 %23
  store i8* %add.ptr18, i8** %24, align 8
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %end_ext_data, align 8
  %call19 = call i32 @mbedtls_asn1_get_bool(i8** noundef %26, i8* noundef %27, i32* noundef %is_critical) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end17
  %28 = load i32, i32* %ret, align 4
  %cmp21 = icmp ne i32 %28, -98
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  %29 = load i32, i32* %ret, align 4
  %call23 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %29, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 147) #5
  store i32 %call23, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %land.lhs.true, %if.end17
  %30 = load i8**, i8*** %p.addr, align 8
  %31 = load i8*, i8** %end_ext_data, align 8
  %call25 = call i32 @mbedtls_asn1_get_tag(i8** noundef %30, i8* noundef %31, i64* noundef %len6, i32 noundef 4) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %32 = load i32, i32* %ret, align 4
  %call28 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #5
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  %33 = load i64, i64* %len6, align 8
  %34 = load i8**, i8*** %p.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %35, i64 %33
  store i8* %add.ptr30, i8** %34, align 8
  %36 = load i8**, i8*** %p.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %end_ext_data, align 8
  %cmp31 = icmp ne i8* %37, %38
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %call33 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 159) #5
  store i32 %call33, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  %39 = load i32, i32* %is_critical, align 4
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end34
  %call36 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -98, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 164) #5
  store i32 %call36, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end34
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %40 = load i8**, i8*** %p.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %end.addr, align 8
  %cmp38 = icmp ne i8* %41, %42
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %while.end
  %call40 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 169) #5
  store i32 %call40, i32* %retval, align 4
  br label %return

if.end41:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then39, %if.then35, %if.then32, %if.then27, %if.then22, %if.then15, %if.then9, %if.then2, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_x509_get_sig(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crl_parse(%struct.mbedtls_x509_crl* noundef %chain, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %use_len = alloca i64, align 8
  %pem = alloca %struct.mbedtls_pem_context, align 8
  %is_pem = alloca i32, align 4
  store %struct.mbedtls_x509_crl* %chain, %struct.mbedtls_x509_crl** %chain.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %use_len, align 8
  store i32 0, i32* %is_pem, align 4
  %0 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %chain.addr, align 8
  %cmp = icmp eq %struct.mbedtls_x509_crl* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  call void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %pem) #5
  %2 = load i64, i64* %buflen.addr, align 8
  %cmp2 = icmp eq i64 %2, 0
  br i1 %cmp2, label %if.then6, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %do.body
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %buflen.addr, align 8
  %sub = sub i64 %4, 1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %sub
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false3, %do.body
  store i32 -4224, i32* %ret, align 4
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false3
  %6 = load i8*, i8** %buf.addr, align 8
  %call = call i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %pem, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %6, i8* noundef null, i64 noundef 0, i64* noundef %use_len) #5
  store i32 %call, i32* %ret, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %7 = load i32, i32* %ret, align 4
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then10, label %if.else19

if.then10:                                        ; preds = %if.end7
  store i32 1, i32* %is_pem, align 4
  %8 = load i64, i64* %use_len, align 8
  %9 = load i64, i64* %buflen.addr, align 8
  %sub11 = sub i64 %9, %8
  store i64 %sub11, i64* %buflen.addr, align 8
  %10 = load i64, i64* %use_len, align 8
  %11 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %10
  store i8* %add.ptr, i8** %buf.addr, align 8
  %12 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %chain.addr, align 8
  %buf12 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 0
  %13 = load i8*, i8** %buf12, align 8
  %buflen13 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %pem, i32 0, i32 1
  %14 = load i64, i64* %buflen13, align 8
  %call14 = call i32 @mbedtls_x509_crl_parse_der(%struct.mbedtls_x509_crl* noundef %12, i8* noundef %13, i64 noundef %14) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then10
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then10
  br label %if.end22

if.else19:                                        ; preds = %if.end7
  %16 = load i32, i32* %is_pem, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else19
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.else19
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end18
  call void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %pem) #5
  br label %do.cond

do.cond:                                          ; preds = %if.end22
  %18 = load i32, i32* %is_pem, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %19 = load i64, i64* %buflen.addr, align 8
  %cmp24 = icmp ugt i64 %19, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %20 = phi i1 [ false, %do.cond ], [ %cmp24, %land.rhs ]
  br i1 %20, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %land.end
  %21 = load i32, i32* %is_pem, align 4
  %tobool26 = icmp ne i32 %21, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %do.end
  %22 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %chain.addr, align 8
  %23 = load i8*, i8** %buf.addr, align 8
  %24 = load i64, i64* %buflen.addr, align 8
  %call29 = call i32 @mbedtls_x509_crl_parse_der(%struct.mbedtls_x509_crl* noundef %22, i8* noundef %23, i64 noundef %24) #5
  store i32 %call29, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else28, %if.then27, %if.then20, %if.then17, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef) #2

declare dso_local i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crl_parse_file(%struct.mbedtls_x509_crl* noundef %chain, i8* noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %path.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  store %struct.mbedtls_x509_crl* %chain, %struct.mbedtls_x509_crl** %chain.addr, align 8
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
  %2 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %chain.addr, align 8
  %3 = load i8*, i8** %buf, align 8
  %4 = load i64, i64* %n, align 8
  %call1 = call i32 @mbedtls_x509_crl_parse(%struct.mbedtls_x509_crl* noundef %2, i8* noundef %3, i64 noundef %4) #5
  store i32 %call1, i32* %ret, align 4
  %5 = load i8*, i8** %buf, align 8
  %6 = load i64, i64* %n, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef %6) #5
  %7 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %7) #4
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
define dso_local i32 @mbedtls_x509_crl_info(i8* noundef %buf, i64 noundef %size, i8* noundef %prefix, %struct.mbedtls_x509_crl* noundef %crl) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %crl.addr = alloca %struct.mbedtls_x509_crl*, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %p = alloca i8*, align 8
  %entry1 = alloca %struct.mbedtls_x509_crl_entry*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store %struct.mbedtls_x509_crl* %crl, %struct.mbedtls_x509_crl** %crl.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = load i64, i64* %n, align 8
  %4 = load i8*, i8** %prefix.addr, align 8
  %5 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %5, i32 0, i32 2
  %6 = load i32, i32* %version, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4, i32 noundef %6) #4
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
  %cmp2 = icmp uge i64 %conv, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, i32* %ret, align 4
  %conv4 = sext i32 %10 to i64
  %11 = load i64, i64* %n, align 8
  %sub = sub i64 %11, %conv4
  store i64 %sub, i64* %n, align 8
  %12 = load i32, i32* %ret, align 4
  %conv5 = sext i32 %12 to i64
  %13 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %conv5
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load i8*, i8** %prefix.addr, align 8
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %14, i64 noundef %15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* noundef %16) #4
  store i32 %call6, i32* %ret, align 4
  br label %do.body7

do.body7:                                         ; preds = %do.end
  %17 = load i32, i32* %ret, align 4
  %cmp8 = icmp slt i32 %17, 0
  br i1 %cmp8, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %do.body7
  %18 = load i32, i32* %ret, align 4
  %conv11 = sext i32 %18 to i64
  %19 = load i64, i64* %n, align 8
  %cmp12 = icmp uge i64 %conv11, %19
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false10, %do.body7
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false10
  %20 = load i32, i32* %ret, align 4
  %conv16 = sext i32 %20 to i64
  %21 = load i64, i64* %n, align 8
  %sub17 = sub i64 %21, %conv16
  store i64 %sub17, i64* %n, align 8
  %22 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %22 to i64
  %23 = load i8*, i8** %p, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %23, i64 %conv18
  store i8* %add.ptr19, i8** %p, align 8
  br label %do.end20

do.end20:                                         ; preds = %if.end15
  %24 = load i8*, i8** %p, align 8
  %25 = load i64, i64* %n, align 8
  %26 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %26, i32 0, i32 5
  %call21 = call i32 @mbedtls_x509_dn_gets(i8* noundef %24, i64 noundef %25, %struct.mbedtls_asn1_named_data* noundef %issuer) #5
  store i32 %call21, i32* %ret, align 4
  br label %do.body22

do.body22:                                        ; preds = %do.end20
  %27 = load i32, i32* %ret, align 4
  %cmp23 = icmp slt i32 %27, 0
  br i1 %cmp23, label %if.then29, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %do.body22
  %28 = load i32, i32* %ret, align 4
  %conv26 = sext i32 %28 to i64
  %29 = load i64, i64* %n, align 8
  %cmp27 = icmp uge i64 %conv26, %29
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false25, %do.body22
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %lor.lhs.false25
  %30 = load i32, i32* %ret, align 4
  %conv31 = sext i32 %30 to i64
  %31 = load i64, i64* %n, align 8
  %sub32 = sub i64 %31, %conv31
  store i64 %sub32, i64* %n, align 8
  %32 = load i32, i32* %ret, align 4
  %conv33 = sext i32 %32 to i64
  %33 = load i8*, i8** %p, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %33, i64 %conv33
  store i8* %add.ptr34, i8** %p, align 8
  br label %do.end35

do.end35:                                         ; preds = %if.end30
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %n, align 8
  %36 = load i8*, i8** %prefix.addr, align 8
  %37 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %this_update = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %37, i32 0, i32 6
  %year = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %this_update, i32 0, i32 0
  %38 = load i32, i32* %year, align 8
  %39 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %this_update36 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %39, i32 0, i32 6
  %mon = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %this_update36, i32 0, i32 1
  %40 = load i32, i32* %mon, align 4
  %41 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %this_update37 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %41, i32 0, i32 6
  %day = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %this_update37, i32 0, i32 2
  %42 = load i32, i32* %day, align 8
  %43 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %this_update38 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %43, i32 0, i32 6
  %hour = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %this_update38, i32 0, i32 3
  %44 = load i32, i32* %hour, align 4
  %45 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %this_update39 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %45, i32 0, i32 6
  %min = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %this_update39, i32 0, i32 4
  %46 = load i32, i32* %min, align 8
  %47 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %this_update40 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %47, i32 0, i32 6
  %sec = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %this_update40, i32 0, i32 5
  %48 = load i32, i32* %sec, align 4
  %call41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef %35, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #4
  store i32 %call41, i32* %ret, align 4
  br label %do.body42

do.body42:                                        ; preds = %do.end35
  %49 = load i32, i32* %ret, align 4
  %cmp43 = icmp slt i32 %49, 0
  br i1 %cmp43, label %if.then49, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %do.body42
  %50 = load i32, i32* %ret, align 4
  %conv46 = sext i32 %50 to i64
  %51 = load i64, i64* %n, align 8
  %cmp47 = icmp uge i64 %conv46, %51
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %lor.lhs.false45, %do.body42
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %lor.lhs.false45
  %52 = load i32, i32* %ret, align 4
  %conv51 = sext i32 %52 to i64
  %53 = load i64, i64* %n, align 8
  %sub52 = sub i64 %53, %conv51
  store i64 %sub52, i64* %n, align 8
  %54 = load i32, i32* %ret, align 4
  %conv53 = sext i32 %54 to i64
  %55 = load i8*, i8** %p, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %55, i64 %conv53
  store i8* %add.ptr54, i8** %p, align 8
  br label %do.end55

do.end55:                                         ; preds = %if.end50
  %56 = load i8*, i8** %p, align 8
  %57 = load i64, i64* %n, align 8
  %58 = load i8*, i8** %prefix.addr, align 8
  %59 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %next_update = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %59, i32 0, i32 7
  %year56 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %next_update, i32 0, i32 0
  %60 = load i32, i32* %year56, align 8
  %61 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %next_update57 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %61, i32 0, i32 7
  %mon58 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %next_update57, i32 0, i32 1
  %62 = load i32, i32* %mon58, align 4
  %63 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %next_update59 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %63, i32 0, i32 7
  %day60 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %next_update59, i32 0, i32 2
  %64 = load i32, i32* %day60, align 8
  %65 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %next_update61 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %65, i32 0, i32 7
  %hour62 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %next_update61, i32 0, i32 3
  %66 = load i32, i32* %hour62, align 4
  %67 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %next_update63 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %67, i32 0, i32 7
  %min64 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %next_update63, i32 0, i32 4
  %68 = load i32, i32* %min64, align 8
  %69 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %next_update65 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %69, i32 0, i32 7
  %sec66 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %next_update65, i32 0, i32 5
  %70 = load i32, i32* %sec66, align 4
  %call67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %56, i64 noundef %57, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #4
  store i32 %call67, i32* %ret, align 4
  br label %do.body68

do.body68:                                        ; preds = %do.end55
  %71 = load i32, i32* %ret, align 4
  %cmp69 = icmp slt i32 %71, 0
  br i1 %cmp69, label %if.then75, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %do.body68
  %72 = load i32, i32* %ret, align 4
  %conv72 = sext i32 %72 to i64
  %73 = load i64, i64* %n, align 8
  %cmp73 = icmp uge i64 %conv72, %73
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %lor.lhs.false71, %do.body68
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end76:                                         ; preds = %lor.lhs.false71
  %74 = load i32, i32* %ret, align 4
  %conv77 = sext i32 %74 to i64
  %75 = load i64, i64* %n, align 8
  %sub78 = sub i64 %75, %conv77
  store i64 %sub78, i64* %n, align 8
  %76 = load i32, i32* %ret, align 4
  %conv79 = sext i32 %76 to i64
  %77 = load i8*, i8** %p, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %77, i64 %conv79
  store i8* %add.ptr80, i8** %p, align 8
  br label %do.end81

do.end81:                                         ; preds = %if.end76
  %78 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %entry82 = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %78, i32 0, i32 8
  store %struct.mbedtls_x509_crl_entry* %entry82, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %79 = load i8*, i8** %p, align 8
  %80 = load i64, i64* %n, align 8
  %81 = load i8*, i8** %prefix.addr, align 8
  %call83 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %79, i64 noundef %80, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef %81) #4
  store i32 %call83, i32* %ret, align 4
  br label %do.body84

do.body84:                                        ; preds = %do.end81
  %82 = load i32, i32* %ret, align 4
  %cmp85 = icmp slt i32 %82, 0
  br i1 %cmp85, label %if.then91, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %do.body84
  %83 = load i32, i32* %ret, align 4
  %conv88 = sext i32 %83 to i64
  %84 = load i64, i64* %n, align 8
  %cmp89 = icmp uge i64 %conv88, %84
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %lor.lhs.false87, %do.body84
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %lor.lhs.false87
  %85 = load i32, i32* %ret, align 4
  %conv93 = sext i32 %85 to i64
  %86 = load i64, i64* %n, align 8
  %sub94 = sub i64 %86, %conv93
  store i64 %sub94, i64* %n, align 8
  %87 = load i32, i32* %ret, align 4
  %conv95 = sext i32 %87 to i64
  %88 = load i8*, i8** %p, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %88, i64 %conv95
  store i8* %add.ptr96, i8** %p, align 8
  br label %do.end97

do.end97:                                         ; preds = %if.end92
  br label %while.cond

while.cond:                                       ; preds = %do.end157, %do.end97
  %89 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %cmp98 = icmp ne %struct.mbedtls_x509_crl_entry* %89, null
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %90 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %raw = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %90, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %raw, i32 0, i32 1
  %91 = load i64, i64* %len, align 8
  %cmp100 = icmp ne i64 %91, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %92 = phi i1 [ false, %while.cond ], [ %cmp100, %land.rhs ]
  br i1 %92, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %93 = load i8*, i8** %p, align 8
  %94 = load i64, i64* %n, align 8
  %95 = load i8*, i8** %prefix.addr, align 8
  %call102 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %93, i64 noundef %94, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* noundef %95) #4
  store i32 %call102, i32* %ret, align 4
  br label %do.body103

do.body103:                                       ; preds = %while.body
  %96 = load i32, i32* %ret, align 4
  %cmp104 = icmp slt i32 %96, 0
  br i1 %cmp104, label %if.then110, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %do.body103
  %97 = load i32, i32* %ret, align 4
  %conv107 = sext i32 %97 to i64
  %98 = load i64, i64* %n, align 8
  %cmp108 = icmp uge i64 %conv107, %98
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %lor.lhs.false106, %do.body103
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %lor.lhs.false106
  %99 = load i32, i32* %ret, align 4
  %conv112 = sext i32 %99 to i64
  %100 = load i64, i64* %n, align 8
  %sub113 = sub i64 %100, %conv112
  store i64 %sub113, i64* %n, align 8
  %101 = load i32, i32* %ret, align 4
  %conv114 = sext i32 %101 to i64
  %102 = load i8*, i8** %p, align 8
  %add.ptr115 = getelementptr inbounds i8, i8* %102, i64 %conv114
  store i8* %add.ptr115, i8** %p, align 8
  br label %do.end116

do.end116:                                        ; preds = %if.end111
  %103 = load i8*, i8** %p, align 8
  %104 = load i64, i64* %n, align 8
  %105 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %105, i32 0, i32 1
  %call117 = call i32 @mbedtls_x509_serial_gets(i8* noundef %103, i64 noundef %104, %struct.mbedtls_asn1_buf* noundef %serial) #5
  store i32 %call117, i32* %ret, align 4
  br label %do.body118

do.body118:                                       ; preds = %do.end116
  %106 = load i32, i32* %ret, align 4
  %cmp119 = icmp slt i32 %106, 0
  br i1 %cmp119, label %if.then125, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %do.body118
  %107 = load i32, i32* %ret, align 4
  %conv122 = sext i32 %107 to i64
  %108 = load i64, i64* %n, align 8
  %cmp123 = icmp uge i64 %conv122, %108
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %lor.lhs.false121, %do.body118
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end126:                                        ; preds = %lor.lhs.false121
  %109 = load i32, i32* %ret, align 4
  %conv127 = sext i32 %109 to i64
  %110 = load i64, i64* %n, align 8
  %sub128 = sub i64 %110, %conv127
  store i64 %sub128, i64* %n, align 8
  %111 = load i32, i32* %ret, align 4
  %conv129 = sext i32 %111 to i64
  %112 = load i8*, i8** %p, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %112, i64 %conv129
  store i8* %add.ptr130, i8** %p, align 8
  br label %do.end131

do.end131:                                        ; preds = %if.end126
  %113 = load i8*, i8** %p, align 8
  %114 = load i64, i64* %n, align 8
  %115 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %revocation_date = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %115, i32 0, i32 2
  %year132 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %revocation_date, i32 0, i32 0
  %116 = load i32, i32* %year132, align 8
  %117 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %revocation_date133 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %117, i32 0, i32 2
  %mon134 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %revocation_date133, i32 0, i32 1
  %118 = load i32, i32* %mon134, align 4
  %119 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %revocation_date135 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %119, i32 0, i32 2
  %day136 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %revocation_date135, i32 0, i32 2
  %120 = load i32, i32* %day136, align 8
  %121 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %revocation_date137 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %121, i32 0, i32 2
  %hour138 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %revocation_date137, i32 0, i32 3
  %122 = load i32, i32* %hour138, align 4
  %123 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %revocation_date139 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %123, i32 0, i32 2
  %min140 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %revocation_date139, i32 0, i32 4
  %124 = load i32, i32* %min140, align 8
  %125 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %revocation_date141 = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %125, i32 0, i32 2
  %sec142 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %revocation_date141, i32 0, i32 5
  %126 = load i32, i32* %sec142, align 4
  %call143 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %113, i64 noundef %114, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124, i32 noundef %126) #4
  store i32 %call143, i32* %ret, align 4
  br label %do.body144

do.body144:                                       ; preds = %do.end131
  %127 = load i32, i32* %ret, align 4
  %cmp145 = icmp slt i32 %127, 0
  br i1 %cmp145, label %if.then151, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %do.body144
  %128 = load i32, i32* %ret, align 4
  %conv148 = sext i32 %128 to i64
  %129 = load i64, i64* %n, align 8
  %cmp149 = icmp uge i64 %conv148, %129
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %lor.lhs.false147, %do.body144
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end152:                                        ; preds = %lor.lhs.false147
  %130 = load i32, i32* %ret, align 4
  %conv153 = sext i32 %130 to i64
  %131 = load i64, i64* %n, align 8
  %sub154 = sub i64 %131, %conv153
  store i64 %sub154, i64* %n, align 8
  %132 = load i32, i32* %ret, align 4
  %conv155 = sext i32 %132 to i64
  %133 = load i8*, i8** %p, align 8
  %add.ptr156 = getelementptr inbounds i8, i8* %133, i64 %conv155
  store i8* %add.ptr156, i8** %p, align 8
  br label %do.end157

do.end157:                                        ; preds = %if.end152
  %134 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  %next = getelementptr inbounds %struct.mbedtls_x509_crl_entry, %struct.mbedtls_x509_crl_entry* %134, i32 0, i32 4
  %135 = load %struct.mbedtls_x509_crl_entry*, %struct.mbedtls_x509_crl_entry** %next, align 8
  store %struct.mbedtls_x509_crl_entry* %135, %struct.mbedtls_x509_crl_entry** %entry1, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  %136 = load i8*, i8** %p, align 8
  %137 = load i64, i64* %n, align 8
  %138 = load i8*, i8** %prefix.addr, align 8
  %call158 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %136, i64 noundef %137, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* noundef %138) #4
  store i32 %call158, i32* %ret, align 4
  br label %do.body159

do.body159:                                       ; preds = %while.end
  %139 = load i32, i32* %ret, align 4
  %cmp160 = icmp slt i32 %139, 0
  br i1 %cmp160, label %if.then166, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %do.body159
  %140 = load i32, i32* %ret, align 4
  %conv163 = sext i32 %140 to i64
  %141 = load i64, i64* %n, align 8
  %cmp164 = icmp uge i64 %conv163, %141
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %lor.lhs.false162, %do.body159
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end167:                                        ; preds = %lor.lhs.false162
  %142 = load i32, i32* %ret, align 4
  %conv168 = sext i32 %142 to i64
  %143 = load i64, i64* %n, align 8
  %sub169 = sub i64 %143, %conv168
  store i64 %sub169, i64* %n, align 8
  %144 = load i32, i32* %ret, align 4
  %conv170 = sext i32 %144 to i64
  %145 = load i8*, i8** %p, align 8
  %add.ptr171 = getelementptr inbounds i8, i8* %145, i64 %conv170
  store i8* %add.ptr171, i8** %p, align 8
  br label %do.end172

do.end172:                                        ; preds = %if.end167
  %146 = load i8*, i8** %p, align 8
  %147 = load i64, i64* %n, align 8
  %148 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %sig_oid = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %148, i32 0, i32 3
  %149 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %sig_pk = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %149, i32 0, i32 13
  %150 = load i32, i32* %sig_pk, align 4
  %151 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %sig_md = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %151, i32 0, i32 12
  %152 = load i32, i32* %sig_md, align 8
  %153 = load %struct.mbedtls_x509_crl*, %struct.mbedtls_x509_crl** %crl.addr, align 8
  %sig_opts = getelementptr inbounds %struct.mbedtls_x509_crl, %struct.mbedtls_x509_crl* %153, i32 0, i32 14
  %154 = load i8*, i8** %sig_opts, align 8
  %call173 = call i32 @mbedtls_x509_sig_alg_gets(i8* noundef %146, i64 noundef %147, %struct.mbedtls_asn1_buf* noundef %sig_oid, i32 noundef %150, i32 noundef %152, i8* noundef %154) #5
  store i32 %call173, i32* %ret, align 4
  br label %do.body174

do.body174:                                       ; preds = %do.end172
  %155 = load i32, i32* %ret, align 4
  %cmp175 = icmp slt i32 %155, 0
  br i1 %cmp175, label %if.then181, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %do.body174
  %156 = load i32, i32* %ret, align 4
  %conv178 = sext i32 %156 to i64
  %157 = load i64, i64* %n, align 8
  %cmp179 = icmp uge i64 %conv178, %157
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %lor.lhs.false177, %do.body174
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end182:                                        ; preds = %lor.lhs.false177
  %158 = load i32, i32* %ret, align 4
  %conv183 = sext i32 %158 to i64
  %159 = load i64, i64* %n, align 8
  %sub184 = sub i64 %159, %conv183
  store i64 %sub184, i64* %n, align 8
  %160 = load i32, i32* %ret, align 4
  %conv185 = sext i32 %160 to i64
  %161 = load i8*, i8** %p, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %161, i64 %conv185
  store i8* %add.ptr186, i8** %p, align 8
  br label %do.end187

do.end187:                                        ; preds = %if.end182
  %162 = load i8*, i8** %p, align 8
  %163 = load i64, i64* %n, align 8
  %call188 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %162, i64 noundef %163, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #4
  store i32 %call188, i32* %ret, align 4
  br label %do.body189

do.body189:                                       ; preds = %do.end187
  %164 = load i32, i32* %ret, align 4
  %cmp190 = icmp slt i32 %164, 0
  br i1 %cmp190, label %if.then196, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %do.body189
  %165 = load i32, i32* %ret, align 4
  %conv193 = sext i32 %165 to i64
  %166 = load i64, i64* %n, align 8
  %cmp194 = icmp uge i64 %conv193, %166
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %lor.lhs.false192, %do.body189
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end197:                                        ; preds = %lor.lhs.false192
  %167 = load i32, i32* %ret, align 4
  %conv198 = sext i32 %167 to i64
  %168 = load i64, i64* %n, align 8
  %sub199 = sub i64 %168, %conv198
  store i64 %sub199, i64* %n, align 8
  %169 = load i32, i32* %ret, align 4
  %conv200 = sext i32 %169 to i64
  %170 = load i8*, i8** %p, align 8
  %add.ptr201 = getelementptr inbounds i8, i8* %170, i64 %conv200
  store i8* %add.ptr201, i8** %p, align 8
  br label %do.end202

do.end202:                                        ; preds = %if.end197
  %171 = load i64, i64* %size.addr, align 8
  %172 = load i64, i64* %n, align 8
  %sub203 = sub i64 %171, %172
  %conv204 = trunc i64 %sub203 to i32
  store i32 %conv204, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end202, %if.then196, %if.then181, %if.then166, %if.then151, %if.then125, %if.then110, %if.then91, %if.then75, %if.then49, %if.then29, %if.then14, %if.then
  %173 = load i32, i32* %retval, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

declare dso_local i32 @mbedtls_x509_dn_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_x509_serial_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_buf* noundef) #2

declare dso_local i32 @mbedtls_x509_sig_alg_gets(i8* noundef, i64 noundef, %struct.mbedtls_asn1_buf* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #2

declare dso_local i32 @mbedtls_x509_get_serial(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_crl_entry_ext(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %ext) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ext.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %ext, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp = icmp ule i8* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %6, i32 0, i32 0
  store i32 %conv, i32* %tag, align 8
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 2
  store i8* %8, i8** %p1, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %len2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 1
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %10, i8* noundef %11, i64* noundef %len2, i32 noundef 48) #5
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %13 = load i32, i32* %ret, align 4
  %cmp6 = icmp eq i32 %13, -98
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %14 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %14, i32 0, i32 2
  store i8* null, i8** %p9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then5
  %15 = load i32, i32* %ret, align 4
  %call11 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 203) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %len13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %18, i32 0, i32 1
  %19 = load i64, i64* %len13, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %add.ptr, i8** %end.addr, align 8
  %20 = load i8*, i8** %end.addr, align 8
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %len14 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %23, i32 0, i32 1
  %24 = load i64, i64* %len14, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %22, i64 %24
  %cmp16 = icmp ne i8* %20, %add.ptr15
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  %call19 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 210) #5
  store i32 %call19, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end12
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end20
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %end.addr, align 8
  %cmp21 = icmp ult i8* %26, %27
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i8**, i8*** %p.addr, align 8
  %29 = load i8*, i8** %end.addr, align 8
  %call23 = call i32 @mbedtls_asn1_get_tag(i8** noundef %28, i8* noundef %29, i64* noundef %len, i32 noundef 48) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %while.body
  %30 = load i32, i32* %ret, align 4
  %call27 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %30, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 216) #5
  store i32 %call27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %while.body
  %31 = load i64, i64* %len, align 8
  %32 = load i8**, i8*** %p.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %33, i64 %31
  store i8* %add.ptr29, i8** %32, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %34 = load i8**, i8*** %p.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %end.addr, align 8
  %cmp30 = icmp ne i8* %35, %36
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %while.end
  %call33 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef 223) #5
  store i32 %call33, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then32, %if.then26, %if.then18, %if.end10, %if.then8, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

declare dso_local i32 @mbedtls_x509_get_ext(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_asn1_get_bool(i8** noundef, i8* noundef, i32* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
