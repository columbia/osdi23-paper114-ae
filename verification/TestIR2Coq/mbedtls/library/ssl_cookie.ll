; ModuleID = 'ssl_cookie.c'
source_filename = "ssl_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ssl_cookie_ctx = type { %struct.mbedtls_md_context_t, i64 }
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cookie_init(%struct.mbedtls_ssl_cookie_ctx* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ssl_cookie_ctx*, align 8
  store %struct.mbedtls_ssl_cookie_ctx* %ctx, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %0, i32 0, i32 0
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %hmac_ctx) #3
  %1 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %timeout = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %1, i32 0, i32 1
  store i64 60, i64* %timeout, align 8
  ret void
}

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cookie_set_timeout(%struct.mbedtls_ssl_cookie_ctx* noundef %ctx, i64 noundef %delay) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ssl_cookie_ctx*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.mbedtls_ssl_cookie_ctx* %ctx, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  store i64 %delay, i64* %delay.addr, align 8
  %0 = load i64, i64* %delay.addr, align 8
  %1 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %timeout = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %1, i32 0, i32 1
  store i64 %0, i64* %timeout, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_cookie_free(%struct.mbedtls_ssl_cookie_ctx* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_ssl_cookie_ctx*, align 8
  store %struct.mbedtls_ssl_cookie_ctx* %ctx, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %0 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %0, i32 0, i32 0
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %hmac_ctx) #3
  %1 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %2 = bitcast %struct.mbedtls_ssl_cookie_ctx* %1 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %2, i64 noundef 32) #3
  ret void
}

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cookie_setup(%struct.mbedtls_ssl_cookie_ctx* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_ssl_cookie_ctx*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  store %struct.mbedtls_ssl_cookie_ctx* %ctx, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %1 = load i8*, i8** %p_rng.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call = call i32 %0(i8* noundef %1, i8* noundef %arraydecay, i64 noundef 32) #3
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %3, i32 0, i32 0
  %call1 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef 3) #3
  %call2 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %hmac_ctx, %struct.mbedtls_md_info_t* noundef %call1, i32 noundef 1) #3
  store i32 %call2, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx.addr, align 8
  %hmac_ctx6 = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %6, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  %call8 = call i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef %hmac_ctx6, i8* noundef %arraydecay7, i64 noundef 32) #3
  store i32 %call8, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp9 = icmp ne i32 %7, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end5
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay12, i64 noundef 32) #3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_starts(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cookie_write(i8* noundef %p_ctx, i8** noundef %p, i8* noundef %end, i8* noundef %cli_id, i64 noundef %cli_id_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_ctx.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %cli_id.addr = alloca i8*, align 8
  %cli_id_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ssl_cookie_ctx*, align 8
  %t = alloca i64, align 8
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %cli_id, i8** %cli_id.addr, align 8
  store i64 %cli_id_len, i64* %cli_id_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %p_ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ssl_cookie_ctx*
  store %struct.mbedtls_ssl_cookie_ctx* %1, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %2 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_cookie_ctx* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %cli_id.addr, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %5, i8* noundef %6, i64 noundef 32) #3
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end4
  %call5 = call i64 @time(i64* noundef null) #4
  store i64 %call5, i64* %t, align 8
  %7 = load i64, i64* %t, align 8
  %shr = lshr i64 %7, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %10 = load i64, i64* %t, align 8
  %shr6 = lshr i64 %10, 16
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %conv8, i8* %arrayidx9, align 1
  %13 = load i64, i64* %t, align 8
  %shr10 = lshr i64 %13, 8
  %and11 = and i64 %shr10, 255
  %conv12 = trunc i64 %and11 to i8
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 %conv12, i8* %arrayidx13, align 1
  %16 = load i64, i64* %t, align 8
  %and14 = and i64 %16, 255
  %conv15 = trunc i64 %and14 to i8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %conv15, i8* %arrayidx16, align 1
  %19 = load i8**, i8*** %p.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %add.ptr, i8** %19, align 8
  %21 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %21, i32 0, i32 0
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %23, i64 -4
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %end.addr, align 8
  %26 = load i8*, i8** %cli_id.addr, align 8
  %27 = load i64, i64* %cli_id_len.addr, align 8
  %call18 = call i32 @ssl_cookie_hmac(%struct.mbedtls_md_context_t* noundef %hmac_ctx, i8* noundef %add.ptr17, i8** noundef %24, i8* noundef %25, i8* noundef %26, i64 noundef %27) #3
  store i32 %call18, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %cur, i8* noundef %end, i64 noundef %need) #0 {
