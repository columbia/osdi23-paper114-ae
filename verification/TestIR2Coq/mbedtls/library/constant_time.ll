; ModuleID = 'constant_time.c'
source_filename = "constant_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_memcmp(i8* noundef %a, i8* noundef %b, i64 noundef %n) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %A = alloca i8*, align 8
  %B = alloca i8*, align 8
  %diff = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  store i8* %0, i8** %A, align 8
  %1 = load i8*, i8** %b.addr, align 8
  store i8* %1, i8** %B, align 8
  store volatile i8 0, i8* %diff, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %A, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load volatile i8, i8* %arrayidx, align 1
  store i8 %6, i8* %x, align 1
  %7 = load i8*, i8** %B, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load volatile i8, i8* %arrayidx1, align 1
  store i8 %9, i8* %y, align 1
  %10 = load i8, i8* %x, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* %y, align 1
  %conv2 = zext i8 %11 to i32
  %xor = xor i32 %conv, %conv2
  %12 = load volatile i8, i8* %diff, align 1
  %conv3 = zext i8 %12 to i32
  %or = or i32 %conv3, %xor
  %conv4 = trunc i32 %or to i8
  store volatile i8 %conv4, i8* %diff, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %14 = load volatile i8, i8* %diff, align 1
  %conv5 = zext i8 %14 to i32
  ret i32 %conv5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_uint_mask(i32 noundef %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %1 = load i32, i32* %value.addr, align 4
  %sub = sub i32 0, %1
  %or = or i32 %0, %sub
  %shr = lshr i32 %or, 31
  %sub1 = sub i32 0, %shr
  ret i32 %sub1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ct_size_mask(i64 noundef %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %1 = load i64, i64* %value.addr, align 8
  %sub = sub i64 0, %1
  %or = or i64 %0, %sub
  %shr = lshr i64 %or, 63
  %sub1 = sub i64 0, %shr
  ret i64 %sub1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ct_mpi_uint_mask(i64 noundef %value) #0 {
entry:
  %value.addr = alloca i64, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load i64, i64* %value.addr, align 8
  %1 = load i64, i64* %value.addr, align 8
  %sub = sub i64 0, %1
  %or = or i64 %0, %sub
  %shr = lshr i64 %or, 63
  %sub1 = sub i64 0, %shr
  ret i64 %sub1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_ct_size_mask_ge(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = load i64, i64* %y.addr, align 8
  %call = call i64 @mbedtls_ct_size_mask_lt(i64 noundef %0, i64 noundef %1) #3
  %neg = xor i64 %call, -1
  ret i64 %neg
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbedtls_ct_size_mask_lt(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %sub = alloca i64, align 8
  %sub12 = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = load i64, i64* %y.addr, align 8
  %sub1 = sub i64 %0, %1
  store i64 %sub1, i64* %sub, align 8
  %2 = load i64, i64* %sub, align 8
  %shr = lshr i64 %2, 63
  store i64 %shr, i64* %sub12, align 8
  %3 = load i64, i64* %sub12, align 8
  %call = call i64 @mbedtls_ct_size_mask(i64 noundef %3) #3
  store i64 %call, i64* %mask, align 8
  %4 = load i64, i64* %mask, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_size_bool_eq(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %diff = alloca i64, align 8
  %diff_msb = alloca i64, align 8
  %diff1 = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = load i64, i64* %y.addr, align 8
  %xor = xor i64 %0, %1
  store i64 %xor, i64* %diff, align 8
  %2 = load i64, i64* %diff, align 8
  %3 = load i64, i64* %diff, align 8
  %sub = sub i64 0, %3
  %or = or i64 %2, %sub
  store i64 %or, i64* %diff_msb, align 8
  %4 = load i64, i64* %diff_msb, align 8
  %shr = lshr i64 %4, 63
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %diff1, align 4
  %5 = load i32, i32* %diff1, align 4
  %xor1 = xor i32 1, %5
  ret i32 %xor1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_mpi_uint_lt(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %cond = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %1 = load i64, i64* %y.addr, align 8
  %xor = xor i64 %0, %1
  store i64 %xor, i64* %cond, align 8
  %2 = load i64, i64* %x.addr, align 8
  %3 = load i64, i64* %y.addr, align 8
  %sub = sub i64 %2, %3
  %4 = load i64, i64* %cond, align 8
  %neg = xor i64 %4, -1
  %and = and i64 %sub, %neg
  store i64 %and, i64* %ret, align 8
  %5 = load i64, i64* %y.addr, align 8
  %6 = load i64, i64* %cond, align 8
  %and1 = and i64 %5, %6
  %7 = load i64, i64* %ret, align 8
  %or = or i64 %7, %and1
  store i64 %or, i64* %ret, align 8
  %8 = load i64, i64* %ret, align 8
  %shr = lshr i64 %8, 63
  store i64 %shr, i64* %ret, align 8
  %9 = load i64, i64* %ret, align 8
  %conv = trunc i64 %9 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_uint_if(i32 noundef %condition, i32 noundef %if1, i32 noundef %if0) #0 {
entry:
  %condition.addr = alloca i32, align 4
  %if1.addr = alloca i32, align 4
  %if0.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %condition, i32* %condition.addr, align 4
  store i32 %if1, i32* %if1.addr, align 4
  store i32 %if0, i32* %if0.addr, align 4
  %0 = load i32, i32* %condition.addr, align 4
  %call = call i32 @mbedtls_ct_uint_mask(i32 noundef %0) #3
  store i32 %call, i32* %mask, align 4
  %1 = load i32, i32* %mask, align 4
  %2 = load i32, i32* %if1.addr, align 4
  %and = and i32 %1, %2
  %3 = load i32, i32* %mask, align 4
  %neg = xor i32 %3, -1
  %4 = load i32, i32* %if0.addr, align 4
  %and1 = and i32 %neg, %4
  %or = or i32 %and, %and1
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ct_mpi_uint_cond_assign(i64 noundef %n, i64* noundef %dest, i64* noundef %src, i8 noundef zeroext %condition) #0 {
entry:
  %n.addr = alloca i64, align 8
  %dest.addr = alloca i64*, align 8
  %src.addr = alloca i64*, align 8
  %condition.addr = alloca i8, align 1
  %i = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64* %dest, i64** %dest.addr, align 8
  store i64* %src, i64** %src.addr, align 8
  store i8 %condition, i8* %condition.addr, align 1
  %0 = load i8, i8* %condition.addr, align 1
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 0, %conv
  %conv1 = sext i32 %sub to i64
  store i64 %conv1, i64* %mask, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %src.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %4
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i64, i64* %mask, align 8
  %and = and i64 %5, %6
  %7 = load i64*, i64** %dest.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %7, i64 %8
  %9 = load i64, i64* %arrayidx3, align 8
  %10 = load i64, i64* %mask, align 8
  %neg = xor i64 %10, -1
  %and4 = and i64 %9, %neg
  %or = or i64 %and, %and4
  %11 = load i64*, i64** %dest.addr, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 %or, i64* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %value) #0 {
entry:
  %value.addr = alloca i8, align 1
  %digit = alloca i8, align 1
  store i8 %value, i8* %value.addr, align 1
  store i8 0, i8* %digit, align 1
  %0 = load i8, i8* %value.addr, align 1
  %call = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 0, i8 noundef zeroext 25, i8 noundef zeroext %0) #3
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %value.addr, align 1
  %conv1 = zext i8 %1 to i32
  %add = add nsw i32 65, %conv1
  %and = and i32 %conv, %add
  %2 = load i8, i8* %digit, align 1
  %conv2 = zext i8 %2 to i32
  %or = or i32 %conv2, %and
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %digit, align 1
  %3 = load i8, i8* %value.addr, align 1
  %call4 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 26, i8 noundef zeroext 51, i8 noundef zeroext %3) #3
  %conv5 = zext i8 %call4 to i32
  %4 = load i8, i8* %value.addr, align 1
  %conv6 = zext i8 %4 to i32
  %add7 = add nsw i32 97, %conv6
  %sub = sub nsw i32 %add7, 26
  %and8 = and i32 %conv5, %sub
  %5 = load i8, i8* %digit, align 1
  %conv9 = zext i8 %5 to i32
  %or10 = or i32 %conv9, %and8
  %conv11 = trunc i32 %or10 to i8
  store i8 %conv11, i8* %digit, align 1
  %6 = load i8, i8* %value.addr, align 1
  %call12 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 52, i8 noundef zeroext 61, i8 noundef zeroext %6) #3
  %conv13 = zext i8 %call12 to i32
  %7 = load i8, i8* %value.addr, align 1
  %conv14 = zext i8 %7 to i32
  %add15 = add nsw i32 48, %conv14
  %sub16 = sub nsw i32 %add15, 52
  %and17 = and i32 %conv13, %sub16
  %8 = load i8, i8* %digit, align 1
  %conv18 = zext i8 %8 to i32
  %or19 = or i32 %conv18, %and17
  %conv20 = trunc i32 %or19 to i8
  store i8 %conv20, i8* %digit, align 1
  %9 = load i8, i8* %value.addr, align 1
  %call21 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 62, i8 noundef zeroext 62, i8 noundef zeroext %9) #3
  %conv22 = zext i8 %call21 to i32
  %and23 = and i32 %conv22, 43
  %10 = load i8, i8* %digit, align 1
  %conv24 = zext i8 %10 to i32
  %or25 = or i32 %conv24, %and23
  %conv26 = trunc i32 %or25 to i8
  store i8 %conv26, i8* %digit, align 1
  %11 = load i8, i8* %value.addr, align 1
  %call27 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 63, i8 noundef zeroext 63, i8 noundef zeroext %11) #3
  %conv28 = zext i8 %call27 to i32
  %and29 = and i32 %conv28, 47
  %12 = load i8, i8* %digit, align 1
  %conv30 = zext i8 %12 to i32
  %or31 = or i32 %conv30, %and29
  %conv32 = trunc i32 %or31 to i8
  store i8 %conv32, i8* %digit, align 1
  %13 = load i8, i8* %digit, align 1
  ret i8 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext %low, i8 noundef zeroext %high, i8 noundef zeroext %c) #0 {
