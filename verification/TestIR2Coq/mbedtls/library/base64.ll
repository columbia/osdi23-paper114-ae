; ModuleID = 'base64.c'
source_filename = "base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"  Base64 encoding test: \00", align 1
@base64_test_dec = internal constant [64 x i8] c"$HnV\87bZ\BD\BF\17\D9\A2\C4\17\1A\01\94\ED\8F\1E\11\B3\D7\09\0C\B6\E9\10o\22\EE\13\CA\B3\07\05v\C9\FA1l\084\FF\8D\C2l8\00C\E9T\97\AFPK\D1A\BA\951Z\0B\97", align 16
@base64_test_enc = internal constant [89 x i8] c"JEhuVodiWr2/F9mixBcaAZTtjx4Rs9cJDLbpEG8i7hPKswcFdsn6MWwINP+Nwmw4AEPpVJevUEvRQbqVMVoLlw==\00", align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"passed\0A  Base64 decoding test: \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"passed\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_base64_encode(i8* noundef %dst, i64 noundef %dlen, i64* noundef %olen, i8* noundef %src, i64 noundef %slen) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %C1 = alloca i32, align 4
  %C2 = alloca i32, align 4
  %C3 = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  %0 = load i64, i64* %slen.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %1, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %slen.addr, align 8
  %div = udiv i64 %2, 3
  %3 = load i64, i64* %slen.addr, align 8
  %rem = urem i64 %3, 3
  %cmp1 = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp1 to i32
  %conv2 = sext i32 %conv to i64
  %add = add i64 %div, %conv2
  store i64 %add, i64* %n, align 8
  %4 = load i64, i64* %n, align 8
  %cmp3 = icmp ugt i64 %4, 4611686018427387903
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i64*, i64** %olen.addr, align 8
  store i64 -1, i64* %5, align 8
  store i32 -42, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load i64, i64* %n, align 8
  %mul = mul i64 %6, 4
  store i64 %mul, i64* %n, align 8
  %7 = load i64, i64* %dlen.addr, align 8
  %8 = load i64, i64* %n, align 8
  %add7 = add i64 %8, 1
  %cmp8 = icmp ult i64 %7, %add7
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load i8*, i8** %dst.addr, align 8
  %cmp10 = icmp eq i8* null, %9
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  %10 = load i64, i64* %n, align 8
  %add13 = add i64 %10, 1
  %11 = load i64*, i64** %olen.addr, align 8
  store i64 %add13, i64* %11, align 8
  store i32 -42, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %12 = load i64, i64* %slen.addr, align 8
  %div15 = udiv i64 %12, 3
  %mul16 = mul i64 %div15, 3
  store i64 %mul16, i64* %n, align 8
  store i64 0, i64* %i, align 8
  %13 = load i8*, i8** %dst.addr, align 8
  store i8* %13, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %n, align 8
  %cmp17 = icmp ult i64 %14, %15
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = zext i8 %17 to i32
  store i32 %conv19, i32* %C1, align 4
  %18 = load i8*, i8** %src.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr20, i8** %src.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv21 = zext i8 %19 to i32
  store i32 %conv21, i32* %C2, align 4
  %20 = load i8*, i8** %src.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr22, i8** %src.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv23 = zext i8 %21 to i32
  store i32 %conv23, i32* %C3, align 4
  %22 = load i32, i32* %C1, align 4
  %shr = ashr i32 %22, 2
  %and = and i32 %shr, 63
  %conv24 = trunc i32 %and to i8
  %call = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv24) #3
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr25, i8** %p, align 8
  store i8 %call, i8* %23, align 1
  %24 = load i32, i32* %C1, align 4
  %and26 = and i32 %24, 3
  %shl = shl i32 %and26, 4
  %25 = load i32, i32* %C2, align 4
  %shr27 = ashr i32 %25, 4
  %add28 = add nsw i32 %shl, %shr27
  %and29 = and i32 %add28, 63
  %conv30 = trunc i32 %and29 to i8
  %call31 = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv30) #3
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8
  store i8 %call31, i8* %26, align 1
  %27 = load i32, i32* %C2, align 4
  %and33 = and i32 %27, 15
  %shl34 = shl i32 %and33, 2
  %28 = load i32, i32* %C3, align 4
  %shr35 = ashr i32 %28, 6
  %add36 = add nsw i32 %shl34, %shr35
  %and37 = and i32 %add36, 63
  %conv38 = trunc i32 %and37 to i8
  %call39 = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv38) #3
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8
  store i8 %call39, i8* %29, align 1
  %30 = load i32, i32* %C3, align 4
  %and41 = and i32 %30, 63
  %conv42 = trunc i32 %and41 to i8
  %call43 = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv42) #3
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8
  store i8 %call43, i8* %31, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i64, i64* %i, align 8
  %add45 = add i64 %32, 3
  store i64 %add45, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* %slen.addr, align 8
  %cmp46 = icmp ult i64 %33, %34
  br i1 %cmp46, label %if.then48, label %if.end82

