; ModuleID = 'x509.c'
source_filename = "x509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_rsassa_pss_options = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"x509.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\01\08\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"??=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c",=+<>#;\22\\\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%02X%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"....\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" (%s, MGF1-%s, 0x%02X)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%s key size\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"RIPEMD160\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_serial(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %serial) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %serial.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %serial, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -8832, i32 noundef -96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 85) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 130
  br i1 %cmp1, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = zext i8 %8 to i32
  %cmp4 = icmp ne i32 %conv3, 2
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call i32 @mbedtls_error_add(i32 noundef -8832, i32 noundef -98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #4
  store i32 %call7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = zext i8 %11 to i32
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 0
  store i32 %conv9, i32* %tag, align 8
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %15 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %15, i32 0, i32 1
  %call10 = call i32 @mbedtls_asn1_get_len(i8** noundef %13, i8* noundef %14, i64* noundef %len) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end8
  %16 = load i32, i32* %ret, align 4
  %call14 = call i32 @mbedtls_error_add(i32 noundef -8832, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 95) #4
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %p16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %19, i32 0, i32 2
  store i8* %18, i8** %p16, align 8
  %20 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %len17 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %20, i32 0, i32 1
  %21 = load i64, i64* %len17, align 8
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %21
  store i8* %add.ptr, i8** %22, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then6, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
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

declare dso_local i32 @mbedtls_asn1_get_len(i8** noundef, i8* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_alg_null(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %alg.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %alg, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %call = call i32 @mbedtls_asn1_get_alg_null(i8** noundef %0, i8* noundef %1, %struct.mbedtls_asn1_buf* noundef %2) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 115) #4
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare dso_local i32 @mbedtls_asn1_get_alg_null(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %alg, %struct.mbedtls_asn1_buf* noundef %params) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %alg.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %alg, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %call = call i32 @mbedtls_asn1_get_alg(i8** noundef %0, i8* noundef %1, %struct.mbedtls_asn1_buf* noundef %2, %struct.mbedtls_asn1_buf* noundef %3) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #4
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_asn1_get_alg(i8** noundef, i8* noundef, %struct.mbedtls_asn1_buf* noundef, %struct.mbedtls_asn1_buf* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_rsassa_pss_params(%struct.mbedtls_asn1_buf* noundef %params, i32* noundef %md_alg, i32* noundef %mgf_md, i32* noundef %salt_len) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_alg.addr = alloca i32*, align 8
  %mgf_md.addr = alloca i32*, align 8
  %salt_len.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  %len = alloca i64, align 8
  %alg_id = alloca %struct.mbedtls_asn1_buf, align 8
  %alg_params = alloca %struct.mbedtls_asn1_buf, align 8
  %trailer_field = alloca i32, align 4
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  store i32* %mgf_md, i32** %mgf_md.addr, align 8
  store i32* %salt_len, i32** %salt_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32*, i32** %md_alg.addr, align 8
  store i32 2, i32* %0, align 4
  %1 = load i32*, i32** %mgf_md.addr, align 8
  store i32 2, i32* %1, align 4
  %2 = load i32*, i32** %salt_len.addr, align 8
  store i32 20, i32* %2, align 4
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %3, i32 0, i32 0
  %4 = load i32, i32* %tag, align 8
  %cmp = icmp ne i32 %4, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %5, i32 0, i32 2
  %6 = load i8*, i8** %p1, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %8 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %8, i32 0, i32 1
  %9 = load i64, i64* %len2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %9
  store i8* %add.ptr, i8** %end, align 8
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %end, align 8
  %cmp3 = icmp eq i8* %10, %11
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %12 = load i8*, i8** %end, align 8
  %call6 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %12, i64* noundef %len, i32 noundef 160) #4
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %13 = load i8*, i8** %p, align 8
  %14 = load i64, i64* %len, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %add.ptr9, i8** %end2, align 8
  %15 = load i8*, i8** %end2, align 8
  %call10 = call i32 @mbedtls_x509_get_alg_null(i8** noundef %p, i8* noundef %15, %struct.mbedtls_asn1_buf* noundef %alg_id) #4
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then8
  %17 = load i32*, i32** %md_alg.addr, align 8
  %call14 = call i32 @mbedtls_oid_get_md_alg(%struct.mbedtls_asn1_buf* noundef %alg_id, i32* noundef %17) #4
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %18 = load i32, i32* %ret, align 4
  %call17 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 284) #4
  store i32 %call17, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %19 = load i8*, i8** %p, align 8
  %20 = load i8*, i8** %end2, align 8
  %cmp19 = icmp ne i8* %19, %20
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 288) #4
  store i32 %call21, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  br label %if.end27

if.else:                                          ; preds = %if.end5
  %21 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %21, -98
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else
  %22 = load i32, i32* %ret, align 4
  %call25 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 291) #4
  store i32 %call25, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end22
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %end, align 8
  %cmp28 = icmp eq i8* %23, %24
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 0, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end27
  %25 = load i8*, i8** %end, align 8
  %call31 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %25, i64* noundef %len, i32 noundef 161) #4
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.else57

if.then33:                                        ; preds = %if.end30
  %26 = load i8*, i8** %p, align 8
  %27 = load i64, i64* %len, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %add.ptr34, i8** %end2, align 8
  %28 = load i8*, i8** %end2, align 8
  %call35 = call i32 @mbedtls_x509_get_alg(i8** noundef %p, i8* noundef %28, %struct.mbedtls_asn1_buf* noundef %alg_id, %struct.mbedtls_asn1_buf* noundef %alg_params) #4
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.then33
  %len39 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %alg_id, i32 0, i32 1
  %30 = load i64, i64* %len39, align 8
  %cmp40 = icmp ne i64 9, %30
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end38
  %p41 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %alg_id, i32 0, i32 2
  %31 = load i8*, i8** %p41, align 8
  %len42 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %alg_id, i32 0, i32 1
  %32 = load i64, i64* %len42, align 8
  %call43 = call i32 @memcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* noundef %31, i64 noundef %32) #5
  %cmp44 = icmp ne i32 %call43, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end38
  %33 = phi i1 [ true, %if.end38 ], [ %cmp44, %lor.rhs ]
  %lor.ext = zext i1 %33 to i32
  %cmp45 = icmp ne i32 %lor.ext, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %lor.end
  %call47 = call i32 @mbedtls_error_add(i32 noundef -8320, i32 noundef -46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 311) #4
  store i32 %call47, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %lor.end
  %34 = load i32*, i32** %mgf_md.addr, align 8
  %call49 = call i32 @x509_get_hash_alg(%struct.mbedtls_asn1_buf* noundef %alg_params, i32* noundef %34) #4
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  %35 = load i32, i32* %ret, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end48
  %36 = load i8*, i8** %p, align 8
  %37 = load i8*, i8** %end2, align 8
  %cmp53 = icmp ne i8* %36, %37
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %call55 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 319) #4
  store i32 %call55, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end52
  br label %if.end62

if.else57:                                        ; preds = %if.end30
  %38 = load i32, i32* %ret, align 4
  %cmp58 = icmp ne i32 %38, -98
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.else57
  %39 = load i32, i32* %ret, align 4
  %call60 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %39, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 322) #4
  store i32 %call60, i32* %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.else57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end56
  %40 = load i8*, i8** %p, align 8
  %41 = load i8*, i8** %end, align 8
  %cmp63 = icmp eq i8* %40, %41
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  store i32 0, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.end62
  %42 = load i8*, i8** %end, align 8
  %call66 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %42, i64* noundef %len, i32 noundef 162) #4
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.else79

if.then68:                                        ; preds = %if.end65
  %43 = load i8*, i8** %p, align 8
  %44 = load i64, i64* %len, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %add.ptr69, i8** %end2, align 8
  %45 = load i8*, i8** %end2, align 8
  %46 = load i32*, i32** %salt_len.addr, align 8
  %call70 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %45, i32* noundef %46) #4
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.then68
  %47 = load i32, i32* %ret, align 4
  %call73 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %47, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 336) #4
  store i32 %call73, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.then68
  %48 = load i8*, i8** %p, align 8
  %49 = load i8*, i8** %end2, align 8
  %cmp75 = icmp ne i8* %48, %49
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end74
  %call77 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 340) #4
  store i32 %call77, i32* %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.end74
  br label %if.end84