entry:
  %low.addr = alloca i8, align 1
  %high.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %low_mask = alloca i32, align 4
  %high_mask = alloca i32, align 4
  store i8 %low, i8* %low.addr, align 1
  store i8 %high, i8* %high.addr, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %low.addr, align 1
  %conv1 = zext i8 %1 to i32
  %sub = sub i32 %conv, %conv1
  %shr = lshr i32 %sub, 8
  store i32 %shr, i32* %low_mask, align 4
  %2 = load i8, i8* %high.addr, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load i8, i8* %c.addr, align 1
  %conv3 = zext i8 %3 to i32
  %sub4 = sub i32 %conv2, %conv3
  %shr5 = lshr i32 %sub4, 8
  store i32 %shr5, i32* %high_mask, align 4
  %4 = load i32, i32* %low_mask, align 4
  %5 = load i32, i32* %high_mask, align 4
  %or = or i32 %4, %5
  %neg = xor i32 %or, -1
  %and = and i32 %neg, 255
  %conv6 = trunc i32 %and to i8
  ret i8 %conv6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 noundef zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %val = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  store i8 0, i8* %val, align 1
  %0 = load i8, i8* %c.addr, align 1
  %call = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 65, i8 noundef zeroext 90, i8 noundef zeroext %0) #3
  %conv = zext i8 %call to i32
  %1 = load i8, i8* %c.addr, align 1
  %conv1 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv1, 65
  %add = add nsw i32 %sub, 0
  %add2 = add nsw i32 %add, 1
  %and = and i32 %conv, %add2
  %2 = load i8, i8* %val, align 1
  %conv3 = zext i8 %2 to i32
  %or = or i32 %conv3, %and
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %val, align 1
  %3 = load i8, i8* %c.addr, align 1
  %call5 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 97, i8 noundef zeroext 122, i8 noundef zeroext %3) #3
  %conv6 = zext i8 %call5 to i32
  %4 = load i8, i8* %c.addr, align 1
  %conv7 = zext i8 %4 to i32
  %sub8 = sub nsw i32 %conv7, 97
  %add9 = add nsw i32 %sub8, 26
  %add10 = add nsw i32 %add9, 1
  %and11 = and i32 %conv6, %add10
  %5 = load i8, i8* %val, align 1
  %conv12 = zext i8 %5 to i32
  %or13 = or i32 %conv12, %and11
  %conv14 = trunc i32 %or13 to i8
  store i8 %conv14, i8* %val, align 1
  %6 = load i8, i8* %c.addr, align 1
  %call15 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 48, i8 noundef zeroext 57, i8 noundef zeroext %6) #3
  %conv16 = zext i8 %call15 to i32
  %7 = load i8, i8* %c.addr, align 1
  %conv17 = zext i8 %7 to i32
  %sub18 = sub nsw i32 %conv17, 48
  %add19 = add nsw i32 %sub18, 52
  %add20 = add nsw i32 %add19, 1
  %and21 = and i32 %conv16, %add20
  %8 = load i8, i8* %val, align 1
  %conv22 = zext i8 %8 to i32
  %or23 = or i32 %conv22, %and21
  %conv24 = trunc i32 %or23 to i8
  store i8 %conv24, i8* %val, align 1
  %9 = load i8, i8* %c.addr, align 1
  %call25 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 43, i8 noundef zeroext 43, i8 noundef zeroext %9) #3
  %conv26 = zext i8 %call25 to i32
  %10 = load i8, i8* %c.addr, align 1
  %conv27 = zext i8 %10 to i32
  %sub28 = sub nsw i32 %conv27, 43
  %add29 = add nsw i32 %sub28, 62
  %add30 = add nsw i32 %add29, 1
  %and31 = and i32 %conv26, %add30
  %11 = load i8, i8* %val, align 1
  %conv32 = zext i8 %11 to i32
  %or33 = or i32 %conv32, %and31
  %conv34 = trunc i32 %or33 to i8
  store i8 %conv34, i8* %val, align 1
  %12 = load i8, i8* %c.addr, align 1
  %call35 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 noundef zeroext 47, i8 noundef zeroext 47, i8 noundef zeroext %12) #3
  %conv36 = zext i8 %call35 to i32
  %13 = load i8, i8* %c.addr, align 1
  %conv37 = zext i8 %13 to i32
  %sub38 = sub nsw i32 %conv37, 47
  %add39 = add nsw i32 %sub38, 63
  %add40 = add nsw i32 %add39, 1
  %and41 = and i32 %conv36, %add40
  %14 = load i8, i8* %val, align 1
  %conv42 = zext i8 %14 to i32
  %or43 = or i32 %conv42, %and41
  %conv44 = trunc i32 %or43 to i8
  store i8 %conv44, i8* %val, align 1
  %15 = load i8, i8* %val, align 1
  %conv45 = zext i8 %15 to i32
  %sub46 = sub nsw i32 %conv45, 1
  %conv47 = trunc i32 %sub46 to i8
  ret i8 %conv47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ct_memcpy_if_eq(i8* noundef %dest, i8* noundef %src, i64 noundef %len, i64 noundef %c1, i64 noundef %c2) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %c1.addr = alloca i64, align 8
  %c2.addr = alloca i64, align 8
  %equal = alloca i64, align 8
  %mask = alloca i8, align 1
  %i = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 %c1, i64* %c1.addr, align 8
  store i64 %c2, i64* %c2.addr, align 8
  %0 = load i64, i64* %c1.addr, align 8
  %1 = load i64, i64* %c2.addr, align 8
  %call = call i32 @mbedtls_ct_size_bool_eq(i64 noundef %0, i64 noundef %1) #3
  %conv = zext i32 %call to i64
  store i64 %conv, i64* %equal, align 8
  %2 = load i64, i64* %equal, align 8
  %call1 = call i64 @mbedtls_ct_size_mask(i64 noundef %2) #3
  %conv2 = trunc i64 %call1 to i8
  store i8 %conv2, i8* %mask, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %src.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %7 to i32
  %8 = load i8, i8* %mask, align 1
  %conv5 = zext i8 %8 to i32
  %and = and i32 %conv4, %conv5
  %9 = load i8*, i8** %dest.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %11 to i32
  %12 = load i8, i8* %mask, align 1
  %conv8 = zext i8 %12 to i32
  %neg = xor i32 %conv8, -1
  %and9 = and i32 %conv7, %neg
  %or = or i32 %and, %and9
  %conv10 = trunc i32 %or to i8
  %13 = load i8*, i8** %dest.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 %conv10, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ct_memcpy_offset(i8* noundef %dest, i8* noundef %src, i64 noundef %offset, i64 noundef %offset_min, i64 noundef %offset_max, i64 noundef %len) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %offset_min.addr = alloca i64, align 8
  %offset_max.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %offsetval = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %offset_min, i64* %offset_min.addr, align 8
  store i64 %offset_max, i64* %offset_max.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %offset_min.addr, align 8
  store i64 %0, i64* %offsetval, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %offsetval, align 8
  %2 = load i64, i64* %offset_max.addr, align 8
  %cmp = icmp ule i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %dest.addr, align 8
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i64, i64* %offsetval, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i64, i64* %len.addr, align 8
  %7 = load i64, i64* %offsetval, align 8
  %8 = load i64, i64* %offset.addr, align 8
  call void @mbedtls_ct_memcpy_if_eq(i8* noundef %3, i8* noundef %add.ptr, i64 noundef %6, i64 noundef %7, i64 noundef %8) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %offsetval, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %offsetval, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* noundef %ctx, i8* noundef %add_data, i64 noundef %add_data_len, i8* noundef %data, i64 noundef %data_len_secret, i64 noundef %min_data_len, i64 noundef %max_data_len, i8* noundef %output) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %add_data.addr = alloca i8*, align 8
  %add_data_len.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_len_secret.addr = alloca i64, align 8
  %min_data_len.addr = alloca i64, align 8
  %max_data_len.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %md_alg = alloca i32, align 4
  %block_size = alloca i64, align 8
  %ikey = alloca i8*, align 8
  %okey = alloca i8*, align 8
  %hash_size = alloca i64, align 8
  %aux_out = alloca [64 x i8], align 16
  %aux = alloca %struct.mbedtls_md_context_t, align 8
  %offset = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_md_context_t* %ctx, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  store i8* %add_data, i8** %add_data.addr, align 8
  store i64 %add_data_len, i64* %add_data_len.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len_secret, i64* %data_len_secret.addr, align 8
  store i64 %min_data_len, i64* %min_data_len.addr, align 8
  store i64 %max_data_len, i64* %max_data_len.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %1) #3
  store i32 %call, i32* %md_alg, align 4
  %2 = load i32, i32* %md_alg, align 4
  %cmp = icmp eq i32 %2, 5
  %3 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 128, i32 64
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %block_size, align 8
  %4 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %hmac_ctx = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %4, i32 0, i32 2
  %5 = load i8*, i8** %hmac_ctx, align 8
  store i8* %5, i8** %ikey, align 8
  %6 = load i8*, i8** %ikey, align 8
  %7 = load i64, i64* %block_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7
  store i8* %add.ptr, i8** %okey, align 8
  %8 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info1 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info1, align 8
  %call2 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %9) #3
  %conv3 = zext i8 %call2 to i64
  store i64 %conv3, i64* %hash_size, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %aux) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %md_info4 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info4, align 8
  %call5 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %aux, %struct.mbedtls_md_info_t* noundef %11, i32 noundef 0) #3
  store i32 %call5, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body8

