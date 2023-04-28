; ModuleID = 'aesni.c'
source_filename = "aesni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }

@mbedtls_aesni_has_support.done = internal global i32 0, align 4
@mbedtls_aesni_has_support.c = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aesni_has_support(i32 noundef %what) #0 {
entry:
  %what.addr = alloca i32, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* @mbedtls_aesni_has_support.done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = call i32 asm "movl  $$1, %eax   \0A\09cpuid             \0A\09", "={cx},~{eax},~{ebx},~{edx},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i32 %1, i32* @mbedtls_aesni_has_support.c, align 4
  store i32 1, i32* @mbedtls_aesni_has_support.done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @mbedtls_aesni_has_support.c, align 4
  %3 = load i32, i32* %what.addr, align 4
  %and = and i32 %2, %3
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aesni_crypt_ecb(%struct.mbedtls_aes_context* noundef %ctx, i32 noundef %mode, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_aes_context*, align 8
  %mode.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.mbedtls_aes_context* %ctx, %struct.mbedtls_aes_context** %ctx.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %0, i32 0, i32 0
  %1 = load i32, i32* %nr, align 8
  %2 = load %struct.mbedtls_aes_context*, %struct.mbedtls_aes_context** %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aes_context, %struct.mbedtls_aes_context* %2, i32 0, i32 1
  %3 = load i32*, i32** %rk, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %output.addr, align 8
  call void asm sideeffect "movdqu    ($3), %xmm0    \0A\09movdqu    ($1), %xmm1    \0A\09pxor      %xmm1, %xmm0  \0A\09add       $$16, $1         \0A\09subl      $$1, $0          \0A\09test      $2, $2          \0A\09jz        2f              \0A\091:                        \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDC,0xC1\0A\09add       $$16, $1         \0A\09subl      $$1, $0          \0A\09jnz       1b              \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDD,0xC1\0A\09jmp       3f              \0A\092:                        \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDE,0xC1\0A\09add       $$16, $1         \0A\09subl      $$1, $0          \0A\09jnz       2b              \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDF,0xC1\0A\093:                        \0A\09movdqu    %xmm0, ($4)    \0A\09", "r,r,r,r,r,~{memory},~{cc},~{xmm0},~{xmm1},~{dirflag},~{fpsr},~{flags}"(i32 %1, i32* %3, i32 %4, i8* %5, i8* %6) #3, !srcloc !5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aesni_gcm_mult(i8* noundef %c, i8* noundef %a, i8* noundef %b) #0 {
entry:
  %c.addr = alloca i8*, align 8
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %aa = alloca [16 x i8], align 16
  %bb = alloca [16 x i8], align 16
  %cc = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  store i8* %c, i8** %c.addr, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %a.addr, align 8
  %2 = load i64, i64* %i, align 8
  %sub = sub i64 15, %2
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %3 = load i8, i8* %arrayidx, align 1
  %4 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [16 x i8], [16 x i8]* %aa, i64 0, i64 %4
  store i8 %3, i8* %arrayidx1, align 1
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i64, i64* %i, align 8
  %sub2 = sub i64 15, %6
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %sub2
  %7 = load i8, i8* %arrayidx3, align 1
  %8 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds [16 x i8], [16 x i8]* %bb, i64 0, i64 %8
  store i8 %7, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %aa, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [16 x i8], [16 x i8]* %bb, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %cc, i64 0, i64 0
  call void asm sideeffect "movdqu ($0), %xmm0               \0A\09movdqu ($1), %xmm1               \0A\09movdqa %xmm1, %xmm2             \0A\09movdqa %xmm1, %xmm3             \0A\09movdqa %xmm1, %xmm4             \0A\09.byte 0x66,0x0F,0x3A,0x44,0xC8,0x00         \0A\09.byte 0x66,0x0F,0x3A,0x44,0xD0,0x11         \0A\09.byte 0x66,0x0F,0x3A,0x44,0xD8,0x10         \0A\09.byte 0x66,0x0F,0x3A,0x44,0xE0,0x01         \0A\09pxor %xmm3, %xmm4               \0A\09movdqa %xmm4, %xmm3             \0A\09psrldq $$8, %xmm4                 \0A\09pslldq $$8, %xmm3                 \0A\09pxor %xmm4, %xmm2               \0A\09pxor %xmm3, %xmm1               \0A\09movdqa %xmm1, %xmm3             \0A\09movdqa %xmm2, %xmm4             \0A\09psllq $$1, %xmm1                  \0A\09psllq $$1, %xmm2                  \0A\09psrlq $$63, %xmm3                 \0A\09psrlq $$63, %xmm4                 \0A\09movdqa %xmm3, %xmm5             \0A\09pslldq $$8, %xmm3                 \0A\09pslldq $$8, %xmm4                 \0A\09psrldq $$8, %xmm5                 \0A\09por %xmm3, %xmm1                \0A\09por %xmm4, %xmm2                \0A\09por %xmm5, %xmm2                \0A\09movdqa %xmm1, %xmm3             \0A\09movdqa %xmm1, %xmm4             \0A\09movdqa %xmm1, %xmm5             \0A\09psllq $$63, %xmm3                 \0A\09psllq $$62, %xmm4                 \0A\09psllq $$57, %xmm5                 \0A\09pxor %xmm4, %xmm3               \0A\09pxor %xmm5, %xmm3               \0A\09pslldq $$8, %xmm3                 \0A\09pxor %xmm3, %xmm1               \0A\09movdqa %xmm1,%xmm0              \0A\09movdqa %xmm1,%xmm4              \0A\09movdqa %xmm1,%xmm5              \0A\09psrlq $$1, %xmm0                  \0A\09psrlq $$2, %xmm4                  \0A\09psrlq $$7, %xmm5                  \0A\09pxor %xmm4, %xmm0               \0A\09pxor %xmm5, %xmm0               \0A\09movdqa %xmm1,%xmm3              \0A\09movdqa %xmm1,%xmm4              \0A\09movdqa %xmm1,%xmm5              \0A\09psllq $$63, %xmm3                 \0A\09psllq $$62, %xmm4                 \0A\09psllq $$57, %xmm5                 \0A\09pxor %xmm4, %xmm3               \0A\09pxor %xmm5, %xmm3               \0A\09psrldq $$8, %xmm3                 \0A\09pxor %xmm3, %xmm0               \0A\09pxor %xmm1, %xmm0               \0A\09pxor %xmm2, %xmm0               \0A\09movdqu %xmm0, ($2)               \0A\09", "r,r,r,~{memory},~{cc},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{dirflag},~{fpsr},~{flags}"(i8* %arraydecay, i8* %arraydecay5, i8* %arraydecay6) #3, !srcloc !8
  store i64 0, i64* %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %10 = load i64, i64* %i, align 8
  %cmp8 = icmp ult i64 %10, 16
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %11 = load i64, i64* %i, align 8
  %sub10 = sub i64 15, %11
  %arrayidx11 = getelementptr inbounds [16 x i8], [16 x i8]* %cc, i64 0, i64 %sub10
  %12 = load i8, i8* %arrayidx11, align 1
  %13 = load i8*, i8** %c.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 %12, i8* %arrayidx12, align 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %15 = load i64, i64* %i, align 8
  %inc14 = add i64 %15, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond7, !llvm.loop !9

for.end15:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_aesni_inverse_key(i8* noundef %invkey, i8* noundef %fwdkey, i32 noundef %nr) #0 {
entry:
  %invkey.addr = alloca i8*, align 8
  %fwdkey.addr = alloca i8*, align 8
  %nr.addr = alloca i32, align 4
  %ik = alloca i8*, align 8
  %fk = alloca i8*, align 8
  store i8* %invkey, i8** %invkey.addr, align 8
  store i8* %fwdkey, i8** %fwdkey.addr, align 8
  store i32 %nr, i32* %nr.addr, align 4
  %0 = load i8*, i8** %invkey.addr, align 8
  store i8* %0, i8** %ik, align 8
  %1 = load i8*, i8** %fwdkey.addr, align 8
  %2 = load i32, i32* %nr.addr, align 4
  %mul = mul nsw i32 16, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %fk, align 8
  %3 = load i8*, i8** %ik, align 8
  %4 = load i8*, i8** %fk, align 8
  %call = call i8* @memcpy(i8* noundef %3, i8* noundef %4, i64 noundef 16) #4
  %5 = load i8*, i8** %fk, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %5, i64 -16
  store i8* %add.ptr1, i8** %fk, align 8
  %6 = load i8*, i8** %ik, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 16
  store i8* %add.ptr2, i8** %ik, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i8*, i8** %fk, align 8
  %8 = load i8*, i8** %fwdkey.addr, align 8
  %cmp = icmp ugt i8* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %fk, align 8
  %10 = load i8*, i8** %ik, align 8
  call void asm sideeffect "movdqu ($0), %xmm0       \0A\09.byte 0x66,0x0F,0x38,0xDB,0xC0\0A\09movdqu %xmm0, ($1)       \0A\09", "r,r,~{memory},~{xmm0},~{dirflag},~{fpsr},~{flags}"(i8* %9, i8* %10) #3, !srcloc !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %fk, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 -16
  store i8* %add.ptr3, i8** %fk, align 8
  %12 = load i8*, i8** %ik, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 16
  store i8* %add.ptr4, i8** %ik, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %13 = load i8*, i8** %ik, align 8
  %14 = load i8*, i8** %fk, align 8
  %call5 = call i8* @memcpy(i8* noundef %13, i8* noundef %14, i64 noundef 16) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aesni_setkey_enc(i8* noundef %rk, i8* noundef %key, i64 noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %rk.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %bits.addr = alloca i64, align 8
  store i8* %rk, i8** %rk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  switch i64 %0, label %sw.default [
    i64 128, label %sw.bb
    i64 192, label %sw.bb1
    i64 256, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %rk.addr, align 8
  %2 = load i8*, i8** %key.addr, align 8
  call void @aesni_setkey_enc_128(i8* noundef %1, i8* noundef %2) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load i8*, i8** %rk.addr, align 8
  %4 = load i8*, i8** %key.addr, align 8
  call void @aesni_setkey_enc_192(i8* noundef %3, i8* noundef %4) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load i8*, i8** %rk.addr, align 8
  %6 = load i8*, i8** %key.addr, align 8
  call void @aesni_setkey_enc_256(i8* noundef %5, i8* noundef %6) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -32, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_setkey_enc_128(i8* noundef %rk, i8* noundef %key) #0 {
entry:
  %rk.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  store i8* %rk, i8** %rk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %rk.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void asm sideeffect "movdqu ($1), %xmm0               \0A\09movdqu %xmm0, ($0)               \0A\09jmp 2f                            \0A\091:                                \0A\09pshufd $$0xff, %xmm1, %xmm1      \0A\09pxor %xmm0, %xmm1               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm1               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm1               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm1, %xmm0               \0A\09add $$16, $0                       \0A\09movdqu %xmm0, ($0)               \0A\09ret                               \0A\092:                                \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x01        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x02        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x04        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x08        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x10        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x20        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x40        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x80        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x1B        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x36        \0A\09call 1b \0A\09", "r,r,~{memory},~{cc},~{ax},~{dirflag},~{fpsr},~{flags}"(i8* %0, i8* %1) #3, !srcloc !12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_setkey_enc_192(i8* noundef %rk, i8* noundef %key) #0 {
entry:
  %rk.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  store i8* %rk, i8** %rk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %rk.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void asm sideeffect "movdqu ($1), %xmm0   \0A\09movdqu %xmm0, ($0)   \0A\09add $$16, $0           \0A\09movq 16($1), %xmm1   \0A\09movq %xmm1, ($0)     \0A\09add $$8, $0            \0A\09jmp 2f                \0A\091:                            \0A\09pshufd $$0x55, %xmm2, %xmm2  \0A\09pxor %xmm0, %xmm2           \0A\09pslldq $$4, %xmm0             \0A\09pxor %xmm0, %xmm2           \0A\09pslldq $$4, %xmm0             \0A\09pxor %xmm0, %xmm2           \0A\09pslldq $$4, %xmm0             \0A\09pxor %xmm2, %xmm0           \0A\09movdqu %xmm0, ($0)           \0A\09add $$16, $0                   \0A\09pshufd $$0xff, %xmm0, %xmm2  \0A\09pxor %xmm1, %xmm2           \0A\09pslldq $$4, %xmm1             \0A\09pxor %xmm2, %xmm1           \0A\09movq %xmm1, ($0)             \0A\09add $$8, $0                    \0A\09ret                           \0A\092:                            \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x01    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x02    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x04    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x08    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x10    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x20    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x40    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x80    \0A\09call 1b \0A\09", "r,r,~{memory},~{cc},~{ax},~{dirflag},~{fpsr},~{flags}"(i8* %0, i8* %1) #3, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_setkey_enc_256(i8* noundef %rk, i8* noundef %key) #0 {
entry:
  %rk.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  store i8* %rk, i8** %rk.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %rk.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  call void asm sideeffect "movdqu ($1), %xmm0           \0A\09movdqu %xmm0, ($0)           \0A\09add $$16, $0                   \0A\09movdqu 16($1), %xmm1         \0A\09movdqu %xmm1, ($0)           \0A\09jmp 2f                        \0A\091:                                \0A\09pshufd $$0xff, %xmm2, %xmm2      \0A\09pxor %xmm0, %xmm2               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm2               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm2               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm2, %xmm0               \0A\09add $$16, $0                       \0A\09movdqu %xmm0, ($0)               \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD0,0x00        \0A\09pshufd $$0xaa, %xmm2, %xmm2      \0A\09pxor %xmm1, %xmm2               \0A\09pslldq $$4, %xmm1                 \0A\09pxor %xmm1, %xmm2               \0A\09pslldq $$4, %xmm1                 \0A\09pxor %xmm1, %xmm2               \0A\09pslldq $$4, %xmm1                 \0A\09pxor %xmm2, %xmm1               \0A\09add $$16, $0                       \0A\09movdqu %xmm1, ($0)               \0A\09ret                               \0A\092:                                \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x01        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x02        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x04        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x08        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x10        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x20        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x40        \0A\09call 1b \0A\09", "r,r,~{memory},~{cc},~{ax},~{dirflag},~{fpsr},~{flags}"(i8* %0, i8* %1) #3, !srcloc !14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = !{i64 1515, i64 1536, i64 1574}
!5 = !{i64 2997, i64 3026, i64 3082, i64 3144, i64 3197, i64 3266, i64 3334, i64 3385, i64 3443, i64 3504, i64 3564, i64 3618, i64 3687, i64 3737, i64 3779, i64 3839, i64 3895, i64 3938, i64 3999, i64 4041, i64 4095, i64 4137, i64 4179, i64 4221, i64 4281, i64 4338, i64 4380}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 5056, i64 5093, i64 5152, i64 5347, i64 5414, i64 5472, i64 5530, i64 5597, i64 5664, i64 5731, i64 5798, i64 5863, i64 5921, i64 5982, i64 6043, i64 6108, i64 6310, i64 6369, i64 6428, i64 6493, i64 6558, i64 6625, i64 6692, i64 6759, i64 6821, i64 6883, i64 6945, i64 7017, i64 7089, i64 7414, i64 7473, i64 7531, i64 7589, i64 7666, i64 7743, i64 7847, i64 7910, i64 7975, i64 8036, i64 8138, i64 8196, i64 8254, i64 8312, i64 8383, i64 8454, i64 8525, i64 8592, i64 8799, i64 8857, i64 8915, i64 8973, i64 9038, i64 9103, i64 9168, i64 9239, i64 9316, i64 9389, i64 9460, i64 9519, i64 9585}
!9 = distinct !{!9, !7}
!10 = !{i64 10208, i64 10237, i64 10283, i64 10329}
!11 = distinct !{!11, !7}
!12 = !{i64 10610, i64 10647, i64 10722, i64 10790, i64 11256, i64 11306, i64 11367, i64 11438, i64 11502, i64 11577, i64 11634, i64 11684, i64 11734, i64 11814, i64 11891, i64 11953, i64 12031, i64 12081, i64 12093, i64 12143, i64 12155, i64 12205, i64 12217, i64 12267, i64 12279, i64 12329, i64 12341, i64 12391, i64 12403, i64 12453, i64 12465, i64 12515, i64 12527, i64 12577, i64 12589, i64 12639, i64 12651}
!13 = !{i64 12897, i64 12922, i64 12987, i64 13025, i64 13063, i64 13101, i64 13139, i64 13177, i64 13632, i64 13678, i64 13735, i64 13802, i64 13855, i64 13901, i64 13947, i64 13993, i64 14039, i64 14114, i64 14160, i64 14206, i64 14267, i64 14338, i64 14398, i64 14474, i64 14520, i64 14566, i64 14613, i64 14659, i64 14671, i64 14717, i64 14729, i64 14775, i64 14787, i64 14833, i64 14845, i64 14891, i64 14903, i64 14949, i64 14961, i64 15007, i64 15019, i64 15065, i64 15077}
!14 = !{i64 15324, i64 15357, i64 15403, i64 15449, i64 15495, i64 15541, i64 15587, i64 16039, i64 16089, i64 16139, i64 16189, i64 16239, i64 16289, i64 16339, i64 16389, i64 16439, i64 16489, i64 16539, i64 16723, i64 16773, i64 16823, i64 16873, i64 16923, i64 16973, i64 17023, i64 17073, i64 17123, i64 17173, i64 17223, i64 17273, i64 17469, i64 17519, i64 17531, i64 17581, i64 17593, i64 17643, i64 17655, i64 17705, i64 17717, i64 17767, i64 17779, i64 17829, i64 17841, i64 17891, i64 17903}
