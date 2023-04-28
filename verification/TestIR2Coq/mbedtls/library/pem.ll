; ModuleID = 'pem.c'
source_filename = "pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_pem_context = type { i8*, i64, i8* }
%struct.mbedtls_des3_context = type { [96 x i32] }
%struct.mbedtls_des_context = type { [32 x i32] }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_md5_context = type { [2 x i32], [4 x i32], [64 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"Proc-Type: 4,ENCRYPTED\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"DEK-Info: DES-EDE3-CBC,\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DEK-Info: DES-CBC,\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"DEK-Info: AES-\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"DEK-Info: AES-128-CBC,\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DEK-Info: AES-192-CBC,\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"DEK-Info: AES-256-CBC,\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pem.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_pem_init(%struct.mbedtls_pem_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pem_context*, align 8
  store %struct.mbedtls_pem_context* %ctx, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_pem_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 24) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pem_read_buffer(%struct.mbedtls_pem_context* noundef %ctx, i8* noundef %header, i8* noundef %footer, i8* noundef %data, i8* noundef %pwd, i64 noundef %pwdlen, i64* noundef %use_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_pem_context*, align 8
  %header.addr = alloca i8*, align 8
  %footer.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %use_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %enc = alloca i32, align 4
  %len = alloca i64, align 8
  %buf = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %end = alloca i8*, align 8
  %pem_iv = alloca [16 x i8], align 16
  %enc_alg = alloca i32, align 4
  store %struct.mbedtls_pem_context* %ctx, %struct.mbedtls_pem_context** %ctx.addr, align 8
  store i8* %header, i8** %header.addr, align 8
  store i8* %footer, i8** %footer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i64* %use_len, i64** %use_len.addr, align 8
  store i32 0, i32* %enc_alg, align 4
  %0 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_pem_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -5248, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i8*, i8** %header.addr, align 8
  %call = call i8* @strstr(i8* noundef %1, i8* noundef %2) #5
  store i8* %call, i8** %s1, align 8
  %3 = load i8*, i8** %s1, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -4224, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i8*, i8** %footer.addr, align 8
  %call4 = call i8* @strstr(i8* noundef %4, i8* noundef %5) #5
  store i8* %call4, i8** %s2, align 8
  %6 = load i8*, i8** %s2, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load i8*, i8** %s2, align 8
  %8 = load i8*, i8** %s1, align 8
  %cmp6 = icmp ule i8* %7, %8
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 -4224, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %9 = load i8*, i8** %header.addr, align 8
  %call9 = call i64 @strlen(i8* noundef %9) #5
  %10 = load i8*, i8** %s1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %call9
  store i8* %add.ptr, i8** %s1, align 8
  %11 = load i8*, i8** %s1, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv, 32
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %13 = load i8*, i8** %s1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s1, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8
  %14 = load i8*, i8** %s1, align 8
  %15 = load i8, i8* %14, align 1
  %conv14 = zext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 13
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %16 = load i8*, i8** %s1, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %s1, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  %17 = load i8*, i8** %s1, align 8
  %18 = load i8, i8* %17, align 1
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp eq i32 %conv20, 10
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end19
  %19 = load i8*, i8** %s1, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr24, i8** %s1, align 8
  br label %if.end25

if.else:                                          ; preds = %if.end19
  store i32 -4224, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then23
  %20 = load i8*, i8** %s2, align 8
  store i8* %20, i8** %end, align 8
  %21 = load i8*, i8** %footer.addr, align 8
  %call26 = call i64 @strlen(i8* noundef %21) #5
  %22 = load i8*, i8** %end, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %22, i64 %call26
  store i8* %add.ptr27, i8** %end, align 8
  %23 = load i8*, i8** %end, align 8
  %24 = load i8, i8* %23, align 1
  %conv28 = zext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv28, 32
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end25
  %25 = load i8*, i8** %end, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr32, i8** %end, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end25
  %26 = load i8*, i8** %end, align 8
  %27 = load i8, i8* %26, align 1
  %conv34 = zext i8 %27 to i32
  %cmp35 = icmp eq i32 %conv34, 13
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  %28 = load i8*, i8** %end, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr38, i8** %end, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end33
  %29 = load i8*, i8** %end, align 8
  %30 = load i8, i8* %29, align 1
  %conv40 = zext i8 %30 to i32
  %cmp41 = icmp eq i32 %conv40, 10
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end39
  %31 = load i8*, i8** %end, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr44, i8** %end, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39
  %32 = load i8*, i8** %end, align 8
  %33 = load i8*, i8** %data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %34 = load i64*, i64** %use_len.addr, align 8
  store i64 %sub.ptr.sub, i64* %34, align 8
  store i32 0, i32* %enc, align 4
  %35 = load i8*, i8** %s2, align 8
  %36 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %36 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %cmp49 = icmp sge i64 %sub.ptr.sub48, 22
  br i1 %cmp49, label %land.lhs.true, label %if.end187

land.lhs.true:                                    ; preds = %if.end45
  %37 = load i8*, i8** %s1, align 8
  %call51 = call i32 @memcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 noundef 22) #5
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end187

if.then54:                                        ; preds = %land.lhs.true
  %38 = load i32, i32* %enc, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %enc, align 4
  %39 = load i8*, i8** %s1, align 8
  %add.ptr55 = getelementptr inbounds i8, i8* %39, i64 22
  store i8* %add.ptr55, i8** %s1, align 8
  %40 = load i8*, i8** %s1, align 8
  %41 = load i8, i8* %40, align 1
  %conv56 = zext i8 %41 to i32
  %cmp57 = icmp eq i32 %conv56, 13
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then54
  %42 = load i8*, i8** %s1, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr60, i8** %s1, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then54
  %43 = load i8*, i8** %s1, align 8
  %44 = load i8, i8* %43, align 1
  %conv62 = zext i8 %44 to i32
  %cmp63 = icmp eq i32 %conv62, 10
  br i1 %cmp63, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.end61
  %45 = load i8*, i8** %s1, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr66, i8** %s1, align 8
  br label %if.end68

if.else67:                                        ; preds = %if.end61
  store i32 -4352, i32* %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.then65
  %46 = load i8*, i8** %s2, align 8
  %47 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast69 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %47 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %cmp72 = icmp sge i64 %sub.ptr.sub71, 23
  br i1 %cmp72, label %land.lhs.true74, label %if.else92

land.lhs.true74:                                  ; preds = %if.end68
  %48 = load i8*, i8** %s1, align 8
  %call75 = call i32 @memcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 noundef 23) #5
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else92

