; ModuleID = 'rsa.c'
source_filename = "rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"rsa.c\00", align 1
@.str.1 = private unnamed_addr constant [257 x i8] c"9292758453063D803DD603D5E777D7888ED1D5BF35786190FA2F23EBC0848AEADDA92CA6C3D80B32C4D109BE0F36D6AE7130B9CED7ACDF54CFC7555AC14EEBAB93A89813FBF3C4F8066D2D800F7C38A81AE31942917403FF4946B0A83D3D3E05EE57C6F5F5606FB5D4BC6CD34EE0801A5E94BB77B07507233A0BC7BAC8F90F79\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"C36D0EB7FCD285223CFB5AABA5BDA3D82C01CAD19EA484A87EA4377637E75500FCB2005C5C7DD6EC4AC023CDA285D796C3D9E75E1EFC42488BB4F1D13AC30A57\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"C000DF51A7C77AE8D7C7370C1FF55B69E211C2B9E5DB1ED0BF61D0D9899620F4910E4168387E3C30AA1E00C339A795088452DD96A9A5EA5D9DCA68DA636032AF\00", align 1
@.str.4 = private unnamed_addr constant [257 x i8] c"24BF6185468786FDD303083D25E64EFC66CA472BC44D253102F8B4A9D3BFA75091386C0077937FE33FA3252D28855837AE1B484A8A9A45F7EE8C0C634F99E8CDDF79C5CE07EE72C7F123142198164234CABB724CF78B8173B9F880FC86322407AF1FEDFDDE2BEB674CA15F3E81A1521E071513A1E85B5DFA031F21ECAE91A34D\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"10001\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  RSA key validation: \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"passed\0A  PKCS#1 encryption : \00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\AA\BB\CC\03\02\01\00\FF\FF\FF\FF\FF\11\223\0A\0B\0C\CC\DD\DD\DD\DD\DD\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"passed\0A  PKCS#1 decryption : \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"  PKCS#1 data sign  : \00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"passed\0A  PKCS#1 sig. verify: \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %ctx, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %E.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store %struct.mbedtls_mpi* %E, %struct.mbedtls_mpi** %E.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %cmp = icmp ne %struct.mbedtls_mpi* %0, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N1 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 2
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %N1, %struct.mbedtls_mpi* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp3 = icmp ne %struct.mbedtls_mpi* %3, null
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false8

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P5 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 5
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call6 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %P5, %struct.mbedtls_mpi* noundef %5) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %land.lhs.true4, %lor.lhs.false
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp9 = icmp ne %struct.mbedtls_mpi* %6, null
  br i1 %cmp9, label %land.lhs.true10, label %lor.lhs.false14

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q11 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 6
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call12 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Q11, %struct.mbedtls_mpi* noundef %8) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true10, %lor.lhs.false8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %cmp15 = icmp ne %struct.mbedtls_mpi* %9, null
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false20

land.lhs.true16:                                  ; preds = %lor.lhs.false14
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D17 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 4
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call18 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %D17, %struct.mbedtls_mpi* noundef %11) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true16, %lor.lhs.false14
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %cmp21 = icmp ne %struct.mbedtls_mpi* %12, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %lor.lhs.false20
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E23 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %13, i32 0, i32 3
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call24 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %E23, %struct.mbedtls_mpi* noundef %14) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true22, %land.lhs.true16, %land.lhs.true10, %land.lhs.true4, %land.lhs.true
  %15 = load i32, i32* %ret, align 4
  %call26 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %15, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 87) #5
  store i32 %call26, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true22, %lor.lhs.false20
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %cmp27 = icmp ne %struct.mbedtls_mpi* %16, null
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end
  %17 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N29 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %17, i32 0, i32 2
  %call30 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %N29) #5
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %18, i32 0, i32 1
  store i64 %call30, i64* %len, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

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

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_import_raw(%struct.mbedtls_rsa_context* noundef %ctx, i8* noundef %N, i64 noundef %N_len, i8* noundef %P, i64 noundef %P_len, i8* noundef %Q, i64 noundef %Q_len, i8* noundef %D, i64 noundef %D_len, i8* noundef %E, i64 noundef %E_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %N.addr = alloca i8*, align 8
  %N_len.addr = alloca i64, align 8
  %P.addr = alloca i8*, align 8
  %P_len.addr = alloca i64, align 8
  %Q.addr = alloca i8*, align 8
  %Q_len.addr = alloca i64, align 8
  %D.addr = alloca i8*, align 8
  %D_len.addr = alloca i64, align 8
  %E.addr = alloca i8*, align 8
  %E_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i8* %N, i8** %N.addr, align 8
  store i64 %N_len, i64* %N_len.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  store i64 %P_len, i64* %P_len.addr, align 8
  store i8* %Q, i8** %Q.addr, align 8
  store i64 %Q_len, i64* %Q_len.addr, align 8
  store i8* %D, i8** %D.addr, align 8
  store i64 %D_len, i64* %D_len.addr, align 8
  store i8* %E, i8** %E.addr, align 8
  store i64 %E_len, i64* %E_len.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i8*, i8** %N.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %do.end
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N2 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 2
  %2 = load i8*, i8** %N.addr, align 8
  %3 = load i64, i64* %N_len.addr, align 8
  %call = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %N2, i8* noundef %2, i64 noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end:                                           ; preds = %do.body1
  br label %do.end5

do.end5:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N6 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 2
  %call7 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %N6) #5
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 1
  store i64 %call7, i64* %len, align 8
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %do.end
  %6 = load i8*, i8** %P.addr, align 8
  %cmp9 = icmp ne i8* %6, null
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P12 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 5
  %8 = load i8*, i8** %P.addr, align 8
  %9 = load i64, i64* %P_len.addr, align 8
  %call13 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %P12, i8* noundef %8, i64 noundef %9) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body11
  br label %cleanup

if.end16:                                         ; preds = %do.body11
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end8
  %10 = load i8*, i8** %Q.addr, align 8
  %cmp19 = icmp ne i8* %10, null
  br i1 %cmp19, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end18
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q22 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 6
  %12 = load i8*, i8** %Q.addr, align 8
  %13 = load i64, i64* %Q_len.addr, align 8
  %call23 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %Q22, i8* noundef %12, i64 noundef %13) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body21
  br label %cleanup

if.end26:                                         ; preds = %do.body21
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %if.end18
  %14 = load i8*, i8** %D.addr, align 8
  %cmp29 = icmp ne i8* %14, null
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end28
  br label %do.body31

do.body31:                                        ; preds = %if.then30
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D32 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 4
  %16 = load i8*, i8** %D.addr, align 8
  %17 = load i64, i64* %D_len.addr, align 8
  %call33 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %D32, i8* noundef %16, i64 noundef %17) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body31
  br label %cleanup

if.end36:                                         ; preds = %do.body31
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.end28
  %18 = load i8*, i8** %E.addr, align 8
  %cmp39 = icmp ne i8* %18, null
  br i1 %cmp39, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end38
  br label %do.body41

do.body41:                                        ; preds = %if.then40
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E42 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %19, i32 0, i32 3
  %20 = load i8*, i8** %E.addr, align 8
  %21 = load i64, i64* %E_len.addr, align 8
  %call43 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %E42, i8* noundef %20, i64 noundef %21) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.body41
  br label %cleanup

if.end46:                                         ; preds = %do.body41
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end38
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then45, %if.then35, %if.then25, %if.then15, %if.then4
  %22 = load i32, i32* %ret, align 4
  %cmp49 = icmp ne i32 %22, 0
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %cleanup
  %23 = load i32, i32* %ret, align 4
  %call51 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 127) #5
  store i32 %call51, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %cleanup
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then50
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %ret = alloca i32, align 4
  %have_N = alloca i32, align 4
  %have_P = alloca i32, align 4
  %have_Q = alloca i32, align 4
  %have_D = alloca i32, align 4
  %have_E = alloca i32, align 4
  %have_DP = alloca i32, align 4
  %have_DQ = alloca i32, align 4
  %have_QP = alloca i32, align 4
  %n_missing = alloca i32, align 4
  %pq_missing = alloca i32, align 4
  %d_missing = alloca i32, align 4
  %is_pub = alloca i32, align 4
  %is_priv = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %N, i64 noundef 0) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %have_N, align 4
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 5
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %P, i64 noundef 0) #5
  %cmp2 = icmp ne i32 %call1, 0
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %have_P, align 4
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 6
  %call4 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Q, i64 noundef 0) #5
  %cmp5 = icmp ne i32 %call4, 0
  %conv6 = zext i1 %cmp5 to i32
  store i32 %conv6, i32* %have_Q, align 4
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 4
  %call7 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %D, i64 noundef 0) #5
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, i32* %have_D, align 4
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %call10 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %E, i64 noundef 0) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %have_E, align 4
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 7
  %call13 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %DP, i64 noundef 0) #5
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %have_DP, align 4
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 8
  %call16 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %DQ, i64 noundef 0) #5
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %have_DQ, align 4
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 9
  %call19 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %QP, i64 noundef 0) #5
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, i32* %have_QP, align 4
  %8 = load i32, i32* %have_P, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.end
  %9 = load i32, i32* %have_Q, align 4
  %tobool22 = icmp ne i32 %9, 0
  br i1 %tobool22, label %land.lhs.true23, label %land.end

land.lhs.true23:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %have_D, align 4
  %tobool24 = icmp ne i32 %10, 0
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true23
  %11 = load i32, i32* %have_E, align 4
  %tobool25 = icmp ne i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true23, %land.lhs.true, %do.end
  %12 = phi i1 [ false, %land.lhs.true23 ], [ false, %land.lhs.true ], [ false, %do.end ], [ %tobool25, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %n_missing, align 4
  %13 = load i32, i32* %have_N, align 4
  %tobool26 = icmp ne i32 %13, 0
  br i1 %tobool26, label %land.lhs.true27, label %land.end35

land.lhs.true27:                                  ; preds = %land.end
  %14 = load i32, i32* %have_P, align 4
  %tobool28 = icmp ne i32 %14, 0
  br i1 %tobool28, label %land.end35, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %15 = load i32, i32* %have_Q, align 4
  %tobool30 = icmp ne i32 %15, 0
  br i1 %tobool30, label %land.end35, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true29
  %16 = load i32, i32* %have_D, align 4
  %tobool32 = icmp ne i32 %16, 0
  br i1 %tobool32, label %land.rhs33, label %land.end35

land.rhs33:                                       ; preds = %land.lhs.true31
  %17 = load i32, i32* %have_E, align 4
  %tobool34 = icmp ne i32 %17, 0
  br label %land.end35

land.end35:                                       ; preds = %land.rhs33, %land.lhs.true31, %land.lhs.true29, %land.lhs.true27, %land.end
  %18 = phi i1 [ false, %land.lhs.true31 ], [ false, %land.lhs.true29 ], [ false, %land.lhs.true27 ], [ false, %land.end ], [ %tobool34, %land.rhs33 ]
  %land.ext36 = zext i1 %18 to i32
  store i32 %land.ext36, i32* %pq_missing, align 4
  %19 = load i32, i32* %have_P, align 4
  %tobool37 = icmp ne i32 %19, 0
  br i1 %tobool37, label %land.lhs.true38, label %land.end44

land.lhs.true38:                                  ; preds = %land.end35
  %20 = load i32, i32* %have_Q, align 4
  %tobool39 = icmp ne i32 %20, 0
  br i1 %tobool39, label %land.lhs.true40, label %land.end44

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %21 = load i32, i32* %have_D, align 4
  %tobool41 = icmp ne i32 %21, 0
  br i1 %tobool41, label %land.end44, label %land.rhs42

land.rhs42:                                       ; preds = %land.lhs.true40
  %22 = load i32, i32* %have_E, align 4
  %tobool43 = icmp ne i32 %22, 0
  br label %land.end44

land.end44:                                       ; preds = %land.rhs42, %land.lhs.true40, %land.lhs.true38, %land.end35
  %23 = phi i1 [ false, %land.lhs.true40 ], [ false, %land.lhs.true38 ], [ false, %land.end35 ], [ %tobool43, %land.rhs42 ]
  %land.ext45 = zext i1 %23 to i32
  store i32 %land.ext45, i32* %d_missing, align 4
  %24 = load i32, i32* %have_N, align 4
  %tobool46 = icmp ne i32 %24, 0
  br i1 %tobool46, label %land.lhs.true47, label %land.end55

land.lhs.true47:                                  ; preds = %land.end44
  %25 = load i32, i32* %have_P, align 4
  %tobool48 = icmp ne i32 %25, 0
  br i1 %tobool48, label %land.end55, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true47
  %26 = load i32, i32* %have_Q, align 4
  %tobool50 = icmp ne i32 %26, 0
  br i1 %tobool50, label %land.end55, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %27 = load i32, i32* %have_D, align 4
  %tobool52 = icmp ne i32 %27, 0
  br i1 %tobool52, label %land.end55, label %land.rhs53

land.rhs53:                                       ; preds = %land.lhs.true51
  %28 = load i32, i32* %have_E, align 4
  %tobool54 = icmp ne i32 %28, 0
  br label %land.end55

land.end55:                                       ; preds = %land.rhs53, %land.lhs.true51, %land.lhs.true49, %land.lhs.true47, %land.end44
  %29 = phi i1 [ false, %land.lhs.true51 ], [ false, %land.lhs.true49 ], [ false, %land.lhs.true47 ], [ false, %land.end44 ], [ %tobool54, %land.rhs53 ]
  %land.ext56 = zext i1 %29 to i32
  store i32 %land.ext56, i32* %is_pub, align 4
  %30 = load i32, i32* %n_missing, align 4
  %tobool57 = icmp ne i32 %30, 0
  br i1 %tobool57, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end55
  %31 = load i32, i32* %pq_missing, align 4
  %tobool58 = icmp ne i32 %31, 0
  br i1 %tobool58, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %32 = load i32, i32* %d_missing, align 4
  %tobool59 = icmp ne i32 %32, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.end55
  %33 = phi i1 [ true, %lor.lhs.false ], [ true, %land.end55 ], [ %tobool59, %lor.rhs ]
  %lor.ext = zext i1 %33 to i32
  store i32 %lor.ext, i32* %is_priv, align 4
  %34 = load i32, i32* %is_priv, align 4
  %tobool60 = icmp ne i32 %34, 0
  br i1 %tobool60, label %if.end, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %lor.end
  %35 = load i32, i32* %is_pub, align 4
  %tobool62 = icmp ne i32 %35, 0
  br i1 %tobool62, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true61
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true61, %lor.end
  %36 = load i32, i32* %have_N, align 4
  %tobool63 = icmp ne i32 %36, 0
  br i1 %tobool63, label %if.end80, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.end
  %37 = load i32, i32* %have_P, align 4
  %tobool65 = icmp ne i32 %37, 0
  br i1 %tobool65, label %land.lhs.true66, label %if.end80

land.lhs.true66:                                  ; preds = %land.lhs.true64
  %38 = load i32, i32* %have_Q, align 4
  %tobool67 = icmp ne i32 %38, 0
  br i1 %tobool67, label %if.then68, label %if.end80

if.then68:                                        ; preds = %land.lhs.true66
  %39 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N69 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %39, i32 0, i32 2
  %40 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P70 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %40, i32 0, i32 5
  %41 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q71 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %41, i32 0, i32 6
  %call72 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %N69, %struct.mbedtls_mpi* noundef %P70, %struct.mbedtls_mpi* noundef %Q71) #5
  store i32 %call72, i32* %ret, align 4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.then68
  %42 = load i32, i32* %ret, align 4
  %call76 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %42, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 278) #5
  store i32 %call76, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.then68
  %43 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N78 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %43, i32 0, i32 2
  %call79 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %N78) #5
  %44 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %44, i32 0, i32 1
  store i64 %call79, i64* %len, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %land.lhs.true66, %land.lhs.true64, %if.end
  %45 = load i32, i32* %pq_missing, align 4
  %tobool81 = icmp ne i32 %45, 0
  br i1 %tobool81, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end80
  %46 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N83 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %46, i32 0, i32 2
  %47 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E84 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %47, i32 0, i32 3
  %48 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D85 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %48, i32 0, i32 4
  %49 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P86 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %49, i32 0, i32 5
  %50 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q87 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %50, i32 0, i32 6
  %call88 = call i32 @mbedtls_rsa_deduce_primes(%struct.mbedtls_mpi* noundef %N83, %struct.mbedtls_mpi* noundef %E84, %struct.mbedtls_mpi* noundef %D85, %struct.mbedtls_mpi* noundef %P86, %struct.mbedtls_mpi* noundef %Q87) #5
  store i32 %call88, i32* %ret, align 4
  %51 = load i32, i32* %ret, align 4
  %cmp89 = icmp ne i32 %51, 0
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.then82
  %52 = load i32, i32* %ret, align 4
  %call92 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %52, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 293) #5
  store i32 %call92, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.then82
  br label %if.end107

if.else:                                          ; preds = %if.end80
  %53 = load i32, i32* %d_missing, align 4
  %tobool94 = icmp ne i32 %53, 0
  br i1 %tobool94, label %if.then95, label %if.end106

if.then95:                                        ; preds = %if.else
  %54 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P96 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %54, i32 0, i32 5
  %55 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q97 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %55, i32 0, i32 6
  %56 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E98 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %56, i32 0, i32 3
  %57 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D99 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %57, i32 0, i32 4
  %call100 = call i32 @mbedtls_rsa_deduce_private_exponent(%struct.mbedtls_mpi* noundef %P96, %struct.mbedtls_mpi* noundef %Q97, %struct.mbedtls_mpi* noundef %E98, %struct.mbedtls_mpi* noundef %D99) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.then95
  %58 = load i32, i32* %ret, align 4
  %call104 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %58, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 303) #5
  store i32 %call104, i32* %retval, align 4
  br label %return

if.end105:                                        ; preds = %if.then95
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.else
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end93
  %59 = load i32, i32* %is_priv, align 4
  %tobool108 = icmp ne i32 %59, 0
  br i1 %tobool108, label %land.lhs.true109, label %if.end128

land.lhs.true109:                                 ; preds = %if.end107
  %60 = load i32, i32* %have_DP, align 4
  %tobool110 = icmp ne i32 %60, 0
  br i1 %tobool110, label %land.lhs.true111, label %if.then115

land.lhs.true111:                                 ; preds = %land.lhs.true109
  %61 = load i32, i32* %have_DQ, align 4
  %tobool112 = icmp ne i32 %61, 0
  br i1 %tobool112, label %land.lhs.true113, label %if.then115