if.else79:                                        ; preds = %if.end65
  %50 = load i32, i32* %ret, align 4
  %cmp80 = icmp ne i32 %50, -98
  br i1 %cmp80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.else79
  %51 = load i32, i32* %ret, align 4
  %call82 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %51, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 343) #4
  store i32 %call82, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.else79
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end78
  %52 = load i8*, i8** %p, align 8
  %53 = load i8*, i8** %end, align 8
  %cmp85 = icmp eq i8* %52, %53
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end84
  store i32 0, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.end84
  %54 = load i8*, i8** %end, align 8
  %call88 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %54, i64* noundef %len, i32 noundef 163) #4
  store i32 %call88, i32* %ret, align 4
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then90, label %if.else104

if.then90:                                        ; preds = %if.end87
  %55 = load i8*, i8** %p, align 8
  %56 = load i64, i64* %len, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %add.ptr91, i8** %end2, align 8
  %57 = load i8*, i8** %end2, align 8
  %call92 = call i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %57, i32* noundef %trailer_field) #4
  store i32 %call92, i32* %ret, align 4
  %cmp93 = icmp ne i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.then90
  %58 = load i32, i32* %ret, align 4
  %call95 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %58, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 359) #4
  store i32 %call95, i32* %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.then90
  %59 = load i8*, i8** %p, align 8
  %60 = load i8*, i8** %end2, align 8
  %cmp97 = icmp ne i8* %59, %60
  br i1 %cmp97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end96
  %call99 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 363) #4
  store i32 %call99, i32* %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end96
  %61 = load i32, i32* %trailer_field, align 4
  %cmp101 = icmp ne i32 %61, 1
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end100
  store i32 -8960, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.end100
  br label %if.end109

if.else104:                                       ; preds = %if.end87
  %62 = load i32, i32* %ret, align 4
  %cmp105 = icmp ne i32 %62, -98
  br i1 %cmp105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.else104
  %63 = load i32, i32* %ret, align 4
  %call107 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %63, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 369) #4
  store i32 %call107, i32* %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.else104
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end103
  %64 = load i8*, i8** %p, align 8
  %65 = load i8*, i8** %end, align 8
  %cmp110 = icmp ne i8* %64, %65
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.end109
  %call112 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 373) #4
  store i32 %call112, i32* %retval, align 4
  br label %return

if.end113:                                        ; preds = %if.end109
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end113, %if.then111, %if.then106, %if.then102, %if.then98, %if.then94, %if.then86, %if.then81, %if.then76, %if.then72, %if.then64, %if.then59, %if.then54, %if.then51, %if.then46, %if.then37, %if.then29, %if.then24, %if.then20, %if.then16, %if.then12, %if.then4, %if.then
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8** noundef, i8* noundef, i64* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_oid_get_md_alg(%struct.mbedtls_asn1_buf* noundef, i32* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_hash_alg(%struct.mbedtls_asn1_buf* noundef %alg, i32* noundef %md_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_alg.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %md_oid = alloca %struct.mbedtls_asn1_buf, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_asn1_buf* %alg, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %0, i32 0, i32 0
  %1 = load i32, i32* %tag, align 8
  %cmp = icmp ne i32 %1, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 2
  %3 = load i8*, i8** %p1, align 8
  store i8* %3, i8** %p, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %len2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %5, i32 0, i32 1
  %6 = load i64, i64* %len2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %add.ptr, i8** %end, align 8
  %7 = load i8*, i8** %p, align 8
  %8 = load i8*, i8** %end, align 8
  %cmp3 = icmp uge i8* %7, %8
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 204) #4
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %tag7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %md_oid, i32 0, i32 0
  store i32 %conv, i32* %tag7, align 8
  %11 = load i8*, i8** %end, align 8
  %len8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %md_oid, i32 0, i32 1
  %call9 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %11, i64* noundef %len8, i32 noundef 6) #4
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end6
  %12 = load i32, i32* %ret, align 4
  %call13 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 210) #4
  store i32 %call13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end6
  %13 = load i8*, i8** %p, align 8
  %p15 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %md_oid, i32 0, i32 2
  store i8* %13, i8** %p15, align 8
  %len16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %md_oid, i32 0, i32 1
  %14 = load i64, i64* %len16, align 8
  %15 = load i8*, i8** %p, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8* %add.ptr17, i8** %p, align 8
  %16 = load i32*, i32** %md_alg.addr, align 8
  %call18 = call i32 @mbedtls_oid_get_md_alg(%struct.mbedtls_asn1_buf* noundef %md_oid, i32* noundef %16) #4
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  %17 = load i32, i32* %ret, align 4
  %call22 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 217) #4
  store i32 %call22, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end14
  %18 = load i8*, i8** %p, align 8
  %19 = load i8*, i8** %end, align 8
  %cmp24 = icmp eq i8* %18, %19
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %20 = load i8*, i8** %end, align 8
  %call28 = call i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %20, i64* noundef %len, i32 noundef 5) #4
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end27
  %21 = load i64, i64* %len, align 8
  %cmp31 = icmp ne i64 %21, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false, %if.end27
  %22 = load i32, i32* %ret, align 4
  %call34 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 224) #4
  store i32 %call34, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false
  %23 = load i8*, i8** %p, align 8
  %24 = load i8*, i8** %end, align 8
  %cmp36 = icmp ne i8* %23, %24
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  %call39 = call i32 @mbedtls_error_add(i32 noundef -8960, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 228) #4
  store i32 %call39, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end35
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then38, %if.then33, %if.then26, %if.then21, %if.then12, %if.then4, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @mbedtls_asn1_get_int(i8** noundef, i8* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_name(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_named_data* noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %cur.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %set_len = alloca i64, align 8
  %end_set = alloca i8*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_named_data* %cur, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end25
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %set_len, i32 noundef 49) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 485) #4
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %set_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %end_set, align 8
  br label %while.body3

while.body3:                                      ; preds = %if.end, %if.end15
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %end_set, align 8
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %call4 = call i32 @x509_get_attr_type_value(i8** noundef %6, i8* noundef %7, %struct.mbedtls_asn1_named_data* noundef %8) #4
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body3
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %while.body3
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %end_set, align 8
  %cmp8 = icmp eq i8* %11, %12
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  br label %while.end

if.end10:                                         ; preds = %if.end7
  %13 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next_merged = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %13, i32 0, i32 3
  store i8 1, i8* %next_merged, align 8
  %call11 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #6
  %14 = bitcast i8* %call11 to %struct.mbedtls_asn1_named_data*
  %15 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %15, i32 0, i32 2
  store %struct.mbedtls_asn1_named_data* %14, %struct.mbedtls_asn1_named_data** %next, align 8
  %16 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next12 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %16, i32 0, i32 2
  %17 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next12, align 8
  %cmp13 = icmp eq %struct.mbedtls_asn1_named_data* %17, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %18 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next16 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %18, i32 0, i32 2
  %19 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next16, align 8
  store %struct.mbedtls_asn1_named_data* %19, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  br label %while.body3

while.end:                                        ; preds = %if.then9
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %end.addr, align 8
  %cmp17 = icmp eq i8* %21, %22
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %while.end
  %call20 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #6
  %23 = bitcast i8* %call20 to %struct.mbedtls_asn1_named_data*
  %24 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next21 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %24, i32 0, i32 2
  store %struct.mbedtls_asn1_named_data* %23, %struct.mbedtls_asn1_named_data** %next21, align 8
  %25 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next22 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %25, i32 0, i32 2
  %26 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next22, align 8
  %cmp23 = icmp eq %struct.mbedtls_asn1_named_data* %26, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %27 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next26 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %27, i32 0, i32 2
  %28 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next26, align 8
  store %struct.mbedtls_asn1_named_data* %28, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  br label %while.body

return:                                           ; preds = %if.then24, %if.then18, %if.then14, %if.then6, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_attr_type_value(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_named_data* noundef %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %cur.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %oid = alloca %struct.mbedtls_asn1_buf*, align 8
  %val = alloca %struct.mbedtls_asn1_buf*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_named_data* %cur, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 48) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 399) #4
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  store i8* %add.ptr, i8** %end.addr, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp2 = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef -96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 405) #4
  store i32 %call4, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %oid6 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %9, i32 0, i32 0
  store %struct.mbedtls_asn1_buf* %oid6, %struct.mbedtls_asn1_buf** %oid, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 0
  store i32 %conv, i32* %tag, align 8
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %end.addr, align 8
  %16 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid, align 8
  %len7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %16, i32 0, i32 1
  %call8 = call i32 @mbedtls_asn1_get_tag(i8** noundef %14, i8* noundef %15, i64* noundef %len7, i32 noundef 6) #4
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end5
  %17 = load i32, i32* %ret, align 4
  %call12 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 411) #4
  store i32 %call12, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end5
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid, align 8
  %p14 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %20, i32 0, i32 2
  store i8* %19, i8** %p14, align 8
  %21 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %oid, align 8
  %len15 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %21, i32 0, i32 1
  %22 = load i64, i64* %len15, align 8
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %24, i64 %22
  store i8* %add.ptr16, i8** %23, align 8
  %25 = load i8*, i8** %end.addr, align 8
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %27 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %cmp20 = icmp slt i64 %sub.ptr.sub19, 1
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end13
  %call23 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef -96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 418) #4
  store i32 %call23, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end13
  %28 = load i8**, i8*** %p.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %conv25 = zext i8 %30 to i32
  %cmp26 = icmp ne i32 %conv25, 30
  br i1 %cmp26, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end24
  %31 = load i8**, i8*** %p.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %conv28 = zext i8 %33 to i32
  %cmp29 = icmp ne i32 %conv28, 12
  br i1 %cmp29, label %land.lhs.true31, label %if.end53