do.body8:                                         ; preds = %do.end
  %13 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %14 = load i8*, i8** %add_data.addr, align 8
  %15 = load i64, i64* %add_data_len.addr, align 8
  %call9 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %13, i8* noundef %14, i64 noundef %15) #3
  store i32 %call9, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body8
  br label %cleanup

if.end13:                                         ; preds = %do.body8
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  %17 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %18 = load i8*, i8** %data.addr, align 8
  %19 = load i64, i64* %min_data_len.addr, align 8
  %call16 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %17, i8* noundef %18, i64 noundef %19) #3
  store i32 %call16, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp17 = icmp ne i32 %20, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body15
  br label %cleanup

if.end20:                                         ; preds = %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %21 = load i8*, i8** %output.addr, align 8
  %22 = load i64, i64* %hash_size, align 8
  %call22 = call i8* @memset(i8* noundef %21, i32 noundef 33, i64 noundef %22) #4
  %23 = load i64, i64* %min_data_len.addr, align 8
  store i64 %23, i64* %offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end21
  %24 = load i64, i64* %offset, align 8
  %25 = load i64, i64* %max_data_len.addr, align 8
  %cmp23 = icmp ule i64 %24, %25
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body25

do.body25:                                        ; preds = %for.body
  %26 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call26 = call i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* noundef %aux, %struct.mbedtls_md_context_t* noundef %26) #3
  store i32 %call26, i32* %ret, align 4
  %27 = load i32, i32* %ret, align 4
  %cmp27 = icmp ne i32 %27, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body25
  br label %cleanup