if.then48:                                        ; preds = %for.end
  %35 = load i8*, i8** %src.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr49, i8** %src.addr, align 8
  %36 = load i8, i8* %35, align 1
  %conv50 = zext i8 %36 to i32
  store i32 %conv50, i32* %C1, align 4
  %37 = load i64, i64* %i, align 8
  %add51 = add i64 %37, 1
  %38 = load i64, i64* %slen.addr, align 8
  %cmp52 = icmp ult i64 %add51, %38
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then48
  %39 = load i8*, i8** %src.addr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr54, i8** %src.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv55 = zext i8 %40 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv55, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %C2, align 4
  %41 = load i32, i32* %C1, align 4
  %shr56 = ashr i32 %41, 2
  %and57 = and i32 %shr56, 63
  %conv58 = trunc i32 %and57 to i8
  %call59 = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv58) #3
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8
  store i8 %call59, i8* %42, align 1
  %43 = load i32, i32* %C1, align 4
  %and61 = and i32 %43, 3
  %shl62 = shl i32 %and61, 4
  %44 = load i32, i32* %C2, align 4
  %shr63 = ashr i32 %44, 4
  %add64 = add nsw i32 %shl62, %shr63
  %and65 = and i32 %add64, 63
  %conv66 = trunc i32 %and65 to i8
  %call67 = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv66) #3
  %45 = load i8*, i8** %p, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8
  store i8 %call67, i8* %45, align 1
  %46 = load i64, i64* %i, align 8
  %add69 = add i64 %46, 1
  %47 = load i64, i64* %slen.addr, align 8
  %cmp70 = icmp ult i64 %add69, %47
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %cond.end
  %48 = load i32, i32* %C2, align 4
  %and73 = and i32 %48, 15
  %shl74 = shl i32 %and73, 2
  %and75 = and i32 %shl74, 63
  %conv76 = trunc i32 %and75 to i8
  %call77 = call zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext %conv76) #3
  %49 = load i8*, i8** %p, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr78, i8** %p, align 8
  store i8 %call77, i8* %49, align 1
  br label %if.end80

if.else:                                          ; preds = %cond.end
  %50 = load i8*, i8** %p, align 8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr79, i8** %p, align 8
  store i8 61, i8* %50, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then72
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr81, i8** %p, align 8
  store i8 61, i8* %51, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.end80, %for.end
  %52 = load i8*, i8** %p, align 8
  %53 = load i8*, i8** %dst.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %54 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %54, align 8
  %55 = load i8*, i8** %p, align 8
  store i8 0, i8* %55, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end82, %if.then12, %if.then5, %if.then
  %56 = load i32, i32* %retval, align 4
  ret i32 %56
}