land.lhs.true31:                                  ; preds = %land.lhs.true
  %34 = load i8**, i8*** %p.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %conv32 = zext i8 %36 to i32
  %cmp33 = icmp ne i32 %conv32, 20
  br i1 %cmp33, label %land.lhs.true35, label %if.end53

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %37 = load i8**, i8*** %p.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %conv36 = zext i8 %39 to i32
  %cmp37 = icmp ne i32 %conv36, 19
  br i1 %cmp37, label %land.lhs.true39, label %if.end53

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %40 = load i8**, i8*** %p.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %conv40 = zext i8 %42 to i32
  %cmp41 = icmp ne i32 %conv40, 22
  br i1 %cmp41, label %land.lhs.true43, label %if.end53

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %43 = load i8**, i8*** %p.addr, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %conv44 = zext i8 %45 to i32
  %cmp45 = icmp ne i32 %conv44, 28
  br i1 %cmp45, label %land.lhs.true47, label %if.end53

land.lhs.true47:                                  ; preds = %land.lhs.true43
  %46 = load i8**, i8*** %p.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %conv48 = zext i8 %48 to i32
  %cmp49 = icmp ne i32 %conv48, 3
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %land.lhs.true47
  %call52 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef -98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 425) #4
  store i32 %call52, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %land.lhs.true47, %land.lhs.true43, %land.lhs.true39, %land.lhs.true35, %land.lhs.true31, %land.lhs.true, %if.end24
  %49 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %val54 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %49, i32 0, i32 1
  store %struct.mbedtls_asn1_buf* %val54, %struct.mbedtls_asn1_buf** %val, align 8
  %50 = load i8**, i8*** %p.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %conv55 = zext i8 %52 to i32
  %53 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %val, align 8
  %tag56 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %53, i32 0, i32 0
  store i32 %conv55, i32* %tag56, align 8
  %54 = load i8**, i8*** %p.addr, align 8
  %55 = load i8*, i8** %end.addr, align 8
  %56 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %val, align 8
  %len57 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %56, i32 0, i32 1
  %call58 = call i32 @mbedtls_asn1_get_len(i8** noundef %54, i8* noundef %55, i64* noundef %len57) #4
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end53
  %57 = load i32, i32* %ret, align 4
  %call62 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef %57, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 431) #4
  store i32 %call62, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end53
  %58 = load i8**, i8*** %p.addr, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %val, align 8
  %p64 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %60, i32 0, i32 2
  store i8* %59, i8** %p64, align 8
  %61 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %val, align 8
  %len65 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %61, i32 0, i32 1
  %62 = load i64, i64* %len65, align 8
  %63 = load i8**, i8*** %p.addr, align 8
  %64 = load i8*, i8** %63, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %64, i64 %62
  store i8* %add.ptr66, i8** %63, align 8
  %65 = load i8**, i8*** %p.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %end.addr, align 8
  %cmp67 = icmp ne i8* %66, %67
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end63
  %call70 = call i32 @mbedtls_error_add(i32 noundef -9088, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 439) #4
  store i32 %call70, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end63
  %68 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %68, i32 0, i32 2
  store %struct.mbedtls_asn1_named_data* null, %struct.mbedtls_asn1_named_data** %next, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then69, %if.then61, %if.then51, %if.then22, %if.then11, %if.then3, %if.then
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_time(i8** noundef %p, i8* noundef %end, %struct.mbedtls_x509_time* noundef %tm) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %tm.addr = alloca %struct.mbedtls_x509_time*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %year_len = alloca i64, align 8
  %tag = alloca i8, align 1
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_x509_time* %tm, %struct.mbedtls_x509_time** %tm.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef -96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 650) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %tag, align 1
  %6 = load i8, i8* %tag, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 23
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 2, i64* %year_len, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  %7 = load i8, i8* %tag, align 1
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 24
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i64 4, i64* %year_len, align 8
  br label %if.end10

if.else8:                                         ; preds = %if.else
  %call9 = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef -98, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 660) #4
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %end.addr, align 8
  %call12 = call i32 @mbedtls_asn1_get_len(i8** noundef %10, i8* noundef %11, i64* noundef %len) #4
  store i32 %call12, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp13 = icmp ne i32 %12, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  %13 = load i32, i32* %ret, align 4
  %call16 = call i32 @mbedtls_error_add(i32 noundef -9216, i32 noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 666) #4
  store i32 %call16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end11
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i64, i64* %len, align 8
  %16 = load i64, i64* %year_len, align 8
  %17 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %call18 = call i32 @x509_parse_time(i8** noundef %14, i64 noundef %15, i64 noundef %16, %struct.mbedtls_x509_time* noundef %17) #4
  store i32 %call18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.else8, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_time(i8** noundef %p, i64 noundef %len, i64 noundef %yearlen, %struct.mbedtls_x509_time* noundef %tm) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %len.addr = alloca i64, align 8
  %yearlen.addr = alloca i64, align 8
  %tm.addr = alloca %struct.mbedtls_x509_time*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %yearlen, i64* %yearlen.addr, align 8
  store %struct.mbedtls_x509_time* %tm, %struct.mbedtls_x509_time** %tm.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i64, i64* %len.addr, align 8
  %1 = load i64, i64* %yearlen.addr, align 8
  %add = add i64 %1, 8
  %cmp = icmp ult i64 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -9216, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %yearlen.addr, align 8
  %add1 = add i64 %2, 8
  %3 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %3, %add1
  store i64 %sub, i64* %len.addr, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i64, i64* %yearlen.addr, align 8
  %6 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %year = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %6, i32 0, i32 0
  %call = call i32 @x509_parse_int(i8** noundef %4, i64 noundef %5, i32* noundef %year) #4
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load i64, i64* %yearlen.addr, align 8
  %cmp5 = icmp eq i64 2, %8
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end4
  %9 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %year7 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %9, i32 0, i32 0
  %10 = load i32, i32* %year7, align 4
  %cmp8 = icmp slt i32 %10, 50
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.then6
  %11 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %year10 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %11, i32 0, i32 0
  %12 = load i32, i32* %year10, align 4
  %add11 = add nsw i32 %12, 100
  store i32 %add11, i32* %year10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6
  %13 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %year13 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %13, i32 0, i32 0
  %14 = load i32, i32* %year13, align 4
  %add14 = add nsw i32 %14, 1900
  store i32 %add14, i32* %year13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end4
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %mon = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %16, i32 0, i32 1
  %call16 = call i32 @x509_parse_int(i8** noundef %15, i64 noundef 2, i32* noundef %mon) #4
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %day = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %19, i32 0, i32 2
  %call20 = call i32 @x509_parse_int(i8** noundef %18, i64 noundef 2, i32* noundef %day) #4
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end19
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %hour = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %22, i32 0, i32 3
  %call24 = call i32 @x509_parse_int(i8** noundef %21, i64 noundef 2, i32* noundef %hour) #4
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %min = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %25, i32 0, i32 4
  %call28 = call i32 @x509_parse_int(i8** noundef %24, i64 noundef 2, i32* noundef %min) #4
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end27
  %27 = load i64, i64* %len.addr, align 8
  %cmp32 = icmp uge i64 %27, 2
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %28 = load i8**, i8*** %p.addr, align 8
  %29 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %sec = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %29, i32 0, i32 5
  %call34 = call i32 @x509_parse_int(i8** noundef %28, i64 noundef 2, i32* noundef %sec) #4
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then33
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then33
  %31 = load i64, i64* %len.addr, align 8
  %sub38 = sub i64 %31, 2
  store i64 %sub38, i64* %len.addr, align 8
  br label %if.end39