if.then78:                                        ; preds = %land.lhs.true74
  store i32 37, i32* %enc_alg, align 4
  %49 = load i8*, i8** %s1, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %49, i64 23
  store i8* %add.ptr79, i8** %s1, align 8
  %50 = load i8*, i8** %s2, align 8
  %51 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast80 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast81 = ptrtoint i8* %51 to i64
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %cmp83 = icmp slt i64 %sub.ptr.sub82, 16
  br i1 %cmp83, label %if.then89, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then78
  %52 = load i8*, i8** %s1, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %call86 = call i32 @pem_get_iv(i8* noundef %52, i8* noundef %arraydecay, i64 noundef 8) #6
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %lor.lhs.false85, %if.then78
  store i32 -4608, i32* %retval, align 4
  br label %return

if.end90:                                         ; preds = %lor.lhs.false85
  %53 = load i8*, i8** %s1, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %53, i64 16
  store i8* %add.ptr91, i8** %s1, align 8
  br label %if.end118

if.else92:                                        ; preds = %land.lhs.true74, %if.end68
  %54 = load i8*, i8** %s2, align 8
  %55 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast93 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast94 = ptrtoint i8* %55 to i64
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  %cmp96 = icmp sge i64 %sub.ptr.sub95, 18
  br i1 %cmp96, label %land.lhs.true98, label %if.end117

land.lhs.true98:                                  ; preds = %if.else92
  %56 = load i8*, i8** %s1, align 8
  %call99 = call i32 @memcmp(i8* noundef %56, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 noundef 18) #5
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.end117

if.then102:                                       ; preds = %land.lhs.true98
  store i32 33, i32* %enc_alg, align 4
  %57 = load i8*, i8** %s1, align 8
  %add.ptr103 = getelementptr inbounds i8, i8* %57, i64 18
  store i8* %add.ptr103, i8** %s1, align 8
  %58 = load i8*, i8** %s2, align 8
  %59 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast104 = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %59 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %cmp107 = icmp slt i64 %sub.ptr.sub106, 16
  br i1 %cmp107, label %if.then114, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.then102
  %60 = load i8*, i8** %s1, align 8
  %arraydecay110 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %call111 = call i32 @pem_get_iv(i8* noundef %60, i8* noundef %arraydecay110, i64 noundef 8) #6
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %lor.lhs.false109, %if.then102
  store i32 -4608, i32* %retval, align 4
  br label %return

if.end115:                                        ; preds = %lor.lhs.false109
  %61 = load i8*, i8** %s1, align 8
  %add.ptr116 = getelementptr inbounds i8, i8* %61, i64 16
  store i8* %add.ptr116, i8** %s1, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.end115, %land.lhs.true98, %if.else92
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end90
  %62 = load i8*, i8** %s2, align 8
  %63 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast119 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %63 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %cmp122 = icmp sge i64 %sub.ptr.sub121, 14
  br i1 %cmp122, label %land.lhs.true124, label %if.end169

land.lhs.true124:                                 ; preds = %if.end118
  %64 = load i8*, i8** %s1, align 8
  %call125 = call i32 @memcmp(i8* noundef %64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 noundef 14) #5
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end169

if.then128:                                       ; preds = %land.lhs.true124
  %65 = load i8*, i8** %s2, align 8
  %66 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast129 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast130 = ptrtoint i8* %66 to i64
  %sub.ptr.sub131 = sub i64 %sub.ptr.lhs.cast129, %sub.ptr.rhs.cast130
  %cmp132 = icmp slt i64 %sub.ptr.sub131, 22
  br i1 %cmp132, label %if.then134, label %if.else135

if.then134:                                       ; preds = %if.then128
  store i32 -4736, i32* %retval, align 4
  br label %return

if.else135:                                       ; preds = %if.then128
  %67 = load i8*, i8** %s1, align 8
  %call136 = call i32 @memcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 noundef 22) #5
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.else140

if.then139:                                       ; preds = %if.else135
  store i32 5, i32* %enc_alg, align 4
  br label %if.end153

if.else140:                                       ; preds = %if.else135
  %68 = load i8*, i8** %s1, align 8
  %call141 = call i32 @memcmp(i8* noundef %68, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 noundef 22) #5
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.else140
  store i32 6, i32* %enc_alg, align 4
  br label %if.end152

if.else145:                                       ; preds = %if.else140
  %69 = load i8*, i8** %s1, align 8
  %call146 = call i32 @memcmp(i8* noundef %69, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 noundef 22) #5
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.else150

if.then149:                                       ; preds = %if.else145
  store i32 7, i32* %enc_alg, align 4
  br label %if.end151

