; ModuleID = 'ssl_cache.c'
source_filename = "ssl_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_cache_context = type { %struct.mbedtls_ssl_cache_entry*, i32, i32 }
%struct.mbedtls_ssl_cache_entry = type { i64, [32 x i8], i64, i8*, i64, %struct.mbedtls_ssl_cache_entry* }
%struct.mbedtls_ssl_session = type { i8, i8, i32, i64, i32, i32, i64, [32 x i8], [48 x i8], %struct.mbedtls_x509_crt*, i32, i8*, i64, i32, i32 }
%struct.mbedtls_x509_crt = type { i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, i32, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data, %struct.mbedtls_x509_time, %struct.mbedtls_x509_time, %struct.mbedtls_asn1_buf, %struct.mbedtls_pk_context, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence, i32, i32, i32, i32, %struct.mbedtls_asn1_sequence, i8, %struct.mbedtls_asn1_buf, i32, i32, i8*, %struct.mbedtls_x509_crt* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_x509_time = type { i32, i32, i32, i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_pk_info_t = type opaque
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cache_init(%struct.mbedtls_ssl_cache_context* noundef %cache) #0 {
entry:
  %cache.addr = alloca %struct.mbedtls_ssl_cache_context*, align 8
  store %struct.mbedtls_ssl_cache_context* %cache, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %0 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %1 = bitcast %struct.mbedtls_ssl_cache_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 16) #4
  %2 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %timeout = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %2, i32 0, i32 1
  store i32 86400, i32* %timeout, align 8
  %3 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %max_entries = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %3, i32 0, i32 2
  store i32 50, i32* %max_entries, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cache_get(i8* noundef %data, i8* noundef %session_id, i64 noundef %session_id_len, %struct.mbedtls_ssl_session* noundef %session) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %session_id.addr = alloca i8*, align 8
  %session_id_len.addr = alloca i64, align 8
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %ret = alloca i32, align 4
  %cache = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %entry1 = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %session_id, i8** %session_id.addr, align 8
  store i64 %session_id_len, i64* %session_id_len.addr, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i32 1, i32* %ret, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ssl_cache_context*
  store %struct.mbedtls_ssl_cache_context* %1, %struct.mbedtls_ssl_cache_context** %cache, align 8
  %2 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache, align 8
  %3 = load i8*, i8** %session_id.addr, align 8
  %4 = load i64, i64* %session_id_len.addr, align 8
  %call = call i32 @ssl_cache_find_entry(%struct.mbedtls_ssl_cache_context* noundef %2, i8* noundef %3, i64 noundef %4, %struct.mbedtls_ssl_cache_entry** noundef %entry1) #5
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %7 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %entry1, align 8
  %session2 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %7, i32 0, i32 3
  %8 = load i8*, i8** %session2, align 8
  %9 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %entry1, align 8
  %session_len = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %9, i32 0, i32 4
  %10 = load i64, i64* %session_len, align 8
  %call3 = call i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef %6, i8* noundef %8, i64 noundef %10) #5
  store i32 %call3, i32* %ret, align 4
  %11 = load i32, i32* %ret, align 4
  %cmp4 = icmp ne i32 %11, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %exit

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cache_find_entry(%struct.mbedtls_ssl_cache_context* noundef %cache, i8* noundef %session_id, i64 noundef %session_id_len, %struct.mbedtls_ssl_cache_entry** noundef %dst) #0 {
entry:
  %cache.addr = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %session_id.addr = alloca i8*, align 8
  %session_id_len.addr = alloca i64, align 8
  %dst.addr = alloca %struct.mbedtls_ssl_cache_entry**, align 8
  %ret = alloca i32, align 4
  %t = alloca i64, align 8
  %cur = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  store %struct.mbedtls_ssl_cache_context* %cache, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  store i8* %session_id, i8** %session_id.addr, align 8
  store i64 %session_id_len, i64* %session_id_len.addr, align 8
  store %struct.mbedtls_ssl_cache_entry** %dst, %struct.mbedtls_ssl_cache_entry*** %dst.addr, align 8
  store i32 1, i32* %ret, align 4
  %call = call i64 @time(i64* noundef null) #4
  store i64 %call, i64* %t, align 8
  %0 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %chain = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %chain, align 8
  store %struct.mbedtls_ssl_cache_entry* %1, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_cache_entry* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %timeout = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %3, i32 0, i32 1
  %4 = load i32, i32* %timeout, align 8
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i64, i64* %t, align 8
  %6 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %timestamp = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %6, i32 0, i32 0
  %7 = load i64, i64* %timestamp, align 8
  %sub = sub nsw i64 %5, %7
  %conv = trunc i64 %sub to i32
  %8 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %timeout2 = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %8, i32 0, i32 1
  %9 = load i32, i32* %timeout2, align 8
  %cmp3 = icmp sgt i32 %conv, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %10 = load i64, i64* %session_id_len.addr, align 8
  %11 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id_len5 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %11, i32 0, i32 2
  %12 = load i64, i64* %session_id_len5, align 8
  %cmp6 = icmp ne i64 %10, %12
  br i1 %cmp6, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i8*, i8** %session_id.addr, align 8
  %14 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id8 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %14, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %session_id8, i64 0, i64 0
  %15 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id_len9 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %15, i32 0, i32 2
  %16 = load i64, i64* %session_id_len9, align 8
  %call10 = call i32 @memcmp(i8* noundef %13, i8* noundef %arraydecay, i64 noundef %16) #6
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  br label %for.end

