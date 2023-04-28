; ModuleID = 'x509_create.c'
source_filename = "x509_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_attr_descriptor_t = type { i8*, i64, i8*, i32 }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

@x509_attrs = internal constant [29 x %struct.x509_attr_descriptor_t] [%struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 19 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 19 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 22 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i64 22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i64 19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i64 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 22 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i64 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 19 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i64 13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 19 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 19 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 19 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i64 19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i32 12 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 22 }, %struct.x509_attr_descriptor_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 22 }, %struct.x509_attr_descriptor_t { i8* null, i64 0, i8* null, i32 5 }], align 16
@.str = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"U\04\03\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"commonName\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"U\04\06\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"countryName\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"U\04\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"organizationName\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"U\04\07\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"locality\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\09\01\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"U\04\0B\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"organizationalUnitName\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"U\04\08\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"stateOrProvinceName\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"emailAddress\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"serialNumber\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"U\04\05\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"postalAddress\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"U\04\10\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"postalCode\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"U\04\11\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"dnQualifier\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"U\04.\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"U\04\0C\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"surName\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"U\04\04\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"givenName\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"U\04*\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"initials\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"U\04+\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"pseudonym\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"U\04A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"generationQualifier\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"U\04,\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"domainComponent\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"\09\92&\89\93\F2,d\01\19\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"DC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_string_to_names(%struct.mbedtls_asn1_named_data** noundef %head, i8* noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.mbedtls_asn1_named_data**, align 8
  %name.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %s = alloca i8*, align 8
  %c = alloca i8*, align 8
  %end = alloca i8*, align 8
  %oid = alloca i8*, align 8
  %attr_descr = alloca %struct.x509_attr_descriptor_t*, align 8
  %in_tag = alloca i32, align 4
  %data = alloca [256 x i8], align 16
  %d = alloca i8*, align 8
  %cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  store %struct.mbedtls_asn1_named_data** %head, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  store i8* %1, i8** %c, align 8
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* noundef %3) #4
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call
  store i8* %add.ptr, i8** %end, align 8
  store i8* null, i8** %oid, align 8
  store %struct.x509_attr_descriptor_t* null, %struct.x509_attr_descriptor_t** %attr_descr, align 8
  store i32 1, i32* %in_tag, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %data, i64 0, i64 0
  store i8* %arraydecay, i8** %d, align 8
  %4 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  call void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %4) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end74, %entry
  %5 = load i8*, i8** %c, align 8
  %6 = load i8*, i8** %end, align 8
  %cmp = icmp ule i8* %5, %6
  br i1 %cmp, label %while.body, label %while.end76

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %in_tag, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8*, i8** %c, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %cmp1 = icmp eq i32 %conv, 61
  br i1 %cmp1, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %s, align 8
  %11 = load i8*, i8** %c, align 8
  %12 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = call %struct.x509_attr_descriptor_t* @x509_attr_descr_from_name(i8* noundef %10, i64 noundef %sub.ptr.sub) #5
  store %struct.x509_attr_descriptor_t* %call3, %struct.x509_attr_descriptor_t** %attr_descr, align 8
  %cmp4 = icmp eq %struct.x509_attr_descriptor_t* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 -8448, i32* %ret, align 4
  br label %exit

if.end:                                           ; preds = %if.then
  %13 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %attr_descr, align 8
  %oid7 = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %13, i32 0, i32 2
  %14 = load i8*, i8** %oid7, align 8
  store i8* %14, i8** %oid, align 8
  %15 = load i8*, i8** %c, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr8, i8** %s, align 8
  store i32 0, i32* %in_tag, align 4
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %data, i64 0, i64 0
  store i8* %arraydecay9, i8** %d, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true, %while.body
  %16 = load i32, i32* %in_tag, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %17 = load i8*, i8** %c, align 8
  %18 = load i8, i8* %17, align 1
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, 92
  br i1 %cmp14, label %land.lhs.true16, label %if.else

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %19 = load i8*, i8** %c, align 8
  %20 = load i8*, i8** %end, align 8
  %cmp17 = icmp ne i8* %19, %20
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %land.lhs.true16
  %21 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  %22 = load i8*, i8** %c, align 8
  %23 = load i8*, i8** %end, align 8
  %cmp20 = icmp eq i8* %22, %23
  br i1 %cmp20, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then19
  %24 = load i8*, i8** %c, align 8
  %25 = load i8, i8* %24, align 1
  %conv22 = sext i8 %25 to i32
  %cmp23 = icmp ne i32 %conv22, 44
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false, %if.then19
  store i32 -9088, i32* %ret, align 4
  br label %exit

