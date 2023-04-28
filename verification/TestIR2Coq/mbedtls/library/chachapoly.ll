; ModuleID = 'chachapoly.c'
source_filename = "chachapoly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_chachapoly_context = type { %struct.mbedtls_chacha20_context, %struct.mbedtls_poly1305_context, i64, i64, i32, i32 }
%struct.mbedtls_chacha20_context = type { [16 x i32], [64 x i8], i64 }
%struct.mbedtls_poly1305_context = type { [4 x i32], [4 x i32], [5 x i32], [16 x i8], i64 }

@.str = private unnamed_addr constant [29 x i8] c"  ChaCha20-Poly1305 test %u \00", align 1
@test_key = internal constant [1 x [32 x i8]] [[32 x i8] c"\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F"], align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"setkey() error code: %i\0A\00", align 1
@test_input_len = internal constant [1 x i64] [i64 114], align 8
@test_nonce = internal constant [1 x [12 x i8]] [[12 x i8] c"\07\00\00\00@ABCDEFG"], align 1
@test_aad = internal constant [1 x [12 x i8]] [[12 x i8] c"PQRS\C0\C1\C2\C3\C4\C5\C6\C7"], align 1
@test_aad_len = internal constant [1 x i64] [i64 12], align 8
@test_input = internal constant [1 x [114 x i8]] [[114 x i8] c"Ladies and Gentlemen of the class of '99: If I could offer you only one tip for the future, sunscreen would be it."], align 16
@.str.2 = private unnamed_addr constant [32 x i8] c"crypt_and_tag() error code: %i\0A\00", align 1
@test_output = internal constant [1 x [114 x i8]] [[114 x i8] c"\D3\1A\8D4d\8E`\DB{\86\AF\BCS\EF~\C2\A4\AD\EDQ)n\08\FE\A9\E2\B5\A76\EEb\D6=\BE\A4^\8C\A9g\12\82\FA\FBi\DA\92r\8B\1Aq\DE\0A\9E\06\0B)\05\D6\A5\B6~\CD;6\92\DD\BD\7F-w\8B\8C\98\03\AE\E3(\09\1BX\FA\B3$\E4\FA\D6u\94U\85\80\8BH1\D7\BC?\F4\DE\F0\8EKz\9D\E5v\D2e\86\CE\C6Ka\16"], align 16
@.str.3 = private unnamed_addr constant [24 x i8] c"failure (wrong output)\0A\00", align 1
@test_mac = internal constant [1 x [16 x i8]] [[16 x i8] c"\1A\E1\0BYO\09\E2j~\90.\CB\D0`\06\91"], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"failure (wrong MAC)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0
  call void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx) #4
  %1 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %1, i32 0, i32 1
  call void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx) #4
  %2 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %2, i32 0, i32 2
  store i64 0, i64* %aad_len, align 8
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %3, i32 0, i32 3
  store i64 0, i64* %ciphertext_len, align 8
  %4 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %4, i32 0, i32 4
  store i32 0, i32* %state, align 8
  %5 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %5, i32 0, i32 5
  store i32 0, i32* %mode, align 4
  ret void
}

declare dso_local void @mbedtls_chacha20_init(%struct.mbedtls_chacha20_context* noundef) #1

declare dso_local void @mbedtls_poly1305_init(%struct.mbedtls_poly1305_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_chachapoly_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %1, i32 0, i32 0
  call void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx) #4
  %2 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %2, i32 0, i32 1
  call void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx) #4
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %3, i32 0, i32 2
  store i64 0, i64* %aad_len, align 8
  %4 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %4, i32 0, i32 3
  store i64 0, i64* %ciphertext_len, align 8
  %5 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %5, i32 0, i32 4
  store i32 0, i32* %state, align 8
  %6 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %6, i32 0, i32 5
  store i32 0, i32* %mode, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_chacha20_free(%struct.mbedtls_chacha20_context* noundef) #1

