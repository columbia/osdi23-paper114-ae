; ModuleID = 'pkwrite.c'
source_filename = "pkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }

@.str = private unnamed_addr constant [28 x i8] c"-----BEGIN PUBLIC KEY-----\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"-----END PUBLIC KEY-----\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"-----BEGIN RSA PRIVATE KEY-----\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"-----END RSA PRIVATE KEY-----\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"-----BEGIN EC PRIVATE KEY-----\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"-----END EC PRIVATE KEY-----\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_pubkey(i8** noundef %p, i8* noundef %start, %struct.mbedtls_pk_context* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %0) #3
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %do.end6
  br label %do.body7

do.body7:                                         ; preds = %if.then
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %4 = bitcast %struct.mbedtls_pk_context* %3 to { %struct.mbedtls_pk_info_t*, i8* }*
  %5 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %4, i32 0, i32 0
  %6 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %5, align 8
  %7 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %4, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %call8 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %6, i8* %8) #3
  %call9 = call i32 @pk_write_rsa_pubkey(i8** noundef %1, i8* noundef %2, %struct.mbedtls_rsa_context* noundef %call8) #3
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.body7
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body7
  %10 = load i32, i32* %ret, align 4
  %conv = sext i32 %10 to i64
  %11 = load i64, i64* %len, align 8
  %add = add i64 %11, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end12

do.end12:                                         ; preds = %if.end
  br label %if.end31

if.else13:                                        ; preds = %do.end6
  %12 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call14 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %12) #3
  %cmp15 = icmp eq i32 %call14, 2
  br i1 %cmp15, label %if.then17, label %if.else29

if.then17:                                        ; preds = %if.else13
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %start.addr, align 8
  %15 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %16 = bitcast %struct.mbedtls_pk_context* %15 to { %struct.mbedtls_pk_info_t*, i8* }*
  %17 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %16, i32 0, i32 0
  %18 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %17, align 8
  %19 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %16, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %call19 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %18, i8* %20) #3
  %call20 = call i32 @pk_write_ec_pubkey(i8** noundef %13, i8* noundef %14, %struct.mbedtls_ecp_keypair* noundef %call19) #3
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.body18
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %do.body18
  %22 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %22 to i64
  %23 = load i64, i64* %len, align 8
  %add26 = add i64 %23, %conv25
  store i64 %add26, i64* %len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else24
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %if.end30

if.else29:                                        ; preds = %if.else13
  store i32 -14720, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %do.end28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %do.end12
  %24 = load i64, i64* %len, align 8
  %conv32 = trunc i64 %24 to i32
  store i32 %conv32, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.else29, %if.then23, %if.then11
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_write_rsa_pubkey(i8** noundef %p, i8* noundef %start, %struct.mbedtls_rsa_context* noundef %rsa) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #3
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %0, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %call1 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %1, i8* noundef %2, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %end_of_export

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %ret, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %len, align 8
  %add = add i64 %4, %conv
  store i64 %add, i64* %len, align 8
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call3 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %5, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %call7 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %6, i8* noundef %7, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  br label %end_of_export

if.end11:                                         ; preds = %lor.lhs.false6
  %8 = load i32, i32* %ret, align 4
  %conv12 = sext i32 %8 to i64
  %9 = load i64, i64* %len, align 8
  %add13 = add i64 %9, %conv12
  store i64 %add13, i64* %len, align 8
  br label %end_of_export

end_of_export:                                    ; preds = %if.end11, %if.then10, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #3
  %10 = load i32, i32* %ret, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %end_of_export
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %end_of_export
  br label %do.body

do.body:                                          ; preds = %if.end17
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %start.addr, align 8
  %14 = load i64, i64* %len, align 8
  %call18 = call i32 @mbedtls_asn1_write_len(i8** noundef %12, i8* noundef %13, i64 noundef %14) #3
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %do.body
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %16 = load i32, i32* %ret, align 4
  %conv22 = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add23 = add i64 %17, %conv22
  store i64 %add23, i64* %len, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end24
  br label %do.body25