if.end26:                                         ; preds = %lor.lhs.false
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true16, %land.lhs.true12, %if.end10
  %26 = load i32, i32* %in_tag, align 4
  %tobool27 = icmp ne i32 %26, 0
  br i1 %tobool27, label %if.end57, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.else
  %27 = load i8*, i8** %c, align 8
  %28 = load i8, i8* %27, align 1
  %conv29 = sext i8 %28 to i32
  %cmp30 = icmp eq i32 %conv29, 44
  br i1 %cmp30, label %if.then35, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true28
  %29 = load i8*, i8** %c, align 8
  %30 = load i8*, i8** %end, align 8
  %cmp33 = icmp eq i8* %29, %30
  br i1 %cmp33, label %if.then35, label %if.end57

if.then35:                                        ; preds = %lor.lhs.false32, %land.lhs.true28
  %31 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  %32 = load i8*, i8** %oid, align 8
  %33 = load i8*, i8** %oid, align 8
  %call36 = call i64 @strlen(i8* noundef %33) #4
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %data, i64 0, i64 0
  %34 = load i8*, i8** %d, align 8
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %data, i64 0, i64 0
  %sub.ptr.lhs.cast39 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %arraydecay38 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %call42 = call %struct.mbedtls_asn1_named_data* @mbedtls_asn1_store_named_data(%struct.mbedtls_asn1_named_data** noundef %31, i8* noundef %32, i64 noundef %call36, i8* noundef %arraydecay37, i64 noundef %sub.ptr.sub41) #5
  store %struct.mbedtls_asn1_named_data* %call42, %struct.mbedtls_asn1_named_data** %cur, align 8
  %35 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %cmp43 = icmp eq %struct.mbedtls_asn1_named_data* %35, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then35
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then35
  %36 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %attr_descr, align 8
  %default_tag = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %36, i32 0, i32 3
  %37 = load i32, i32* %default_tag, align 8
  %38 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %38, i32 0, i32 1
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 0
  store i32 %37, i32* %tag, align 8
  br label %while.cond47

while.cond47:                                     ; preds = %while.body54, %if.end46
  %39 = load i8*, i8** %c, align 8
  %40 = load i8*, i8** %end, align 8
  %cmp48 = icmp ult i8* %39, %40
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond47
  %41 = load i8*, i8** %c, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %add.ptr50, align 1
  %conv51 = sext i8 %42 to i32
  %cmp52 = icmp eq i32 %conv51, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond47
  %43 = phi i1 [ false, %while.cond47 ], [ %cmp52, %land.rhs ]
  br i1 %43, label %while.body54, label %while.end

while.body54:                                     ; preds = %land.end
  %44 = load i8*, i8** %c, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr55, i8** %c, align 8
  br label %while.cond47, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %45 = load i8*, i8** %c, align 8
  %add.ptr56 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %add.ptr56, i8** %s, align 8
  store i32 1, i32* %in_tag, align 4
  br label %if.end57

if.end57:                                         ; preds = %while.end, %lor.lhs.false32, %if.else
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end26
  %46 = load i32, i32* %in_tag, align 4
  %tobool59 = icmp ne i32 %46, 0
  br i1 %tobool59, label %if.end74, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.end58
  %47 = load i8*, i8** %s, align 8
  %48 = load i8*, i8** %c, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %48, i64 1
  %cmp62 = icmp ne i8* %47, %add.ptr61
  br i1 %cmp62, label %if.then64, label %if.end74

if.then64:                                        ; preds = %land.lhs.true60
  %49 = load i8*, i8** %c, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %d, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr65, i8** %d, align 8
  store i8 %50, i8* %51, align 1
  %52 = load i8*, i8** %d, align 8
  %arraydecay66 = getelementptr inbounds [256 x i8], [256 x i8]* %data, i64 0, i64 0
  %sub.ptr.lhs.cast67 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast68 = ptrtoint i8* %arraydecay66 to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68
  %cmp70 = icmp eq i64 %sub.ptr.sub69, 256
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then64
  store i32 -9088, i32* %ret, align 4
  br label %exit