declare dso_local void @mbedtls_poly1305_free(%struct.mbedtls_poly1305_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef %ctx, i8* noundef %key) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %key.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx, i8* noundef %1) #4
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

declare dso_local i32 @mbedtls_chacha20_setkey(%struct.mbedtls_chacha20_context* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noundef %ctx, i8* noundef %nonce, i32 noundef %mode) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %nonce.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %poly1305_key = alloca [64 x i8], align 16
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 0
  %1 = load i8*, i8** %nonce.addr, align 8
  %call = call i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx, i8* noundef %1, i32 noundef 0) #4
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  br label %cleanup

if.end:                                           ; preds = %do.end2
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %poly1305_key, i64 0, i64 0
  %call3 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 64) #5
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx4 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %3, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [64 x i8], [64 x i8]* %poly1305_key, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [64 x i8], [64 x i8]* %poly1305_key, i64 0, i64 0
  %call7 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx4, i64 noundef 64, i8* noundef %arraydecay5, i8* noundef %arraydecay6) #4
  store i32 %call7, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp8 = icmp ne i32 %4, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %5, i32 0, i32 1
  %arraydecay11 = getelementptr inbounds [64 x i8], [64 x i8]* %poly1305_key, i64 0, i64 0
  %call12 = call i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx, i8* noundef %arraydecay11) #4
  store i32 %call12, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp13 = icmp eq i32 %6, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %7 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %7, i32 0, i32 2
  store i64 0, i64* %aad_len, align 8
  %8 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %8, i32 0, i32 3
  store i64 0, i64* %ciphertext_len, align 8
  %9 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %9, i32 0, i32 4
  store i32 1, i32* %state, align 8
  %10 = load i32, i32* %mode.addr, align 4
  %11 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %mode15 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %11, i32 0, i32 5
  store i32 %10, i32* %mode15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then9, %if.then
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %poly1305_key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay17, i64 noundef 64) #4
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

declare dso_local i32 @mbedtls_chacha20_starts(%struct.mbedtls_chacha20_context* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef, i64 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_poly1305_starts(%struct.mbedtls_poly1305_context* noundef, i8* noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noundef %ctx, i8* noundef %aad, i64 noundef %aad_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %aad.addr = alloca i8*, align 8
  %aad_len.addr = alloca i64, align 8
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i8* %aad, i8** %aad.addr, align 8
  store i64 %aad_len, i64* %aad_len.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4
  %1 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -84, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load i64, i64* %aad_len.addr, align 8
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %3, i32 0, i32 2
  %4 = load i64, i64* %aad_len3, align 8
  %add = add i64 %4, %2
  store i64 %add, i64* %aad_len3, align 8
  %5 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %5, i32 0, i32 1
  %6 = load i8*, i8** %aad.addr, align 8
  %7 = load i64, i64* %aad_len.addr, align 8
  %call = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx, i8* noundef %6, i64 noundef %7) #4
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare dso_local i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noundef %ctx, i64 noundef %len, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
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
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4
  %1 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end4
  %2 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state5 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %2, i32 0, i32 4
  %3 = load i32, i32* %state5, align 8
  %cmp6 = icmp ne i32 %3, 2
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -84, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %do.end4
  %4 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state7 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %4, i32 0, i32 4
  %5 = load i32, i32* %state7, align 8
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state10 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %6, i32 0, i32 4
  store i32 2, i32* %state10, align 8
  %7 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %call = call i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* noundef %7) #4
  store i32 %call, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %8, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %10 = load i64, i64* %len.addr, align 8
  %11 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %11, i32 0, i32 3
  %12 = load i64, i64* %ciphertext_len, align 8
  %add = add i64 %12, %10
  store i64 %add, i64* %ciphertext_len, align 8
  %13 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %mode = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %13, i32 0, i32 5
  %14 = load i32, i32* %mode, align 4
  %cmp15 = icmp eq i32 %14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %15 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %15, i32 0, i32 0
  %16 = load i64, i64* %len.addr, align 8
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i8*, i8** %output.addr, align 8
  %call17 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx, i64 noundef %16, i8* noundef %17, i8* noundef %18) #4
  store i32 %call17, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %19, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then16
  %21 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %21, i32 0, i32 1
  %22 = load i8*, i8** %output.addr, align 8
  %23 = load i64, i64* %len.addr, align 8
  %call21 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx, i8* noundef %22, i64 noundef %23) #4
  store i32 %call21, i32* %ret, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp22 = icmp ne i32 %24, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end20
  br label %if.end35