do.body25:                                        ; preds = %do.end
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %start.addr, align 8
  %call26 = call i32 @mbedtls_asn1_write_tag(i8** noundef %18, i8* noundef %19, i8 noundef zeroext 48) #3
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %do.body25
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.else30:                                        ; preds = %do.body25
  %21 = load i32, i32* %ret, align 4
  %conv31 = sext i32 %21 to i64
  %22 = load i64, i64* %len, align 8
  %add32 = add i64 %22, %conv31
  store i64 %add32, i64* %len, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else30
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  %23 = load i64, i64* %len, align 8
  %conv35 = trunc i64 %23 to i32
  store i32 %conv35, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end34, %if.then29, %if.then21, %if.then16
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %pk.coerce0, i8* %pk.coerce1) #0 {
entry:
  %retval = alloca %struct.mbedtls_rsa_context*, align 8
  %pk = alloca %struct.mbedtls_pk_context, align 8
  %0 = bitcast %struct.mbedtls_pk_context* %pk to { %struct.mbedtls_pk_info_t*, i8* }*
  %1 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk.coerce0, %struct.mbedtls_pk_info_t** %1, align 8
  %2 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %0, i32 0, i32 1
  store i8* %pk.coerce1, i8** %2, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %pk, i32 0, i32 1
  %3 = load i8*, i8** %pk_ctx, align 8
  %4 = bitcast i8* %3 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %4, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %retval, align 8
  ret %struct.mbedtls_rsa_context* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_write_ec_pubkey(i8** noundef %p, i8* noundef %start, %struct.mbedtls_ecp_keypair* noundef %ec) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %ec.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %buf = alloca [133 x i8], align 16
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_ecp_keypair* %ec, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [133 x i8], [133 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Q, i32 noundef 0, i64* noundef %len, i8* noundef %arraydecay, i64 noundef 133) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** %start.addr, align 8
  %cmp1 = icmp ult i8* %4, %5
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i64, i64* %len, align 8
  %cmp2 = icmp ult i64 %sub.ptr.sub, %9
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -108, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %10 = load i64, i64* %len, align 8
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.neg
  store i8* %add.ptr, i8** %11, align 8
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %arraydecay5 = getelementptr inbounds [133 x i8], [133 x i8]* %buf, i64 0, i64 0
  %15 = load i64, i64* %len, align 8
  %call6 = call i8* @memcpy(i8* noundef %14, i8* noundef %arraydecay5, i64 noundef %15) #4
  %16 = load i64, i64* %len, align 8
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
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
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %pk) #3
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef %key, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %c = alloca i8*, align 8
  %len = alloca i64, align 8
  %par_len = alloca i64, align 8
  %oid_len = alloca i64, align 8
  %pk_type = alloca i32, align 4
  %oid = alloca i8*, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  store i64 0, i64* %par_len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %c, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call = call i32 @mbedtls_pk_write_pubkey(i8** noundef %c, i8* noundef %3, %struct.mbedtls_pk_context* noundef %4) #3
  store i32 %call, i32* %ret, align 4
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.body3
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body3
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %len, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  %8 = load i8*, i8** %c, align 8
  %9 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp8 = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  store i32 -108, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %do.end7
  %10 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %c, align 8
  store i8 0, i8* %incdec.ptr, align 1
  %11 = load i64, i64* %len, align 8
  %add12 = add i64 %11, 1
  store i64 %add12, i64* %len, align 8
  br label %do.body13

do.body13:                                        ; preds = %if.end11
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i64, i64* %len, align 8
  %call14 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %12, i64 noundef %13) #3
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %do.body13
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.else18:                                        ; preds = %do.body13
  %15 = load i32, i32* %ret, align 4
  %conv19 = sext i32 %15 to i64
  %16 = load i64, i64* %len, align 8
  %add20 = add i64 %16, %conv19
  store i64 %add20, i64* %len, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else18
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %17 = load i8*, i8** %buf.addr, align 8
  %call24 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %17, i8 noundef zeroext 3) #3
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %do.body23
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %do.body23
  %19 = load i32, i32* %ret, align 4
  %conv29 = sext i32 %19 to i64
  %20 = load i64, i64* %len, align 8
  %add30 = add i64 %20, %conv29
  store i64 %add30, i64* %len, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else28
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %21 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call33 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %21) #3
  store i32 %call33, i32* %pk_type, align 4
  %22 = load i32, i32* %pk_type, align 4
  %cmp34 = icmp eq i32 %22, 2
  br i1 %cmp34, label %if.then36, label %if.end48

if.then36:                                        ; preds = %do.end32
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %23 = load i8*, i8** %buf.addr, align 8
  %24 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %25 = bitcast %struct.mbedtls_pk_context* %24 to { %struct.mbedtls_pk_info_t*, i8* }*
  %26 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %25, i32 0, i32 0
  %27 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %26, align 8
  %28 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %25, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %call38 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %27, i8* %29) #3
  %call39 = call i32 @pk_write_ec_param(i8** noundef %c, i8* noundef %23, %struct.mbedtls_ecp_keypair* noundef %call38) #3
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %do.body37
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.else43:                                        ; preds = %do.body37
  %31 = load i32, i32* %ret, align 4
  %conv44 = sext i32 %31 to i64
  %32 = load i64, i64* %par_len, align 8
  %add45 = add i64 %32, %conv44
  store i64 %add45, i64* %par_len, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else43
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %do.end32
  %33 = load i32, i32* %pk_type, align 4
  %call49 = call i32 @mbedtls_oid_get_oid_by_pk_alg(i32 noundef %33, i8** noundef %oid, i64* noundef %oid_len) #3
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end48
  br label %do.body54