declare dso_local zeroext i8 @mbedtls_ct_base64_enc_char(i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_base64_decode(i8* noundef %dst, i64 noundef %dlen, i64* noundef %olen, i8* noundef %src, i64 noundef %slen) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %src.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %x = alloca i32, align 4
  %accumulated_digits = alloca i32, align 4
  %equals = alloca i32, align 4
  %spaces_present = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store i32 0, i32* %accumulated_digits, align 4
  store i32 0, i32* %equals, align 4
  store i32 0, i32* %spaces_present, align 4
  store i64 0, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %slen.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %spaces_present, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %slen.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  store i32 1, i32* %spaces_present, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %slen.addr, align 8
  %cmp4 = icmp eq i64 %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %11 = load i64, i64* %slen.addr, align 8
  %12 = load i64, i64* %i, align 8
  %sub = sub i64 %11, %12
  %cmp6 = icmp uge i64 %sub, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8*, i8** %src.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv9, 13
  br i1 %cmp10, label %land.lhs.true12, label %if.end18

land.lhs.true12:                                  ; preds = %land.lhs.true
  %16 = load i8*, i8** %src.addr, align 8
  %17 = load i64, i64* %i, align 8
  %add = add i64 %17, 1
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %add
  %18 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 10
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true12
  br label %for.inc

if.end18:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end
  %19 = load i8*, i8** %src.addr, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 %20
  %21 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 10
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  br label %for.inc

if.end24:                                         ; preds = %if.end18
  %22 = load i32, i32* %spaces_present, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end24
  store i32 -44, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end24
  %23 = load i8*, i8** %src.addr, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %cmp29 = icmp sgt i32 %conv28, 127
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  store i32 -44, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  %26 = load i8*, i8** %src.addr, align 8
  %27 = load i64, i64* %i, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %28 to i32
  %cmp35 = icmp eq i32 %conv34, 61
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  %29 = load i32, i32* %equals, align 4
  %inc38 = add i32 %29, 1
  store i32 %inc38, i32* %equals, align 4
  %cmp39 = icmp ugt i32 %inc38, 2
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then37
  store i32 -44, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then37
  br label %if.end53

if.else:                                          ; preds = %if.end32
  %30 = load i32, i32* %equals, align 4
  %cmp43 = icmp ne i32 %30, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else
  store i32 -44, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.else
  %31 = load i8*, i8** %src.addr, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %31, i64 %32
  %33 = load i8, i8* %arrayidx47, align 1
  %call = call signext i8 @mbedtls_ct_base64_dec_value(i8 noundef zeroext %33) #3
  %conv48 = sext i8 %call to i32
  %cmp49 = icmp slt i32 %conv48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end46
  store i32 -44, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end42
  %34 = load i64, i64* %n, align 8
  %inc54 = add i64 %34, 1
  store i64 %inc54, i64* %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %if.then23, %if.then17
  %35 = load i64, i64* %i, align 8
  %inc55 = add i64 %35, 1
  store i64 %inc55, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %if.then, %for.cond
  %36 = load i64, i64* %n, align 8
  %cmp56 = icmp eq i64 %36, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end
  %37 = load i64*, i64** %olen.addr, align 8
  store i64 0, i64* %37, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %for.end
  %38 = load i64, i64* %n, align 8
  %shr = lshr i64 %38, 3
  %mul = mul i64 6, %shr
  %39 = load i64, i64* %n, align 8
  %and = and i64 %39, 7
  %mul60 = mul i64 6, %and
  %add61 = add i64 %mul60, 7
  %shr62 = lshr i64 %add61, 3
  %add63 = add i64 %mul, %shr62
  store i64 %add63, i64* %n, align 8
  %40 = load i32, i32* %equals, align 4
  %conv64 = zext i32 %40 to i64
  %41 = load i64, i64* %n, align 8
  %sub65 = sub i64 %41, %conv64
  store i64 %sub65, i64* %n, align 8
  %42 = load i8*, i8** %dst.addr, align 8
  %cmp66 = icmp eq i8* %42, null
  br i1 %cmp66, label %if.then70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end59
  %43 = load i64, i64* %dlen.addr, align 8
  %44 = load i64, i64* %n, align 8
  %cmp68 = icmp ult i64 %43, %44
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %lor.lhs.false, %if.end59
  %45 = load i64, i64* %n, align 8
  %46 = load i64*, i64** %olen.addr, align 8
  store i64 %45, i64* %46, align 8
  store i32 -42, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %equals, align 4
  store i32 0, i32* %x, align 4
  %47 = load i8*, i8** %dst.addr, align 8
  store i8* %47, i8** %p, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc121, %if.end71
  %48 = load i64, i64* %i, align 8
  %cmp73 = icmp ugt i64 %48, 0
  br i1 %cmp73, label %for.body75, label %for.end123

for.body75:                                       ; preds = %for.cond72
  %49 = load i8*, i8** %src.addr, align 8
  %50 = load i8, i8* %49, align 1
  %conv76 = zext i8 %50 to i32
  %cmp77 = icmp eq i32 %conv76, 13
  br i1 %cmp77, label %if.then87, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %for.body75
  %51 = load i8*, i8** %src.addr, align 8
  %52 = load i8, i8* %51, align 1
  %conv80 = zext i8 %52 to i32
  %cmp81 = icmp eq i32 %conv80, 10
  br i1 %cmp81, label %if.then87, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %53 = load i8*, i8** %src.addr, align 8
  %54 = load i8, i8* %53, align 1
  %conv84 = zext i8 %54 to i32
  %cmp85 = icmp eq i32 %conv84, 32
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %lor.lhs.false83, %lor.lhs.false79, %for.body75
  br label %for.inc121

if.end88:                                         ; preds = %lor.lhs.false83
  %55 = load i32, i32* %x, align 4
  %shl = shl i32 %55, 6
  store i32 %shl, i32* %x, align 4
  %56 = load i8*, i8** %src.addr, align 8
  %57 = load i8, i8* %56, align 1
  %conv89 = zext i8 %57 to i32
  %cmp90 = icmp eq i32 %conv89, 61
  br i1 %cmp90, label %if.then92, label %if.else94

if.then92:                                        ; preds = %if.end88
  %58 = load i32, i32* %equals, align 4
  %inc93 = add i32 %58, 1
  store i32 %inc93, i32* %equals, align 4
  br label %if.end97

if.else94:                                        ; preds = %if.end88
  %59 = load i8*, i8** %src.addr, align 8
  %60 = load i8, i8* %59, align 1
  %call95 = call signext i8 @mbedtls_ct_base64_dec_value(i8 noundef zeroext %60) #3
  %conv96 = sext i8 %call95 to i32
  %61 = load i32, i32* %x, align 4
  %or = or i32 %61, %conv96
  store i32 %or, i32* %x, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then92
  %62 = load i32, i32* %accumulated_digits, align 4
  %inc98 = add i32 %62, 1
  store i32 %inc98, i32* %accumulated_digits, align 4
  %cmp99 = icmp eq i32 %inc98, 4
  br i1 %cmp99, label %if.then101, label %if.end120

if.then101:                                       ; preds = %if.end97
  store i32 0, i32* %accumulated_digits, align 4
  %63 = load i32, i32* %x, align 4
  %shr102 = lshr i32 %63, 16
  %and103 = and i32 %shr102, 255
  %conv104 = trunc i32 %and103 to i8
  %64 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv104, i8* %64, align 1
  %65 = load i32, i32* %equals, align 4
  %cmp105 = icmp ule i32 %65, 1
  br i1 %cmp105, label %if.then107, label %if.end112

if.then107:                                       ; preds = %if.then101
  %66 = load i32, i32* %x, align 4
  %shr108 = lshr i32 %66, 8
  %and109 = and i32 %shr108, 255
  %conv110 = trunc i32 %and109 to i8
  %67 = load i8*, i8** %p, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr111, i8** %p, align 8
  store i8 %conv110, i8* %67, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.then101
  %68 = load i32, i32* %equals, align 4
  %cmp113 = icmp ule i32 %68, 0
  br i1 %cmp113, label %if.then115, label %if.end119

if.then115:                                       ; preds = %if.end112
  %69 = load i32, i32* %x, align 4
  %and116 = and i32 %69, 255
  %conv117 = trunc i32 %and116 to i8
  %70 = load i8*, i8** %p, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr118, i8** %p, align 8
  store i8 %conv117, i8* %70, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %if.end112
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end97
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120, %if.then87
  %71 = load i64, i64* %i, align 8
  %dec = add i64 %71, -1
  store i64 %dec, i64* %i, align 8
  %72 = load i8*, i8** %src.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr122, i8** %src.addr, align 8
  br label %for.cond72, !llvm.loop !8

for.end123:                                       ; preds = %for.cond72
  %73 = load i8*, i8** %p, align 8
  %74 = load i8*, i8** %dst.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %73 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %75 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %75, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end123, %if.then70, %if.then58, %if.then51, %if.then45, %if.then41, %if.then31, %if.then25
  %76 = load i32, i32* %retval, align 4
  ret i32 %76
}

