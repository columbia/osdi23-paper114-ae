; ModuleID = 'asn1parse.c'
source_filename = "asn1parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_asn1_bitstring = type { i64, i8, i8* }
%struct.mbedtls_asn1_sequence = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }
%struct.asn1_get_sequence_of_cb_ctx_t = type { i32, %struct.mbedtls_asn1_sequence* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_len(i8** noundef %p, i8* noundef %end, i64* noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -96, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 128
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = zext i8 %8 to i64
  %9 = load i64*, i64** %len.addr, align 8
  store i64 %conv4, i64* %9, align 8
  br label %if.end70

if.else:                                          ; preds = %if.end
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv5 = zext i8 %12 to i32
  %and6 = and i32 %conv5, 127
  switch i32 %and6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb28
    i32 4, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.else
  %13 = load i8*, i8** %end.addr, align 8
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %15 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %cmp10 = icmp slt i64 %sub.ptr.sub9, 2
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb
  store i32 -96, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %sw.bb
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx, align 1
  %conv14 = zext i8 %18 to i64
  %19 = load i64*, i64** %len.addr, align 8
  store i64 %conv14, i64* %19, align 8
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr, i8** %20, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.else
  %22 = load i8*, i8** %end.addr, align 8
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %24 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %cmp19 = icmp slt i64 %sub.ptr.sub18, 3
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb15
  store i32 -96, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %sw.bb15
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %27 to i64
  %shl = shl i64 %conv24, 8
  %28 = load i8**, i8*** %p.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %30 to i64
  %or = or i64 %shl, %conv26
  %31 = load i64*, i64** %len.addr, align 8
  store i64 %or, i64* %31, align 8
  %32 = load i8**, i8*** %p.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %33, i64 3
  store i8* %add.ptr27, i8** %32, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.else
  %34 = load i8*, i8** %end.addr, align 8
  %35 = load i8**, i8*** %p.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %36 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %cmp32 = icmp slt i64 %sub.ptr.sub31, 4
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %sw.bb28
  store i32 -96, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %sw.bb28
  %37 = load i8**, i8*** %p.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %39 to i64
  %shl38 = shl i64 %conv37, 16
  %40 = load i8**, i8*** %p.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %42 to i64
  %shl41 = shl i64 %conv40, 8
  %or42 = or i64 %shl38, %shl41
  %43 = load i8**, i8*** %p.addr, align 8
  %44 = load i8*, i8** %43, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %44, i64 3
  %45 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %45 to i64
  %or45 = or i64 %or42, %conv44
  %46 = load i64*, i64** %len.addr, align 8
  store i64 %or45, i64* %46, align 8
  %47 = load i8**, i8*** %p.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %48, i64 4
  store i8* %add.ptr46, i8** %47, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.else
  %49 = load i8*, i8** %end.addr, align 8
  %50 = load i8**, i8*** %p.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %sub.ptr.lhs.cast48 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast49 = ptrtoint i8* %51 to i64
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49
  %cmp51 = icmp slt i64 %sub.ptr.sub50, 5
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %sw.bb47
  store i32 -96, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %sw.bb47
  %52 = load i8**, i8*** %p.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %54 to i64
  %shl57 = shl i64 %conv56, 24
  %55 = load i8**, i8*** %p.addr, align 8
  %56 = load i8*, i8** %55, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %56, i64 2
  %57 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %57 to i64
  %shl60 = shl i64 %conv59, 16
  %or61 = or i64 %shl57, %shl60
  %58 = load i8**, i8*** %p.addr, align 8
  %59 = load i8*, i8** %58, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %59, i64 3
  %60 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %60 to i64
  %shl64 = shl i64 %conv63, 8
  %or65 = or i64 %or61, %shl64
  %61 = load i8**, i8*** %p.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %62, i64 4
  %63 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %63 to i64
  %or68 = or i64 %or65, %conv67
  %64 = load i64*, i64** %len.addr, align 8
  store i64 %or68, i64* %64, align 8
  %65 = load i8**, i8*** %p.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %add.ptr69 = getelementptr inbounds i8, i8* %66, i64 5
  store i8* %add.ptr69, i8** %65, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 -100, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end54, %if.end35, %if.end22, %if.end13
  br label %if.end70

if.end70:                                         ; preds = %sw.epilog, %if.then3
  %67 = load i64*, i64** %len.addr, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %end.addr, align 8
  %70 = load i8**, i8*** %p.addr, align 8
  %71 = load i8*, i8** %70, align 8
  %sub.ptr.lhs.cast71 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast72 = ptrtoint i8* %71 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %cmp74 = icmp ugt i64 %68, %sub.ptr.sub73
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end70
  store i32 -96, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end70
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end77, %if.then76, %sw.default, %if.then53, %if.then34, %if.then21, %if.then12, %if.then
  %72 = load i32, i32* %retval, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_tag(i8** noundef %p, i8* noundef %end, i64* noundef %len, i32 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %tag.addr = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -96, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %tag.addr, align 4
  %cmp1 = icmp ne i32 %conv, %6
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -98, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %7, align 8
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %11 = load i64*, i64** %len.addr, align 8
  %call = call i32 @mbedtls_asn1_get_len(i8** noundef %9, i8* noundef %10, i64* noundef %11) #4
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_bool(i8** noundef %p, i8* noundef %end, i32* noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 1) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %len, align 8
  %cmp1 = icmp ne i64 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -100, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, 0
  %7 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 1, i32 0
  %8 = load i32*, i32** %val.addr, align 8
  store i32 %cond, i32* %8, align 4
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %9, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_int(i8** noundef %p, i8* noundef %end, i32* noundef %val) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i32*, i32** %val.addr, align 8
  %call = call i32 @asn1_get_tagged_int(i8** noundef %0, i8* noundef %1, i32 noundef 2, i32* noundef %2) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_get_tagged_int(i8** noundef %p, i8* noundef %end, i32 noundef %tag, i32* noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %tag.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  store i32* %val, i32** %val.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i32, i32* %tag.addr, align 4
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef %2) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %len, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -100, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %conv, 128
  %cmp4 = icmp ne i32 %and, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -100, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %8 = load i64, i64* %len, align 8
  %cmp8 = icmp ugt i64 %8, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %conv10 = zext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %13, align 8
  %15 = load i64, i64* %len, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %len, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %16 = load i64, i64* %len, align 8
  %cmp13 = icmp ugt i64 %16, 4
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.end
  store i32 -100, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %while.end
  %17 = load i64, i64* %len, align 8
  %cmp17 = icmp eq i64 %17, 4
  br i1 %cmp17, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end16
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %conv19 = zext i8 %20 to i32
  %and20 = and i32 %conv19, 128
  %cmp21 = icmp ne i32 %and20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  store i32 -100, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %land.lhs.true, %if.end16
  %21 = load i32*, i32** %val.addr, align 8
  store i32 0, i32* %21, align 4
  br label %while.cond25

while.cond25:                                     ; preds = %while.body29, %if.end24
  %22 = load i64, i64* %len, align 8
  %dec26 = add i64 %22, -1
  store i64 %dec26, i64* %len, align 8
  %cmp27 = icmp ugt i64 %22, 0
  br i1 %cmp27, label %while.body29, label %while.end32

while.body29:                                     ; preds = %while.cond25
  %23 = load i32*, i32** %val.addr, align 8
  %24 = load i32, i32* %23, align 4
  %shl = shl i32 %24, 8
  %25 = load i8**, i8*** %p.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %conv30 = zext i8 %27 to i32
  %or = or i32 %shl, %conv30
  %28 = load i32*, i32** %val.addr, align 8
  store i32 %or, i32* %28, align 4
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr31, i8** %29, align 8
  br label %while.cond25, !llvm.loop !6

while.end32:                                      ; preds = %while.cond25
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end32, %if.then23, %if.then15, %if.then6, %if.then2, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_enum(i8** noundef %p, i8* noundef %end, i32* noundef %val) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %val.addr = alloca i32*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i32*, i32** %val.addr, align 8
  %call = call i32 @asn1_get_tagged_int(i8** noundef %0, i8* noundef %1, i32 noundef 10, i32* noundef %2) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_mpi(i8** noundef %p, i8* noundef %end, %struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 2) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %len, align 8
  %call1 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %3, i8* noundef %5, i64 noundef %6) #4
  store i32 %call1, i32* %ret, align 4
  %7 = load i64, i64* %len, align 8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %7
  store i8* %add.ptr, i8** %8, align 8
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_bitstring(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_bitstring* noundef %bs) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %bs.addr = alloca %struct.mbedtls_asn1_bitstring*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_bitstring* %bs, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %2, i32 0, i32 0
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 3) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %len1 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %4, i32 0, i32 0
  %5 = load i64, i64* %len1, align 8
  %cmp2 = icmp ult i64 %5, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -96, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %len5 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %6, i32 0, i32 0
  %7 = load i64, i64* %len5, align 8
  %sub = sub i64 %7, 1
  store i64 %sub, i64* %len5, align 8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %unused_bits = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %11, i32 0, i32 1
  store i8 %10, i8* %unused_bits, align 8
  %12 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %unused_bits6 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %12, i32 0, i32 1
  %13 = load i8, i8* %unused_bits6, align 8
  %conv = zext i8 %13 to i32
  %cmp7 = icmp sgt i32 %conv, 7
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  store i32 -100, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %14, align 8
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %p11 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %18, i32 0, i32 2
  store i8* %17, i8** %p11, align 8
  %19 = load %struct.mbedtls_asn1_bitstring*, %struct.mbedtls_asn1_bitstring** %bs.addr, align 8
  %len12 = getelementptr inbounds %struct.mbedtls_asn1_bitstring, %struct.mbedtls_asn1_bitstring* %19, i32 0, i32 0
  %20 = load i64, i64* %len12, align 8
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %20
  store i8* %add.ptr, i8** %21, align 8
  %23 = load i8**, i8*** %p.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %end.addr, align 8
  %cmp13 = icmp ne i8* %24, %25
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  store i32 -102, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then9, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_traverse_sequence_of(i8** noundef %p, i8* noundef %end, i8 noundef zeroext %tag_must_mask, i8 noundef zeroext %tag_must_val, i8 noundef zeroext %tag_may_mask, i8 noundef zeroext %tag_may_val, i32 (i8*, i32, i8*, i64)* noundef %cb, i8* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %tag_must_mask.addr = alloca i8, align 1
  %tag_must_val.addr = alloca i8, align 1
  %tag_may_mask.addr = alloca i8, align 1
  %tag_may_val.addr = alloca i8, align 1
  %cb.addr = alloca i32 (i8*, i32, i8*, i64)*, align 8
  %ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %tag = alloca i8, align 1
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8 %tag_must_mask, i8* %tag_must_mask.addr, align 1
  store i8 %tag_must_val, i8* %tag_must_val.addr, align 1
  store i8 %tag_may_mask, i8* %tag_may_mask.addr, align 1
  store i8 %tag_may_val, i8* %tag_may_val.addr, align 1
  store i32 (i8*, i32, i8*, i64)* %cb, i32 (i8*, i32, i8*, i64)** %cb.addr, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 48) #4
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
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8*, i8** %end.addr, align 8
  %cmp1 = icmp ne i8* %add.ptr, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -102, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end3
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %end.addr, align 8
  %cmp4 = icmp ult i8* %8, %9
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %tag, align 1
  %13 = load i8, i8* %tag, align 1
  %conv = zext i8 %13 to i32
  %14 = load i8, i8* %tag_must_mask.addr, align 1
  %conv5 = zext i8 %14 to i32
  %and = and i32 %conv, %conv5
  %15 = load i8, i8* %tag_must_val.addr, align 1
  %conv6 = zext i8 %15 to i32
  %cmp7 = icmp ne i32 %and, %conv6
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  store i32 -98, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %while.body
  %16 = load i8**, i8*** %p.addr, align 8
  %17 = load i8*, i8** %end.addr, align 8
  %call11 = call i32 @mbedtls_asn1_get_len(i8** noundef %16, i8* noundef %17, i64* noundef %len) #4
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %19 = load i8, i8* %tag, align 1
  %conv16 = zext i8 %19 to i32
  %20 = load i8, i8* %tag_may_mask.addr, align 1
  %conv17 = zext i8 %20 to i32
  %and18 = and i32 %conv16, %conv17
  %21 = load i8, i8* %tag_may_val.addr, align 1
  %conv19 = zext i8 %21 to i32
  %cmp20 = icmp eq i32 %and18, %conv19
  br i1 %cmp20, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.end15
  %22 = load i32 (i8*, i32, i8*, i64)*, i32 (i8*, i32, i8*, i64)** %cb.addr, align 8
  %cmp23 = icmp ne i32 (i8*, i32, i8*, i64)* %22, null
  br i1 %cmp23, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.then22
  %23 = load i32 (i8*, i32, i8*, i64)*, i32 (i8*, i32, i8*, i64)** %cb.addr, align 8
  %24 = load i8*, i8** %ctx.addr, align 8
  %25 = load i8, i8* %tag, align 1
  %conv26 = zext i8 %25 to i32
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %len, align 8
  %call27 = call i32 %23(i8* noundef %24, i32 noundef %conv26, i8* noundef %27, i64 noundef %28) #4
  store i32 %call27, i32* %ret, align 4
  %29 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %29, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then25
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then22
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end15
  %31 = load i64, i64* %len, align 8
  %32 = load i8**, i8*** %p.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %33, i64 %31
  store i8* %add.ptr34, i8** %32, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then30, %if.then14, %if.then9, %if.then2, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_bitstring_null(i8** noundef %p, i8* noundef %end, i64* noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %2 = load i64*, i64** %len.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %2, i32 noundef 3) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64*, i64** %len.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -104, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i64*, i64** %len.addr, align 8
  %7 = load i64, i64* %6, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %6, align 8
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv = zext i8 %10 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -104, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %11, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_asn1_sequence_free(%struct.mbedtls_asn1_sequence* noundef %seq) #0 {
entry:
  %seq.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %next = alloca %struct.mbedtls_asn1_sequence*, align 8
  store %struct.mbedtls_asn1_sequence* %seq, %struct.mbedtls_asn1_sequence** %seq.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq.addr, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_sequence* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq.addr, align 8
  %next1 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %1, i32 0, i32 1
  %2 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next1, align 8
  store %struct.mbedtls_asn1_sequence* %2, %struct.mbedtls_asn1_sequence** %next, align 8
  %3 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq.addr, align 8
  %4 = bitcast %struct.mbedtls_asn1_sequence* %3 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %4, i64 noundef 32) #4
  %5 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %seq.addr, align 8
  %6 = bitcast %struct.mbedtls_asn1_sequence* %5 to i8*
  call void @free(i8* noundef %6) #5
  %7 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next, align 8
  store %struct.mbedtls_asn1_sequence* %7, %struct.mbedtls_asn1_sequence** %seq.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_sequence_of(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_sequence* noundef %cur, i32 noundef %tag) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %cur.addr = alloca %struct.mbedtls_asn1_sequence*, align 8
  %tag.addr = alloca i32, align 4
  %cb_ctx = alloca %struct.asn1_get_sequence_of_cb_ctx_t, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_sequence* %cur, %struct.mbedtls_asn1_sequence** %cur.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  %tag1 = getelementptr inbounds %struct.asn1_get_sequence_of_cb_ctx_t, %struct.asn1_get_sequence_of_cb_ctx_t* %cb_ctx, i32 0, i32 0
  %0 = load i32, i32* %tag.addr, align 4
  store i32 %0, i32* %tag1, align 8
  %cur2 = getelementptr inbounds %struct.asn1_get_sequence_of_cb_ctx_t, %struct.asn1_get_sequence_of_cb_ctx_t* %cb_ctx, i32 0, i32 1
  %1 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur.addr, align 8
  store %struct.mbedtls_asn1_sequence* %1, %struct.mbedtls_asn1_sequence** %cur2, align 8
  %2 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur.addr, align 8
  %3 = bitcast %struct.mbedtls_asn1_sequence* %2 to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 32) #5
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %6 = load i32, i32* %tag.addr, align 4
  %conv = trunc i32 %6 to i8
  %7 = bitcast %struct.asn1_get_sequence_of_cb_ctx_t* %cb_ctx to i8*
  %call3 = call i32 @mbedtls_asn1_traverse_sequence_of(i8** noundef %4, i8* noundef %5, i8 noundef zeroext -1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 (i8*, i32, i8*, i64)* noundef @asn1_get_sequence_of_cb, i8* noundef %7) #4
  ret i32 %call3
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_get_sequence_of_cb(i8* noundef %ctx, i32 noundef %tag, i8* noundef %start, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %tag.addr = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %cb_ctx = alloca %struct.asn1_get_sequence_of_cb_ctx_t*, align 8
  %cur = alloca %struct.mbedtls_asn1_sequence*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.asn1_get_sequence_of_cb_ctx_t*
  store %struct.asn1_get_sequence_of_cb_ctx_t* %1, %struct.asn1_get_sequence_of_cb_ctx_t** %cb_ctx, align 8
  %2 = load %struct.asn1_get_sequence_of_cb_ctx_t*, %struct.asn1_get_sequence_of_cb_ctx_t** %cb_ctx, align 8
  %cur1 = getelementptr inbounds %struct.asn1_get_sequence_of_cb_ctx_t, %struct.asn1_get_sequence_of_cb_ctx_t* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur1, align 8
  store %struct.mbedtls_asn1_sequence* %3, %struct.mbedtls_asn1_sequence** %cur, align 8
  %4 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %4, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf, i32 0, i32 2
  %5 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #5
  %6 = bitcast i8* %call to %struct.mbedtls_asn1_sequence*
  %7 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %7, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* %6, %struct.mbedtls_asn1_sequence** %next, align 8
  %8 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next2 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next2, align 8
  %cmp3 = icmp eq %struct.mbedtls_asn1_sequence* %9, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -106, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %next5 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %10, i32 0, i32 1
  %11 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %next5, align 8
  store %struct.mbedtls_asn1_sequence* %11, %struct.mbedtls_asn1_sequence** %cur, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %12 = load i8*, i8** %start.addr, align 8
  %13 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf7 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %13, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf7, i32 0, i32 2
  store i8* %12, i8** %p8, align 8
  %14 = load i64, i64* %len.addr, align 8
  %15 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf9 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %15, i32 0, i32 0
  %len10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf9, i32 0, i32 1
  store i64 %14, i64* %len10, align 8
  %16 = load i32, i32* %tag.addr, align 4
  %17 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %buf11 = getelementptr inbounds %struct.mbedtls_asn1_sequence, %struct.mbedtls_asn1_sequence* %17, i32 0, i32 0
  %tag12 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %buf11, i32 0, i32 0
  store i32 %16, i32* %tag12, align 8
  %18 = load %struct.mbedtls_asn1_sequence*, %struct.mbedtls_asn1_sequence** %cur, align 8
  %19 = load %struct.asn1_get_sequence_of_cb_ctx_t*, %struct.asn1_get_sequence_of_cb_ctx_t** %cb_ctx, align 8
  %cur13 = getelementptr inbounds %struct.asn1_get_sequence_of_cb_ctx_t, %struct.asn1_get_sequence_of_cb_ctx_t* %19, i32 0, i32 1
  store %struct.mbedtls_asn1_sequence* %18, %struct.mbedtls_asn1_sequence** %cur13, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then4
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_alg(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %alg, %struct.mbedtls_asn1_buf* noundef %params) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %alg.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %params.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %alg, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  store %struct.mbedtls_asn1_buf* %params, %struct.mbedtls_asn1_buf** %params.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %call = call i32 @mbedtls_asn1_get_tag(i8** noundef %0, i8* noundef %1, i64* noundef %len, i32 noundef 48) #4
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %end.addr, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -96, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %9, i32 0, i32 0
  store i32 %conv, i32* %tag, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %add.ptr, i8** %end.addr, align 8
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %15 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %len4 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %15, i32 0, i32 1
  %call5 = call i32 @mbedtls_asn1_get_tag(i8** noundef %13, i8* noundef %14, i64* noundef %len4, i32 noundef 6) #4
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end3
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %p10 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %19, i32 0, i32 2
  store i8* %18, i8** %p10, align 8
  %20 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %len11 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %20, i32 0, i32 1
  %21 = load i64, i64* %len11, align 8
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %23, i64 %21
  store i8* %add.ptr12, i8** %22, align 8
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %end.addr, align 8
  %cmp13 = icmp eq i8* %25, %26
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  %27 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %28 = bitcast %struct.mbedtls_asn1_buf* %27 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %28, i64 noundef 24) #4
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end9
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %conv17 = zext i8 %31 to i32
  %32 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %tag18 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %32, i32 0, i32 0
  store i32 %conv17, i32* %tag18, align 8
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %33, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %33, align 8
  %35 = load i8**, i8*** %p.addr, align 8
  %36 = load i8*, i8** %end.addr, align 8
  %37 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len19 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %37, i32 0, i32 1
  %call20 = call i32 @mbedtls_asn1_get_len(i8** noundef %35, i8* noundef %36, i64* noundef %len19) #4
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end16
  %39 = load i8**, i8*** %p.addr, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %p25 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %41, i32 0, i32 2
  store i8* %40, i8** %p25, align 8
  %42 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %params.addr, align 8
  %len26 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %42, i32 0, i32 1
  %43 = load i64, i64* %len26, align 8
  %44 = load i8**, i8*** %p.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %45, i64 %43
  store i8* %add.ptr27, i8** %44, align 8
  %46 = load i8**, i8*** %p.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %end.addr, align 8
  %cmp28 = icmp ne i8* %47, %48
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end24
  store i32 -102, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end24
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then23, %if.then15, %if.then8, %if.then2, %if.then
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_alg_null(i8** noundef %p, i8* noundef %end, %struct.mbedtls_asn1_buf* noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %end.addr = alloca i8*, align 8
  %alg.addr = alloca %struct.mbedtls_asn1_buf*, align 8
  %ret = alloca i32, align 4
  %params = alloca %struct.mbedtls_asn1_buf, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store %struct.mbedtls_asn1_buf* %alg, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.mbedtls_asn1_buf* %params to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 24) #5
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %3 = load %struct.mbedtls_asn1_buf*, %struct.mbedtls_asn1_buf** %alg.addr, align 8
  %call1 = call i32 @mbedtls_asn1_get_alg(i8** noundef %1, i8* noundef %2, %struct.mbedtls_asn1_buf* noundef %3, %struct.mbedtls_asn1_buf* noundef %params) #4
  store i32 %call1, i32* %ret, align 4
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %tag = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %params, i32 0, i32 0
  %5 = load i32, i32* %tag, align 8
  %cmp2 = icmp ne i32 %5, 5
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %tag3 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %params, i32 0, i32 0
  %6 = load i32, i32* %tag3, align 8
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %params, i32 0, i32 1
  %7 = load i64, i64* %len, align 8
  %cmp5 = icmp ne i64 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -104, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_asn1_free_named_data(%struct.mbedtls_asn1_named_data* noundef %cur) #0 {