if.else:                                          ; preds = %if.end31
  store i32 -9216, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end37
  %32 = load i64, i64* %len.addr, align 8
  %cmp40 = icmp eq i64 1, %32
  br i1 %cmp40, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end39
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %conv = zext i8 %35 to i32
  %cmp41 = icmp eq i32 90, %conv
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  %36 = load i8**, i8*** %p.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %36, align 8
  %38 = load i64, i64* %len.addr, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %len.addr, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %if.end39
  %39 = load i64, i64* %len.addr, align 8
  %cmp45 = icmp ne i64 0, %39
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  store i32 -9216, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end44
  %40 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %tm.addr, align 8
  %call49 = call i32 @x509_date_is_valid(%struct.mbedtls_x509_time* noundef %40) #4
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end48
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then52, %if.then47, %if.else, %if.then36, %if.then30, %if.then26, %if.then22, %if.then18, %if.then3, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_sig(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %sig.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %tag_type = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %sig, %struct.mbedtls_asn1_buf** %sig.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @mbedtls_error_add(i32 noundef -9344, i32 noundef -96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 679) #4
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %tag_type, align 4
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %end.addr, align 8
  %call1 = call i32 @mbedtls_asn1_get_bitstring_null(i8** noundef %6, i8* noundef %7, i64* noundef %len) #4
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call5 = call i32 @mbedtls_error_add(i32 noundef -9344, i32 noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 684) #4
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %tag_type, align 4
  %10 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %10, i32 0, i32 0
  store i32 %9, i32* %tag, align 8
  %11 = load i64, i64* %len, align 8
  %12 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig.addr, align 8
  %len7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %12, i32 0, i32 1
  store i64 %11, i64* %len7, align 8
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig.addr, align 8
  %p8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %15, i32 0, i32 2
  store i8* %14, i8** %p8, align 8
  %16 = load i64, i64* %len, align 8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %16
  store i8* %add.ptr, i8** %17, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @mbedtls_asn1_get_bitstring_null(i8** noundef, i8* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_sig_alg(%struct.mbedtls_asn1_buf* noundef %sig_oid, %struct.mbedtls_asn1_buf* noundef %sig_params, i32* noundef %md_alg, i32* noundef %pk_alg, i8** noundef %sig_opts) #0 {
entry:
  %retval = alloca i32, align 4
  %sig_oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %sig_params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %md_alg.addr = alloca i32*, align 8
  %pk_alg.addr = alloca i32*, align 8
  %sig_opts.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %pss_opts = alloca %struct.mbedtls_pk_rsassa_pss_options*, align 8
  store %struct.mbedtls_asn1_buf* %sig_oid, %struct.mbedtls_asn1_buf** %sig_oid.addr, align 8
  store %struct.mbedtls_asn1_buf* %sig_params, %struct.mbedtls_asn1_buf** %sig_params.addr, align 8
  store i32* %md_alg, i32** %md_alg.addr, align 8
  store i32* %pk_alg, i32** %pk_alg.addr, align 8
  store i8** %sig_opts, i8*** %sig_opts.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %sig_opts.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig_oid.addr, align 8
  %3 = load i32*, i32** %md_alg.addr, align 8
  %4 = load i32*, i32** %pk_alg.addr, align 8
  %call = call i32 @mbedtls_oid_get_sig_alg(%struct.mbedtls_asn1_buf* noundef %2, i32* noundef %3, i32* noundef %4) #4
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  %call3 = call i32 @mbedtls_error_add(i32 noundef -9728, i32 noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 708) #4
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load i32*, i32** %pk_alg.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp5 = icmp eq i32 %7, 6
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %call7 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 8) #6
  %8 = bitcast i8* %call7 to %struct.mbedtls_pk_rsassa_pss_options*
  store %struct.mbedtls_pk_rsassa_pss_options* %8, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %9 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %cmp8 = icmp eq %struct.mbedtls_pk_rsassa_pss_options* %9, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %10 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig_params.addr, align 8
  %11 = load i32*, i32** %md_alg.addr, align 8
  %12 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %mgf1_hash_id = getelementptr inbounds %struct.mbedtls_pk_rsassa_pss_options, %struct.mbedtls_pk_rsassa_pss_options* %12, i32 0, i32 0
  %13 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %expected_salt_len = getelementptr inbounds %struct.mbedtls_pk_rsassa_pss_options, %struct.mbedtls_pk_rsassa_pss_options* %13, i32 0, i32 1
  %call11 = call i32 @mbedtls_x509_get_rsassa_pss_params(%struct.mbedtls_asn1_buf* noundef %10, i32* noundef %11, i32* noundef %mgf1_hash_id, i32* noundef %expected_salt_len) #4
  store i32 %call11, i32* %ret, align 4
  %14 = load i32, i32* %ret, align 4
  %cmp12 = icmp ne i32 %14, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %15 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %16 = bitcast %struct.mbedtls_pk_rsassa_pss_options* %15 to i8*
  call void @free(i8* noundef %16) #6
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %18 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %19 = bitcast %struct.mbedtls_pk_rsassa_pss_options* %18 to i8*
  %20 = load i8**, i8*** %sig_opts.addr, align 8
  store i8* %19, i8** %20, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end4
  %21 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig_params.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %21, i32 0, i32 0
  %22 = load i32, i32* %tag, align 8
  %cmp15 = icmp ne i32 %22, 5
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  %23 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig_params.addr, align 8
  %tag16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %23, i32 0, i32 0
  %24 = load i32, i32* %tag16, align 8
  %cmp17 = icmp ne i32 %24, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %25 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig_params.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %25, i32 0, i32 1
  %26 = load i64, i64* %len, align 8
  %cmp18 = icmp ne i64 %26, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -8960, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end14
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then19, %if.then13, %if.then9, %if.then2, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_oid_get_sig_alg(%struct.mbedtls_asn1_buf* noundef, i32* noundef, i32* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_ext(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %ext, i32 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %ext.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %tag.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %ext, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %len1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 1
  %3 = load i32, i32* %tag.addr, align 4
  %or = or i32 160, %3
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len1, i32 noundef %or) #4
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  %call2 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 759) #4
  store i32 %call2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %tag.addr, align 4
  %or3 = or i32 160, %6
  %7 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %tag4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %7, i32 0, i32 0
  store i32 %or3, i32* %tag4, align 8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %10, i32 0, i32 2
  store i8* %9, i8** %p5, align 8
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %ext.addr, align 8
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %13, i32 0, i32 1
  %14 = load i64, i64* %len6, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %add.ptr, i8** %end.addr, align 8
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %end.addr, align 8
  %call7 = call i32 @mbedtls_asn1_get_tag(i8** noundef %15, i8* noundef %16, i64* noundef %len, i32 noundef 48) #4
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %17 = load i32, i32* %ret, align 4
  %call10 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 770) #4
  store i32 %call10, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %18 = load i8*, i8** %end.addr, align 8
  %19 = load i8**, i8*** %p.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %len, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %20, i64 %21
  %cmp13 = icmp ne i8* %18, %add.ptr12
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 @mbedtls_error_add(i32 noundef -9472, i32 noundef -102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef 774) #4
  store i32 %call15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then9, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_dn_gets(i8* noundef %buf, i64 noundef %size, %struct.mbedtls_asn1_named_data* noundef %dn) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %dn.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %c = alloca i8, align 1
  %merge = alloca i8, align 1
  %name = alloca %struct.mbedtls_asn1_named_data*, align 8
  %short_name = alloca i8*, align 8
  %s = alloca [256 x i8], align 16
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.mbedtls_asn1_named_data* %dn, %struct.mbedtls_asn1_named_data** %dn.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8 0, i8* %merge, align 1
  store i8* null, i8** %short_name, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 256) #6
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %dn.addr, align 8
  store %struct.mbedtls_asn1_named_data* %0, %struct.mbedtls_asn1_named_data** %name, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i64, i64* %size.addr, align 8
  store i64 %2, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end88, %if.then, %entry
  %3 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_named_data* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %oid = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %4, i32 0, i32 0
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 2
  %5 = load i8*, i8** %p1, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %6, i32 0, i32 2
  %7 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %7, %struct.mbedtls_asn1_named_data** %name, align 8
  br label %while.cond, !llvm.loop !4