if.end30:                                         ; preds = %do.body25
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %aux_out, i64 0, i64 0
  %call33 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %aux, i8* noundef %arraydecay) #3
  store i32 %call33, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp34 = icmp ne i32 %28, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body32
  br label %cleanup

if.end37:                                         ; preds = %do.body32
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %29 = load i8*, i8** %output.addr, align 8
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %aux_out, i64 0, i64 0
  %30 = load i64, i64* %hash_size, align 8
  %31 = load i64, i64* %offset, align 8
  %32 = load i64, i64* %data_len_secret.addr, align 8
  call void @mbedtls_ct_memcpy_if_eq(i8* noundef %29, i8* noundef %arraydecay39, i64 noundef %30, i64 noundef %31, i64 noundef %32) #3
  %33 = load i64, i64* %offset, align 8
  %34 = load i64, i64* %max_data_len.addr, align 8
  %cmp40 = icmp ult i64 %33, %34
  br i1 %cmp40, label %if.then42, label %if.end51

if.then42:                                        ; preds = %do.end38
  br label %do.body43

do.body43:                                        ; preds = %if.then42
  %35 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %36 = load i8*, i8** %data.addr, align 8
  %37 = load i64, i64* %offset, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %36, i64 %37
  %call45 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %35, i8* noundef %add.ptr44, i64 noundef 1) #3
  store i32 %call45, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp46 = icmp ne i32 %38, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body43
  br label %cleanup

if.end49:                                         ; preds = %do.body43
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %do.end38
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %39 = load i64, i64* %offset, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %offset, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %do.body52

do.body52:                                        ; preds = %for.end
  %40 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %arraydecay53 = getelementptr inbounds [64 x i8], [64 x i8]* %aux_out, i64 0, i64 0
  %call54 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %40, i8* noundef %arraydecay53) #3
  store i32 %call54, i32* %ret, align 4
  %41 = load i32, i32* %ret, align 4
  %cmp55 = icmp ne i32 %41, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %do.body52
  br label %cleanup

if.end58:                                         ; preds = %do.body52
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %42 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call61 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %42) #3
  store i32 %call61, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp62 = icmp ne i32 %43, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %do.body60
  br label %cleanup

if.end65:                                         ; preds = %do.body60
  br label %do.end66

do.end66:                                         ; preds = %if.end65
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %44 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %45 = load i8*, i8** %okey, align 8
  %46 = load i64, i64* %block_size, align 8
  %call68 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %44, i8* noundef %45, i64 noundef %46) #3
  store i32 %call68, i32* %ret, align 4
  %47 = load i32, i32* %ret, align 4
  %cmp69 = icmp ne i32 %47, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %do.body67
  br label %cleanup

if.end72:                                         ; preds = %do.body67
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %48 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %49 = load i8*, i8** %output.addr, align 8
  %50 = load i64, i64* %hash_size, align 8
  %call75 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %48, i8* noundef %49, i64 noundef %50) #3
  store i32 %call75, i32* %ret, align 4
  %51 = load i32, i32* %ret, align 4
  %cmp76 = icmp ne i32 %51, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body74
  br label %cleanup

