; ModuleID = 'rsa_alt_helpers.c'
source_filename = "rsa_alt_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_mpi = type { i32, i64, i64* }

@__const.mbedtls_rsa_deduce_primes.primes = private unnamed_addr constant [54 x i8] c"\02\03\05\07\0B\0D\11\13\17\1D\1F%)+/5;=CGIOSYaegkmq\7F\83\89\8B\95\97\9D\A3\A7\AD\B3\B5\BF\C1\C5\C7\D3\DF\E3\E5\E9\EF\F1\FB", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_deduce_primes(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %E.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %attempt = alloca i16, align 2
  %iter = alloca i16, align 2
  %order = alloca i16, align 2
  %T = alloca %struct.mbedtls_mpi, align 8
  %K = alloca %struct.mbedtls_mpi, align 8
  %primes = alloca [54 x i8], align 16
  %num_primes = alloca i64, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_mpi* %E, %struct.mbedtls_mpi** %E.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = bitcast [54 x i8]* %primes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([54 x i8], [54 x i8]* @__const.mbedtls_rsa_deduce_primes.primes, i32 0, i32 0), i64 54, i1 false)
  store i64 54, i64* %num_primes, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_mpi* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 2
  %4 = load i64*, i64** %p, align 8
  %cmp3 = icmp ne i64* %4, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %p5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 2
  %6 = load i64*, i64** %p5, align 8
  %cmp6 = icmp ne i64* %6, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %7, i64 noundef 0) #3
  %cmp7 = icmp sle i32 %call, 0
  br i1 %cmp7, label %if.then20, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call9 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %8, i64 noundef 1) #3
  %cmp10 = icmp sle i32 %call9, 0
  br i1 %cmp10, label %if.then20, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call12 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %10) #3
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call15 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %11, i64 noundef 1) #3
  %cmp16 = icmp sle i32 %call15, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call18 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %12, %struct.mbedtls_mpi* noundef %13) #3
  %cmp19 = icmp sge i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %if.end
  store i32 -4, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false17
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #3
  br label %do.body

do.body:                                          ; preds = %if.end21
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call22 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %14, %struct.mbedtls_mpi* noundef %15) #3
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body
  br label %cleanup

if.end25:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end25
  br label %do.body26

do.body26:                                        ; preds = %do.end
  %call27 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, i64 noundef 1) #3
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body26
  br label %cleanup

if.end30:                                         ; preds = %do.body26
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  %call32 = call i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef %T) #3
  %conv = trunc i64 %call32 to i16
  store i16 %conv, i16* %order, align 2
  %conv33 = zext i16 %conv to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.end31
  store i32 -4, i32* %ret, align 4
  br label %cleanup

if.end37:                                         ; preds = %do.end31
  br label %do.body38

do.body38:                                        ; preds = %if.end37
  %16 = load i16, i16* %order, align 2
  %conv39 = zext i16 %16 to i64
  %call40 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %T, i64 noundef %conv39) #3
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body38
  br label %cleanup

if.end44:                                         ; preds = %do.body38
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  store i16 0, i16* %attempt, align 2
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %p46 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i32 0, i32 2
  %18 = load i64*, i64** %p46, align 8
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx, align 8
  %rem = urem i64 %19, 8
  %cmp47 = icmp eq i64 %rem, 1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.end45
  store i16 1, i16* %attempt, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.end45
  br label %for.cond

for.cond:                                         ; preds = %for.inc142, %if.end50
  %20 = load i16, i16* %attempt, align 2
  %conv51 = zext i16 %20 to i64
  %cmp52 = icmp ult i64 %conv51, 54
  br i1 %cmp52, label %for.body, label %for.end144

for.body:                                         ; preds = %for.cond
  %21 = load i16, i16* %attempt, align 2
  %idxprom = zext i16 %21 to i64
  %arrayidx54 = getelementptr inbounds [54 x i8], [54 x i8]* %primes, i64 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %22 to i64
  %call56 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %K, i64 noundef %conv55) #3
  br label %do.body57