land.lhs.true113:                                 ; preds = %land.lhs.true111
  %62 = load i32, i32* %have_QP, align 4
  %tobool114 = icmp ne i32 %62, 0
  br i1 %tobool114, label %if.end128, label %if.then115

if.then115:                                       ; preds = %land.lhs.true113, %land.lhs.true111, %land.lhs.true109
  %63 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P116 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %63, i32 0, i32 5
  %64 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q117 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %64, i32 0, i32 6
  %65 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D118 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %65, i32 0, i32 4
  %66 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP119 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %66, i32 0, i32 7
  %67 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ120 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %67, i32 0, i32 8
  %68 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP121 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %68, i32 0, i32 9
  %call122 = call i32 @mbedtls_rsa_deduce_crt(%struct.mbedtls_mpi* noundef %P116, %struct.mbedtls_mpi* noundef %Q117, %struct.mbedtls_mpi* noundef %D118, %struct.mbedtls_mpi* noundef %DP119, %struct.mbedtls_mpi* noundef %DQ120, %struct.mbedtls_mpi* noundef %QP121) #5
  store i32 %call122, i32* %ret, align 4
  %69 = load i32, i32* %ret, align 4
  %cmp123 = icmp ne i32 %69, 0
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.then115
  %70 = load i32, i32* %ret, align 4
  %call126 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %70, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 318) #5
  store i32 %call126, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.then115
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %land.lhs.true113, %if.end107
  %71 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %72 = load i32, i32* %is_priv, align 4
  %call129 = call i32 @rsa_check_context(%struct.mbedtls_rsa_context* noundef %71, i32 noundef %72, i32 noundef 1) #5
  store i32 %call129, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end128, %if.then125, %if.then103, %if.then91, %if.then75, %if.then
  %73 = load i32, i32* %retval, align 4
  ret i32 %73
}

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_deduce_primes(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_deduce_private_exponent(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_deduce_crt(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_check_context(%struct.mbedtls_rsa_context* noundef %ctx, i32 noundef %is_priv, i32 noundef %blinding_needed) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %is_priv.addr = alloca i32, align 4
  %blinding_needed.addr = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 %is_priv, i32* %is_priv.addr, align 4
  store i32 %blinding_needed, i32* %blinding_needed.addr, align 4
  %0 = load i32, i32* %blinding_needed.addr, align 4
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 1
  %2 = load i64, i64* %len, align 8
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 2
  %call = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %N) #5
  %cmp = icmp ne i64 %2, %call
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len1 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 1
  %5 = load i64, i64* %len1, align 8
  %cmp2 = icmp ugt i64 %5, 1024
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N3 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 2
  %call4 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %N3, i64 noundef 0) #5
  %cmp5 = icmp sle i32 %call4, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N7 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 2
  %call8 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %N7, i64 noundef 0) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false6, %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false6
  %8 = load i32, i32* %is_priv.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end11
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 5
  %call12 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %P, i64 noundef 0) #5
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then25, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P15 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 5
  %call16 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %P15, i64 noundef 0) #5
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then25, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 6
  %call19 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Q, i64 noundef 0) #5
  %cmp20 = icmp sle i32 %call19, 0
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q22 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 6
  %call23 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %Q22, i64 noundef 0) #5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false14, %land.lhs.true
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false21, %if.end11
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %13, i32 0, i32 3
  %call27 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %E, i64 noundef 0) #5
  %cmp28 = icmp sle i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end26
  %14 = load i32, i32* %is_priv.addr, align 4
  %tobool31 = icmp ne i32 %14, 0
  br i1 %tobool31, label %land.lhs.true32, label %if.end39

land.lhs.true32:                                  ; preds = %if.end30
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 7
  %call33 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %DP, i64 noundef 0) #5
  %cmp34 = icmp sle i32 %call33, 0
  br i1 %cmp34, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true32
  %16 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %16, i32 0, i32 8
  %call36 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %DQ, i64 noundef 0) #5
  %cmp37 = icmp sle i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false35, %land.lhs.true32
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %lor.lhs.false35, %if.end30
  %17 = load i32, i32* %is_priv.addr, align 4
  %tobool40 = icmp ne i32 %17, 0
  br i1 %tobool40, label %land.lhs.true41, label %if.end45

land.lhs.true41:                                  ; preds = %if.end39
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %18, i32 0, i32 9
  %call42 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %QP, i64 noundef 0) #5
  %cmp43 = icmp sle i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %land.lhs.true41
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %land.lhs.true41, %if.end39
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then44, %if.then38, %if.then29, %if.then25, %if.then10, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_export_raw(%struct.mbedtls_rsa_context* noundef %ctx, i8* noundef %N, i64 noundef %N_len, i8* noundef %P, i64 noundef %P_len, i8* noundef %Q, i64 noundef %Q_len, i8* noundef %D, i64 noundef %D_len, i8* noundef %E, i64 noundef %E_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %N.addr = alloca i8*, align 8
  %N_len.addr = alloca i64, align 8
  %P.addr = alloca i8*, align 8
  %P_len.addr = alloca i64, align 8
  %Q.addr = alloca i8*, align 8
  %Q_len.addr = alloca i64, align 8
  %D.addr = alloca i8*, align 8
  %D_len.addr = alloca i64, align 8
  %E.addr = alloca i8*, align 8
  %E_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %is_priv = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i8* %N, i8** %N.addr, align 8
  store i64 %N_len, i64* %N_len.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  store i64 %P_len, i64* %P_len.addr, align 8
  store i8* %Q, i8** %Q.addr, align 8
  store i64 %Q_len, i64* %Q_len.addr, align 8
  store i8* %D, i8** %D.addr, align 8
  store i64 %D_len, i64* %D_len.addr, align 8
  store i8* %E, i8** %E.addr, align 8
  store i64 %E_len, i64* %E_len.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N1 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %N1, i64 noundef 0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P2 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 5
  %call3 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %P2, i64 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q6 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 6
  %call7 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Q6, i64 noundef 0) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D10 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 4
  %call11 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %D10, i64 noundef 0) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E13 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %call14 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %E13, i64 noundef 0) #5
  %cmp15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %do.end
  %5 = phi i1 [ false, %land.lhs.true9 ], [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %do.end ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %is_priv, align 4
  %6 = load i32, i32* %is_priv, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end21, label %if.then

if.then:                                          ; preds = %land.end
  %7 = load i8*, i8** %P.addr, align 8
  %cmp16 = icmp ne i8* %7, null
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i8*, i8** %Q.addr, align 8
  %cmp17 = icmp ne i8* %8, null
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %9 = load i8*, i8** %D.addr, align 8
  %cmp19 = icmp ne i8* %9, null
  br i1 %cmp19, label %if.then20, label %if.end

if.then20:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.then
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false18
  br label %if.end21

if.end21:                                         ; preds = %if.end, %land.end
  %10 = load i8*, i8** %N.addr, align 8
  %cmp22 = icmp ne i8* %10, null
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end21
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N25 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 2
  %12 = load i8*, i8** %N.addr, align 8
  %13 = load i64, i64* %N_len.addr, align 8
  %call26 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %N25, i8* noundef %12, i64 noundef %13) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body24
  br label %cleanup

if.end29:                                         ; preds = %do.body24
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %if.end21
  %14 = load i8*, i8** %P.addr, align 8
  %cmp32 = icmp ne i8* %14, null
  br i1 %cmp32, label %if.then33, label %if.end41

if.then33:                                        ; preds = %if.end31
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P35 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 5
  %16 = load i8*, i8** %P.addr, align 8
  %17 = load i64, i64* %P_len.addr, align 8
  %call36 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %P35, i8* noundef %16, i64 noundef %17) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body34
  br label %cleanup

if.end39:                                         ; preds = %do.body34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end31
  %18 = load i8*, i8** %Q.addr, align 8
  %cmp42 = icmp ne i8* %18, null
  br i1 %cmp42, label %if.then43, label %if.end51

if.then43:                                        ; preds = %if.end41
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q45 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %19, i32 0, i32 6
  %20 = load i8*, i8** %Q.addr, align 8
  %21 = load i64, i64* %Q_len.addr, align 8
  %call46 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %Q45, i8* noundef %20, i64 noundef %21) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body44
  br label %cleanup

if.end49:                                         ; preds = %do.body44
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %if.end41
  %22 = load i8*, i8** %D.addr, align 8
  %cmp52 = icmp ne i8* %22, null
  br i1 %cmp52, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.end51
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D55 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %23, i32 0, i32 4
  %24 = load i8*, i8** %D.addr, align 8
  %25 = load i64, i64* %D_len.addr, align 8
  %call56 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %D55, i8* noundef %24, i64 noundef %25) #5
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.body54
  br label %cleanup

if.end59:                                         ; preds = %do.body54
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  br label %if.end61

if.end61:                                         ; preds = %do.end60, %if.end51
  %26 = load i8*, i8** %E.addr, align 8
  %cmp62 = icmp ne i8* %26, null
  br i1 %cmp62, label %if.then63, label %if.end71

if.then63:                                        ; preds = %if.end61
  br label %do.body64

do.body64:                                        ; preds = %if.then63
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E65 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %27, i32 0, i32 3
  %28 = load i8*, i8** %E.addr, align 8
  %29 = load i64, i64* %E_len.addr, align 8
  %call66 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %E65, i8* noundef %28, i64 noundef %29) #5
  store i32 %call66, i32* %ret, align 4
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body64
  br label %cleanup

if.end69:                                         ; preds = %do.body64
  br label %do.end70

do.end70:                                         ; preds = %if.end69
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.end61
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then68, %if.then58, %if.then48, %if.then38, %if.then28
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then20
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %ctx, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %E.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %is_priv = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store %struct.mbedtls_mpi* %E, %struct.mbedtls_mpi** %E.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N1 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %N1, i64 noundef 0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P2 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 5
  %call3 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %P2, i64 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q6 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 6
  %call7 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Q6, i64 noundef 0) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D10 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 4
  %call11 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %D10, i64 noundef 0) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E13 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %call14 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %E13, i64 noundef 0) #5
  %cmp15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %do.end
  %5 = phi i1 [ false, %land.lhs.true9 ], [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %do.end ], [ %cmp15, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %is_priv, align 4
  %6 = load i32, i32* %is_priv, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end21, label %if.then

if.then:                                          ; preds = %land.end
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp16 = icmp ne %struct.mbedtls_mpi* %7, null
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp17 = icmp ne %struct.mbedtls_mpi* %8, null
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %cmp19 = icmp ne %struct.mbedtls_mpi* %9, null
  br i1 %cmp19, label %if.then20, label %if.end

if.then20:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.then
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false18
  br label %if.end21

if.end21:                                         ; preds = %if.end, %land.end
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %cmp22 = icmp ne %struct.mbedtls_mpi* %10, null
  br i1 %cmp22, label %land.lhs.true23, label %lor.lhs.false27

land.lhs.true23:                                  ; preds = %if.end21
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N24 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 2
  %call25 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %11, %struct.mbedtls_mpi* noundef %N24) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then51, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true23, %if.end21
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp28 = icmp ne %struct.mbedtls_mpi* %13, null
  br i1 %cmp28, label %land.lhs.true29, label %lor.lhs.false33

land.lhs.true29:                                  ; preds = %lor.lhs.false27
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P30 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 5
  %call31 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %P30) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then51, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true29, %lor.lhs.false27
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp34 = icmp ne %struct.mbedtls_mpi* %16, null
  br i1 %cmp34, label %land.lhs.true35, label %lor.lhs.false39

land.lhs.true35:                                  ; preds = %lor.lhs.false33
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q36 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %18, i32 0, i32 6
  %call37 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %17, %struct.mbedtls_mpi* noundef %Q36) #5
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then51, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true35, %lor.lhs.false33
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %cmp40 = icmp ne %struct.mbedtls_mpi* %19, null
  br i1 %cmp40, label %land.lhs.true41, label %lor.lhs.false45

land.lhs.true41:                                  ; preds = %lor.lhs.false39
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %21 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D42 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %21, i32 0, i32 4
  %call43 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %20, %struct.mbedtls_mpi* noundef %D42) #5
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then51, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %land.lhs.true41, %lor.lhs.false39
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %cmp46 = icmp ne %struct.mbedtls_mpi* %22, null
  br i1 %cmp46, label %land.lhs.true47, label %if.end52

land.lhs.true47:                                  ; preds = %lor.lhs.false45
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %24 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E48 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %24, i32 0, i32 3
  %call49 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %23, %struct.mbedtls_mpi* noundef %E48) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %land.lhs.true47, %land.lhs.true41, %land.lhs.true35, %land.lhs.true29, %land.lhs.true23
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %land.lhs.true47, %lor.lhs.false45
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then51, %if.then20
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_export_crt(%struct.mbedtls_rsa_context* noundef %ctx, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %DP.addr = alloca %struct.mbedtls_mpi*, align 8
  %DQ.addr = alloca %struct.mbedtls_mpi*, align 8
  %QP.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %is_priv = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store %struct.mbedtls_mpi* %DP, %struct.mbedtls_mpi** %DP.addr, align 8
  store %struct.mbedtls_mpi* %DQ, %struct.mbedtls_mpi** %DQ.addr, align 8
  store %struct.mbedtls_mpi* %QP, %struct.mbedtls_mpi** %QP.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %N, i64 noundef 0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.end
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 5
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %P, i64 noundef 0) #5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true3, label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 6
  %call4 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Q, i64 noundef 0) #5
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 4
  %call7 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %D, i64 noundef 0) #5
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %call9 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %E, i64 noundef 0) #5
  %cmp10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %do.end
  %5 = phi i1 [ false, %land.lhs.true6 ], [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %do.end ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %is_priv, align 4
  %6 = load i32, i32* %is_priv, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.end
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP.addr, align 8
  %cmp11 = icmp ne %struct.mbedtls_mpi* %7, null
  br i1 %cmp11, label %land.lhs.true12, label %lor.lhs.false

land.lhs.true12:                                  ; preds = %if.end
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP.addr, align 8
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP13 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 7
  %call14 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %DP13) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true12, %if.end
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ.addr, align 8
  %cmp16 = icmp ne %struct.mbedtls_mpi* %10, null
  br i1 %cmp16, label %land.lhs.true17, label %lor.lhs.false21

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ.addr, align 8
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ18 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 8
  %call19 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %11, %struct.mbedtls_mpi* noundef %DQ18) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then27, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %land.lhs.true17, %lor.lhs.false
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %QP.addr, align 8
  %cmp22 = icmp ne %struct.mbedtls_mpi* %13, null
  br i1 %cmp22, label %land.lhs.true23, label %if.end29

land.lhs.true23:                                  ; preds = %lor.lhs.false21
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %QP.addr, align 8
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP24 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 9
  %call25 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %QP24) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true23, %land.lhs.true17, %land.lhs.true12
  %16 = load i32, i32* %ret, align 4
  %call28 = call i32 @mbedtls_error_add(i32 noundef -16512, i32 noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 446) #5
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true23, %lor.lhs.false21
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then27, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %1 = bitcast %struct.mbedtls_rsa_context* %0 to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 336) #6
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 15
  store i32 0, i32* %padding, align 8
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 16
  store i32 0, i32* %hash_id, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_set_padding(%struct.mbedtls_rsa_context* noundef %ctx, i32 noundef %padding, i32 noundef %hash_id) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %padding.addr = alloca i32, align 4
  %hash_id.addr = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 %padding, i32* %padding.addr, align 4
  store i32 %hash_id, i32* %hash_id.addr, align 4
  %0 = load i32, i32* %padding.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -16640, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %1 = load i32, i32* %padding.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %sw.epilog
  %2 = load i32, i32* %hash_id.addr, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %hash_id.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %3) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp3 = icmp eq %struct.mbedtls_md_info_t* %4, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -16640, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true, %sw.epilog
  %5 = load i32, i32* %padding.addr, align 4
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding6 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 15
  store i32 %5, i32* %padding6, align 8
  %7 = load i32, i32* %hash_id.addr, align 4
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id7 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %8, i32 0, i32 16
  store i32 %7, i32* %hash_id7, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %sw.default
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_gen_key(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %nbits, i32 noundef %exponent) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  %exponent.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %H = alloca %struct.mbedtls_mpi, align 8
  %G = alloca %struct.mbedtls_mpi, align 8
  %L = alloca %struct.mbedtls_mpi, align 8
  %prime_quality = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %nbits, i32* %nbits.addr, align 4
  store i32 %exponent, i32* %exponent.addr, align 4
  store i32 -110, i32* %ret, align 4
  store i32 0, i32* %prime_quality, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load i32, i32* %nbits.addr, align 4
  %cmp = icmp ugt i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 2, i32* %prime_quality, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end2
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %H) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %G) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %L) #5
  %1 = load i32, i32* %nbits.addr, align 4
  %cmp3 = icmp ult i32 %1, 128
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %exponent.addr, align 4
  %cmp4 = icmp slt i32 %2, 3
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %nbits.addr, align 4
  %rem = urem i32 %3, 2
  %cmp6 = icmp ne i32 %rem, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  store i32 -16512, i32* %ret, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  br label %do.body9

do.body9:                                         ; preds = %if.end8
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %5 = load i32, i32* %exponent.addr, align 4
  %conv = sext i32 %5 to i64
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %E, i64 noundef %conv) #5
  store i32 %call, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body9
  br label %cleanup

if.end13:                                         ; preds = %do.body9
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %do.body15

do.body15:                                        ; preds = %do.cond, %do.end14
  br label %do.body16

do.body16:                                        ; preds = %do.body15
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 5
  %7 = load i32, i32* %nbits.addr, align 4
  %shr = lshr i32 %7, 1
  %conv17 = zext i32 %shr to i64
  %8 = load i32, i32* %prime_quality, align 4
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %call18 = call i32 @mbedtls_mpi_gen_prime(%struct.mbedtls_mpi* noundef %P, i64 noundef %conv17, i32 noundef %8, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body16
  br label %cleanup

if.end22:                                         ; preds = %do.body16
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 6
  %12 = load i32, i32* %nbits.addr, align 4
  %shr25 = lshr i32 %12, 1
  %conv26 = zext i32 %shr25 to i64
  %13 = load i32, i32* %prime_quality, align 4
  %14 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %15 = load i8*, i8** %p_rng.addr, align 8
  %call27 = call i32 @mbedtls_mpi_gen_prime(%struct.mbedtls_mpi* noundef %Q, i64 noundef %conv26, i32 noundef %13, i32 (i8*, i8*, i64)* noundef %14, i8* noundef %15) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body24
  br label %cleanup

if.end31:                                         ; preds = %do.body24
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  %16 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P34 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %16, i32 0, i32 5
  %17 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q35 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %17, i32 0, i32 6
  %call36 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %H, %struct.mbedtls_mpi* noundef %P34, %struct.mbedtls_mpi* noundef %Q35) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body33
  br label %cleanup