if.else150:                                       ; preds = %if.else145
  store i32 -4736, i32* %retval, align 4
  br label %return

if.end151:                                        ; preds = %if.then149
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then144
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then139
  br label %if.end154

if.end154:                                        ; preds = %if.end153
  %70 = load i8*, i8** %s1, align 8
  %add.ptr155 = getelementptr inbounds i8, i8* %70, i64 22
  store i8* %add.ptr155, i8** %s1, align 8
  %71 = load i8*, i8** %s2, align 8
  %72 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast156 = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast157 = ptrtoint i8* %72 to i64
  %sub.ptr.sub158 = sub i64 %sub.ptr.lhs.cast156, %sub.ptr.rhs.cast157
  %cmp159 = icmp slt i64 %sub.ptr.sub158, 32
  br i1 %cmp159, label %if.then166, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.end154
  %73 = load i8*, i8** %s1, align 8
  %arraydecay162 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %call163 = call i32 @pem_get_iv(i8* noundef %73, i8* noundef %arraydecay162, i64 noundef 16) #6
  %cmp164 = icmp ne i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %lor.lhs.false161, %if.end154
  store i32 -4608, i32* %retval, align 4
  br label %return

if.end167:                                        ; preds = %lor.lhs.false161
  %74 = load i8*, i8** %s1, align 8
  %add.ptr168 = getelementptr inbounds i8, i8* %74, i64 32
  store i8* %add.ptr168, i8** %s1, align 8
  br label %if.end169

if.end169:                                        ; preds = %if.end167, %land.lhs.true124, %if.end118
  %75 = load i32, i32* %enc_alg, align 4
  %cmp170 = icmp eq i32 %75, 0
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.end169
  store i32 -4736, i32* %retval, align 4
  br label %return

if.end173:                                        ; preds = %if.end169
  %76 = load i8*, i8** %s1, align 8
  %77 = load i8, i8* %76, align 1
  %conv174 = zext i8 %77 to i32
  %cmp175 = icmp eq i32 %conv174, 13
  br i1 %cmp175, label %if.then177, label %if.end179

if.then177:                                       ; preds = %if.end173
  %78 = load i8*, i8** %s1, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr178, i8** %s1, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.end173
  %79 = load i8*, i8** %s1, align 8
  %80 = load i8, i8* %79, align 1
  %conv180 = zext i8 %80 to i32
  %cmp181 = icmp eq i32 %conv180, 10
  br i1 %cmp181, label %if.then183, label %if.else185

if.then183:                                       ; preds = %if.end179
  %81 = load i8*, i8** %s1, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr184, i8** %s1, align 8
  br label %if.end186

if.else185:                                       ; preds = %if.end179
  store i32 -4352, i32* %retval, align 4
  br label %return

if.end186:                                        ; preds = %if.then183
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %land.lhs.true, %if.end45
  %82 = load i8*, i8** %s1, align 8
  %83 = load i8*, i8** %s2, align 8
  %cmp188 = icmp uge i8* %82, %83
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end187
  store i32 -4352, i32* %retval, align 4
  br label %return

if.end191:                                        ; preds = %if.end187
  %84 = load i8*, i8** %s1, align 8
  %85 = load i8*, i8** %s2, align 8
  %86 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast192 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast193 = ptrtoint i8* %86 to i64
  %sub.ptr.sub194 = sub i64 %sub.ptr.lhs.cast192, %sub.ptr.rhs.cast193
  %call195 = call i32 @mbedtls_base64_decode(i8* noundef null, i64 noundef 0, i64* noundef %len, i8* noundef %84, i64 noundef %sub.ptr.sub194) #6
  store i32 %call195, i32* %ret, align 4
  %87 = load i32, i32* %ret, align 4
  %cmp196 = icmp eq i32 %87, -44
  br i1 %cmp196, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.end191
  %88 = load i32, i32* %ret, align 4
  %call199 = call i32 @mbedtls_error_add(i32 noundef -4352, i32 noundef %88, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef 346) #6
  store i32 %call199, i32* %retval, align 4
  br label %return

if.end200:                                        ; preds = %if.end191
  %89 = load i64, i64* %len, align 8
  %call201 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %89) #4
  store i8* %call201, i8** %buf, align 8
  %cmp202 = icmp eq i8* %call201, null
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end200
  store i32 -4480, i32* %retval, align 4
  br label %return

if.end205:                                        ; preds = %if.end200
  %90 = load i8*, i8** %buf, align 8
  %91 = load i64, i64* %len, align 8
  %92 = load i8*, i8** %s1, align 8
  %93 = load i8*, i8** %s2, align 8
  %94 = load i8*, i8** %s1, align 8
  %sub.ptr.lhs.cast206 = ptrtoint i8* %93 to i64
  %sub.ptr.rhs.cast207 = ptrtoint i8* %94 to i64
  %sub.ptr.sub208 = sub i64 %sub.ptr.lhs.cast206, %sub.ptr.rhs.cast207
  %call209 = call i32 @mbedtls_base64_decode(i8* noundef %90, i64 noundef %91, i64* noundef %len, i8* noundef %92, i64 noundef %sub.ptr.sub208) #6
  store i32 %call209, i32* %ret, align 4
  %cmp210 = icmp ne i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.end214

if.then212:                                       ; preds = %if.end205
  %95 = load i8*, i8** %buf, align 8
  %96 = load i64, i64* %len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %95, i64 noundef %96) #6
  %97 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %97) #4
  %98 = load i32, i32* %ret, align 4
  %call213 = call i32 @mbedtls_error_add(i32 noundef -4352, i32 noundef %98, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef 355) #6
  store i32 %call213, i32* %retval, align 4
  br label %return