do.body54:                                        ; preds = %if.end53
  %35 = load i8*, i8** %buf.addr, align 8
  %36 = load i8*, i8** %oid, align 8
  %37 = load i64, i64* %oid_len, align 8
  %38 = load i64, i64* %par_len, align 8
  %call55 = call i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef %c, i8* noundef %35, i8* noundef %36, i64 noundef %37, i64 noundef %38) #3
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %do.body54
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.else59:                                        ; preds = %do.body54
  %40 = load i32, i32* %ret, align 4
  %conv60 = sext i32 %40 to i64
  %41 = load i64, i64* %len, align 8
  %add61 = add i64 %41, %conv60
  store i64 %add61, i64* %len, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else59
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %do.body64

do.body64:                                        ; preds = %do.end63
  %42 = load i8*, i8** %buf.addr, align 8
  %43 = load i64, i64* %len, align 8
  %call65 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %42, i64 noundef %43) #3
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %do.body64
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

if.else69:                                        ; preds = %do.body64
  %45 = load i32, i32* %ret, align 4
  %conv70 = sext i32 %45 to i64
  %46 = load i64, i64* %len, align 8
  %add71 = add i64 %46, %conv70
  store i64 %add71, i64* %len, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else69
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %47 = load i8*, i8** %buf.addr, align 8
  %call75 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %47, i8 noundef zeroext 48) #3
  store i32 %call75, i32* %ret, align 4
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %do.body74
  %48 = load i32, i32* %ret, align 4
  store i32 %48, i32* %retval, align 4
  br label %return

if.else79:                                        ; preds = %do.body74
  %49 = load i32, i32* %ret, align 4
  %conv80 = sext i32 %49 to i64
  %50 = load i64, i64* %len, align 8
  %add81 = add i64 %50, %conv80
  store i64 %add81, i64* %len, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.else79
  br label %do.end83

do.end83:                                         ; preds = %if.end82
  %51 = load i64, i64* %len, align 8
  %conv84 = trunc i64 %51 to i32
  store i32 %conv84, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end83, %if.then78, %if.then68, %if.then58, %if.then52, %if.then42, %if.then27, %if.then17, %if.then10, %if.then5, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