if.end40:                                         ; preds = %do.body33
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  %call42 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %H) #5
  %18 = load i32, i32* %nbits.addr, align 4
  %cmp43 = icmp uge i32 %18, 200
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end41
  %19 = load i32, i32* %nbits.addr, align 4
  %shr45 = lshr i32 %19, 1
  %sub = sub i32 %shr45, 99
  br label %cond.end

cond.false:                                       ; preds = %do.end41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %conv46 = zext i32 %cond to i64
  %cmp47 = icmp ule i64 %call42, %conv46
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %cond.end
  br label %do.cond

if.end50:                                         ; preds = %cond.end
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %H, i32 0, i32 0
  %20 = load i32, i32* %s, align 8
  %cmp51 = icmp slt i32 %20, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end50
  %21 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P54 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %21, i32 0, i32 5
  %22 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q55 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %22, i32 0, i32 6
  call void @mbedtls_mpi_swap(%struct.mbedtls_mpi* noundef %P54, %struct.mbedtls_mpi* noundef %Q55) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50
  br label %do.body57

do.body57:                                        ; preds = %if.end56
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P58 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %23, i32 0, i32 5
  %24 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P59 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %24, i32 0, i32 5
  %call60 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %P58, %struct.mbedtls_mpi* noundef %P59, i64 noundef 1) #5
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %do.body57
  br label %cleanup

if.end64:                                         ; preds = %do.body57
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  br label %do.body66

do.body66:                                        ; preds = %do.end65
  %25 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q67 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %25, i32 0, i32 6
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q68 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %26, i32 0, i32 6
  %call69 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %Q67, %struct.mbedtls_mpi* noundef %Q68, i64 noundef 1) #5
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %do.body66
  br label %cleanup

if.end73:                                         ; preds = %do.body66
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  br label %do.body75

do.body75:                                        ; preds = %do.end74
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P76 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %27, i32 0, i32 5
  %28 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q77 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %28, i32 0, i32 6
  %call78 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %H, %struct.mbedtls_mpi* noundef %P76, %struct.mbedtls_mpi* noundef %Q77) #5
  store i32 %call78, i32* %ret, align 4
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %do.body75
  br label %cleanup

if.end82:                                         ; preds = %do.body75
  br label %do.end83

do.end83:                                         ; preds = %if.end82
  br label %do.body84

do.body84:                                        ; preds = %do.end83
  %29 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E85 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %29, i32 0, i32 3
  %call86 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %G, %struct.mbedtls_mpi* noundef %E85, %struct.mbedtls_mpi* noundef %H) #5
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body84
  br label %cleanup

if.end90:                                         ; preds = %do.body84
  br label %do.end91

do.end91:                                         ; preds = %if.end90
  %call92 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %G, i64 noundef 1) #5
  %cmp93 = icmp ne i32 %call92, 0
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.end91
  br label %do.cond

if.end96:                                         ; preds = %do.end91
  br label %do.body97

do.body97:                                        ; preds = %if.end96
  %30 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P98 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %30, i32 0, i32 5
  %31 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q99 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %31, i32 0, i32 6
  %call100 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %G, %struct.mbedtls_mpi* noundef %P98, %struct.mbedtls_mpi* noundef %Q99) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body97
  br label %cleanup

if.end104:                                        ; preds = %do.body97
  br label %do.end105

do.end105:                                        ; preds = %if.end104
  br label %do.body106

do.body106:                                       ; preds = %do.end105
  %call107 = call i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %H, %struct.mbedtls_mpi* noundef %G) #5
  store i32 %call107, i32* %ret, align 4
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %do.body106
  br label %cleanup

if.end111:                                        ; preds = %do.body106
  br label %do.end112

do.end112:                                        ; preds = %if.end111
  br label %do.body113

do.body113:                                       ; preds = %do.end112
  %32 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %32, i32 0, i32 4
  %33 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E114 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %33, i32 0, i32 3
  %call115 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E114, %struct.mbedtls_mpi* noundef %L) #5
  store i32 %call115, i32* %ret, align 4
  %cmp116 = icmp ne i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %do.body113
  br label %cleanup

if.end119:                                        ; preds = %do.body113
  br label %do.end120

do.end120:                                        ; preds = %if.end119
  %34 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D121 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %34, i32 0, i32 4
  %call122 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %D121) #5
  %35 = load i32, i32* %nbits.addr, align 4
  %add = add i32 %35, 1
  %div = udiv i32 %add, 2
  %conv123 = zext i32 %div to i64
  %cmp124 = icmp ule i64 %call122, %conv123
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %do.end120
  br label %do.cond

if.end127:                                        ; preds = %do.end120
  br label %do.end128

do.cond:                                          ; preds = %if.then126, %if.then95, %if.then49
  br i1 true, label %do.body15, label %do.end128

do.end128:                                        ; preds = %do.cond, %if.end127
  br label %do.body129

do.body129:                                       ; preds = %do.end128
  %36 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P130 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %36, i32 0, i32 5
  %37 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P131 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %37, i32 0, i32 5
  %call132 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %P130, %struct.mbedtls_mpi* noundef %P131, i64 noundef 1) #5
  store i32 %call132, i32* %ret, align 4
  %cmp133 = icmp ne i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %do.body129
  br label %cleanup

if.end136:                                        ; preds = %do.body129
  br label %do.end138

do.end138:                                        ; preds = %if.end136
  br label %do.body139

do.body139:                                       ; preds = %do.end138
  %38 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q140 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %38, i32 0, i32 6
  %39 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q141 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %39, i32 0, i32 6
  %call142 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %Q140, %struct.mbedtls_mpi* noundef %Q141, i64 noundef 1) #5
  store i32 %call142, i32* %ret, align 4
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %do.body139
  br label %cleanup

if.end146:                                        ; preds = %do.body139
  br label %do.end148

do.end148:                                        ; preds = %if.end146
  br label %do.body149

do.body149:                                       ; preds = %do.end148
  %40 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %40, i32 0, i32 2
  %41 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P150 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %41, i32 0, i32 5
  %42 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q151 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %42, i32 0, i32 6
  %call152 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P150, %struct.mbedtls_mpi* noundef %Q151) #5
  store i32 %call152, i32* %ret, align 4
  %cmp153 = icmp ne i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %do.body149
  br label %cleanup

if.end156:                                        ; preds = %do.body149
  br label %do.end158

do.end158:                                        ; preds = %if.end156
  %43 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N159 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %43, i32 0, i32 2
  %call160 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %N159) #5
  %44 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %44, i32 0, i32 1
  store i64 %call160, i64* %len, align 8
  br label %do.body161

do.body161:                                       ; preds = %do.end158
  %45 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P162 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %45, i32 0, i32 5
  %46 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q163 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %46, i32 0, i32 6
  %47 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D164 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %47, i32 0, i32 4
  %48 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %48, i32 0, i32 7
  %49 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %49, i32 0, i32 8
  %50 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %50, i32 0, i32 9
  %call165 = call i32 @mbedtls_rsa_deduce_crt(%struct.mbedtls_mpi* noundef %P162, %struct.mbedtls_mpi* noundef %Q163, %struct.mbedtls_mpi* noundef %D164, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #5
  store i32 %call165, i32* %ret, align 4
  %cmp166 = icmp ne i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %do.body161
  br label %cleanup

if.end169:                                        ; preds = %do.body161
  br label %do.end171

do.end171:                                        ; preds = %if.end169
  br label %do.body172

do.body172:                                       ; preds = %do.end171
  %51 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %call173 = call i32 @mbedtls_rsa_check_privkey(%struct.mbedtls_rsa_context* noundef %51) #5
  store i32 %call173, i32* %ret, align 4
  %cmp174 = icmp ne i32 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %do.body172
  br label %cleanup

if.end177:                                        ; preds = %do.body172
  br label %do.end179

do.end179:                                        ; preds = %if.end177
  br label %cleanup

cleanup:                                          ; preds = %do.end179, %if.then176, %if.then168, %if.then155, %if.then145, %if.then135, %if.then118, %if.then110, %if.then103, %if.then89, %if.then81, %if.then72, %if.then63, %if.then39, %if.then30, %if.then21, %if.then12, %if.then7
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %H) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %G) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %L) #5
  %52 = load i32, i32* %ret, align 4
  %cmp180 = icmp ne i32 %52, 0
  br i1 %cmp180, label %if.then182, label %if.end189

if.then182:                                       ; preds = %cleanup
  %53 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %53) #5
  %54 = load i32, i32* %ret, align 4
  %sub183 = sub nsw i32 0, %54
  %and = and i32 %sub183, -128
  %cmp184 = icmp eq i32 %and, 0
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.then182
  %55 = load i32, i32* %ret, align 4
  %call187 = call i32 @mbedtls_error_add(i32 noundef -16768, i32 noundef %55, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 642) #5
  store i32 %call187, i32* %ret, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.then182
  %56 = load i32, i32* %ret, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

if.end189:                                        ; preds = %cleanup
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end189, %if.end188
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_gen_prime(%struct.mbedtls_mpi* noundef, i64 noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_swap(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_check_privkey(%struct.mbedtls_rsa_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %call = call i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef %0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %call1 = call i32 @rsa_check_context(%struct.mbedtls_rsa_context* noundef %1, i32 noundef 1, i32 noundef 1) #5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 2
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 5
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 6
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 4
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 3
  %call3 = call i32 @mbedtls_rsa_validate_params(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E, i32 (i8*, i8*, i64)* noundef null, i8* noundef null) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 -16896, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P6 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 5
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q7 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %8, i32 0, i32 6
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D8 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 4
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 7
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 8
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 9
  %call9 = call i32 @mbedtls_rsa_validate_crt(%struct.mbedtls_mpi* noundef %P6, %struct.mbedtls_mpi* noundef %Q7, %struct.mbedtls_mpi* noundef %D8, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #5
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %cmp = icmp eq %struct.mbedtls_rsa_context* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 13
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Vi) #5
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 14
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Vf) #5
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RN = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 10
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RN) #5
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %D = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #5
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #5
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #5
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #5
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %8, i32 0, i32 2
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 12
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RQ) #5
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 11
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RP) #5
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 9
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %QP) #5
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ) #5
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %13, i32 0, i32 7
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %call = call i32 @rsa_check_context(%struct.mbedtls_rsa_context* noundef %0, i32 noundef 0, i32 noundef 0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 2
  %call1 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %N) #5
  %cmp2 = icmp ult i64 %call1, 128
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 3
  %call5 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %E, i64 noundef 0) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E7 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 3
  %call8 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %E7) #5
  %cmp9 = icmp ult i64 %call8, 2
  br i1 %cmp9, label %if.then15, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E11 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N12 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 2
  %call13 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %E11, %struct.mbedtls_mpi* noundef %N12) #5
  %cmp14 = icmp sge i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end4
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_rsa_validate_params(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_rsa_validate_crt(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_check_pub_priv(%struct.mbedtls_rsa_context* noundef %pub, %struct.mbedtls_rsa_context* noundef %prv) #0 {
entry:
  %retval = alloca i32, align 4
  %pub.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %prv.addr = alloca %struct.mbedtls_rsa_context*, align 8
  store %struct.mbedtls_rsa_context* %pub, %struct.mbedtls_rsa_context** %pub.addr, align 8
  store %struct.mbedtls_rsa_context* %prv, %struct.mbedtls_rsa_context** %prv.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %pub.addr, align 8
  %call = call i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef %0) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %prv.addr, align 8
  %call3 = call i32 @mbedtls_rsa_check_privkey(%struct.mbedtls_rsa_context* noundef %1) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %pub.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 2
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %prv.addr, align 8
  %N5 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 2
  %call6 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %N5) #5
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then12, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %pub.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 3
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %prv.addr, align 8
  %E9 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 3
  %call10 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %E9) #5
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false8, %if.end
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %ctx, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %call = call i32 @rsa_check_context(%struct.mbedtls_rsa_context* noundef %0, i32 noundef 0, i32 noundef 0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  br label %do.body5

do.body5:                                         ; preds = %if.end
  %1 = load i8*, i8** %input.addr, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 1
  %3 = load i64, i64* %len, align 8
  %call6 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %T, i8* noundef %1, i64 noundef %3) #5
  store i32 %call6, i32* %ret, align 4
  %cmp = icmp ne i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body5
  br label %cleanup

if.end8:                                          ; preds = %do.body5
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 2
  %call10 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %N) #5
  %cmp11 = icmp sge i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  store i32 -4, i32* %ret, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len14 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 1
  %6 = load i64, i64* %len14, align 8
  store i64 %6, i64* %olen, align 8
  br label %do.body15

do.body15:                                        ; preds = %if.end13
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 3
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N16 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %8, i32 0, i32 2
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RN = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 10
  %call17 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %N16, %struct.mbedtls_mpi* noundef %RN) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body15
  br label %cleanup

if.end20:                                         ; preds = %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %10 = load i8*, i8** %output.addr, align 8
  %11 = load i64, i64* %olen, align 8
  %call23 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %T, i8* noundef %10, i64 noundef %11) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body22
  br label %cleanup

if.end26:                                         ; preds = %do.body22
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.then25, %if.then19, %if.then12, %if.then7
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  %12 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %12, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %cleanup
  %13 = load i32, i32* %ret, align 4
  %call30 = call i32 @mbedtls_error_add(i32 noundef -17024, i32 noundef %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 775) #5
  store i32 %call30, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %cleanup
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then29, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %olen = alloca i64, align 8
  %T = alloca %struct.mbedtls_mpi, align 8
  %P1 = alloca %struct.mbedtls_mpi, align 8
  %Q1 = alloca %struct.mbedtls_mpi, align 8
  %R = alloca %struct.mbedtls_mpi, align 8
  %TP = alloca %struct.mbedtls_mpi, align 8
  %TQ = alloca %struct.mbedtls_mpi, align 8
  %DP_blind = alloca %struct.mbedtls_mpi, align 8
  %DQ_blind = alloca %struct.mbedtls_mpi, align 8
  %DP = alloca %struct.mbedtls_mpi*, align 8
  %DQ = alloca %struct.mbedtls_mpi*, align 8
  %I = alloca %struct.mbedtls_mpi, align 8
  %C = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP1 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 7
  store %struct.mbedtls_mpi* %DP1, %struct.mbedtls_mpi** %DP, align 8
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ2 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 8
  store %struct.mbedtls_mpi* %DQ2, %struct.mbedtls_mpi** %DQ, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %do.end
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  br label %do.body5

do.body5:                                         ; preds = %do.end4
  br label %do.end6

do.end6:                                          ; preds = %do.body5
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %call = call i32 @rsa_check_context(%struct.mbedtls_rsa_context* noundef %3, i32 noundef 1, i32 noundef 1) #5
  %cmp7 = icmp ne i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P1) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q1) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %R) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DP_blind) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %DQ_blind) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TP) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %TQ) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %I) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %C) #5
  br label %do.body10

do.body10:                                        ; preds = %if.end9
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %call11 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %T, i8* noundef %4, i64 noundef %6) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 2
  %call16 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %N) #5
  %cmp17 = icmp sge i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.end15
  store i32 -4, i32* %ret, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  br label %do.body20

do.body20:                                        ; preds = %if.end19
  %call21 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %I, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body20
  br label %cleanup

if.end24:                                         ; preds = %do.body20
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %call27 = call i32 @rsa_prepare_blinding(%struct.mbedtls_rsa_context* noundef %8, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body26
  br label %cleanup

if.end30:                                         ; preds = %do.body26
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 13
  %call33 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %Vi) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body32
  br label %cleanup

if.end36:                                         ; preds = %do.body32
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N39 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 2
  %call40 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %N39) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body38
  br label %cleanup

if.end43:                                         ; preds = %do.body38
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %13, i32 0, i32 5
  %call46 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %P1, %struct.mbedtls_mpi* noundef %P, i64 noundef 1) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body45
  br label %cleanup

if.end49:                                         ; preds = %do.body45
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %14 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %14, i32 0, i32 6
  %call52 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %Q1, %struct.mbedtls_mpi* noundef %Q, i64 noundef 1) #5
  store i32 %call52, i32* %ret, align 4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.body51
  br label %cleanup

if.end55:                                         ; preds = %do.body51
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  br label %do.body57

do.body57:                                        ; preds = %do.end56
  %15 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %16 = load i8*, i8** %p_rng.addr, align 8
  %call58 = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %R, i64 noundef 28, i32 (i8*, i8*, i64)* noundef %15, i8* noundef %16) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body57
  br label %cleanup

if.end61:                                         ; preds = %do.body57
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %call64 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %DP_blind, %struct.mbedtls_mpi* noundef %P1, %struct.mbedtls_mpi* noundef %R) #5
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body63
  br label %cleanup

if.end67:                                         ; preds = %do.body63
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  br label %do.body69

do.body69:                                        ; preds = %do.end68
  %17 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DP70 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %17, i32 0, i32 7
  %call71 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %DP_blind, %struct.mbedtls_mpi* noundef %DP_blind, %struct.mbedtls_mpi* noundef %DP70) #5
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body69
  br label %cleanup

if.end74:                                         ; preds = %do.body69
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  store %struct.mbedtls_mpi* %DP_blind, %struct.mbedtls_mpi** %DP, align 8
  br label %do.body76

do.body76:                                        ; preds = %do.end75
  %18 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %19 = load i8*, i8** %p_rng.addr, align 8
  %call77 = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %R, i64 noundef 28, i32 (i8*, i8*, i64)* noundef %18, i8* noundef %19) #5
  store i32 %call77, i32* %ret, align 4
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body76
  br label %cleanup

if.end80:                                         ; preds = %do.body76
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %call83 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %DQ_blind, %struct.mbedtls_mpi* noundef %Q1, %struct.mbedtls_mpi* noundef %R) #5
  store i32 %call83, i32* %ret, align 4
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.body82
  br label %cleanup

if.end86:                                         ; preds = %do.body82
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  br label %do.body88

do.body88:                                        ; preds = %do.end87
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %DQ89 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %20, i32 0, i32 8
  %call90 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %DQ_blind, %struct.mbedtls_mpi* noundef %DQ_blind, %struct.mbedtls_mpi* noundef %DQ89) #5
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body88
  br label %cleanup

if.end93:                                         ; preds = %do.body88
  br label %do.end94

do.end94:                                         ; preds = %if.end93
  store %struct.mbedtls_mpi* %DQ_blind, %struct.mbedtls_mpi** %DQ, align 8
  br label %do.body95