declare dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 noundef zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_base64_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %src = alloca i8*, align 8
  %buffer = alloca [128 x i8], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @base64_test_dec, i64 0, i64 0), i8** %src, align 8
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i64 0, i64 0
  %1 = load i8*, i8** %src, align 8
  %call1 = call i32 @mbedtls_base64_encode(i8* noundef %arraydecay, i64 noundef 128, i64* noundef %len, i8* noundef %1, i64 noundef 64) #3
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i64 0, i64 0
  %call4 = call i32 @memcmp(i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @base64_test_enc, i64 0, i64 0), i8* noundef %arraydecay3, i64 noundef 88) #4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp7 = icmp ne i32 %2, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  store i32 1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp12 = icmp ne i32 %3, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @base64_test_enc, i64 0, i64 0), i8** %src, align 8
  %arraydecay16 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i64 0, i64 0
  %4 = load i8*, i8** %src, align 8
  %call17 = call i32 @mbedtls_base64_decode(i8* noundef %arraydecay16, i64 noundef 128, i64* noundef %len, i8* noundef %4, i64 noundef 88) #3
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %arraydecay20 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i64 0, i64 0
  %call21 = call i32 @memcmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @base64_test_dec, i64 0, i64 0), i8* noundef %arraydecay20, i64 noundef 64) #4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %lor.lhs.false19, %if.end15
  %5 = load i32, i32* %verbose.addr, align 4
  %cmp24 = icmp ne i32 %5, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then23
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false19
  %6 = load i32, i32* %verbose.addr, align 4
  %cmp29 = icmp ne i32 %6, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.end27, %if.end10
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