if.else:                                          ; preds = %if.end14
  %26 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx25 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %26, i32 0, i32 1
  %27 = load i8*, i8** %input.addr, align 8
  %28 = load i64, i64* %len.addr, align 8
  %call26 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx25, i8* noundef %27, i64 noundef %28) #4
  store i32 %call26, i32* %ret, align 4
  %29 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %29, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.else
  %31 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %chacha20_ctx30 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %31, i32 0, i32 0
  %32 = load i64, i64* %len.addr, align 8
  %33 = load i8*, i8** %input.addr, align 8
  %34 = load i8*, i8** %output.addr, align 8
  %call31 = call i32 @mbedtls_chacha20_update(%struct.mbedtls_chacha20_context* noundef %chacha20_ctx30, i64 noundef %32, i8* noundef %33, i8* noundef %34) #4
  store i32 %call31, i32* %ret, align 4
  %35 = load i32, i32* %ret, align 4
  %cmp32 = icmp ne i32 %35, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end24
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then33, %if.then28, %if.then23, %if.then19, %if.then12, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %partial_block_len = alloca i32, align 4
  %zeroes = alloca [15 x i8], align 1
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 2
  %1 = load i64, i64* %aad_len, align 8
  %rem = urem i64 %1, 16
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %partial_block_len, align 4
  %2 = load i32, i32* %partial_block_len, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %zeroes, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 15) #5
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %3, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [15 x i8], [15 x i8]* %zeroes, i64 0, i64 0
  %4 = load i32, i32* %partial_block_len, align 4
  %sub = sub i32 16, %4
  %conv3 = zext i32 %sub to i64
  %call4 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx, i8* noundef %arraydecay2, i64 noundef %conv3) #4
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef %ctx, i8* noundef %mac) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %mac.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len_block = alloca [16 x i8], align 16
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 4
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -84, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state3 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %2, i32 0, i32 4
  %3 = load i32, i32* %state3, align 8
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %4 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %call = call i32 @chachapoly_pad_aad(%struct.mbedtls_chachapoly_context* noundef %4) #4
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then5
  br label %if.end17

