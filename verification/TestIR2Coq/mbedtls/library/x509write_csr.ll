; ModuleID = 'x509write_csr.c'
source_filename = "x509write_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509write_csr = type { %struct.mbedtls_pk_context*, %struct.mbedtls_asn1_named_data*, i32, %struct.mbedtls_asn1_named_data* }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.mbedtls_md_info_t = type opaque

@.str = private unnamed_addr constant [4 x i8] c"U\1D\0F\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"`\86H\01\86\F8B\01\01\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"-----BEGIN CERTIFICATE REQUEST-----\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"-----END CERTIFICATE REQUEST-----\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"*\86H\86\F7\0D\01\09\0E\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_csr_init(%struct.mbedtls_x509write_csr* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_x509write_csr* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 32) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_csr_free(%struct.mbedtls_x509write_csr* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %0, i32 0, i32 1
  call void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %subject) #5
  %1 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %1, i32 0, i32 3
  call void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %extensions) #5
  %2 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %3 = bitcast %struct.mbedtls_x509write_csr* %2 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef 32) #5
  ret void
}

declare dso_local void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef) #2

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_csr_set_md_alg(%struct.mbedtls_x509write_csr* noundef %ctx, i32 noundef %md_alg) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %md_alg.addr = alloca i32, align 4
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  %1 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %md_alg1 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %1, i32 0, i32 2
  store i32 %0, i32* %md_alg1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509write_csr_set_key(%struct.mbedtls_x509write_csr* noundef %ctx, %struct.mbedtls_pk_context* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %key.addr = alloca %struct.mbedtls_pk_context*, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store %struct.mbedtls_pk_context* %key, %struct.mbedtls_pk_context** %key.addr, align 8
  %0 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key.addr, align 8
  %1 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %key1 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %1, i32 0, i32 0
  store %struct.mbedtls_pk_context* %0, %struct.mbedtls_pk_context** %key1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_set_subject_name(%struct.mbedtls_x509write_csr* noundef %ctx, i8* noundef %subject_name) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %subject_name.addr = alloca i8*, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8* %subject_name, i8** %subject_name.addr, align 8
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %0, i32 0, i32 1
  %1 = load i8*, i8** %subject_name.addr, align 8
  %call = call i32 @mbedtls_x509_string_to_names(%struct.mbedtls_asn1_named_data** noundef %subject, i8* noundef %1) #5
  ret i32 %call
}

declare dso_local i32 @mbedtls_x509_string_to_names(%struct.mbedtls_asn1_named_data** noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_set_extension(%struct.mbedtls_x509write_csr* noundef %ctx, i8* noundef %oid, i64 noundef %oid_len, i32 noundef %critical, i8* noundef %val, i64 noundef %val_len) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %critical.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %val_len.addr = alloca i64, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i32 %critical, i32* %critical.addr, align 4
  store i8* %val, i8** %val.addr, align 8
  store i64 %val_len, i64* %val_len.addr, align 8
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %0, i32 0, i32 3
  %1 = load i8*, i8** %oid.addr, align 8
  %2 = load i64, i64* %oid_len.addr, align 8
  %3 = load i32, i32* %critical.addr, align 4
  %4 = load i8*, i8** %val.addr, align 8
  %5 = load i64, i64* %val_len.addr, align 8
  %call = call i32 @mbedtls_x509_set_extension(%struct.mbedtls_asn1_named_data** noundef %extensions, i8* noundef %1, i64 noundef %2, i32 noundef %3, i8* noundef %4, i64 noundef %5) #5
  ret i32 %call
}

declare dso_local i32 @mbedtls_x509_set_extension(%struct.mbedtls_asn1_named_data** noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_set_key_usage(%struct.mbedtls_x509write_csr* noundef %ctx, i8 noundef zeroext %key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %key_usage.addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 1
  %c = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8 %key_usage, i8* %key_usage.addr, align 1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 4
  store i8* %add.ptr, i8** %c, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_asn1_write_named_bitstring(i8** noundef %c, i8* noundef %arraydecay1, i8* noundef %key_usage.addr, i64 noundef 8) #5
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
  %4 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %5 = load i8*, i8** %c, align 8
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %call3 = call i32 @mbedtls_x509write_csr_set_extension(%struct.mbedtls_x509write_csr* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 noundef 3, i32 noundef 0, i8* noundef %5, i64 noundef %conv) #5
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mbedtls_asn1_write_named_bitstring(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_set_ns_cert_type(%struct.mbedtls_x509write_csr* noundef %ctx, i8 noundef zeroext %ns_cert_type) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %ns_cert_type.addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 1
  %c = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8 %ns_cert_type, i8* %ns_cert_type.addr, align 1
  %0 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 4, i1 false)
  store i32 -110, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 4
  store i8* %add.ptr, i8** %c, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_asn1_write_named_bitstring(i8** noundef %c, i8* noundef %arraydecay1, i8* noundef %ns_cert_type.addr, i64 noundef 8) #5
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
  %4 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %5 = load i8*, i8** %c, align 8
  %6 = load i32, i32* %ret, align 4
  %conv = sext i32 %6 to i64
  %call3 = call i32 @mbedtls_x509write_csr_set_extension(%struct.mbedtls_x509write_csr* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 noundef 9, i32 noundef 0, i8* noundef %5, i64 noundef %conv) #5
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
define dso_local i32 @mbedtls_x509write_csr_der(%struct.mbedtls_x509write_csr* noundef %ctx, i8* noundef %buf, i64 noundef %size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %sig = alloca i8*, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 1024) #4
  store i8* %call, i8** %sig, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10368, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i8*, i8** %sig, align 8
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %5 = load i8*, i8** %p_rng.addr, align 8
  %call1 = call i32 @x509write_csr_der_internal(%struct.mbedtls_x509write_csr* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef 1024, i32 (i8*, i8*, i64)* noundef %4, i8* noundef %5) #5
  store i32 %call1, i32* %ret, align 4
  %6 = load i8*, i8** %sig, align 8
  call void @free(i8* noundef %6) #4
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509write_csr_der_internal(%struct.mbedtls_x509write_csr* noundef %ctx, i8* noundef %buf, i64 noundef %size, i8* noundef %sig, i64 noundef %sig_size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %sig_oid = alloca i8*, align 8
  %sig_oid_len = alloca i64, align 8
  %c = alloca i8*, align 8
  %c2 = alloca i8*, align 8
  %hash = alloca [64 x i8], align 16
  %pub_len = alloca i64, align 8
  %sig_and_oid_len = alloca i64, align 8
  %sig_len = alloca i64, align 8
  %len = alloca i64, align 8
  %pk_alg = alloca i32, align 4
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %sig_oid_len, align 8
  store i64 0, i64* %pub_len, align 8
  store i64 0, i64* %sig_and_oid_len, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %1
  store i8* %add.ptr, i8** %c, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %3, i32 0, i32 3
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %extensions, align 8
  %call = call i32 @mbedtls_x509_write_extensions(i8** noundef %c, i8* noundef %2, %struct.mbedtls_asn1_named_data* noundef %4) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

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
  %8 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then1, label %if.end72

if.then1:                                         ; preds = %do.end
  br label %do.body2

do.body2:                                         ; preds = %if.then1
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %len, align 8
  %call3 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %9, i64 noundef %10) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %do.body2
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.else7:                                         ; preds = %do.body2
  %12 = load i32, i32* %ret, align 4
  %conv8 = sext i32 %12 to i64
  %13 = load i64, i64* %len, align 8
  %add9 = add i64 %13, %conv8
  store i64 %add9, i64* %len, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else7
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %14 = load i8*, i8** %buf.addr, align 8
  %call13 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %14, i8 noundef zeroext 48) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %do.body12
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %do.body12
  %16 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add19 = add i64 %17, %conv18
  store i64 %add19, i64* %len, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else17
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %18 = load i8*, i8** %buf.addr, align 8
  %19 = load i64, i64* %len, align 8
  %call23 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %18, i64 noundef %19) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %do.body22
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %do.body22
  %21 = load i32, i32* %ret, align 4
  %conv28 = sext i32 %21 to i64
  %22 = load i64, i64* %len, align 8
  %add29 = add i64 %22, %conv28
  store i64 %add29, i64* %len, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %23 = load i8*, i8** %buf.addr, align 8
  %call33 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %23, i8 noundef zeroext 49) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %do.body32
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

if.else37:                                        ; preds = %do.body32
  %25 = load i32, i32* %ret, align 4
  %conv38 = sext i32 %25 to i64
  %26 = load i64, i64* %len, align 8
  %add39 = add i64 %26, %conv38
  store i64 %add39, i64* %len, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else37
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  br label %do.body42

do.body42:                                        ; preds = %do.end41
  %27 = load i8*, i8** %buf.addr, align 8
  %call43 = call i32 @mbedtls_asn1_write_oid(i8** noundef %c, i8* noundef %27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 noundef 9) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %do.body42
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.else47:                                        ; preds = %do.body42
  %29 = load i32, i32* %ret, align 4
  %conv48 = sext i32 %29 to i64
  %30 = load i64, i64* %len, align 8
  %add49 = add i64 %30, %conv48
  store i64 %add49, i64* %len, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else47
  br label %do.end51

do.end51:                                         ; preds = %if.end50
  br label %do.body52

do.body52:                                        ; preds = %do.end51
  %31 = load i8*, i8** %buf.addr, align 8
  %32 = load i64, i64* %len, align 8
  %call53 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %31, i64 noundef %32) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %do.body52
  %33 = load i32, i32* %ret, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

if.else57:                                        ; preds = %do.body52
  %34 = load i32, i32* %ret, align 4
  %conv58 = sext i32 %34 to i64
  %35 = load i64, i64* %len, align 8
  %add59 = add i64 %35, %conv58
  store i64 %add59, i64* %len, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else57
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %do.body62

do.body62:                                        ; preds = %do.end61
  %36 = load i8*, i8** %buf.addr, align 8
  %call63 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %36, i8 noundef zeroext 48) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %do.body62
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.else67:                                        ; preds = %do.body62
  %38 = load i32, i32* %ret, align 4
  %conv68 = sext i32 %38 to i64
  %39 = load i64, i64* %len, align 8
  %add69 = add i64 %39, %conv68
  store i64 %add69, i64* %len, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else67
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %do.end
  br label %do.body73

do.body73:                                        ; preds = %if.end72
  %40 = load i8*, i8** %buf.addr, align 8
  %41 = load i64, i64* %len, align 8
  %call74 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %40, i64 noundef %41) #5
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %do.body73
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

if.else78:                                        ; preds = %do.body73
  %43 = load i32, i32* %ret, align 4
  %conv79 = sext i32 %43 to i64
  %44 = load i64, i64* %len, align 8
  %add80 = add i64 %44, %conv79
  store i64 %add80, i64* %len, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.else78
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  %45 = load i8*, i8** %buf.addr, align 8
  %call84 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %45, i8 noundef zeroext -96) #5
  store i32 %call84, i32* %ret, align 4
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %do.body83
  %46 = load i32, i32* %ret, align 4
  store i32 %46, i32* %retval, align 4
  br label %return

if.else88:                                        ; preds = %do.body83
  %47 = load i32, i32* %ret, align 4
  %conv89 = sext i32 %47 to i64
  %48 = load i64, i64* %len, align 8
  %add90 = add i64 %48, %conv89
  store i64 %add90, i64* %len, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.else88
  br label %do.end92

do.end92:                                         ; preds = %if.end91
  br label %do.body93

do.body93:                                        ; preds = %do.end92
  %49 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %key = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %49, i32 0, i32 0
  %50 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key, align 8
  %51 = load i8*, i8** %buf.addr, align 8
  %52 = load i8*, i8** %c, align 8
  %53 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call94 = call i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef %50, i8* noundef %51, i64 noundef %sub.ptr.sub) #5
  store i32 %call94, i32* %ret, align 4
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %do.body93
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.else98:                                        ; preds = %do.body93
  %55 = load i32, i32* %ret, align 4
  %conv99 = sext i32 %55 to i64
  %56 = load i64, i64* %pub_len, align 8
  %add100 = add i64 %56, %conv99
  store i64 %add100, i64* %pub_len, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.else98
  br label %do.end102

do.end102:                                        ; preds = %if.end101
  %57 = load i64, i64* %pub_len, align 8
  %58 = load i8*, i8** %c, align 8
  %idx.neg = sub i64 0, %57
  %add.ptr103 = getelementptr inbounds i8, i8* %58, i64 %idx.neg
  store i8* %add.ptr103, i8** %c, align 8
  %59 = load i64, i64* %pub_len, align 8
  %60 = load i64, i64* %len, align 8
  %add104 = add i64 %60, %59
  store i64 %add104, i64* %len, align 8
  br label %do.body105

do.body105:                                       ; preds = %do.end102
  %61 = load i8*, i8** %buf.addr, align 8
  %62 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %62, i32 0, i32 1
  %63 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %subject, align 8
  %call106 = call i32 @mbedtls_x509_write_names(i8** noundef %c, i8* noundef %61, %struct.mbedtls_asn1_named_data* noundef %63) #5
  store i32 %call106, i32* %ret, align 4
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.else110

if.then109:                                       ; preds = %do.body105
  %64 = load i32, i32* %ret, align 4
  store i32 %64, i32* %retval, align 4
  br label %return

if.else110:                                       ; preds = %do.body105
  %65 = load i32, i32* %ret, align 4
  %conv111 = sext i32 %65 to i64
  %66 = load i64, i64* %len, align 8
  %add112 = add i64 %66, %conv111
  store i64 %add112, i64* %len, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else110
  br label %do.end114

do.end114:                                        ; preds = %if.end113
  br label %do.body115

do.body115:                                       ; preds = %do.end114
  %67 = load i8*, i8** %buf.addr, align 8
  %call116 = call i32 @mbedtls_asn1_write_int(i8** noundef %c, i8* noundef %67, i32 noundef 0) #5
  store i32 %call116, i32* %ret, align 4
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.else120

if.then119:                                       ; preds = %do.body115
  %68 = load i32, i32* %ret, align 4
  store i32 %68, i32* %retval, align 4
  br label %return

if.else120:                                       ; preds = %do.body115
  %69 = load i32, i32* %ret, align 4
  %conv121 = sext i32 %69 to i64
  %70 = load i64, i64* %len, align 8
  %add122 = add i64 %70, %conv121
  store i64 %add122, i64* %len, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.else120
  br label %do.end124

do.end124:                                        ; preds = %if.end123
  br label %do.body125

do.body125:                                       ; preds = %do.end124
  %71 = load i8*, i8** %buf.addr, align 8
  %72 = load i64, i64* %len, align 8
  %call126 = call i32 @mbedtls_asn1_write_len(i8** noundef %c, i8* noundef %71, i64 noundef %72) #5
  store i32 %call126, i32* %ret, align 4
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.else130

if.then129:                                       ; preds = %do.body125
  %73 = load i32, i32* %ret, align 4
  store i32 %73, i32* %retval, align 4
  br label %return

if.else130:                                       ; preds = %do.body125
  %74 = load i32, i32* %ret, align 4
  %conv131 = sext i32 %74 to i64
  %75 = load i64, i64* %len, align 8
  %add132 = add i64 %75, %conv131
  store i64 %add132, i64* %len, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.else130
  br label %do.end134

do.end134:                                        ; preds = %if.end133
  br label %do.body135

do.body135:                                       ; preds = %do.end134
  %76 = load i8*, i8** %buf.addr, align 8
  %call136 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c, i8* noundef %76, i8 noundef zeroext 48) #5
  store i32 %call136, i32* %ret, align 4
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.else140

if.then139:                                       ; preds = %do.body135
  %77 = load i32, i32* %ret, align 4
  store i32 %77, i32* %retval, align 4
  br label %return

if.else140:                                       ; preds = %do.body135
  %78 = load i32, i32* %ret, align 4
  %conv141 = sext i32 %78 to i64
  %79 = load i64, i64* %len, align 8
  %add142 = add i64 %79, %conv141
  store i64 %add142, i64* %len, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.else140
  br label %do.end144

do.end144:                                        ; preds = %if.end143
  %80 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %md_alg = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %80, i32 0, i32 2
  %81 = load i32, i32* %md_alg, align 8
  %call145 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %81) #5
  %82 = load i8*, i8** %c, align 8
  %83 = load i64, i64* %len, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call146 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %call145, i8* noundef %82, i64 noundef %83, i8* noundef %arraydecay) #5
  store i32 %call146, i32* %ret, align 4
  %84 = load i32, i32* %ret, align 4
  %cmp147 = icmp ne i32 %84, 0
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.end144
  %85 = load i32, i32* %ret, align 4
  store i32 %85, i32* %retval, align 4
  br label %return

if.end150:                                        ; preds = %do.end144
  %86 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %key151 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %86, i32 0, i32 0
  %87 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key151, align 8
  %88 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %md_alg152 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %88, i32 0, i32 2
  %89 = load i32, i32* %md_alg152, align 8
  %arraydecay153 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %90 = load i8*, i8** %sig.addr, align 8
  %91 = load i64, i64* %sig_size.addr, align 8
  %92 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %93 = load i8*, i8** %p_rng.addr, align 8
  %call154 = call i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef %87, i32 noundef %89, i8* noundef %arraydecay153, i64 noundef 0, i8* noundef %90, i64 noundef %91, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %92, i8* noundef %93) #5
  store i32 %call154, i32* %ret, align 4
  %cmp155 = icmp ne i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.end150
  %94 = load i32, i32* %ret, align 4
  store i32 %94, i32* %retval, align 4
  br label %return

if.end158:                                        ; preds = %if.end150
  %95 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %key159 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %95, i32 0, i32 0
  %96 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key159, align 8
  %call160 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %96, i32 noundef 1) #5
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then162, label %if.else163

if.then162:                                       ; preds = %if.end158
  store i32 1, i32* %pk_alg, align 4
  br label %if.end170

if.else163:                                       ; preds = %if.end158
  %97 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %key164 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %97, i32 0, i32 0
  %98 = load %struct.mbedtls_pk_context*, %struct.mbedtls_pk_context** %key164, align 8
  %call165 = call i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef %98, i32 noundef 4) #5
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.else163
  store i32 4, i32* %pk_alg, align 4
  br label %if.end169

if.else168:                                       ; preds = %if.else163
  store i32 -8960, i32* %retval, align 4
  br label %return

if.end169:                                        ; preds = %if.then167
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.then162
  %99 = load i32, i32* %pk_alg, align 4
  %100 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %md_alg171 = getelementptr inbounds %struct.mbedtls_x509write_csr, %struct.mbedtls_x509write_csr* %100, i32 0, i32 2
  %101 = load i32, i32* %md_alg171, align 8
  %call172 = call i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef %99, i32 noundef %101, i8** noundef %sig_oid, i64* noundef %sig_oid_len) #5
  store i32 %call172, i32* %ret, align 4
  %cmp173 = icmp ne i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end170
  %102 = load i32, i32* %ret, align 4
  store i32 %102, i32* %retval, align 4
  br label %return

if.end176:                                        ; preds = %if.end170
  %103 = load i8*, i8** %buf.addr, align 8
  %104 = load i8*, i8** %c, align 8
  %105 = load i64, i64* %len, align 8
  %call177 = call i8* @memmove(i8* noundef %103, i8* noundef %104, i64 noundef %105) #4
  %106 = load i8*, i8** %buf.addr, align 8
  %107 = load i64, i64* %size.addr, align 8
  %add.ptr178 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %add.ptr178, i8** %c2, align 8
  br label %do.body179

do.body179:                                       ; preds = %if.end176
  %108 = load i8*, i8** %buf.addr, align 8
  %109 = load i64, i64* %len, align 8
  %add.ptr180 = getelementptr inbounds i8, i8* %108, i64 %109
  %110 = load i8*, i8** %sig_oid, align 8
  %111 = load i64, i64* %sig_oid_len, align 8
  %112 = load i8*, i8** %sig.addr, align 8
  %113 = load i64, i64* %sig_len, align 8
  %call181 = call i32 @mbedtls_x509_write_sig(i8** noundef %c2, i8* noundef %add.ptr180, i8* noundef %110, i64 noundef %111, i8* noundef %112, i64 noundef %113) #5
  store i32 %call181, i32* %ret, align 4
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %if.then184, label %if.else185

if.then184:                                       ; preds = %do.body179
  %114 = load i32, i32* %ret, align 4
  store i32 %114, i32* %retval, align 4
  br label %return

if.else185:                                       ; preds = %do.body179
  %115 = load i32, i32* %ret, align 4
  %conv186 = sext i32 %115 to i64
  %116 = load i64, i64* %sig_and_oid_len, align 8
  %add187 = add i64 %116, %conv186
  store i64 %add187, i64* %sig_and_oid_len, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.else185
  br label %do.end189

do.end189:                                        ; preds = %if.end188
  %117 = load i64, i64* %len, align 8
  %118 = load i8*, i8** %c2, align 8
  %idx.neg190 = sub i64 0, %117
  %add.ptr191 = getelementptr inbounds i8, i8* %118, i64 %idx.neg190
  store i8* %add.ptr191, i8** %c2, align 8
  %119 = load i8*, i8** %c2, align 8
  %120 = load i8*, i8** %buf.addr, align 8
  %121 = load i64, i64* %len, align 8
  %call192 = call i8* @memmove(i8* noundef %119, i8* noundef %120, i64 noundef %121) #4
  %122 = load i64, i64* %sig_and_oid_len, align 8
  %123 = load i64, i64* %len, align 8
  %add193 = add i64 %123, %122
  store i64 %add193, i64* %len, align 8
  br label %do.body194

do.body194:                                       ; preds = %do.end189
  %124 = load i8*, i8** %buf.addr, align 8
  %125 = load i64, i64* %len, align 8
  %call195 = call i32 @mbedtls_asn1_write_len(i8** noundef %c2, i8* noundef %124, i64 noundef %125) #5
  store i32 %call195, i32* %ret, align 4
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %if.then198, label %if.else199

if.then198:                                       ; preds = %do.body194
  %126 = load i32, i32* %ret, align 4
  store i32 %126, i32* %retval, align 4
  br label %return

if.else199:                                       ; preds = %do.body194
  %127 = load i32, i32* %ret, align 4
  %conv200 = sext i32 %127 to i64
  %128 = load i64, i64* %len, align 8
  %add201 = add i64 %128, %conv200
  store i64 %add201, i64* %len, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.else199
  br label %do.end203

do.end203:                                        ; preds = %if.end202
  br label %do.body204

do.body204:                                       ; preds = %do.end203
  %129 = load i8*, i8** %buf.addr, align 8
  %call205 = call i32 @mbedtls_asn1_write_tag(i8** noundef %c2, i8* noundef %129, i8 noundef zeroext 48) #5
  store i32 %call205, i32* %ret, align 4
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.then208, label %if.else209

if.then208:                                       ; preds = %do.body204
  %130 = load i32, i32* %ret, align 4
  store i32 %130, i32* %retval, align 4
  br label %return

if.else209:                                       ; preds = %do.body204
  %131 = load i32, i32* %ret, align 4
  %conv210 = sext i32 %131 to i64
  %132 = load i64, i64* %len, align 8
  %add211 = add i64 %132, %conv210
  store i64 %add211, i64* %len, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.else209
  br label %do.end213

do.end213:                                        ; preds = %if.end212
  %133 = load i8*, i8** %buf.addr, align 8
  %134 = load i8*, i8** %c2, align 8
  %135 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast214 = ptrtoint i8* %134 to i64
  %sub.ptr.rhs.cast215 = ptrtoint i8* %135 to i64
  %sub.ptr.sub216 = sub i64 %sub.ptr.lhs.cast214, %sub.ptr.rhs.cast215
  %call217 = call i8* @memset(i8* noundef %133, i32 noundef 0, i64 noundef %sub.ptr.sub216) #4
  %136 = load i64, i64* %len, align 8
  %conv218 = trunc i64 %136 to i32
  store i32 %conv218, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end213, %if.then208, %if.then198, %if.then184, %if.then175, %if.else168, %if.then157, %if.then149, %if.then139, %if.then129, %if.then119, %if.then109, %if.then97, %if.then87, %if.then77, %if.then66, %if.then56, %if.then46, %if.then36, %if.then26, %if.then16, %if.then6, %if.then
  %137 = load i32, i32* %retval, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509write_csr_pem(%struct.mbedtls_x509write_csr* noundef %ctx, i8* noundef %buf, i64 noundef %size, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_x509write_csr*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  store %struct.mbedtls_x509write_csr* %ctx, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %olen, align 8
  %0 = load %struct.mbedtls_x509write_csr*, %struct.mbedtls_x509write_csr** %ctx.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_x509write_csr_der(%struct.mbedtls_x509write_csr* noundef %0, i8* noundef %1, i64 noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4) #5
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
  %call2 = call i32 @mbedtls_pem_write_buffer(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef %add.ptr1, i64 noundef %conv, i8* noundef %10, i64 noundef %11, i64* noundef %olen) #5
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

declare dso_local i32 @mbedtls_x509_write_extensions(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_asn1_write_len(i8** noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_asn1_write_tag(i8** noundef, i8* noundef, i8 noundef zeroext) #2

declare dso_local i32 @mbedtls_asn1_write_oid(i8** noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_pk_write_pubkey_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_x509_write_names(i8** noundef, i8* noundef, %struct.mbedtls_asn1_named_data* noundef) #2

declare dso_local i32 @mbedtls_asn1_write_int(i8** noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef) #2

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #2

declare dso_local i32 @mbedtls_pk_sign(%struct.mbedtls_pk_context* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_pk_can_do(%struct.mbedtls_pk_context* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef, i32 noundef, i8** noundef, i64* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_x509_write_sig(i8** noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