if.end79:                                         ; preds = %do.body74
  br label %do.end80

do.end80:                                         ; preds = %if.end79
  br label %do.body81

do.body81:                                        ; preds = %do.end80
  %52 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %53 = load i8*, i8** %output.addr, align 8
  %call82 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %52, i8* noundef %53) #3
  store i32 %call82, i32* %ret, align 4
  %54 = load i32, i32* %ret, align 4
  %cmp83 = icmp ne i32 %54, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.body81
  br label %cleanup

if.end86:                                         ; preds = %do.body81
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %do.body88

do.body88:                                        ; preds = %do.end87
  %55 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %ctx.addr, align 8
  %call89 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef %55) #3
  store i32 %call89, i32* %ret, align 4
  %56 = load i32, i32* %ret, align 4
  %cmp90 = icmp ne i32 %56, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body88
  br label %cleanup

if.end93:                                         ; preds = %do.body88
  br label %do.end94

do.end94:                                         ; preds = %if.end93
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %if.then92, %if.then85, %if.then78, %if.then71, %if.then64, %if.then57, %if.then48, %if.then36, %if.then29, %if.then19, %if.then12, %if.then
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %aux) #3
  %57 = load i32, i32* %ret, align 4
  ret i32 %57
}

declare dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y, i8 noundef zeroext %assign) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %assign.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %limb_mask = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  store i8 %assign, i8* %assign.addr, align 1
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i8, i8* %assign.addr, align 1
  %conv = zext i8 %0 to i64
  %call = call i64 @mbedtls_ct_mpi_uint_mask(i64 noundef %conv) #3
  store i64 %call, i64* %limb_mask, align 8
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n, align 8
  %call4 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %1, i64 noundef %3) #3
  store i32 %call4, i32* %ret, align 4
  %cmp = icmp ne i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body3
  br label %cleanup

if.end:                                           ; preds = %do.body3
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %4 = load i8, i8* %assign.addr, align 1
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 0
  %6 = load i32, i32* %s, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s7 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 0
  %8 = load i32, i32* %s7, align 8
  %call8 = call i32 @mbedtls_ct_cond_select_sign(i8 noundef zeroext %4, i32 noundef %6, i32 noundef %8) #3
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s9 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 0
  store i32 %call8, i32* %s9, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i32 0, i32 1
  %11 = load i64, i64* %n10, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 2
  %13 = load i64*, i64** %p, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 2
  %15 = load i64*, i64** %p11, align 8
  %16 = load i8, i8* %assign.addr, align 1
  call void @mbedtls_ct_mpi_uint_cond_assign(i64 noundef %11, i64* noundef %13, i64* noundef %15, i8 noundef zeroext %16) #3
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 1
  %18 = load i64, i64* %n12, align 8
  store i64 %18, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end6
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i32 0, i32 1
  %21 = load i64, i64* %n13, align 8
  %cmp14 = icmp ult i64 %19, %21
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %limb_mask, align 8
  %neg = xor i64 %22, -1
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p16 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i32 0, i32 2
  %24 = load i64*, i64** %p16, align 8
  %25 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %24, i64 %25
  %26 = load i64, i64* %arrayidx, align 8
  %and = and i64 %26, %neg
  store i64 %and, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %28 = load i32, i32* %ret, align 4
  ret i32 %28
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ct_cond_select_sign(i8 noundef zeroext %condition, i32 noundef %if1, i32 noundef %if0) #0 {
entry:
  %condition.addr = alloca i8, align 1
  %if1.addr = alloca i32, align 4
  %if0.addr = alloca i32, align 4
  %uif1 = alloca i32, align 4
  %uif0 = alloca i32, align 4
  %mask = alloca i32, align 4
  %ur = alloca i32, align 4
  store i8 %condition, i8* %condition.addr, align 1
  store i32 %if1, i32* %if1.addr, align 4
  store i32 %if0, i32* %if0.addr, align 4
  %0 = load i32, i32* %if1.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %uif1, align 4
  %1 = load i32, i32* %if0.addr, align 4
  %add1 = add nsw i32 %1, 1
  store i32 %add1, i32* %uif0, align 4
  %2 = load i8, i8* %condition.addr, align 1
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 1
  store i32 %shl, i32* %mask, align 4
  %3 = load i32, i32* %uif0, align 4
  %4 = load i32, i32* %mask, align 4
  %neg = xor i32 %4, -1
  %and = and i32 %3, %neg
  %5 = load i32, i32* %uif1, align 4
  %6 = load i32, i32* %mask, align 4
  %and2 = and i32 %5, %6
  %or = or i32 %and, %and2
  store i32 %or, i32* %ur, align 4
  %7 = load i32, i32* %ur, align 4
  %sub = sub nsw i32 %7, 1
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y, i8 noundef zeroext %swap) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %swap.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %s = alloca i32, align 4
  %i = alloca i64, align 8
  %limb_mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  store i8 %swap, i8* %swap.addr, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %2 = load i8, i8* %swap.addr, align 1
  %conv = zext i8 %2 to i64
  %call = call i64 @mbedtls_ct_mpi_uint_mask(i64 noundef %conv) #3
  store i64 %call, i64* %limb_mask, align 8
  br label %do.body3

do.body3:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 1
  %5 = load i64, i64* %n, align 8
  %call4 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %3, i64 noundef %5) #3
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body3
  br label %cleanup

if.end8:                                          ; preds = %do.body3
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %7, i32 0, i32 1
  %8 = load i64, i64* %n11, align 8
  %call12 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* noundef %6, i64 noundef %8) #3
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body10
  br label %cleanup