if.end:                                           ; preds = %while.body
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %dn.addr, align 8
  %cmp2 = icmp ne %struct.mbedtls_asn1_named_data* %8, %9
  br i1 %cmp2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i64, i64* %n, align 8
  %12 = load i8, i8* %merge, align 1
  %conv = zext i8 %12 to i32
  %tobool4 = icmp ne i32 %conv, 0
  %13 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %10, i64 noundef %11, i8* noundef %cond) #6
  store i32 %call5, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.then3
  %14 = load i32, i32* %ret, align 4
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %15 = load i32, i32* %ret, align 4
  %conv8 = sext i32 %15 to i64
  %16 = load i64, i64* %n, align 8
  %cmp9 = icmp uge i64 %conv8, %16
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %17 = load i32, i32* %ret, align 4
  %conv13 = sext i32 %17 to i64
  %18 = load i64, i64* %n, align 8
  %sub = sub i64 %18, %conv13
  store i64 %sub, i64* %n, align 8
  %19 = load i32, i32* %ret, align 4
  %conv14 = sext i32 %19 to i64
  %20 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %conv14
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end
  %21 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %oid16 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %21, i32 0, i32 0
  %call17 = call i32 @mbedtls_oid_get_attr_short_name(%struct.mbedtls_asn1_buf* noundef %oid16, i8** noundef %short_name) #4
  store i32 %call17, i32* %ret, align 4
  %22 = load i32, i32* %ret, align 4
  %cmp18 = icmp eq i32 %22, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  %23 = load i8*, i8** %p, align 8
  %24 = load i64, i64* %n, align 8
  %25 = load i8*, i8** %short_name, align 8
  %call21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %23, i64 noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %25) #6
  store i32 %call21, i32* %ret, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end15
  %26 = load i8*, i8** %p, align 8
  %27 = load i64, i64* %n, align 8
  %call22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %26, i64 noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  store i32 %call22, i32* %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  br label %do.body24

do.body24:                                        ; preds = %if.end23
  %28 = load i32, i32* %ret, align 4
  %cmp25 = icmp slt i32 %28, 0
  br i1 %cmp25, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %do.body24
  %29 = load i32, i32* %ret, align 4
  %conv28 = sext i32 %29 to i64
  %30 = load i64, i64* %n, align 8
  %cmp29 = icmp uge i64 %conv28, %30
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %lor.lhs.false27, %do.body24
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false27
  %31 = load i32, i32* %ret, align 4
  %conv33 = sext i32 %31 to i64
  %32 = load i64, i64* %n, align 8
  %sub34 = sub i64 %32, %conv33
  store i64 %sub34, i64* %n, align 8
  %33 = load i32, i32* %ret, align 4
  %conv35 = sext i32 %33 to i64
  %34 = load i8*, i8** %p, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %34, i64 %conv35
  store i8* %add.ptr36, i8** %p, align 8
  br label %do.end37

do.end37:                                         ; preds = %if.end32
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end37
  %35 = load i64, i64* %i, align 8
  %36 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %36, i32 0, i32 1
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 1
  %37 = load i64, i64* %len, align 8
  %cmp38 = icmp ult i64 %35, %37
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %j, align 8
  %cmp40 = icmp uge i64 %38, 255
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %for.body
  %39 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %val44 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %39, i32 0, i32 1
  %p45 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val44, i32 0, i32 2
  %40 = load i8*, i8** %p45, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i8, i8* %arrayidx, align 1
  store i8 %42, i8* %c, align 1
  %43 = load i8, i8* %c, align 1
  %conv46 = zext i8 %43 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.end43
  %44 = load i8, i8* %c, align 1
  %conv48 = zext i8 %44 to i32
  %call49 = call i8* @strchr(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv48) #5
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %if.then51, label %if.end57

if.then51:                                        ; preds = %land.lhs.true
  %45 = load i64, i64* %j, align 8
  %add = add i64 %45, 1
  %cmp52 = icmp uge i64 %add, 255
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.then51
  %46 = load i64, i64* %j, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %j, align 8
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 %46
  store i8 92, i8* %arrayidx56, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %land.lhs.true, %if.end43
  %47 = load i8, i8* %c, align 1
  %conv58 = zext i8 %47 to i32
  %cmp59 = icmp slt i32 %conv58, 32
  br i1 %cmp59, label %if.then65, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end57
  %48 = load i8, i8* %c, align 1
  %conv62 = zext i8 %48 to i32
  %cmp63 = icmp sge i32 %conv62, 127
  br i1 %cmp63, label %if.then65, label %if.else67

if.then65:                                        ; preds = %lor.lhs.false61, %if.end57
  %49 = load i64, i64* %j, align 8
  %arrayidx66 = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 %49
  store i8 63, i8* %arrayidx66, align 1
  br label %if.end69

if.else67:                                        ; preds = %lor.lhs.false61
  %50 = load i8, i8* %c, align 1
  %51 = load i64, i64* %j, align 8
  %arrayidx68 = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 %51
  store i8 %50, i8* %arrayidx68, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then65
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %52 = load i64, i64* %i, align 8
  %inc70 = add i64 %52, 1
  store i64 %inc70, i64* %i, align 8
  %53 = load i64, i64* %j, align 8
  %inc71 = add i64 %53, 1
  store i64 %inc71, i64* %j, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %54 = load i64, i64* %j, align 8
  %arrayidx72 = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 %54
  store i8 0, i8* %arrayidx72, align 1
  %55 = load i8*, i8** %p, align 8
  %56 = load i64, i64* %n, align 8
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %s, i64 0, i64 0
  %call74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %55, i64 noundef %56, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %arraydecay73) #6
  store i32 %call74, i32* %ret, align 4
  br label %do.body75

do.body75:                                        ; preds = %for.end
  %57 = load i32, i32* %ret, align 4
  %cmp76 = icmp slt i32 %57, 0
  br i1 %cmp76, label %if.then82, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %do.body75
  %58 = load i32, i32* %ret, align 4
  %conv79 = sext i32 %58 to i64
  %59 = load i64, i64* %n, align 8
  %cmp80 = icmp uge i64 %conv79, %59
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %lor.lhs.false78, %do.body75
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %lor.lhs.false78
  %60 = load i32, i32* %ret, align 4
  %conv84 = sext i32 %60 to i64
  %61 = load i64, i64* %n, align 8
  %sub85 = sub i64 %61, %conv84
  store i64 %sub85, i64* %n, align 8
  %62 = load i32, i32* %ret, align 4
  %conv86 = sext i32 %62 to i64
  %63 = load i8*, i8** %p, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %63, i64 %conv86
  store i8* %add.ptr87, i8** %p, align 8
  br label %do.end88

do.end88:                                         ; preds = %if.end83
  %64 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %next_merged = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %64, i32 0, i32 3
  %65 = load i8, i8* %next_merged, align 8
  store i8 %65, i8* %merge, align 1
  %66 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %name, align 8
  %next89 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %66, i32 0, i32 2
  %67 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next89, align 8
  store %struct.mbedtls_asn1_named_data* %67, %struct.mbedtls_asn1_named_data** %name, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %68 = load i64, i64* %size.addr, align 8
  %69 = load i64, i64* %n, align 8
  %sub90 = sub i64 %68, %69
  %conv91 = trunc i64 %sub90 to i32
  store i32 %conv91, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then82, %if.then54, %if.then42, %if.then31, %if.then11
  %70 = load i32, i32* %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

declare dso_local i32 @mbedtls_oid_get_attr_short_name(%struct.mbedtls_asn1_buf* noundef, i8** noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_serial_gets(i8* noundef %buf, i64 noundef %size, %struct.mbedtls_asn1_buf* noundef %serial) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %serial.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %nr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.mbedtls_asn1_buf* %serial, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %2, i32 0, i32 1
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ule i64 %3, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %len1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %4, i32 0, i32 1
  %5 = load i64, i64* %len1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ 28, %cond.false ]
  store i64 %cond, i64* %nr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %nr, align 8
  %cmp2 = icmp ult i64 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %cmp3 = icmp eq i64 %8, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i64, i64* %nr, align 8
  %cmp4 = icmp ugt i64 %9, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %p6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %10, i32 0, i32 2
  %11 = load i8*, i8** %p6, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %for.body
  %14 = load i8*, i8** %p, align 8
  %15 = load i64, i64* %n, align 8
  %16 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %p9 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %16, i32 0, i32 2
  %17 = load i8*, i8** %p9, align 8
  %18 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %19 to i32
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %nr, align 8
  %sub = sub i64 %21, 1
  %cmp12 = icmp ult i64 %20, %sub
  %22 = zext i1 %cmp12 to i64
  %cond14 = select i1 %cmp12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %14, i64 noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv11, i8* noundef %cond14) #6
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %23 = load i32, i32* %ret, align 4
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %24 = load i32, i32* %ret, align 4
  %conv17 = sext i32 %24 to i64
  %25 = load i64, i64* %n, align 8
  %cmp18 = icmp uge i64 %conv17, %25
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false
  %26 = load i32, i32* %ret, align 4
  %conv22 = sext i32 %26 to i64
  %27 = load i64, i64* %n, align 8
  %sub23 = sub i64 %27, %conv22
  store i64 %sub23, i64* %n, align 8
  %28 = load i32, i32* %ret, align 4
  %conv24 = sext i32 %28 to i64
  %29 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %conv24
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end21
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %31 = load i64, i64* %nr, align 8
  %32 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %serial.addr, align 8
  %len25 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %32, i32 0, i32 1
  %33 = load i64, i64* %len25, align 8
  %cmp26 = icmp ne i64 %31, %33
  br i1 %cmp26, label %if.then28, label %if.end44