declare dso_local i32 @mbedtls_asn1_write_len(i8** noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8** noundef, i8* noundef, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_write_ec_param(i8** noundef %p, i8* noundef %start, %struct.mbedtls_ecp_keypair* noundef %ec) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %ec.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %oid = alloca i8*, align 8
  %oid_len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_ecp_keypair* %ec, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %call = call i32 @mbedtls_oid_get_oid_by_ec_grp(i32 noundef %1, i8** noundef %oid, i64* noundef %oid_len) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %start.addr, align 8
  %5 = load i8*, i8** %oid, align 8
  %6 = load i64, i64* %oid_len, align 8
  %call1 = call i32 @mbedtls_asn1_write_oid(i8** noundef %3, i8* noundef %4, i8* noundef %5, i64 noundef %6) #3
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.body
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %8 = load i32, i32* %ret, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %len, align 8
  %add = add i64 %9, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end4
  %10 = load i64, i64* %len, align 8
  %conv5 = trunc i64 %10 to i32
  store i32 %conv5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_oid_get_oid_by_pk_alg(i32 noundef, i8** noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef %key, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %c = alloca i8*, align 8
  %len = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %ec = alloca %struct.mbedtls_ecp_keypair*, align 8
  %pub_len = alloca i64, align 8
  %par_len = alloca i64, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %c, align 8
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %3) #3
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %if.then4, label %if.else122

if.then4:                                         ; preds = %do.end2
  %4 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %5 = bitcast %struct.mbedtls_pk_context* %4 to { %struct.mbedtls_pk_info_t*, i8* }*
  %6 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %5, i32 0, i32 0
  %7 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %6, align 8
  %8 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %5, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %call5 = call %struct.mbedtls_rsa_context* @mbedtls_pk_rsa(%struct.mbedtls_pk_info_t* %7, i8* %9) #3
  store %struct.mbedtls_rsa_context* %call5, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #3
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call6 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %10, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %11 = load i8*, i8** %buf.addr, align 8
  %call8 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %11, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.then4
  br label %end_of_export

if.end11:                                         ; preds = %lor.lhs.false
  %12 = load i32, i32* %ret, align 4
  %conv = sext i32 %12 to i64
  %13 = load i64, i64* %len, align 8
  %add = add i64 %13, %conv
  store i64 %add, i64* %len, align 8
  %14 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call12 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %14, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end11
  %15 = load i8*, i8** %buf.addr, align 8
  %call16 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %15, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false15, %if.end11
  br label %end_of_export

if.end20:                                         ; preds = %lor.lhs.false15
  %16 = load i32, i32* %ret, align 4
  %conv21 = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add22 = add i64 %17, %conv21
  store i64 %add22, i64* %len, align 8
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call23 = call i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %18, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then30, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end20
  %19 = load i8*, i8** %buf.addr, align 8
  %call27 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %19, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false26, %if.end20
  br label %end_of_export

if.end31:                                         ; preds = %lor.lhs.false26
  %20 = load i32, i32* %ret, align 4
  %conv32 = sext i32 %20 to i64
  %21 = load i64, i64* %len, align 8
  %add33 = add i64 %21, %conv32
  store i64 %add33, i64* %len, align 8
  %22 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call34 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %22, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end31
  %23 = load i8*, i8** %buf.addr, align 8
  %call38 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %23, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false37, %if.end31
  br label %end_of_export

if.end42:                                         ; preds = %lor.lhs.false37
  %24 = load i32, i32* %ret, align 4
  %conv43 = sext i32 %24 to i64
  %25 = load i64, i64* %len, align 8
  %add44 = add i64 %25, %conv43
  store i64 %add44, i64* %len, align 8
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call45 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %26, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call45, i32* %ret, align 4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end42
  %27 = load i8*, i8** %buf.addr, align 8
  %call49 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %27, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false48, %if.end42
  br label %end_of_export

if.end53:                                         ; preds = %lor.lhs.false48
  %28 = load i32, i32* %ret, align 4
  %conv54 = sext i32 %28 to i64
  %29 = load i64, i64* %len, align 8
  %add55 = add i64 %29, %conv54
  store i64 %add55, i64* %len, align 8
  %30 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call56 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %30, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then63, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end53
  %31 = load i8*, i8** %buf.addr, align 8
  %call60 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %31, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %lor.lhs.false59, %if.end53
  br label %end_of_export

if.end64:                                         ; preds = %lor.lhs.false59
  %32 = load i32, i32* %ret, align 4
  %conv65 = sext i32 %32 to i64
  %33 = load i64, i64* %len, align 8
  %add66 = add i64 %33, %conv65
  store i64 %add66, i64* %len, align 8
  %34 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call67 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %34, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then74, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end64
  %35 = load i8*, i8** %buf.addr, align 8
  %call71 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %35, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false70, %if.end64
  br label %end_of_export

if.end75:                                         ; preds = %lor.lhs.false70
  %36 = load i32, i32* %ret, align 4
  %conv76 = sext i32 %36 to i64
  %37 = load i64, i64* %len, align 8
  %add77 = add i64 %37, %conv76
  store i64 %add77, i64* %len, align 8
  %38 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call78 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %38, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call78, i32* %ret, align 4
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then85, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end75
  %39 = load i8*, i8** %buf.addr, align 8
  %call82 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %39, %struct.mbedtls_mpi* noundef %T) #3
  store i32 %call82, i32* %ret, align 4
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false81, %if.end75
  br label %end_of_export

if.end86:                                         ; preds = %lor.lhs.false81
  %40 = load i32, i32* %ret, align 4
  %conv87 = sext i32 %40 to i64
  %41 = load i64, i64* %len, align 8
  %add88 = add i64 %41, %conv87
  store i64 %add88, i64* %len, align 8
  br label %end_of_export

end_of_export:                                    ; preds = %if.end86, %if.then85, %if.then74, %if.then63, %if.then52, %if.then41, %if.then30, %if.then19, %if.then10
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #3
  %42 = load i32, i32* %ret, align 4
  %cmp89 = icmp slt i32 %42, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %end_of_export
  %43 = load i32, i32* %ret, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %end_of_export
  br label %do.body93