if.end214:                                        ; preds = %if.end205
  %99 = load i32, i32* %enc, align 4
  %cmp215 = icmp ne i32 %99, 0
  br i1 %cmp215, label %if.then217, label %if.end272

if.then217:                                       ; preds = %if.end214
  %100 = load i8*, i8** %pwd.addr, align 8
  %cmp218 = icmp eq i8* %100, null
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.then217
  %101 = load i8*, i8** %buf, align 8
  %102 = load i64, i64* %len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %101, i64 noundef %102) #6
  %103 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %103) #4
  store i32 -4864, i32* %retval, align 4
  br label %return

if.end221:                                        ; preds = %if.then217
  store i32 0, i32* %ret, align 4
  %104 = load i32, i32* %enc_alg, align 4
  %cmp222 = icmp eq i32 %104, 37
  br i1 %cmp222, label %if.then224, label %if.else227

if.then224:                                       ; preds = %if.end221
  %arraydecay225 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %105 = load i8*, i8** %buf, align 8
  %106 = load i64, i64* %len, align 8
  %107 = load i8*, i8** %pwd.addr, align 8
  %108 = load i64, i64* %pwdlen.addr, align 8
  %call226 = call i32 @pem_des3_decrypt(i8* noundef %arraydecay225, i8* noundef %105, i64 noundef %106, i8* noundef %107, i64 noundef %108) #6
  store i32 %call226, i32* %ret, align 4
  br label %if.end234

if.else227:                                       ; preds = %if.end221
  %109 = load i32, i32* %enc_alg, align 4
  %cmp228 = icmp eq i32 %109, 33
  br i1 %cmp228, label %if.then230, label %if.end233

if.then230:                                       ; preds = %if.else227
  %arraydecay231 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %110 = load i8*, i8** %buf, align 8
  %111 = load i64, i64* %len, align 8
  %112 = load i8*, i8** %pwd.addr, align 8
  %113 = load i64, i64* %pwdlen.addr, align 8
  %call232 = call i32 @pem_des_decrypt(i8* noundef %arraydecay231, i8* noundef %110, i64 noundef %111, i8* noundef %112, i64 noundef %113) #6
  store i32 %call232, i32* %ret, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then230, %if.else227
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.then224
  %114 = load i32, i32* %enc_alg, align 4
  %cmp235 = icmp eq i32 %114, 5
  br i1 %cmp235, label %if.then237, label %if.else240

if.then237:                                       ; preds = %if.end234
  %arraydecay238 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %115 = load i8*, i8** %buf, align 8
  %116 = load i64, i64* %len, align 8
  %117 = load i8*, i8** %pwd.addr, align 8
  %118 = load i64, i64* %pwdlen.addr, align 8
  %call239 = call i32 @pem_aes_decrypt(i8* noundef %arraydecay238, i32 noundef 16, i8* noundef %115, i64 noundef %116, i8* noundef %117, i64 noundef %118) #6
  store i32 %call239, i32* %ret, align 4
  br label %if.end254

if.else240:                                       ; preds = %if.end234
  %119 = load i32, i32* %enc_alg, align 4
  %cmp241 = icmp eq i32 %119, 6
  br i1 %cmp241, label %if.then243, label %if.else246

if.then243:                                       ; preds = %if.else240
  %arraydecay244 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %120 = load i8*, i8** %buf, align 8
  %121 = load i64, i64* %len, align 8
  %122 = load i8*, i8** %pwd.addr, align 8
  %123 = load i64, i64* %pwdlen.addr, align 8
  %call245 = call i32 @pem_aes_decrypt(i8* noundef %arraydecay244, i32 noundef 24, i8* noundef %120, i64 noundef %121, i8* noundef %122, i64 noundef %123) #6
  store i32 %call245, i32* %ret, align 4
  br label %if.end253

if.else246:                                       ; preds = %if.else240
  %124 = load i32, i32* %enc_alg, align 4
  %cmp247 = icmp eq i32 %124, 7
  br i1 %cmp247, label %if.then249, label %if.end252

if.then249:                                       ; preds = %if.else246
  %arraydecay250 = getelementptr inbounds [16 x i8], [16 x i8]* %pem_iv, i64 0, i64 0
  %125 = load i8*, i8** %buf, align 8
  %126 = load i64, i64* %len, align 8
  %127 = load i8*, i8** %pwd.addr, align 8
  %128 = load i64, i64* %pwdlen.addr, align 8
  %call251 = call i32 @pem_aes_decrypt(i8* noundef %arraydecay250, i32 noundef 32, i8* noundef %125, i64 noundef %126, i8* noundef %127, i64 noundef %128) #6
  store i32 %call251, i32* %ret, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then249, %if.else246
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.then243
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then237
  %129 = load i32, i32* %ret, align 4
  %cmp255 = icmp ne i32 %129, 0
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.end254
  %130 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %130) #4
  %131 = load i32, i32* %ret, align 4
  store i32 %131, i32* %retval, align 4
  br label %return