if.else:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state9 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %7, i32 0, i32 4
  %8 = load i32, i32* %state9, align 8
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.else
  %9 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %call12 = call i32 @chachapoly_pad_ciphertext(%struct.mbedtls_chachapoly_context* noundef %9) #4
  store i32 %call12, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp13 = icmp ne i32 %10, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end8
  %12 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %state18 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %12, i32 0, i32 4
  store i32 3, i32* %state18, align 8
  %13 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %13, i32 0, i32 2
  %14 = load i64, i64* %aad_len, align 8
  %and = and i64 %14, 255
  %conv = trunc i64 %and to i8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 0
  store i8 %conv, i8* %arrayidx, align 16
  %15 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len19 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %15, i32 0, i32 2
  %16 = load i64, i64* %aad_len19, align 8
  %shr = lshr i64 %16, 8
  %and20 = and i64 %shr, 255
  %conv21 = trunc i64 %and20 to i8
  %arrayidx22 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 1
  store i8 %conv21, i8* %arrayidx22, align 1
  %17 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len23 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %17, i32 0, i32 2
  %18 = load i64, i64* %aad_len23, align 8
  %shr24 = lshr i64 %18, 16
  %and25 = and i64 %shr24, 255
  %conv26 = trunc i64 %and25 to i8
  %arrayidx27 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 2
  store i8 %conv26, i8* %arrayidx27, align 2
  %19 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len28 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %19, i32 0, i32 2
  %20 = load i64, i64* %aad_len28, align 8
  %shr29 = lshr i64 %20, 24
  %and30 = and i64 %shr29, 255
  %conv31 = trunc i64 %and30 to i8
  %arrayidx32 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 3
  store i8 %conv31, i8* %arrayidx32, align 1
  %21 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len33 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %21, i32 0, i32 2
  %22 = load i64, i64* %aad_len33, align 8
  %shr34 = lshr i64 %22, 32
  %and35 = and i64 %shr34, 255
  %conv36 = trunc i64 %and35 to i8
  %arrayidx37 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 4
  store i8 %conv36, i8* %arrayidx37, align 4
  %23 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len38 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %23, i32 0, i32 2
  %24 = load i64, i64* %aad_len38, align 8
  %shr39 = lshr i64 %24, 40
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %arrayidx42 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 5
  store i8 %conv41, i8* %arrayidx42, align 1
  %25 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len43 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %25, i32 0, i32 2
  %26 = load i64, i64* %aad_len43, align 8
  %shr44 = lshr i64 %26, 48
  %and45 = and i64 %shr44, 255
  %conv46 = trunc i64 %and45 to i8
  %arrayidx47 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 6
  store i8 %conv46, i8* %arrayidx47, align 2
  %27 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %aad_len48 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %27, i32 0, i32 2
  %28 = load i64, i64* %aad_len48, align 8
  %shr49 = lshr i64 %28, 56
  %and50 = and i64 %shr49, 255
  %conv51 = trunc i64 %and50 to i8
  %arrayidx52 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 7
  store i8 %conv51, i8* %arrayidx52, align 1
  %29 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %29, i32 0, i32 3
  %30 = load i64, i64* %ciphertext_len, align 8
  %and53 = and i64 %30, 255
  %conv54 = trunc i64 %and53 to i8
  %arrayidx55 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 8
  store i8 %conv54, i8* %arrayidx55, align 8
  %31 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len56 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %31, i32 0, i32 3
  %32 = load i64, i64* %ciphertext_len56, align 8
  %shr57 = lshr i64 %32, 8
  %and58 = and i64 %shr57, 255
  %conv59 = trunc i64 %and58 to i8
  %arrayidx60 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 9
  store i8 %conv59, i8* %arrayidx60, align 1
  %33 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len61 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %33, i32 0, i32 3
  %34 = load i64, i64* %ciphertext_len61, align 8
  %shr62 = lshr i64 %34, 16
  %and63 = and i64 %shr62, 255
  %conv64 = trunc i64 %and63 to i8
  %arrayidx65 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 10
  store i8 %conv64, i8* %arrayidx65, align 2
  %35 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len66 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %35, i32 0, i32 3
  %36 = load i64, i64* %ciphertext_len66, align 8
  %shr67 = lshr i64 %36, 24
  %and68 = and i64 %shr67, 255
  %conv69 = trunc i64 %and68 to i8
  %arrayidx70 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 11
  store i8 %conv69, i8* %arrayidx70, align 1
  %37 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len71 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %37, i32 0, i32 3
  %38 = load i64, i64* %ciphertext_len71, align 8
  %shr72 = lshr i64 %38, 32
  %and73 = and i64 %shr72, 255
  %conv74 = trunc i64 %and73 to i8
  %arrayidx75 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 12
  store i8 %conv74, i8* %arrayidx75, align 4
  %39 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len76 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %39, i32 0, i32 3
  %40 = load i64, i64* %ciphertext_len76, align 8
  %shr77 = lshr i64 %40, 40
  %and78 = and i64 %shr77, 255
  %conv79 = trunc i64 %and78 to i8
  %arrayidx80 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 13
  store i8 %conv79, i8* %arrayidx80, align 1
  %41 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len81 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %41, i32 0, i32 3
  %42 = load i64, i64* %ciphertext_len81, align 8
  %shr82 = lshr i64 %42, 48
  %and83 = and i64 %shr82, 255
  %conv84 = trunc i64 %and83 to i8
  %arrayidx85 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 14
  store i8 %conv84, i8* %arrayidx85, align 2
  %43 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len86 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %43, i32 0, i32 3
  %44 = load i64, i64* %ciphertext_len86, align 8
  %shr87 = lshr i64 %44, 56
  %and88 = and i64 %shr87, 255
  %conv89 = trunc i64 %and88 to i8
  %arrayidx90 = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 15
  store i8 %conv89, i8* %arrayidx90, align 1
  %45 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %45, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %len_block, i64 0, i64 0
  %call91 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx, i8* noundef %arraydecay, i64 noundef 16) #4
  store i32 %call91, i32* %ret, align 4
  %46 = load i32, i32* %ret, align 4
  %cmp92 = icmp ne i32 %46, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end17
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval, align 4
  br label %return