if.then28:                                        ; preds = %for.end
  %34 = load i8*, i8** %p, align 8
  %35 = load i64, i64* %n, align 8
  %call29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %34, i64 noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #6
  store i32 %call29, i32* %ret, align 4
  br label %do.body30

do.body30:                                        ; preds = %if.then28
  %36 = load i32, i32* %ret, align 4
  %cmp31 = icmp slt i32 %36, 0
  br i1 %cmp31, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %do.body30
  %37 = load i32, i32* %ret, align 4
  %conv34 = sext i32 %37 to i64
  %38 = load i64, i64* %n, align 8
  %cmp35 = icmp uge i64 %conv34, %38
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false33, %do.body30
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %lor.lhs.false33
  %39 = load i32, i32* %ret, align 4
  %conv39 = sext i32 %39 to i64
  %40 = load i64, i64* %n, align 8
  %sub40 = sub i64 %40, %conv39
  store i64 %sub40, i64* %n, align 8
  %41 = load i32, i32* %ret, align 4
  %conv41 = sext i32 %41 to i64
  %42 = load i8*, i8** %p, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %42, i64 %conv41
  store i8* %add.ptr42, i8** %p, align 8
  br label %do.end43

do.end43:                                         ; preds = %if.end38
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %for.end
  %43 = load i64, i64* %size.addr, align 8
  %44 = load i64, i64* %n, align 8
  %sub45 = sub i64 %43, %44
  %conv46 = trunc i64 %sub45 to i32
  store i32 %conv46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then37, %if.then20
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_sig_alg_gets(i8* noundef %buf, i64 noundef %size, %struct.mbedtls_asn1_buf* noundef %sig_oid, i32 noundef %pk_alg, i32 noundef %md_alg, i8* noundef %sig_opts) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %sig_oid.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %pk_alg.addr = alloca i32, align 4
  %md_alg.addr = alloca i32, align 4
  %sig_opts.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %n = alloca i64, align 8
  %desc = alloca i8*, align 8
  %pss_opts = alloca %struct.mbedtls_pk_rsassa_pss_options*, align 8
  %name = alloca i8*, align 8
  %mgf_name = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.mbedtls_asn1_buf* %sig_oid, %struct.mbedtls_asn1_buf** %sig_oid.addr, align 8
  store i32 %pk_alg, i32* %pk_alg.addr, align 4
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %sig_opts, i8** %sig_opts.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %size.addr, align 8
  store i64 %1, i64* %n, align 8
  store i8* null, i8** %desc, align 8
  %2 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %sig_oid.addr, align 8
  %call = call i32 @mbedtls_oid_get_sig_alg_desc(%struct.mbedtls_asn1_buf* noundef %2, i8** noundef %desc) #4
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8
  %5 = load i64, i64* %n, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %4, i64 noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #6
  store i32 %call1, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %p, align 8
  %7 = load i64, i64* %n, align 8
  %8 = load i8*, i8** %desc, align 8
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %6, i64 noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* noundef %8) #6
  store i32 %call2, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %10 = load i32, i32* %ret, align 4
  %conv = sext i32 %10 to i64
  %11 = load i64, i64* %n, align 8
  %cmp4 = icmp uge i64 %conv, %11
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %12 = load i32, i32* %ret, align 4
  %conv8 = sext i32 %12 to i64
  %13 = load i64, i64* %n, align 8
  %sub = sub i64 %13, %conv8
  store i64 %sub, i64* %n, align 8
  %14 = load i32, i32* %ret, align 4
  %conv9 = sext i32 %14 to i64
  %15 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %conv9
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end7
  %16 = load i32, i32* %pk_alg.addr, align 4
  %cmp10 = icmp eq i32 %16, 6
  br i1 %cmp10, label %if.then12, label %if.end35

if.then12:                                        ; preds = %do.end
  %17 = load i8*, i8** %sig_opts.addr, align 8
  %18 = bitcast i8* %17 to %struct.mbedtls_pk_rsassa_pss_options*
  store %struct.mbedtls_pk_rsassa_pss_options* %18, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %19 = load i32, i32* %md_alg.addr, align 4
  %call13 = call i8* @md_type_to_string(i32 noundef %19) #4
  store i8* %call13, i8** %name, align 8
  %20 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %mgf1_hash_id = getelementptr inbounds %struct.mbedtls_pk_rsassa_pss_options, %struct.mbedtls_pk_rsassa_pss_options* %20, i32 0, i32 0
  %21 = load i32, i32* %mgf1_hash_id, align 4
  %call14 = call i8* @md_type_to_string(i32 noundef %21) #4
  store i8* %call14, i8** %mgf_name, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load i64, i64* %n, align 8
  %24 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %24, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  %25 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %25, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %cond.false ]
  %26 = load i8*, i8** %mgf_name, align 8
  %tobool15 = icmp ne i8* %26, null
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end
  %27 = load i8*, i8** %mgf_name, align 8
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i8* [ %27, %cond.true16 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %cond.false17 ]
  %28 = load %struct.mbedtls_pk_rsassa_pss_options*, %struct.mbedtls_pk_rsassa_pss_options** %pss_opts, align 8
  %expected_salt_len = getelementptr inbounds %struct.mbedtls_pk_rsassa_pss_options, %struct.mbedtls_pk_rsassa_pss_options* %28, i32 0, i32 1
  %29 = load i32, i32* %expected_salt_len, align 4
  %call20 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %22, i64 noundef %23, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond19, i32 noundef %29) #6
  store i32 %call20, i32* %ret, align 4
  br label %do.body21

do.body21:                                        ; preds = %cond.end18
  %30 = load i32, i32* %ret, align 4
  %cmp22 = icmp slt i32 %30, 0
  br i1 %cmp22, label %if.then28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %do.body21
  %31 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %31 to i64
  %32 = load i64, i64* %n, align 8
  %cmp26 = icmp uge i64 %conv25, %32
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false24, %do.body21
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false24
  %33 = load i32, i32* %ret, align 4
  %conv30 = sext i32 %33 to i64
  %34 = load i64, i64* %n, align 8
  %sub31 = sub i64 %34, %conv30
  store i64 %sub31, i64* %n, align 8
  %35 = load i32, i32* %ret, align 4
  %conv32 = sext i32 %35 to i64
  %36 = load i8*, i8** %p, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %36, i64 %conv32
  store i8* %add.ptr33, i8** %p, align 8
  br label %do.end34

do.end34:                                         ; preds = %if.end29
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %do.end
  %37 = load i64, i64* %size.addr, align 8
  %38 = load i64, i64* %n, align 8
  %sub36 = sub i64 %37, %38
  %conv37 = trunc i64 %sub36 to i32
  store i32 %conv37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then28, %if.then6
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