do.body93:                                        ; preds = %if.end92
  %44 = load i8*, i8** %buf.addr, align 8
  %call94 = call i32 @mbedtls_asn1_write_int(i8** noundef %c, i8* noundef %44, i32 noundef 0) #3
  store i32 %call94, i32* %ret, align 4
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %do.body93
  %45 = load i32, i32* %ret, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body93
  %46 = load i32, i32* %ret, align 4
  %conv98 = sext i32 %46 to i64
  %47 = load i64, i64* %len, align 8
  %add99 = add i64 %47, %conv98
  store i64 %add99, i64* %len, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.else
  br label %do.end101

do.end101:                                        ; preds = %if.end100
  br label %do.body102

do.body102:                                       ; preds = %do.end101
  %48 = load i8*, i8** %buf.addr, align 8
  %49 = load i64, i64* %len, align 8
  %call103 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %48, i64 noundef %49) #3
  store i32 %call103, i32* %ret, align 4
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %do.body102
  %50 = load i32, i32* %ret, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

if.else107:                                       ; preds = %do.body102
  %51 = load i32, i32* %ret, align 4
  %conv108 = sext i32 %51 to i64
  %52 = load i64, i64* %len, align 8
  %add109 = add i64 %52, %conv108
  store i64 %add109, i64* %len, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.else107
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  br label %do.body112

do.body112:                                       ; preds = %do.end111
  %53 = load i8*, i8** %buf.addr, align 8
  %call113 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %53, i8 noundef zeroext 48) #3
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %do.body112
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.else117:                                       ; preds = %do.body112
  %55 = load i32, i32* %ret, align 4
  %conv118 = sext i32 %55 to i64
  %56 = load i64, i64* %len, align 8
  %add119 = add i64 %56, %conv118
  store i64 %add119, i64* %len, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.else117
  br label %do.end121

do.end121:                                        ; preds = %if.end120
  br label %if.end257

if.else122:                                       ; preds = %do.end2
  %57 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call123 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %57) #3
  %cmp124 = icmp eq i32 %call123, 2
  br i1 %cmp124, label %if.then126, label %if.else255

if.then126:                                       ; preds = %if.else122
  %58 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %59 = bitcast %struct.mbedtls_pk_context* %58 to { %struct.mbedtls_pk_info_t*, i8* }*
  %60 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %59, i32 0, i32 0
  %61 = load %struct.mbedtls_pk_info_t*, %struct.mbedtls_pk_info_t** %60, align 8
  %62 = getelementptr inbounds { %struct.mbedtls_pk_info_t*, i8* }, { %struct.mbedtls_pk_info_t*, i8* }* %59, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %call127 = call %struct.mbedtls_ecp_keypair* @mbedtls_pk_ec(%struct.mbedtls_pk_info_t* %61, i8* %63) #3
  store %struct.mbedtls_ecp_keypair* %call127, %struct.mbedtls_ecp_keypair** %ec, align 8
  store i64 0, i64* %pub_len, align 8
  store i64 0, i64* %par_len, align 8
  br label %do.body128

do.body128:                                       ; preds = %if.then126
  %64 = load i8*, i8** %buf.addr, align 8
  %65 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec, align 8
  %call129 = call i32 @pk_write_ec_pubkey(i8** noundef %c, i8* noundef %64, %struct.mbedtls_ecp_keypair* noundef %65) #3
  store i32 %call129, i32* %ret, align 4
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %do.body128
  %66 = load i32, i32* %ret, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

if.else133:                                       ; preds = %do.body128
  %67 = load i32, i32* %ret, align 4
  %conv134 = sext i32 %67 to i64
  %68 = load i64, i64* %pub_len, align 8
  %add135 = add i64 %68, %conv134
  store i64 %add135, i64* %pub_len, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.else133
  br label %do.end137

do.end137:                                        ; preds = %if.end136
  %69 = load i8*, i8** %c, align 8
  %70 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp138 = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %do.end137
  store i32 -108, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %do.end137
  %71 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %incdec.ptr, i8** %c, align 8
  store i8 0, i8* %incdec.ptr, align 1
  %72 = load i64, i64* %pub_len, align 8
  %add142 = add i64 %72, 1
  store i64 %add142, i64* %pub_len, align 8
  br label %do.body143

do.body143:                                       ; preds = %if.end141
  %73 = load i8*, i8** %buf.addr, align 8
  %74 = load i64, i64* %pub_len, align 8
  %call144 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %73, i64 noundef %74) #3
  store i32 %call144, i32* %ret, align 4
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %do.body143
  %75 = load i32, i32* %ret, align 4
  store i32 %75, i32* %retval, align 4
  br label %return

if.else148:                                       ; preds = %do.body143
  %76 = load i32, i32* %ret, align 4
  %conv149 = sext i32 %76 to i64
  %77 = load i64, i64* %pub_len, align 8
  %add150 = add i64 %77, %conv149
  store i64 %add150, i64* %pub_len, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.else148
  br label %do.end152