if.end258:                                        ; preds = %if.end254
  %132 = load i64, i64* %len, align 8
  %cmp259 = icmp ule i64 %132, 2
  br i1 %cmp259, label %if.then270, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %if.end258
  %133 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %133, i64 0
  %134 = load i8, i8* %arrayidx, align 1
  %conv262 = zext i8 %134 to i32
  %cmp263 = icmp ne i32 %conv262, 48
  br i1 %cmp263, label %if.then270, label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %lor.lhs.false261
  %135 = load i8*, i8** %buf, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %135, i64 1
  %136 = load i8, i8* %arrayidx266, align 1
  %conv267 = zext i8 %136 to i32
  %cmp268 = icmp sgt i32 %conv267, 131
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %lor.lhs.false265, %lor.lhs.false261, %if.end258
  %137 = load i8*, i8** %buf, align 8
  %138 = load i64, i64* %len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %137, i64 noundef %138) #6
  %139 = load i8*, i8** %buf, align 8
  call void @free(i8* noundef %139) #4
  store i32 -4992, i32* %retval, align 4
  br label %return

if.end271:                                        ; preds = %lor.lhs.false265
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.end214
  %140 = load i8*, i8** %buf, align 8
  %141 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %buf273 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %141, i32 0, i32 0
  store i8* %140, i8** %buf273, align 8
  %142 = load i64, i64* %len, align 8
  %143 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %143, i32 0, i32 1
  store i64 %142, i64* %buflen, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end272, %if.then270, %if.then257, %if.then220, %if.then212, %if.then204, %if.then198, %if.then190, %if.else185, %if.then172, %if.then166, %if.else150, %if.then134, %if.then114, %if.then89, %if.else67, %if.else, %if.then7, %if.then2, %if.then
  %144 = load i32, i32* %retval, align 4
  ret i32 %144
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_get_iv(i8* noundef %s, i8* noundef %iv, i64 noundef %iv_len) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_len, i64* %iv_len.addr, align 8
  %0 = load i8*, i8** %iv.addr, align 8
  %1 = load i64, i64* %iv_len.addr, align 8
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %1) #4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %iv_len.addr, align 8
  %mul = mul i64 %3, 2
  %cmp = icmp ult i64 %2, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp sge i32 %conv, 48
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = zext i8 %9 to i32
  %sub = sub nsw i32 %conv6, 48
  %conv7 = sext i32 %sub to i64
  store i64 %conv7, i64* %j, align 8
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true, %for.body
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp sge i32 %conv8, 65
  br i1 %cmp9, label %land.lhs.true11, label %if.else19

land.lhs.true11:                                  ; preds = %if.else
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = zext i8 %13 to i32
  %cmp13 = icmp sle i32 %conv12, 70
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %land.lhs.true11
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = zext i8 %15 to i32
  %sub17 = sub nsw i32 %conv16, 55
  %conv18 = sext i32 %sub17 to i64
  store i64 %conv18, i64* %j, align 8
  br label %if.end32

if.else19:                                        ; preds = %land.lhs.true11, %if.else
  %16 = load i8*, i8** %s.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv20 = zext i8 %17 to i32
  %cmp21 = icmp sge i32 %conv20, 97
  br i1 %cmp21, label %land.lhs.true23, label %if.else31

land.lhs.true23:                                  ; preds = %if.else19
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv24 = zext i8 %19 to i32
  %cmp25 = icmp sle i32 %conv24, 102
  br i1 %cmp25, label %if.then27, label %if.else31

if.then27:                                        ; preds = %land.lhs.true23
  %20 = load i8*, i8** %s.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv28 = zext i8 %21 to i32
  %sub29 = sub nsw i32 %conv28, 87
  %conv30 = sext i32 %sub29 to i64
  store i64 %conv30, i64* %j, align 8
  br label %if.end

if.else31:                                        ; preds = %land.lhs.true23, %if.else19
  store i32 -4608, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then15
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  %22 = load i64, i64* %i, align 8
  %and = and i64 %22, 1
  %cmp34 = icmp ne i64 %and, 0
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end33
  %23 = load i64, i64* %j, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  %24 = load i64, i64* %j, align 8
  %shl = shl i64 %24, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %shl, %cond.false ]
  store i64 %cond, i64* %k, align 8
  %25 = load i8*, i8** %iv.addr, align 8
  %26 = load i64, i64* %i, align 8
  %shr = lshr i64 %26, 1
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %shr
  %27 = load i8, i8* %arrayidx, align 1
  %conv36 = zext i8 %27 to i64
  %28 = load i64, i64* %k, align 8
  %or = or i64 %conv36, %28
  %conv37 = trunc i64 %or to i8
  %29 = load i8*, i8** %iv.addr, align 8
  %30 = load i64, i64* %i, align 8
  %shr38 = lshr i64 %30, 1
  %arrayidx39 = getelementptr inbounds i8, i8* %29, i64 %shr38
  store i8 %conv37, i8* %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  %32 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else31
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @mbedtls_base64_decode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_error_add(i32 noundef %high, i32 noundef %low, i8* noundef %file, i32 noundef %line) #0 {
entry:
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %low, i32* %low.addr, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %3 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %2, %3
  ret i32 %add
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_des3_decrypt(i8* noundef %des3_iv, i8* noundef %buf, i64 noundef %buflen, i8* noundef %pwd, i64 noundef %pwdlen) #0 {
entry:
  %des3_iv.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %des3_ctx = alloca %struct.mbedtls_des3_context, align 4
  %des3_key = alloca [24 x i8], align 16
  %ret = alloca i32, align 4
  store i8* %des3_iv, i8** %des3_iv.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef %des3_ctx) #6
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %des3_key, i64 0, i64 0
  %0 = load i8*, i8** %des3_iv.addr, align 8
  %1 = load i8*, i8** %pwd.addr, align 8
  %2 = load i64, i64* %pwdlen.addr, align 8
  %call = call i32 @pem_pbkdf1(i8* noundef %arraydecay, i64 noundef 24, i8* noundef %0, i8* noundef %1, i64 noundef %2) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [24 x i8], [24 x i8]* %des3_key, i64 0, i64 0
  %call2 = call i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef %des3_ctx, i8* noundef %arraydecay1) #6
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %exit