for.inc:                                          ; preds = %if.then13, %if.then
  %17 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %17, i32 0, i32 5
  %18 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %next, align 8
  store %struct.mbedtls_ssl_cache_entry* %18, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.end14, %for.cond
  %19 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %cmp15 = icmp ne %struct.mbedtls_ssl_cache_entry* %19, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.end
  %20 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %21 = load %struct.mbedtls_ssl_cache_entry**, %struct.mbedtls_ssl_cache_entry*** %dst.addr, align 8
  store %struct.mbedtls_ssl_cache_entry* %20, %struct.mbedtls_ssl_cache_entry** %21, align 8
  store i32 0, i32* %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end
  %22 = load i32, i32* %ret, align 4
  ret i32 %22
}

declare dso_local i32 @mbedtls_ssl_session_load(%struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cache_set(i8* noundef %data, i8* noundef %session_id, i64 noundef %session_id_len, %struct.mbedtls_ssl_session* noundef %session) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %session_id.addr = alloca i8*, align 8
  %session_id_len.addr = alloca i64, align 8
  %session.addr = alloca %struct.mbedtls_ssl_session*, align 8
  %ret = alloca i32, align 4
  %cache = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %cur = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  %session_serialized_len = alloca i64, align 8
  %session_serialized = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %session_id, i8** %session_id.addr, align 8
  store i64 %session_id_len, i64* %session_id_len.addr, align 8
  store %struct.mbedtls_ssl_session* %session, %struct.mbedtls_ssl_session** %session.addr, align 8
  store i32 1, i32* %ret, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ssl_cache_context*
  store %struct.mbedtls_ssl_cache_context* %1, %struct.mbedtls_ssl_cache_context** %cache, align 8
  store i8* null, i8** %session_serialized, align 8
  %2 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache, align 8
  %3 = load i8*, i8** %session_id.addr, align 8
  %4 = load i64, i64* %session_id_len.addr, align 8
  %call = call i32 @ssl_cache_pick_writing_slot(%struct.mbedtls_ssl_cache_context* noundef %2, i8* noundef %3, i64 noundef %4, %struct.mbedtls_ssl_cache_entry** noundef %cur) #5
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %call1 = call i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef %6, i8* noundef null, i64 noundef 0, i64* noundef %session_serialized_len) #5
  store i32 %call1, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %7, -27136
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %ret, align 4
  br label %exit