do.body57:                                        ; preds = %for.body
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call58 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %23, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %24) #3
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body57
  br label %cleanup

if.end62:                                         ; preds = %do.body57
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call64 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %25, i64 noundef 1) #3
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.end63
  br label %for.inc142

if.end68:                                         ; preds = %do.end63
  br label %do.body69

do.body69:                                        ; preds = %if.end68
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call70 = call i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %26, %struct.mbedtls_mpi* noundef %27) #3
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body69
  br label %cleanup

if.end74:                                         ; preds = %do.body69
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  store i16 1, i16* %iter, align 2
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc, %do.end75
  %28 = load i16, i16* %iter, align 2
  %conv77 = zext i16 %28 to i32
  %29 = load i16, i16* %order, align 2
  %conv78 = zext i16 %29 to i32
  %cmp79 = icmp sle i32 %conv77, %conv78
  br i1 %cmp79, label %for.body81, label %for.end

for.body81:                                       ; preds = %for.cond76
  %call82 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.body81
  br label %for.end

if.end86:                                         ; preds = %for.body81
  br label %do.body87

do.body87:                                        ; preds = %if.end86
  %call88 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
  store i32 %call88, i32* %ret, align 4
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %do.body87
  br label %cleanup

if.end92:                                         ; preds = %do.body87
  br label %do.end93

do.end93:                                         ; preds = %if.end92
  br label %do.body94

do.body94:                                        ; preds = %do.end93
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call95 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %30, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %31) #3
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %do.body94
  br label %cleanup

if.end99:                                         ; preds = %do.body94
  br label %do.end100

do.end100:                                        ; preds = %if.end99
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call101 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %32, i64 noundef 1) #3
  %cmp102 = icmp eq i32 %call101, 1
  br i1 %cmp102, label %land.lhs.true, label %if.end115

land.lhs.true:                                    ; preds = %do.end100
  %33 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call104 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %33, %struct.mbedtls_mpi* noundef %34) #3
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %if.then107, label %if.end115

if.then107:                                       ; preds = %land.lhs.true
  br label %do.body108

do.body108:                                       ; preds = %if.then107
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call109 = call i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef %35, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %36, %struct.mbedtls_mpi* noundef %37) #3
  store i32 %call109, i32* %ret, align 4
  %cmp110 = icmp ne i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %do.body108
  br label %cleanup

if.end113:                                        ; preds = %do.body108
  br label %do.end114

do.end114:                                        ; preds = %if.end113
  br label %cleanup

if.end115:                                        ; preds = %land.lhs.true, %do.end100
  br label %do.body116

do.body116:                                       ; preds = %if.end115
  %call117 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
  store i32 %call117, i32* %ret, align 4
  %cmp118 = icmp ne i32 %call117, 0
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %do.body116
  br label %cleanup

if.end121:                                        ; preds = %do.body116
  br label %do.end122

do.end122:                                        ; preds = %if.end121
  br label %do.body123

do.body123:                                       ; preds = %do.end122
  %call124 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K) #3
  store i32 %call124, i32* %ret, align 4
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %do.body123
  br label %cleanup

if.end128:                                        ; preds = %do.body123
  br label %do.end129

do.end129:                                        ; preds = %if.end128
  br label %do.body130

do.body130:                                       ; preds = %do.end129
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call131 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %38) #3
  store i32 %call131, i32* %ret, align 4
  %cmp132 = icmp ne i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %do.body130
  br label %cleanup

if.end135:                                        ; preds = %do.body130
  br label %do.end136

do.end136:                                        ; preds = %if.end135
  br label %for.inc

for.inc:                                          ; preds = %do.end136
  %39 = load i16, i16* %iter, align 2
  %inc = add i16 %39, 1
  store i16 %inc, i16* %iter, align 2
  br label %for.cond76, !llvm.loop !4

for.end:                                          ; preds = %if.then85, %for.cond76
  %call137 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
  %cmp138 = icmp ne i32 %call137, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %for.end
  br label %for.end144

if.end141:                                        ; preds = %for.end
  br label %for.inc142