do.end152:                                        ; preds = %if.end151
  br label %do.body153

do.body153:                                       ; preds = %do.end152
  %78 = load i8*, i8** %buf.addr, align 8
  %call154 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %78, i8 noundef zeroext 3) #3
  store i32 %call154, i32* %ret, align 4
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %do.body153
  %79 = load i32, i32* %ret, align 4
  store i32 %79, i32* %retval, align 4
  br label %return

if.else158:                                       ; preds = %do.body153
  %80 = load i32, i32* %ret, align 4
  %conv159 = sext i32 %80 to i64
  %81 = load i64, i64* %pub_len, align 8
  %add160 = add i64 %81, %conv159
  store i64 %add160, i64* %pub_len, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.else158
  br label %do.end162

do.end162:                                        ; preds = %if.end161
  br label %do.body163

do.body163:                                       ; preds = %do.end162
  %82 = load i8*, i8** %buf.addr, align 8
  %83 = load i64, i64* %pub_len, align 8
  %call164 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %82, i64 noundef %83) #3
  store i32 %call164, i32* %ret, align 4
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.else168

if.then167:                                       ; preds = %do.body163
  %84 = load i32, i32* %ret, align 4
  store i32 %84, i32* %retval, align 4
  br label %return

if.else168:                                       ; preds = %do.body163
  %85 = load i32, i32* %ret, align 4
  %conv169 = sext i32 %85 to i64
  %86 = load i64, i64* %pub_len, align 8
  %add170 = add i64 %86, %conv169
  store i64 %add170, i64* %pub_len, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.else168
  br label %do.end172

do.end172:                                        ; preds = %if.end171
  br label %do.body173

do.body173:                                       ; preds = %do.end172
  %87 = load i8*, i8** %buf.addr, align 8
  %call174 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %87, i8 noundef zeroext -95) #3
  store i32 %call174, i32* %ret, align 4
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.then177, label %if.else178

if.then177:                                       ; preds = %do.body173
  %88 = load i32, i32* %ret, align 4
  store i32 %88, i32* %retval, align 4
  br label %return

if.else178:                                       ; preds = %do.body173
  %89 = load i32, i32* %ret, align 4
  %conv179 = sext i32 %89 to i64
  %90 = load i64, i64* %pub_len, align 8
  %add180 = add i64 %90, %conv179
  store i64 %add180, i64* %pub_len, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.else178
  br label %do.end182

do.end182:                                        ; preds = %if.end181
  %91 = load i64, i64* %pub_len, align 8
  %92 = load i64, i64* %len, align 8
  %add183 = add i64 %92, %91
  store i64 %add183, i64* %len, align 8
  br label %do.body184

do.body184:                                       ; preds = %do.end182
  %93 = load i8*, i8** %buf.addr, align 8
  %94 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec, align 8
  %call185 = call i32 @pk_write_ec_param(i8** noundef %c, i8* noundef %93, %struct.mbedtls_ecp_keypair* noundef %94) #3
  store i32 %call185, i32* %ret, align 4
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %do.body184
  %95 = load i32, i32* %ret, align 4
  store i32 %95, i32* %retval, align 4
  br label %return

if.else189:                                       ; preds = %do.body184
  %96 = load i32, i32* %ret, align 4
  %conv190 = sext i32 %96 to i64
  %97 = load i64, i64* %par_len, align 8
  %add191 = add i64 %97, %conv190
  store i64 %add191, i64* %par_len, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.else189
  br label %do.end193

do.end193:                                        ; preds = %if.end192
  br label %do.body194

do.body194:                                       ; preds = %do.end193
  %98 = load i8*, i8** %buf.addr, align 8
  %99 = load i64, i64* %par_len, align 8
  %call195 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %98, i64 noundef %99) #3
  store i32 %call195, i32* %ret, align 4
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %do.body194
  %100 = load i32, i32* %ret, align 4
  store i32 %100, i32* %retval, align 4
  br label %return

if.else199:                                       ; preds = %do.body194
  %101 = load i32, i32* %ret, align 4
  %conv200 = sext i32 %101 to i64
  %102 = load i64, i64* %par_len, align 8
  %add201 = add i64 %102, %conv200
  store i64 %add201, i64* %par_len, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else199
  br label %do.end203

do.end203:                                        ; preds = %if.end202
  br label %do.body204