if.end4:                                          ; preds = %if.end
  %8 = load i64, i64* %session_serialized_len, align 8
  %call5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %8) #4
  store i8* %call5, i8** %session_serialized, align 8
  %9 = load i8*, i8** %session_serialized, align 8
  %cmp6 = icmp eq i8* %9, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -32512, i32* %ret, align 4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %10 = load %struct.mbedtls_ssl_session*, %struct.mbedtls_ssl_session** %session.addr, align 8
  %11 = load i8*, i8** %session_serialized, align 8
  %12 = load i64, i64* %session_serialized_len, align 8
  %call9 = call i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef %10, i8* noundef %11, i64 noundef %12, i64* noundef %session_serialized_len) #5
  store i32 %call9, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %13, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %exit

if.end12:                                         ; preds = %if.end8
  %14 = load i64, i64* %session_id_len.addr, align 8
  %cmp13 = icmp ugt i64 %14, 32
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i32 1, i32* %ret, align 4
  br label %exit

if.end15:                                         ; preds = %if.end12
  %15 = load i64, i64* %session_id_len.addr, align 8
  %16 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id_len16 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %16, i32 0, i32 2
  store i64 %15, i64* %session_id_len16, align 8
  %17 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id17 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %session_id17, i64 0, i64 0
  %18 = load i8*, i8** %session_id.addr, align 8
  %19 = load i64, i64* %session_id_len.addr, align 8
  %call18 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %18, i64 noundef %19) #4
  %20 = load i8*, i8** %session_serialized, align 8
  %21 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session19 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %21, i32 0, i32 3
  store i8* %20, i8** %session19, align 8
  %22 = load i64, i64* %session_serialized_len, align 8
  %23 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_len = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %23, i32 0, i32 4
  store i64 %22, i64* %session_len, align 8
  store i8* null, i8** %session_serialized, align 8
  store i32 0, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end15, %if.then14, %if.then11, %if.then7, %if.then3, %if.then
  %24 = load i8*, i8** %session_serialized, align 8
  %cmp20 = icmp ne i8* %24, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %exit
  %25 = load i8*, i8** %session_serialized, align 8
  %26 = load i64, i64* %session_serialized_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %25, i64 noundef %26) #5
  %27 = load i8*, i8** %session_serialized, align 8
  call void @free(i8* noundef %27) #4
  store i8* null, i8** %session_serialized, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %exit
  %28 = load i32, i32* %ret, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cache_pick_writing_slot(%struct.mbedtls_ssl_cache_context* noundef %cache, i8* noundef %session_id, i64 noundef %session_id_len, %struct.mbedtls_ssl_cache_entry** noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %cache.addr = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %session_id.addr = alloca i8*, align 8
  %session_id_len.addr = alloca i64, align 8
  %dst.addr = alloca %struct.mbedtls_ssl_cache_entry**, align 8
  %t = alloca i64, align 8
  %oldest = alloca i64, align 8
  %old = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  %count = alloca i32, align 4
  %cur = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  %last = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  store %struct.mbedtls_ssl_cache_context* %cache, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  store i8* %session_id, i8** %session_id.addr, align 8
  store i64 %session_id_len, i64* %session_id_len.addr, align 8
  store %struct.mbedtls_ssl_cache_entry** %dst, %struct.mbedtls_ssl_cache_entry*** %dst.addr, align 8
  %call = call i64 @time(i64* noundef null) #4
  store i64 %call, i64* %t, align 8
  store i64 0, i64* %oldest, align 8
  store %struct.mbedtls_ssl_cache_entry* null, %struct.mbedtls_ssl_cache_entry** %old, align 8
  store i32 0, i32* %count, align 4
  store %struct.mbedtls_ssl_cache_entry* null, %struct.mbedtls_ssl_cache_entry** %last, align 8
  %0 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %chain = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %chain, align 8
  store %struct.mbedtls_ssl_cache_entry* %1, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_cache_entry* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %count, align 4
  %4 = load i64, i64* %session_id_len.addr, align 8
  %5 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id_len1 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %5, i32 0, i32 2
  %6 = load i64, i64* %session_id_len1, align 8
  %cmp2 = icmp eq i64 %4, %6
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8*, i8** %session_id.addr, align 8
  %8 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id3 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %session_id3, i64 0, i64 0
  %9 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id_len4 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %9, i32 0, i32 2
  %10 = load i64, i64* %session_id_len4, align 8
  %call5 = call i32 @memcmp(i8* noundef %7, i8* noundef %arraydecay, i64 noundef %10) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %found

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  store %struct.mbedtls_ssl_cache_entry* %11, %struct.mbedtls_ssl_cache_entry** %last, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %12, i32 0, i32 5
  %13 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %next, align 8
  store %struct.mbedtls_ssl_cache_entry* %13, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %chain7 = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %chain7, align 8
  store %struct.mbedtls_ssl_cache_entry* %15, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.end
  %16 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %cmp9 = icmp ne %struct.mbedtls_ssl_cache_entry* %16, null
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %17 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %timeout = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %17, i32 0, i32 1
  %18 = load i32, i32* %timeout, align 8
  %cmp11 = icmp ne i32 %18, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.end17

land.lhs.true12:                                  ; preds = %for.body10
  %19 = load i64, i64* %t, align 8
  %20 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %timestamp = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %20, i32 0, i32 0
  %21 = load i64, i64* %timestamp, align 8
  %sub = sub nsw i64 %19, %21
  %conv = trunc i64 %sub to i32
  %22 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %timeout13 = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %22, i32 0, i32 1
  %23 = load i32, i32* %timeout13, align 8
  %cmp14 = icmp sgt i32 %conv, %23
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true12
  br label %found

if.end17:                                         ; preds = %land.lhs.true12, %for.body10
  %24 = load i64, i64* %oldest, align 8
  %cmp18 = icmp eq i64 %24, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %25 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %timestamp20 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %25, i32 0, i32 0
  %26 = load i64, i64* %timestamp20, align 8
  %27 = load i64, i64* %oldest, align 8
  %cmp21 = icmp slt i64 %26, %27
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false, %if.end17
  %28 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %timestamp24 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %28, i32 0, i32 0
  %29 = load i64, i64* %timestamp24, align 8
  store i64 %29, i64* %oldest, align 8
  %30 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  store %struct.mbedtls_ssl_cache_entry* %30, %struct.mbedtls_ssl_cache_entry** %old, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %31 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %next27 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %31, i32 0, i32 5
  %32 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %next27, align 8
  store %struct.mbedtls_ssl_cache_entry* %32, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %for.cond8, !llvm.loop !7

for.end28:                                        ; preds = %for.cond8
  %33 = load i32, i32* %count, align 4
  %34 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %max_entries = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %34, i32 0, i32 2
  %35 = load i32, i32* %max_entries, align 4
  %cmp29 = icmp slt i32 %33, %35
  br i1 %cmp29, label %if.then31, label %if.end43

if.then31:                                        ; preds = %for.end28
  %call32 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 72) #4
  %36 = bitcast i8* %call32 to %struct.mbedtls_ssl_cache_entry*
  store %struct.mbedtls_ssl_cache_entry* %36, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %37 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %cmp33 = icmp eq %struct.mbedtls_ssl_cache_entry* %37, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then31
  store i32 1, i32* %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then31
  %38 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %last, align 8
  %cmp37 = icmp eq %struct.mbedtls_ssl_cache_entry* %38, null
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end36
  %39 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %40 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %chain40 = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %40, i32 0, i32 0
  store %struct.mbedtls_ssl_cache_entry* %39, %struct.mbedtls_ssl_cache_entry** %chain40, align 8
  br label %if.end42