do.body95:                                        ; preds = %do.end94
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP, align 8
  %22 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P96 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %22, i32 0, i32 5
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %23, i32 0, i32 11
  %call97 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %TP, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %21, %struct.mbedtls_mpi* noundef %P96, %struct.mbedtls_mpi* noundef %RP) #5
  store i32 %call97, i32* %ret, align 4
  %cmp98 = icmp ne i32 %call97, 0
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %do.body95
  br label %cleanup

if.end100:                                        ; preds = %do.body95
  br label %do.end101

do.end101:                                        ; preds = %if.end100
  br label %do.body102

do.body102:                                       ; preds = %do.end101
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ, align 8
  %25 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q103 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %25, i32 0, i32 6
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %26, i32 0, i32 12
  %call104 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %TQ, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %24, %struct.mbedtls_mpi* noundef %Q103, %struct.mbedtls_mpi* noundef %RQ) #5
  store i32 %call104, i32* %ret, align 4
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %do.body102
  br label %cleanup

if.end107:                                        ; preds = %do.body102
  br label %do.end108

do.end108:                                        ; preds = %if.end107
  br label %do.body109

do.body109:                                       ; preds = %do.end108
  %call110 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %TP, %struct.mbedtls_mpi* noundef %TQ) #5
  store i32 %call110, i32* %ret, align 4
  %cmp111 = icmp ne i32 %call110, 0
  br i1 %cmp111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %do.body109
  br label %cleanup

if.end113:                                        ; preds = %do.body109
  br label %do.end114

do.end114:                                        ; preds = %if.end113
  br label %do.body115

do.body115:                                       ; preds = %do.end114
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %27, i32 0, i32 9
  %call116 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %TP, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %QP) #5
  store i32 %call116, i32* %ret, align 4
  %cmp117 = icmp ne i32 %call116, 0
  br i1 %cmp117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %do.body115
  br label %cleanup

if.end119:                                        ; preds = %do.body115
  br label %do.end120

do.end120:                                        ; preds = %if.end119
  br label %do.body121

do.body121:                                       ; preds = %do.end120
  %28 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %P122 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %28, i32 0, i32 5
  %call123 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %TP, %struct.mbedtls_mpi* noundef %P122) #5
  store i32 %call123, i32* %ret, align 4
  %cmp124 = icmp ne i32 %call123, 0
  br i1 %cmp124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %do.body121
  br label %cleanup

if.end126:                                        ; preds = %do.body121
  br label %do.end127

do.end127:                                        ; preds = %if.end126
  br label %do.body128

do.body128:                                       ; preds = %do.end127
  %29 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Q129 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %29, i32 0, i32 6
  %call130 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %TP, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %Q129) #5
  store i32 %call130, i32* %ret, align 4
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %do.body128
  br label %cleanup

if.end133:                                        ; preds = %do.body128
  br label %do.end134

do.end134:                                        ; preds = %if.end133
  br label %do.body135

do.body135:                                       ; preds = %do.end134
  %call136 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %TQ, %struct.mbedtls_mpi* noundef %TP) #5
  store i32 %call136, i32* %ret, align 4
  %cmp137 = icmp ne i32 %call136, 0
  br i1 %cmp137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %do.body135
  br label %cleanup

if.end139:                                        ; preds = %do.body135
  br label %do.end140

do.end140:                                        ; preds = %if.end139
  br label %do.body141

do.body141:                                       ; preds = %do.end140
  %30 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %30, i32 0, i32 14
  %call142 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %Vf) #5
  store i32 %call142, i32* %ret, align 4
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.end145

if.then144:                                       ; preds = %do.body141
  br label %cleanup

if.end145:                                        ; preds = %do.body141
  br label %do.end146

do.end146:                                        ; preds = %if.end145
  br label %do.body147

do.body147:                                       ; preds = %do.end146
  %31 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N148 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %31, i32 0, i32 2
  %call149 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %N148) #5
  store i32 %call149, i32* %ret, align 4
  %cmp150 = icmp ne i32 %call149, 0
  br i1 %cmp150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %do.body147
  br label %cleanup

if.end152:                                        ; preds = %do.body147
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  br label %do.body154

do.body154:                                       ; preds = %do.end153
  %32 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %32, i32 0, i32 3
  %33 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N155 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %33, i32 0, i32 2
  %34 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RN = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %34, i32 0, i32 10
  %call156 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %C, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %N155, %struct.mbedtls_mpi* noundef %RN) #5
  store i32 %call156, i32* %ret, align 4
  %cmp157 = icmp ne i32 %call156, 0
  br i1 %cmp157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %do.body154
  br label %cleanup

if.end159:                                        ; preds = %do.body154
  br label %do.end160

do.end160:                                        ; preds = %if.end159
  %call161 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %C, %struct.mbedtls_mpi* noundef %I) #5
  %cmp162 = icmp ne i32 %call161, 0
  br i1 %cmp162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %do.end160
  store i32 -17280, i32* %ret, align 4
  br label %cleanup

if.end164:                                        ; preds = %do.end160
  %35 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len165 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %35, i32 0, i32 1
  %36 = load i64, i64* %len165, align 8
  store i64 %36, i64* %olen, align 8
  br label %do.body166

do.body166:                                       ; preds = %if.end164
  %37 = load i8*, i8** %output.addr, align 8
  %38 = load i64, i64* %olen, align 8
  %call167 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %T, i8* noundef %37, i64 noundef %38) #5
  store i32 %call167, i32* %ret, align 4
  %cmp168 = icmp ne i32 %call167, 0
  br i1 %cmp168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %do.body166
  br label %cleanup

if.end170:                                        ; preds = %do.body166
  br label %do.end171

do.end171:                                        ; preds = %if.end170
  br label %cleanup

cleanup:                                          ; preds = %do.end171, %if.then169, %if.then163, %if.then158, %if.then151, %if.then144, %if.then138, %if.then132, %if.then125, %if.then118, %if.then112, %if.then106, %if.then99, %if.then92, %if.then85, %if.then79, %if.then73, %if.then66, %if.then60, %if.then54, %if.then48, %if.then42, %if.then35, %if.then29, %if.then23, %if.then18, %if.then13
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P1) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q1) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %R) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DP_blind) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %DQ_blind) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TP) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %TQ) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %C) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %I) #5
  %39 = load i32, i32* %ret, align 4
  %cmp172 = icmp ne i32 %39, 0
  br i1 %cmp172, label %land.lhs.true, label %if.end176

land.lhs.true:                                    ; preds = %cleanup
  %40 = load i32, i32* %ret, align 4
  %cmp173 = icmp sge i32 %40, -127
  br i1 %cmp173, label %if.then174, label %if.end176

if.then174:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %ret, align 4
  %call175 = call i32 @mbedtls_error_add(i32 noundef -17152, i32 noundef %41, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 1082) #5
  store i32 %call175, i32* %retval, align 4
  br label %return

if.end176:                                        ; preds = %land.lhs.true, %cleanup
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end176, %if.then174, %if.then8, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_prepare_blinding(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %R = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %count, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %R) #5
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 14
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Vf, i32 0, i32 2
  %1 = load i64*, i64** %p, align 8
  %cmp = icmp ne i64* %1, null
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 13
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi1 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 13
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi2 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 13
  %call = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vi, %struct.mbedtls_mpi* noundef %Vi1, %struct.mbedtls_mpi* noundef %Vi2) #5
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body5

do.body5:                                         ; preds = %do.end
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi6 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 13
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi7 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 13
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 2
  %call8 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vi6, %struct.mbedtls_mpi* noundef %Vi7, %struct.mbedtls_mpi* noundef %N) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body5
  br label %cleanup

if.end11:                                         ; preds = %do.body5
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf14 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %8, i32 0, i32 14
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf15 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 14
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf16 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 14
  %call17 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vf14, %struct.mbedtls_mpi* noundef %Vf15, %struct.mbedtls_mpi* noundef %Vf16) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body13
  br label %cleanup

if.end20:                                         ; preds = %do.body13
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf23 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 14
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf24 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 14
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N25 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %13, i32 0, i32 2
  %call26 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vf23, %struct.mbedtls_mpi* noundef %Vf24, %struct.mbedtls_mpi* noundef %N25) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body22
  br label %cleanup

if.end29:                                         ; preds = %do.body22
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %cleanup

if.end31:                                         ; preds = %entry
  br label %do.body32

do.body32:                                        ; preds = %do.cond, %if.end31
  %14 = load i32, i32* %count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %count, align 4
  %cmp33 = icmp sgt i32 %14, 10
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.body32
  store i32 -17536, i32* %ret, align 4
  br label %cleanup

if.end35:                                         ; preds = %do.body32
  br label %do.body36

do.body36:                                        ; preds = %if.end35
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf37 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 14
  %16 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %16, i32 0, i32 1
  %17 = load i64, i64* %len, align 8
  %sub = sub i64 %17, 1
  %18 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %19 = load i8*, i8** %p_rng.addr, align 8
  %call38 = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %Vf37, i64 noundef %sub, i32 (i8*, i8*, i64)* noundef %18, i8* noundef %19) #5
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body36
  br label %cleanup

if.end41:                                         ; preds = %do.body36
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len44 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %20, i32 0, i32 1
  %21 = load i64, i64* %len44, align 8
  %sub45 = sub i64 %21, 1
  %22 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %23 = load i8*, i8** %p_rng.addr, align 8
  %call46 = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %R, i64 noundef %sub45, i32 (i8*, i8*, i64)* noundef %22, i8* noundef %23) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body43
  br label %cleanup

if.end49:                                         ; preds = %do.body43
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %24 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi52 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %24, i32 0, i32 13
  %25 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vf53 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %25, i32 0, i32 14
  %call54 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vi52, %struct.mbedtls_mpi* noundef %Vf53, %struct.mbedtls_mpi* noundef %R) #5
  store i32 %call54, i32* %ret, align 4
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body51
  br label %cleanup

if.end57:                                         ; preds = %do.body51
  br label %do.end58

do.end58:                                         ; preds = %if.end57
  br label %do.body59

do.body59:                                        ; preds = %do.end58
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi60 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %26, i32 0, i32 13
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi61 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %27, i32 0, i32 13
  %28 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N62 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %28, i32 0, i32 2
  %call63 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vi60, %struct.mbedtls_mpi* noundef %Vi61, %struct.mbedtls_mpi* noundef %N62) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %do.body59
  br label %cleanup

if.end66:                                         ; preds = %do.body59
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  %29 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi68 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %29, i32 0, i32 13
  %30 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi69 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %30, i32 0, i32 13
  %31 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N70 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %31, i32 0, i32 2
  %call71 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %Vi68, %struct.mbedtls_mpi* noundef %Vi69, %struct.mbedtls_mpi* noundef %N70) #5
  store i32 %call71, i32* %ret, align 4
  %32 = load i32, i32* %ret, align 4
  %cmp72 = icmp ne i32 %32, 0
  br i1 %cmp72, label %land.lhs.true, label %if.end75

land.lhs.true:                                    ; preds = %do.end67
  %33 = load i32, i32* %ret, align 4
  %cmp73 = icmp ne i32 %33, -14
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %land.lhs.true
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true, %do.end67
  br label %do.cond

do.cond:                                          ; preds = %if.end75
  %34 = load i32, i32* %ret, align 4
  %cmp76 = icmp eq i32 %34, -14
  br i1 %cmp76, label %do.body32, label %do.end77, !llvm.loop !4

do.end77:                                         ; preds = %do.cond
  br label %do.body78

do.body78:                                        ; preds = %do.end77
  %35 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi79 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %35, i32 0, i32 13
  %36 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi80 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %36, i32 0, i32 13
  %call81 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %Vi79, %struct.mbedtls_mpi* noundef %Vi80, %struct.mbedtls_mpi* noundef %R) #5
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body78
  br label %cleanup

if.end84:                                         ; preds = %do.body78
  br label %do.end86

do.end86:                                         ; preds = %if.end84
  br label %do.body87

do.body87:                                        ; preds = %do.end86
  %37 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi88 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %37, i32 0, i32 13
  %38 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi89 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %38, i32 0, i32 13
  %39 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N90 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %39, i32 0, i32 2
  %call91 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %Vi88, %struct.mbedtls_mpi* noundef %Vi89, %struct.mbedtls_mpi* noundef %N90) #5
  store i32 %call91, i32* %ret, align 4
  %cmp92 = icmp ne i32 %call91, 0
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %do.body87
  br label %cleanup

if.end94:                                         ; preds = %do.body87
  br label %do.end96

do.end96:                                         ; preds = %if.end94
  br label %do.body97

do.body97:                                        ; preds = %do.end96
  %40 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi98 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %40, i32 0, i32 13
  %41 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %Vi99 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %41, i32 0, i32 13
  %42 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %42, i32 0, i32 3
  %43 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N100 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %43, i32 0, i32 2
  %44 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %RN = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %44, i32 0, i32 10
  %call101 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %Vi98, %struct.mbedtls_mpi* noundef %Vi99, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %N100, %struct.mbedtls_mpi* noundef %RN) #5
  store i32 %call101, i32* %ret, align 4
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body97
  br label %cleanup

if.end104:                                        ; preds = %do.body97
  br label %do.end106

do.end106:                                        ; preds = %if.end104
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.then103, %if.then93, %if.then83, %if.then74, %if.then65, %if.then56, %if.then48, %if.then40, %if.then34, %do.end30, %if.then28, %if.then19, %if.then10, %if.then4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %R) #5
  %45 = load i32, i32* %ret, align 4
  ret i32 %45
}

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsaes_oaep_encrypt(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %label, i64 noundef %label_len, i64 noundef %ilen, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %label_len.addr = alloca i64, align 8
  %ilen.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %olen = alloca i64, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %hlen = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i64 %label_len, i64* %label_len.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %output.addr, align 8
  store i8* %0, i8** %p, align 8
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
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 16
  %3 = load i32, i32* %hash_id, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %3) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp7 = icmp eq %struct.mbedtls_md_info_t* %4, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  store i64 %6, i64* %olen, align 8
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call10 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %7) #5
  %conv = zext i8 %call10 to i32
  store i32 %conv, i32* %hlen, align 4
  %8 = load i64, i64* %ilen.addr, align 8
  %9 = load i32, i32* %hlen, align 4
  %mul = mul i32 2, %9
  %conv11 = zext i32 %mul to i64
  %add = add i64 %8, %conv11
  %add12 = add i64 %add, 2
  %10 = load i64, i64* %ilen.addr, align 8
  %cmp13 = icmp ult i64 %add12, %10
  br i1 %cmp13, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i64, i64* %olen, align 8
  %12 = load i64, i64* %ilen.addr, align 8
  %13 = load i32, i32* %hlen, align 4
  %mul15 = mul i32 2, %13
  %conv16 = zext i32 %mul15 to i64
  %add17 = add i64 %12, %conv16
  %add18 = add i64 %add17, 2
  %cmp19 = icmp ult i64 %11, %add18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %if.end9
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i64, i64* %olen, align 8
  %call23 = call i8* @memset(i8* noundef %14, i32 noundef 0, i64 noundef %15) #6
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %16, align 1
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %18 = load i8*, i8** %p_rng.addr, align 8
  %19 = load i8*, i8** %p, align 8
  %20 = load i32, i32* %hlen, align 4
  %conv24 = zext i32 %20 to i64
  %call25 = call i32 %17(i8* noundef %18, i8* noundef %19, i64 noundef %conv24) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end22
  %21 = load i32, i32* %ret, align 4
  %call29 = call i32 @mbedtls_error_add(i32 noundef -17536, i32 noundef %21, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 1189) #5
  store i32 %call29, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end22
  %22 = load i32, i32* %hlen, align 4
  %23 = load i8*, i8** %p, align 8
  %idx.ext = zext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %24 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %25 = load i8*, i8** %label.addr, align 8
  %26 = load i64, i64* %label_len.addr, align 8
  %27 = load i8*, i8** %p, align 8
  %call31 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %24, i8* noundef %25, i64 noundef %26, i8* noundef %27) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  %29 = load i32, i32* %hlen, align 4
  %30 = load i8*, i8** %p, align 8
  %idx.ext36 = zext i32 %29 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %30, i64 %idx.ext36
  store i8* %add.ptr37, i8** %p, align 8
  %31 = load i64, i64* %olen, align 8
  %32 = load i32, i32* %hlen, align 4
  %mul38 = mul i32 2, %32
  %conv39 = zext i32 %mul38 to i64
  %sub = sub i64 %31, %conv39
  %sub40 = sub i64 %sub, 2
  %33 = load i64, i64* %ilen.addr, align 8
  %sub41 = sub i64 %sub40, %33
  %34 = load i8*, i8** %p, align 8
  %add.ptr42 = getelementptr inbounds i8, i8* %34, i64 %sub41
  store i8* %add.ptr42, i8** %p, align 8
  %35 = load i8*, i8** %p, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8
  store i8 1, i8* %35, align 1
  %36 = load i64, i64* %ilen.addr, align 8
  %cmp44 = icmp ne i64 %36, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end35
  %37 = load i8*, i8** %p, align 8
  %38 = load i8*, i8** %input.addr, align 8
  %39 = load i64, i64* %ilen.addr, align 8
  %call47 = call i8* @memcpy(i8* noundef %37, i8* noundef %38, i64 noundef %39) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end35
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %40 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call49 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %40, i32 noundef 0) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  br label %exit

if.end53:                                         ; preds = %if.end48
  %41 = load i8*, i8** %output.addr, align 8
  %42 = load i32, i32* %hlen, align 4
  %idx.ext54 = zext i32 %42 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %41, i64 %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr55, i64 1
  %43 = load i64, i64* %olen, align 8
  %44 = load i32, i32* %hlen, align 4
  %conv57 = zext i32 %44 to i64
  %sub58 = sub i64 %43, %conv57
  %sub59 = sub i64 %sub58, 1
  %45 = load i8*, i8** %output.addr, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i32, i32* %hlen, align 4
  %conv61 = zext i32 %46 to i64
  %call62 = call i32 @mgf_mask(i8* noundef %add.ptr56, i64 noundef %sub59, i8* noundef %add.ptr60, i64 noundef %conv61, %struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end53
  br label %exit

if.end66:                                         ; preds = %if.end53
  %47 = load i8*, i8** %output.addr, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i32, i32* %hlen, align 4
  %conv68 = zext i32 %48 to i64
  %49 = load i8*, i8** %output.addr, align 8
  %50 = load i32, i32* %hlen, align 4
  %idx.ext69 = zext i32 %50 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %49, i64 %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr70, i64 1
  %51 = load i64, i64* %olen, align 8
  %52 = load i32, i32* %hlen, align 4
  %conv72 = zext i32 %52 to i64
  %sub73 = sub i64 %51, %conv72
  %sub74 = sub i64 %sub73, 1
  %call75 = call i32 @mgf_mask(i8* noundef %add.ptr67, i64 noundef %conv68, i8* noundef %add.ptr71, i64 noundef %sub74, %struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call75, i32* %ret, align 4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end66
  br label %exit

if.end79:                                         ; preds = %if.end66
  br label %exit

exit:                                             ; preds = %if.end79, %if.then78, %if.then65, %if.then52
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %53 = load i32, i32* %ret, align 4
  %cmp80 = icmp ne i32 %53, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %exit
  %54 = load i32, i32* %ret, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %exit
  %55 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %56 = load i8*, i8** %output.addr, align 8
  %57 = load i8*, i8** %output.addr, align 8
  %call84 = call i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %55, i8* noundef %56, i8* noundef %57) #5
  store i32 %call84, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end83, %if.then82, %if.then34, %if.then28, %if.then21, %if.then8, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef) #1