if.end73:                                         ; preds = %if.then64
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %land.lhs.true60, %if.end58
  %53 = load i8*, i8** %c, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr75, i8** %c, align 8
  br label %while.cond, !llvm.loop !6

while.end76:                                      ; preds = %while.cond
  br label %exit

exit:                                             ; preds = %while.end76, %if.then72, %if.then25, %if.then6
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then45
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.x509_attr_descriptor_t* @x509_attr_descr_from_name(i8* noundef %name, i64 noundef %name_len) #0 {
entry:
  %retval = alloca %struct.x509_attr_descriptor_t*, align 8
  %name.addr = alloca i8*, align 8
  %name_len.addr = alloca i64, align 8
  %cur = alloca %struct.x509_attr_descriptor_t*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 %name_len, i64* %name_len.addr, align 8
  store %struct.x509_attr_descriptor_t* getelementptr inbounds ([29 x %struct.x509_attr_descriptor_t], [29 x %struct.x509_attr_descriptor_t]* @x509_attrs, i64 0, i64 0), %struct.x509_attr_descriptor_t** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %cur, align 8
  %name1 = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %cur, align 8
  %name_len2 = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %2, i32 0, i32 1
  %3 = load i64, i64* %name_len2, align 8
  %4 = load i64, i64* %name_len.addr, align 8
  %cmp3 = icmp eq i64 %3, %4
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %cur, align 8
  %name4 = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %5, i32 0, i32 0
  %6 = load i8*, i8** %name4, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %8 = load i64, i64* %name_len.addr, align 8
  %call = call i32 @strncmp(i8* noundef %6, i8* noundef %7, i64 noundef %8) #4
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %cur, align 8
  %incdec.ptr = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %9, i32 1
  store %struct.x509_attr_descriptor_t* %incdec.ptr, %struct.x509_attr_descriptor_t** %cur, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %cur, align 8
  %name6 = getelementptr inbounds %struct.x509_attr_descriptor_t, %struct.x509_attr_descriptor_t* %10, i32 0, i32 0
  %11 = load i8*, i8** %name6, align 8
  %cmp7 = icmp eq i8* %11, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  store %struct.x509_attr_descriptor_t* null, %struct.x509_attr_descriptor_t** %retval, align 8
  br label %return

if.end9:                                          ; preds = %for.end
  %12 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %cur, align 8
  store %struct.x509_attr_descriptor_t* %12, %struct.x509_attr_descriptor_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  %13 = load %struct.x509_attr_descriptor_t*, %struct.x509_attr_descriptor_t** %retval, align 8
  ret %struct.x509_attr_descriptor_t* %13
}

declare dso_local %struct.mbedtls_asn1_named_data* @mbedtls_asn1_store_named_data(%struct.mbedtls_asn1_named_data** noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_set_extension(%struct.mbedtls_asn1_named_data** noundef %head, i8* noundef %oid, i64 noundef %oid_len, i32 noundef %critical, i8* noundef %val, i64 noundef %val_len) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.mbedtls_asn1_named_data**, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %critical.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %val_len.addr = alloca i64, align 8
  %cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  store %struct.mbedtls_asn1_named_data** %head, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i32 %critical, i32* %critical.addr, align 4
  store i8* %val, i8** %val.addr, align 8
  store i64 %val_len, i64* %val_len.addr, align 8
  %0 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  %1 = load i8*, i8** %oid.addr, align 8
  %2 = load i64, i64* %oid_len.addr, align 8
  %3 = load i64, i64* %val_len.addr, align 8
  %add = add i64 %3, 1
  %call = call %struct.mbedtls_asn1_named_data* @mbedtls_asn1_store_named_data(%struct.mbedtls_asn1_named_data** noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef null, i64 noundef %add) #5
  store %struct.mbedtls_asn1_named_data* %call, %struct.mbedtls_asn1_named_data** %cur, align 8
  %cmp = icmp eq %struct.mbedtls_asn1_named_data* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %critical.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val1 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %5, i32 0, i32 1
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val1, i32 0, i32 2
  %6 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val2 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %7, i32 0, i32 1
  %p3 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val2, i32 0, i32 2
  %8 = load i8*, i8** %p3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8*, i8** %val.addr, align 8
  %10 = load i64, i64* %val_len.addr, align 8
  %call4 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %9, i64 noundef %10) #6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_write_names(i8** noundef %p, i8* noundef %start, %struct.mbedtls_asn1_named_data* noundef %first) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %first.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_asn1_named_data* %first, %struct.mbedtls_asn1_named_data** %first.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %first.addr, align 8
  store %struct.mbedtls_asn1_named_data* %0, %struct.mbedtls_asn1_named_data** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_named_data* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %start.addr, align 8
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %call = call i32 @x509_write_name(i8** noundef %2, i8* noundef %3, %struct.mbedtls_asn1_named_data* noundef %4) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %len, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %8, i32 0, i32 2
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %9, %struct.mbedtls_asn1_named_data** %cur, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %do.body2

