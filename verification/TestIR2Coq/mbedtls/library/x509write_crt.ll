; ModuleID = 'x509write_crt.c'
source_filename = "x509write_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509write_cert = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context*, %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data*, i32, [16 x i8], [16 x i8], %struct.mbedtls_asn1_named_data* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [4 x i8] c"U\1D\13\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"U\1D\0F\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"`\86H\01\86\F8B\01\01\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"-----BEGIN CERTIFICATE-----\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"-----END CERTIFICATE-----\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"U\1D#\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"U\1D\0E\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_crt_init(%struct.mbedtls_x509write_cert* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_x509write_cert* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 112) #5
  %2 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %2, i32 0, i32 1
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %serial) #6
  %3 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %3, i32 0, i32 0
  store i32 2, i32* %version, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_crt_free(%struct.mbedtls_x509write_cert* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %0, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %serial) #6
  %1 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %1, i32 0, i32 4
  call void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %subject) #6
  %2 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %2, i32 0, i32 5
  call void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %issuer) #6
  %3 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %3, i32 0, i32 9
  call void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %extensions) #6
  %4 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %5 = bitcast %struct.mbedtls_x509write_cert* %4 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %5, i64 noundef 112) #6
  ret void
}

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_crt_set_version(%struct.mbedtls_x509write_cert* noundef %ctx, i32 noundef %version) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %version.addr = alloca i32, align 4
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  %0 = load i32, i32* %version.addr, align 4
  %1 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %version1 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %1, i32 0, i32 0
  store i32 %0, i32* %version1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_crt_set_md_alg(%struct.mbedtls_x509write_cert* noundef %ctx, i32 noundef %md_alg) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %md_alg.addr = alloca i32, align 4
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  %1 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %md_alg1 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %1, i32 0, i32 6
  store i32 %0, i32* %md_alg1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_crt_set_subject_key(%struct.mbedtls_x509write_cert* noundef %ctx, %struct.mbedtls_pk_context* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %1 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %subject_key = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %1, i32 0, i32 2
  store %struct.mbedtls_pk_context* %0, %struct.mbedtls_pk_context** %subject_key, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_crt_set_issuer_key(%struct.mbedtls_x509write_cert* noundef %ctx, %struct.mbedtls_pk_context* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %1 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer_key = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %1, i32 0, i32 3
  store %struct.mbedtls_pk_context* %0, %struct.mbedtls_pk_context** %issuer_key, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_subject_name(%struct.mbedtls_x509write_cert* noundef %ctx, i8* noundef %subject_name) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %subject_name.addr = alloca i8*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i8* %subject_name, i8** %subject_name.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %0, i32 0, i32 4
  %1 = load i8*, i8** %subject_name.addr, align 8
  %call = call i32 @mbedtls_x509_string_to_names(%struct.mbedtls_asn1_named_data** noundef %subject, i8* noundef %1) #6
  ret i32 %call
}

declare dso_local i32 @mbedtls_x509_string_to_names(%struct.mbedtls_asn1_named_data** noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_issuer_name(%struct.mbedtls_x509write_cert* noundef %ctx, i8* noundef %issuer_name) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %issuer_name.addr = alloca i8*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i8* %issuer_name, i8** %issuer_name.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %0, i32 0, i32 5
  %1 = load i8*, i8** %issuer_name.addr, align 8
  %call = call i32 @mbedtls_x509_string_to_names(%struct.mbedtls_asn1_named_data** noundef %issuer, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_serial(%struct.mbedtls_x509write_cert* noundef %ctx, %struct.mbedtls_mpi* noundef %serial) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %serial.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store %struct.mbedtls_mpi* %serial, %struct.mbedtls_mpi** %serial.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %serial1 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %0, i32 0, i32 1
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %serial.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %serial1, %struct.mbedtls_mpi* noundef %1) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_validity(%struct.mbedtls_x509write_cert* noundef %ctx, i8* noundef %not_before, i8* noundef %not_after) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %not_before.addr = alloca i8*, align 8
  %not_after.addr = alloca i8*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i8* %not_before, i8** %not_before.addr, align 8
  store i8* %not_after, i8** %not_after.addr, align 8
  %0 = load i8*, i8** %not_before.addr, align 8
  %call = call i64 @strlen(i8* noundef %0) #7
  %cmp = icmp ne i64 %call, 14
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %not_after.addr, align 8
  %call1 = call i64 @strlen(i8* noundef %1) #7
  %cmp2 = icmp ne i64 %call1, 14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %not_before3 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %2, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %not_before3, i64 0, i64 0
  %3 = load i8*, i8** %not_before.addr, align 8
  %call4 = call i8* @strncpy(i8* noundef %arraydecay, i8* noundef %3, i64 noundef 15) #5
  %4 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %not_after5 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %4, i32 0, i32 8
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %not_after5, i64 0, i64 0
  %5 = load i8*, i8** %not_after.addr, align 8
  %call7 = call i8* @strncpy(i8* noundef %arraydecay6, i8* noundef %5, i64 noundef 15) #5
  %6 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %not_before8 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %6, i32 0, i32 7
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %not_before8, i64 0, i64 14
  store i8 90, i8* %arrayidx, align 2
  %7 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %not_after9 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %7, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %not_after9, i64 0, i64 14
  store i8 90, i8* %arrayidx10, align 2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_extension(%struct.mbedtls_x509write_cert* noundef %ctx, i8* noundef %oid, i64 noundef %oid_len, i32 noundef %critical, i8* noundef %val, i64 noundef %val_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %critical.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %val_len.addr = alloca i64, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i32 %critical, i32* %critical.addr, align 4
  store i8* %val, i8** %val.addr, align 8
  store i64 %val_len, i64* %val_len.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %0, i32 0, i32 9
  %1 = load i8*, i8** %oid.addr, align 8
  %2 = load i64, i64* %oid_len.addr, align 8
  %3 = load i32, i32* %critical.addr, align 4
  %4 = load i8*, i8** %val.addr, align 8
  %5 = load i64, i64* %val_len.addr, align 8
  %call = call i32 @mbedtls_x509_set_extension(%struct.mbedtls_asn1_named_data** noundef %extensions, i8* noundef %1, i64 noundef %2, i32 noundef %3, i8* noundef %4, i64 noundef %5) #6
  ret i32 %call
}

declare dso_local i32 @mbedtls_x509_set_extension(%struct.mbedtls_asn1_named_data** noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_basic_constraints(%struct.mbedtls_x509write_cert* noundef %ctx, i32 noundef %is_ca, i32 noundef %max_pathlen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %is_ca.addr = alloca i32, align 4
  %max_pathlen.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [9 x i8], align 1
  %c = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i32 %is_ca, i32* %is_ca.addr, align 4
  store i32 %max_pathlen, i32* %max_pathlen.addr, align 4
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 9
  store i8* %add.ptr, i8** %c, align 8
  store i64 0, i64* %len, align 8
  %arraydecay1 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 9) #5
  %0 = load i32, i32* %is_ca.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %max_pathlen.addr, align 4
  %cmp = icmp sgt i32 %1, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -10240, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %is_ca.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end23

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %max_pathlen.addr, align 4
  %cmp4 = icmp sge i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then3
  br label %do.body

do.body:                                          ; preds = %if.then5
  %arraydecay6 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %4 = load i32, i32* %max_pathlen.addr, align 4
  %call7 = call i32 @mbedtls_asn1_write_int(i8** noundef %c, i8* noundef %arraydecay6, i32 noundef %4) #6
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %len, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end10
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then3
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  %arraydecay13 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call14 = call i32 @mbedtls_asn1_write_bool(i8** noundef %c, i8* noundef %arraydecay13, i32 noundef 1) #6
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %do.body12
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.else18:                                        ; preds = %do.body12
  %9 = load i32, i32* %ret, align 4
  %conv19 = sext i32 %9 to i64
  %10 = load i64, i64* %len, align 8
  %add20 = add i64 %10, %conv19
  store i64 %add20, i64* %len, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else18
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %if.end
  br label %do.body24

do.body24:                                        ; preds = %if.end23
  %arraydecay25 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %11 = load i64, i64* %len, align 8
  %call26 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %arraydecay25, i64 noundef %11) #6
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %do.body24
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.else30:                                        ; preds = %do.body24
  %13 = load i32, i32* %ret, align 4
  %conv31 = sext i32 %13 to i64
  %14 = load i64, i64* %len, align 8
  %add32 = add i64 %14, %conv31
  store i64 %add32, i64* %len, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else30
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %arraydecay36 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %call37 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %arraydecay36, i8 noundef zeroext 48) #6
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %do.body35
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else41:                                        ; preds = %do.body35
  %16 = load i32, i32* %ret, align 4
  %conv42 = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add43 = add i64 %17, %conv42
  store i64 %add43, i64* %len, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else41
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %18 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %19 = load i32, i32* %is_ca.addr, align 4
  %arraydecay46 = getelementptr inbounds [9 x i8], [9 x i8]* %buf, i64 0, i64 0
  %add.ptr47 = getelementptr inbounds i8, i8* %arraydecay46, i64 9
  %20 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %20
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr47, i64 %idx.neg
  %21 = load i64, i64* %len, align 8
  %call49 = call i32 @mbedtls_x509write_crt_set_extension(%struct.mbedtls_x509write_cert* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 noundef 3, i32 noundef %19, i8* noundef %add.ptr48, i64 noundef %21) #6
  store i32 %call49, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end45, %if.then40, %if.then29, %if.then17, %if.then9, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

declare dso_local i32 @mbedtls_asn1_write_int(i8** noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_bool(i8** noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_len(i8** noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8** noundef, i8* noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_subject_key_identifier(%struct.mbedtls_x509write_cert* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %call = call i32 @mbedtls_x509write_crt_set_key_identifier(%struct.mbedtls_x509write_cert* noundef %0, i32 noundef 0, i8 noundef zeroext 4) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_x509write_crt_set_key_identifier(%struct.mbedtls_x509write_cert* noundef %ctx, i32 noundef %is_ca, i8 noundef zeroext %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %is_ca.addr = alloca i32, align 4
  %tag.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %buf = alloca [2068 x i8], align 16
  %c = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i32 %is_ca, i32* %is_ca.addr, align 4
  store i8 %tag, i8* %tag.addr, align 1
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2068
  store i8* %add.ptr, i8** %c, align 8
  store i64 0, i64* %len, align 8
  %arraydecay1 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 2068) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %0 = load i32, i32* %is_ca.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %1 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer_key = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %1, i32 0, i32 3
  %2 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %3 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %subject_key = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %3, i32 0, i32 2
  %4 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %subject_key, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mbedtls_pk_context* [ %2, %cond.true ], [ %4, %cond.false ]
  %call3 = call i32 @mbedtls_pk_write_pubkey(i8** noundef %c, i8* noundef %arraydecay2, %struct.mbedtls_pk_context* noundef %cond) #6
  store i32 %call3, i32* %ret, align 4
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %cond.end
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, i64* %len, align 8
  %add = add i64 %7, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %add.ptr5 = getelementptr inbounds i8, i8* %arraydecay4, i64 2068
  %8 = load i64, i64* %len, align 8
  %idx.neg = sub i64 0, %8
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 %idx.neg
  %9 = load i64, i64* %len, align 8
  %arraydecay7 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %add.ptr8 = getelementptr inbounds i8, i8* %arraydecay7, i64 2068
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 -20
  %call10 = call i32 @mbedtls_sha1(i8* noundef %add.ptr6, i64 noundef %9, i8* noundef %add.ptr9) #6
  store i32 %call10, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.end
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %do.end
  %arraydecay15 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %add.ptr16 = getelementptr inbounds i8, i8* %arraydecay15, i64 2068
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 -20
  store i8* %add.ptr17, i8** %c, align 8
  store i64 20, i64* %len, align 8
  br label %do.body18

do.body18:                                        ; preds = %if.end14
  %arraydecay19 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %12 = load i64, i64* %len, align 8
  %call20 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %arraydecay19, i64 noundef %12) #6
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.body18
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %do.body18
  %14 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %14 to i64
  %15 = load i64, i64* %len, align 8
  %add26 = add i64 %15, %conv25
  store i64 %add26, i64* %len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else24
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %arraydecay30 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %16 = load i8, i8* %tag.addr, align 1
  %call31 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %arraydecay30, i8 noundef zeroext %16) #6
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %do.body29
  %17 = load i32, i32* %ret, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.else35:                                        ; preds = %do.body29
  %18 = load i32, i32* %ret, align 4
  %conv36 = sext i32 %18 to i64
  %19 = load i64, i64* %len, align 8
  %add37 = add i64 %19, %conv36
  store i64 %add37, i64* %len, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else35
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  %20 = load i32, i32* %is_ca.addr, align 4
  %tobool40 = icmp ne i32 %20, 0
  br i1 %tobool40, label %if.then41, label %if.end64

if.then41:                                        ; preds = %do.end39
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  %arraydecay43 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %21 = load i64, i64* %len, align 8
  %call44 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %arraydecay43, i64 noundef %21) #6
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %do.body42
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.else48:                                        ; preds = %do.body42
  %23 = load i32, i32* %ret, align 4
  %conv49 = sext i32 %23 to i64
  %24 = load i64, i64* %len, align 8
  %add50 = add i64 %24, %conv49
  store i64 %add50, i64* %len, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else48
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  br label %do.body53

do.body53:                                        ; preds = %do.end52
  %arraydecay54 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %call55 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %arraydecay54, i8 noundef zeroext 48) #6
  store i32 %call55, i32* %ret, align 4
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %do.body53
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

if.else59:                                        ; preds = %do.body53
  %26 = load i32, i32* %ret, align 4
  %conv60 = sext i32 %26 to i64
  %27 = load i64, i64* %len, align 8
  %add61 = add i64 %27, %conv60
  store i64 %add61, i64* %len, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else59
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %do.end39
  %28 = load i32, i32* %is_ca.addr, align 4
  %tobool65 = icmp ne i32 %28, 0
  br i1 %tobool65, label %if.then66, label %if.else72

if.then66:                                        ; preds = %if.end64
  %29 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %arraydecay67 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %add.ptr68 = getelementptr inbounds i8, i8* %arraydecay67, i64 2068
  %30 = load i64, i64* %len, align 8
  %idx.neg69 = sub i64 0, %30
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr68, i64 %idx.neg69
  %31 = load i64, i64* %len, align 8
  %call71 = call i32 @mbedtls_x509write_crt_set_extension(%struct.mbedtls_x509write_cert* noundef %29, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef 3, i32 noundef 0, i8* noundef %add.ptr70, i64 noundef %31) #6
  store i32 %call71, i32* %retval, align 4
  br label %return

if.else72:                                        ; preds = %if.end64
  %32 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %arraydecay73 = getelementptr inbounds [2068 x i8], [2068 x i8]* %buf, i64 0, i64 0
  %add.ptr74 = getelementptr inbounds i8, i8* %arraydecay73, i64 2068
  %33 = load i64, i64* %len, align 8
  %idx.neg75 = sub i64 0, %33
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr74, i64 %idx.neg75
  %34 = load i64, i64* %len, align 8
  %call77 = call i32 @mbedtls_x509write_crt_set_extension(%struct.mbedtls_x509write_cert* noundef %32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 noundef 3, i32 noundef 0, i8* noundef %add.ptr76, i64 noundef %34) #6
  store i32 %call77, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else72, %if.then66, %if.then58, %if.then47, %if.then34, %if.then23, %if.then13, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_authority_key_identifier(%struct.mbedtls_x509write_cert* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %call = call i32 @mbedtls_x509write_crt_set_key_identifier(%struct.mbedtls_x509write_cert* noundef %0, i32 noundef 1, i8 noundef zeroext -128) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_key_usage(%struct.mbedtls_x509write_cert* noundef %ctx, i32 noundef %key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %key_usage.addr = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  %ku = alloca [2 x i8], align 1
  %c = alloca i8*, align 8
  %ret = alloca i32, align 4
  %allowed_bits = alloca i32, align 4
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i32 %key_usage, i32* %key_usage.addr, align 4
  %0 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 5, i1 false)
  %1 = bitcast [2 x i8]* %ku to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 2, i1 false)
  store i32 -110, i32* %ret, align 4
  store i32 33023, i32* %allowed_bits, align 4
  %2 = load i32, i32* %key_usage.addr, align 4
  %and = and i32 %2, -33024
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -8320, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 5
  store i8* %add.ptr, i8** %c, align 8
  %3 = load i32, i32* %key_usage.addr, align 4
  %and1 = and i32 %3, 255
  %conv = trunc i32 %and1 to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %ku, i64 0, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %4 = load i32, i32* %key_usage.addr, align 4
  %shr = lshr i32 %4, 8
  %and2 = and i32 %shr, 255
  %conv3 = trunc i32 %and2 to i8
  %arrayidx4 = getelementptr inbounds [2 x i8], [2 x i8]* %ku, i64 0, i64 1
  store i8 %conv3, i8* %arrayidx4, align 1
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i8], [2 x i8]* %ku, i64 0, i64 0
  %call = call i32 @mbedtls_asn1_write_named_bitstring(i8** noundef %c, i8* noundef %arraydecay5, i8* noundef %arraydecay6, i64 noundef 9) #6
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp7 = icmp slt i32 %5, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %cmp10 = icmp slt i32 %7, 3
  br i1 %cmp10, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %8 = load i32, i32* %ret, align 4
  %cmp12 = icmp sgt i32 %8, 5
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %if.else
  store i32 -8576, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  %9 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %10 = load i8*, i8** %c, align 8
  %11 = load i32, i32* %ret, align 4
  %conv17 = sext i32 %11 to i64
  %call18 = call i32 @mbedtls_x509write_crt_set_extension(%struct.mbedtls_x509write_cert* noundef %9, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef 3, i32 noundef 1, i8* noundef %10, i64 noundef %conv17) #6
  store i32 %call18, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %12, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then21, %if.then14, %if.then9, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @mbedtls_asn1_write_named_bitstring(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_set_ns_cert_type(%struct.mbedtls_x509write_cert* noundef %ctx, i8 noundef zeroext %ns_cert_type) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %ns_cert_type.addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 1
  %c = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i8 %ns_cert_type, i8* %ns_cert_type.addr, align 1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 4
  store i8* %add.ptr, i8** %c, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_asn1_write_named_bitstring(i8** noundef %c, i8* noundef %arraydecay1, i8* noundef %ns_cert_type.addr, i64 noundef 8) #6
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %cmp2 = icmp sgt i32 %2, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %5 = load i8*, i8** %c, align 8
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %call3 = call i32 @mbedtls_x509write_crt_set_extension(%struct.mbedtls_x509write_cert* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 noundef 9, i32 noundef 0, i8* noundef %5, i64 noundef %conv) #6
  store i32 %call3, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_der(%struct.mbedtls_x509write_cert* noundef %ctx, i8* noundef %buf, i64 noundef %size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %sig_oid = alloca i8*, align 8
  %sig_oid_len = alloca i64, align 8
  %c = alloca i8*, align 8
  %c2 = alloca i8*, align 8
  %sig = alloca [1024 x i8], align 16
  %hash_length = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  %sub_len = alloca i64, align 8
  %pub_len = alloca i64, align 8
  %sig_and_oid_len = alloca i64, align 8
  %sig_len = alloca i64, align 8
  %len = alloca i64, align 8
  %pk_alg = alloca i32, align 4
  store %struct.mbedtls_x509write_cert* %ctx, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %sig_oid_len, align 8
  store i64 0, i64* %hash_length, align 8
  store i64 0, i64* %sub_len, align 8
  store i64 0, i64* %pub_len, align 8
  store i64 0, i64* %sig_and_oid_len, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %c, align 8
  %2 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer_key = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %2, i32 0, i32 3
  %3 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key, align 8
  %call = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %3, i32 noundef 1) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %pk_alg, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %4 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer_key1 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %4, i32 0, i32 3
  %5 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key1, align 8
  %call2 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %5, i32 noundef 4) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 4, i32* %pk_alg, align 4
  br label %if.end

if.else5:                                         ; preds = %if.else
  store i32 -8960, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* %pk_alg, align 4
  %7 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %md_alg = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %7, i32 0, i32 6
  %8 = load i32, i32* %md_alg, align 8
  %call7 = call i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef %6, i32 noundef %8, i8** noundef %sig_oid, i64* noundef %sig_oid_len) #6
  store i32 %call7, i32* %ret, align 4
  %cmp = icmp ne i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %10 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %10, i32 0, i32 0
  %11 = load i32, i32* %version, align 8
  %cmp10 = icmp eq i32 %11, 2
  br i1 %cmp10, label %if.then11, label %if.end57

if.then11:                                        ; preds = %if.end9
  br label %do.body

do.body:                                          ; preds = %if.then11
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %13, i32 0, i32 9
  %14 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %extensions, align 8
  %call12 = call i32 @mbedtls_x509_write_extensions(i8** noundef %c, i8* noundef %12, %struct.mbedtls_asn1_named_data* noundef %14) #6
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %do.body
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %do.body
  %16 = load i32, i32* %ret, align 4
  %conv = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add = add i64 %17, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else15
  br label %do.end

do.end:                                           ; preds = %if.end16
  br label %do.body17

do.body17:                                        ; preds = %do.end
  %18 = load i8*, i8** %buf.addr, align 8
  %19 = load i64, i64* %len, align 8
  %call18 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %18, i64 noundef %19) #6
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %do.body17
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.else22:                                        ; preds = %do.body17
  %21 = load i32, i32* %ret, align 4
  %conv23 = sext i32 %21 to i64
  %22 = load i64, i64* %len, align 8
  %add24 = add i64 %22, %conv23
  store i64 %add24, i64* %len, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else22
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %23 = load i8*, i8** %buf.addr, align 8
  %call28 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %23, i8 noundef zeroext 48) #6
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %do.body27
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

if.else32:                                        ; preds = %do.body27
  %25 = load i32, i32* %ret, align 4
  %conv33 = sext i32 %25 to i64
  %26 = load i64, i64* %len, align 8
  %add34 = add i64 %26, %conv33
  store i64 %add34, i64* %len, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else32
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  br label %do.body37

do.body37:                                        ; preds = %do.end36
  %27 = load i8*, i8** %buf.addr, align 8
  %28 = load i64, i64* %len, align 8
  %call38 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %27, i64 noundef %28) #6
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %do.body37
  %29 = load i32, i32* %ret, align 4
  store i32 %29, i32* %retval, align 4
  br label %return

if.else42:                                        ; preds = %do.body37
  %30 = load i32, i32* %ret, align 4
  %conv43 = sext i32 %30 to i64
  %31 = load i64, i64* %len, align 8
  %add44 = add i64 %31, %conv43
  store i64 %add44, i64* %len, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else42
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %32 = load i8*, i8** %buf.addr, align 8
  %call48 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %32, i8 noundef zeroext -93) #6
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %do.body47
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

if.else52:                                        ; preds = %do.body47
  %34 = load i32, i32* %ret, align 4
  %conv53 = sext i32 %34 to i64
  %35 = load i64, i64* %len, align 8
  %add54 = add i64 %35, %conv53
  store i64 %add54, i64* %len, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else52
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end9
  br label %do.body58

do.body58:                                        ; preds = %if.end57
  %36 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %subject_key = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %36, i32 0, i32 2
  %37 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %subject_key, align 8
  %38 = load i8*, i8** %buf.addr, align 8
  %39 = load i8*, i8** %c, align 8
  %40 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call59 = call i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef %37, i8* noundef %38, i64 noundef %sub.ptr.sub) #6
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %do.body58
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.else63:                                        ; preds = %do.body58
  %42 = load i32, i32* %ret, align 4
  %conv64 = sext i32 %42 to i64
  %43 = load i64, i64* %pub_len, align 8
  %add65 = add i64 %43, %conv64
  store i64 %add65, i64* %pub_len, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else63
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  %44 = load i64, i64* %pub_len, align 8
  %45 = load i8*, i8** %c, align 8
  %idx.neg = sub i64 0, %44
  %add.ptr68 = getelementptr inbounds i8, i8* %45, i64 %idx.neg
  store i8* %add.ptr68, i8** %c, align 8
  %46 = load i64, i64* %pub_len, align 8
  %47 = load i64, i64* %len, align 8
  %add69 = add i64 %47, %46
  store i64 %add69, i64* %len, align 8
  br label %do.body70

do.body70:                                        ; preds = %do.end67
  %48 = load i8*, i8** %buf.addr, align 8
  %49 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %49, i32 0, i32 4
  %50 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %subject, align 8
  %call71 = call i32 @mbedtls_x509_write_names(i8** noundef %c, i8* noundef %48, %struct.mbedtls_asn1_named_data* noundef %50) #6
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %do.body70
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval, align 4
  br label %return

if.else75:                                        ; preds = %do.body70
  %52 = load i32, i32* %ret, align 4
  %conv76 = sext i32 %52 to i64
  %53 = load i64, i64* %len, align 8
  %add77 = add i64 %53, %conv76
  store i64 %add77, i64* %len, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.else75
  br label %do.end79

do.end79:                                         ; preds = %if.end78
  store i64 0, i64* %sub_len, align 8
  br label %do.body80

do.body80:                                        ; preds = %do.end79
  %54 = load i8*, i8** %buf.addr, align 8
  %55 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %not_after = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %55, i32 0, i32 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %not_after, i64 0, i64 0
  %call81 = call i32 @x509_write_time(i8** noundef %c, i8* noundef %54, i8* noundef %arraydecay, i64 noundef 15) #6
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %do.body80
  %56 = load i32, i32* %ret, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

if.else85:                                        ; preds = %do.body80
  %57 = load i32, i32* %ret, align 4
  %conv86 = sext i32 %57 to i64
  %58 = load i64, i64* %sub_len, align 8
  %add87 = add i64 %58, %conv86
  store i64 %add87, i64* %sub_len, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.else85
  br label %do.end89

do.end89:                                         ; preds = %if.end88
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %59 = load i8*, i8** %buf.addr, align 8
  %60 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %not_before = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %60, i32 0, i32 7
  %arraydecay91 = getelementptr inbounds [16 x i8], [16 x i8]* %not_before, i64 0, i64 0
  %call92 = call i32 @x509_write_time(i8** noundef %c, i8* noundef %59, i8* noundef %arraydecay91, i64 noundef 15) #6
  store i32 %call92, i32* %ret, align 4
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %do.body90
  %61 = load i32, i32* %ret, align 4
  store i32 %61, i32* %retval, align 4
  br label %return

if.else96:                                        ; preds = %do.body90
  %62 = load i32, i32* %ret, align 4
  %conv97 = sext i32 %62 to i64
  %63 = load i64, i64* %sub_len, align 8
  %add98 = add i64 %63, %conv97
  store i64 %add98, i64* %sub_len, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.else96
  br label %do.end100

do.end100:                                        ; preds = %if.end99
  %64 = load i64, i64* %sub_len, align 8
  %65 = load i64, i64* %len, align 8
  %add101 = add i64 %65, %64
  store i64 %add101, i64* %len, align 8
  br label %do.body102

do.body102:                                       ; preds = %do.end100
  %66 = load i8*, i8** %buf.addr, align 8
  %67 = load i64, i64* %sub_len, align 8
  %call103 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %66, i64 noundef %67) #6
  store i32 %call103, i32* %ret, align 4
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %do.body102
  %68 = load i32, i32* %ret, align 4
  store i32 %68, i32* %retval, align 4
  br label %return

if.else107:                                       ; preds = %do.body102
  %69 = load i32, i32* %ret, align 4
  %conv108 = sext i32 %69 to i64
  %70 = load i64, i64* %len, align 8
  %add109 = add i64 %70, %conv108
  store i64 %add109, i64* %len, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.else107
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  br label %do.body112

do.body112:                                       ; preds = %do.end111
  %71 = load i8*, i8** %buf.addr, align 8
  %call113 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %71, i8 noundef zeroext 48) #6
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %do.body112
  %72 = load i32, i32* %ret, align 4
  store i32 %72, i32* %retval, align 4
  br label %return

if.else117:                                       ; preds = %do.body112
  %73 = load i32, i32* %ret, align 4
  %conv118 = sext i32 %73 to i64
  %74 = load i64, i64* %len, align 8
  %add119 = add i64 %74, %conv118
  store i64 %add119, i64* %len, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.else117
  br label %do.end121

do.end121:                                        ; preds = %if.end120
  br label %do.body122

do.body122:                                       ; preds = %do.end121
  %75 = load i8*, i8** %buf.addr, align 8
  %76 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %76, i32 0, i32 5
  %77 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %issuer, align 8
  %call123 = call i32 @mbedtls_x509_write_names(i8** noundef %c, i8* noundef %75, %struct.mbedtls_asn1_named_data* noundef %77) #6
  store i32 %call123, i32* %ret, align 4
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.else127

if.then126:                                       ; preds = %do.body122
  %78 = load i32, i32* %ret, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

if.else127:                                       ; preds = %do.body122
  %79 = load i32, i32* %ret, align 4
  %conv128 = sext i32 %79 to i64
  %80 = load i64, i64* %len, align 8
  %add129 = add i64 %80, %conv128
  store i64 %add129, i64* %len, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.else127
  br label %do.end131

do.end131:                                        ; preds = %if.end130
  br label %do.body132

do.body132:                                       ; preds = %do.end131
  %81 = load i8*, i8** %buf.addr, align 8
  %82 = load i8*, i8** %sig_oid, align 8
  %83 = load i8*, i8** %sig_oid, align 8
  %call133 = call i64 @strlen(i8* noundef %83) #7
  %call134 = call i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef %c, i8* noundef %81, i8* noundef %82, i64 noundef %call133, i64 noundef 0) #6
  store i32 %call134, i32* %ret, align 4
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.then137, label %if.else138

if.then137:                                       ; preds = %do.body132
  %84 = load i32, i32* %ret, align 4
  store i32 %84, i32* %retval, align 4
  br label %return

if.else138:                                       ; preds = %do.body132
  %85 = load i32, i32* %ret, align 4
  %conv139 = sext i32 %85 to i64
  %86 = load i64, i64* %len, align 8
  %add140 = add i64 %86, %conv139
  store i64 %add140, i64* %len, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.else138
  br label %do.end142

do.end142:                                        ; preds = %if.end141
  br label %do.body143

do.body143:                                       ; preds = %do.end142
  %87 = load i8*, i8** %buf.addr, align 8
  %88 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %88, i32 0, i32 1
  %call144 = call i32 @mbedtls_asn1_write_mpi(i8** noundef %c, i8* noundef %87, %struct.mbedtls_mpi* noundef %serial) #6
  store i32 %call144, i32* %ret, align 4
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %do.body143
  %89 = load i32, i32* %ret, align 4
  store i32 %89, i32* %retval, align 4
  br label %return

if.else148:                                       ; preds = %do.body143
  %90 = load i32, i32* %ret, align 4
  %conv149 = sext i32 %90 to i64
  %91 = load i64, i64* %len, align 8
  %add150 = add i64 %91, %conv149
  store i64 %add150, i64* %len, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.else148
  br label %do.end152

do.end152:                                        ; preds = %if.end151
  %92 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %version153 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %92, i32 0, i32 0
  %93 = load i32, i32* %version153, align 8
  %cmp154 = icmp ne i32 %93, 0
  br i1 %cmp154, label %if.then156, label %if.end189

if.then156:                                       ; preds = %do.end152
  store i64 0, i64* %sub_len, align 8
  br label %do.body157

do.body157:                                       ; preds = %if.then156
  %94 = load i8*, i8** %buf.addr, align 8
  %95 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %version158 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %95, i32 0, i32 0
  %96 = load i32, i32* %version158, align 8
  %call159 = call i32 @mbedtls_asn1_write_int(i8** noundef %c, i8* noundef %94, i32 noundef %96) #6
  store i32 %call159, i32* %ret, align 4
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then162, label %if.else163

if.then162:                                       ; preds = %do.body157
  %97 = load i32, i32* %ret, align 4
  store i32 %97, i32* %retval, align 4
  br label %return

if.else163:                                       ; preds = %do.body157
  %98 = load i32, i32* %ret, align 4
  %conv164 = sext i32 %98 to i64
  %99 = load i64, i64* %sub_len, align 8
  %add165 = add i64 %99, %conv164
  store i64 %add165, i64* %sub_len, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.else163
  br label %do.end167

do.end167:                                        ; preds = %if.end166
  %100 = load i64, i64* %sub_len, align 8
  %101 = load i64, i64* %len, align 8
  %add168 = add i64 %101, %100
  store i64 %add168, i64* %len, align 8
  br label %do.body169

do.body169:                                       ; preds = %do.end167
  %102 = load i8*, i8** %buf.addr, align 8
  %103 = load i64, i64* %sub_len, align 8
  %call170 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %102, i64 noundef %103) #6
  store i32 %call170, i32* %ret, align 4
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.then173, label %if.else174

if.then173:                                       ; preds = %do.body169
  %104 = load i32, i32* %ret, align 4
  store i32 %104, i32* %retval, align 4
  br label %return

if.else174:                                       ; preds = %do.body169
  %105 = load i32, i32* %ret, align 4
  %conv175 = sext i32 %105 to i64
  %106 = load i64, i64* %len, align 8
  %add176 = add i64 %106, %conv175
  store i64 %add176, i64* %len, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.else174
  br label %do.end178

do.end178:                                        ; preds = %if.end177
  br label %do.body179

do.body179:                                       ; preds = %do.end178
  %107 = load i8*, i8** %buf.addr, align 8
  %call180 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %107, i8 noundef zeroext -96) #6
  store i32 %call180, i32* %ret, align 4
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %do.body179
  %108 = load i32, i32* %ret, align 4
  store i32 %108, i32* %retval, align 4
  br label %return

if.else184:                                       ; preds = %do.body179
  %109 = load i32, i32* %ret, align 4
  %conv185 = sext i32 %109 to i64
  %110 = load i64, i64* %len, align 8
  %add186 = add i64 %110, %conv185
  store i64 %add186, i64* %len, align 8
  br label %if.end187

if.end187:                                        ; preds = %if.else184
  br label %do.end188

do.end188:                                        ; preds = %if.end187
  br label %if.end189

if.end189:                                        ; preds = %do.end188, %do.end152
  br label %do.body190

do.body190:                                       ; preds = %if.end189
  %111 = load i8*, i8** %buf.addr, align 8
  %112 = load i64, i64* %len, align 8
  %call191 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %111, i64 noundef %112) #6
  store i32 %call191, i32* %ret, align 4
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.else195

if.then194:                                       ; preds = %do.body190
  %113 = load i32, i32* %ret, align 4
  store i32 %113, i32* %retval, align 4
  br label %return

if.else195:                                       ; preds = %do.body190
  %114 = load i32, i32* %ret, align 4
  %conv196 = sext i32 %114 to i64
  %115 = load i64, i64* %len, align 8
  %add197 = add i64 %115, %conv196
  store i64 %add197, i64* %len, align 8
  br label %if.end198

if.end198:                                        ; preds = %if.else195
  br label %do.end199

do.end199:                                        ; preds = %if.end198
  br label %do.body200

do.body200:                                       ; preds = %do.end199
  %116 = load i8*, i8** %buf.addr, align 8
  %call201 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %116, i8 noundef zeroext 48) #6
  store i32 %call201, i32* %ret, align 4
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %if.then204, label %if.else205

if.then204:                                       ; preds = %do.body200
  %117 = load i32, i32* %ret, align 4
  store i32 %117, i32* %retval, align 4
  br label %return

if.else205:                                       ; preds = %do.body200
  %118 = load i32, i32* %ret, align 4
  %conv206 = sext i32 %118 to i64
  %119 = load i64, i64* %len, align 8
  %add207 = add i64 %119, %conv206
  store i64 %add207, i64* %len, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.else205
  br label %do.end209

do.end209:                                        ; preds = %if.end208
  %120 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %md_alg210 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %120, i32 0, i32 6
  %121 = load i32, i32* %md_alg210, align 8
  %call211 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %121) #6
  %122 = load i8*, i8** %c, align 8
  %123 = load i64, i64* %len, align 8
  %arraydecay212 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call213 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %call211, i8* noundef %122, i64 noundef %123, i8* noundef %arraydecay212) #6
  store i32 %call213, i32* %ret, align 4
  %cmp214 = icmp ne i32 %call213, 0
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %do.end209
  %124 = load i32, i32* %ret, align 4
  store i32 %124, i32* %retval, align 4
  br label %return

if.end217:                                        ; preds = %do.end209
  %125 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %issuer_key218 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %125, i32 0, i32 3
  %126 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %issuer_key218, align 8
  %127 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %ctx.addr, align 8
  %md_alg219 = getelementptr inbounds %struct.mbedtls_x509write_cert, %struct.mbedtls_x509write_cert* %127, i32 0, i32 6
  %128 = load i32, i32* %md_alg219, align 8
  %arraydecay220 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %129 = load i64, i64* %hash_length, align 8
  %arraydecay221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sig, i64 0, i64 0
  %130 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %131 = load i8*, i8** %p_rng.addr, align 8
  %call222 = call i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef %126, i32 noundef %128, i8* noundef %arraydecay220, i64 noundef %129, i8* noundef %arraydecay221, i64 noundef 1024, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %130, i8* noundef %131) #6
  store i32 %call222, i32* %ret, align 4
  %cmp223 = icmp ne i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.end217
  %132 = load i32, i32* %ret, align 4
  store i32 %132, i32* %retval, align 4
  br label %return

if.end226:                                        ; preds = %if.end217
  %133 = load i8*, i8** %buf.addr, align 8
  %134 = load i8*, i8** %c, align 8
  %135 = load i64, i64* %len, align 8
  %call227 = call i8* @memmove(i8* noundef %133, i8* noundef %134, i64 noundef %135) #5
  %136 = load i8*, i8** %buf.addr, align 8
  %137 = load i64, i64* %len, align 8
  %add.ptr228 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %add.ptr228, i8** %c, align 8
  %138 = load i8*, i8** %buf.addr, align 8
  %139 = load i64, i64* %size.addr, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %add.ptr229, i8** %c2, align 8
  br label %do.body230

do.body230:                                       ; preds = %if.end226
  %140 = load i8*, i8** %c, align 8
  %141 = load i8*, i8** %sig_oid, align 8
  %142 = load i64, i64* %sig_oid_len, align 8
  %arraydecay231 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sig, i64 0, i64 0
  %143 = load i64, i64* %sig_len, align 8
  %call232 = call i32 @mbedtls_x509_write_sig(i8** noundef %c2, i8* noundef %140, i8* noundef %141, i64 noundef %142, i8* noundef %arraydecay231, i64 noundef %143) #6
  store i32 %call232, i32* %ret, align 4
  %cmp233 = icmp slt i32 %call232, 0
  br i1 %cmp233, label %if.then235, label %if.else236

if.then235:                                       ; preds = %do.body230
  %144 = load i32, i32* %ret, align 4
  store i32 %144, i32* %retval, align 4
  br label %return

if.else236:                                       ; preds = %do.body230
  %145 = load i32, i32* %ret, align 4
  %conv237 = sext i32 %145 to i64
  %146 = load i64, i64* %sig_and_oid_len, align 8
  %add238 = add i64 %146, %conv237
  store i64 %add238, i64* %sig_and_oid_len, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.else236
  br label %do.end240

do.end240:                                        ; preds = %if.end239
  %147 = load i8*, i8** %c2, align 8
  %148 = load i64, i64* %len, align 8
  %idx.neg241 = sub i64 0, %148
  %add.ptr242 = getelementptr inbounds i8, i8* %147, i64 %idx.neg241
  store i8* %add.ptr242, i8** %c, align 8
  %149 = load i8*, i8** %c, align 8
  %150 = load i8*, i8** %buf.addr, align 8
  %151 = load i64, i64* %len, align 8
  %call243 = call i8* @memmove(i8* noundef %149, i8* noundef %150, i64 noundef %151) #5
  %152 = load i64, i64* %sig_and_oid_len, align 8
  %153 = load i64, i64* %len, align 8
  %add244 = add i64 %153, %152
  store i64 %add244, i64* %len, align 8
  br label %do.body245

do.body245:                                       ; preds = %do.end240
  %154 = load i8*, i8** %buf.addr, align 8
  %155 = load i64, i64* %len, align 8
  %call246 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %154, i64 noundef %155) #6
  store i32 %call246, i32* %ret, align 4
  %cmp247 = icmp slt i32 %call246, 0
  br i1 %cmp247, label %if.then249, label %if.else250

if.then249:                                       ; preds = %do.body245
  %156 = load i32, i32* %ret, align 4
  store i32 %156, i32* %retval, align 4
  br label %return

if.else250:                                       ; preds = %do.body245
  %157 = load i32, i32* %ret, align 4
  %conv251 = sext i32 %157 to i64
  %158 = load i64, i64* %len, align 8
  %add252 = add i64 %158, %conv251
  store i64 %add252, i64* %len, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.else250
  br label %do.end254

do.end254:                                        ; preds = %if.end253
  br label %do.body255

do.body255:                                       ; preds = %do.end254
  %159 = load i8*, i8** %buf.addr, align 8
  %call256 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %159, i8 noundef zeroext 48) #6
  store i32 %call256, i32* %ret, align 4
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.then259, label %if.else260

if.then259:                                       ; preds = %do.body255
  %160 = load i32, i32* %ret, align 4
  store i32 %160, i32* %retval, align 4
  br label %return

if.else260:                                       ; preds = %do.body255
  %161 = load i32, i32* %ret, align 4
  %conv261 = sext i32 %161 to i64
  %162 = load i64, i64* %len, align 8
  %add262 = add i64 %162, %conv261
  store i64 %add262, i64* %len, align 8
  br label %if.end263

if.end263:                                        ; preds = %if.else260
  br label %do.end264

do.end264:                                        ; preds = %if.end263
  %163 = load i64, i64* %len, align 8
  %conv265 = trunc i64 %163 to i32
  store i32 %conv265, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end264, %if.then259, %if.then249, %if.then235, %if.then225, %if.then216, %if.then204, %if.then194, %if.then183, %if.then173, %if.then162, %if.then147, %if.then137, %if.then126, %if.then116, %if.then106, %if.then95, %if.then84, %if.then74, %if.then62, %if.then51, %if.then41, %if.then31, %if.then21, %if.then14, %if.then8, %if.else5
  %164 = load i32, i32* %retval, align 4
  ret i32 %164
}

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef, i32 noundef, i8** noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_x509_write_extensions(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_x509_write_names(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_write_time(i8** noundef %p, i8* noundef %start, i8* noundef %t, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %t.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 50
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %t.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 50
  br i1 %cmp4, label %land.lhs.true, label %if.else39

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i8*, i8** %t.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 48
  br i1 %cmp8, label %land.lhs.true10, label %if.else39

land.lhs.true10:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %t.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %7 to i32
  %cmp13 = icmp slt i32 %conv12, 53
  br i1 %cmp13, label %if.then, label %if.else39

if.then:                                          ; preds = %land.lhs.true10, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %start.addr, align 8
  %10 = load i8*, i8** %t.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %11, 2
  %call = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %8, i8* noundef %9, i8* noundef %add.ptr, i64 noundef %sub) #6
  store i32 %call, i32* %ret, align 4
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.body
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %13 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %13 to i64
  %14 = load i64, i64* %len, align 8
  %add = add i64 %14, %conv18
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body19

do.body19:                                        ; preds = %do.end
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %start.addr, align 8
  %17 = load i64, i64* %len, align 8
  %call20 = call i32 @mbedtls_asn1_write_len(i8** noundef %15, i8* noundef %16, i64 noundef %17) #6
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.body19
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else24:                                        ; preds = %do.body19
  %19 = load i32, i32* %ret, align 4
  %conv25 = sext i32 %19 to i64
  %20 = load i64, i64* %len, align 8
  %add26 = add i64 %20, %conv25
  store i64 %add26, i64* %len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else24
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %start.addr, align 8
  %call30 = call i32 @mbedtls_asn1_write_tag(i8** noundef %21, i8* noundef %22, i8 noundef zeroext 23) #6
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %do.body29
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.else34:                                        ; preds = %do.body29
  %24 = load i32, i32* %ret, align 4
  %conv35 = sext i32 %24 to i64
  %25 = load i64, i64* %len, align 8
  %add36 = add i64 %25, %conv35
  store i64 %add36, i64* %len, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else34
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %if.end70

if.else39:                                        ; preds = %land.lhs.true10, %land.lhs.true, %lor.lhs.false
  br label %do.body40

do.body40:                                        ; preds = %if.else39
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %start.addr, align 8
  %28 = load i8*, i8** %t.addr, align 8
  %29 = load i64, i64* %size.addr, align 8
  %call41 = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %26, i8* noundef %27, i8* noundef %28, i64 noundef %29) #6
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %do.body40
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.else45:                                        ; preds = %do.body40
  %31 = load i32, i32* %ret, align 4
  %conv46 = sext i32 %31 to i64
  %32 = load i64, i64* %len, align 8
  %add47 = add i64 %32, %conv46
  store i64 %add47, i64* %len, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else45
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  br label %do.body50

do.body50:                                        ; preds = %do.end49
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %start.addr, align 8
  %35 = load i64, i64* %len, align 8
  %call51 = call i32 @mbedtls_asn1_write_len(i8** noundef %33, i8* noundef %34, i64 noundef %35) #6
  store i32 %call51, i32* %ret, align 4
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %do.body50
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.else55:                                        ; preds = %do.body50
  %37 = load i32, i32* %ret, align 4
  %conv56 = sext i32 %37 to i64
  %38 = load i64, i64* %len, align 8
  %add57 = add i64 %38, %conv56
  store i64 %add57, i64* %len, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else55
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %39 = load i8**, i8*** %p.addr, align 8
  %40 = load i8*, i8** %start.addr, align 8
  %call61 = call i32 @mbedtls_asn1_write_tag(i8** noundef %39, i8* noundef %40, i8 noundef zeroext 24) #6
  store i32 %call61, i32* %ret, align 4
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %do.body60
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.else65:                                        ; preds = %do.body60
  %42 = load i32, i32* %ret, align 4
  %conv66 = sext i32 %42 to i64
  %43 = load i64, i64* %len, align 8
  %add67 = add i64 %43, %conv66
  store i64 %add67, i64* %len, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else65
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %do.end38
  %44 = load i64, i64* %len, align 8
  %conv71 = trunc i64 %44 to i32
  store i32 %conv71, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end70, %if.then64, %if.then54, %if.then44, %if.then33, %if.then23, %if.then17
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

declare dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_mpi(i8** noundef, i8* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #2

declare dso_local i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_x509_write_sig(i8** noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_crt_pem(%struct.mbedtls_x509write_cert* noundef %crt, i8* noundef %buf, i64 noundef %size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca %struct.mbedtls_x509write_cert*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  store %struct.mbedtls_x509write_cert* %crt, %struct.mbedtls_x509write_cert** %crt.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_x509write_cert*, %struct.mbedtls_x509write_cert** %crt.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_x509write_crt_der(%struct.mbedtls_x509write_cert* noundef %0, i8* noundef %1, i64 noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i32, i32* %ret, align 4
  %idx.ext = sext i32 %8 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %9 = load i32, i32* %ret, align 4
  %conv = sext i32 %9 to i64
  %10 = load i8*, i8** %buf.addr, align 8
  %11 = load i64, i64* %size.addr, align 8
  %call2 = call i32 @mbedtls_pem_write_buffer(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef %add.ptr1, i64 noundef %conv, i8* noundef %10, i64 noundef %11, i64* noundef %olen) #6
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @mbedtls_pem_write_buffer(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_pk_write_pubkey(i8** noundef, i8* noundef, %struct.mbedtls_pk_context* noundef) #2

declare dso_local i32 @mbedtls_sha1(i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_asn1_write_raw_buffer(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
