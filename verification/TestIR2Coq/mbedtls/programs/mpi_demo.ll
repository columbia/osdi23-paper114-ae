; ModuleID = 'pkey/mpi_demo.c'
source_filename = "pkey/mpi_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"2789\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"3203\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"257\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\0A  Public key:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"  N = \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"  E = \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A  Private key:\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"  P = \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"  Q = \00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"  D = E^-1 mod (P-1)*(Q-1) = \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"55555\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"\0A  RSA operation:\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"  X (plaintext)  = \00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"  Y (ciphertext) = X^E mod N = \00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"  Z (decrypted)  = Y^D mod N = \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"\0AAn error occurred.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %E = alloca %struct.mbedtls_mpi, align 8
  %P = alloca %struct.mbedtls_mpi, align 8
  %Q = alloca %struct.mbedtls_mpi, align 8
  %N = alloca %struct.mbedtls_mpi, align 8
  %H = alloca %struct.mbedtls_mpi, align 8
  %D = alloca %struct.mbedtls_mpi, align 8
  %X = alloca %struct.mbedtls_mpi, align 8
  %Y = alloca %struct.mbedtls_mpi, align 8
  %Z = alloca %struct.mbedtls_mpi, align 8
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %E) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Q) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %H) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %D) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %X) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Y) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Z) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %P, i32 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #3
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
  %call2 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %Q, i32 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #3
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
  %call8 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %E, i32 noundef 10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #3
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
  %call14 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q) #3
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #3
  br label %do.body20

do.body20:                                        ; preds = %do.end18
  %call21 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.mbedtls_mpi* noundef %N, i32 noundef 10, %struct._IO_FILE* noundef null) #3
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
  %call27 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.mbedtls_mpi* noundef %E, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body26
  br label %cleanup

if.end30:                                         ; preds = %do.body26
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %do.body33

do.body33:                                        ; preds = %do.end31
  %call34 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.mbedtls_mpi* noundef %P, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body33
  br label %cleanup

if.end37:                                         ; preds = %do.body33
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %call40 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Q, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body39
  br label %cleanup

if.end43:                                         ; preds = %do.body39
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %call46 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %P, i64 noundef 1) #3
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
  %call52 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %Q, i64 noundef 1) #3
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
  %call58 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %H, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q) #3
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
  %call64 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %H) #3
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body63
  br label %cleanup

if.end67:                                         ; preds = %do.body63
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  %call69 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), %struct.mbedtls_mpi* noundef %D, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  br label %do.body70

do.body70:                                        ; preds = %do.end68
  %call71 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %X, i32 noundef 10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #3
  store i32 %call71, i32* %ret, align 4
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body70
  br label %cleanup

if.end74:                                         ; preds = %do.body70
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  br label %do.body76

do.body76:                                        ; preds = %do.end75
  %call77 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null) #3
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
  %call83 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef null) #3
  store i32 %call83, i32* %ret, align 4
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.body82
  br label %cleanup

if.end86:                                         ; preds = %do.body82
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  %call88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0)) #3
  br label %do.body89

do.body89:                                        ; preds = %do.end87
  %call90 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), %struct.mbedtls_mpi* noundef %X, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body89
  br label %cleanup

if.end93:                                         ; preds = %do.body89
  br label %do.end94

do.end94:                                         ; preds = %if.end93
  br label %do.body95

do.body95:                                        ; preds = %do.end94
  %call96 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Y, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  store i32 %call96, i32* %ret, align 4
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %do.body95
  br label %cleanup

if.end99:                                         ; preds = %do.body95
  br label %do.end100

do.end100:                                        ; preds = %if.end99
  br label %do.body101

do.body101:                                       ; preds = %do.end100
  %call102 = call i32 @mbedtls_mpi_write_file(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), %struct.mbedtls_mpi* noundef %Z, i32 noundef 10, %struct._IO_FILE* noundef null) #3
  store i32 %call102, i32* %ret, align 4
  %cmp103 = icmp ne i32 %call102, 0
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %do.body101
  br label %cleanup

if.end105:                                        ; preds = %do.body101
  br label %do.end106

do.end106:                                        ; preds = %if.end105
  %call107 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #3
  store i32 0, i32* %exit_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.then104, %if.then98, %if.then92, %if.then85, %if.then79, %if.then73, %if.then66, %if.then60, %if.then54, %if.then48, %if.then42, %if.then36, %if.then29, %if.then23, %if.then16, %if.then10, %if.then4, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %E) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Q) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %H) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %D) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %X) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Z) #3
  %0 = load i32, i32* %exit_code, align 4
  %cmp108 = icmp ne i32 %0, 0
  br i1 %cmp108, label %if.then109, label %if.end111

if.then109:                                       ; preds = %cleanup
  %call110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0)) #3
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %cleanup
  %1 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %1) #4
  unreachable
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @mbedtls_mpi_write_file(i8* noundef, %struct.mbedtls_mpi* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #1

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