do.body2:                                         ; preds = %while.end
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %start.addr, align 8
  %12 = load i64, i64* %len, align 8
  %call3 = call i32 @mbedtls_asn1_write_len(i8** noundef %10, i8* noundef %11, i64 noundef %12) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %do.body2
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %do.body2
  %14 = load i32, i32* %ret, align 4
  %conv8 = sext i32 %14 to i64
  %15 = load i64, i64* %len, align 8
  %add9 = add i64 %15, %conv8
  store i64 %add9, i64* %len, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else7
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %start.addr, align 8
  %call13 = call i32 @mbedtls_asn1_write_tag(i8** noundef %16, i8* noundef %17, i8 noundef zeroext 48) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %do.body12
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %do.body12
  %19 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %19 to i64
  %20 = load i64, i64* %len, align 8
  %add19 = add i64 %20, %conv18
  store i64 %add19, i64* %len, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else17
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %21 = load i64, i64* %len, align 8
  %conv22 = trunc i64 %21 to i32
  store i32 %conv22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end21, %if.then16, %if.then6, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_write_name(i8** noundef %p, i8* noundef %start, %struct.mbedtls_asn1_named_data* noundef %cur_name) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %cur_name.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %oid = alloca i8*, align 8
  %oid_len = alloca i64, align 8
  %name = alloca i8*, align 8
  %name_len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_asn1_named_data* %cur_name, %struct.mbedtls_asn1_named_data** %cur_name.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_name.addr, align 8
  %oid1 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %0, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid1, i32 0, i32 2
  %1 = load i8*, i8** %p2, align 8
  store i8* %1, i8** %oid, align 8
  %2 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_name.addr, align 8
  %oid3 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %2, i32 0, i32 0
  %len4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid3, i32 0, i32 1
  %3 = load i64, i64* %len4, align 8
  store i64 %3, i64* %oid_len, align 8
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_name.addr, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %4, i32 0, i32 1
  %p5 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 2
  %5 = load i8*, i8** %p5, align 8
  store i8* %5, i8** %name, align 8
  %6 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_name.addr, align 8
  %val6 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %6, i32 0, i32 1
  %len7 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val6, i32 0, i32 1
  %7 = load i64, i64* %len7, align 8
  store i64 %7, i64* %name_len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %start.addr, align 8
  %10 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_name.addr, align 8
  %val8 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %10, i32 0, i32 1
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val8, i32 0, i32 0
  %11 = load i32, i32* %tag, align 8
  %12 = load i8*, i8** %name, align 8
  %13 = load i64, i64* %name_len, align 8
  %call = call i32 @mbedtls_asn1_write_tagged_string(i8** noundef %8, i8* noundef %9, i32 noundef %11, i8* noundef %12, i64 noundef %13) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %15 = load i32, i32* %ret, align 4
  %conv = sext i32 %15 to i64
  %16 = load i64, i64* %len, align 8
  %add = add i64 %16, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %start.addr, align 8
  %19 = load i8*, i8** %oid, align 8
  %20 = load i64, i64* %oid_len, align 8
  %call10 = call i32 @mbedtls_asn1_write_oid(i8** noundef %17, i8* noundef %18, i8* noundef %19, i64 noundef %20) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %do.body9
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.else14:                                        ; preds = %do.body9
  %22 = load i32, i32* %ret, align 4
  %conv15 = sext i32 %22 to i64
  %23 = load i64, i64* %len, align 8
  %add16 = add i64 %23, %conv15
  store i64 %add16, i64* %len, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else14
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %start.addr, align 8
  %26 = load i64, i64* %len, align 8
  %call20 = call i32 @mbedtls_asn1_write_len(i8** noundef %24, i8* noundef %25, i64 noundef %26) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.body19
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %do.body19
  %28 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %28 to i64
  %29 = load i64, i64* %len, align 8
  %add26 = add i64 %29, %conv25
  store i64 %add26, i64* %len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else24
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %30 = load i8**, i8*** %p.addr, align 8
  %31 = load i8*, i8** %start.addr, align 8
  %call30 = call i32 @mbedtls_asn1_write_tag(i8** noundef %30, i8* noundef %31, i8 noundef zeroext 48) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %do.body29
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.else34:                                        ; preds = %do.body29
  %33 = load i32, i32* %ret, align 4
  %conv35 = sext i32 %33 to i64
  %34 = load i64, i64* %len, align 8
  %add36 = add i64 %34, %conv35
  store i64 %add36, i64* %len, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else34
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %35 = load i8**, i8*** %p.addr, align 8
  %36 = load i8*, i8** %start.addr, align 8
  %37 = load i64, i64* %len, align 8
  %call40 = call i32 @mbedtls_asn1_write_len(i8** noundef %35, i8* noundef %36, i64 noundef %37) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %do.body39
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