if.end95:                                         ; preds = %if.end17
  %48 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx96 = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %48, i32 0, i32 1
  %49 = load i8*, i8** %mac.addr, align 8
  %call97 = call i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx96, i8* noundef %49) #4
  store i32 %call97, i32* %ret, align 4
  %50 = load i32, i32* %ret, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end95, %if.then94, %if.then14, %if.then7, %if.then
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_pad_ciphertext(%struct.mbedtls_chachapoly_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %partial_block_len = alloca i32, align 4
  %zeroes = alloca [15 x i8], align 1
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %ciphertext_len = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %0, i32 0, i32 3
  %1 = load i64, i64* %ciphertext_len, align 8
  %rem = urem i64 %1, 16
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %partial_block_len, align 4
  %2 = load i32, i32* %partial_block_len, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %zeroes, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 15) #5
  %3 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %poly1305_ctx = getelementptr inbounds %struct.mbedtls_chachapoly_context, %struct.mbedtls_chachapoly_context* %3, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [15 x i8], [15 x i8]* %zeroes, i64 0, i64 0
  %4 = load i32, i32* %partial_block_len, align 4
  %sub = sub i32 16, %4
  %conv3 = zext i32 %sub to i64
  %call4 = call i32 @mbedtls_poly1305_update(%struct.mbedtls_poly1305_context* noundef %poly1305_ctx, i8* noundef %arraydecay2, i64 noundef %conv3) #4
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_poly1305_finish(%struct.mbedtls_poly1305_context* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %ctx, i64 noundef %length, i8* noundef %nonce, i8* noundef %aad, i64 noundef %aad_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %length.addr = alloca i64, align 8
  %nonce.addr = alloca i8*, align 8
  %aad.addr = alloca i8*, align 8
  %aad_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i8* %aad, i8** %aad.addr, align 8
  store i64 %aad_len, i64* %aad_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
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
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %nonce.addr, align 8
  %3 = load i8*, i8** %aad.addr, align 8
  %4 = load i64, i64* %aad_len.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %7 = load i8*, i8** %tag.addr, align 8
  %call = call i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %0, i32 noundef 0, i64 noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %7) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %ctx, i32 noundef %mode, i64 noundef %length, i8* noundef %nonce, i8* noundef %aad, i64 noundef %aad_len, i8* noundef %input, i8* noundef %output, i8* noundef %tag) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %nonce.addr = alloca i8*, align 8
  %aad.addr = alloca i8*, align 8
  %aad_len.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %tag.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i8* %aad, i8** %aad.addr, align 8
  store i64 %aad_len, i64* %aad_len.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %1 = load i8*, i8** %nonce.addr, align 8
  %2 = load i32, i32* %mode.addr, align 4
  %call = call i32 @mbedtls_chachapoly_starts(%struct.mbedtls_chachapoly_context* noundef %0, i8* noundef %1, i32 noundef %2) #4
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %5 = load i8*, i8** %aad.addr, align 8
  %6 = load i64, i64* %aad_len.addr, align 8
  %call1 = call i32 @mbedtls_chachapoly_update_aad(%struct.mbedtls_chachapoly_context* noundef %4, i8* noundef %5, i64 noundef %6) #4
  store i32 %call1, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %9 = load i64, i64* %length.addr, align 8
  %10 = load i8*, i8** %input.addr, align 8
  %11 = load i8*, i8** %output.addr, align 8
  %call5 = call i32 @mbedtls_chachapoly_update(%struct.mbedtls_chachapoly_context* noundef %8, i64 noundef %9, i8* noundef %10, i8* noundef %11) #4
  store i32 %call5, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %13 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %14 = load i8*, i8** %tag.addr, align 8
  %call9 = call i32 @mbedtls_chachapoly_finish(%struct.mbedtls_chachapoly_context* noundef %13, i8* noundef %14) #4
  store i32 %call9, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %ret, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_auth_decrypt(%struct.mbedtls_chachapoly_context* noundef %ctx, i64 noundef %length, i8* noundef %nonce, i8* noundef %aad, i64 noundef %aad_len, i8* noundef %tag, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_chachapoly_context*, align 8
  %length.addr = alloca i64, align 8
  %nonce.addr = alloca i8*, align 8
  %aad.addr = alloca i8*, align 8
  %aad_len.addr = alloca i64, align 8
  %tag.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %check_tag = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  %diff = alloca i32, align 4
  store %struct.mbedtls_chachapoly_context* %ctx, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i8* %aad, i8** %aad.addr, align 8
  store i64 %aad_len, i64* %aad_len.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
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
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.body7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  br label %do.end10

do.end10:                                         ; preds = %do.body9
  %0 = load %struct.mbedtls_chachapoly_context*, %struct.mbedtls_chachapoly_context** %ctx.addr, align 8
  %1 = load i64, i64* %length.addr, align 8
  %2 = load i8*, i8** %nonce.addr, align 8
  %3 = load i8*, i8** %aad.addr, align 8
  %4 = load i64, i64* %aad_len.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 0
  %call = call i32 @chachapoly_crypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %0, i32 noundef 1, i64 noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i8* noundef %6, i8* noundef %arraydecay) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  store i32 0, i32* %diff, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, i64* %i, align 8
  %cmp11 = icmp ult i64 %8, 16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %tag.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %check_tag, i64 0, i64 %12
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %xor = xor i32 %conv, %conv13
  %14 = load i32, i32* %diff, align 4
  %or = or i32 %14, %xor
  store i32 %or, i32* %diff, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %diff, align 4
  %cmp14 = icmp ne i32 %16, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  %17 = load i8*, i8** %output.addr, align 8
  %18 = load i64, i64* %length.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %17, i64 noundef %18) #4
  store i32 -86, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_chachapoly_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_chachapoly_context, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %output = alloca [200 x i8], align 16
  %mac = alloca [16 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @mbedtls_chachapoly_init(%struct.mbedtls_chachapoly_context* noundef %ctx) #4
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x [32 x i8]], [1 x [32 x i8]]* @test_key, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %arrayidx, i64 0, i64 0
  %call2 = call i32 @mbedtls_chachapoly_setkey(%struct.mbedtls_chachapoly_context* noundef %ctx, i8* noundef %arraydecay) #4
  store i32 %call2, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load i32, i32* %ret, align 4
  %cmp3 = icmp eq i32 0, %4
  br i1 %cmp3, label %if.end9, label %if.then4