if.end5:                                          ; preds = %if.end
  %3 = load i64, i64* %buflen.addr, align 8
  %4 = load i8*, i8** %des3_iv.addr, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i8*, i8** %buf.addr, align 8
  %call6 = call i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef %des3_ctx, i32 noundef 0, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #6
  store i32 %call6, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end5, %if.then4, %if.then
  call void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef %des3_ctx) #6
  %arraydecay7 = getelementptr inbounds [24 x i8], [24 x i8]* %des3_key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay7, i64 noundef 24) #6
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_des_decrypt(i8* noundef %des_iv, i8* noundef %buf, i64 noundef %buflen, i8* noundef %pwd, i64 noundef %pwdlen) #0 {
entry:
  %des_iv.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %des_ctx = alloca %struct.mbedtls_des_context, align 4
  %des_key = alloca [8 x i8], align 1
  %ret = alloca i32, align 4
  store i8* %des_iv, i8** %des_iv.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_des_init(%struct.mbedtls_des_context* noundef %des_ctx) #6
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %des_key, i64 0, i64 0
  %0 = load i8*, i8** %des_iv.addr, align 8
  %1 = load i8*, i8** %pwd.addr, align 8
  %2 = load i64, i64* %pwdlen.addr, align 8
  %call = call i32 @pem_pbkdf1(i8* noundef %arraydecay, i64 noundef 8, i8* noundef %0, i8* noundef %1, i64 noundef %2) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %des_key, i64 0, i64 0
  %call2 = call i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef %des_ctx, i8* noundef %arraydecay1) #6
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %exit

if.end5:                                          ; preds = %if.end
  %3 = load i64, i64* %buflen.addr, align 8
  %4 = load i8*, i8** %des_iv.addr, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i8*, i8** %buf.addr, align 8
  %call6 = call i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef %des_ctx, i32 noundef 0, i64 noundef %3, i8* noundef %4, i8* noundef %5, i8* noundef %6) #6
  store i32 %call6, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end5, %if.then4, %if.then
  call void @mbedtls_des_free(%struct.mbedtls_des_context* noundef %des_ctx) #6
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %des_key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay7, i64 noundef 8) #6
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_aes_decrypt(i8* noundef %aes_iv, i32 noundef %keylen, i8* noundef %buf, i64 noundef %buflen, i8* noundef %pwd, i64 noundef %pwdlen) #0 {
entry:
  %aes_iv.addr = alloca i8*, align 8
  %keylen.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %aes_ctx = alloca %struct.mbedtls_aes_context, align 8
  %aes_key = alloca [32 x i8], align 16
  %ret = alloca i32, align 4
  store i8* %aes_iv, i8** %aes_iv.addr, align 8
  store i32 %keylen, i32* %keylen.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef %aes_ctx) #6
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %aes_key, i64 0, i64 0
  %0 = load i32, i32* %keylen.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i8*, i8** %aes_iv.addr, align 8
  %2 = load i8*, i8** %pwd.addr, align 8
  %3 = load i64, i64* %pwdlen.addr, align 8
  %call = call i32 @pem_pbkdf1(i8* noundef %arraydecay, i64 noundef %conv, i8* noundef %1, i8* noundef %2, i64 noundef %3) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %aes_key, i64 0, i64 0
  %4 = load i32, i32* %keylen.addr, align 4
  %mul = mul i32 %4, 8
  %call3 = call i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef %aes_ctx, i8* noundef %arraydecay2, i32 noundef %mul) #6
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %exit

if.end7:                                          ; preds = %if.end
  %5 = load i64, i64* %buflen.addr, align 8
  %6 = load i8*, i8** %aes_iv.addr, align 8
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %call8 = call i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef %aes_ctx, i32 noundef 0, i64 noundef %5, i8* noundef %6, i8* noundef %7, i8* noundef %8) #6
  store i32 %call8, i32* %ret, align 4
  br label %exit

exit:                                             ; preds = %if.end7, %if.then6, %if.then
  call void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef %aes_ctx) #6
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %aes_key, i64 0, i64 0
  %9 = load i32, i32* %keylen.addr, align 4
  %conv10 = zext i32 %9 to i64
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay9, i64 noundef %conv10) #6
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_pem_free(%struct.mbedtls_pem_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_pem_context*, align 8
  store %struct.mbedtls_pem_context* %ctx, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %buf = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %buf1 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %2, i32 0, i32 0
  %3 = load i8*, i8** %buf1, align 8
  %4 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %buflen = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %4, i32 0, i32 1
  %5 = load i64, i64* %buflen, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef %5) #6
  %6 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %buf2 = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %6, i32 0, i32 0
  %7 = load i8*, i8** %buf2, align 8
  call void @free(i8* noundef %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %info = getelementptr inbounds %struct.mbedtls_pem_context, %struct.mbedtls_pem_context* %8, i32 0, i32 2
  %9 = load i8*, i8** %info, align 8
  call void @free(i8* noundef %9) #4
  %10 = load %struct.mbedtls_pem_context*, %struct.mbedtls_pem_context** %ctx.addr, align 8
  %11 = bitcast %struct.mbedtls_pem_context* %10 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %11, i64 noundef 24) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pem_write_buffer(i8* noundef %header, i8* noundef %footer, i8* noundef %der_data, i64 noundef %der_len, i8* noundef %buf, i64 noundef %buf_len, i64* noundef %olen) #0 {