do.body204:                                       ; preds = %do.end203
  %103 = load i8*, i8** %buf.addr, align 8
  %call205 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %103, i8 noundef zeroext -96) #3
  store i32 %call205, i32* %ret, align 4
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.then208, label %if.else209

if.then208:                                       ; preds = %do.body204
  %104 = load i32, i32* %ret, align 4
  store i32 %104, i32* %retval, align 4
  br label %return

if.else209:                                       ; preds = %do.body204
  %105 = load i32, i32* %ret, align 4
  %conv210 = sext i32 %105 to i64
  %106 = load i64, i64* %par_len, align 8
  %add211 = add i64 %106, %conv210
  store i64 %add211, i64* %par_len, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.else209
  br label %do.end213

do.end213:                                        ; preds = %if.end212
  %107 = load i64, i64* %par_len, align 8
  %108 = load i64, i64* %len, align 8
  %add214 = add i64 %108, %107
  store i64 %add214, i64* %len, align 8
  br label %do.body215

do.body215:                                       ; preds = %do.end213
  %109 = load i8*, i8** %buf.addr, align 8
  %110 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec, align 8
  %call216 = call i32 @pk_write_ec_private(i8** noundef %c, i8* noundef %109, %struct.mbedtls_ecp_keypair* noundef %110) #3
  store i32 %call216, i32* %ret, align 4
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then219, label %if.else220

if.then219:                                       ; preds = %do.body215
  %111 = load i32, i32* %ret, align 4
  store i32 %111, i32* %retval, align 4
  br label %return

if.else220:                                       ; preds = %do.body215
  %112 = load i32, i32* %ret, align 4
  %conv221 = sext i32 %112 to i64
  %113 = load i64, i64* %len, align 8
  %add222 = add i64 %113, %conv221
  store i64 %add222, i64* %len, align 8
  br label %if.end223

if.end223:                                        ; preds = %if.else220
  br label %do.end224

do.end224:                                        ; preds = %if.end223
  br label %do.body225

do.body225:                                       ; preds = %do.end224
  %114 = load i8*, i8** %buf.addr, align 8
  %call226 = call i32 @mbedtls_asn1_write_int(i8** noundef %c, i8* noundef %114, i32 noundef 1) #3
  store i32 %call226, i32* %ret, align 4
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %if.then229, label %if.else230

if.then229:                                       ; preds = %do.body225
  %115 = load i32, i32* %ret, align 4
  store i32 %115, i32* %retval, align 4
  br label %return

if.else230:                                       ; preds = %do.body225
  %116 = load i32, i32* %ret, align 4
  %conv231 = sext i32 %116 to i64
  %117 = load i64, i64* %len, align 8
  %add232 = add i64 %117, %conv231
  store i64 %add232, i64* %len, align 8
  br label %if.end233

if.end233:                                        ; preds = %if.else230
  br label %do.end234

do.end234:                                        ; preds = %if.end233
  br label %do.body235

do.body235:                                       ; preds = %do.end234
  %118 = load i8*, i8** %buf.addr, align 8
  %119 = load i64, i64* %len, align 8
  %call236 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %118, i64 noundef %119) #3
  store i32 %call236, i32* %ret, align 4
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.else240

if.then239:                                       ; preds = %do.body235
  %120 = load i32, i32* %ret, align 4
  store i32 %120, i32* %retval, align 4
  br label %return

if.else240:                                       ; preds = %do.body235
  %121 = load i32, i32* %ret, align 4
  %conv241 = sext i32 %121 to i64
  %122 = load i64, i64* %len, align 8
  %add242 = add i64 %122, %conv241
  store i64 %add242, i64* %len, align 8
  br label %if.end243

if.end243:                                        ; preds = %if.else240
  br label %do.end244

do.end244:                                        ; preds = %if.end243
  br label %do.body245

do.body245:                                       ; preds = %do.end244
  %123 = load i8*, i8** %buf.addr, align 8
  %call246 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %123, i8 noundef zeroext 48) #3
  store i32 %call246, i32* %ret, align 4
  %cmp247 = icmp slt i32 %call246, 0
  br i1 %cmp247, label %if.then249, label %if.else250

if.then249:                                       ; preds = %do.body245
  %124 = load i32, i32* %ret, align 4
  store i32 %124, i32* %retval, align 4
  br label %return

if.else250:                                       ; preds = %do.body245
  %125 = load i32, i32* %ret, align 4
  %conv251 = sext i32 %125 to i64
  %126 = load i64, i64* %len, align 8
  %add252 = add i64 %126, %conv251
  store i64 %add252, i64* %len, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.else250
  br label %do.end254

do.end254:                                        ; preds = %if.end253
  br label %if.end256