for.inc142:                                       ; preds = %if.end141, %if.then67
  %40 = load i16, i16* %attempt, align 2
  %inc143 = add i16 %40, 1
  store i16 %inc143, i16* %attempt, align 2
  br label %for.cond, !llvm.loop !6

for.end144:                                       ; preds = %if.then140, %for.cond
  store i32 -4, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end144, %if.then134, %if.then127, %if.then120, %do.end114, %if.then112, %if.then98, %if.then91, %if.then73, %if.then61, %if.then43, %if.then36, %if.then29, %if.then24
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #3
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then20, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i64 @mbedtls_mpi_lsb(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_deduce_private_exponent(%struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %E, %struct.mbedtls_mpi* noundef %D) #0 {
entry:
  %retval = alloca i32, align 4
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %E.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %K = alloca %struct.mbedtls_mpi, align 8
  %L = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %E, %struct.mbedtls_mpi** %E.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %cmp = icmp eq %struct.mbedtls_mpi* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %1, i64 noundef 0) #3
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call2 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %2, i64 noundef 1) #3
  %cmp3 = icmp sle i32 %call2, 0
  br i1 %cmp3, label %if.then10, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call5 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %3, i64 noundef 1) #3
  %cmp6 = icmp sle i32 %call5, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call8 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %4, i64 noundef 0) #3
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false4, %if.end
  store i32 -4, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false7
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %L) #3
  br label %do.body

do.body:                                          ; preds = %if.end11
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call12 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %5, i64 noundef 1) #3
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body
  br label %cleanup

if.end15:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end15
  br label %do.body16

do.body16:                                        ; preds = %do.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call17 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %6, i64 noundef 1) #3
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body16
  br label %cleanup

if.end20:                                         ; preds = %do.body16
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call23 = call i32 @mbedtls_mpi_gcd(%struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %L) #3
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body22
  br label %cleanup

if.end26:                                         ; preds = %do.body22
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %call29 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %L) #3
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body28
  br label %cleanup

if.end32:                                         ; preds = %do.body28
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call35 = call i32 @mbedtls_mpi_div_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %8) #3
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body34
  br label %cleanup

if.end38:                                         ; preds = %do.body34
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call41 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %10, %struct.mbedtls_mpi* noundef %K) #3
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body40
  br label %cleanup

if.end44:                                         ; preds = %do.body40
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then43, %if.then37, %if.then31, %if.then25, %if.then19, %if.then14
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %L) #3
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then10, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_deduce_crt(%struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #0 {
entry:
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %DP.addr = alloca %struct.mbedtls_mpi*, align 8
  %DQ.addr = alloca %struct.mbedtls_mpi*, align 8
  %QP.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %K = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store %struct.mbedtls_mpi* %DP, %struct.mbedtls_mpi** %DP.addr, align 8
  store %struct.mbedtls_mpi* %DQ, %struct.mbedtls_mpi** %DQ.addr, align 8
  store %struct.mbedtls_mpi* %QP, %struct.mbedtls_mpi** %QP.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %K) #3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP.addr, align 8
  %cmp = icmp ne %struct.mbedtls_mpi* %0, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %1, i64 noundef 1) #3
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call4 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %K) #3
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body3
  br label %cleanup

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %entry
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ.addr, align 8
  %cmp10 = icmp ne %struct.mbedtls_mpi* %4, null
  br i1 %cmp10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call13 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %5, i64 noundef 1) #3
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call19 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %K) #3
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body18
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end9
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %QP.addr, align 8
  %cmp25 = icmp ne %struct.mbedtls_mpi* %8, null
  br i1 %cmp25, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end24
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %QP.addr, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call28 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %9, %struct.mbedtls_mpi* noundef %10, %struct.mbedtls_mpi* noundef %11) #3
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body27
  br label %cleanup