if.then4:                                         ; preds = %do.body
  %5 = load i32, i32* %verbose.addr, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %6 = load i32, i32* %ret, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  %7 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [1 x i64], [1 x i64]* @test_input_len, i64 0, i64 %idxprom10
  %8 = load i64, i64* %arrayidx11, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [1 x [12 x i8]], [1 x [12 x i8]]* @test_nonce, i64 0, i64 %idxprom12
  %arraydecay14 = getelementptr inbounds [12 x i8], [12 x i8]* %arrayidx13, i64 0, i64 0
  %10 = load i32, i32* %i, align 4
  %idxprom15 = zext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [1 x [12 x i8]], [1 x [12 x i8]]* @test_aad, i64 0, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [12 x i8], [12 x i8]* %arrayidx16, i64 0, i64 0
  %11 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [1 x i64], [1 x i64]* @test_aad_len, i64 0, i64 %idxprom18
  %12 = load i64, i64* %arrayidx19, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [1 x [114 x i8]], [1 x [114 x i8]]* @test_input, i64 0, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [114 x i8], [114 x i8]* %arrayidx21, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [200 x i8], [200 x i8]* %output, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %mac, i64 0, i64 0
  %call25 = call i32 @mbedtls_chachapoly_encrypt_and_tag(%struct.mbedtls_chachapoly_context* noundef %ctx, i64 noundef %8, i8* noundef %arraydecay14, i8* noundef %arraydecay17, i64 noundef %12, i8* noundef %arraydecay22, i8* noundef %arraydecay23, i8* noundef %arraydecay24) #4
  store i32 %call25, i32* %ret, align 4
  br label %do.body26