if.else:                                          ; preds = %if.end36
  %41 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %42 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %last, align 8
  %next41 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %42, i32 0, i32 5
  store %struct.mbedtls_ssl_cache_entry* %41, %struct.mbedtls_ssl_cache_entry** %next41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then39
  br label %found

if.end43:                                         ; preds = %for.end28
  %43 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %old, align 8
  %cmp44 = icmp eq %struct.mbedtls_ssl_cache_entry* %43, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  store i32 1, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end43
  %44 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %old, align 8
  store %struct.mbedtls_ssl_cache_entry* %44, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %found

found:                                            ; preds = %if.end47, %if.end42, %if.then16, %if.then
  %45 = load i64, i64* %t, align 8
  %46 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %timestamp48 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %46, i32 0, i32 0
  store i64 %45, i64* %timestamp48, align 8
  %47 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %47, i32 0, i32 3
  %48 = load i8*, i8** %session, align 8
  %cmp49 = icmp ne i8* %48, null
  br i1 %cmp49, label %if.then51, label %if.end58

if.then51:                                        ; preds = %found
  %49 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session52 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %49, i32 0, i32 3
  %50 = load i8*, i8** %session52, align 8
  call void @free(i8* noundef %50) #4
  %51 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session53 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %51, i32 0, i32 3
  store i8* null, i8** %session53, align 8
  %52 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_len = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %52, i32 0, i32 4
  store i64 0, i64* %session_len, align 8
  %53 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id54 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %53, i32 0, i32 1
  %arraydecay55 = getelementptr inbounds [32 x i8], [32 x i8]* %session_id54, i64 0, i64 0
  %call56 = call i8* @memset(i8* noundef %arraydecay55, i32 noundef 0, i64 noundef 32) #4
  %54 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %session_id_len57 = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %54, i32 0, i32 2
  store i64 0, i64* %session_id_len57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %found
  %55 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %56 = load %struct.mbedtls_ssl_cache_entry**, %struct.mbedtls_ssl_cache_entry*** %dst.addr, align 8
  store %struct.mbedtls_ssl_cache_entry* %55, %struct.mbedtls_ssl_cache_entry** %56, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then46, %if.then35
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