if.end31:                                         ; preds = %do.body27
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end24
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then30, %if.then21, %if.then15, %if.then6, %if.then2
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #3
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_validate_params(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %E, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %E.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %K = alloca %struct.mbedtls_mpi, align 8
  %L = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store %struct.mbedtls_mpi* %E, %struct.mbedtls_mpi** %E.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %L) #3
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp ne i32 (i8*, i8*, i64)* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp1 = icmp ne %struct.mbedtls_mpi* %1, null
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef %2, i32 noundef 50, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4) #3
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp4 = icmp ne i32 (i8*, i8*, i64)* %5, null
  br i1 %cmp4, label %land.lhs.true5, label %if.end11

land.lhs.true5:                                   ; preds = %if.end
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp6 = icmp ne %struct.mbedtls_mpi* %6, null
  br i1 %cmp6, label %land.lhs.true7, label %if.end11

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %call8 = call i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef %7, i32 noundef 50, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9) #3
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true7
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7, %land.lhs.true5, %if.end
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp12 = icmp ne %struct.mbedtls_mpi* %10, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end28

land.lhs.true13:                                  ; preds = %if.end11
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp14 = icmp ne %struct.mbedtls_mpi* %11, null
  br i1 %cmp14, label %land.lhs.true15, label %if.end28

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %cmp16 = icmp ne %struct.mbedtls_mpi* %12, null
  br i1 %cmp16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %land.lhs.true15
  br label %do.body

do.body:                                          ; preds = %if.then17
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call18 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %13, %struct.mbedtls_mpi* noundef %14) #3
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body
  br label %cleanup

if.end21:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end21
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call22 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %15, i64 noundef 1) #3
  %cmp23 = icmp sle i32 %call22, 0
  br i1 %cmp23, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call24 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %16) #3
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false, %do.end
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true15, %land.lhs.true13, %if.end11
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %cmp29 = icmp ne %struct.mbedtls_mpi* %17, null
  br i1 %cmp29, label %land.lhs.true30, label %if.end48

land.lhs.true30:                                  ; preds = %if.end28
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %cmp31 = icmp ne %struct.mbedtls_mpi* %18, null
  br i1 %cmp31, label %land.lhs.true32, label %if.end48

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %cmp33 = icmp ne %struct.mbedtls_mpi* %19, null
  br i1 %cmp33, label %if.then34, label %if.end48

if.then34:                                        ; preds = %land.lhs.true32
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call35 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %20, i64 noundef 1) #3
  %cmp36 = icmp sle i32 %call35, 0
  br i1 %cmp36, label %if.then46, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.then34
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call38 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %21, i64 noundef 1) #3
  %cmp39 = icmp sle i32 %call38, 0
  br i1 %cmp39, label %if.then46, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call41 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %22, %struct.mbedtls_mpi* noundef %23) #3
  %cmp42 = icmp sge i32 %call41, 0
  br i1 %cmp42, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call44 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %24, %struct.mbedtls_mpi* noundef %25) #3
  %cmp45 = icmp sge i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false43, %lor.lhs.false40, %lor.lhs.false37, %if.then34
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false43
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true32, %land.lhs.true30, %if.end28
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp49 = icmp ne %struct.mbedtls_mpi* %26, null
  br i1 %cmp49, label %land.lhs.true50, label %if.end120

land.lhs.true50:                                  ; preds = %if.end48
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp51 = icmp ne %struct.mbedtls_mpi* %27, null
  br i1 %cmp51, label %land.lhs.true52, label %if.end120

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %cmp53 = icmp ne %struct.mbedtls_mpi* %28, null
  br i1 %cmp53, label %land.lhs.true54, label %if.end120

land.lhs.true54:                                  ; preds = %land.lhs.true52
  %29 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %cmp55 = icmp ne %struct.mbedtls_mpi* %29, null
  br i1 %cmp55, label %if.then56, label %if.end120

if.then56:                                        ; preds = %land.lhs.true54
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call57 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %30, i64 noundef 1) #3
  %cmp58 = icmp sle i32 %call57, 0
  br i1 %cmp58, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.then56
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call60 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %31, i64 noundef 1) #3
  %cmp61 = icmp sle i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %lor.lhs.false59, %if.then56
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false59
  br label %do.body64

do.body64:                                        ; preds = %if.end63
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %33 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call65 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %32, %struct.mbedtls_mpi* noundef %33) #3
  store i32 %call65, i32* %ret, align 4
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body64
  br label %cleanup