declare dso_local i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef, %struct.mbedtls_md_info_t* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgf_mask(i8* noundef %dst, i64 noundef %dlen, i8* noundef %src, i64 noundef %slen, %struct.mbedtls_md_context_t* noundef %md_ctx) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %dlen.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %md_ctx.addr = alloca %struct.mbedtls_md_context_t*, align 8
  %mask = alloca [64 x i8], align 16
  %counter = alloca [4 x i8], align 1
  %p = alloca i8*, align 8
  %hlen = alloca i32, align 4
  %i = alloca i64, align 8
  %use_len = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %dlen, i64* %dlen.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %slen, i64* %slen.addr, align 8
  store %struct.mbedtls_md_context_t* %md_ctx, %struct.mbedtls_md_context_t** %md_ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %mask, i64 0, i64 0
  %call = call i8* @memset(i8* noundef %arraydecay, i32 noundef 0, i64 noundef 64) #6
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay1, i32 noundef 0, i64 noundef 4) #6
  %0 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %md_ctx.addr, align 8
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call3 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %1) #5
  %conv = zext i8 %call3 to i32
  store i32 %conv, i32* %hlen, align 4
  %2 = load i8*, i8** %dst.addr, align 8
  store i8* %2, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i64, i64* %dlen.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %hlen, align 4
  %conv5 = zext i32 %4 to i64
  store i64 %conv5, i64* %use_len, align 8
  %5 = load i64, i64* %dlen.addr, align 8
  %6 = load i32, i32* %hlen, align 4
  %conv6 = zext i32 %6 to i64
  %cmp7 = icmp ult i64 %5, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i64, i64* %dlen.addr, align 8
  store i64 %7, i64* %use_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %md_ctx.addr, align 8
  %call9 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %8) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %exit

if.end13:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %md_ctx.addr, align 8
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i64, i64* %slen.addr, align 8
  %call14 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %9, i8* noundef %10, i64 noundef %11) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  br label %exit

if.end18:                                         ; preds = %if.end13
  %12 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %md_ctx.addr, align 8
  %arraydecay19 = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 0
  %call20 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %12, i8* noundef %arraydecay19, i64 noundef 4) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  br label %exit

if.end24:                                         ; preds = %if.end18
  %13 = load %struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t** %md_ctx.addr, align 8
  %arraydecay25 = getelementptr inbounds [64 x i8], [64 x i8]* %mask, i64 0, i64 0
  %call26 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %13, i8* noundef %arraydecay25) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  br label %exit

if.end30:                                         ; preds = %if.end24
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %use_len, align 8
  %cmp31 = icmp ult i64 %14, %15
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %mask, i64 0, i64 %16
  %17 = load i8, i8* %arrayidx, align 1
  %conv33 = zext i8 %17 to i32
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv34 = zext i8 %19 to i32
  %xor = xor i32 %conv34, %conv33
  %conv35 = trunc i32 %xor to i8
  store i8 %conv35, i8* %18, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %counter, i64 0, i64 3
  %21 = load i8, i8* %arrayidx36, align 1
  %inc37 = add i8 %21, 1
  store i8 %inc37, i8* %arrayidx36, align 1
  %22 = load i64, i64* %use_len, align 8
  %23 = load i64, i64* %dlen.addr, align 8
  %sub = sub i64 %23, %22
  store i64 %sub, i64* %dlen.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %exit

exit:                                             ; preds = %while.end, %if.then29, %if.then23, %if.then17, %if.then12
  %arraydecay38 = getelementptr inbounds [64 x i8], [64 x i8]* %mask, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay38, i64 noundef 64) #5
  %24 = load i32, i32* %ret, align 4
  ret i32 %24
}

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsaes_pkcs1_v15_encrypt(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i64 noundef %ilen, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %nb_pad = alloca i64, align 8
  %olen = alloca i64, align 8
  %ret = alloca i32, align 4
  %p = alloca i8*, align 8
  %rng_dl = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %output.addr, align 8
  store i8* %0, i8** %p, align 8
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
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 1
  %2 = load i64, i64* %len, align 8
  store i64 %2, i64* %olen, align 8
  %3 = load i64, i64* %ilen.addr, align 8
  %add = add i64 %3, 11
  %4 = load i64, i64* %ilen.addr, align 8
  %cmp = icmp ult i64 %add, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %5 = load i64, i64* %olen, align 8
  %6 = load i64, i64* %ilen.addr, align 8
  %add5 = add i64 %6, 11
  %cmp6 = icmp ult i64 %5, %add5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %olen, align 8
  %sub = sub i64 %7, 3
  %8 = load i64, i64* %ilen.addr, align 8
  %sub7 = sub i64 %sub, %8
  store i64 %sub7, i64* %nb_pad, align 8
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %9, align 1
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp8 = icmp eq i32 (i8*, i8*, i64)* %10, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  store i8 2, i8* %11, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end10
  %12 = load i64, i64* %nb_pad, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %nb_pad, align 8
  %cmp12 = icmp ugt i64 %12, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 100, i32* %rng_dl, align 4
  br label %do.body13

do.body13:                                        ; preds = %land.end, %while.body
  %13 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %14 = load i8*, i8** %p_rng.addr, align 8
  %15 = load i8*, i8** %p, align 8
  %call = call i32 %13(i8* noundef %14, i8* noundef %15, i64 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body13
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv = zext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv, 0
  br i1 %cmp14, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %18 = load i32, i32* %rng_dl, align 4
  %dec16 = add nsw i32 %18, -1
  store i32 %dec16, i32* %rng_dl, align 4
  %tobool = icmp ne i32 %dec16, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %19 = load i32, i32* %ret, align 4
  %cmp17 = icmp eq i32 %19, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp17, %land.rhs ]
  br i1 %20, label %do.body13, label %do.end19, !llvm.loop !8

do.end19:                                         ; preds = %land.end
  %21 = load i32, i32* %rng_dl, align 4
  %cmp20 = icmp eq i32 %21, 0
  br i1 %cmp20, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %do.end19
  %22 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %22, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %lor.lhs.false22, %do.end19
  %23 = load i32, i32* %ret, align 4
  %call26 = call i32 @mbedtls_error_add(i32 noundef -17536, i32 noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 1269) #5
  store i32 %call26, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %lor.lhs.false22
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  store i8 0, i8* %25, align 1
  %26 = load i64, i64* %ilen.addr, align 8
  %cmp30 = icmp ne i64 %26, 0
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %while.end
  %27 = load i8*, i8** %p, align 8
  %28 = load i8*, i8** %input.addr, align 8
  %29 = load i64, i64* %ilen.addr, align 8
  %call33 = call i8* @memcpy(i8* noundef %27, i8* noundef %28, i64 noundef %29) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %while.end
  %30 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %31 = load i8*, i8** %output.addr, align 8
  %32 = load i8*, i8** %output.addr, align 8
  %call35 = call i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %30, i8* noundef %31, i8* noundef %32) #5
  store i32 %call35, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then25, %if.then9, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i64 noundef %ilen, i8* noundef %input, i8* noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 15
  %1 = load i32, i32* %padding, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end4
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %5 = load i64, i64* %ilen.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %call = call i32 @mbedtls_rsa_rsaes_pkcs1_v15_encrypt(%struct.mbedtls_rsa_context* noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i8* noundef %7) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %do.end4
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %11 = load i64, i64* %ilen.addr, align 8
  %12 = load i8*, i8** %input.addr, align 8
  %13 = load i8*, i8** %output.addr, align 8
  %call6 = call i32 @mbedtls_rsa_rsaes_oaep_encrypt(%struct.mbedtls_rsa_context* noundef %8, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10, i8* noundef null, i64 noundef 0, i64 noundef %11, i8* noundef %12, i8* noundef %13) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end4
  store i32 -16640, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsaes_oaep_decrypt(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %label, i64 noundef %label_len, i64* noundef %olen, i8* noundef %input, i8* noundef %output, i64 noundef %output_max_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  %label_len.addr = alloca i64, align 8
  %olen.addr = alloca i64*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %output_max_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ilen = alloca i64, align 8
  %i = alloca i64, align 8
  %pad_len = alloca i64, align 8
  %p = alloca i8*, align 8
  %bad = alloca i8, align 1
  %pad_done = alloca i8, align 1
  %buf = alloca [1024 x i8], align 16
  %lhash = alloca [64 x i8], align 16
  %hlen = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %label, i8** %label.addr, align 8
  store i64 %label_len, i64* %label_len.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_max_len, i64* %output_max_len.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 15
  %1 = load i32, i32* %padding, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 1
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %ilen, align 8
  %4 = load i64, i64* %ilen, align 8
  %cmp9 = icmp ult i64 %4, 16
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %ilen, align 8
  %cmp10 = icmp ugt i64 %5, 1024
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 16
  %7 = load i32, i32* %hash_id, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %7) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %8 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp13 = icmp eq %struct.mbedtls_md_info_t* %8, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end12
  %9 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call16 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %9) #5
  %conv = zext i8 %call16 to i32
  store i32 %conv, i32* %hlen, align 4
  %10 = load i32, i32* %hlen, align 4
  %mul = mul i32 2, %10
  %add = add i32 %mul, 2
  %conv17 = zext i32 %add to i64
  %11 = load i64, i64* %ilen, align 8
  %cmp18 = icmp ugt i64 %conv17, %11
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end15
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %13 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %14 = load i8*, i8** %p_rng.addr, align 8
  %15 = load i8*, i8** %input.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call22 = call i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef %12, i32 (i8*, i8*, i64)* noundef %13, i8* noundef %14, i8* noundef %15, i8* noundef %arraydecay) #5
  store i32 %call22, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp23 = icmp ne i32 %16, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %17 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call27 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %17, i32 noundef 0) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay32, i64 1
  %18 = load i32, i32* %hlen, align 4
  %conv33 = zext i32 %18 to i64
  %arraydecay34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %19 = load i32, i32* %hlen, align 4
  %idx.ext = zext i32 %19 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %arraydecay34, i64 %idx.ext
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr35, i64 1
  %20 = load i64, i64* %ilen, align 8
  %21 = load i32, i32* %hlen, align 4
  %conv37 = zext i32 %21 to i64
  %sub = sub i64 %20, %conv37
  %sub38 = sub i64 %sub, 1
  %call39 = call i32 @mgf_mask(i8* noundef %add.ptr, i64 noundef %conv33, i8* noundef %add.ptr36, i64 noundef %sub38, %struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then56, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end31
  %arraydecay43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %22 = load i32, i32* %hlen, align 4
  %idx.ext44 = zext i32 %22 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %arraydecay43, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 1
  %23 = load i64, i64* %ilen, align 8
  %24 = load i32, i32* %hlen, align 4
  %conv47 = zext i32 %24 to i64
  %sub48 = sub i64 %23, %conv47
  %sub49 = sub i64 %sub48, 1
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %add.ptr51 = getelementptr inbounds i8, i8* %arraydecay50, i64 1
  %25 = load i32, i32* %hlen, align 4
  %conv52 = zext i32 %25 to i64
  %call53 = call i32 @mgf_mask(i8* noundef %add.ptr46, i64 noundef %sub49, i8* noundef %add.ptr51, i64 noundef %conv52, %struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %lor.lhs.false42, %if.end31
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false42
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %26 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %27 = load i8*, i8** %label.addr, align 8
  %28 = load i64, i64* %label_len.addr, align 8
  %arraydecay58 = getelementptr inbounds [64 x i8], [64 x i8]* %lhash, i64 0, i64 0
  %call59 = call i32 @mbedtls_md(%struct.mbedtls_md_info_t* noundef %26, i8* noundef %27, i64 noundef %28, i8* noundef %arraydecay58) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end57
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %arraydecay64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay64, i8** %p, align 8
  store i8 0, i8* %bad, align 1
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv65 = zext i8 %30 to i32
  %31 = load i8, i8* %bad, align 1
  %conv66 = zext i8 %31 to i32
  %or = or i32 %conv66, %conv65
  %conv67 = trunc i32 %or to i8
  store i8 %conv67, i8* %bad, align 1
  %32 = load i32, i32* %hlen, align 4
  %33 = load i8*, i8** %p, align 8
  %idx.ext68 = zext i32 %32 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %33, i64 %idx.ext68
  store i8* %add.ptr69, i8** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end63
  %34 = load i64, i64* %i, align 8
  %35 = load i32, i32* %hlen, align 4
  %conv70 = zext i32 %35 to i64
  %cmp71 = icmp ult i64 %34, %conv70
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %lhash, i64 0, i64 %36
  %37 = load i8, i8* %arrayidx, align 1
  %conv73 = zext i8 %37 to i32
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr74, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv75 = zext i8 %39 to i32
  %xor = xor i32 %conv73, %conv75
  %40 = load i8, i8* %bad, align 1
  %conv76 = zext i8 %40 to i32
  %or77 = or i32 %conv76, %xor
  %conv78 = trunc i32 %or77 to i8
  store i8 %conv78, i8* %bad, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %pad_len, align 8
  store i8 0, i8* %pad_done, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc101, %for.end
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %ilen, align 8
  %44 = load i32, i32* %hlen, align 4
  %mul80 = mul i32 2, %44
  %conv81 = zext i32 %mul80 to i64
  %sub82 = sub i64 %43, %conv81
  %sub83 = sub i64 %sub82, 2
  %cmp84 = icmp ult i64 %42, %sub83
  br i1 %cmp84, label %for.body86, label %for.end103

for.body86:                                       ; preds = %for.cond79
  %45 = load i8*, i8** %p, align 8
  %46 = load i64, i64* %i, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %45, i64 %46
  %47 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %47 to i32
  %48 = load i8, i8* %pad_done, align 1
  %conv89 = zext i8 %48 to i32
  %or90 = or i32 %conv89, %conv88
  %conv91 = trunc i32 %or90 to i8
  store i8 %conv91, i8* %pad_done, align 1
  %49 = load i8, i8* %pad_done, align 1
  %conv92 = zext i8 %49 to i32
  %50 = load i8, i8* %pad_done, align 1
  %conv93 = zext i8 %50 to i32
  %sub94 = sub nsw i32 0, %conv93
  %conv95 = trunc i32 %sub94 to i8
  %conv96 = zext i8 %conv95 to i32
  %or97 = or i32 %conv92, %conv96
  %shr = ashr i32 %or97, 7
  %xor98 = xor i32 %shr, 1
  %conv99 = sext i32 %xor98 to i64
  %51 = load i64, i64* %pad_len, align 8
  %add100 = add i64 %51, %conv99
  store i64 %add100, i64* %pad_len, align 8
  br label %for.inc101

for.inc101:                                       ; preds = %for.body86
  %52 = load i64, i64* %i, align 8
  %inc102 = add i64 %52, 1
  store i64 %inc102, i64* %i, align 8
  br label %for.cond79, !llvm.loop !11

for.end103:                                       ; preds = %for.cond79
  %53 = load i64, i64* %pad_len, align 8
  %54 = load i8*, i8** %p, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %add.ptr104, i8** %p, align 8
  %55 = load i8*, i8** %p, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr105, i8** %p, align 8
  %56 = load i8, i8* %55, align 1
  %conv106 = zext i8 %56 to i32
  %xor107 = xor i32 %conv106, 1
  %57 = load i8, i8* %bad, align 1
  %conv108 = zext i8 %57 to i32
  %or109 = or i32 %conv108, %xor107
  %conv110 = trunc i32 %or109 to i8
  store i8 %conv110, i8* %bad, align 1
  %58 = load i8, i8* %bad, align 1
  %conv111 = zext i8 %58 to i32
  %cmp112 = icmp ne i32 %conv111, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %for.end103
  store i32 -16640, i32* %ret, align 4
  br label %cleanup

if.end115:                                        ; preds = %for.end103
  %59 = load i64, i64* %ilen, align 8
  %60 = load i8*, i8** %p, align 8
  %arraydecay116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay116 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub117 = sub i64 %59, %sub.ptr.sub
  %61 = load i64, i64* %output_max_len.addr, align 8
  %cmp118 = icmp ugt i64 %sub117, %61
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end115
  store i32 -17408, i32* %ret, align 4
  br label %cleanup

if.end121:                                        ; preds = %if.end115
  %62 = load i64, i64* %ilen, align 8
  %63 = load i8*, i8** %p, align 8
  %arraydecay122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %sub.ptr.lhs.cast123 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast124 = ptrtoint i8* %arraydecay122 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %sub126 = sub i64 %62, %sub.ptr.sub125
  %64 = load i64*, i64** %olen.addr, align 8
  store i64 %sub126, i64* %64, align 8
  %65 = load i64*, i64** %olen.addr, align 8
  %66 = load i64, i64* %65, align 8
  %cmp127 = icmp ne i64 %66, 0
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.end121
  %67 = load i8*, i8** %output.addr, align 8
  %68 = load i8*, i8** %p, align 8
  %69 = load i64*, i64** %olen.addr, align 8
  %70 = load i64, i64* %69, align 8
  %call130 = call i8* @memcpy(i8* noundef %67, i8* noundef %68, i64 noundef %70) #6
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end121
  store i32 0, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.then120, %if.then114, %if.then62, %if.then56, %if.then30, %if.then25
  %arraydecay132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay132, i64 noundef 1024) #5
  %arraydecay133 = getelementptr inbounds [64 x i8], [64 x i8]* %lhash, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay133, i64 noundef 64) #5
  %71 = load i32, i32* %ret, align 4
  store i32 %71, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then20, %if.then14, %if.then11, %if.then
  %72 = load i32, i32* %retval, align 4
  ret i32 %72
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsaes_pkcs1_v15_decrypt(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i64* noundef %olen, i8* noundef %input, i8* noundef %output, i64 noundef %output_max_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %output_max_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ilen = alloca i64, align 8
  %buf = alloca [1024 x i8], align 16
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_max_len, i64* %output_max_len.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %ilen, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 15
  %3 = load i32, i32* %padding, align 8
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %4 = load i64, i64* %ilen, align 8
  %cmp7 = icmp ult i64 %4, 16
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %ilen, align 8
  %cmp8 = icmp ugt i64 %5, 1024
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %7 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %8 = load i8*, i8** %p_rng.addr, align 8
  %9 = load i8*, i8** %input.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef %6, i32 (i8*, i8*, i64)* noundef %7, i8* noundef %8, i8* noundef %9, i8* noundef %arraydecay) #5
  store i32 %call, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %arraydecay14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %11 = load i64, i64* %ilen, align 8
  %12 = load i8*, i8** %output.addr, align 8
  %13 = load i64, i64* %output_max_len.addr, align 8
  %14 = load i64*, i64** %olen.addr, align 8
  %call15 = call i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* noundef %arraydecay14, i64 noundef %11, i8* noundef %12, i64 noundef %13, i64* noundef %14) #5
  store i32 %call15, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay16, i64 noundef 1024) #5
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then9, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i64* noundef %olen, i8* noundef %input, i8* noundef %output, i64 noundef %output_max_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %output_max_len.addr = alloca i64, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_max_len, i64* %output_max_len.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 15
  %1 = load i32, i32* %padding, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.end6
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %5 = load i64*, i64** %olen.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i64, i64* %output_max_len.addr, align 8
  %call = call i32 @mbedtls_rsa_rsaes_pkcs1_v15_decrypt(%struct.mbedtls_rsa_context* noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4, i64* noundef %5, i8* noundef %6, i8* noundef %7, i64 noundef %8) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %do.end6
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %12 = load i64*, i64** %olen.addr, align 8
  %13 = load i8*, i8** %input.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i64, i64* %output_max_len.addr, align 8
  %call8 = call i32 @mbedtls_rsa_rsaes_oaep_decrypt(%struct.mbedtls_rsa_context* noundef %9, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11, i8* noundef null, i64 noundef 0, i64* noundef %12, i8* noundef %13, i8* noundef %14, i64 noundef %15) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end6
  store i32 -16640, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pss_sign_ext(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i32 noundef %saltlen, i8* noundef %sig) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %saltlen.addr = alloca i32, align 4
  %sig.addr = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i32 %saltlen, i32* %saltlen.addr, align 4
  store i8* %sig, i8** %sig.addr, align 8
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %3 = load i32, i32* %md_alg.addr, align 4
  %4 = load i32, i32* %hashlen.addr, align 4
  %5 = load i8*, i8** %hash.addr, align 8
  %6 = load i32, i32* %saltlen.addr, align 4
  %7 = load i8*, i8** %sig.addr, align 8
  %call = call i32 @rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef %0, i32 (i8*, i8*, i64)* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, i32 noundef %6, i8* noundef %7) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i32 noundef %saltlen, i8* noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %saltlen.addr = alloca i32, align 4
  %sig.addr = alloca i8*, align 8
  %olen = alloca i64, align 8
  %p = alloca i8*, align 8
  %salt = alloca i8*, align 8
  %slen = alloca i64, align 8
  %min_slen = alloca i64, align 8
  %hlen = alloca i64, align 8
  %offset = alloca i64, align 8
  %ret = alloca i32, align 4
  %msb = alloca i64, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i32 %saltlen, i32* %saltlen.addr, align 4
  store i8* %sig, i8** %sig.addr, align 8
  %0 = load i8*, i8** %sig.addr, align 8
  store i8* %0, i8** %p, align 8
  store i8* null, i8** %salt, align 8
  store i64 0, i64* %offset, align 8
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
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 15
  %2 = load i32, i32* %padding, align 8
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp5 = icmp eq i32 (i8*, i8*, i64)* %3, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  store i64 %5, i64* %olen, align 8
  %6 = load i32, i32* %md_alg.addr, align 4
  %cmp8 = icmp ne i32 %6, 0
  br i1 %cmp8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %if.end7
  %7 = load i32, i32* %md_alg.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %7) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %8 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp10 = icmp eq %struct.mbedtls_md_info_t* %8, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then9
  %9 = load i32, i32* %hashlen.addr, align 4
  %10 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call13 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %10) #5
  %conv = zext i8 %call13 to i32
  %cmp14 = icmp ne i32 %9, %conv
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end7
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 16
  %12 = load i32, i32* %hash_id, align 4
  %call19 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %12) #5
  store %struct.mbedtls_md_info_t* %call19, %struct.mbedtls_md_info_t** %md_info, align 8
  %13 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp20 = icmp eq %struct.mbedtls_md_info_t* %13, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %14 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call24 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %14) #5
  %conv25 = zext i8 %call24 to i64
  store i64 %conv25, i64* %hlen, align 8
  %15 = load i32, i32* %saltlen.addr, align 4
  %cmp26 = icmp eq i32 %15, -1
  br i1 %cmp26, label %if.then28, label %if.else43