entry:
  %retval = alloca i32, align 4
  %header.addr = alloca i8*, align 8
  %footer.addr = alloca i8*, align 8
  %der_data.addr = alloca i8*, align 8
  %der_len.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %encode_buf = alloca i8*, align 8
  %c = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  %use_len = alloca i64, align 8
  %add_len = alloca i64, align 8
  store i8* %header, i8** %header.addr, align 8
  store i8* %footer, i8** %footer.addr, align 8
  store i8* %der_data, i8** %der_data.addr, align 8
  store i64 %der_len, i64* %der_len.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8* null, i8** %encode_buf, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %len, align 8
  store i64 0, i64* %add_len, align 8
  %1 = load i8*, i8** %der_data.addr, align 8
  %2 = load i64, i64* %der_len.addr, align 8
  %call = call i32 @mbedtls_base64_encode(i8* noundef null, i64 noundef 0, i64* noundef %use_len, i8* noundef %1, i64 noundef %2) #6
  %3 = load i8*, i8** %header.addr, align 8
  %call1 = call i64 @strlen(i8* noundef %3) #5
  %4 = load i8*, i8** %footer.addr, align 8
  %call2 = call i64 @strlen(i8* noundef %4) #5
  %add = add i64 %call1, %call2
  %5 = load i64, i64* %use_len, align 8
  %div = udiv i64 %5, 64
  %add3 = add i64 %add, %div
  %add4 = add i64 %add3, 1
  store i64 %add4, i64* %add_len, align 8
  %6 = load i64, i64* %use_len, align 8
  %7 = load i64, i64* %add_len, align 8
  %add5 = add i64 %6, %7
  %8 = load i64, i64* %buf_len.addr, align 8
  %cmp = icmp ugt i64 %add5, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %use_len, align 8
  %10 = load i64, i64* %add_len, align 8
  %add6 = add i64 %9, %10
  %11 = load i64*, i64** %olen.addr, align 8
  store i64 %add6, i64* %11, align 8
  store i32 -42, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i64, i64* %use_len, align 8
  %cmp7 = icmp ne i64 %12, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %13 = load i64, i64* %use_len, align 8
  %call8 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %13) #4
  store i8* %call8, i8** %encode_buf, align 8
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i32 -4480, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %14 = load i8*, i8** %encode_buf, align 8
  %15 = load i64, i64* %use_len, align 8
  %16 = load i8*, i8** %der_data.addr, align 8
  %17 = load i64, i64* %der_len.addr, align 8
  %call12 = call i32 @mbedtls_base64_encode(i8* noundef %14, i64 noundef %15, i64* noundef %use_len, i8* noundef %16, i64 noundef %17) #6
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %18 = load i8*, i8** %encode_buf, align 8
  call void @free(i8* noundef %18) #4
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %header.addr, align 8
  %22 = load i8*, i8** %header.addr, align 8
  %call16 = call i64 @strlen(i8* noundef %22) #5
  %call17 = call i8* @memcpy(i8* noundef %20, i8* noundef %21, i64 noundef %call16) #4
  %23 = load i8*, i8** %header.addr, align 8
  %call18 = call i64 @strlen(i8* noundef %23) #5
  %24 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %call18
  store i8* %add.ptr, i8** %p, align 8
  %25 = load i8*, i8** %encode_buf, align 8
  store i8* %25, i8** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end15
  %26 = load i64, i64* %use_len, align 8
  %tobool = icmp ne i64 %26, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i64, i64* %use_len, align 8
  %cmp19 = icmp ugt i64 %27, 64
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %28 = load i64, i64* %use_len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 64, %cond.true ], [ %28, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %c, align 8
  %31 = load i64, i64* %len, align 8
  %call20 = call i8* @memcpy(i8* noundef %29, i8* noundef %30, i64 noundef %31) #4
  %32 = load i64, i64* %len, align 8
  %33 = load i64, i64* %use_len, align 8
  %sub = sub i64 %33, %32
  store i64 %sub, i64* %use_len, align 8
  %34 = load i64, i64* %len, align 8
  %35 = load i8*, i8** %p, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %add.ptr21, i8** %p, align 8
  %36 = load i64, i64* %len, align 8
  %37 = load i8*, i8** %c, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %add.ptr22, i8** %c, align 8
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 10, i8* %38, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %39 = load i8*, i8** %p, align 8
  %40 = load i8*, i8** %footer.addr, align 8
  %41 = load i8*, i8** %footer.addr, align 8
  %call23 = call i64 @strlen(i8* noundef %41) #5
  %call24 = call i8* @memcpy(i8* noundef %39, i8* noundef %40, i64 noundef %call23) #4
  %42 = load i8*, i8** %footer.addr, align 8
  %call25 = call i64 @strlen(i8* noundef %42) #5
  %43 = load i8*, i8** %p, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %43, i64 %call25
  store i8* %add.ptr26, i8** %p, align 8
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %p, align 8
  %46 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %47 = load i64*, i64** %olen.addr, align 8
  store i64 %sub.ptr.sub, i64* %47, align 8
  %48 = load i8*, i8** %buf.addr, align 8
  %49 = load i64*, i64** %olen.addr, align 8
  %50 = load i64, i64* %49, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %48, i64 %50
  %51 = load i64, i64* %buf_len.addr, align 8
  %52 = load i64*, i64** %olen.addr, align 8
  %53 = load i64, i64* %52, align 8
  %sub29 = sub i64 %51, %53
  %call30 = call i8* @memset(i8* noundef %add.ptr28, i32 noundef 0, i64 noundef %sub29) #4
  %54 = load i8*, i8** %encode_buf, align 8
  call void @free(i8* noundef %54) #4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then14, %if.then10, %if.then
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

declare dso_local i32 @mbedtls_base64_encode(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @mbedtls_des3_init(%struct.mbedtls_des3_context* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_pbkdf1(i8* noundef %key, i64 noundef %keylen, i8* noundef %iv, i8* noundef %pwd, i64 noundef %pwdlen) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %iv.addr = alloca i8*, align 8
  %pwd.addr = alloca i8*, align 8
  %pwdlen.addr = alloca i64, align 8
  %md5_ctx = alloca %struct.mbedtls_md5_context, align 4
  %md5sum = alloca [16 x i8], align 16
  %use_len = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i64 %keylen, i64* %keylen.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i8* %pwd, i8** %pwd.addr, align 8
  store i64 %pwdlen, i64* %pwdlen.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef %md5_ctx) #6
  %call = call i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef %md5_ctx) #6
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** %pwd.addr, align 8
  %1 = load i64, i64* %pwdlen.addr, align 8
  %call1 = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %0, i64 noundef %1) #6
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %iv.addr, align 8
  %call5 = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %2, i64 noundef 8) #6
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %call9 = call i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %arraydecay) #6
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %exit