if.else44:                                        ; preds = %do.body39
  %39 = load i32, i32* %ret, align 4
  %conv45 = sext i32 %39 to i64
  %40 = load i64, i64* %len, align 8
  %add46 = add i64 %40, %conv45
  store i64 %add46, i64* %len, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else44
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %41 = load i8**, i8*** %p.addr, align 8
  %42 = load i8*, i8** %start.addr, align 8
  %call50 = call i32 @mbedtls_asn1_write_tag(i8** noundef %41, i8* noundef %42, i8 noundef zeroext 49) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %do.body49
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

if.else54:                                        ; preds = %do.body49
  %44 = load i32, i32* %ret, align 4
  %conv55 = sext i32 %44 to i64
  %45 = load i64, i64* %len, align 8
  %add56 = add i64 %45, %conv55
  store i64 %add56, i64* %len, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else54
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  %46 = load i64, i64* %len, align 8
  %conv59 = trunc i64 %46 to i32
  store i32 %conv59, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end58, %if.then53, %if.then43, %if.then33, %if.then23, %if.then13, %if.then
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

declare dso_local i32 @mbedtls_asn1_write_len(i8** noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8** noundef, i8* noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_write_sig(i8** noundef %p, i8* noundef %start, i8* noundef %oid, i64 noundef %oid_len, i8* noundef %sig, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ult i64 %sub.ptr.sub, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %size.addr, align 8
  store i64 %7, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %idx.neg = sub i64 0, %8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.neg
  store i8* %add.ptr, i8** %9, align 8
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %sig.addr, align 8
  %14 = load i64, i64* %len, align 8
  %call = call i8* @memcpy(i8* noundef %12, i8* noundef %13, i64 noundef %14) #6
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast2 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast3 = ptrtoint i8* %17 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  %cmp5 = icmp slt i64 %sub.ptr.sub4, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -108, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr, i8** %18, align 8
  store i8 0, i8* %incdec.ptr, align 1
  %20 = load i64, i64* %len, align 8
  %add = add i64 %20, 1
  store i64 %add, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end7
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %start.addr, align 8
  %23 = load i64, i64* %len, align 8
  %call8 = call i32 @mbedtls_asn1_write_len(i8** noundef %21, i8* noundef %22, i64 noundef %23) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.body
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %25 = load i32, i32* %ret, align 4
  %conv = sext i32 %25 to i64
  %26 = load i64, i64* %len, align 8
  %add11 = add i64 %26, %conv
  store i64 %add11, i64* %len, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end12
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %27 = load i8**, i8*** %p.addr, align 8
  %28 = load i8*, i8** %start.addr, align 8
  %call14 = call i32 @mbedtls_asn1_write_tag(i8** noundef %27, i8* noundef %28, i8 noundef zeroext 3) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %do.body13
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.else18:                                        ; preds = %do.body13
  %30 = load i32, i32* %ret, align 4
  %conv19 = sext i32 %30 to i64
  %31 = load i64, i64* %len, align 8
  %add20 = add i64 %31, %conv19
  store i64 %add20, i64* %len, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else18
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %32 = load i8**, i8*** %p.addr, align 8
  %33 = load i8*, i8** %start.addr, align 8
  %34 = load i8*, i8** %oid.addr, align 8
  %35 = load i64, i64* %oid_len.addr, align 8
  %call24 = call i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef %32, i8* noundef %33, i8* noundef %34, i64 noundef %35, i64 noundef 0) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %do.body23
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %do.body23
  %37 = load i32, i32* %ret, align 4
  %conv29 = sext i32 %37 to i64
  %38 = load i64, i64* %len, align 8
  %add30 = add i64 %38, %conv29
  store i64 %add30, i64* %len, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else28
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %39 = load i64, i64* %len, align 8
  %conv33 = trunc i64 %39 to i32
  store i32 %conv33, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end32, %if.then27, %if.then17, %if.then10, %if.then6, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_write_extensions(i8** noundef %p, i8* noundef %start, %struct.mbedtls_asn1_named_data* noundef %first) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %first.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %cur_ext = alloca %struct.mbedtls_asn1_named_data*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_asn1_named_data* %first, %struct.mbedtls_asn1_named_data** %first.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %first.addr, align 8
  store %struct.mbedtls_asn1_named_data* %0, %struct.mbedtls_asn1_named_data** %cur_ext, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_ext, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_named_data* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %start.addr, align 8
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_ext, align 8
  %call = call i32 @x509_write_extension(i8** noundef %2, i8* noundef %3, %struct.mbedtls_asn1_named_data* noundef %4) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %len, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur_ext, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %8, i32 0, i32 2
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %9, %struct.mbedtls_asn1_named_data** %cur_ext, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %len, align 8
  %conv2 = trunc i64 %10 to i32
  store i32 %conv2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_write_extension(i8** noundef %p, i8* noundef %start, %struct.mbedtls_asn1_named_data* noundef %ext) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %ext.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_asn1_named_data* %ext, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %2, i32 0, i32 1
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 2
  %3 = load i8*, i8** %p1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %val2 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %4, i32 0, i32 1
  %len3 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val2, i32 0, i32 1
  %5 = load i64, i64* %len3, align 8
  %sub = sub i64 %5, 1
  %call = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %0, i8* noundef %1, i8* noundef %add.ptr, i64 noundef %sub) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %ret, align 4
  %conv = sext i32 %7 to i64
  %8 = load i64, i64* %len, align 8
  %add = add i64 %8, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %start.addr, align 8
  %11 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %val5 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %11, i32 0, i32 1
  %len6 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val5, i32 0, i32 1
  %12 = load i64, i64* %len6, align 8
  %sub7 = sub i64 %12, 1
  %call8 = call i32 @mbedtls_asn1_write_len(i8** noundef %9, i8* noundef %10, i64 noundef %sub7) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %do.body4
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.else12:                                        ; preds = %do.body4
  %14 = load i32, i32* %ret, align 4
  %conv13 = sext i32 %14 to i64
  %15 = load i64, i64* %len, align 8
  %add14 = add i64 %15, %conv13
  store i64 %add14, i64* %len, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else12
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %start.addr, align 8
  %call18 = call i32 @mbedtls_asn1_write_tag(i8** noundef %16, i8* noundef %17, i8 noundef zeroext 4) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %do.body17
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else22:                                        ; preds = %do.body17
  %19 = load i32, i32* %ret, align 4
  %conv23 = sext i32 %19 to i64
  %20 = load i64, i64* %len, align 8
  %add24 = add i64 %20, %conv23
  store i64 %add24, i64* %len, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else22
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  %21 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %val27 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %21, i32 0, i32 1
  %p28 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val27, i32 0, i32 2
  %22 = load i8*, i8** %p28, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %conv29 = zext i8 %23 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end43