if.then28:                                        ; preds = %if.end23
  %16 = load i64, i64* %hlen, align 8
  %sub = sub i64 %16, 2
  store i64 %sub, i64* %min_slen, align 8
  %17 = load i64, i64* %olen, align 8
  %18 = load i64, i64* %hlen, align 8
  %19 = load i64, i64* %min_slen, align 8
  %add = add i64 %18, %19
  %add29 = add i64 %add, 2
  %cmp30 = icmp ult i64 %17, %add29
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then28
  store i32 -16512, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then28
  %20 = load i64, i64* %olen, align 8
  %21 = load i64, i64* %hlen, align 8
  %22 = load i64, i64* %hlen, align 8
  %add33 = add i64 %21, %22
  %add34 = add i64 %add33, 2
  %cmp35 = icmp uge i64 %20, %add34
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else
  %23 = load i64, i64* %hlen, align 8
  store i64 %23, i64* %slen, align 8
  br label %if.end41

if.else38:                                        ; preds = %if.else
  %24 = load i64, i64* %olen, align 8
  %25 = load i64, i64* %hlen, align 8
  %sub39 = sub i64 %24, %25
  %sub40 = sub i64 %sub39, 2
  store i64 %sub40, i64* %slen, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then37
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  br label %if.end55

if.else43:                                        ; preds = %if.end23
  %26 = load i32, i32* %saltlen.addr, align 4
  %cmp44 = icmp slt i32 %26, 0
  br i1 %cmp44, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else43
  %27 = load i32, i32* %saltlen.addr, align 4
  %conv46 = sext i32 %27 to i64
  %28 = load i64, i64* %hlen, align 8
  %add47 = add i64 %conv46, %28
  %add48 = add i64 %add47, 2
  %29 = load i64, i64* %olen, align 8
  %cmp49 = icmp ugt i64 %add48, %29
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %lor.lhs.false, %if.else43
  store i32 -16512, i32* %retval, align 4
  br label %return

if.else52:                                        ; preds = %lor.lhs.false
  %30 = load i32, i32* %saltlen.addr, align 4
  %conv53 = sext i32 %30 to i64
  store i64 %conv53, i64* %slen, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end42
  %31 = load i8*, i8** %sig.addr, align 8
  %32 = load i64, i64* %olen, align 8
  %call56 = call i8* @memset(i8* noundef %31, i32 noundef 0, i64 noundef %32) #6
  %33 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %33, i32 0, i32 2
  %call57 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %N) #5
  %sub58 = sub i64 %call57, 1
  store i64 %sub58, i64* %msb, align 8
  %34 = load i64, i64* %olen, align 8
  %35 = load i64, i64* %hlen, align 8
  %sub59 = sub i64 %34, %35
  %36 = load i64, i64* %slen, align 8
  %sub60 = sub i64 %sub59, %36
  %sub61 = sub i64 %sub60, 2
  %37 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %sub61
  store i8* %add.ptr, i8** %p, align 8
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 1, i8* %38, align 1
  %39 = load i8*, i8** %p, align 8
  store i8* %39, i8** %salt, align 8
  %40 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %41 = load i8*, i8** %p_rng.addr, align 8
  %42 = load i8*, i8** %salt, align 8
  %43 = load i64, i64* %slen, align 8
  %call62 = call i32 %40(i8* noundef %41, i8* noundef %42, i64 noundef %43) #5
  store i32 %call62, i32* %ret, align 4
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end55
  %44 = load i32, i32* %ret, align 4
  %call66 = call i32 @mbedtls_error_add(i32 noundef -17536, i32 noundef %44, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef 1622) #5
  store i32 %call66, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end55
  %45 = load i64, i64* %slen, align 8
  %46 = load i8*, i8** %p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8* %add.ptr68, i8** %p, align 8
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %47 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call69 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %47, i32 noundef 0) #5
  store i32 %call69, i32* %ret, align 4
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end67
  br label %exit

if.end73:                                         ; preds = %if.end67
  %call74 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  br label %exit

if.end78:                                         ; preds = %if.end73
  %48 = load i8*, i8** %p, align 8
  %call79 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %48, i64 noundef 8) #5
  store i32 %call79, i32* %ret, align 4
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end78
  br label %exit

if.end83:                                         ; preds = %if.end78
  %49 = load i8*, i8** %hash.addr, align 8
  %50 = load i32, i32* %hashlen.addr, align 4
  %conv84 = zext i32 %50 to i64
  %call85 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %49, i64 noundef %conv84) #5
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end83
  br label %exit

if.end89:                                         ; preds = %if.end83
  %51 = load i8*, i8** %salt, align 8
  %52 = load i64, i64* %slen, align 8
  %call90 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %51, i64 noundef %52) #5
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end89
  br label %exit

if.end94:                                         ; preds = %if.end89
  %53 = load i8*, i8** %p, align 8
  %call95 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %53) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end94
  br label %exit

if.end99:                                         ; preds = %if.end94
  %54 = load i64, i64* %msb, align 8
  %rem = urem i64 %54, 8
  %cmp100 = icmp eq i64 %rem, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end99
  store i64 1, i64* %offset, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end99
  %55 = load i8*, i8** %sig.addr, align 8
  %56 = load i64, i64* %offset, align 8
  %add.ptr104 = getelementptr inbounds i8, i8* %55, i64 %56
  %57 = load i64, i64* %olen, align 8
  %58 = load i64, i64* %hlen, align 8
  %sub105 = sub i64 %57, %58
  %sub106 = sub i64 %sub105, 1
  %59 = load i64, i64* %offset, align 8
  %sub107 = sub i64 %sub106, %59
  %60 = load i8*, i8** %p, align 8
  %61 = load i64, i64* %hlen, align 8
  %call108 = call i32 @mgf_mask(i8* noundef %add.ptr104, i64 noundef %sub107, i8* noundef %60, i64 noundef %61, %struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call108, i32* %ret, align 4
  %cmp109 = icmp ne i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end103
  br label %exit

if.end112:                                        ; preds = %if.end103
  %62 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N113 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %62, i32 0, i32 2
  %call114 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %N113) #5
  %sub115 = sub i64 %call114, 1
  store i64 %sub115, i64* %msb, align 8
  %63 = load i64, i64* %olen, align 8
  %mul = mul i64 %63, 8
  %64 = load i64, i64* %msb, align 8
  %sub116 = sub i64 %mul, %64
  %sh_prom = trunc i64 %sub116 to i32
  %shr = ashr i32 255, %sh_prom
  %65 = load i8*, i8** %sig.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx, align 1
  %conv117 = zext i8 %66 to i32
  %and = and i32 %conv117, %shr
  %conv118 = trunc i32 %and to i8
  store i8 %conv118, i8* %arrayidx, align 1
  %67 = load i64, i64* %hlen, align 8
  %68 = load i8*, i8** %p, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %add.ptr119, i8** %p, align 8
  %69 = load i8*, i8** %p, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr120, i8** %p, align 8
  store i8 -68, i8* %69, align 1
  br label %exit

exit:                                             ; preds = %if.end112, %if.then111, %if.then98, %if.then93, %if.then88, %if.then82, %if.then77, %if.then72
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %70 = load i32, i32* %ret, align 4
  %cmp121 = icmp ne i32 %70, 0
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %exit
  %71 = load i32, i32* %ret, align 4
  store i32 %71, i32* %retval, align 4
  br label %return

if.end124:                                        ; preds = %exit
  %72 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %73 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %74 = load i8*, i8** %p_rng.addr, align 8
  %75 = load i8*, i8** %sig.addr, align 8
  %76 = load i8*, i8** %sig.addr, align 8
  %call125 = call i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef %72, i32 (i8*, i8*, i64)* noundef %73, i8* noundef %74, i8* noundef %75, i8* noundef %76) #5
  store i32 %call125, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end124, %if.then123, %if.then65, %if.then51, %if.then32, %if.then22, %if.then16, %if.then11, %if.then6, %if.then
  %77 = load i32, i32* %retval, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i8* noundef %sig) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sig.addr = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %3 = load i32, i32* %md_alg.addr, align 4
  %4 = load i32, i32* %hashlen.addr, align 4
  %5 = load i8*, i8** %hash.addr, align 8
  %6 = load i8*, i8** %sig.addr, align 8
  %call = call i32 @rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef %0, i32 (i8*, i8*, i64)* noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, i32 noundef -1, i8* noundef %6) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pkcs1_v15_sign(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i8* noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sig.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %sig_try = alloca i8*, align 8
  %verif = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8* null, i8** %sig_try, align 8
  store i8* null, i8** %verif, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 15
  %1 = load i32, i32* %padding, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load i32, i32* %md_alg.addr, align 4
  %3 = load i32, i32* %hashlen.addr, align 4
  %4 = load i8*, i8** %hash.addr, align 8
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %7 = load i8*, i8** %sig.addr, align 8
  %call = call i32 @rsa_rsassa_pkcs1_v15_encode(i32 noundef %2, i32 noundef %3, i8* noundef %4, i64 noundef %6, i8* noundef %7) #5
  store i32 %call, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len8 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 1
  %10 = load i64, i64* %len8, align 8
  %call9 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %10) #6
  store i8* %call9, i8** %sig_try, align 8
  %11 = load i8*, i8** %sig_try, align 8
  %cmp10 = icmp eq i8* %11, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 -16, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len13 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 1
  %13 = load i64, i64* %len13, align 8
  %call14 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %13) #6
  store i8* %call14, i8** %verif, align 8
  %14 = load i8*, i8** %verif, align 8
  %cmp15 = icmp eq i8* %14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %15 = load i8*, i8** %sig_try, align 8
  call void @free(i8* noundef %15) #6
  store i32 -16, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  br label %do.body18

do.body18:                                        ; preds = %if.end17
  %16 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %18 = load i8*, i8** %p_rng.addr, align 8
  %19 = load i8*, i8** %sig.addr, align 8
  %20 = load i8*, i8** %sig_try, align 8
  %call19 = call i32 @mbedtls_rsa_private(%struct.mbedtls_rsa_context* noundef %16, i32 (i8*, i8*, i64)* noundef %17, i8* noundef %18, i8* noundef %19, i8* noundef %20) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body18
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  %21 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %22 = load i8*, i8** %sig_try, align 8
  %23 = load i8*, i8** %verif, align 8
  %call25 = call i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %21, i8* noundef %22, i8* noundef %23) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body24
  br label %cleanup

if.end28:                                         ; preds = %do.body24
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  %24 = load i8*, i8** %verif, align 8
  %25 = load i8*, i8** %sig.addr, align 8
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len30 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %26, i32 0, i32 1
  %27 = load i64, i64* %len30, align 8
  %call31 = call i32 @mbedtls_ct_memcmp(i8* noundef %24, i8* noundef %25, i64 noundef %27) #5
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.end29
  store i32 -17152, i32* %ret, align 4
  br label %cleanup

if.end34:                                         ; preds = %do.end29
  %28 = load i8*, i8** %sig.addr, align 8
  %29 = load i8*, i8** %sig_try, align 8
  %30 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len35 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %30, i32 0, i32 1
  %31 = load i64, i64* %len35, align 8
  %call36 = call i8* @memcpy(i8* noundef %28, i8* noundef %29, i64 noundef %31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then27, %if.then21
  %32 = load i8*, i8** %sig_try, align 8
  %33 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len37 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %33, i32 0, i32 1
  %34 = load i64, i64* %len37, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %32, i64 noundef %34) #5
  %35 = load i8*, i8** %verif, align 8
  %36 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len38 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %36, i32 0, i32 1
  %37 = load i64, i64* %len38, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %35, i64 noundef %37) #5
  %38 = load i8*, i8** %sig_try, align 8
  call void @free(i8* noundef %38) #6
  %39 = load i8*, i8** %verif, align 8
  call void @free(i8* noundef %39) #6
  %40 = load i32, i32* %ret, align 4
  %cmp39 = icmp ne i32 %40, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %cleanup
  %41 = load i8*, i8** %sig.addr, align 8
  %42 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len41 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %42, i32 0, i32 1
  %43 = load i64, i64* %len41, align 8
  %call42 = call i8* @memset(i8* noundef %41, i32 noundef 33, i64 noundef %43) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %cleanup
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.then16, %if.then11, %if.then6, %if.then
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_rsassa_pkcs1_v15_encode(i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i64 noundef %dst_len, i8* noundef %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %dst_len.addr = alloca i64, align 8
  %dst.addr = alloca i8*, align 8
  %oid_size = alloca i64, align 8
  %nb_pad = alloca i64, align 8
  %p = alloca i8*, align 8
  %oid = alloca i8*, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %dst_len, i64* %dst_len.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i64 0, i64* %oid_size, align 8
  %0 = load i64, i64* %dst_len.addr, align 8
  store i64 %0, i64* %nb_pad, align 8
  %1 = load i8*, i8** %dst.addr, align 8
  store i8* %1, i8** %p, align 8
  store i8* null, i8** %oid, align 8
  %2 = load i32, i32* %md_alg.addr, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %md_alg.addr, align 4
  %call = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %3) #5
  store %struct.mbedtls_md_info_t* %call, %struct.mbedtls_md_info_t** %md_info, align 8
  %4 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp1 = icmp eq %struct.mbedtls_md_info_t* %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %md_alg.addr, align 4
  %call3 = call i32 @mbedtls_oid_get_oid_by_md(i32 noundef %5, i8** noundef %oid, i64* noundef %oid_size) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load i32, i32* %hashlen.addr, align 4
  %7 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call7 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %7) #5
  %conv = zext i8 %call7 to i32
  %cmp8 = icmp ne i32 %6, %conv
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %8 = load i32, i32* %hashlen.addr, align 4
  %add = add i32 8, %8
  %conv12 = zext i32 %add to i64
  %9 = load i64, i64* %oid_size, align 8
  %add13 = add i64 %conv12, %9
  %cmp14 = icmp uge i64 %add13, 128
  br i1 %cmp14, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %10 = load i32, i32* %hashlen.addr, align 4
  %add16 = add i32 10, %10
  %11 = load i32, i32* %hashlen.addr, align 4
  %cmp17 = icmp ult i32 %add16, %11
  br i1 %cmp17, label %if.then27, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %hashlen.addr, align 4
  %add20 = add i32 10, %12
  %conv21 = zext i32 %add20 to i64
  %13 = load i64, i64* %oid_size, align 8
  %add22 = add i64 %conv21, %13
  %14 = load i32, i32* %hashlen.addr, align 4
  %add23 = add i32 10, %14
  %conv24 = zext i32 %add23 to i64
  %cmp25 = icmp ult i64 %add22, %conv24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %if.end11
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false19
  %15 = load i64, i64* %nb_pad, align 8
  %16 = load i32, i32* %hashlen.addr, align 4
  %add29 = add i32 10, %16
  %conv30 = zext i32 %add29 to i64
  %17 = load i64, i64* %oid_size, align 8
  %add31 = add i64 %conv30, %17
  %cmp32 = icmp ult i64 %15, %add31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end28
  %18 = load i32, i32* %hashlen.addr, align 4
  %add36 = add i32 10, %18
  %conv37 = zext i32 %add36 to i64
  %19 = load i64, i64* %oid_size, align 8
  %add38 = add i64 %conv37, %19
  %20 = load i64, i64* %nb_pad, align 8
  %sub = sub i64 %20, %add38
  store i64 %sub, i64* %nb_pad, align 8
  br label %if.end46