do.body26:                                        ; preds = %do.end
  %14 = load i32, i32* %ret, align 4
  %cmp27 = icmp eq i32 0, %14
  br i1 %cmp27, label %if.end33, label %if.then28

if.then28:                                        ; preds = %do.body26
  %15 = load i32, i32* %verbose.addr, align 4
  %cmp29 = icmp ne i32 %15, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then28
  %16 = load i32, i32* %ret, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %16) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then28
  store i32 -1, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %do.body26
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %arraydecay36 = getelementptr inbounds [200 x i8], [200 x i8]* %output, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %17 to i64
  %arrayidx38 = getelementptr inbounds [1 x [114 x i8]], [1 x [114 x i8]]* @test_output, i64 0, i64 %idxprom37
  %arraydecay39 = getelementptr inbounds [114 x i8], [114 x i8]* %arrayidx38, i64 0, i64 0
  %18 = load i32, i32* %i, align 4
  %idxprom40 = zext i32 %18 to i64
  %arrayidx41 = getelementptr inbounds [1 x i64], [1 x i64]* @test_input_len, i64 0, i64 %idxprom40
  %19 = load i64, i64* %arrayidx41, align 8
  %call42 = call i32 @memcmp(i8* noundef %arraydecay36, i8* noundef %arraydecay39, i64 noundef %19) #6
  %cmp43 = icmp eq i32 0, %call42
  br i1 %cmp43, label %if.end49, label %if.then44

if.then44:                                        ; preds = %do.body35
  %20 = load i32, i32* %verbose.addr, align 4
  %cmp45 = icmp ne i32 %20, 0
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then44
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then44
  store i32 -1, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %do.body35
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %arraydecay52 = getelementptr inbounds [16 x i8], [16 x i8]* %mac, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idxprom53 = zext i32 %21 to i64
  %arrayidx54 = getelementptr inbounds [1 x [16 x i8]], [1 x [16 x i8]]* @test_mac, i64 0, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx54, i64 0, i64 0
  %call56 = call i32 @memcmp(i8* noundef %arraydecay52, i8* noundef %arraydecay55, i64 noundef 16) #6
  %cmp57 = icmp eq i32 0, %call56
  br i1 %cmp57, label %if.end63, label %if.then58

if.then58:                                        ; preds = %do.body51
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp59 = icmp ne i32 %22, 0
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then58
  %call61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then58
  store i32 -1, i32* %retval, align 4
  br label %return

if.end63:                                         ; preds = %do.body51
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  call void @mbedtls_chachapoly_free(%struct.mbedtls_chachapoly_context* noundef %ctx) #4
  %23 = load i32, i32* %verbose.addr, align 4
  %cmp65 = icmp ne i32 %23, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %do.end64
  %call67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %do.end64
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %verbose.addr, align 4
  %cmp69 = icmp ne i32 %25, 0
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %for.end
  %call71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.end62, %if.end48, %if.end32, %if.end8
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
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