if.else255:                                       ; preds = %if.else122
  store i32 -14720, i32* %retval, align 4
  br label %return

if.end256:                                        ; preds = %do.end254
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %do.end121
  %127 = load i64, i64* %len, align 8
  %conv258 = trunc i64 %127 to i32
  store i32 %conv258, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end257, %if.else255, %if.then249, %if.then239, %if.then229, %if.then219, %if.then208, %if.then198, %if.then188, %if.then177, %if.then167, %if.then157, %if.then147, %if.then140, %if.then132, %if.then116, %if.then106, %if.then97, %if.then91, %if.then
  %128 = load i32, i32* %retval, align 4
  ret i32 %128
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_asn1_write_mpi(i8** noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_asn1_write_int(i8** noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_write_ec_private(i8** noundef %p, i8* noundef %start, %struct.mbedtls_ecp_keypair* noundef %ec) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %ec.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  %byte_length = alloca i64, align 8
  %tmp = alloca [66 x i8], align 16
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_ecp_keypair* %ec, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %1 = load i64, i64* %pbits, align 8
  %add = add i64 %1, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %byte_length, align 8
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ec.addr, align 8
  %arraydecay = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 0
  %3 = load i64, i64* %byte_length, align 8
  %call = call i32 @mbedtls_ecp_write_key(%struct.mbedtls_ecp_keypair* noundef %2, i8* noundef %arraydecay, i64 noundef %3) #3
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %start.addr, align 8
  %arraydecay1 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 0
  %7 = load i64, i64* %byte_length, align 8
  %call2 = call i32 @mbedtls_asn1_write_octet_string(i8** noundef %5, i8* noundef %6, i8* noundef %arraydecay1, i64 noundef %7) #3
  store i32 %call2, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %arraydecay3 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 0
  %8 = load i64, i64* %byte_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay3, i64 noundef %8) #3
  %9 = load i32, i32* %ret, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_pubkey_pem(%struct.mbedtls_pk_context* noundef %key, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %output_buf = alloca [2086 x i8], align 16
  %olen = alloca i64, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %olen, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %arraydecay = getelementptr inbounds [2086 x i8], [2086 x i8]* %output_buf, i64 0, i64 0
  %call = call i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef %0, i8* noundef %arraydecay, i64 noundef 2086) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %arraydecay3 = getelementptr inbounds [2086 x i8], [2086 x i8]* %output_buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 2086
  %2 = load i32, i32* %ret, align 4
  %idx.ext = sext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %3 = load i32, i32* %ret, align 4
  %conv = sext i32 %3 to i64
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call5 = call i32 @mbedtls_pem_write_buffer(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef %add.ptr4, i64 noundef %conv, i8* noundef %4, i64 noundef %5, i64* noundef %olen) #3
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_pem_write_buffer(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_key_pem(%struct.mbedtls_pk_context* noundef %key, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %output_buf = alloca [5679 x i8], align 16
  %begin = alloca i8*, align 8
  %end = alloca i8*, align 8
  %olen = alloca i64, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %olen, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %arraydecay = getelementptr inbounds [5679 x i8], [5679 x i8]* %output_buf, i64 0, i64 0
  %call = call i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef %0, i8* noundef %arraydecay, i64 noundef 5679) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call3 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %2) #3
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %begin, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %end, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %call6 = call i32 @mbedtls_pk_get_type(%struct.mbedtls_pk_context* noundef %3) #3
  %cmp7 = icmp eq i32 %call6, 2
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %begin, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %end, align 8
  br label %if.end10

if.else9:                                         ; preds = %if.else
  store i32 -14720, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  %4 = load i8*, i8** %begin, align 8
  %5 = load i8*, i8** %end, align 8
  %arraydecay12 = getelementptr inbounds [5679 x i8], [5679 x i8]* %output_buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay12, i64 5679
  %6 = load i32, i32* %ret, align 4
  %idx.ext = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %7 = load i32, i32* %ret, align 4
  %conv = sext i32 %7 to i64
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load i64, i64* %size.addr, align 8
  %call14 = call i32 @mbedtls_pem_write_buffer(i8* noundef %4, i8* noundef %5, i8* noundef %add.ptr13, i64 noundef %conv, i8* noundef %8, i64 noundef %9, i64* noundef %olen) #3
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.else9, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i32 noundef, i64* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_oid_get_oid_by_ec_grp(i32 noundef, i8** noundef, i64* noundef) #1

declare dso_local i32 @mbedtls_asn1_write_oid(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_write_key(%struct.mbedtls_ecp_keypair* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_asn1_write_octet_string(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