entry:
  %cur.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  store %struct.mbedtls_asn1_named_data* %cur, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %cmp = icmp eq %struct.mbedtls_asn1_named_data* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %oid = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %1, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid, i32 0, i32 2
  %2 = load i8*, i8** %p, align 8
  call void @free(i8* noundef %2) #5
  %3 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %val = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %3, i32 0, i32 1
  %p1 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val, i32 0, i32 2
  %4 = load i8*, i8** %p1, align 8
  call void @free(i8* noundef %4) #5
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur.addr, align 8
  %6 = bitcast %struct.mbedtls_asn1_named_data* %5 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %6, i64 noundef 64) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_asn1_free_named_data_list(%struct.mbedtls_asn1_named_data** noundef %head) #0 {
entry:
  %head.addr = alloca %struct.mbedtls_asn1_named_data**, align 8
  %cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  store %struct.mbedtls_asn1_named_data** %head, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %0, align 8
  store %struct.mbedtls_asn1_named_data* %1, %struct.mbedtls_asn1_named_data** %cur, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_named_data* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %2, i32 0, i32 2
  %3 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  %4 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  store %struct.mbedtls_asn1_named_data* %3, %struct.mbedtls_asn1_named_data** %4, align 8
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  call void @mbedtls_asn1_free_named_data(%struct.mbedtls_asn1_named_data* noundef %5) #4
  %6 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %7 = bitcast %struct.mbedtls_asn1_named_data* %6 to i8*
  call void @free(i8* noundef %7) #5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_asn1_named_data* @mbedtls_asn1_find_named_data(%struct.mbedtls_asn1_named_data* noundef %list, i8* noundef %oid, i64 noundef %len) #0 {
entry:
  %list.addr = alloca %struct.mbedtls_asn1_named_data*, align 8
  %oid.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_asn1_named_data* %list, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  %cmp = icmp ne %struct.mbedtls_asn1_named_data* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  %oid1 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %1, i32 0, i32 0
  %len2 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid1, i32 0, i32 1
  %2 = load i64, i64* %len2, align 8
  %3 = load i64, i64* %len.addr, align 8
  %cmp3 = icmp eq i64 %2, %3
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  %oid4 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %4, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid4, i32 0, i32 2
  %5 = load i8*, i8** %p, align 8
  %6 = load i8*, i8** %oid.addr, align 8
  %7 = load i64, i64* %len.addr, align 8
  %call = call i32 @memcmp(i8* noundef %5, i8* noundef %6, i64 noundef %7) #6
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  %8 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %8, i32 0, i32 2
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %next, align 8
  store %struct.mbedtls_asn1_named_data* %9, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  ret %struct.mbedtls_asn1_named_data* %10
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