declare dso_local i32 @mbedtls_ssl_session_save(%struct.mbedtls_ssl_session* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cache_set_timeout(%struct.mbedtls_ssl_cache_context* noundef %cache, i32 noundef %timeout) #0 {
entry:
  %cache.addr = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %timeout.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_cache_context* %cache, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  store i32 %timeout, i32* %timeout.addr, align 4
  %0 = load i32, i32* %timeout.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %timeout.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %timeout.addr, align 4
  %2 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %timeout1 = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %2, i32 0, i32 1
  store i32 %1, i32* %timeout1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cache_set_max_entries(%struct.mbedtls_ssl_cache_context* noundef %cache, i32 noundef %max) #0 {
entry:
  %cache.addr = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %max.addr = alloca i32, align 4
  store %struct.mbedtls_ssl_cache_context* %cache, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %max.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %max.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %max.addr, align 4
  %2 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %max_entries = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %2, i32 0, i32 2
  store i32 %1, i32* %max_entries, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cache_free(%struct.mbedtls_ssl_cache_context* noundef %cache) #0 {
entry:
  %cache.addr = alloca %struct.mbedtls_ssl_cache_context*, align 8
  %cur = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  %prv = alloca %struct.mbedtls_ssl_cache_entry*, align 8
  store %struct.mbedtls_ssl_cache_context* %cache, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %0 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %chain = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %chain, align 8
  store %struct.mbedtls_ssl_cache_entry* %1, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_ssl_cache_entry* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  store %struct.mbedtls_ssl_cache_entry* %3, %struct.mbedtls_ssl_cache_entry** %prv, align 8
  %4 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %4, i32 0, i32 5
  %5 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %next, align 8
  store %struct.mbedtls_ssl_cache_entry* %5, %struct.mbedtls_ssl_cache_entry** %cur, align 8
  %6 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %prv, align 8
  %session = getelementptr inbounds %struct.mbedtls_ssl_cache_entry, %struct.mbedtls_ssl_cache_entry* %6, i32 0, i32 3
  %7 = load i8*, i8** %session, align 8
  call void @free(i8* noundef %7) #4
  %8 = load %struct.mbedtls_ssl_cache_entry*, %struct.mbedtls_ssl_cache_entry** %prv, align 8
  %9 = bitcast %struct.mbedtls_ssl_cache_entry* %8 to i8*
  call void @free(i8* noundef %9) #4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %10 = load %struct.mbedtls_ssl_cache_context*, %struct.mbedtls_ssl_cache_context** %cache.addr, align 8
  %chain1 = getelementptr inbounds %struct.mbedtls_ssl_cache_context, %struct.mbedtls_ssl_cache_context* %10, i32 0, i32 0
  store %struct.mbedtls_ssl_cache_entry* null, %struct.mbedtls_ssl_cache_entry** %chain1, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

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