if.else:                                          ; preds = %entry
  %21 = load i64, i64* %nb_pad, align 8
  %22 = load i32, i32* %hashlen.addr, align 4
  %conv39 = zext i32 %22 to i64
  %cmp40 = icmp ult i64 %21, %conv39
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.else
  %23 = load i32, i32* %hashlen.addr, align 4
  %conv44 = zext i32 %23 to i64
  %24 = load i64, i64* %nb_pad, align 8
  %sub45 = sub i64 %24, %conv44
  store i64 %sub45, i64* %nb_pad, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.end35
  %25 = load i64, i64* %nb_pad, align 8
  %cmp47 = icmp ult i64 %25, 11
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end46
  %26 = load i64, i64* %nb_pad, align 8
  %sub51 = sub i64 %26, 3
  store i64 %sub51, i64* %nb_pad, align 8
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8
  store i8 1, i8* %28, align 1
  %29 = load i8*, i8** %p, align 8
  %30 = load i64, i64* %nb_pad, align 8
  %call53 = call i8* @memset(i8* noundef %29, i32 noundef 255, i64 noundef %30) #6
  %31 = load i64, i64* %nb_pad, align 8
  %32 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %add.ptr, i8** %p, align 8
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  store i8 0, i8* %33, align 1
  %34 = load i32, i32* %md_alg.addr, align 4
  %cmp55 = icmp eq i32 %34, 0
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end50
  %35 = load i8*, i8** %p, align 8
  %36 = load i8*, i8** %hash.addr, align 8
  %37 = load i32, i32* %hashlen.addr, align 4
  %conv58 = zext i32 %37 to i64
  %call59 = call i8* @memcpy(i8* noundef %35, i8* noundef %36, i64 noundef %conv58) #6
  store i32 0, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.end50
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr61, i8** %p, align 8
  store i8 48, i8* %38, align 1
  %39 = load i64, i64* %oid_size, align 8
  %add62 = add i64 8, %39
  %40 = load i32, i32* %hashlen.addr, align 4
  %conv63 = zext i32 %40 to i64
  %add64 = add i64 %add62, %conv63
  %conv65 = trunc i64 %add64 to i8
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr66, i8** %p, align 8
  store i8 %conv65, i8* %41, align 1
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr67, i8** %p, align 8
  store i8 48, i8* %42, align 1
  %43 = load i64, i64* %oid_size, align 8
  %add68 = add i64 4, %43
  %conv69 = trunc i64 %add68 to i8
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr70, i8** %p, align 8
  store i8 %conv69, i8* %44, align 1
  %45 = load i8*, i8** %p, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr71, i8** %p, align 8
  store i8 6, i8* %45, align 1
  %46 = load i64, i64* %oid_size, align 8
  %conv72 = trunc i64 %46 to i8
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8
  store i8 %conv72, i8* %47, align 1
  %48 = load i8*, i8** %p, align 8
  %49 = load i8*, i8** %oid, align 8
  %50 = load i64, i64* %oid_size, align 8
  %call74 = call i8* @memcpy(i8* noundef %48, i8* noundef %49, i64 noundef %50) #6
  %51 = load i64, i64* %oid_size, align 8
  %52 = load i8*, i8** %p, align 8
  %add.ptr75 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %add.ptr75, i8** %p, align 8
  %53 = load i8*, i8** %p, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr76, i8** %p, align 8
  store i8 5, i8* %53, align 1
  %54 = load i8*, i8** %p, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr77, i8** %p, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %p, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr78, i8** %p, align 8
  store i8 4, i8* %55, align 1
  %56 = load i32, i32* %hashlen.addr, align 4
  %conv79 = trunc i32 %56 to i8
  %57 = load i8*, i8** %p, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr80, i8** %p, align 8
  store i8 %conv79, i8* %57, align 1
  %58 = load i8*, i8** %p, align 8
  %59 = load i8*, i8** %hash.addr, align 8
  %60 = load i32, i32* %hashlen.addr, align 4
  %conv81 = zext i32 %60 to i64
  %call82 = call i8* @memcpy(i8* noundef %58, i8* noundef %59, i64 noundef %conv81) #6
  %61 = load i32, i32* %hashlen.addr, align 4
  %62 = load i8*, i8** %p, align 8
  %idx.ext = zext i32 %61 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  store i8* %add.ptr83, i8** %p, align 8
  %63 = load i8*, i8** %p, align 8
  %64 = load i8*, i8** %dst.addr, align 8
  %65 = load i64, i64* %dst_len.addr, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %64, i64 %65
  %cmp85 = icmp ne i8* %63, %add.ptr84
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end60
  %66 = load i8*, i8** %dst.addr, align 8
  %67 = load i64, i64* %dst_len.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %66, i64 noundef %67) #5
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end60
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end88, %if.then87, %if.then57, %if.then49, %if.then42, %if.then34, %if.then27, %if.then10, %if.then5, %if.then2
  %68 = load i32, i32* %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local i32 @mbedtls_ct_memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef %ctx, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i8* noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sig.addr = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 15
  %1 = load i32, i32* %padding, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end4
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %5 = load i32, i32* %md_alg.addr, align 4
  %6 = load i32, i32* %hashlen.addr, align 4
  %7 = load i8*, i8** %hash.addr, align 8
  %8 = load i8*, i8** %sig.addr, align 8
  %call = call i32 @mbedtls_rsa_rsassa_pkcs1_v15_sign(%struct.mbedtls_rsa_context* noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4, i32 noundef %5, i32 noundef %6, i8* noundef %7, i8* noundef %8) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %do.end4
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %12 = load i32, i32* %md_alg.addr, align 4
  %13 = load i32, i32* %hashlen.addr, align 4
  %14 = load i8*, i8** %hash.addr, align 8
  %15 = load i8*, i8** %sig.addr, align 8
  %call6 = call i32 @mbedtls_rsa_rsassa_pss_sign(%struct.mbedtls_rsa_context* noundef %9, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11, i32 noundef %12, i32 noundef %13, i8* noundef %14, i8* noundef %15) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end4
  store i32 -16640, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pss_verify_ext(%struct.mbedtls_rsa_context* noundef %ctx, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i32 noundef %mgf1_hash_id, i32 noundef %expected_salt_len, i8* noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %mgf1_hash_id.addr = alloca i32, align 4
  %expected_salt_len.addr = alloca i32, align 4
  %sig.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %siglen = alloca i64, align 8
  %p = alloca i8*, align 8
  %hash_start = alloca i8*, align 8
  %result = alloca [64 x i8], align 16
  %zeros = alloca [8 x i8], align 1
  %hlen = alloca i32, align 4
  %observed_salt_len = alloca i64, align 8
  %msb = alloca i64, align 8
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_ctx = alloca %struct.mbedtls_md_context_t, align 8
  %buf = alloca [1024 x i8], align 16
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i32 %mgf1_hash_id, i32* %mgf1_hash_id.addr, align 4
  store i32 %expected_salt_len, i32* %expected_salt_len.addr, align 4
  store i8* %sig, i8** %sig.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 1024, i1 false)
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
  %1 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %1, i32 0, i32 1
  %2 = load i64, i64* %len, align 8
  store i64 %2, i64* %siglen, align 8
  %3 = load i64, i64* %siglen, align 8
  %cmp = icmp ult i64 %3, 16
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %4 = load i64, i64* %siglen, align 8
  %cmp5 = icmp ugt i64 %4, 1024
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %6 = load i8*, i8** %sig.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %5, i8* noundef %6, i8* noundef %arraydecay) #5
  store i32 %call, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  store i8* %arraydecay9, i8** %p, align 8
  %9 = load i64, i64* %siglen, align 8
  %sub = sub i64 %9, 1
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 %sub
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp10 = icmp ne i32 %conv, 188
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 -16640, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %11 = load i32, i32* %md_alg.addr, align 4
  %cmp14 = icmp ne i32 %11, 0
  br i1 %cmp14, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.end13
  %12 = load i32, i32* %md_alg.addr, align 4
  %call17 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %12) #5
  store %struct.mbedtls_md_info_t* %call17, %struct.mbedtls_md_info_t** %md_info, align 8
  %13 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp18 = icmp eq %struct.mbedtls_md_info_t* %13, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then16
  %14 = load i32, i32* %hashlen.addr, align 4
  %15 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call22 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %15) #5
  %conv23 = zext i8 %call22 to i32
  %cmp24 = icmp ne i32 %14, %conv23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end21
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end13
  %16 = load i32, i32* %mgf1_hash_id.addr, align 4
  %call29 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_type(i32 noundef %16) #5
  store %struct.mbedtls_md_info_t* %call29, %struct.mbedtls_md_info_t** %md_info, align 8
  %17 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %cmp30 = icmp eq %struct.mbedtls_md_info_t* %17, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end28
  %18 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call34 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* noundef %18) #5
  %conv35 = zext i8 %call34 to i32
  store i32 %conv35, i32* %hlen, align 4
  %arraydecay36 = getelementptr inbounds [8 x i8], [8 x i8]* %zeros, i64 0, i64 0
  %call37 = call i8* @memset(i8* noundef %arraydecay36, i32 noundef 0, i64 noundef 8) #6
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %19, i32 0, i32 2
  %call38 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %N) #5
  %sub39 = sub i64 %call38, 1
  store i64 %sub39, i64* %msb, align 8
  %arrayidx40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %20 = load i8, i8* %arrayidx40, align 16
  %conv41 = zext i8 %20 to i32
  %21 = load i64, i64* %siglen, align 8
  %mul = mul i64 %21, 8
  %sub42 = sub i64 8, %mul
  %22 = load i64, i64* %msb, align 8
  %add = add i64 %sub42, %22
  %sh_prom = trunc i64 %add to i32
  %shr = ashr i32 %conv41, %sh_prom
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end33
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end33
  %23 = load i64, i64* %msb, align 8
  %rem = urem i64 %23, 8
  %cmp45 = icmp eq i64 %rem, 0
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %25 = load i64, i64* %siglen, align 8
  %sub48 = sub i64 %25, 1
  store i64 %sub48, i64* %siglen, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end44
  %26 = load i64, i64* %siglen, align 8
  %27 = load i32, i32* %hlen, align 4
  %add50 = add i32 %27, 2
  %conv51 = zext i32 %add50 to i64
  %cmp52 = icmp ult i64 %26, %conv51
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end49
  %28 = load i8*, i8** %p, align 8
  %29 = load i64, i64* %siglen, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %29
  %30 = load i32, i32* %hlen, align 4
  %idx.ext = zext i32 %30 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 -1
  store i8* %add.ptr57, i8** %hash_start, align 8
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %31 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call58 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* noundef %md_ctx, %struct.mbedtls_md_info_t* noundef %31, i32 noundef 0) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end55
  br label %exit

if.end62:                                         ; preds = %if.end55
  %32 = load i8*, i8** %p, align 8
  %33 = load i64, i64* %siglen, align 8
  %34 = load i32, i32* %hlen, align 4
  %conv63 = zext i32 %34 to i64
  %sub64 = sub i64 %33, %conv63
  %sub65 = sub i64 %sub64, 1
  %35 = load i8*, i8** %hash_start, align 8
  %36 = load i32, i32* %hlen, align 4
  %conv66 = zext i32 %36 to i64
  %call67 = call i32 @mgf_mask(i8* noundef %32, i64 noundef %sub65, i8* noundef %35, i64 noundef %conv66, %struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call67, i32* %ret, align 4
  %37 = load i32, i32* %ret, align 4
  %cmp68 = icmp ne i32 %37, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end62
  br label %exit

if.end71:                                         ; preds = %if.end62
  %38 = load i64, i64* %siglen, align 8
  %mul72 = mul i64 %38, 8
  %39 = load i64, i64* %msb, align 8
  %sub73 = sub i64 %mul72, %39
  %sh_prom74 = trunc i64 %sub73 to i32
  %shr75 = ashr i32 255, %sh_prom74
  %arrayidx76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  %40 = load i8, i8* %arrayidx76, align 16
  %conv77 = zext i8 %40 to i32
  %and = and i32 %conv77, %shr75
  %conv78 = trunc i32 %and to i8
  store i8 %conv78, i8* %arrayidx76, align 16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end71
  %41 = load i8*, i8** %p, align 8
  %42 = load i8*, i8** %hash_start, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %42, i64 -1
  %cmp80 = icmp ult i8* %41, %add.ptr79
  br i1 %cmp80, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv82 = zext i8 %44 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %45 = phi i1 [ false, %while.cond ], [ %cmp83, %land.rhs ]
  br i1 %45, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %46 = load i8*, i8** %p, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr85, i8** %p, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %47 = load i8*, i8** %p, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr86, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %conv87 = zext i8 %48 to i32
  %cmp88 = icmp ne i32 %conv87, 1
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %while.end
  store i32 -16640, i32* %ret, align 4
  br label %exit

if.end91:                                         ; preds = %while.end
  %49 = load i8*, i8** %hash_start, align 8
  %50 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %observed_salt_len, align 8
  %51 = load i32, i32* %expected_salt_len.addr, align 4
  %cmp92 = icmp ne i32 %51, -1
  br i1 %cmp92, label %land.lhs.true, label %if.end98

land.lhs.true:                                    ; preds = %if.end91
  %52 = load i64, i64* %observed_salt_len, align 8
  %53 = load i32, i32* %expected_salt_len.addr, align 4
  %conv94 = sext i32 %53 to i64
  %cmp95 = icmp ne i64 %52, %conv94
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %land.lhs.true
  store i32 -16640, i32* %ret, align 4
  br label %exit

if.end98:                                         ; preds = %land.lhs.true, %if.end91
  %call99 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  store i32 %call99, i32* %ret, align 4
  %54 = load i32, i32* %ret, align 4
  %cmp100 = icmp ne i32 %54, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end98
  br label %exit

if.end103:                                        ; preds = %if.end98
  %arraydecay104 = getelementptr inbounds [8 x i8], [8 x i8]* %zeros, i64 0, i64 0
  %call105 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay104, i64 noundef 8) #5
  store i32 %call105, i32* %ret, align 4
  %55 = load i32, i32* %ret, align 4
  %cmp106 = icmp ne i32 %55, 0
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end103
  br label %exit

if.end109:                                        ; preds = %if.end103
  %56 = load i8*, i8** %hash.addr, align 8
  %57 = load i32, i32* %hashlen.addr, align 4
  %conv110 = zext i32 %57 to i64
  %call111 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %56, i64 noundef %conv110) #5
  store i32 %call111, i32* %ret, align 4
  %58 = load i32, i32* %ret, align 4
  %cmp112 = icmp ne i32 %58, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end109
  br label %exit

if.end115:                                        ; preds = %if.end109
  %59 = load i8*, i8** %p, align 8
  %60 = load i64, i64* %observed_salt_len, align 8
  %call116 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %59, i64 noundef %60) #5
  store i32 %call116, i32* %ret, align 4
  %61 = load i32, i32* %ret, align 4
  %cmp117 = icmp ne i32 %61, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end115
  br label %exit

if.end120:                                        ; preds = %if.end115
  %arraydecay121 = getelementptr inbounds [64 x i8], [64 x i8]* %result, i64 0, i64 0
  %call122 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef %md_ctx, i8* noundef %arraydecay121) #5
  store i32 %call122, i32* %ret, align 4
  %62 = load i32, i32* %ret, align 4
  %cmp123 = icmp ne i32 %62, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end120
  br label %exit

if.end126:                                        ; preds = %if.end120
  %63 = load i8*, i8** %hash_start, align 8
  %arraydecay127 = getelementptr inbounds [64 x i8], [64 x i8]* %result, i64 0, i64 0
  %64 = load i32, i32* %hlen, align 4
  %conv128 = zext i32 %64 to i64
  %call129 = call i32 @memcmp(i8* noundef %63, i8* noundef %arraydecay127, i64 noundef %conv128) #7
  %cmp130 = icmp ne i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end126
  store i32 -17280, i32* %ret, align 4
  br label %exit

if.end133:                                        ; preds = %if.end126
  br label %exit

exit:                                             ; preds = %if.end133, %if.then132, %if.then125, %if.then119, %if.then114, %if.then108, %if.then102, %if.then97, %if.then90, %if.then70, %if.then61
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* noundef %md_ctx) #5
  %65 = load i32, i32* %ret, align 4
  store i32 %65, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then54, %if.then43, %if.then32, %if.then26, %if.then20, %if.then12, %if.then7, %if.then
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* noundef) #1