declare dso_local i32 @mbedtls_oid_get_sig_alg_desc(%struct.mbedtls_asn1_buf* noundef, i8** noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @md_type_to_string(i32 noundef %md_alg) #0 {
entry:
  %retval = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  store i32 %md_alg, i32* %md_alg.addr, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_key_size_helper(i8* noundef %buf, i64 noundef %buf_size, i8* noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %n = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_size, i64* %buf_size.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i64, i64* %buf_size.addr, align 8
  store i64 %1, i64* %n, align 8
  store i32 -110, i32* %ret, align 4
  %2 = load i8*, i8** %p, align 8
  %3 = load i64, i64* %n, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* noundef %4) #6
  store i32 %call, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %n, align 8
  %cmp1 = icmp uge i64 %conv, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  store i32 -10624, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %ret, align 4
  %conv3 = sext i32 %8 to i64
  %9 = load i64, i64* %n, align 8
  %sub = sub i64 %9, %conv3
  store i64 %sub, i64* %n, align 8
  %10 = load i32, i32* %ret, align 4
  %conv4 = sext i32 %10 to i64
  %11 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %conv4
  store i8* %add.ptr, i8** %p, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_time_is_past(%struct.mbedtls_x509_time* noundef %to) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca %struct.mbedtls_x509_time*, align 8
  %now = alloca %struct.mbedtls_x509_time, align 4
  store %struct.mbedtls_x509_time* %to, %struct.mbedtls_x509_time** %to.addr, align 8
  %call = call i32 @x509_get_current_time(%struct.mbedtls_x509_time* noundef %now) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %to.addr, align 8
  %call1 = call i32 @x509_check_time(%struct.mbedtls_x509_time* noundef %now, %struct.mbedtls_x509_time* noundef %0) #4
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_current_time(%struct.mbedtls_x509_time* noundef %now) #0 {
entry:
  %now.addr = alloca %struct.mbedtls_x509_time*, align 8
  %lt = alloca %struct.tm*, align 8
  %tm_buf = alloca %struct.tm, align 8
  %tt = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_x509_time* %now, %struct.mbedtls_x509_time** %now.addr, align 8
  store i32 0, i32* %ret, align 4
  %call = call i64 @time(i64* noundef null) #6
  store i64 %call, i64* %tt, align 8
  %call1 = call %struct.tm* @mbedtls_platform_gmtime_r(i64* noundef %tt, %struct.tm* noundef %tm_buf) #4
  store %struct.tm* %call1, %struct.tm** %lt, align 8
  %0 = load %struct.tm*, %struct.tm** %lt, align 8
  %cmp = icmp eq %struct.tm* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.tm*, %struct.tm** %lt, align 8
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %2 = load i32, i32* %tm_year, align 4
  %add = add nsw i32 %2, 1900
  %3 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %now.addr, align 8
  %year = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %3, i32 0, i32 0
  store i32 %add, i32* %year, align 4
  %4 = load %struct.tm*, %struct.tm** %lt, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %5 = load i32, i32* %tm_mon, align 8
  %add2 = add nsw i32 %5, 1
  %6 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %now.addr, align 8
  %mon = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %6, i32 0, i32 1
  store i32 %add2, i32* %mon, align 4
  %7 = load %struct.tm*, %struct.tm** %lt, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 3
  %8 = load i32, i32* %tm_mday, align 4
  %9 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %now.addr, align 8
  %day = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %9, i32 0, i32 2
  store i32 %8, i32* %day, align 4
  %10 = load %struct.tm*, %struct.tm** %lt, align 8
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %11 = load i32, i32* %tm_hour, align 8
  %12 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %now.addr, align 8
  %hour = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %12, i32 0, i32 3
  store i32 %11, i32* %hour, align 4
  %13 = load %struct.tm*, %struct.tm** %lt, align 8
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %14 = load i32, i32* %tm_min, align 4
  %15 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %now.addr, align 8
  %min = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %15, i32 0, i32 4
  store i32 %14, i32* %min, align 4
  %16 = load %struct.tm*, %struct.tm** %lt, align 8
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  %17 = load i32, i32* %tm_sec, align 8
  %18 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %now.addr, align 8
  %sec = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %18, i32 0, i32 5
  store i32 %17, i32* %sec, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %ret, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_check_time(%struct.mbedtls_x509_time* noundef %before, %struct.mbedtls_x509_time* noundef %after) #0 {
entry:
  %retval = alloca i32, align 4
  %before.addr = alloca %struct.mbedtls_x509_time*, align 8
  %after.addr = alloca %struct.mbedtls_x509_time*, align 8
  store %struct.mbedtls_x509_time* %before, %struct.mbedtls_x509_time** %before.addr, align 8
  store %struct.mbedtls_x509_time* %after, %struct.mbedtls_x509_time** %after.addr, align 8
  %0 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %year = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %0, i32 0, i32 0
  %1 = load i32, i32* %year, align 4
  %2 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %year1 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %2, i32 0, i32 0
  %3 = load i32, i32* %year1, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %year2 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %4, i32 0, i32 0
  %5 = load i32, i32* %year2, align 4
  %6 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %year3 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %6, i32 0, i32 0
  %7 = load i32, i32* %year3, align 4
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %mon = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %8, i32 0, i32 1
  %9 = load i32, i32* %mon, align 4
  %10 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %mon5 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %10, i32 0, i32 1
  %11 = load i32, i32* %mon5, align 4
  %cmp6 = icmp sgt i32 %9, %11
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %year9 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %12, i32 0, i32 0
  %13 = load i32, i32* %year9, align 4
  %14 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %year10 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %14, i32 0, i32 0
  %15 = load i32, i32* %year10, align 4
  %cmp11 = icmp eq i32 %13, %15
  br i1 %cmp11, label %land.lhs.true12, label %if.end20

land.lhs.true12:                                  ; preds = %if.end8
  %16 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %mon13 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %16, i32 0, i32 1
  %17 = load i32, i32* %mon13, align 4
  %18 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %mon14 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %18, i32 0, i32 1
  %19 = load i32, i32* %mon14, align 4
  %cmp15 = icmp eq i32 %17, %19
  br i1 %cmp15, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %20 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %day = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %20, i32 0, i32 2
  %21 = load i32, i32* %day, align 4
  %22 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %day17 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %22, i32 0, i32 2
  %23 = load i32, i32* %day17, align 4
  %cmp18 = icmp sgt i32 %21, %23
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true16
  store i32 1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true16, %land.lhs.true12, %if.end8
  %24 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %year21 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %24, i32 0, i32 0
  %25 = load i32, i32* %year21, align 4
  %26 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %year22 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %26, i32 0, i32 0
  %27 = load i32, i32* %year22, align 4
  %cmp23 = icmp eq i32 %25, %27
  br i1 %cmp23, label %land.lhs.true24, label %if.end36

land.lhs.true24:                                  ; preds = %if.end20
  %28 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %mon25 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %28, i32 0, i32 1
  %29 = load i32, i32* %mon25, align 4
  %30 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %mon26 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %30, i32 0, i32 1
  %31 = load i32, i32* %mon26, align 4
  %cmp27 = icmp eq i32 %29, %31
  br i1 %cmp27, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %32 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %day29 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %32, i32 0, i32 2
  %33 = load i32, i32* %day29, align 4
  %34 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %day30 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %34, i32 0, i32 2
  %35 = load i32, i32* %day30, align 4
  %cmp31 = icmp eq i32 %33, %35
  br i1 %cmp31, label %land.lhs.true32, label %if.end36

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %36 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %hour = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %36, i32 0, i32 3
  %37 = load i32, i32* %hour, align 4
  %38 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %hour33 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %38, i32 0, i32 3
  %39 = load i32, i32* %hour33, align 4
  %cmp34 = icmp sgt i32 %37, %39
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true32
  store i32 1, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %land.lhs.true32, %land.lhs.true28, %land.lhs.true24, %if.end20
  %40 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %year37 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %40, i32 0, i32 0
  %41 = load i32, i32* %year37, align 4
  %42 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %year38 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %42, i32 0, i32 0
  %43 = load i32, i32* %year38, align 4
  %cmp39 = icmp eq i32 %41, %43
  br i1 %cmp39, label %land.lhs.true40, label %if.end56

land.lhs.true40:                                  ; preds = %if.end36
  %44 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %mon41 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %44, i32 0, i32 1
  %45 = load i32, i32* %mon41, align 4
  %46 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %mon42 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %46, i32 0, i32 1
  %47 = load i32, i32* %mon42, align 4
  %cmp43 = icmp eq i32 %45, %47
  br i1 %cmp43, label %land.lhs.true44, label %if.end56

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %48 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %day45 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %48, i32 0, i32 2
  %49 = load i32, i32* %day45, align 4
  %50 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %day46 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %50, i32 0, i32 2
  %51 = load i32, i32* %day46, align 4
  %cmp47 = icmp eq i32 %49, %51
  br i1 %cmp47, label %land.lhs.true48, label %if.end56

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %52 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %hour49 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %52, i32 0, i32 3
  %53 = load i32, i32* %hour49, align 4
  %54 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %hour50 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %54, i32 0, i32 3
  %55 = load i32, i32* %hour50, align 4
  %cmp51 = icmp eq i32 %53, %55
  br i1 %cmp51, label %land.lhs.true52, label %if.end56

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %56 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %min = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %56, i32 0, i32 4
  %57 = load i32, i32* %min, align 4
  %58 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %min53 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %58, i32 0, i32 4
  %59 = load i32, i32* %min53, align 4
  %cmp54 = icmp sgt i32 %57, %59
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true52
  store i32 1, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %land.lhs.true52, %land.lhs.true48, %land.lhs.true44, %land.lhs.true40, %if.end36
  %60 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %year57 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %60, i32 0, i32 0
  %61 = load i32, i32* %year57, align 4
  %62 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %year58 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %62, i32 0, i32 0
  %63 = load i32, i32* %year58, align 4
  %cmp59 = icmp eq i32 %61, %63
  br i1 %cmp59, label %land.lhs.true60, label %if.end80

land.lhs.true60:                                  ; preds = %if.end56
  %64 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %mon61 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %64, i32 0, i32 1
  %65 = load i32, i32* %mon61, align 4
  %66 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %mon62 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %66, i32 0, i32 1
  %67 = load i32, i32* %mon62, align 4
  %cmp63 = icmp eq i32 %65, %67
  br i1 %cmp63, label %land.lhs.true64, label %if.end80

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %68 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %day65 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %68, i32 0, i32 2
  %69 = load i32, i32* %day65, align 4
  %70 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %day66 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %70, i32 0, i32 2
  %71 = load i32, i32* %day66, align 4
  %cmp67 = icmp eq i32 %69, %71
  br i1 %cmp67, label %land.lhs.true68, label %if.end80

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %72 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %hour69 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %72, i32 0, i32 3
  %73 = load i32, i32* %hour69, align 4
  %74 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %hour70 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %74, i32 0, i32 3
  %75 = load i32, i32* %hour70, align 4
  %cmp71 = icmp eq i32 %73, %75
  br i1 %cmp71, label %land.lhs.true72, label %if.end80

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %76 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %min73 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %76, i32 0, i32 4
  %77 = load i32, i32* %min73, align 4
  %78 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %min74 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %78, i32 0, i32 4
  %79 = load i32, i32* %min74, align 4
  %cmp75 = icmp eq i32 %77, %79
  br i1 %cmp75, label %land.lhs.true76, label %if.end80

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %80 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %before.addr, align 8
  %sec = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %80, i32 0, i32 5
  %81 = load i32, i32* %sec, align 4
  %82 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %after.addr, align 8
  %sec77 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %82, i32 0, i32 5
  %83 = load i32, i32* %sec77, align 4
  %cmp78 = icmp sgt i32 %81, %83
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %land.lhs.true76
  store i32 1, i32* %retval, align 4
  br label %return

if.end80:                                         ; preds = %land.lhs.true76, %land.lhs.true72, %land.lhs.true68, %land.lhs.true64, %land.lhs.true60, %if.end56
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then79, %if.then55, %if.then35, %if.then19, %if.then7, %if.then
  %84 = load i32, i32* %retval, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_time_is_future(%struct.mbedtls_x509_time* noundef %from) #0 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca %struct.mbedtls_x509_time*, align 8
  %now = alloca %struct.mbedtls_x509_time, align 4
  store %struct.mbedtls_x509_time* %from, %struct.mbedtls_x509_time** %from.addr, align 8
  %call = call i32 @x509_get_current_time(%struct.mbedtls_x509_time* noundef %now) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %from.addr, align 8
  %call1 = call i32 @x509_check_time(%struct.mbedtls_x509_time* noundef %0, %struct.mbedtls_x509_time* noundef %now) #4
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_int(i8** noundef %p, i64 noundef %n, i32* noundef %res) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %n.addr = alloca i64, align 8
  %res.addr = alloca i32*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32* %res, i32** %res.addr, align 8
  %0 = load i32*, i32** %res.addr, align 8
  store i32 0, i32* %0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp slt i32 %conv, 48
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp sgt i32 %conv3, 57
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 -9216, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32*, i32** %res.addr, align 8
  %9 = load i32, i32* %8, align 4
  %mul = mul nsw i32 %9, 10
  store i32 %mul, i32* %8, align 4
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = zext i8 %12 to i32
  %sub = sub nsw i32 %conv6, 48
  %13 = load i32*, i32** %res.addr, align 8
  %14 = load i32, i32* %13, align 4
  %add = add nsw i32 %14, %sub
  store i32 %add, i32* %13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i64, i64* %n.addr, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %n.addr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_date_is_valid(%struct.mbedtls_x509_time* noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.mbedtls_x509_time*, align 8
  %ret = alloca i32, align 4
  %month_len = alloca i32, align 4
  store %struct.mbedtls_x509_time* %t, %struct.mbedtls_x509_time** %t.addr, align 8
  store i32 -9216, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %year = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %0, i32 0, i32 0
  %1 = load i32, i32* %year, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %year1 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %2, i32 0, i32 0
  %3 = load i32, i32* %year1, align 4
  %cmp2 = icmp sgt i32 %3, 9999
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %5 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %hour = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %5, i32 0, i32 3
  %6 = load i32, i32* %hour, align 4
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %do.body3
  %7 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %hour6 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %7, i32 0, i32 3
  %8 = load i32, i32* %hour6, align 4
  %cmp7 = icmp sgt i32 %8, 23
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %do.body3
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %10 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %min = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %10, i32 0, i32 4
  %11 = load i32, i32* %min, align 4
  %cmp12 = icmp slt i32 %11, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %do.body11
  %12 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %min14 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %12, i32 0, i32 4
  %13 = load i32, i32* %min14, align 4
  %cmp15 = icmp sgt i32 %13, 59
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false13, %do.body11
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %15 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %sec = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %15, i32 0, i32 5
  %16 = load i32, i32* %sec, align 4
  %cmp20 = icmp slt i32 %16, 0
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %do.body19
  %17 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %sec22 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %17, i32 0, i32 5
  %18 = load i32, i32* %sec22, align 4
  %cmp23 = icmp sgt i32 %18, 59
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %do.body19
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false21
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  %20 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %mon = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %20, i32 0, i32 1
  %21 = load i32, i32* %mon, align 4
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb
    i32 4, label %sw.bb27
    i32 6, label %sw.bb27
    i32 9, label %sw.bb27
    i32 11, label %sw.bb27
    i32 2, label %sw.bb28
  ]

sw.bb:                                            ; preds = %do.end26, %do.end26, %do.end26, %do.end26, %do.end26, %do.end26, %do.end26
  store i32 31, i32* %month_len, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.end26, %do.end26, %do.end26, %do.end26
  store i32 30, i32* %month_len, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.end26
  %22 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %year29 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %22, i32 0, i32 0
  %23 = load i32, i32* %year29, align 4
  %rem = srem i32 %23, 4
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %lor.lhs.false33, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb28
  %24 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %year30 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %24, i32 0, i32 0
  %25 = load i32, i32* %year30, align 4
  %rem31 = srem i32 %25, 100
  %tobool32 = icmp ne i32 %rem31, 0
  br i1 %tobool32, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true, %sw.bb28
  %26 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %year34 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %26, i32 0, i32 0
  %27 = load i32, i32* %year34, align 4
  %rem35 = srem i32 %27, 400
  %tobool36 = icmp ne i32 %rem35, 0
  br i1 %tobool36, label %if.else, label %if.then37

if.then37:                                        ; preds = %lor.lhs.false33, %land.lhs.true
  store i32 29, i32* %month_len, align 4
  br label %if.end38

if.else:                                          ; preds = %lor.lhs.false33
  store i32 28, i32* %month_len, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then37
  br label %sw.epilog

sw.default:                                       ; preds = %do.end26
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end38, %sw.bb27, %sw.bb
  br label %do.body39

do.body39:                                        ; preds = %sw.epilog
  %29 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %day = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %29, i32 0, i32 2
  %30 = load i32, i32* %day, align 4
  %cmp40 = icmp slt i32 %30, 1
  br i1 %cmp40, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %do.body39
  %31 = load %struct.mbedtls_x509_time*, %struct.mbedtls_x509_time** %t.addr, align 8
  %day42 = getelementptr inbounds %struct.mbedtls_x509_time, %struct.mbedtls_x509_time* %31, i32 0, i32 2
  %32 = load i32, i32* %day42, align 4
  %33 = load i32, i32* %month_len, align 4
  %cmp43 = icmp sgt i32 %32, %33
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false41, %do.body39
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %lor.lhs.false41
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end46, %if.then44, %sw.default, %if.then24, %if.then16, %if.then8, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

declare dso_local %struct.tm* @mbedtls_platform_gmtime_r(i64* noundef, %struct.tm* noundef) #1

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