if.end68:                                         ; preds = %do.body64
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %do.body70

do.body70:                                        ; preds = %do.end69
  %call71 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
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
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call77 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %34, i64 noundef 1) #3
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
  %call83 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %L) #3
  store i32 %call83, i32* %ret, align 4
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %do.body82
  br label %cleanup

if.end86:                                         ; preds = %do.body82
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  %call88 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %K, i64 noundef 0) #3
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %do.end87
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end91:                                         ; preds = %do.end87
  br label %do.body92

do.body92:                                        ; preds = %if.end91
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %E.addr, align 8
  %call93 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %35, %struct.mbedtls_mpi* noundef %36) #3
  store i32 %call93, i32* %ret, align 4
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %do.body92
  br label %cleanup

if.end96:                                         ; preds = %do.body92
  br label %do.end97

do.end97:                                         ; preds = %if.end96
  br label %do.body98

do.body98:                                        ; preds = %do.end97
  %call99 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
  store i32 %call99, i32* %ret, align 4
  %cmp100 = icmp ne i32 %call99, 0
  br i1 %cmp100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %do.body98
  br label %cleanup

if.end102:                                        ; preds = %do.body98
  br label %do.end103

do.end103:                                        ; preds = %if.end102
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call105 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %37, i64 noundef 1) #3
  store i32 %call105, i32* %ret, align 4
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %do.body104
  br label %cleanup

if.end108:                                        ; preds = %do.body104
  br label %do.end109

do.end109:                                        ; preds = %if.end108
  br label %do.body110

do.body110:                                       ; preds = %do.end109
  %call111 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %L) #3
  store i32 %call111, i32* %ret, align 4
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %do.body110
  br label %cleanup

if.end114:                                        ; preds = %do.body110
  br label %do.end115

do.end115:                                        ; preds = %if.end114
  %call116 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %K, i64 noundef 0) #3
  %cmp117 = icmp ne i32 %call116, 0
  br i1 %cmp117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %do.end115
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end119:                                        ; preds = %do.end115
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %land.lhs.true54, %land.lhs.true52, %land.lhs.true50, %if.end48
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then118, %if.then113, %if.then107, %if.then101, %if.then95, %if.then90, %if.then85, %if.then79, %if.then73, %if.then67, %if.then62, %if.then46, %if.then26, %if.then20, %if.then10, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %L) #3
  %38 = load i32, i32* %ret, align 4
  %cmp121 = icmp ne i32 %38, 0
  br i1 %cmp121, label %land.lhs.true122, label %if.end125

land.lhs.true122:                                 ; preds = %cleanup
  %39 = load i32, i32* %ret, align 4
  %cmp123 = icmp ne i32 %39, -16896
  br i1 %cmp123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %land.lhs.true122
  %40 = load i32, i32* %ret, align 4
  %add = add nsw i32 %40, -16896
  store i32 %add, i32* %ret, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %land.lhs.true122, %cleanup
  %41 = load i32, i32* %ret, align 4
  ret i32 %41
}

declare dso_local i32 @mbedtls_mpi_is_prime_ext(%struct.mbedtls_mpi* noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_rsa_validate_crt(%struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Q, %struct.mbedtls_mpi* noundef %D, %struct.mbedtls_mpi* noundef %DP, %struct.mbedtls_mpi* noundef %DQ, %struct.mbedtls_mpi* noundef %QP) #0 {
entry:
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_mpi*, align 8
  %D.addr = alloca %struct.mbedtls_mpi*, align 8
  %DP.addr = alloca %struct.mbedtls_mpi*, align 8
  %DQ.addr = alloca %struct.mbedtls_mpi*, align 8
  %QP.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %K = alloca %struct.mbedtls_mpi, align 8
  %L = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store %struct.mbedtls_mpi* %Q, %struct.mbedtls_mpi** %Q.addr, align 8
  store %struct.mbedtls_mpi* %D, %struct.mbedtls_mpi** %D.addr, align 8
  store %struct.mbedtls_mpi* %DP, %struct.mbedtls_mpi** %DP.addr, align 8
  store %struct.mbedtls_mpi* %DQ, %struct.mbedtls_mpi** %DQ.addr, align 8
  store %struct.mbedtls_mpi* %QP, %struct.mbedtls_mpi** %QP.addr, align 8
  store i32 0, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %L) #3
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP.addr, align 8
  %cmp = icmp ne %struct.mbedtls_mpi* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_mpi* %1, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -16512, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %2, i64 noundef 1) #3
  store i32 %call, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  br label %cleanup

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DP.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call7 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %4) #3
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body6
  br label %cleanup