if.end16:                                         ; preds = %do.body10
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i32 0, i32 0
  %10 = load i32, i32* %s18, align 8
  store i32 %10, i32* %s, align 4
  %11 = load i8, i8* %swap.addr, align 1
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i32 0, i32 0
  %13 = load i32, i32* %s19, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 0
  %15 = load i32, i32* %s20, align 8
  %call21 = call i32 @mbedtls_ct_cond_select_sign(i8 noundef zeroext %11, i32 noundef %13, i32 noundef %15) #3
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 0
  store i32 %call21, i32* %s22, align 8
  %17 = load i8, i8* %swap.addr, align 1
  %18 = load i32, i32* %s, align 4
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %19, i32 0, i32 0
  %20 = load i32, i32* %s23, align 8
  %call24 = call i32 @mbedtls_ct_cond_select_sign(i8 noundef zeroext %17, i32 noundef %18, i32 noundef %20) #3
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s25 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 0
  store i32 %call24, i32* %s25, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end17
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i32 0, i32 1
  %24 = load i64, i64* %n26, align 8
  %cmp27 = icmp ult i64 %22, %24
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i32 0, i32 2
  %26 = load i64*, i64** %p, align 8
  %27 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %26, i64 %27
  %28 = load i64, i64* %arrayidx, align 8
  store i64 %28, i64* %tmp, align 8
  %29 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %29, i32 0, i32 2
  %30 = load i64*, i64** %p29, align 8
  %31 = load i64, i64* %i, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %30, i64 %31
  %32 = load i64, i64* %arrayidx30, align 8
  %33 = load i64, i64* %limb_mask, align 8
  %neg = xor i64 %33, -1
  %and = and i64 %32, %neg
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i32 0, i32 2
  %35 = load i64*, i64** %p31, align 8
  %36 = load i64, i64* %i, align 8
  %arrayidx32 = getelementptr inbounds i64, i64* %35, i64 %36
  %37 = load i64, i64* %arrayidx32, align 8
  %38 = load i64, i64* %limb_mask, align 8
  %and33 = and i64 %37, %38
  %or = or i64 %and, %and33
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %39, i32 0, i32 2
  %40 = load i64*, i64** %p34, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %or, i64* %arrayidx35, align 8
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p36 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %42, i32 0, i32 2
  %43 = load i64*, i64** %p36, align 8
  %44 = load i64, i64* %i, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %43, i64 %44
  %45 = load i64, i64* %arrayidx37, align 8
  %46 = load i64, i64* %limb_mask, align 8
  %neg38 = xor i64 %46, -1
  %and39 = and i64 %45, %neg38
  %47 = load i64, i64* %tmp, align 8
  %48 = load i64, i64* %limb_mask, align 8
  %and40 = and i64 %47, %48
  %or41 = or i64 %and39, %and40
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p42 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %49, i32 0, i32 2
  %50 = load i64*, i64** %p42, align 8
  %51 = load i64, i64* %i, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %or41, i64* %arrayidx43, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i64, i64* %i, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then15, %if.then7
  %53 = load i32, i32* %ret, align 4
  store i32 %53, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %54 = load i32, i32* %retval, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Y, i32* noundef %ret) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %Y.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %cond = alloca i32, align 4
  %done = alloca i32, align 4
  %X_is_negative = alloca i32, align 4
  %Y_is_negative = alloca i32, align 4
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %Y, %struct.mbedtls_mpi** %Y.addr, align 8
  store i32* %ret, i32** %ret.addr, align 8
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
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1
  %1 = load i64, i64* %n, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %n5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %2, i32 0, i32 1
  %3 = load i64, i64* %n5, align 8
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i32 0, i32 0
  %5 = load i32, i32* %s, align 8
  %and = and i32 %5, 2
  %shr = ashr i32 %and, 1
  store i32 %shr, i32* %X_is_negative, align 4
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %s6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %6, i32 0, i32 0
  %7 = load i32, i32* %s6, align 8
  %and7 = and i32 %7, 2
  %shr8 = ashr i32 %and7, 1
  store i32 %shr8, i32* %Y_is_negative, align 4
  %8 = load i32, i32* %X_is_negative, align 4
  %9 = load i32, i32* %Y_is_negative, align 4
  %xor = xor i32 %8, %9
  store i32 %xor, i32* %cond, align 4
  %10 = load i32, i32* %cond, align 4
  %11 = load i32, i32* %X_is_negative, align 4
  %and9 = and i32 %10, %11
  %12 = load i32*, i32** %ret.addr, align 8
  store i32 %and9, i32* %12, align 4
  %13 = load i32, i32* %cond, align 4
  store i32 %13, i32* %done, align 4
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %n10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 1
  %15 = load i64, i64* %n10, align 8
  store i64 %15, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i64, i64* %i, align 8
  %cmp11 = icmp ugt i64 %16, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p, align 8
  %19 = load i64, i64* %i, align 8
  %sub = sub i64 %19, 1
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %sub
  %20 = load i64, i64* %arrayidx, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i32 0, i32 2
  %22 = load i64*, i64** %p12, align 8
  %23 = load i64, i64* %i, align 8
  %sub13 = sub i64 %23, 1
  %arrayidx14 = getelementptr inbounds i64, i64* %22, i64 %sub13
  %24 = load i64, i64* %arrayidx14, align 8
  %call = call i32 @mbedtls_ct_mpi_uint_lt(i64 noundef %20, i64 noundef %24) #3
  store i32 %call, i32* %cond, align 4
  %25 = load i32, i32* %cond, align 4
  %26 = load i32, i32* %done, align 4
  %sub15 = sub i32 1, %26
  %and16 = and i32 %25, %sub15
  %27 = load i32, i32* %X_is_negative, align 4
  %and17 = and i32 %and16, %27
  %28 = load i32*, i32** %ret.addr, align 8
  %29 = load i32, i32* %28, align 4
  %or = or i32 %29, %and17
  store i32 %or, i32* %28, align 4
  %30 = load i32, i32* %cond, align 4
  %31 = load i32, i32* %done, align 4
  %or18 = or i32 %31, %30
  store i32 %or18, i32* %done, align 4
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %p19 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i32 0, i32 2
  %33 = load i64*, i64** %p19, align 8
  %34 = load i64, i64* %i, align 8
  %sub20 = sub i64 %34, 1
  %arrayidx21 = getelementptr inbounds i64, i64* %33, i64 %sub20
  %35 = load i64, i64* %arrayidx21, align 8
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y.addr, align 8
  %p22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %36, i32 0, i32 2
  %37 = load i64*, i64** %p22, align 8
  %38 = load i64, i64* %i, align 8
  %sub23 = sub i64 %38, 1
  %arrayidx24 = getelementptr inbounds i64, i64* %37, i64 %sub23
  %39 = load i64, i64* %arrayidx24, align 8
  %call25 = call i32 @mbedtls_ct_mpi_uint_lt(i64 noundef %35, i64 noundef %39) #3
  store i32 %call25, i32* %cond, align 4
  %40 = load i32, i32* %cond, align 4
  %41 = load i32, i32* %done, align 4
  %sub26 = sub i32 1, %41
  %and27 = and i32 %40, %sub26
  %42 = load i32, i32* %X_is_negative, align 4
  %sub28 = sub i32 1, %42
  %and29 = and i32 %and27, %sub28
  %43 = load i32*, i32** %ret.addr, align 8
  %44 = load i32, i32* %43, align 4
  %or30 = or i32 %44, %and29
  store i32 %or30, i32* %43, align 4
  %45 = load i32, i32* %cond, align 4
  %46 = load i32, i32* %done, align 4
  %or31 = or i32 %46, %45
  store i32 %or31, i32* %done, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i64, i64* %i, align 8
  %dec = add i64 %47, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %48 = load i32, i32* %retval, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64 noundef %output_max_len, i64* noundef %olen) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_max_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %plaintext_max_size = alloca i64, align 8
  %pad_count = alloca i64, align 8
  %bad = alloca i32, align 4
  %pad_done = alloca i8, align 1
  %plaintext_size = alloca i64, align 8
  %output_too_large = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_max_len, i64* %output_max_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %pad_count, align 8
  store i32 0, i32* %bad, align 4
  store i8 0, i8* %pad_done, align 1
  store i64 0, i64* %plaintext_size, align 8
  %0 = load i64, i64* %output_max_len.addr, align 8
  %1 = load i64, i64* %ilen.addr, align 8
  %sub = sub i64 %1, 11
  %cmp = icmp ugt i64 %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %ilen.addr, align 8
  %sub1 = sub i64 %2, 11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %output_max_len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub1, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %plaintext_max_size, align 8
  %4 = load i8*, i8** %input.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %bad, align 4
  %or = or i32 %6, %conv
  store i32 %or, i32* %bad, align 4
  %7 = load i8*, i8** %input.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  %xor = xor i32 %conv3, 2
  %9 = load i32, i32* %bad, align 4
  %or4 = or i32 %9, %xor
  store i32 %or4, i32* %bad, align 4
  store i64 2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %ilen.addr, align 8
  %cmp5 = icmp ult i64 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %15 = load i8*, i8** %input.addr, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %17 to i32
  %sub11 = sub nsw i32 0, %conv10
  %conv12 = trunc i32 %sub11 to i8
  %conv13 = zext i8 %conv12 to i32
  %or14 = or i32 %conv8, %conv13
  %shr = ashr i32 %or14, 7
  %xor15 = xor i32 %shr, 1
  %18 = load i8, i8* %pad_done, align 1
  %conv16 = zext i8 %18 to i32
  %or17 = or i32 %conv16, %xor15
  %conv18 = trunc i32 %or17 to i8
  store i8 %conv18, i8* %pad_done, align 1
  %19 = load i8, i8* %pad_done, align 1
  %conv19 = zext i8 %19 to i32
  %20 = load i8, i8* %pad_done, align 1
  %conv20 = zext i8 %20 to i32
  %sub21 = sub nsw i32 0, %conv20
  %conv22 = trunc i32 %sub21 to i8
  %conv23 = zext i8 %conv22 to i32
  %or24 = or i32 %conv19, %conv23
  %shr25 = ashr i32 %or24, 7
  %xor26 = xor i32 %shr25, 1
  %conv27 = sext i32 %xor26 to i64
  %21 = load i64, i64* %pad_count, align 8
  %add = add i64 %21, %conv27
  store i64 %add, i64* %pad_count, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, i64* %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %23 = load i8, i8* %pad_done, align 1
  %conv28 = zext i8 %23 to i32
  %call = call i32 @mbedtls_ct_uint_if(i32 noundef %conv28, i32 noundef 0, i32 noundef 1) #3
  %24 = load i32, i32* %bad, align 4
  %or29 = or i32 %24, %call
  store i32 %or29, i32* %bad, align 4
  %25 = load i64, i64* %pad_count, align 8
  %call30 = call i32 @mbedtls_ct_size_gt(i64 noundef 8, i64 noundef %25) #3
  %26 = load i32, i32* %bad, align 4
  %or31 = or i32 %26, %call30
  store i32 %or31, i32* %bad, align 4
  %27 = load i32, i32* %bad, align 4
  %28 = load i64, i64* %plaintext_max_size, align 8
  %conv32 = trunc i64 %28 to i32
  %29 = load i64, i64* %ilen.addr, align 8
  %30 = load i64, i64* %pad_count, align 8
  %sub33 = sub i64 %29, %30
  %sub34 = sub i64 %sub33, 3
  %conv35 = trunc i64 %sub34 to i32
  %call36 = call i32 @mbedtls_ct_uint_if(i32 noundef %27, i32 noundef %conv32, i32 noundef %conv35) #3
  %conv37 = zext i32 %call36 to i64
  store i64 %conv37, i64* %plaintext_size, align 8
  %31 = load i64, i64* %plaintext_size, align 8
  %32 = load i64, i64* %plaintext_max_size, align 8
  %call38 = call i32 @mbedtls_ct_size_gt(i64 noundef %31, i64 noundef %32) #3
  store i32 %call38, i32* %output_too_large, align 4
  %33 = load i32, i32* %bad, align 4
  %34 = load i32, i32* %output_too_large, align 4
  %call39 = call i32 @mbedtls_ct_uint_if(i32 noundef %34, i32 noundef 17408, i32 noundef 0) #3
  %call40 = call i32 @mbedtls_ct_uint_if(i32 noundef %33, i32 noundef 16640, i32 noundef %call39) #3
  %sub41 = sub nsw i32 0, %call40
  store i32 %sub41, i32* %ret, align 4
  %35 = load i32, i32* %bad, align 4
  %36 = load i32, i32* %output_too_large, align 4
  %or42 = or i32 %35, %36
  %call43 = call i32 @mbedtls_ct_uint_mask(i32 noundef %or42) #3
  store i32 %call43, i32* %bad, align 4
  store i64 11, i64* %i, align 8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %ilen.addr, align 8
  %cmp45 = icmp ult i64 %37, %38
  br i1 %cmp45, label %for.body47, label %for.end53