entry:
  %cur.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %need.addr = alloca i64, align 8
  store i8* %cur, i8** %cur.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64 %need, i64* %need.addr, align 8
  %0 = load i8*, i8** %cur.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ugt i8* %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i64, i64* %need.addr, align 8
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8*, i8** %cur.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp ugt i64 %2, %sub.ptr.sub
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cookie_hmac(%struct.mbedtls_md_context_t* noundef %hmac_ctx, i8* noundef %time, i8** noundef %p, i8* noundef %end, i8* noundef %cli_id, i64 noundef %cli_id_len) #0 {
entry:
  %retval = alloca i32, align 4
  %hmac_ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %time.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %cli_id.addr = alloca i8*, align 8
  %cli_id_len.addr = alloca i64, align 8
  %hmac_out = alloca [32 x i8], align 16
  store %struct.mbedtls_md_context_t* %hmac_ctx, %struct.mbedtls_md_context_t** %hmac_ctx.addr, align 8
  store i8* %time, i8** %time.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8* %cli_id, i8** %cli_id.addr, align 8
  store i64 %cli_id_len, i64* %cli_id_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_ssl_chk_buf_ptr(i8* noundef %1, i8* noundef %2, i64 noundef 28) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -27136, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %hmac_ctx.addr, align 8
  %call1 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %3) #3
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %hmac_ctx.addr, align 8
  %5 = load i8*, i8** %time.addr, align 8
  %call3 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %4, i8* noundef %5, i64 noundef 4) #3
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then11, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %hmac_ctx.addr, align 8
  %7 = load i8*, i8** %cli_id.addr, align 8
  %8 = load i64, i64* %cli_id_len.addr, align 8
  %call6 = call i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef %6, i8* noundef %7, i64 noundef %8) #3
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %9 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %hmac_ctx.addr, align 8
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %hmac_out, i64 0, i64 0
  %call9 = call i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef %9, i8* noundef %arraydecay) #3
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %do.end
  store i32 -27648, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %hmac_out, i64 0, i64 0
  %call14 = call i8* @memcpy(i8* noundef %11, i8* noundef %arraydecay13, i64 noundef 28) #4
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 28
  store i8* %add.ptr, i8** %12, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cookie_check(i8* noundef %p_ctx, i8* noundef %cookie, i64 noundef %cookie_len, i8* noundef %cli_id, i64 noundef %cli_id_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_ctx.addr = alloca i8*, align 8
  %cookie.addr = alloca i8*, align 8
  %cookie_len.addr = alloca i64, align 8
  %cli_id.addr = alloca i8*, align 8
  %cli_id_len.addr = alloca i64, align 8
  %ref_hmac = alloca [28 x i8], align 16
  %p = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ssl_cookie_ctx*, align 8
  %cur_time = alloca i64, align 8
  %cookie_time = alloca i64, align 8
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  store i8* %cookie, i8** %cookie.addr, align 8
  store i64 %cookie_len, i64* %cookie_len.addr, align 8
  store i8* %cli_id, i8** %cli_id.addr, align 8
  store i64 %cli_id_len, i64* %cli_id_len.addr, align 8
  %arraydecay = getelementptr inbounds [28 x i8], [28 x i8]* %ref_hmac, i64 0, i64 0
  store i8* %arraydecay, i8** %p, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %p_ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ssl_cookie_ctx*
  store %struct.mbedtls_ssl_cookie_ctx* %1, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %2 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %cmp = icmp eq %struct.mbedtls_ssl_cookie_ctx* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %cli_id.addr, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28928, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i64, i64* %cookie_len.addr, align 8
  %cmp2 = icmp ne i64 %4, 32
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %5, i32 0, i32 0
  %6 = load i8*, i8** %cookie.addr, align 8
  %7 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 28
  %8 = load i8*, i8** %cli_id.addr, align 8
  %9 = load i64, i64* %cli_id_len.addr, align 8
  %call = call i32 @ssl_cookie_hmac(%struct.mbedtls_md_context_t* noundef %hmac_ctx, i8* noundef %6, i8** noundef %p, i8* noundef %add.ptr, i8* noundef %8, i64 noundef %9) #3
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 -1, i32* %ret, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %10 = load i32, i32* %ret, align 4
  %cmp8 = icmp ne i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  br label %exit

if.end10:                                         ; preds = %if.end7
  %11 = load i8*, i8** %cookie.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 4
  %arraydecay12 = getelementptr inbounds [28 x i8], [28 x i8]* %ref_hmac, i64 0, i64 0
  %call13 = call i32 @mbedtls_ct_memcmp(i8* noundef %add.ptr11, i8* noundef %arraydecay12, i64 noundef 28) #3
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  store i32 -1, i32* %ret, align 4
  br label %exit

if.end16:                                         ; preds = %if.end10
  %call17 = call i64 @time(i64* noundef null) #4
  store i64 %call17, i64* %cur_time, align 8
  %12 = load i8*, i8** %cookie.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i64
  %shl = shl i64 %conv, 24
  %14 = load i8*, i8** %cookie.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i64
  %shl20 = shl i64 %conv19, 16
  %or = or i64 %shl, %shl20
  %16 = load i8*, i8** %cookie.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i64
  %shl23 = shl i64 %conv22, 8
  %or24 = or i64 %or, %shl23
  %18 = load i8*, i8** %cookie.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %19 to i64
  %or27 = or i64 %or24, %conv26
  store i64 %or27, i64* %cookie_time, align 8
  %20 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %timeout = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %20, i32 0, i32 1
  %21 = load i64, i64* %timeout, align 8
  %cmp28 = icmp ne i64 %21, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end16
  %22 = load i64, i64* %cur_time, align 8
  %23 = load i64, i64* %cookie_time, align 8
  %sub = sub i64 %22, %23
  %24 = load %struct.mbedtls_ssl_cookie_ctx*, %struct.mbedtls_ssl_cookie_ctx** %ctx, align 8
  %timeout30 = getelementptr inbounds %struct.mbedtls_ssl_cookie_ctx, %struct.mbedtls_ssl_cookie_ctx* %24, i32 0, i32 1
  %25 = load i64, i64* %timeout30, align 8
  %cmp31 = icmp ugt i64 %sub, %25
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %ret, align 4
  br label %exit

if.end34:                                         ; preds = %land.lhs.true, %if.end16
  br label %exit

exit:                                             ; preds = %if.end34, %if.then33, %if.then15, %if.then9
  %arraydecay35 = getelementptr inbounds [28 x i8], [28 x i8]* %ref_hmac, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay35, i64 noundef 28) #3
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_hmac_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

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
