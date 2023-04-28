; ModuleID = 'asn1write.c'
source_filename = "asn1write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_asn1_named_data = type { %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_named_data*, i8 }
%struct.mbedtls_asn1_buf = type { i32, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_len(i8** noundef %p, i8* noundef %start, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, 128
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %4 to i8
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %5, align 8
  store i8 %conv, i8* %incdec.ptr, align 1
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %7 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp ule i64 %7, 255
  br i1 %cmp4, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end3
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %10 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  %cmp10 = icmp slt i64 %sub.ptr.sub9, 2
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then6
  store i32 -108, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then6
  %11 = load i64, i64* %len.addr, align 8
  %conv14 = trunc i64 %11 to i8
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr15, i8** %12, align 8
  store i8 %conv14, i8* %incdec.ptr15, align 1
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr16, i8** %14, align 8
  store i8 -127, i8* %incdec.ptr16, align 1
  store i32 2, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end3
  %16 = load i64, i64* %len.addr, align 8
  %cmp18 = icmp ule i64 %16, 65535
  br i1 %cmp18, label %if.then20, label %if.end34

if.then20:                                        ; preds = %if.end17
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast21 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %19 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %cmp24 = icmp slt i64 %sub.ptr.sub23, 3
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then20
  store i32 -108, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then20
  %20 = load i64, i64* %len.addr, align 8
  %and = and i64 %20, 255
  %conv28 = trunc i64 %and to i8
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr29, i8** %21, align 8
  store i8 %conv28, i8* %incdec.ptr29, align 1
  %23 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %23, 8
  %and30 = and i64 %shr, 255
  %conv31 = trunc i64 %and30 to i8
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr32, i8** %24, align 8
  store i8 %conv31, i8* %incdec.ptr32, align 1
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr33, i8** %26, align 8
  store i8 -126, i8* %incdec.ptr33, align 1
  store i32 3, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end17
  %28 = load i64, i64* %len.addr, align 8
  %cmp35 = icmp ule i64 %28, 16777215
  br i1 %cmp35, label %if.then37, label %if.end57

if.then37:                                        ; preds = %if.end34
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast38 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %31 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp41 = icmp slt i64 %sub.ptr.sub40, 4
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then37
  store i32 -108, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then37
  %32 = load i64, i64* %len.addr, align 8
  %and45 = and i64 %32, 255
  %conv46 = trunc i64 %and45 to i8
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %33, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %incdec.ptr47, i8** %33, align 8
  store i8 %conv46, i8* %incdec.ptr47, align 1
  %35 = load i64, i64* %len.addr, align 8
  %shr48 = lshr i64 %35, 8
  %and49 = and i64 %shr48, 255
  %conv50 = trunc i64 %and49 to i8
  %36 = load i8**, i8*** %p.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr51, i8** %36, align 8
  store i8 %conv50, i8* %incdec.ptr51, align 1
  %38 = load i64, i64* %len.addr, align 8
  %shr52 = lshr i64 %38, 16
  %and53 = and i64 %shr52, 255
  %conv54 = trunc i64 %and53 to i8
  %39 = load i8**, i8*** %p.addr, align 8
  %40 = load i8*, i8** %39, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %incdec.ptr55, i8** %39, align 8
  store i8 %conv54, i8* %incdec.ptr55, align 1
  %41 = load i8**, i8*** %p.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %incdec.ptr56, i8** %41, align 8
  store i8 -125, i8* %incdec.ptr56, align 1
  store i32 4, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.end34
  %43 = load i64, i64* %len.addr, align 8
  %cmp58 = icmp ule i64 %43, 4294967295
  br i1 %cmp58, label %if.then60, label %if.end84

if.then60:                                        ; preds = %if.end57
  %44 = load i8**, i8*** %p.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %46 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %cmp64 = icmp slt i64 %sub.ptr.sub63, 5
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then60
  store i32 -108, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.then60
  %47 = load i64, i64* %len.addr, align 8
  %and68 = and i64 %47, 255
  %conv69 = trunc i64 %and68 to i8
  %48 = load i8**, i8*** %p.addr, align 8
  %49 = load i8*, i8** %48, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %incdec.ptr70, i8** %48, align 8
  store i8 %conv69, i8* %incdec.ptr70, align 1
  %50 = load i64, i64* %len.addr, align 8
  %shr71 = lshr i64 %50, 8
  %and72 = and i64 %shr71, 255
  %conv73 = trunc i64 %and72 to i8
  %51 = load i8**, i8*** %p.addr, align 8
  %52 = load i8*, i8** %51, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %incdec.ptr74, i8** %51, align 8
  store i8 %conv73, i8* %incdec.ptr74, align 1
  %53 = load i64, i64* %len.addr, align 8
  %shr75 = lshr i64 %53, 16
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %54 = load i8**, i8*** %p.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr78, i8** %54, align 8
  store i8 %conv77, i8* %incdec.ptr78, align 1
  %56 = load i64, i64* %len.addr, align 8
  %shr79 = lshr i64 %56, 24
  %and80 = and i64 %shr79, 255
  %conv81 = trunc i64 %and80 to i8
  %57 = load i8**, i8*** %p.addr, align 8
  %58 = load i8*, i8** %57, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %incdec.ptr82, i8** %57, align 8
  store i8 %conv81, i8* %incdec.ptr82, align 1
  %59 = load i8**, i8*** %p.addr, align 8
  %60 = load i8*, i8** %59, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr83, i8** %59, align 8
  store i8 -124, i8* %incdec.ptr83, align 1
  store i32 5, i32* %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end57
  store i32 -100, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end84, %if.end67, %if.then66, %if.end44, %if.then43, %if.end27, %if.then26, %if.end13, %if.then12, %if.end, %if.then2
  %61 = load i32, i32* %retval, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_tag(i8** noundef %p, i8* noundef %start, i8 noundef zeroext %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %tag.addr = alloca i8, align 1
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8 %tag, i8* %tag.addr, align 1
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %tag.addr, align 1
  %4 = load i8**, i8*** %p.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 -1
  store i8* %incdec.ptr, i8** %4, align 8
  store i8 %3, i8* %incdec.ptr, align 1
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %p, i8* noundef %start, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 0, i64* %len, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ult i64 %sub.ptr.sub, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %size.addr, align 8
  store i64 %7, i64* %len, align 8
  %8 = load i64, i64* %len, align 8
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %idx.neg = sub i64 0, %8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.neg
  store i8* %add.ptr, i8** %9, align 8
  %11 = load i8**, i8*** %p.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i64, i64* %len, align 8
  %call = call i8* @memcpy(i8* noundef %12, i8* noundef %13, i64 noundef %14) #4
  %15 = load i64, i64* %len, align 8
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_mpi(i8** noundef %p, i8* noundef %start, %struct.mbedtls_mpi* noundef %X) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %0) #5
  store i64 %call, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** %p.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %start.addr, align 8
  %cmp1 = icmp ult i8* %3, %4
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %8 = load i64, i64* %len, align 8
  %cmp2 = icmp ult i64 %sub.ptr.sub, %8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -108, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %9 = load i64, i64* %len, align 8
  %10 = load i8**, i8*** %p.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %idx.neg = sub i64 0, %9
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.neg
  store i8* %add.ptr, i8** %10, align 8
  br label %do.body

do.body:                                          ; preds = %if.end4
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* %len, align 8
  %call5 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %12, i8* noundef %14, i64 noundef %15) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body
  br label %cleanup

if.end8:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end8
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i32 0, i32 0
  %17 = load i32, i32* %s, align 8
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %do.end
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %conv = zext i8 %20 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then10, label %if.end18

if.then10:                                        ; preds = %land.lhs.true
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast12 = ptrtoint i8* %23 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %cmp14 = icmp slt i64 %sub.ptr.sub13, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then10
  store i32 -108, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then10
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %incdec.ptr, i8** %24, align 8
  store i8 0, i8* %incdec.ptr, align 1
  %26 = load i64, i64* %len, align 8
  %add = add i64 %26, 1
  store i64 %add, i64* %len, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %do.end
  br label %do.body19

do.body19:                                        ; preds = %if.end18
  %27 = load i8**, i8*** %p.addr, align 8
  %28 = load i8*, i8** %start.addr, align 8
  %29 = load i64, i64* %len, align 8
  %call20 = call i32 @mbedtls_asn1_write_len(i8** noundef %27, i8* noundef %28, i64 noundef %29) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body19
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body19
  %31 = load i32, i32* %ret, align 4
  %conv24 = sext i32 %31 to i64
  %32 = load i64, i64* %len, align 8
  %add25 = add i64 %32, %conv24
  store i64 %add25, i64* %len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %33 = load i8**, i8*** %p.addr, align 8
  %34 = load i8*, i8** %start.addr, align 8
  %call29 = call i32 @mbedtls_asn1_write_tag(i8** noundef %33, i8* noundef %34, i8 noundef zeroext 2) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %do.body28
  %35 = load i32, i32* %ret, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

if.else33:                                        ; preds = %do.body28
  %36 = load i32, i32* %ret, align 4
  %conv34 = sext i32 %36 to i64
  %37 = load i64, i64* %len, align 8
  %add35 = add i64 %37, %conv34
  store i64 %add35, i64* %len, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else33
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  %38 = load i64, i64* %len, align 8
  %conv38 = trunc i64 %38 to i32
  store i32 %conv38, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then7
  %39 = load i32, i32* %ret, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then32, %if.then23, %if.then16, %if.then3
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_null(i8** noundef %p, i8* noundef %start) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %call = call i32 @mbedtls_asn1_write_len(i8** noundef %0, i8* noundef %1, i64 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %3 = load i32, i32* %ret, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %len, align 8
  %add = add i64 %4, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %start.addr, align 8
  %call2 = call i32 @mbedtls_asn1_write_tag(i8** noundef %5, i8* noundef %6, i8 noundef zeroext 5) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %do.body1
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %do.body1
  %8 = load i32, i32* %ret, align 4
  %conv7 = sext i32 %8 to i64
  %9 = load i64, i64* %len, align 8
  %add8 = add i64 %9, %conv7
  store i64 %add8, i64* %len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  %10 = load i64, i64* %len, align 8
  %conv11 = trunc i64 %10 to i32
  store i32 %conv11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end10, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_oid(i8** noundef %p, i8* noundef %start, i8* noundef %oid, i64 noundef %oid_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %oid.addr, align 8
  %3 = load i64, i64* %oid_len.addr, align 8
  %call = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, i64* %len, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %start.addr, align 8
  %9 = load i64, i64* %len, align 8
  %call2 = call i32 @mbedtls_asn1_write_len(i8** noundef %7, i8* noundef %8, i64 noundef %9) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %do.body1
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %do.body1
  %11 = load i32, i32* %ret, align 4
  %conv7 = sext i32 %11 to i64
  %12 = load i64, i64* %len, align 8
  %add8 = add i64 %12, %conv7
  store i64 %add8, i64* %len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %start.addr, align 8
  %call12 = call i32 @mbedtls_asn1_write_tag(i8** noundef %13, i8* noundef %14, i8 noundef zeroext 6) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %do.body11
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else16:                                        ; preds = %do.body11
  %16 = load i32, i32* %ret, align 4
  %conv17 = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add18 = add i64 %17, %conv17
  store i64 %add18, i64* %len, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else16
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  %18 = load i64, i64* %len, align 8
  %conv21 = trunc i64 %18 to i32
  store i32 %conv21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end20, %if.then15, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8** noundef %p, i8* noundef %start, i8* noundef %oid, i64 noundef %oid_len, i64 noundef %par_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %par_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i64 %par_len, i64* %par_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load i64, i64* %par_len.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load i8**, i8*** %p.addr, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %call = call i32 @mbedtls_asn1_write_null(i8** noundef %1, i8* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.body
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %ret, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %len, align 8
  %add = add i64 %5, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end5

if.else3:                                         ; preds = %entry
  %6 = load i64, i64* %par_len.addr, align 8
  %7 = load i64, i64* %len, align 8
  %add4 = add i64 %7, %6
  store i64 %add4, i64* %len, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %do.end
  br label %do.body6

do.body6:                                         ; preds = %if.end5
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %start.addr, align 8
  %10 = load i8*, i8** %oid.addr, align 8
  %11 = load i64, i64* %oid_len.addr, align 8
  %call7 = call i32 @mbedtls_asn1_write_oid(i8** noundef %8, i8* noundef %9, i8* noundef %10, i64 noundef %11) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %do.body6
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %do.body6
  %13 = load i32, i32* %ret, align 4
  %conv12 = sext i32 %13 to i64
  %14 = load i64, i64* %len, align 8
  %add13 = add i64 %14, %conv12
  store i64 %add13, i64* %len, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else11
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %start.addr, align 8
  %17 = load i64, i64* %len, align 8
  %call17 = call i32 @mbedtls_asn1_write_len(i8** noundef %15, i8* noundef %16, i64 noundef %17) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %do.body16
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else21:                                        ; preds = %do.body16
  %19 = load i32, i32* %ret, align 4
  %conv22 = sext i32 %19 to i64
  %20 = load i64, i64* %len, align 8
  %add23 = add i64 %20, %conv22
  store i64 %add23, i64* %len, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else21
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  %21 = load i8**, i8*** %p.addr, align 8
  %22 = load i8*, i8** %start.addr, align 8
  %call27 = call i32 @mbedtls_asn1_write_tag(i8** noundef %21, i8* noundef %22, i8 noundef zeroext 48) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %do.body26
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %do.body26
  %24 = load i32, i32* %ret, align 4
  %conv32 = sext i32 %24 to i64
  %25 = load i64, i64* %len, align 8
  %add33 = add i64 %25, %conv32
  store i64 %add33, i64* %len, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else31
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  %26 = load i64, i64* %len, align 8
  %conv36 = trunc i64 %26 to i32
  store i32 %conv36, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end35, %if.then30, %if.then20, %if.then10, %if.then2
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_bool(i8** noundef %p, i8* noundef %start, i32 noundef %boolean) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %boolean.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %boolean, i32* %boolean.addr, align 4
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %boolean.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 255, i32 0
  %conv = trunc i32 %cond to i8
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %5, align 8
  store i8 %conv, i8* %incdec.ptr, align 1
  %7 = load i64, i64* %len, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load i8**, i8*** %p.addr, align 8
  %9 = load i8*, i8** %start.addr, align 8
  %10 = load i64, i64* %len, align 8
  %call = call i32 @mbedtls_asn1_write_len(i8** noundef %8, i8* noundef %9, i64 noundef %10) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.body
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %12 = load i32, i32* %ret, align 4
  %conv4 = sext i32 %12 to i64
  %13 = load i64, i64* %len, align 8
  %add = add i64 %13, %conv4
  store i64 %add, i64* %len, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %14 = load i8**, i8*** %p.addr, align 8
  %15 = load i8*, i8** %start.addr, align 8
  %call7 = call i32 @mbedtls_asn1_write_tag(i8** noundef %14, i8* noundef %15, i8 noundef zeroext 1) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %do.body6
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %do.body6
  %17 = load i32, i32* %ret, align 4
  %conv12 = sext i32 %17 to i64
  %18 = load i64, i64* %len, align 8
  %add13 = add i64 %18, %conv12
  store i64 %add13, i64* %len, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else11
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  %19 = load i64, i64* %len, align 8
  %conv16 = trunc i64 %19 to i32
  store i32 %conv16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end15, %if.then10, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_int(i8** noundef %p, i8* noundef %start, i32 noundef %val) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i32, i32* %val.addr, align 4
  %call = call i32 @asn1_write_tagged_int(i8** noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_write_tagged_int(i8** noundef %p, i8* noundef %start, i32 noundef %val, i32 noundef %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  store i32 %tag, i32* %tag.addr, align 4
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %3 = load i64, i64* %len, align 8
  %add = add i64 %3, 1
  store i64 %add, i64* %len, align 8
  %4 = load i32, i32* %val.addr, align 4
  %and = and i32 %4, 255
  %conv = trunc i32 %and to i8
  %5 = load i8**, i8*** %p.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr, i8** %5, align 8
  store i8 %conv, i8* %incdec.ptr, align 1
  %7 = load i32, i32* %val.addr, align 4
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %val.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %val.addr, align 4
  %cmp1 = icmp sgt i32 %8, 0
  br i1 %cmp1, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %9 = load i8**, i8*** %p.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %conv3 = zext i8 %11 to i32
  %and4 = and i32 %conv3, 128
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then5, label %if.end15

if.then5:                                         ; preds = %do.end
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %14 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %cmp9 = icmp slt i64 %sub.ptr.sub8, 1
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then5
  store i32 -108, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then5
  %15 = load i8**, i8*** %p.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %incdec.ptr13, i8** %15, align 8
  store i8 0, i8* %incdec.ptr13, align 1
  %17 = load i64, i64* %len, align 8
  %add14 = add i64 %17, 1
  store i64 %add14, i64* %len, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %do.end
  br label %do.body16

do.body16:                                        ; preds = %if.end15
  %18 = load i8**, i8*** %p.addr, align 8
  %19 = load i8*, i8** %start.addr, align 8
  %20 = load i64, i64* %len, align 8
  %call = call i32 @mbedtls_asn1_write_len(i8** noundef %18, i8* noundef %19, i64 noundef %20) #5
  store i32 %call, i32* %ret, align 4
  %cmp17 = icmp slt i32 %call, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.body16
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body16
  %22 = load i32, i32* %ret, align 4
  %conv20 = sext i32 %22 to i64
  %23 = load i64, i64* %len, align 8
  %add21 = add i64 %23, %conv20
  store i64 %add21, i64* %len, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else
  br label %do.end24

do.end24:                                         ; preds = %if.end22
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %24 = load i8**, i8*** %p.addr, align 8
  %25 = load i8*, i8** %start.addr, align 8
  %26 = load i32, i32* %tag.addr, align 4
  %conv26 = trunc i32 %26 to i8
  %call27 = call i32 @mbedtls_asn1_write_tag(i8** noundef %24, i8* noundef %25, i8 noundef zeroext %conv26) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %do.body25
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

if.else31:                                        ; preds = %do.body25
  %28 = load i32, i32* %ret, align 4
  %conv32 = sext i32 %28 to i64
  %29 = load i64, i64* %len, align 8
  %add33 = add i64 %29, %conv32
  store i64 %add33, i64* %len, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else31
  br label %do.end36

do.end36:                                         ; preds = %if.end34
  %30 = load i64, i64* %len, align 8
  %conv37 = trunc i64 %30 to i32
  store i32 %conv37, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end36, %if.then30, %if.then19, %if.then11, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_enum(i8** noundef %p, i8* noundef %start, i32 noundef %val) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i32, i32* %val.addr, align 4
  %call = call i32 @asn1_write_tagged_int(i8** noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef 10) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_tagged_string(i8** noundef %p, i8* noundef %start, i32 noundef %tag, i8* noundef %text, i64 noundef %text_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %tag.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i32 %tag, i32* %tag.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i64, i64* %text_len.addr, align 8
  %call = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, i64* %len, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %start.addr, align 8
  %9 = load i64, i64* %len, align 8
  %call2 = call i32 @mbedtls_asn1_write_len(i8** noundef %7, i8* noundef %8, i64 noundef %9) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %do.body1
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %do.body1
  %11 = load i32, i32* %ret, align 4
  %conv7 = sext i32 %11 to i64
  %12 = load i64, i64* %len, align 8
  %add8 = add i64 %12, %conv7
  store i64 %add8, i64* %len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %start.addr, align 8
  %15 = load i32, i32* %tag.addr, align 4
  %conv12 = trunc i32 %15 to i8
  %call13 = call i32 @mbedtls_asn1_write_tag(i8** noundef %13, i8* noundef %14, i8 noundef zeroext %conv12) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %do.body11
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %do.body11
  %17 = load i32, i32* %ret, align 4
  %conv18 = sext i32 %17 to i64
  %18 = load i64, i64* %len, align 8
  %add19 = add i64 %18, %conv18
  store i64 %add19, i64* %len, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else17
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %19 = load i64, i64* %len, align 8
  %conv22 = trunc i64 %19 to i32
  store i32 %conv22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end21, %if.then16, %if.then5, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_utf8_string(i8** noundef %p, i8* noundef %start, i8* noundef %text, i64 noundef %text_len) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i64, i64* %text_len.addr, align 8
  %call = call i32 @mbedtls_asn1_write_tagged_string(i8** noundef %0, i8* noundef %1, i32 noundef 12, i8* noundef %2, i64 noundef %3) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_printable_string(i8** noundef %p, i8* noundef %start, i8* noundef %text, i64 noundef %text_len) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i64, i64* %text_len.addr, align 8
  %call = call i32 @mbedtls_asn1_write_tagged_string(i8** noundef %0, i8* noundef %1, i32 noundef 19, i8* noundef %2, i64 noundef %3) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_ia5_string(i8** noundef %p, i8* noundef %start, i8* noundef %text, i64 noundef %text_len) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i64 %text_len, i64* %text_len.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %text.addr, align 8
  %3 = load i64, i64* %text_len.addr, align 8
  %call = call i32 @mbedtls_asn1_write_tagged_string(i8** noundef %0, i8* noundef %1, i32 noundef 22, i8* noundef %2, i64 noundef %3) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_named_bitstring(i8** noundef %p, i8* noundef %start, i8* noundef %buf, i64 noundef %bits) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %bits.addr = alloca i64, align 8
  %unused_bits = alloca i64, align 8
  %byte_len = alloca i64, align 8
  %cur_byte = alloca i8*, align 8
  %cur_byte_shifted = alloca i8, align 1
  %bit = alloca i8, align 1
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %add = add i64 %0, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %byte_len, align 8
  %1 = load i64, i64* %byte_len, align 8
  %mul = mul i64 %1, 8
  %2 = load i64, i64* %bits.addr, align 8
  %sub = sub i64 %mul, %2
  store i64 %sub, i64* %unused_bits, align 8
  %3 = load i64, i64* %bits.addr, align 8
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %byte_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %cur_byte, align 8
  %6 = load i8*, i8** %cur_byte, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %8 = load i64, i64* %unused_bits, align 8
  %sh_prom = trunc i64 %8 to i32
  %shr = ashr i32 %conv, %sh_prom
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, i8* %cur_byte_shifted, align 1
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %if.then
  %9 = load i8, i8* %cur_byte_shifted, align 1
  %conv3 = zext i8 %9 to i32
  %and = and i32 %conv3, 1
  %conv4 = trunc i32 %and to i8
  store i8 %conv4, i8* %bit, align 1
  %10 = load i8, i8* %cur_byte_shifted, align 1
  %conv5 = zext i8 %10 to i32
  %shr6 = ashr i32 %conv5, 1
  %conv7 = trunc i32 %shr6 to i8
  store i8 %conv7, i8* %cur_byte_shifted, align 1
  %11 = load i8, i8* %bit, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %12 = load i64, i64* %bits.addr, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %bits.addr, align 8
  %13 = load i64, i64* %bits.addr, align 8
  %cmp12 = icmp eq i64 %13, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  br label %for.end

if.end15:                                         ; preds = %if.end
  %14 = load i64, i64* %bits.addr, align 8
  %rem = urem i64 %14, 8
  %cmp16 = icmp eq i64 %rem, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %15 = load i8*, i8** %cur_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %cur_byte, align 8
  %16 = load i8, i8* %incdec.ptr, align 1
  store i8 %16, i8* %cur_byte_shifted, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  br label %for.cond

for.end:                                          ; preds = %if.then14, %if.then11
  br label %if.end20

if.end20:                                         ; preds = %for.end, %entry
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %start.addr, align 8
  %19 = load i8*, i8** %buf.addr, align 8
  %20 = load i64, i64* %bits.addr, align 8
  %call = call i32 @mbedtls_asn1_write_bitstring(i8** noundef %17, i8* noundef %18, i8* noundef %19, i64 noundef %20) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_bitstring(i8** noundef %p, i8* noundef %start, i8* noundef %buf, i64 noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %bits.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %unused_bits = alloca i64, align 8
  %byte_len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %add = add i64 %0, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %byte_len, align 8
  %1 = load i64, i64* %byte_len, align 8
  %mul = mul i64 %1, 8
  %2 = load i64, i64* %bits.addr, align 8
  %sub = sub i64 %mul, %2
  store i64 %sub, i64* %unused_bits, align 8
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** %start.addr, align 8
  %cmp = icmp ult i8* %4, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8**, i8*** %p.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i64, i64* %byte_len, align 8
  %add1 = add i64 %9, 1
  %cmp2 = icmp ult i64 %sub.ptr.sub, %add1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -108, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i64, i64* %byte_len, align 8
  %add3 = add i64 %10, 1
  store i64 %add3, i64* %len, align 8
  %11 = load i64, i64* %byte_len, align 8
  %cmp4 = icmp ugt i64 %11, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %12 = load i64, i64* %byte_len, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %byte_len, align 8
  %13 = load i8*, i8** %buf.addr, align 8
  %14 = load i64, i64* %byte_len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %16 = load i64, i64* %unused_bits, align 8
  %sh_prom = trunc i64 %16 to i32
  %shl = shl i32 1, %sh_prom
  %sub6 = sub nsw i32 %shl, 1
  %neg = xor i32 %sub6, -1
  %and = and i32 %conv, %neg
  %conv7 = trunc i32 %and to i8
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %incdec.ptr, i8** %17, align 8
  store i8 %conv7, i8* %incdec.ptr, align 1
  %19 = load i64, i64* %byte_len, align 8
  %20 = load i8**, i8*** %p.addr, align 8
  %21 = load i8*, i8** %20, align 8
  %idx.neg = sub i64 0, %19
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %20, align 8
  %22 = load i8**, i8*** %p.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %buf.addr, align 8
  %25 = load i64, i64* %byte_len, align 8
  %call = call i8* @memcpy(i8* noundef %23, i8* noundef %24, i64 noundef %25) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %26 = load i64, i64* %unused_bits, align 8
  %conv9 = trunc i64 %26 to i8
  %27 = load i8**, i8*** %p.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %28, i32 -1
  store i8* %incdec.ptr10, i8** %27, align 8
  store i8 %conv9, i8* %incdec.ptr10, align 1
  br label %do.body

do.body:                                          ; preds = %if.end8
  %29 = load i8**, i8*** %p.addr, align 8
  %30 = load i8*, i8** %start.addr, align 8
  %31 = load i64, i64* %len, align 8
  %call11 = call i32 @mbedtls_asn1_write_len(i8** noundef %29, i8* noundef %30, i64 noundef %31) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.body
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %33 = load i32, i32* %ret, align 4
  %conv15 = sext i32 %33 to i64
  %34 = load i64, i64* %len, align 8
  %add16 = add i64 %34, %conv15
  store i64 %add16, i64* %len, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end17
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %35 = load i8**, i8*** %p.addr, align 8
  %36 = load i8*, i8** %start.addr, align 8
  %call19 = call i32 @mbedtls_asn1_write_tag(i8** noundef %35, i8* noundef %36, i8 noundef zeroext 3) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %do.body18
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.else23:                                        ; preds = %do.body18
  %38 = load i32, i32* %ret, align 4
  %conv24 = sext i32 %38 to i64
  %39 = load i64, i64* %len, align 8
  %add25 = add i64 %39, %conv24
  store i64 %add25, i64* %len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else23
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  %40 = load i64, i64* %len, align 8
  %conv28 = trunc i64 %40 to i32
  store i32 %conv28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end27, %if.then22, %if.then14, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_write_octet_string(i8** noundef %p, i8* noundef %start, i8* noundef %buf, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %start.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %len, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %call = call i32 @mbedtls_asn1_write_raw_buffer(i8** noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %5 = load i32, i32* %ret, align 4
  %conv = sext i32 %5 to i64
  %6 = load i64, i64* %len, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %start.addr, align 8
  %9 = load i64, i64* %len, align 8
  %call2 = call i32 @mbedtls_asn1_write_len(i8** noundef %7, i8* noundef %8, i64 noundef %9) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %do.body1
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %do.body1
  %11 = load i32, i32* %ret, align 4
  %conv7 = sext i32 %11 to i64
  %12 = load i64, i64* %len, align 8
  %add8 = add i64 %12, %conv7
  store i64 %add8, i64* %len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %13 = load i8**, i8*** %p.addr, align 8
  %14 = load i8*, i8** %start.addr, align 8
  %call12 = call i32 @mbedtls_asn1_write_tag(i8** noundef %13, i8* noundef %14, i8 noundef zeroext 4) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %do.body11
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.else16:                                        ; preds = %do.body11
  %16 = load i32, i32* %ret, align 4
  %conv17 = sext i32 %16 to i64
  %17 = load i64, i64* %len, align 8
  %add18 = add i64 %17, %conv17
  store i64 %add18, i64* %len, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else16
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  %18 = load i64, i64* %len, align 8
  %conv21 = trunc i64 %18 to i32
  store i32 %conv21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end20, %if.then15, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_asn1_named_data* @mbedtls_asn1_store_named_data(%struct.mbedtls_asn1_named_data** noundef %head, i8* noundef %oid, i64 noundef %oid_len, i8* noundef %val, i64 noundef %val_len) #0 {
entry:
  %retval = alloca %struct.mbedtls_asn1_named_data*, align 8
  %head.addr = alloca %struct.mbedtls_asn1_named_data**, align 8
  %oid.addr = alloca i8*, align 8
  %oid_len.addr = alloca i64, align 8
  %val.addr = alloca i8*, align 8
  %val_len.addr = alloca i64, align 8
  %cur = alloca %struct.mbedtls_asn1_named_data*, align 8
  %p41 = alloca i8*, align 8
  store %struct.mbedtls_asn1_named_data** %head, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  store i8* %oid, i8** %oid.addr, align 8
  store i64 %oid_len, i64* %oid_len.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  store i64 %val_len, i64* %val_len.addr, align 8
  %0 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  %1 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %0, align 8
  %2 = load i8*, i8** %oid.addr, align 8
  %3 = load i64, i64* %oid_len.addr, align 8
  %call = call %struct.mbedtls_asn1_named_data* @asn1_find_named_data(%struct.mbedtls_asn1_named_data* noundef %1, i8* noundef %2, i64 noundef %3) #5
  store %struct.mbedtls_asn1_named_data* %call, %struct.mbedtls_asn1_named_data** %cur, align 8
  %cmp = icmp eq %struct.mbedtls_asn1_named_data* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @calloc(i64 noundef 1, i64 noundef 64) #4
  %4 = bitcast i8* %call1 to %struct.mbedtls_asn1_named_data*
  store %struct.mbedtls_asn1_named_data* %4, %struct.mbedtls_asn1_named_data** %cur, align 8
  %5 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %cmp2 = icmp eq %struct.mbedtls_asn1_named_data* %5, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store %struct.mbedtls_asn1_named_data* null, %struct.mbedtls_asn1_named_data** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i64, i64* %oid_len.addr, align 8
  %7 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %oid4 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %7, i32 0, i32 0
  %len = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid4, i32 0, i32 1
  store i64 %6, i64* %len, align 8
  %8 = load i64, i64* %oid_len.addr, align 8
  %call5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %8) #4
  %9 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %oid6 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %9, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid6, i32 0, i32 2
  store i8* %call5, i8** %p, align 8
  %10 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %oid7 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %10, i32 0, i32 0
  %p8 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid7, i32 0, i32 2
  %11 = load i8*, i8** %p8, align 8
  %cmp9 = icmp eq i8* %11, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %12 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %13 = bitcast %struct.mbedtls_asn1_named_data* %12 to i8*
  call void @free(i8* noundef %13) #4
  store %struct.mbedtls_asn1_named_data* null, %struct.mbedtls_asn1_named_data** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end
  %14 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %oid12 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %14, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid12, i32 0, i32 2
  %15 = load i8*, i8** %p13, align 8
  %16 = load i8*, i8** %oid.addr, align 8
  %17 = load i64, i64* %oid_len.addr, align 8
  %call14 = call i8* @memcpy(i8* noundef %15, i8* noundef %16, i64 noundef %17) #4
  %18 = load i64, i64* %val_len.addr, align 8
  %19 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val15 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %19, i32 0, i32 1
  %len16 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val15, i32 0, i32 1
  store i64 %18, i64* %len16, align 8
  %20 = load i64, i64* %val_len.addr, align 8
  %cmp17 = icmp ne i64 %20, 0
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end11
  %21 = load i64, i64* %val_len.addr, align 8
  %call19 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %21) #4
  %22 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val20 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %22, i32 0, i32 1
  %p21 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val20, i32 0, i32 2
  store i8* %call19, i8** %p21, align 8
  %23 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val22 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %23, i32 0, i32 1
  %p23 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val22, i32 0, i32 2
  %24 = load i8*, i8** %p23, align 8
  %cmp24 = icmp eq i8* %24, null
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then18
  %25 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %oid26 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %25, i32 0, i32 0
  %p27 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %oid26, i32 0, i32 2
  %26 = load i8*, i8** %p27, align 8
  call void @free(i8* noundef %26) #4
  %27 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %28 = bitcast %struct.mbedtls_asn1_named_data* %27 to i8*
  call void @free(i8* noundef %28) #4
  store %struct.mbedtls_asn1_named_data* null, %struct.mbedtls_asn1_named_data** %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.then18
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end11
  %29 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  %30 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %29, align 8
  %31 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %next = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %31, i32 0, i32 2
  store %struct.mbedtls_asn1_named_data* %30, %struct.mbedtls_asn1_named_data** %next, align 8
  %32 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %33 = load %struct.mbedtls_asn1_named_data**, %struct.mbedtls_asn1_named_data*** %head.addr, align 8
  store %struct.mbedtls_asn1_named_data* %32, %struct.mbedtls_asn1_named_data** %33, align 8
  br label %if.end54

if.else:                                          ; preds = %entry
  %34 = load i64, i64* %val_len.addr, align 8
  %cmp30 = icmp eq i64 %34, 0
  br i1 %cmp30, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else
  %35 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val32 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %35, i32 0, i32 1
  %p33 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val32, i32 0, i32 2
  %36 = load i8*, i8** %p33, align 8
  call void @free(i8* noundef %36) #4
  %37 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val34 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %37, i32 0, i32 1
  %p35 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val34, i32 0, i32 2
  store i8* null, i8** %p35, align 8
  br label %if.end53

if.else36:                                        ; preds = %if.else
  %38 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val37 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %38, i32 0, i32 1
  %len38 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val37, i32 0, i32 1
  %39 = load i64, i64* %len38, align 8
  %40 = load i64, i64* %val_len.addr, align 8
  %cmp39 = icmp ne i64 %39, %40
  br i1 %cmp39, label %if.then40, label %if.end52

if.then40:                                        ; preds = %if.else36
  %41 = load i64, i64* %val_len.addr, align 8
  %call42 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %41) #4
  store i8* %call42, i8** %p41, align 8
  %42 = load i8*, i8** %p41, align 8
  %cmp43 = icmp eq i8* %42, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then40
  store %struct.mbedtls_asn1_named_data* null, %struct.mbedtls_asn1_named_data** %retval, align 8
  br label %return

if.end45:                                         ; preds = %if.then40
  %43 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val46 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %43, i32 0, i32 1
  %p47 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val46, i32 0, i32 2
  %44 = load i8*, i8** %p47, align 8
  call void @free(i8* noundef %44) #4
  %45 = load i8*, i8** %p41, align 8
  %46 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val48 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %46, i32 0, i32 1
  %p49 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val48, i32 0, i32 2
  store i8* %45, i8** %p49, align 8
  %47 = load i64, i64* %val_len.addr, align 8
  %48 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val50 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %48, i32 0, i32 1
  %len51 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val50, i32 0, i32 1
  store i64 %47, i64* %len51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end45, %if.else36
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then31
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end29
  %49 = load i8*, i8** %val.addr, align 8
  %cmp55 = icmp ne i8* %49, null
  br i1 %cmp55, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %if.end54
  %50 = load i64, i64* %val_len.addr, align 8
  %cmp56 = icmp ne i64 %50, 0
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %land.lhs.true
  %51 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  %val58 = getelementptr inbounds %struct.mbedtls_asn1_named_data, %struct.mbedtls_asn1_named_data* %51, i32 0, i32 1
  %p59 = getelementptr inbounds %struct.mbedtls_asn1_buf, %struct.mbedtls_asn1_buf* %val58, i32 0, i32 2
  %52 = load i8*, i8** %p59, align 8
  %53 = load i8*, i8** %val.addr, align 8
  %54 = load i64, i64* %val_len.addr, align 8
  %call60 = call i8* @memcpy(i8* noundef %52, i8* noundef %53, i64 noundef %54) #4
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %land.lhs.true, %if.end54
  %55 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %cur, align 8
  store %struct.mbedtls_asn1_named_data* %55, %struct.mbedtls_asn1_named_data** %retval, align 8
  br label %return

return:                                           ; preds = %if.end61, %if.then44, %if.then25, %if.then10, %if.then3
  %56 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %retval, align 8
  ret %struct.mbedtls_asn1_named_data* %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbedtls_asn1_named_data* @asn1_find_named_data(%struct.mbedtls_asn1_named_data* noundef %list, i8* noundef %oid, i64 noundef %len) #0 {
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
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load %struct.mbedtls_asn1_named_data*, %struct.mbedtls_asn1_named_data** %list.addr, align 8
  ret %struct.mbedtls_asn1_named_data* %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

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