for.body47:                                       ; preds = %for.cond44
  %39 = load i32, i32* %bad, align 4
  %neg = xor i32 %39, -1
  %40 = load i8*, i8** %input.addr, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %42 to i32
  %and = and i32 %conv49, %neg
  %conv50 = trunc i32 %and to i8
  store i8 %conv50, i8* %arrayidx48, align 1
  br label %for.inc51

for.inc51:                                        ; preds = %for.body47
  %43 = load i64, i64* %i, align 8
  %inc52 = add i64 %43, 1
  store i64 %inc52, i64* %i, align 8
  br label %for.cond44, !llvm.loop !14

for.end53:                                        ; preds = %for.cond44
  %44 = load i32, i32* %output_too_large, align 4
  %45 = load i64, i64* %plaintext_max_size, align 8
  %conv54 = trunc i64 %45 to i32
  %46 = load i64, i64* %plaintext_size, align 8
  %conv55 = trunc i64 %46 to i32
  %call56 = call i32 @mbedtls_ct_uint_if(i32 noundef %44, i32 noundef %conv54, i32 noundef %conv55) #3
  %conv57 = zext i32 %call56 to i64
  store i64 %conv57, i64* %plaintext_size, align 8
  %47 = load i8*, i8** %input.addr, align 8
  %48 = load i64, i64* %ilen.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %48
  %49 = load i64, i64* %plaintext_max_size, align 8
  %idx.neg = sub i64 0, %49
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %50 = load i64, i64* %plaintext_max_size, align 8
  %51 = load i64, i64* %plaintext_max_size, align 8
  %52 = load i64, i64* %plaintext_size, align 8
  %sub59 = sub i64 %51, %52
  call void @mbedtls_ct_mem_move_to_left(i8* noundef %add.ptr58, i64 noundef %50, i64 noundef %sub59) #3
  %53 = load i64, i64* %output_max_len.addr, align 8
  %cmp60 = icmp ne i64 %53, 0
  br i1 %cmp60, label %if.then, label %if.end