if.then32:                                        ; preds = %do.end26
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %start.addr, align 8
  %call34 = call i32 @mbedtls_asn1_write_bool(i8** noundef %24, i8* noundef %25, i32 noundef 1) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %do.body33
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.else38:                                        ; preds = %do.body33
  %27 = load i32, i32* %ret, align 4
  %conv39 = sext i32 %27 to i64
  %28 = load i64, i64* %len, align 8
  %add40 = add i64 %28, %conv39
  store i64 %add40, i64* %len, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else38
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %do.end26
  br label %do.body44

do.body44:                                        ; preds = %if.end43
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %start.addr, align 8
  %31 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %oid = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %31, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 2
  %32 = load i8*, i8** %p45, align 8
  %33 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %oid46 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %33, i32 0, i32 0
  %len47 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid46, i32 0, i32 1
  %34 = load i64, i64* %len47, align 8
  %call48 = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %29, i8* noundef %30, i8* noundef %32, i64 noundef %34) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %do.body44
  %35 = load i32, i32* %ret, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

if.else52:                                        ; preds = %do.body44
  %36 = load i32, i32* %ret, align 4
  %conv53 = sext i32 %36 to i64
  %37 = load i64, i64* %len, align 8
  %add54 = add i64 %37, %conv53
  store i64 %add54, i64* %len, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else52
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %38 = load i8**, i8*** %p.addr, align 8
  %39 = load i8*, i8** %start.addr, align 8
  %40 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %ext.addr, align 8
  %oid58 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %40, i32 0, i32 0
  %len59 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid58, i32 0, i32 1
  %41 = load i64, i64* %len59, align 8
  %call60 = call i32 @mbedtls_asn1_write_len(i8** noundef %38, i8* noundef %39, i64 noundef %41) #5
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %do.body57
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