if.end12:                                         ; preds = %if.end8
  %3 = load i64, i64* %keylen.addr, align 8
  %cmp13 = icmp ule i64 %3, 16
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %4 = load i8*, i8** %key.addr, align 8
  %arraydecay15 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %5 = load i64, i64* %keylen.addr, align 8
  %call16 = call i8* @memcpy(i8* noundef %4, i8* noundef %arraydecay15, i64 noundef %5) #4
  br label %exit

if.end17:                                         ; preds = %if.end12
  %6 = load i8*, i8** %key.addr, align 8
  %arraydecay18 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %call19 = call i8* @memcpy(i8* noundef %6, i8* noundef %arraydecay18, i64 noundef 16) #4
  %call20 = call i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef %md5_ctx) #6
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  br label %exit

if.end23:                                         ; preds = %if.end17
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %call25 = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %arraydecay24, i64 noundef 16) #6
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  br label %exit

if.end28:                                         ; preds = %if.end23
  %7 = load i8*, i8** %pwd.addr, align 8
  %8 = load i64, i64* %pwdlen.addr, align 8
  %call29 = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %7, i64 noundef %8) #6
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  br label %exit

if.end32:                                         ; preds = %if.end28
  %9 = load i8*, i8** %iv.addr, align 8
  %call33 = call i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %9, i64 noundef 8) #6
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  br label %exit

if.end36:                                         ; preds = %if.end32
  %arraydecay37 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %call38 = call i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef %md5_ctx, i8* noundef %arraydecay37) #6
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  br label %exit

if.end41:                                         ; preds = %if.end36
  store i64 16, i64* %use_len, align 8
  %10 = load i64, i64* %keylen.addr, align 8
  %cmp42 = icmp ult i64 %10, 32
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  %11 = load i64, i64* %keylen.addr, align 8
  %sub = sub i64 %11, 16
  store i64 %sub, i64* %use_len, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41
  %12 = load i8*, i8** %key.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 16
  %arraydecay45 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  %13 = load i64, i64* %use_len, align 8
  %call46 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %arraydecay45, i64 noundef %13) #4
  br label %exit

exit:                                             ; preds = %if.end44, %if.then40, %if.then35, %if.then31, %if.then27, %if.then22, %if.then14, %if.then11, %if.then7, %if.then3, %if.then
  call void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef %md5_ctx) #6
  %arraydecay47 = getelementptr inbounds [16 x i8], [16 x i8]* %md5sum, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay47, i64 noundef 16) #6
  %14 = load i32, i32* %ret, align 4
  ret i32 %14
}

declare dso_local i32 @mbedtls_des3_set3key_dec(%struct.mbedtls_des3_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_des3_crypt_cbc(%struct.mbedtls_des3_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #3

declare dso_local void @mbedtls_des3_free(%struct.mbedtls_des3_context* noundef) #3

declare dso_local void @mbedtls_md5_init(%struct.mbedtls_md5_context* noundef) #3

declare dso_local i32 @mbedtls_md5_starts(%struct.mbedtls_md5_context* noundef) #3

declare dso_local i32 @mbedtls_md5_update(%struct.mbedtls_md5_context* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_md5_finish(%struct.mbedtls_md5_context* noundef, i8* noundef) #3

declare dso_local void @mbedtls_md5_free(%struct.mbedtls_md5_context* noundef) #3

declare dso_local void @mbedtls_des_init(%struct.mbedtls_des_context* noundef) #3

declare dso_local i32 @mbedtls_des_setkey_dec(%struct.mbedtls_des_context* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_des_crypt_cbc(%struct.mbedtls_des_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #3

declare dso_local void @mbedtls_des_free(%struct.mbedtls_des_context* noundef) #3

declare dso_local void @mbedtls_aes_init(%struct.mbedtls_aes_context* noundef) #3

declare dso_local i32 @mbedtls_aes_setkey_dec(%struct.mbedtls_aes_context* noundef, i8* noundef, i32 noundef) #3

declare dso_local i32 @mbedtls_aes_crypt_cbc(%struct.mbedtls_aes_context* noundef, i32 noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef) #3

declare dso_local void @mbedtls_aes_free(%struct.mbedtls_aes_context* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