declare dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pss_verify(%struct.mbedtls_rsa_context* noundef %ctx, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i8* noundef %sig) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sig.addr = alloca i8*, align 8
  %mgf1_hash_id = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 16
  %1 = load i32, i32* %hash_id, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end4
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %hash_id5 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 16
  %3 = load i32, i32* %hash_id5, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end4
  %4 = load i32, i32* %md_alg.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %mgf1_hash_id, align 4
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %6 = load i32, i32* %md_alg.addr, align 4
  %7 = load i32, i32* %hashlen.addr, align 4
  %8 = load i8*, i8** %hash.addr, align 8
  %9 = load i32, i32* %mgf1_hash_id, align 4
  %10 = load i8*, i8** %sig.addr, align 8
  %call = call i32 @mbedtls_rsa_rsassa_pss_verify_ext(%struct.mbedtls_rsa_context* noundef %5, i32 noundef %6, i32 noundef %7, i8* noundef %8, i32 noundef %9, i32 noundef -1, i8* noundef %10) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_rsassa_pkcs1_v15_verify(%struct.mbedtls_rsa_context* noundef %ctx, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i8* noundef %sig) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sig.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %sig_len = alloca i64, align 8
  %encoded = alloca i8*, align 8
  %encoded_expected = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i32 0, i32* %ret, align 4
  store i8* null, i8** %encoded, align 8
  store i8* null, i8** %encoded_expected, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %sig_len, align 8
  %2 = load i64, i64* %sig_len, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %2) #6
  store i8* %call, i8** %encoded, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end4
  %3 = load i64, i64* %sig_len, align 8
  %call5 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %3) #6
  store i8* %call5, i8** %encoded_expected, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end4
  store i32 -16, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %md_alg.addr, align 4
  %5 = load i32, i32* %hashlen.addr, align 4
  %6 = load i8*, i8** %hash.addr, align 8
  %7 = load i64, i64* %sig_len, align 8
  %8 = load i8*, i8** %encoded_expected, align 8
  %call7 = call i32 @rsa_rsassa_pkcs1_v15_encode(i32 noundef %4, i32 noundef %5, i8* noundef %6, i64 noundef %7, i8* noundef %8) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %10 = load i8*, i8** %sig.addr, align 8
  %11 = load i8*, i8** %encoded, align 8
  %call11 = call i32 @mbedtls_rsa_public(%struct.mbedtls_rsa_context* noundef %9, i8* noundef %10, i8* noundef %11) #5
  store i32 %call11, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  %cmp12 = icmp ne i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %13 = load i8*, i8** %encoded, align 8
  %14 = load i8*, i8** %encoded_expected, align 8
  %15 = load i64, i64* %sig_len, align 8
  %call15 = call i32 @mbedtls_ct_memcmp(i8* noundef %13, i8* noundef %14, i64 noundef %15) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  store i32 -17280, i32* %ret, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then13, %if.then9, %if.then
  %16 = load i8*, i8** %encoded, align 8
  %cmp19 = icmp ne i8* %16, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %cleanup
  %17 = load i8*, i8** %encoded, align 8
  %18 = load i64, i64* %sig_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %17, i64 noundef %18) #5
  %19 = load i8*, i8** %encoded, align 8
  call void @free(i8* noundef %19) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %cleanup
  %20 = load i8*, i8** %encoded_expected, align 8
  %cmp22 = icmp ne i8* %20, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %21 = load i8*, i8** %encoded_expected, align 8
  %22 = load i64, i64* %sig_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %21, i64 noundef %22) #5
  %23 = load i8*, i8** %encoded_expected, align 8
  call void @free(i8* noundef %23) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %24 = load i32, i32* %ret, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef %ctx, i32 noundef %md_alg, i32 noundef %hashlen, i8* noundef %hash, i8* noundef %sig) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %md_alg.addr = alloca i32, align 4
  %hashlen.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %sig.addr = alloca i8*, align 8
  store %struct.mbedtls_rsa_context* %ctx, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i32 %hashlen, i32* %hashlen.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
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
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 15
  %1 = load i32, i32* %padding, align 8
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.end4
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %3 = load i32, i32* %md_alg.addr, align 4
  %4 = load i32, i32* %hashlen.addr, align 4
  %5 = load i8*, i8** %hash.addr, align 8
  %6 = load i8*, i8** %sig.addr, align 8
  %call = call i32 @mbedtls_rsa_rsassa_pkcs1_v15_verify(%struct.mbedtls_rsa_context* noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, i8* noundef %6) #5
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %do.end4
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %ctx.addr, align 8
  %8 = load i32, i32* %md_alg.addr, align 4
  %9 = load i32, i32* %hashlen.addr, align 4
  %10 = load i8*, i8** %hash.addr, align 8
  %11 = load i8*, i8** %sig.addr, align 8
  %call6 = call i32 @mbedtls_rsa_rsassa_pss_verify(%struct.mbedtls_rsa_context* noundef %7, i32 noundef %8, i32 noundef %9, i8* noundef %10, i8* noundef %11) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %do.end4
  store i32 -16640, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_copy(%struct.mbedtls_rsa_context* noundef %dst, %struct.mbedtls_rsa_context* noundef %src) #0 {
entry:
  %dst.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %src.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_rsa_context* %dst, %struct.mbedtls_rsa_context** %dst.addr, align 8
  store %struct.mbedtls_rsa_context* %src, %struct.mbedtls_rsa_context** %src.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %len = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %len3 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %2, i32 0, i32 1
  store i64 %1, i64* %len3, align 8
  br label %do.body4

do.body4:                                         ; preds = %do.end2
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 2
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %N5 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %4, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %N5) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body4
  br label %cleanup

if.end:                                           ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %5 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %5, i32 0, i32 3
  %6 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %E8 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %6, i32 0, i32 3
  %call9 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %E8) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body7
  br label %cleanup

if.end12:                                         ; preds = %do.body7
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %D = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %7, i32 0, i32 4
  %8 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %D15 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %8, i32 0, i32 4
  %call16 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %D15) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body14
  br label %cleanup

if.end19:                                         ; preds = %do.body14
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %9, i32 0, i32 5
  %10 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %P22 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 5
  %call23 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %P22) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body21
  br label %cleanup

if.end26:                                         ; preds = %do.body21
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %11 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %11, i32 0, i32 6
  %12 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %Q29 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %12, i32 0, i32 6
  %call30 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %Q29) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body28
  br label %cleanup

if.end33:                                         ; preds = %do.body28
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %13 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %DP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %13, i32 0, i32 7
  %14 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %DP36 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %14, i32 0, i32 7
  %call37 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DP36) #5
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body35
  br label %cleanup

if.end40:                                         ; preds = %do.body35
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  br label %do.body42

do.body42:                                        ; preds = %do.end41
  %15 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %DQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %15, i32 0, i32 8
  %16 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %DQ43 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %16, i32 0, i32 8
  %call44 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %DQ43) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body42
  br label %cleanup

if.end47:                                         ; preds = %do.body42
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %17 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %QP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %17, i32 0, i32 9
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %QP50 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %18, i32 0, i32 9
  %call51 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %QP, %struct.mbedtls_mpi* noundef %QP50) #5
  store i32 %call51, i32* %ret, align 4
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body49
  br label %cleanup

if.end54:                                         ; preds = %do.body49
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %do.body56

do.body56:                                        ; preds = %do.end55
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %RP = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %19, i32 0, i32 11
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %RP57 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %20, i32 0, i32 11
  %call58 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %RP, %struct.mbedtls_mpi* noundef %RP57) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body56
  br label %cleanup

if.end61:                                         ; preds = %do.body56
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %21 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %RQ = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %21, i32 0, i32 12
  %22 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %RQ64 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %22, i32 0, i32 12
  %call65 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %RQ, %struct.mbedtls_mpi* noundef %RQ64) #5
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body63
  br label %cleanup

if.end68:                                         ; preds = %do.body63
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %do.body70

do.body70:                                        ; preds = %do.end69
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %RN = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %23, i32 0, i32 10
  %24 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %RN71 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %24, i32 0, i32 10
  %call72 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %RN, %struct.mbedtls_mpi* noundef %RN71) #5
  store i32 %call72, i32* %ret, align 4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body70
  br label %cleanup

if.end75:                                         ; preds = %do.body70
  br label %do.end76

do.end76:                                         ; preds = %if.end75
  br label %do.body77

do.body77:                                        ; preds = %do.end76
  %25 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %Vi = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %25, i32 0, i32 13
  %26 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %Vi78 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %26, i32 0, i32 13
  %call79 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Vi, %struct.mbedtls_mpi* noundef %Vi78) #5
  store i32 %call79, i32* %ret, align 4
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %do.body77
  br label %cleanup

if.end82:                                         ; preds = %do.body77
  br label %do.end83

do.end83:                                         ; preds = %if.end82
  br label %do.body84

do.body84:                                        ; preds = %do.end83
  %27 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %Vf = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %27, i32 0, i32 14
  %28 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %Vf85 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %28, i32 0, i32 14
  %call86 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Vf, %struct.mbedtls_mpi* noundef %Vf85) #5
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body84
  br label %cleanup

if.end89:                                         ; preds = %do.body84
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  %29 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %padding = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %29, i32 0, i32 15
  %30 = load i32, i32* %padding, align 8
  %31 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %padding91 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %31, i32 0, i32 15
  store i32 %30, i32* %padding91, align 8
  %32 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %src.addr, align 8
  %hash_id = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %32, i32 0, i32 16
  %33 = load i32, i32* %hash_id, align 4
  %34 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  %hash_id92 = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %34, i32 0, i32 16
  store i32 %33, i32* %hash_id92, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.then88, %if.then81, %if.then74, %if.then67, %if.then60, %if.then53, %if.then46, %if.then39, %if.then32, %if.then25, %if.then18, %if.then11, %if.then
  %35 = load i32, i32* %ret, align 4
  %cmp93 = icmp ne i32 %35, 0
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %cleanup
  %36 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %dst.addr, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %36) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %cleanup
  %37 = load i32, i32* %ret, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %rsa = alloca %struct.mbedtls_rsa_context, align 8
  %rsa_plaintext = alloca [24 x i8], align 16
  %rsa_decrypted = alloca [24 x i8], align 16
  %rsa_ciphertext = alloca [128 x i8], align 16
  %sha1sum = alloca [20 x i8], align 16
  %K = alloca %struct.mbedtls_mpi, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 0, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %K) #5
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %rsa) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %K, i32 noundef 16, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %call2 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %call8 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %K, i32 noundef 16, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i64 0, i64 0)) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %call14 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %call20 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %K, i32 noundef 16, i8* noundef getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0)) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body19
  br label %cleanup

if.end23:                                         ; preds = %do.body19
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %call26 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body25
  br label %cleanup

if.end29:                                         ; preds = %do.body25
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  %call32 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %K, i32 noundef 16, i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @.str.4, i64 0, i64 0)) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.body31
  br label %cleanup

if.end35:                                         ; preds = %do.body31
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  br label %do.body37

do.body37:                                        ; preds = %do.end36
  %call38 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef null) #5
  store i32 %call38, i32* %ret, align 4
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body37
  br label %cleanup

if.end41:                                         ; preds = %do.body37
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %call44 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %K, i32 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  store i32 %call44, i32* %ret, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body43
  br label %cleanup

if.end47:                                         ; preds = %do.body43
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %call50 = call i32 @mbedtls_rsa_import(%struct.mbedtls_rsa_context* noundef %rsa, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %K) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body49
  br label %cleanup

if.end53:                                         ; preds = %do.body49
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  br label %do.body55

do.body55:                                        ; preds = %do.end54
  %call56 = call i32 @mbedtls_rsa_complete(%struct.mbedtls_rsa_context* noundef %rsa) #5
  store i32 %call56, i32* %ret, align 4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %do.body55
  br label %cleanup

if.end59:                                         ; preds = %do.body55
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  %0 = load i32, i32* %verbose.addr, align 4
  %cmp61 = icmp ne i32 %0, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %do.end60
  %call63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %do.end60
  %call65 = call i32 @mbedtls_rsa_check_pubkey(%struct.mbedtls_rsa_context* noundef %rsa) #5
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end64
  %call67 = call i32 @mbedtls_rsa_check_privkey(%struct.mbedtls_rsa_context* noundef %rsa) #5
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end74

if.then69:                                        ; preds = %lor.lhs.false, %if.end64
  %1 = load i32, i32* %verbose.addr, align 4
  %cmp70 = icmp ne i32 %1, 0
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.then69
  %call72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.then69
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false
  %2 = load i32, i32* %verbose.addr, align 4
  %cmp75 = icmp ne i32 %2, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end74
  %call77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end74
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %rsa_plaintext, i64 0, i64 0
  %call79 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64 noundef 24) #6
  %arraydecay80 = getelementptr inbounds [24 x i8], [24 x i8]* %rsa_plaintext, i64 0, i64 0
  %arraydecay81 = getelementptr inbounds [128 x i8], [128 x i8]* %rsa_ciphertext, i64 0, i64 0
  %call82 = call i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i64 noundef 24, i8* noundef %arraydecay80, i8* noundef %arraydecay81) #5
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.end89

if.then84:                                        ; preds = %if.end78
  %3 = load i32, i32* %verbose.addr, align 4
  %cmp85 = icmp ne i32 %3, 0
  br i1 %cmp85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.then84
  %call87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.then84
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.end78
  %4 = load i32, i32* %verbose.addr, align 4
  %cmp90 = icmp ne i32 %4, 0
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end89
  %call92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0)) #5
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end89
  %arraydecay94 = getelementptr inbounds [128 x i8], [128 x i8]* %rsa_ciphertext, i64 0, i64 0
  %arraydecay95 = getelementptr inbounds [24 x i8], [24 x i8]* %rsa_decrypted, i64 0, i64 0
  %call96 = call i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i64* noundef %len, i8* noundef %arraydecay94, i8* noundef %arraydecay95, i64 noundef 24) #5
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.end93
  %5 = load i32, i32* %verbose.addr, align 4
  %cmp99 = icmp ne i32 %5, 0
  br i1 %cmp99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.then98
  %call101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.then98
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end103:                                        ; preds = %if.end93
  %arraydecay104 = getelementptr inbounds [24 x i8], [24 x i8]* %rsa_decrypted, i64 0, i64 0
  %arraydecay105 = getelementptr inbounds [24 x i8], [24 x i8]* %rsa_plaintext, i64 0, i64 0
  %6 = load i64, i64* %len, align 8
  %call106 = call i32 @memcmp(i8* noundef %arraydecay104, i8* noundef %arraydecay105, i64 noundef %6) #7
  %cmp107 = icmp ne i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.end113

if.then108:                                       ; preds = %if.end103
  %7 = load i32, i32* %verbose.addr, align 4
  %cmp109 = icmp ne i32 %7, 0
  br i1 %cmp109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.then108
  %call111 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.then108
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end113:                                        ; preds = %if.end103
  %8 = load i32, i32* %verbose.addr, align 4
  %cmp114 = icmp ne i32 %8, 0
  br i1 %cmp114, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end113
  %call116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end113
  %9 = load i32, i32* %verbose.addr, align 4
  %cmp118 = icmp ne i32 %9, 0
  br i1 %cmp118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end117
  %call120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end117
  %arraydecay122 = getelementptr inbounds [24 x i8], [24 x i8]* %rsa_plaintext, i64 0, i64 0
  %arraydecay123 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1sum, i64 0, i64 0
  %call124 = call i32 @mbedtls_sha1(i8* noundef %arraydecay122, i64 noundef 24, i8* noundef %arraydecay123) #5
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then126, label %if.end131

if.then126:                                       ; preds = %if.end121
  %10 = load i32, i32* %verbose.addr, align 4
  %cmp127 = icmp ne i32 %10, 0
  br i1 %cmp127, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then126
  %call129 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.then126
  store i32 1, i32* %retval, align 4
  br label %return

if.end131:                                        ; preds = %if.end121
  %arraydecay132 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1sum, i64 0, i64 0
  %arraydecay133 = getelementptr inbounds [128 x i8], [128 x i8]* %rsa_ciphertext, i64 0, i64 0
  %call134 = call i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef %rsa, i32 (i8*, i8*, i64)* noundef @myrand, i8* noundef null, i32 noundef 2, i32 noundef 20, i8* noundef %arraydecay132, i8* noundef %arraydecay133) #5
  %cmp135 = icmp ne i32 %call134, 0
  br i1 %cmp135, label %if.then136, label %if.end141

if.then136:                                       ; preds = %if.end131
  %11 = load i32, i32* %verbose.addr, align 4
  %cmp137 = icmp ne i32 %11, 0
  br i1 %cmp137, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.then136
  %call139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then136
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end141:                                        ; preds = %if.end131
  %12 = load i32, i32* %verbose.addr, align 4
  %cmp142 = icmp ne i32 %12, 0
  br i1 %cmp142, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end141
  %call144 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end141
  %arraydecay146 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1sum, i64 0, i64 0
  %arraydecay147 = getelementptr inbounds [128 x i8], [128 x i8]* %rsa_ciphertext, i64 0, i64 0
  %call148 = call i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef %rsa, i32 noundef 2, i32 noundef 20, i8* noundef %arraydecay146, i8* noundef %arraydecay147) #5
  %cmp149 = icmp ne i32 %call148, 0
  br i1 %cmp149, label %if.then150, label %if.end155

if.then150:                                       ; preds = %if.end145
  %13 = load i32, i32* %verbose.addr, align 4
  %cmp151 = icmp ne i32 %13, 0
  br i1 %cmp151, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.then150
  %call153 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.then150
  store i32 1, i32* %ret, align 4
  br label %cleanup

if.end155:                                        ; preds = %if.end145
  %14 = load i32, i32* %verbose.addr, align 4
  %cmp156 = icmp ne i32 %14, 0
  br i1 %cmp156, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.end155
  %call158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #5
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.end155
  %15 = load i32, i32* %verbose.addr, align 4
  %cmp160 = icmp ne i32 %15, 0
  br i1 %cmp160, label %if.then161, label %if.end163

if.then161:                                       ; preds = %if.end159
  %call162 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end159
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %if.end154, %if.end140, %if.end112, %if.end102, %if.end88, %if.end73, %if.then58, %if.then52, %if.then46, %if.then40, %if.then34, %if.then28, %if.then22, %if.then16, %if.then10, %if.then4, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #5
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %rsa) #5
  %16 = load i32, i32* %ret, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.end130
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrand(i8* noundef %rng_state, i8* noundef %output, i64 noundef %len) #0 {
entry:
  %rng_state.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %rng_state, i8** %rng_state.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %rng_state.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %rng_state.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #6
  %conv = trunc i32 %call to i8
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @mbedtls_sha1(i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_oid_get_oid_by_md(i32 noundef, i8** noundef, i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