if.else64:                                        ; preds = %do.body57
  %43 = load i32, i32* %ret, align 4
  %conv65 = sext i32 %43 to i64
  %44 = load i64, i64* %len, align 8
  %add66 = add i64 %44, %conv65
  store i64 %add66, i64* %len, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else64
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  br label %do.body69

do.body69:                                        ; preds = %do.end68
  %45 = load i8**, i8*** %p.addr, align 8
  %46 = load i8*, i8** %start.addr, align 8
  %call70 = call i32 @mbedtls_asn1_write_tag(i8** noundef %45, i8* noundef %46, i8 noundef zeroext 6) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %do.body69
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval, align 4
  br label %return

if.else74:                                        ; preds = %do.body69
  %48 = load i32, i32* %ret, align 4
  %conv75 = sext i32 %48 to i64
  %49 = load i64, i64* %len, align 8
  %add76 = add i64 %49, %conv75
  store i64 %add76, i64* %len, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.else74
  br label %do.end78

do.end78:                                         ; preds = %if.end77
  br label %do.body79

do.body79:                                        ; preds = %do.end78
  %50 = load i8**, i8*** %p.addr, align 8
  %51 = load i8*, i8** %start.addr, align 8
  %52 = load i64, i64* %len, align 8
  %call80 = call i32 @mbedtls_asn1_write_len(i8** noundef %50, i8* noundef %51, i64 noundef %52) #5
  store i32 %call80, i32* %ret, align 4
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %do.body79
  %53 = load i32, i32* %ret, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

if.else84:                                        ; preds = %do.body79
  %54 = load i32, i32* %ret, align 4
  %conv85 = sext i32 %54 to i64
  %55 = load i64, i64* %len, align 8
  %add86 = add i64 %55, %conv85
  store i64 %add86, i64* %len, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else84
  br label %do.end88

do.end88:                                         ; preds = %if.end87
  br label %do.body89

do.body89:                                        ; preds = %do.end88
  %56 = load i8**, i8*** %p.addr, align 8
  %57 = load i8*, i8** %start.addr, align 8
  %call90 = call i32 @mbedtls_asn1_write_tag(i8** noundef %56, i8* noundef %57, i8 noundef zeroext 48) #5
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %do.body89
  %58 = load i32, i32* %ret, align 4
  store i32 %58, i32* %retval, align 4
  br label %return

if.else94:                                        ; preds = %do.body89
  %59 = load i32, i32* %ret, align 4
  %conv95 = sext i32 %59 to i64
  %60 = load i64, i64* %len, align 8
  %add96 = add i64 %60, %conv95
  store i64 %add96, i64* %len, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.else94
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  %61 = load i64, i64* %len, align 8
  %conv99 = trunc i64 %61 to i32
  store i32 %conv99, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end98, %if.then93, %if.then83, %if.then73, %if.then63, %if.then51, %if.then37, %if.then21, %if.then11, %if.then
  %62 = load i32, i32* %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_asn1_write_tagged_string(i8** noundef, i8* noundef, i32 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_oid(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_raw_buffer(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_bool(i8** noundef, i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
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