if.then:                                          ; preds = %for.end53
  %54 = load i8*, i8** %output.addr, align 8
  %55 = load i8*, i8** %input.addr, align 8
  %56 = load i64, i64* %ilen.addr, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %55, i64 %56
  %57 = load i64, i64* %plaintext_max_size, align 8
  %idx.neg63 = sub i64 0, %57
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr62, i64 %idx.neg63
  %58 = load i64, i64* %plaintext_max_size, align 8
  %call65 = call i8* @memcpy(i8* noundef %54, i8* noundef %add.ptr64, i64 noundef %58) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end53
  %59 = load i64, i64* %plaintext_size, align 8
  %60 = load i64*, i64** %olen.addr, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %ret, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ct_size_gt(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %y.addr, align 8
  %1 = load i64, i64* %x.addr, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 63
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_ct_mem_move_to_left(i8* noundef %start, i64 noundef %total, i64 noundef %offset) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %total.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %no_op = alloca i32, align 4
  %current = alloca i8, align 1
  %next = alloca i8, align 1
  store i8* %start, i8** %start.addr, align 8
  store i64 %total, i64* %total.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  store i8* %0, i8** %buf, align 8
  %1 = load i64, i64* %total.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end20

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %total.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %total.addr, align 8
  %5 = load i64, i64* %offset.addr, align 8
  %sub = sub i64 %4, %5
  %6 = load i64, i64* %i, align 8
  %call = call i32 @mbedtls_ct_size_gt(i64 noundef %sub, i64 noundef %6) #3
  store i32 %call, i32* %no_op, align 4
  store i64 0, i64* %n, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i64, i64* %n, align 8
  %8 = load i64, i64* %total.addr, align 8
  %sub3 = sub i64 %8, 1
  %cmp4 = icmp ult i64 %7, %sub3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %9 = load i8*, i8** %buf, align 8
  %10 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load volatile i8, i8* %arrayidx, align 1
  store i8 %11, i8* %current, align 1
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %n, align 8
  %add = add i64 %13, 1
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %add
  %14 = load volatile i8, i8* %arrayidx6, align 1
  store i8 %14, i8* %next, align 1
  %15 = load i32, i32* %no_op, align 4
  %16 = load i8, i8* %current, align 1
  %conv = zext i8 %16 to i32
  %17 = load i8, i8* %next, align 1
  %conv7 = zext i8 %17 to i32
  %call8 = call i32 @mbedtls_ct_uint_if(i32 noundef %15, i32 noundef %conv, i32 noundef %conv7) #3
  %conv9 = trunc i32 %call8 to i8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %n, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %19
  store volatile i8 %conv9, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i64, i64* %n, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond2, !llvm.loop !15

for.end:                                          ; preds = %for.cond2
  %21 = load i32, i32* %no_op, align 4
  %22 = load i8*, i8** %buf, align 8
  %23 = load i64, i64* %total.addr, align 8
  %sub11 = sub i64 %23, 1
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 %sub11
  %24 = load volatile i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %24 to i32
  %call14 = call i32 @mbedtls_ct_uint_if(i32 noundef %21, i32 noundef %conv13, i32 noundef 0) #3
  %conv15 = trunc i32 %call14 to i8
  %25 = load i8*, i8** %buf, align 8
  %26 = load i64, i64* %total.addr, align 8
  %sub16 = sub i64 %26, 1
  %arrayidx17 = getelementptr inbounds i8, i8* %25, i64 %sub16
  store volatile i8 %conv15, i8* %arrayidx17, align 1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %27 = load i64, i64* %i, align 8
  %inc19 = add i64 %27, 1
  store i64 %inc19, i64* %i, align 8
  br label %for.cond, !llvm.loop !16

for.end20:                                        ; preds = %if.then, %for.cond
  ret void
}

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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