if.end10:                                         ; preds = %do.body6
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %call13 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %K) #3
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  %call18 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %L, i64 noundef 0) #3
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end17
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end21:                                         ; preds = %do.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ.addr, align 8
  %cmp23 = icmp ne %struct.mbedtls_mpi* %5, null
  br i1 %cmp23, label %if.then24, label %if.end50

if.then24:                                        ; preds = %if.end22
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp25 = icmp eq %struct.mbedtls_mpi* %6, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then24
  store i32 -16512, i32* %ret, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.then24
  br label %do.body28

do.body28:                                        ; preds = %if.end27
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call29 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %7, i64 noundef 1) #3
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body28
  br label %cleanup

if.end32:                                         ; preds = %do.body28
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %DQ.addr, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %D.addr, align 8
  %call35 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %9) #3
  store i32 %call35, i32* %ret, align 4
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.body34
  br label %cleanup

if.end38:                                         ; preds = %do.body34
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %call41 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %L, %struct.mbedtls_mpi* noundef %K) #3
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body40
  br label %cleanup

if.end44:                                         ; preds = %do.body40
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  %call46 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %L, i64 noundef 0) #3
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.end45
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end49:                                         ; preds = %do.end45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end22
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %QP.addr, align 8
  %cmp51 = icmp ne %struct.mbedtls_mpi* %10, null
  br i1 %cmp51, label %if.then52, label %if.end79

if.then52:                                        ; preds = %if.end50
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %cmp53 = icmp eq %struct.mbedtls_mpi* %11, null
  br i1 %cmp53, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then52
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %cmp54 = icmp eq %struct.mbedtls_mpi* %12, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false, %if.then52
  store i32 -16512, i32* %ret, align 4
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  br label %do.body57

do.body57:                                        ; preds = %if.end56
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %QP.addr, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Q.addr, align 8
  %call58 = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %13, %struct.mbedtls_mpi* noundef %14) #3
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
  %call64 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, i64 noundef 1) #3
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
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call70 = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %K, %struct.mbedtls_mpi* noundef %15) #3
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %do.body69
  br label %cleanup

if.end73:                                         ; preds = %do.body69
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  %call75 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %K, i64 noundef 0) #3
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %do.end74
  store i32 -16896, i32* %ret, align 4
  br label %cleanup

if.end78:                                         ; preds = %do.end74
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end50
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then77, %if.then72, %if.then66, %if.then60, %if.then55, %if.then48, %if.then43, %if.then37, %if.then31, %if.then26, %if.then20, %if.then15, %if.then9, %if.then4, %if.then2
  %16 = load i32, i32* %ret, align 4
  %cmp80 = icmp ne i32 %16, 0
  br i1 %cmp80, label %land.lhs.true, label %if.end85

land.lhs.true:                                    ; preds = %cleanup
  %17 = load i32, i32* %ret, align 4
  %cmp81 = icmp ne i32 %17, -16896
  br i1 %cmp81, label %land.lhs.true82, label %if.end85

land.lhs.true82:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %ret, align 4
  %cmp83 = icmp ne i32 %18, -16512
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %land.lhs.true82
  %19 = load i32, i32* %ret, align 4
  %add = add nsw i32 %19, -16896
  store i32 %add, i32* %ret, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %land.lhs.true82, %land.lhs.true, %cleanup
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %K) #3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %L) #3
  %20 = load i32, i32* %ret, align 4
  ret i32 %20
}

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
