; ModuleID = 'ecp.c'
source_filename = "ecp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }

@ecp_supported_curves = internal constant [14 x %struct.mbedtls_ecp_curve_info] [%struct.mbedtls_ecp_curve_info { i32 5, i16 25, i16 521, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 8, i16 28, i16 512, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 4, i16 24, i16 384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 7, i16 27, i16 384, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 3, i16 23, i16 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 12, i16 22, i16 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 6, i16 26, i16 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 2, i16 21, i16 224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 11, i16 20, i16 224, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 1, i16 19, i16 192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 10, i16 18, i16 192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 9, i16 29, i16 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info { i32 13, i16 30, i16 448, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0) }, %struct.mbedtls_ecp_curve_info zeroinitializer], align 16
@mbedtls_ecp_grp_id_list.init_done = internal global i32 0, align 4
@ecp_supported_grp_id = internal global [14 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [49 x i8] c"000000000000000000000000000000000000000000000001\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8C\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"5EA6F389A38B8BC81E767753B15AA5569E1782E30ABE7D25\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"400000000000000000000000000000000000000000000000\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"555555555555555555555555555555555555555555555555\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"4000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C30\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"5715ECCE24583F7A7023C24164390586842E816D7280A49EF6DF4EAE6B280BF8\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"41A2B017516F6D254E1F002BCCBADD54BE30F8CEC737A0E912B4963B6BA74460\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"5555555555555555555555555555555555555555555555555555555555555550\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"  ECP SW test #1 (constant op_count, base point G): \00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"  ECP SW test #2 (constant op_count, other point): \00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"  ECP Montgomery test (constant op_count): \00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Unexpected error, return code = %08X\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"secp521r1\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"brainpoolP512r1\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"secp384r1\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"brainpoolP384r1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"secp256r1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"secp256k1\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"brainpoolP256r1\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"secp224r1\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"secp224k1\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"secp192r1\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"secp192k1\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"x25519\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"x448\00", align 1
@mul_count = internal global i64 0, align 8
@dbl_count = internal global i64 0, align 8
@add_count = internal global i64 0, align 8
@ecp_x25519_bad_point_1 = internal constant %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @x25519_bad_point_1, i32 0, i32 0) }, align 8
@ecp_x25519_bad_point_2 = internal constant %struct.mbedtls_mpi { i32 1, i64 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @x25519_bad_point_2, i32 0, i32 0) }, align 8
@x25519_bad_point_1 = internal constant [4 x i64] [i64 -5856859591648023584, i64 7693449925100787222, i64 -166296061687821862, i64 51872068454933126], align 16
@x25519_bad_point_2 = internal constant [4 x i64] [i64 2633568546278710367, i64 6624658284361142449, i64 -8751025858357214204, i64 6273971475318711000], align 16
@self_test_rng.state = internal global i32 42, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"failed (%u)\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #0 {
entry:
  ret %struct.mbedtls_ecp_curve_info* getelementptr inbounds ([14 x %struct.mbedtls_ecp_curve_info], [14 x %struct.mbedtls_ecp_curve_info]* @ecp_supported_curves, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbedtls_ecp_grp_id_list() #0 {
entry:
  %i = alloca i64, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %0 = load i32, i32* @mbedtls_ecp_grp_id_list.init_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %i, align 8
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #5
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %1, i32 0, i32 0
  %2 = load i32, i32* %grp_id, align 8
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %3, i32 0, i32 0
  %4 = load i32, i32* %grp_id1, align 8
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx = getelementptr inbounds [14 x i32], [14 x i32]* @ecp_supported_grp_id, i64 0, i64 %5
  store i32 %4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %6, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [14 x i32], [14 x i32]* @ecp_supported_grp_id, i64 0, i64 %7
  store i32 0, i32* %arrayidx2, align 4
  store i32 1, i32* @mbedtls_ecp_grp_id_list.init_done, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret i32* getelementptr inbounds ([14 x i32], [14 x i32]* @ecp_supported_grp_id, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %grp_id) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %grp_id.addr = alloca i32, align 4
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store i32 %grp_id, i32* %grp_id.addr, align 4
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #5
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id1 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %0, i32 0, i32 0
  %1 = load i32, i32* %grp_id1, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id2 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %2, i32 0, i32 0
  %3 = load i32, i32* %grp_id2, align 8
  %4 = load i32, i32* %grp_id.addr, align 4
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  store %struct.mbedtls_ecp_curve_info* %5, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %6, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_ecp_curve_info* null, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %retval, align 8
  ret %struct.mbedtls_ecp_curve_info* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_tls_id(i16 noundef zeroext %tls_id) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %tls_id.addr = alloca i16, align 2
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store i16 %tls_id, i16* %tls_id.addr, align 2
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #5
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %0, i32 0, i32 0
  %1 = load i32, i32* %grp_id, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %tls_id1 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %2, i32 0, i32 1
  %3 = load i16, i16* %tls_id1, align 4
  %conv = zext i16 %3 to i32
  %4 = load i16, i16* %tls_id.addr, align 2
  %conv2 = zext i16 %4 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  store %struct.mbedtls_ecp_curve_info* %5, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %6, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_ecp_curve_info* null, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %retval, align 8
  ret %struct.mbedtls_ecp_curve_info* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_name(i8* noundef %name) #0 {
entry:
  %retval = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %name.addr = alloca i8*, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.mbedtls_ecp_curve_info* null, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_list() #5
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %1, i32 0, i32 0
  %2 = load i32, i32* %grp_id, align 8
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %name2 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %3, i32 0, i32 3
  %4 = load i8*, i8** %name2, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call3 = call i32 @strcmp(i8* noundef %4, i8* noundef %5) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %6 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  store %struct.mbedtls_ecp_curve_info* %6, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

if.end6:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %7 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %7, i32 1
  store %struct.mbedtls_ecp_curve_info* %incdec.ptr, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store %struct.mbedtls_ecp_curve_info* null, %struct.mbedtls_ecp_curve_info** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %8 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %retval, align 8
  ret %struct.mbedtls_ecp_curve_info* %8
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 4
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G, i32 0, i32 0
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %X, i32 0, i32 2
  %1 = load i64*, i64** %p, align 8
  %cmp = icmp eq i64* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G1 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 4
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G1, i32 0, i32 1
  %p2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Y, i32 0, i32 2
  %3 = load i64*, i64** %p2, align 8
  %cmp3 = icmp eq i64* %3, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %X) #5
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 1
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Y) #5
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 2
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %Z) #5
  ret void
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 0
  store i32 0, i32* %id, align 8
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 1
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %P) #5
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 2
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %A) #5
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %B = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 3
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %B) #5
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %G) #5
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %N) #5
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 6
  store i64 0, i64* %pbits, align 8
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 7
  store i64 0, i64* %nbits, align 8
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %h = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %8, i32 0, i32 8
  store i32 0, i32* %h, align 8
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 9
  store i32 (%struct.mbedtls_mpi*)* null, i32 (%struct.mbedtls_mpi*)** %modp, align 8
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %t_pre = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %10, i32 0, i32 10
  store i32 (%struct.mbedtls_ecp_point*, i8*)* null, i32 (%struct.mbedtls_ecp_point*, i8*)** %t_pre, align 8
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %t_post = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %11, i32 0, i32 11
  store i32 (%struct.mbedtls_ecp_point*, i8*)* null, i32 (%struct.mbedtls_ecp_point*, i8*)** %t_post, align 8
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %t_data = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 12
  store i8* null, i8** %t_data, align 8
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %13, i32 0, i32 13
  store %struct.mbedtls_ecp_point* null, %struct.mbedtls_ecp_point** %T, align 8
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T_size = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 14
  store i64 0, i64* %T_size, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef %key) #0 {
entry:
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #5
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 1
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %d) #5
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 2
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Q) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecp_point* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 0
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %X) #5
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #5
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 2
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Z) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %i = alloca i64, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecp_group* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %h = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 8
  %2 = load i32, i32* %h, align 8
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %P) #5
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 2
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %A) #5
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %B = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %B) #5
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 4
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %G) #5
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %N) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call = call i32 @ecp_group_is_static_comb_table(%struct.mbedtls_ecp_group* noundef %8) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 13
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %cmp4 = icmp ne %struct.mbedtls_ecp_point* %10, null
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T_size = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 14
  %13 = load i64, i64* %T_size, align 8
  %cmp6 = icmp ult i64 %11, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T7 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 13
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T7, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %15, i64 %16
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %arrayidx) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %18 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T8 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %18, i32 0, i32 13
  %19 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T8, align 8
  %20 = bitcast %struct.mbedtls_ecp_point* %19 to i8*
  call void @free(i8* noundef %20) #7
  br label %if.end9

if.end9:                                          ; preds = %for.end, %land.lhs.true, %if.end3
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %22 = bitcast %struct.mbedtls_ecp_group* %21 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %22, i64 noundef 248) #5
  br label %return

return:                                           ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_group_is_static_comb_table(%struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 13
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %cmp = icmp ne %struct.mbedtls_ecp_point* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T_size = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 14
  %3 = load i64, i64* %T_size, align 8
  %cmp1 = icmp eq i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %key) #0 {
entry:
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %cmp = icmp eq %struct.mbedtls_ecp_keypair* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 0
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #5
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %d) #5
  %3 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %3, i32 0, i32 2
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Q) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_ecp_point* noundef %Q) #0 {
entry:
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %X4 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X4) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body3
  br label %cleanup

if.end:                                           ; preds = %do.body3
  br label %do.end5

do.end5:                                          ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %do.end5
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Y7 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 1
  %call8 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y7) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body6
  br label %cleanup

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 2
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z14 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 2
  %call15 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z14) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.body13
  br label %cleanup

if.end18:                                         ; preds = %do.body13
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.then17, %if.then10, %if.then
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef %dst, %struct.mbedtls_ecp_group* noundef %src) #0 {
entry:
  %dst.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %src.addr = alloca %struct.mbedtls_ecp_group*, align 8
  store %struct.mbedtls_ecp_group* %dst, %struct.mbedtls_ecp_group** %dst.addr, align 8
  store %struct.mbedtls_ecp_group* %src, %struct.mbedtls_ecp_group** %src.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %dst.addr, align 8
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %src.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %call = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %0, i32 noundef %2) #5
  ret i32 %call
}

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_set_zero(%struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %X, i64 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body1
  br label %cleanup

if.end:                                           ; preds = %do.body1
  br label %do.end2

do.end2:                                          ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end2
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 1
  %call4 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Y, i64 noundef 1) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body3
  br label %cleanup

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 2
  %call10 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 0) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body9
  br label %cleanup

if.end13:                                         ; preds = %do.body9
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then12, %if.then6, %if.then
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

declare dso_local i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_point_cmp(%struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_ecp_point* noundef %Q) #0 {
entry:
  %retval = alloca i32, align 4
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %X3 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X3) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end2
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 1
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Y4 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 1
  %call5 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y4) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 2
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z8 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 2
  %call9 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z8) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true7
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true, %do.end2
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_point_read_string(%struct.mbedtls_ecp_point* noundef %P, i32 noundef %radix, i8* noundef %x, i8* noundef %y) #0 {
entry:
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %radix.addr = alloca i32, align 4
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 %radix, i32* %radix.addr, align 4
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  %1 = load i32, i32* %radix.addr, align 4
  %2 = load i8*, i8** %x.addr, align 8
  %call = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %X, i32 noundef %1, i8* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body5
  br label %cleanup

if.end:                                           ; preds = %do.body5
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 1
  %4 = load i32, i32* %radix.addr, align 4
  %5 = load i8*, i8** %y.addr, align 8
  %call8 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %Y, i32 noundef %4, i8* noundef %5) #5
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
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %6, i32 0, i32 2
  %call14 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then16, %if.then10, %if.then
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %P, i32 noundef %format, i64* noundef %olen, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %format.addr = alloca i32, align 4
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %plen = alloca i64, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -20096, i32* %ret, align 4
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P9 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 1
  %call = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P9) #5
  store i64 %call, i64* %plen, align 8
  %1 = load i32, i32* %format.addr, align 4
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call10 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %2) #5
  %cmp = icmp eq i32 %call10, 2
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %do.end8
  %3 = load i64, i64* %plen, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* %buflen.addr, align 8
  %6 = load i64*, i64** %olen.addr, align 8
  %7 = load i64, i64* %6, align 8
  %cmp11 = icmp ult i64 %5, %7
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.body13

do.body13:                                        ; preds = %if.end
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 0
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i64, i64* %plen, align 8
  %call14 = call i32 @mbedtls_mpi_write_binary_le(%struct.mbedtls_mpi* noundef %X, i8* noundef %9, i64 noundef %10) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.end8
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call20 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %11) #5
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end72

if.then22:                                        ; preds = %if.end19
  %12 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %12, i32 0, i32 2
  %call23 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z, i64 noundef 0) #5
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.then22
  %13 = load i64, i64* %buflen.addr, align 8
  %cmp26 = icmp ult i64 %13, 1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then25
  %14 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %arrayidx, align 1
  %15 = load i64*, i64** %olen.addr, align 8
  store i64 1, i64* %15, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.then22
  %16 = load i32, i32* %format.addr, align 4
  %cmp30 = icmp eq i32 %16, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %17 = load i64, i64* %plen, align 8
  %mul = mul i64 2, %17
  %add = add i64 %mul, 1
  %18 = load i64*, i64** %olen.addr, align 8
  store i64 %add, i64* %18, align 8
  %19 = load i64, i64* %buflen.addr, align 8
  %20 = load i64*, i64** %olen.addr, align 8
  %21 = load i64, i64* %20, align 8
  %cmp32 = icmp ult i64 %19, %21
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then31
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then31
  %22 = load i8*, i8** %buf.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 4, i8* %arrayidx35, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.end34
  %23 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X37 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i64, i64* %plen, align 8
  %call38 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %X37, i8* noundef %add.ptr, i64 noundef %25) #5
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
  %26 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %26, i32 0, i32 1
  %27 = load i8*, i8** %buf.addr, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i64, i64* %plen, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 %28
  %29 = load i64, i64* %plen, align 8
  %call46 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %Y, i8* noundef %add.ptr45, i64 noundef %29) #5
  store i32 %call46, i32* %ret, align 4
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body43
  br label %cleanup

if.end49:                                         ; preds = %do.body43
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %if.end71

if.else:                                          ; preds = %if.end29
  %30 = load i32, i32* %format.addr, align 4
  %cmp51 = icmp eq i32 %30, 1
  br i1 %cmp51, label %if.then52, label %if.end70

if.then52:                                        ; preds = %if.else
  %31 = load i64, i64* %plen, align 8
  %add53 = add i64 %31, 1
  %32 = load i64*, i64** %olen.addr, align 8
  store i64 %add53, i64* %32, align 8
  %33 = load i64, i64* %buflen.addr, align 8
  %34 = load i64*, i64** %olen.addr, align 8
  %35 = load i64, i64* %34, align 8
  %cmp54 = icmp ult i64 %33, %35
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then52
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.then52
  %36 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y57 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %36, i32 0, i32 1
  %call58 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %Y57, i64 noundef 0) #5
  %add59 = add nsw i32 2, %call58
  %conv = trunc i32 %add59 to i8
  %37 = load i8*, i8** %buf.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %conv, i8* %arrayidx60, align 1
  br label %do.body61

do.body61:                                        ; preds = %if.end56
  %38 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X62 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %38, i32 0, i32 0
  %39 = load i8*, i8** %buf.addr, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i64, i64* %plen, align 8
  %call64 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %X62, i8* noundef %add.ptr63, i64 noundef %40) #5
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body61
  br label %cleanup

if.end68:                                         ; preds = %do.body61
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.else
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %do.end50
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end19
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then67, %if.then48, %if.then40, %if.then16
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then55, %if.then33, %if.end28, %if.then27, %if.then12
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary_le(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt, i8* noundef %buf, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %buf.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %plen = alloca i64, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i32 -20096, i32* %ret, align 4
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
  %0 = load i64, i64* %ilen.addr, align 8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 1
  %call = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %P) #5
  store i64 %call, i64* %plen, align 8
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call5 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %2) #5
  %cmp6 = icmp eq i32 %call5, 2
  br i1 %cmp6, label %if.then7, label %if.end33

if.then7:                                         ; preds = %if.end
  %3 = load i64, i64* %plen, align 8
  %4 = load i64, i64* %ilen.addr, align 8
  %cmp8 = icmp ne i64 %3, %4
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then7
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 0
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %plen, align 8
  %call12 = call i32 @mbedtls_mpi_read_binary_le(%struct.mbedtls_mpi* noundef %X, i8* noundef %6, i64 noundef %7) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body11
  br label %cleanup

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #5
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 0
  %10 = load i32, i32* %id, align 8
  %cmp17 = icmp eq i32 %10, 9
  br i1 %cmp17, label %if.then18, label %if.end26

if.then18:                                        ; preds = %do.end16
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X20 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %11, i32 0, i32 0
  %12 = load i64, i64* %plen, align 8
  %mul = mul i64 %12, 8
  %sub = sub i64 %mul, 1
  %call21 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %X20, i64 noundef %sub, i8 noundef zeroext 0) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body19
  br label %cleanup

if.end24:                                         ; preds = %do.body19
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.end16
  br label %do.body27

do.body27:                                        ; preds = %if.end26
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %13, i32 0, i32 2
  %call28 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body27
  br label %cleanup

if.end31:                                         ; preds = %do.body27
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call34 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %14) #5
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %if.then36, label %if.end82

if.then36:                                        ; preds = %if.end33
  %15 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %cmp37 = icmp eq i32 %conv, 0
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.then36
  %17 = load i64, i64* %ilen.addr, align 8
  %cmp40 = icmp eq i64 %17, 1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then39
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %call43 = call i32 @mbedtls_ecp_set_zero(%struct.mbedtls_ecp_point* noundef %18) #5
  store i32 %call43, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then39
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then36
  %19 = load i8*, i8** %buf.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %20 to i32
  %cmp47 = icmp ne i32 %conv46, 4
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end44
  store i32 -20096, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end44
  %21 = load i64, i64* %ilen.addr, align 8
  %22 = load i64, i64* %plen, align 8
  %mul51 = mul i64 2, %22
  %add = add i64 %mul51, 1
  %cmp52 = icmp ne i64 %21, %add
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end50
  br label %do.body56

do.body56:                                        ; preds = %if.end55
  %23 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X57 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %23, i32 0, i32 0
  %24 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i64, i64* %plen, align 8
  %call58 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %X57, i8* noundef %add.ptr, i64 noundef %25) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body56
  br label %cleanup

if.end62:                                         ; preds = %do.body56
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %do.body64

do.body64:                                        ; preds = %do.end63
  %26 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y65 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %26, i32 0, i32 1
  %27 = load i8*, i8** %buf.addr, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i64, i64* %plen, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr66, i64 %28
  %29 = load i64, i64* %plen, align 8
  %call68 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %Y65, i8* noundef %add.ptr67, i64 noundef %29) #5
  store i32 %call68, i32* %ret, align 4
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %do.body64
  br label %cleanup

if.end72:                                         ; preds = %do.body64
  br label %do.end73

do.end73:                                         ; preds = %if.end72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %30 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z75 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %30, i32 0, i32 2
  %call76 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z75, i64 noundef 1) #5
  store i32 %call76, i32* %ret, align 4
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body74
  br label %cleanup

if.end80:                                         ; preds = %do.body74
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.end33
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then79, %if.then71, %if.then61, %if.then30, %if.then23, %if.then14
  %31 = load i32, i32* %ret, align 4
  store i32 %31, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then54, %if.then49, %if.else, %if.then42, %if.then9, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare dso_local i32 @mbedtls_mpi_read_binary_le(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef, i64 noundef, i8 noundef zeroext) #2

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_read_point(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt, i8** noundef %buf, i64 noundef %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %buf.addr = alloca i8**, align 8
  %buf_len.addr = alloca i64, align 8
  %data_len = alloca i8, align 1
  %buf_start = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64 %buf_len, i64* %buf_len.addr, align 8
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
  %0 = load i64, i64* %buf_len.addr, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %1 = load i8**, i8*** %buf.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %data_len, align 1
  %4 = load i8, i8* %data_len, align 1
  %conv = zext i8 %4 to i32
  %cmp7 = icmp slt i32 %conv, 1
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8, i8* %data_len, align 1
  %conv9 = zext i8 %5 to i64
  %6 = load i64, i64* %buf_len.addr, align 8
  %sub = sub i64 %6, 1
  %cmp10 = icmp ugt i64 %conv9, %sub
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %7 = load i8**, i8*** %buf.addr, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %buf_start, align 8
  %9 = load i8, i8* %data_len, align 1
  %conv14 = zext i8 %9 to i32
  %10 = load i8**, i8*** %buf.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %idx.ext = sext i32 %conv14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %10, align 8
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %14 = load i8*, i8** %buf_start, align 8
  %15 = load i8, i8* %data_len, align 1
  %conv15 = zext i8 %15 to i64
  %call = call i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef %12, %struct.mbedtls_ecp_point* noundef %13, i8* noundef %14, i64 noundef %conv15) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_write_point(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt, i32 noundef %format, i64* noundef %olen, i8* noundef %buf, i64 noundef %blen) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %format.addr = alloca i32, align 4
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  store i32 %format, i32* %format.addr, align 4
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
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
  %0 = load i64, i64* %blen.addr, align 8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end8
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end8
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %3 = load i32, i32* %format.addr, align 4
  %4 = load i64*, i64** %olen.addr, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i64, i64* %blen.addr, align 8
  %sub = sub i64 %6, 1
  %call = call i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef %1, %struct.mbedtls_ecp_point* noundef %2, i32 noundef %3, i64* noundef %4, i8* noundef %add.ptr, i64 noundef %sub) #5
  store i32 %call, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  %8 = load i64*, i64** %olen.addr, align 8
  %9 = load i64, i64* %8, align 8
  %conv = trunc i64 %9 to i8
  %10 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %conv, i8* %arrayidx, align 1
  %11 = load i64*, i64** %olen.addr, align 8
  %12 = load i64, i64* %11, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %11, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_read_group(%struct.mbedtls_ecp_group* noundef %grp, i8** noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %buf.addr = alloca i8**, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %grp_id = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
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
  %0 = load i8**, i8*** %buf.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %call = call i32 @mbedtls_ecp_tls_read_group_id(i32* noundef %grp_id, i8** noundef %0, i64 noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load i32, i32* %grp_id, align 4
  %call5 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %3, i32 noundef %4) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_read_group_id(i32* noundef %grp, i8** noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca i32*, align 8
  %buf.addr = alloca i8**, align 8
  %len.addr = alloca i64, align 8
  %tls_id = alloca i16, align 2
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store i32* %grp, i32** %grp.addr, align 8
  store i8** %buf, i8*** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
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
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %1 = load i8**, i8*** %buf.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv, 3
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %4 = load i8**, i8*** %buf.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr9, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv10 = zext i8 %6 to i16
  store i16 %conv10, i16* %tls_id, align 2
  %7 = load i16, i16* %tls_id, align 2
  %conv11 = zext i16 %7 to i32
  %shl = shl i32 %conv11, 8
  %conv12 = trunc i32 %shl to i16
  store i16 %conv12, i16* %tls_id, align 2
  %8 = load i8**, i8*** %buf.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr13, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %conv14 = zext i8 %10 to i32
  %11 = load i16, i16* %tls_id, align 2
  %conv15 = zext i16 %11 to i32
  %or = or i32 %conv15, %conv14
  %conv16 = trunc i32 %or to i16
  store i16 %conv16, i16* %tls_id, align 2
  %12 = load i16, i16* %tls_id, align 2
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_tls_id(i16 noundef zeroext %12) #5
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp17 = icmp eq %struct.mbedtls_ecp_curve_info* %call, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end8
  store i32 -20096, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end8
  %13 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %grp_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %13, i32 0, i32 0
  %14 = load i32, i32* %grp_id, align 8
  %15 = load i32*, i32** %grp.addr, align 8
  store i32 %14, i32* %15, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then7, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_tls_write_group(%struct.mbedtls_ecp_group* noundef %grp, i64* noundef %olen, i8* noundef %buf, i64 noundef %blen) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %olen.addr = alloca i64*, align 8
  %buf.addr = alloca i8*, align 8
  %blen.addr = alloca i64, align 8
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %blen, i64* %blen.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %call = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %1) #5
  store %struct.mbedtls_ecp_curve_info* %call, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp = icmp eq %struct.mbedtls_ecp_curve_info* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %2 = load i64*, i64** %olen.addr, align 8
  store i64 3, i64* %2, align 8
  %3 = load i64, i64* %blen.addr, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  %5 = load i64, i64* %4, align 8
  %cmp5 = icmp ult i64 %3, %5
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %6 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  store i8 3, i8* %6, align 1
  %7 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %tls_id = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %7, i32 0, i32 1
  %8 = load i16, i16* %tls_id, align 4
  %conv = zext i16 %8 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %conv8 = trunc i32 %and to i8
  %9 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv8, i8* %arrayidx, align 1
  %10 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %tls_id9 = getelementptr inbounds %struct.mbedtls_ecp_curve_info, %struct.mbedtls_ecp_curve_info* %10, i32 0, i32 1
  %11 = load i16, i16* %tls_id9, align 4
  %conv10 = zext i16 %11 to i32
  %and11 = and i32 %conv10, 255
  %conv12 = trunc i32 %and11 to i8
  %12 = load i8*, i8** %buf.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %conv12, i8* %arrayidx13, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
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
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end6
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %6 = load i8*, i8** %p_rng.addr, align 8
  %7 = load i8*, i8** %rs_ctx.addr, align 8
  %call = call i32 @ecp_mul_restartable_internal(%struct.mbedtls_ecp_group* noundef %1, %struct.mbedtls_ecp_point* noundef %2, %struct.mbedtls_mpi* noundef %3, %struct.mbedtls_ecp_point* noundef %4, i32 (i8*, i8*, i64)* noundef %5, i8* noundef %6, i8* noundef %7) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_restartable_internal(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -20352, i32* %ret, align 4
  %0 = load i8*, i8** %rs_ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call = call i32 @mbedtls_ecp_check_privkey(%struct.mbedtls_ecp_group* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
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
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call2 = call i32 @mbedtls_ecp_check_pubkey(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_ecp_point* noundef %4) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.end6

do.end6:                                          ; preds = %if.end5
  store i32 -20352, i32* %ret, align 4
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call7 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %5) #5
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %do.end6
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %call11 = call i32 @ecp_mul_mxz(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_ecp_point* noundef %7, %struct.mbedtls_mpi* noundef %8, %struct.mbedtls_ecp_point* noundef %9, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body10
  br label %cleanup

if.end14:                                         ; preds = %do.body10
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.end6
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call17 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %12) #5
  %cmp18 = icmp eq i32 %call17, 1
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end16
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %16 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %18 = load i8*, i8** %p_rng.addr, align 8
  %19 = load i8*, i8** %rs_ctx.addr, align 8
  %call21 = call i32 @ecp_mul_comb(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_ecp_point* noundef %14, %struct.mbedtls_mpi* noundef %15, %struct.mbedtls_ecp_point* noundef %16, i32 (i8*, i8*, i64)* noundef %17, i8* noundef %18, i8* noundef %19) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body20
  br label %cleanup

if.end24:                                         ; preds = %do.body20
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.end16
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23, %if.then13, %if.then4, %if.then
  %20 = load i32, i32* %ret, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %5 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_mul_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_ecp_point* noundef %1, %struct.mbedtls_mpi* noundef %2, %struct.mbedtls_ecp_point* noundef %3, i32 (i8*, i8*, i64)* noundef %4, i8* noundef %5, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_muladd_restartable(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_mpi* noundef %n, %struct.mbedtls_ecp_point* noundef %Q, i8* noundef %rs_ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %n.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %mP = alloca %struct.mbedtls_ecp_point, align 8
  %pmP = alloca %struct.mbedtls_ecp_point*, align 8
  %pR = alloca %struct.mbedtls_ecp_point*, align 8
  %tmp = alloca [4 x %struct.mbedtls_mpi], align 16
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_mpi* %n, %struct.mbedtls_mpi** %n.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store %struct.mbedtls_ecp_point* %mP, %struct.mbedtls_ecp_point** %pmP, align 8
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %0, %struct.mbedtls_ecp_point** %pR, align 8
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
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %1) #5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end10
  store i32 -20096, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end10
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %mP) #5
  %arraydecay = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_init_many(%struct.mbedtls_mpi* noundef %arraydecay, i64 noundef 4) #5
  %2 = load i8*, i8** %rs_ctx.addr, align 8
  br label %do.body11

do.body11:                                        ; preds = %if.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pmP, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %7 = load i8*, i8** %rs_ctx.addr, align 8
  %call12 = call i32 @mbedtls_ecp_mul_shortcuts(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_ecp_point* noundef %4, %struct.mbedtls_mpi* noundef %5, %struct.mbedtls_ecp_point* noundef %6, i8* noundef %7) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body11
  br label %cleanup

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pR, align 8
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %n.addr, align 8
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %12 = load i8*, i8** %rs_ctx.addr, align 8
  %call18 = call i32 @mbedtls_ecp_mul_shortcuts(%struct.mbedtls_ecp_group* noundef %8, %struct.mbedtls_ecp_point* noundef %9, %struct.mbedtls_mpi* noundef %10, %struct.mbedtls_ecp_point* noundef %11, i8* noundef %12) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body17
  br label %cleanup

if.end21:                                         ; preds = %do.body17
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pR, align 8
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pmP, align 8
  %16 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pR, align 8
  %arraydecay24 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  %call25 = call i32 @ecp_add_mixed(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_ecp_point* noundef %14, %struct.mbedtls_ecp_point* noundef %15, %struct.mbedtls_ecp_point* noundef %16, %struct.mbedtls_mpi* noundef %arraydecay24) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body23
  br label %cleanup

if.end28:                                         ; preds = %do.body23
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pR, align 8
  %call31 = call i32 @ecp_normalize_jac(%struct.mbedtls_ecp_group* noundef %17, %struct.mbedtls_ecp_point* noundef %18) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body30
  br label %cleanup

if.end34:                                         ; preds = %do.body30
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then33, %if.then27, %if.then20, %if.then14
  %arraydecay36 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_free_many(%struct.mbedtls_mpi* noundef %arraydecay36, i64 noundef 4) #5
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %mP) #5
  %19 = load i8*, i8** %rs_ctx.addr, align 8
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_init_many(%struct.mbedtls_mpi* noundef %arr, i64 noundef %size) #0 {
entry:
  %arr.addr = alloca %struct.mbedtls_mpi*, align 8
  %size.addr = alloca i64, align 8
  store %struct.mbedtls_mpi* %arr, %struct.mbedtls_mpi** %arr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %size.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %arr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 1
  store %struct.mbedtls_mpi* %incdec.ptr, %struct.mbedtls_mpi** %arr.addr, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %1) #5
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ecp_mul_shortcuts(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca %struct.mbedtls_mpi, align 8
  %nonzero = alloca i8, align 1
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %tmp) #5
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %0, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %call1 = call i32 @mbedtls_ecp_set_zero(%struct.mbedtls_ecp_point* noundef %1) #5
  store i32 %call1, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end57

if.else:                                          ; preds = %entry
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call4 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %2, i64 noundef 1) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.else
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call8 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %3, %struct.mbedtls_ecp_point* noundef %4) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %if.end56

if.else13:                                        ; preds = %if.else
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call14 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef -1) #5
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else47

if.then16:                                        ; preds = %if.else13
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call18 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_ecp_point* noundef %7) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body17
  br label %cleanup

if.end21:                                         ; preds = %do.body17
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 1
  %call24 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Y, i64 noundef 0) #5
  %cmp25 = icmp ne i32 %call24, 0
  %conv = zext i1 %cmp25 to i32
  %conv26 = trunc i32 %conv to i8
  store i8 %conv26, i8* %nonzero, align 1
  br label %do.body27

do.body27:                                        ; preds = %do.body23
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P28 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 1
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y29 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %10, i32 0, i32 1
  %call30 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %tmp, %struct.mbedtls_mpi* noundef %P28, %struct.mbedtls_mpi* noundef %Y29) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body27
  br label %cleanup

if.end34:                                         ; preds = %do.body27
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y37 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %11, i32 0, i32 1
  %12 = load i8, i8* %nonzero, align 1
  %conv38 = zext i8 %12 to i32
  %and = and i32 %conv38, 1
  %conv39 = trunc i32 %and to i8
  %call40 = call i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %Y37, %struct.mbedtls_mpi* noundef %tmp, i8 noundef zeroext %conv39) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body36
  br label %cleanup

if.end44:                                         ; preds = %do.body36
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.end45
  br label %if.end55

if.else47:                                        ; preds = %if.else13
  br label %do.body48

do.body48:                                        ; preds = %if.else47
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %15 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %16 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %17 = load i8*, i8** %rs_ctx.addr, align 8
  %call49 = call i32 @ecp_mul_restartable_internal(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_ecp_point* noundef %14, %struct.mbedtls_mpi* noundef %15, %struct.mbedtls_ecp_point* noundef %16, i32 (i8*, i8*, i64)* noundef null, i8* noundef null, i8* noundef %17) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body48
  br label %cleanup

if.end53:                                         ; preds = %do.body48
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %do.end46
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %do.end12
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %do.end
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then52, %if.then43, %if.then33, %if.then20, %if.then10, %if.then3
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %tmp) #5
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_add_mixed(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %tmp) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %tmp.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  %X = alloca %struct.mbedtls_mpi*, align 8
  %Y = alloca %struct.mbedtls_mpi*, align 8
  %Z = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store %struct.mbedtls_mpi* %tmp, %struct.mbedtls_mpi** %tmp.addr, align 8
  %0 = load i64, i64* @add_count, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @add_count, align 8
  store i32 -110, i32* %ret, align 4
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X1 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 0
  store %struct.mbedtls_mpi* %X1, %struct.mbedtls_mpi** %X, align 8
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y2 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 1
  store %struct.mbedtls_mpi* %Y2, %struct.mbedtls_mpi** %Y, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z3 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 2
  store %struct.mbedtls_mpi* %Z3, %struct.mbedtls_mpi** %Z, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z4 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 2
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %Z4, i32 0, i32 2
  %5 = load i64*, i64** %p, align 8
  %cmp = icmp ne i64* %5, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z5 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %6, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z5, i64 noundef 0) #5
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %call8 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %7, %struct.mbedtls_ecp_point* noundef %8) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z10 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %9, i32 0, i32 2
  %call11 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z10, i64 noundef 0) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call14 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %10, %struct.mbedtls_ecp_point* noundef %11) #5
  store i32 %call14, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end9
  %12 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z16 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %12, i32 0, i32 2
  %call17 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z16, i64 noundef 1) #5
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  br label %do.body

do.body:                                          ; preds = %if.end20
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i64 0
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z21 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %15, i32 0, i32 2
  %16 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z22 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %16, i32 0, i32 2
  %call23 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_mpi* noundef %arrayidx, %struct.mbedtls_mpi* noundef %Z21, %struct.mbedtls_mpi* noundef %Z22) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body
  br label %cleanup

if.end26:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end26
  br label %do.body27

do.body27:                                        ; preds = %do.end
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %18, i64 1
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %19, i64 0
  %20 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z30 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %20, i32 0, i32 2
  %call31 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %17, %struct.mbedtls_mpi* noundef %arrayidx28, %struct.mbedtls_mpi* noundef %arrayidx29, %struct.mbedtls_mpi* noundef %Z30) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body27
  br label %cleanup

if.end34:                                         ; preds = %do.body27
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i64 0
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i64 0
  %24 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %X39 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %24, i32 0, i32 0
  %call40 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %21, %struct.mbedtls_mpi* noundef %arrayidx37, %struct.mbedtls_mpi* noundef %arrayidx38, %struct.mbedtls_mpi* noundef %X39) #5
  store i32 %call40, i32* %ret, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body36
  br label %cleanup

if.end43:                                         ; preds = %do.body36
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %do.body45

do.body45:                                        ; preds = %do.end44
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i64 1
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %27, i64 1
  %28 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Y48 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %28, i32 0, i32 1
  %call49 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %25, %struct.mbedtls_mpi* noundef %arrayidx46, %struct.mbedtls_mpi* noundef %arrayidx47, %struct.mbedtls_mpi* noundef %Y48) #5
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %do.body45
  br label %cleanup

if.end52:                                         ; preds = %do.body45
  br label %do.end53

do.end53:                                         ; preds = %if.end52
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %29 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i64 0
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %31, i64 0
  %32 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X57 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %32, i32 0, i32 0
  %call58 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %29, %struct.mbedtls_mpi* noundef %arrayidx55, %struct.mbedtls_mpi* noundef %arrayidx56, %struct.mbedtls_mpi* noundef %X57) #5
  store i32 %call58, i32* %ret, align 4
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body54
  br label %cleanup

if.end61:                                         ; preds = %do.body54
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %33 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i64 1
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i64 1
  %36 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y66 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %36, i32 0, i32 1
  %call67 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %33, %struct.mbedtls_mpi* noundef %arrayidx64, %struct.mbedtls_mpi* noundef %arrayidx65, %struct.mbedtls_mpi* noundef %Y66) #5
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body63
  br label %cleanup

if.end70:                                         ; preds = %do.body63
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i64 0
  %call73 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %arrayidx72, i64 noundef 0) #5
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end82

if.then75:                                        ; preds = %do.end71
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %38, i64 1
  %call77 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %arrayidx76, i64 noundef 0) #5
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.then75
  %39 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %40 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %41 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %call80 = call i32 @ecp_double_jac(%struct.mbedtls_ecp_group* noundef %39, %struct.mbedtls_ecp_point* noundef %40, %struct.mbedtls_ecp_point* noundef %41, %struct.mbedtls_mpi* noundef %42) #5
  store i32 %call80, i32* %ret, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then75
  %43 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %call81 = call i32 @mbedtls_ecp_set_zero(%struct.mbedtls_ecp_point* noundef %43) #5
  store i32 %call81, i32* %ret, align 4
  br label %cleanup

if.end82:                                         ; preds = %do.end71
  br label %do.body83

do.body83:                                        ; preds = %if.end82
  %44 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %45 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Z, align 8
  %46 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z84 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %46, i32 0, i32 2
  %47 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %47, i64 0
  %call86 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %44, %struct.mbedtls_mpi* noundef %45, %struct.mbedtls_mpi* noundef %Z84, %struct.mbedtls_mpi* noundef %arrayidx85) #5
  store i32 %call86, i32* %ret, align 4
  %cmp87 = icmp ne i32 %call86, 0
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  %48 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %49 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %49, i64 2
  %50 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %50, i64 0
  %51 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %51, i64 0
  %call95 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %48, %struct.mbedtls_mpi* noundef %arrayidx92, %struct.mbedtls_mpi* noundef %arrayidx93, %struct.mbedtls_mpi* noundef %arrayidx94) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body91
  br label %cleanup

if.end98:                                         ; preds = %do.body91
  br label %do.end99

do.end99:                                         ; preds = %if.end98
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  %52 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %53 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %53, i64 3
  %54 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %54, i64 2
  %55 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %55, i64 0
  %call104 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %52, %struct.mbedtls_mpi* noundef %arrayidx101, %struct.mbedtls_mpi* noundef %arrayidx102, %struct.mbedtls_mpi* noundef %arrayidx103) #5
  store i32 %call104, i32* %ret, align 4
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %do.body100
  br label %cleanup

if.end107:                                        ; preds = %do.body100
  br label %do.end108

do.end108:                                        ; preds = %if.end107
  br label %do.body109

do.body109:                                       ; preds = %do.end108
  %56 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %57 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %57, i64 2
  %58 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %58, i64 2
  %59 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X112 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %59, i32 0, i32 0
  %call113 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %56, %struct.mbedtls_mpi* noundef %arrayidx110, %struct.mbedtls_mpi* noundef %arrayidx111, %struct.mbedtls_mpi* noundef %X112) #5
  store i32 %call113, i32* %ret, align 4
  %cmp114 = icmp ne i32 %call113, 0
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body109
  br label %cleanup

if.end116:                                        ; preds = %do.body109
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %do.body118

do.body118:                                       ; preds = %do.end117
  %60 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %60, i64 0
  %61 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %61, i64 2
  %call121 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %arrayidx119, %struct.mbedtls_mpi* noundef %arrayidx120) #5
  store i32 %call121, i32* %ret, align 4
  %cmp122 = icmp ne i32 %call121, 0
  br i1 %cmp122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %do.body118
  br label %cleanup

if.end124:                                        ; preds = %do.body118
  br label %do.end125

do.end125:                                        ; preds = %if.end124
  br label %do.body126

do.body126:                                       ; preds = %do.end125
  %62 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %63 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %63, i64 0
  %call128 = call i32 @mbedtls_mpi_shift_l_mod(%struct.mbedtls_ecp_group* noundef %62, %struct.mbedtls_mpi* noundef %arrayidx127, i64 noundef 1) #5
  store i32 %call128, i32* %ret, align 4
  %cmp129 = icmp ne i32 %call128, 0
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %do.body126
  br label %cleanup

if.end131:                                        ; preds = %do.body126
  br label %do.end132

do.end132:                                        ; preds = %if.end131
  br label %do.body133

do.body133:                                       ; preds = %do.end132
  %64 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %65 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X, align 8
  %66 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %66, i64 1
  %67 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx135 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %67, i64 1
  %call136 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %64, %struct.mbedtls_mpi* noundef %65, %struct.mbedtls_mpi* noundef %arrayidx134, %struct.mbedtls_mpi* noundef %arrayidx135) #5
  store i32 %call136, i32* %ret, align 4
  %cmp137 = icmp ne i32 %call136, 0
  br i1 %cmp137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %do.body133
  br label %cleanup

if.end139:                                        ; preds = %do.body133
  br label %do.end140

do.end140:                                        ; preds = %if.end139
  br label %do.body141

do.body141:                                       ; preds = %do.end140
  %68 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %69 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X, align 8
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X, align 8
  %71 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx142 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %71, i64 0
  %call143 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %68, %struct.mbedtls_mpi* noundef %69, %struct.mbedtls_mpi* noundef %70, %struct.mbedtls_mpi* noundef %arrayidx142) #5
  store i32 %call143, i32* %ret, align 4
  %cmp144 = icmp ne i32 %call143, 0
  br i1 %cmp144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %do.body141
  br label %cleanup

if.end146:                                        ; preds = %do.body141
  br label %do.end147

do.end147:                                        ; preds = %if.end146
  br label %do.body148

do.body148:                                       ; preds = %do.end147
  %72 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %73 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X, align 8
  %74 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X, align 8
  %75 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx149 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %75, i64 3
  %call150 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %72, %struct.mbedtls_mpi* noundef %73, %struct.mbedtls_mpi* noundef %74, %struct.mbedtls_mpi* noundef %arrayidx149) #5
  store i32 %call150, i32* %ret, align 4
  %cmp151 = icmp ne i32 %call150, 0
  br i1 %cmp151, label %if.then152, label %if.end153

if.then152:                                       ; preds = %do.body148
  br label %cleanup

if.end153:                                        ; preds = %do.body148
  br label %do.end154

do.end154:                                        ; preds = %if.end153
  br label %do.body155

do.body155:                                       ; preds = %do.end154
  %76 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %77 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx156 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %77, i64 2
  %78 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx157 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %78, i64 2
  %79 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X, align 8
  %call158 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %76, %struct.mbedtls_mpi* noundef %arrayidx156, %struct.mbedtls_mpi* noundef %arrayidx157, %struct.mbedtls_mpi* noundef %79) #5
  store i32 %call158, i32* %ret, align 4
  %cmp159 = icmp ne i32 %call158, 0
  br i1 %cmp159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %do.body155
  br label %cleanup

if.end161:                                        ; preds = %do.body155
  br label %do.end162

do.end162:                                        ; preds = %if.end161
  br label %do.body163

do.body163:                                       ; preds = %do.end162
  %80 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %81 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %81, i64 2
  %82 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %82, i64 2
  %83 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx166 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %83, i64 1
  %call167 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %80, %struct.mbedtls_mpi* noundef %arrayidx164, %struct.mbedtls_mpi* noundef %arrayidx165, %struct.mbedtls_mpi* noundef %arrayidx166) #5
  store i32 %call167, i32* %ret, align 4
  %cmp168 = icmp ne i32 %call167, 0
  br i1 %cmp168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %do.body163
  br label %cleanup

if.end170:                                        ; preds = %do.body163
  br label %do.end171

do.end171:                                        ; preds = %if.end170
  br label %do.body172

do.body172:                                       ; preds = %do.end171
  %84 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %85 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx173 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %85, i64 3
  %86 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx174 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %86, i64 3
  %87 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y175 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %87, i32 0, i32 1
  %call176 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %84, %struct.mbedtls_mpi* noundef %arrayidx173, %struct.mbedtls_mpi* noundef %arrayidx174, %struct.mbedtls_mpi* noundef %Y175) #5
  store i32 %call176, i32* %ret, align 4
  %cmp177 = icmp ne i32 %call176, 0
  br i1 %cmp177, label %if.then178, label %if.end179

if.then178:                                       ; preds = %do.body172
  br label %cleanup

if.end179:                                        ; preds = %do.body172
  br label %do.end180

do.end180:                                        ; preds = %if.end179
  br label %do.body181

do.body181:                                       ; preds = %do.end180
  %88 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %89 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %Y, align 8
  %90 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %90, i64 2
  %91 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx183 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %91, i64 3
  %call184 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %88, %struct.mbedtls_mpi* noundef %89, %struct.mbedtls_mpi* noundef %arrayidx182, %struct.mbedtls_mpi* noundef %arrayidx183) #5
  store i32 %call184, i32* %ret, align 4
  %cmp185 = icmp ne i32 %call184, 0
  br i1 %cmp185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %do.body181
  br label %cleanup

if.end187:                                        ; preds = %do.body181
  br label %do.end188

do.end188:                                        ; preds = %if.end187
  br label %cleanup

cleanup:                                          ; preds = %do.end188, %if.then186, %if.then178, %if.then169, %if.then160, %if.then152, %if.then145, %if.then138, %if.then130, %if.then123, %if.then115, %if.then106, %if.then97, %if.then88, %if.else, %if.then79, %if.then69, %if.then60, %if.then51, %if.then42, %if.then33, %if.then25
  %92 = load i32, i32* %ret, align 4
  store i32 %92, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then19, %if.then13, %if.then7, %if.then
  %93 = load i32, i32* %retval, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_normalize_jac(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  %T = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z, i64 noundef 0) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %T) #5
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z1 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 2
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 1
  %call2 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %Z1, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call2, i32* %ret, align 4
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  br label %cleanup

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y7 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 1
  %call8 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y7, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body6
  br label %cleanup

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call14 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T, %struct.mbedtls_mpi* noundef %T) #5
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
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X20 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %9, i32 0, i32 0
  %call21 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %7, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X20, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body19
  br label %cleanup

if.end24:                                         ; preds = %do.body19
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y27 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %11, i32 0, i32 1
  %12 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y28 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %12, i32 0, i32 1
  %call29 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %10, %struct.mbedtls_mpi* noundef %Y27, %struct.mbedtls_mpi* noundef %Y28, %struct.mbedtls_mpi* noundef %T) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body26
  br label %cleanup

if.end32:                                         ; preds = %do.body26
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z35 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %13, i32 0, i32 2
  %call36 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z35, i64 noundef 1) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body34
  br label %cleanup

if.end39:                                         ; preds = %do.body34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.then38, %if.then31, %if.then23, %if.then16, %if.then10, %if.then4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %T) #5
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpi_free_many(%struct.mbedtls_mpi* noundef %arr, i64 noundef %size) #0 {
entry:
  %arr.addr = alloca %struct.mbedtls_mpi*, align 8
  %size.addr = alloca i64, align 8
  store %struct.mbedtls_mpi* %arr, %struct.mbedtls_mpi** %arr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %size.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %arr.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 1
  store %struct.mbedtls_mpi* %incdec.ptr, %struct.mbedtls_mpi** %arr.addr, align 8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %1) #5
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_muladd(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_mpi* noundef %n, %struct.mbedtls_ecp_point* noundef %Q) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %n.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_mpi* %n, %struct.mbedtls_mpi** %n.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %n.addr, align 8
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %call = call i32 @mbedtls_ecp_muladd_restartable(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_ecp_point* noundef %1, %struct.mbedtls_mpi* noundef %2, %struct.mbedtls_ecp_point* noundef %3, %struct.mbedtls_mpi* noundef %4, %struct.mbedtls_ecp_point* noundef %5, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_check_pubkey(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call3 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %1) #5
  %cmp4 = icmp eq i32 %call3, 2
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %call6 = call i32 @ecp_check_pubkey_mx(%struct.mbedtls_ecp_group* noundef %2, %struct.mbedtls_ecp_point* noundef %3) #5
  store i32 %call6, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call8 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %4) #5
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %call11 = call i32 @ecp_check_pubkey_sw(%struct.mbedtls_ecp_group* noundef %5, %struct.mbedtls_ecp_point* noundef %6) #5
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.then5, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_check_pubkey_mx(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  %call = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %X) #5
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 7
  %2 = load i64, i64* %nbits, align 8
  %add = add i64 %2, 7
  %div = udiv i64 %add, 8
  %cmp = icmp ugt i64 %call, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X1 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 0
  %call2 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %X1, i64 noundef 0) #5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X6 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 1
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 0
  %7 = load i32, i32* %id, align 8
  %call7 = call i32 @ecp_check_bad_points_mx(%struct.mbedtls_mpi* noundef %X6, %struct.mbedtls_mpi* noundef %P, i32 noundef %7) #5
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_check_pubkey_sw(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  %YY = alloca %struct.mbedtls_mpi, align 8
  %RHS = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %X, i64 noundef 0) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 1
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Y, i64 noundef 0) #5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X4 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 1
  %call5 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X4, %struct.mbedtls_mpi* noundef %P) #5
  %cmp6 = icmp sge i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y8 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P9 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %5, i32 0, i32 1
  %call10 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Y8, %struct.mbedtls_mpi* noundef %P9) #5
  %cmp11 = icmp sge i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %YY) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %RHS) #5
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y12 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %7, i32 0, i32 1
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y13 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 1
  %call14 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_mpi* noundef %YY, %struct.mbedtls_mpi* noundef %Y12, %struct.mbedtls_mpi* noundef %Y13) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body
  br label %cleanup

if.end17:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end17
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X19 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X20 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %11, i32 0, i32 0
  %call21 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %9, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %X19, %struct.mbedtls_mpi* noundef %X20) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body18
  br label %cleanup

if.end24:                                         ; preds = %do.body18
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 2
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %A, i32 0, i32 2
  %13 = load i64*, i64** %p, align 8
  %cmp26 = icmp eq i64* %13, null
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %do.end25
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call29 = call i32 @mbedtls_mpi_sub_int_mod(%struct.mbedtls_ecp_group* noundef %14, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %RHS, i64 noundef 3) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body28
  br label %cleanup

if.end32:                                         ; preds = %do.body28
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %if.end41

if.else:                                          ; preds = %do.end25
  br label %do.body34

do.body34:                                        ; preds = %if.else
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A35 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %16, i32 0, i32 2
  %call36 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %15, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %A35) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body34
  br label %cleanup

if.end39:                                         ; preds = %do.body34
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.end33
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X43 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %18, i32 0, i32 0
  %call44 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %17, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %X43) #5
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
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %B = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %20, i32 0, i32 3
  %call50 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %19, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %RHS, %struct.mbedtls_mpi* noundef %B) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body49
  br label %cleanup

if.end53:                                         ; preds = %do.body49
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  %call55 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %YY, %struct.mbedtls_mpi* noundef %RHS) #5
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %do.end54
  store i32 -19584, i32* %ret, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %do.end54
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then52, %if.then46, %if.then38, %if.then31, %if.then23, %if.then16
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %YY) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %RHS) #5
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_check_privkey(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %d) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %0) #5
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %do.end2
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call3 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %1, i64 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call5 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %2, i64 noundef 1) #5
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call8 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %3) #5
  %sub = sub i64 %call8, 1
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 7
  %5 = load i64, i64* %nbits, align 8
  %cmp9 = icmp ne i64 %sub, %5
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.then
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits11 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 7
  %7 = load i64, i64* %nbits11, align 8
  %cmp12 = icmp eq i64 %7, 254
  br i1 %cmp12, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call13 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %8, i64 noundef 2) #5
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %do.end2
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call18 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %9) #5
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end17
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call21 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %10, i64 noundef 1) #5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.then20
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %12, i32 0, i32 5
  %call24 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %11, %struct.mbedtls_mpi* noundef %N) #5
  %cmp25 = icmp sge i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false23, %if.then20
  store i32 -19584, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false23
  store i32 0, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end17
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.else, %if.then26, %if.end16, %if.then15, %if.then10
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %0) #5
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end4
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 7
  %2 = load i64, i64* %nbits, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %5 = load i8*, i8** %p_rng.addr, align 8
  %call5 = call i32 @mbedtls_ecp_gen_privkey_mx(i64 noundef %2, %struct.mbedtls_mpi* noundef %3, i32 (i8*, i8*, i64)* noundef %4, i8* noundef %5) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end4
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call6 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %6) #5
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 5
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %call9 = call i32 @mbedtls_ecp_gen_privkey_sw(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %8, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10) #5
  store i32 %call9, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  store i32 -20352, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ecp_gen_privkey_mx(i64 noundef %high_bit, %struct.mbedtls_mpi* noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %high_bit.addr = alloca i64, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %n_random_bytes = alloca i64, align 8
  store i64 %high_bit, i64* %high_bit.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -20352, i32* %ret, align 4
  %0 = load i64, i64* %high_bit.addr, align 8
  %div = udiv i64 %0, 8
  %add = add i64 %div, 1
  store i64 %add, i64* %n_random_bytes, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %2 = load i64, i64* %n_random_bytes, align 8
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef %1, i64 noundef %2, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4) #5
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
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %6 = load i64, i64* %n_random_bytes, align 8
  %mul = mul i64 8, %6
  %7 = load i64, i64* %high_bit.addr, align 8
  %sub = sub i64 %mul, %7
  %sub2 = sub i64 %sub, 1
  %call3 = call i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef %5, i64 noundef %sub2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body1
  br label %cleanup

if.end6:                                          ; preds = %do.body1
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %9 = load i64, i64* %high_bit.addr, align 8
  %call9 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %8, i64 noundef %9, i8 noundef zeroext 1) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body8
  br label %cleanup

if.end12:                                         ; preds = %do.body8
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call15 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %10, i64 noundef 0, i8 noundef zeroext 0) #5
  store i32 %call15, i32* %ret, align 4
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.body14
  br label %cleanup

if.end18:                                         ; preds = %do.body14
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call21 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %11, i64 noundef 1, i8 noundef zeroext 0) #5
  store i32 %call21, i32* %ret, align 4
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body20
  br label %cleanup

if.end24:                                         ; preds = %do.body20
  br label %do.end25

do.end25:                                         ; preds = %if.end24
  %12 = load i64, i64* %high_bit.addr, align 8
  %cmp26 = icmp eq i64 %12, 254
  br i1 %cmp26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %do.end25
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %call29 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %13, i64 noundef 2, i8 noundef zeroext 0) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body28
  br label %cleanup

if.end32:                                         ; preds = %do.body28
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end25
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then31, %if.then23, %if.then17, %if.then11, %if.then5, %if.then
  %14 = load i32, i32* %ret, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_ecp_gen_privkey_sw(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_mpi* noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %3 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef %0, i64 noundef 1, %struct.mbedtls_mpi* noundef %1, i32 (i8*, i8*, i64)* noundef %2, i8* noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  switch i32 %4, label %sw.default [
    i32 -14, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i32 -19712, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_gen_keypair_base(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %G.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %G, %struct.mbedtls_ecp_point** %G.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %3 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_gen_privkey(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %1, i32 (i8*, i8*, i64)* noundef %2, i8* noundef %3) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body9
  br label %cleanup

if.end:                                           ; preds = %do.body9
  br label %do.end10

do.end10:                                         ; preds = %if.end
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %G.addr, align 8
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %call12 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %4, %struct.mbedtls_ecp_point* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_ecp_point* noundef %7, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body11
  br label %cleanup

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then14, %if.then
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_gen_keypair(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
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
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 4
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %5 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_gen_keypair_base(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_ecp_point* noundef %G, %struct.mbedtls_mpi* noundef %2, %struct.mbedtls_ecp_point* noundef %3, i32 (i8*, i8*, i64)* noundef %4, i8* noundef %5) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_gen_key(i32 noundef %grp_id, %struct.mbedtls_ecp_keypair* noundef %key, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %grp_id.addr = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %grp_id, i32* %grp_id.addr, align 4
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load i32, i32* %grp_id.addr, align 4
  %call = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  %3 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %5, i32 0, i32 2
  %6 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %7 = load i8*, i8** %p_rng.addr, align 8
  %call4 = call i32 @mbedtls_ecp_gen_keypair(%struct.mbedtls_ecp_group* noundef %grp3, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q, i32 (i8*, i8*, i64)* noundef %6, i8* noundef %7) #5
  store i32 %call4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_read_key(i32 noundef %grp_id, %struct.mbedtls_ecp_keypair* noundef %key, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %grp_id.addr = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i32 %grp_id, i32* %grp_id.addr, align 4
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %1 = load i32, i32* %grp_id.addr, align 4
  %call = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end2
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %do.end2
  store i32 -20096, i32* %ret, align 4
  %3 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %3, i32 0, i32 0
  %call4 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %grp3) #5
  %cmp5 = icmp eq i32 %call4, 2
  br i1 %cmp5, label %if.then6, label %if.end88

if.then6:                                         ; preds = %if.end
  %4 = load i32, i32* %grp_id.addr, align 4
  %cmp7 = icmp eq i32 %4, 9
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  %5 = load i64, i64* %buflen.addr, align 8
  %cmp9 = icmp ne i64 %5, 32
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then8
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  %6 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %6, i32 0, i32 1
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %buflen.addr, align 8
  %call13 = call i32 @mbedtls_mpi_read_binary_le(%struct.mbedtls_mpi* noundef %d, i8* noundef %7, i64 noundef %8) #5
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
  %9 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d19 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %9, i32 0, i32 1
  %call20 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d19, i64 noundef 0, i8 noundef zeroext 0) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body18
  br label %cleanup

if.end23:                                         ; preds = %do.body18
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %10 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d26 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %10, i32 0, i32 1
  %call27 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d26, i64 noundef 1, i8 noundef zeroext 0) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body25
  br label %cleanup

if.end30:                                         ; preds = %do.body25
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %do.body32

do.body32:                                        ; preds = %do.end31
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d33 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %11, i32 0, i32 1
  %call34 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d33, i64 noundef 2, i8 noundef zeroext 0) #5
  store i32 %call34, i32* %ret, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %do.body32
  br label %cleanup

if.end37:                                         ; preds = %do.body32
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %12 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d40 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %12, i32 0, i32 1
  %call41 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d40, i64 noundef 255, i8 noundef zeroext 0) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body39
  br label %cleanup

if.end44:                                         ; preds = %do.body39
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %13 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d47 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %13, i32 0, i32 1
  %call48 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d47, i64 noundef 254, i8 noundef zeroext 1) #5
  store i32 %call48, i32* %ret, align 4
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body46
  br label %cleanup

if.end51:                                         ; preds = %do.body46
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  br label %if.end87

if.else:                                          ; preds = %if.then6
  %14 = load i32, i32* %grp_id.addr, align 4
  %cmp53 = icmp eq i32 %14, 13
  br i1 %cmp53, label %if.then54, label %if.end86

if.then54:                                        ; preds = %if.else
  %15 = load i64, i64* %buflen.addr, align 8
  %cmp55 = icmp ne i64 %15, 56
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then54
  store i32 -19584, i32* %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.then54
  br label %do.body58

do.body58:                                        ; preds = %if.end57
  %16 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d59 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %16, i32 0, i32 1
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i64, i64* %buflen.addr, align 8
  %call60 = call i32 @mbedtls_mpi_read_binary_le(%struct.mbedtls_mpi* noundef %d59, i8* noundef %17, i64 noundef %18) #5
  store i32 %call60, i32* %ret, align 4
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.body58
  br label %cleanup

if.end63:                                         ; preds = %do.body58
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  br label %do.body65

do.body65:                                        ; preds = %do.end64
  %19 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d66 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %19, i32 0, i32 1
  %call67 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d66, i64 noundef 0, i8 noundef zeroext 0) #5
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body65
  br label %cleanup

if.end70:                                         ; preds = %do.body65
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  br label %do.body72

do.body72:                                        ; preds = %do.end71
  %20 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d73 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %20, i32 0, i32 1
  %call74 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d73, i64 noundef 1, i8 noundef zeroext 0) #5
  store i32 %call74, i32* %ret, align 4
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %do.body72
  br label %cleanup

if.end77:                                         ; preds = %do.body72
  br label %do.end78

do.end78:                                         ; preds = %if.end77
  br label %do.body79

do.body79:                                        ; preds = %do.end78
  %21 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d80 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %21, i32 0, i32 1
  %call81 = call i32 @mbedtls_mpi_set_bit(%struct.mbedtls_mpi* noundef %d80, i64 noundef 447, i8 noundef zeroext 1) #5
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body79
  br label %cleanup

if.end84:                                         ; preds = %do.body79
  br label %do.end85

do.end85:                                         ; preds = %if.end84
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %if.else
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %do.end52
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end
  %22 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp89 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %22, i32 0, i32 0
  %call90 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %grp89) #5
  %cmp91 = icmp eq i32 %call90, 1
  br i1 %cmp91, label %if.then92, label %if.end108

if.then92:                                        ; preds = %if.end88
  br label %do.body93

do.body93:                                        ; preds = %if.then92
  %23 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d94 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %23, i32 0, i32 1
  %24 = load i8*, i8** %buf.addr, align 8
  %25 = load i64, i64* %buflen.addr, align 8
  %call95 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %d94, i8* noundef %24, i64 noundef %25) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body93
  br label %cleanup

if.end98:                                         ; preds = %do.body93
  br label %do.end99

do.end99:                                         ; preds = %if.end98
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  %26 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp101 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %26, i32 0, i32 0
  %27 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d102 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %27, i32 0, i32 1
  %call103 = call i32 @mbedtls_ecp_check_privkey(%struct.mbedtls_ecp_group* noundef %grp101, %struct.mbedtls_mpi* noundef %d102) #5
  store i32 %call103, i32* %ret, align 4
  %cmp104 = icmp ne i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %do.body100
  br label %cleanup

if.end106:                                        ; preds = %do.body100
  br label %do.end107

do.end107:                                        ; preds = %if.end106
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.end88
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.then105, %if.then97, %if.then83, %if.then76, %if.then69, %if.then62, %if.then50, %if.then43, %if.then36, %if.then29, %if.then22, %if.then15
  %28 = load i32, i32* %ret, align 4
  %cmp109 = icmp ne i32 %28, 0
  br i1 %cmp109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %cleanup
  %29 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d111 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %29, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %d111) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %cleanup
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end112, %if.then56, %if.then10, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_write_key(%struct.mbedtls_ecp_keypair* noundef %key, i8* noundef %buf, i64 noundef %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 -20096, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %call = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %grp) #5
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %do.end2
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp3, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %cmp4 = icmp eq i32 %2, 9
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %3 = load i64, i64* %buflen.addr, align 8
  %cmp6 = icmp ult i64 %3, 32
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then5
  br label %if.end16

if.else:                                          ; preds = %if.then
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp8 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 0
  %id9 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp8, i32 0, i32 0
  %5 = load i32, i32* %id9, align 8
  %cmp10 = icmp eq i32 %5, 13
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.else
  %6 = load i64, i64* %buflen.addr, align 8
  %cmp12 = icmp ult i64 %6, 56
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  store i32 -20224, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %do.body17

do.body17:                                        ; preds = %if.end16
  %7 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %7, i32 0, i32 1
  %8 = load i8*, i8** %buf.addr, align 8
  %9 = load i64, i64* %buflen.addr, align 8
  %call18 = call i32 @mbedtls_mpi_write_binary_le(%struct.mbedtls_mpi* noundef %d, i8* noundef %8, i64 noundef %9) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body17
  br label %cleanup

if.end21:                                         ; preds = %do.body17
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %do.end2
  %10 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp24 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %10, i32 0, i32 0
  %call25 = call i32 @mbedtls_ecp_get_type(%struct.mbedtls_ecp_group* noundef %grp24) #5
  %cmp26 = icmp eq i32 %call25, 1
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end23
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d29 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %11, i32 0, i32 1
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i64, i64* %buflen.addr, align 8
  %call30 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %d29, i8* noundef %12, i64 noundef %13) #5
  store i32 %call30, i32* %ret, align 4
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body28
  br label %cleanup

if.end33:                                         ; preds = %do.body28
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end23
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then32, %if.then20
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then13, %if.then7
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_check_pub_priv(%struct.mbedtls_ecp_keypair* noundef %pub, %struct.mbedtls_ecp_keypair* noundef %prv, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pub.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %prv.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %Q = alloca %struct.mbedtls_ecp_point, align 8
  %grp = alloca %struct.mbedtls_ecp_group, align 8
  store %struct.mbedtls_ecp_keypair* %pub, %struct.mbedtls_ecp_keypair** %pub.addr, align 8
  store %struct.mbedtls_ecp_keypair* %prv, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.end2

do.end2:                                          ; preds = %do.body1
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %pub.addr, align 8
  %grp3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp3, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end2
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %pub.addr, align 8
  %grp4 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 0
  %id5 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp4, i32 0, i32 0
  %3 = load i32, i32* %id5, align 8
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %grp6 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 0
  %id7 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp6, i32 0, i32 0
  %5 = load i32, i32* %id7, align 8
  %cmp8 = icmp ne i32 %3, %5
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %6 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %pub.addr, align 8
  %Q10 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %6, i32 0, i32 2
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q10, i32 0, i32 0
  %7 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %Q11 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %7, i32 0, i32 2
  %X12 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q11, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X12) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %8 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %pub.addr, align 8
  %Q14 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %8, i32 0, i32 2
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q14, i32 0, i32 1
  %9 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %Q15 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %9, i32 0, i32 2
  %Y16 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q15, i32 0, i32 1
  %call17 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y16) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %10 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %pub.addr, align 8
  %Q20 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %10, i32 0, i32 2
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q20, i32 0, i32 2
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %Q21 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %11, i32 0, i32 2
  %Z22 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q21, i32 0, i32 2
  %call23 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z22) #5
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false19, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %do.end2
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false19
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Q) #5
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #5
  %12 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %grp25 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %12, i32 0, i32 0
  %call26 = call i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_group* noundef %grp25) #5
  br label %do.body27

do.body27:                                        ; preds = %if.end
  %13 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %13, i32 0, i32 1
  %14 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %grp28 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %14, i32 0, i32 0
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp28, i32 0, i32 4
  %15 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %16 = load i8*, i8** %p_rng.addr, align 8
  %call29 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef %15, i8* noundef %16) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body27
  br label %cleanup

if.end32:                                         ; preds = %do.body27
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %X34 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q, i32 0, i32 0
  %17 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %Q35 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %17, i32 0, i32 2
  %X36 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q35, i32 0, i32 0
  %call37 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X34, %struct.mbedtls_mpi* noundef %X36) #5
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then51, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %do.end33
  %Y40 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q, i32 0, i32 1
  %18 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %Q41 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %18, i32 0, i32 2
  %Y42 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q41, i32 0, i32 1
  %call43 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Y40, %struct.mbedtls_mpi* noundef %Y42) #5
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then51, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %Z46 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q, i32 0, i32 2
  %19 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %prv.addr, align 8
  %Q47 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %19, i32 0, i32 2
  %Z48 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %Q47, i32 0, i32 2
  %call49 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Z46, %struct.mbedtls_mpi* noundef %Z48) #5
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false45, %lor.lhs.false39, %do.end33
  store i32 -20352, i32* %ret, align 4
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false45
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then51, %if.then31
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Q) #5
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #5
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_export(%struct.mbedtls_ecp_keypair* noundef %key, %struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %Q) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_keypair* %key, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %grp1 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 0
  %call = call i32 @mbedtls_ecp_group_copy(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_ecp_group* noundef %grp1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %d2 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 1
  %call3 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %d2) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %7 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %key.addr, align 8
  %Q7 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %7, i32 0, i32 2
  %call8 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_ecp_point* noundef %Q7) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then5, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %grp = alloca %struct.mbedtls_ecp_group, align 8
  %R = alloca %struct.mbedtls_ecp_point, align 8
  %P = alloca %struct.mbedtls_ecp_point, align 8
  %m = alloca %struct.mbedtls_mpi, align 8
  %sw_exponents = alloca [6 x i8*], align 16
  %m_exponents = alloca [6 x i8*], align 16
  store i32 %verbose, i32* %verbose.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = bitcast [6 x i8*]* %sw_exponents to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 48, i1 false)
  %1 = bitcast i8* %0 to [6 x i8*]*
  %2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i8** %2, align 16
  %3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 5
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i8** %7, align 8
  %8 = bitcast [6 x i8*]* %m_exponents to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 48, i1 false)
  %9 = bitcast i8* %8 to [6 x i8*]*
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 4
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i32 0, i32 5
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0), i8** %15, align 8
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %grp) #5
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %R) #5
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %P) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %m) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %16 = load i32, i32* %verbose.addr, align 4
  %cmp1 = icmp ne i32 %16, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %do.end
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0)) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %do.end
  br label %do.body5

do.body5:                                         ; preds = %if.end4
  %call6 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %m, i64 noundef 2) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  br label %cleanup

if.end9:                                          ; preds = %do.body5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 4
  %call12 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef @self_test_rng, i8* noundef null) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body11
  br label %cleanup

if.end15:                                         ; preds = %do.body11
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  %17 = load i32, i32* %verbose.addr, align 4
  %G17 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 4
  %arraydecay = getelementptr inbounds [6 x i8*], [6 x i8*]* %sw_exponents, i64 0, i64 0
  %call18 = call i32 @self_test_point(i32 noundef %17, %struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %G17, i8** noundef %arraydecay, i64 noundef 6) #5
  store i32 %call18, i32* %ret, align 4
  %18 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.end16
  br label %cleanup

if.end21:                                         ; preds = %do.end16
  %19 = load i32, i32* %verbose.addr, align 4
  %cmp22 = icmp ne i32 %19, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %20 = load i32, i32* %verbose.addr, align 4
  %arraydecay26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %sw_exponents, i64 0, i64 0
  %call27 = call i32 @self_test_point(i32 noundef %20, %struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i8** noundef %arraydecay26, i64 noundef 6) #5
  store i32 %call27, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %21, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #5
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %R) #5
  %22 = load i32, i32* %verbose.addr, align 4
  %cmp31 = icmp ne i32 %22, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0)) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  br label %do.body35

do.body35:                                        ; preds = %if.end34
  %call36 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef 9) #5
  store i32 %call36, i32* %ret, align 4
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body35
  br label %cleanup

if.end39:                                         ; preds = %do.body35
  br label %do.end40

do.end40:                                         ; preds = %if.end39
  %23 = load i32, i32* %verbose.addr, align 4
  %G41 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 4
  %arraydecay42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %m_exponents, i64 0, i64 0
  %call43 = call i32 @self_test_point(i32 noundef %23, %struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %G41, i8** noundef %arraydecay42, i64 noundef 6) #5
  store i32 %call43, i32* %ret, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp44 = icmp ne i32 %24, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.end40
  br label %cleanup

if.end46:                                         ; preds = %do.end40
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then45, %if.then38, %if.then29, %if.then20, %if.then14, %if.then8, %if.then
  %25 = load i32, i32* %ret, align 4
  %cmp47 = icmp slt i32 %25, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %cleanup
  %26 = load i32, i32* %verbose.addr, align 4
  %cmp48 = icmp ne i32 %26, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %land.lhs.true
  %27 = load i32, i32* %ret, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 noundef %27) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true, %cleanup
  call void @mbedtls_ecp_group_free(%struct.mbedtls_ecp_group* noundef %grp) #5
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %R) #5
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %P) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %m) #5
  %28 = load i32, i32* %verbose.addr, align 4
  %cmp52 = icmp ne i32 %28, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  %29 = load i32, i32* %ret, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_test_rng(i8* noundef %ctx, i8* noundef %out, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @self_test_rng.state, align 4
  %mul = mul i32 %3, 1664525
  %add = add i32 %mul, 1013904223
  store i32 %add, i32* @self_test_rng.state, align 4
  %4 = load i32, i32* @self_test_rng.state, align 4
  %conv = trunc i32 %4 to i8
  %5 = load i8*, i8** %out.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_test_point(i32 noundef %verbose, %struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i8** noundef %exponents, i64 noundef %n_exponents) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %exponents.addr = alloca i8**, align 8
  %n_exponents.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %add_c_prev = alloca i64, align 8
  %dbl_c_prev = alloca i64, align 8
  %mul_c_prev = alloca i64, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i8** %exponents, i8*** %exponents.addr, align 8
  store i64 %n_exponents, i64* %n_exponents.addr, align 8
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* @add_count, align 8
  store i64 0, i64* @dbl_count, align 8
  store i64 0, i64* @mul_count, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %1 = load i8**, i8*** %exponents.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %0, i32 noundef 16, i8* noundef %2) #5
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
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call2 = call i32 @self_test_adjust_exponent(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_mpi* noundef %4) #5
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
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call8 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %5, %struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_mpi* noundef %7, %struct.mbedtls_ecp_point* noundef %8, i32 (i8*, i8*, i64)* noundef @self_test_rng, i8* noundef null) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body7
  br label %cleanup

if.end11:                                         ; preds = %do.body7
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end12
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %n_exponents.addr, align 8
  %cmp13 = icmp ult i64 %9, %10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i64, i64* @add_count, align 8
  store i64 %11, i64* %add_c_prev, align 8
  %12 = load i64, i64* @dbl_count, align 8
  store i64 %12, i64* %dbl_c_prev, align 8
  %13 = load i64, i64* @mul_count, align 8
  store i64 %13, i64* %mul_c_prev, align 8
  store i64 0, i64* @add_count, align 8
  store i64 0, i64* @dbl_count, align 8
  store i64 0, i64* @mul_count, align 8
  br label %do.body14

do.body14:                                        ; preds = %for.body
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %15 = load i8**, i8*** %exponents.addr, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %15, i64 %16
  %17 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @mbedtls_mpi_read_string(%struct.mbedtls_mpi* noundef %14, i32 noundef 16, i8* noundef %17) #5
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
  %18 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call22 = call i32 @self_test_adjust_exponent(%struct.mbedtls_ecp_group* noundef %18, %struct.mbedtls_mpi* noundef %19) #5
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %do.body21
  br label %cleanup

if.end25:                                         ; preds = %do.body21
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %21 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %23 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call28 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %20, %struct.mbedtls_ecp_point* noundef %21, %struct.mbedtls_mpi* noundef %22, %struct.mbedtls_ecp_point* noundef %23, i32 (i8*, i8*, i64)* noundef @self_test_rng, i8* noundef null) #5
  store i32 %call28, i32* %ret, align 4
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body27
  br label %cleanup

if.end31:                                         ; preds = %do.body27
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %24 = load i64, i64* @add_count, align 8
  %25 = load i64, i64* %add_c_prev, align 8
  %cmp33 = icmp ne i64 %24, %25
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end32
  %26 = load i64, i64* @dbl_count, align 8
  %27 = load i64, i64* %dbl_c_prev, align 8
  %cmp34 = icmp ne i64 %26, %27
  br i1 %cmp34, label %if.then37, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %28 = load i64, i64* @mul_count, align 8
  %29 = load i64, i64* %mul_c_prev, align 8
  %cmp36 = icmp ne i64 %28, %29
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %do.end32
  store i32 1, i32* %ret, align 4
  br label %for.end

if.end38:                                         ; preds = %lor.lhs.false35
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %if.then37, %for.cond
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then30, %if.then24, %if.then18, %if.then10, %if.then4, %if.then
  %31 = load i32, i32* %verbose.addr, align 4
  %cmp39 = icmp ne i32 %31, 0
  br i1 %cmp39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %cleanup
  %32 = load i32, i32* %ret, align 4
  %cmp41 = icmp ne i32 %32, 0
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then40
  %33 = load i64, i64* %i, align 8
  %conv = trunc i64 %33 to i32
  %call43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv) #5
  br label %if.end45

if.else:                                          ; preds = %if.then40
  %call44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #5
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %cleanup
  %34 = load i32, i32* %ret, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_mxz(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %b = alloca i8, align 1
  %RP = alloca %struct.mbedtls_ecp_point, align 8
  %PX = alloca %struct.mbedtls_mpi, align 8
  %tmp = alloca [4 x %struct.mbedtls_mpi], align 16
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %RP) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %PX) #5
  %arraydecay = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_init_many(%struct.mbedtls_mpi* noundef %arraydecay, i64 noundef 4) #5
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp = icmp eq i32 (i8*, i8*, i64)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 0
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %PX, %struct.mbedtls_mpi* noundef %X) #5
  store i32 %call, i32* %ret, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %do.body
  br label %cleanup

if.end3:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end3
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call5 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %RP, %struct.mbedtls_ecp_point* noundef %2) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body4
  br label %cleanup

if.end8:                                          ; preds = %do.body4
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X11 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 0
  %call12 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %X11, i64 noundef 1) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body10
  br label %cleanup

if.end15:                                         ; preds = %do.body10
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 2
  %call18 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 0) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %do.body17
  br label %cleanup

if.end21:                                         ; preds = %do.body17
  br label %do.end22

do.end22:                                         ; preds = %if.end21
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 1
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Y) #5
  br label %while.cond

while.cond:                                       ; preds = %do.end35, %do.end22
  %X23 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 0
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P24 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 1
  %call25 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X23, %struct.mbedtls_mpi* noundef %P24) #5
  %cmp26 = icmp sge i32 %call25, 0
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body27

do.body27:                                        ; preds = %while.body
  %X28 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 0
  %X29 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 0
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P30 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 1
  %call31 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %X28, %struct.mbedtls_mpi* noundef %X29, %struct.mbedtls_mpi* noundef %P30) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body27
  br label %cleanup

if.end34:                                         ; preds = %do.body27
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %do.body36

do.body36:                                        ; preds = %while.end
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %call37 = call i32 @ecp_randomize_mxz(%struct.mbedtls_ecp_group* noundef %8, %struct.mbedtls_ecp_point* noundef %RP, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10) #5
  store i32 %call37, i32* %ret, align 4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body36
  br label %cleanup

if.end40:                                         ; preds = %do.body36
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  %11 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call42 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %11) #5
  store i64 %call42, i64* %i, align 8
  br label %while.cond43

while.cond43:                                     ; preds = %do.end90, %do.end41
  %12 = load i64, i64* %i, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %i, align 8
  %cmp44 = icmp ugt i64 %12, 0
  br i1 %cmp44, label %while.body45, label %while.end91

while.body45:                                     ; preds = %while.cond43
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %14 = load i64, i64* %i, align 8
  %call46 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %13, i64 noundef %14) #5
  %conv = trunc i32 %call46 to i8
  store i8 %conv, i8* %b, align 1
  br label %do.body47

do.body47:                                        ; preds = %while.body45
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X48 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %15, i32 0, i32 0
  %X49 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 0
  %16 = load i8, i8* %b, align 1
  %call50 = call i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* noundef %X48, %struct.mbedtls_mpi* noundef %X49, i8 noundef zeroext %16) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body47
  br label %cleanup

if.end54:                                         ; preds = %do.body47
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %do.body56

do.body56:                                        ; preds = %do.end55
  %17 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z57 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %17, i32 0, i32 2
  %Z58 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 2
  %18 = load i8, i8* %b, align 1
  %call59 = call i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* noundef %Z57, %struct.mbedtls_mpi* noundef %Z58, i8 noundef zeroext %18) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.body56
  br label %cleanup

if.end63:                                         ; preds = %do.body56
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  br label %do.body65

do.body65:                                        ; preds = %do.end64
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %20 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %21 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %arraydecay66 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  %call67 = call i32 @ecp_double_add_mxz(%struct.mbedtls_ecp_group* noundef %19, %struct.mbedtls_ecp_point* noundef %20, %struct.mbedtls_ecp_point* noundef %RP, %struct.mbedtls_ecp_point* noundef %21, %struct.mbedtls_ecp_point* noundef %RP, %struct.mbedtls_mpi* noundef %PX, %struct.mbedtls_mpi* noundef %arraydecay66) #5
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body65
  br label %cleanup

if.end71:                                         ; preds = %do.body65
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  %22 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X74 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %22, i32 0, i32 0
  %X75 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 0
  %23 = load i8, i8* %b, align 1
  %call76 = call i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* noundef %X74, %struct.mbedtls_mpi* noundef %X75, i8 noundef zeroext %23) #5
  store i32 %call76, i32* %ret, align 4
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body73
  br label %cleanup

if.end80:                                         ; preds = %do.body73
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %24 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z83 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %24, i32 0, i32 2
  %Z84 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %RP, i32 0, i32 2
  %25 = load i8, i8* %b, align 1
  %call85 = call i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* noundef %Z83, %struct.mbedtls_mpi* noundef %Z84, i8 noundef zeroext %25) #5
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body82
  br label %cleanup

if.end89:                                         ; preds = %do.body82
  br label %do.end90

do.end90:                                         ; preds = %if.end89
  br label %while.cond43, !llvm.loop !15

while.end91:                                      ; preds = %while.cond43
  br label %do.body92

do.body92:                                        ; preds = %while.end91
  %26 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %27 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %28 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %29 = load i8*, i8** %p_rng.addr, align 8
  %call93 = call i32 @ecp_randomize_mxz(%struct.mbedtls_ecp_group* noundef %26, %struct.mbedtls_ecp_point* noundef %27, i32 (i8*, i8*, i64)* noundef %28, i8* noundef %29) #5
  store i32 %call93, i32* %ret, align 4
  %cmp94 = icmp ne i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.body92
  br label %cleanup

if.end97:                                         ; preds = %do.body92
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  br label %do.body99

do.body99:                                        ; preds = %do.end98
  %30 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %31 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %call100 = call i32 @ecp_normalize_mxz(%struct.mbedtls_ecp_group* noundef %30, %struct.mbedtls_ecp_point* noundef %31) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body99
  br label %cleanup

if.end104:                                        ; preds = %do.body99
  br label %do.end105

do.end105:                                        ; preds = %if.end104
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then103, %if.then96, %if.then88, %if.then79, %if.then70, %if.then62, %if.then53, %if.then39, %if.then33, %if.then20, %if.then14, %if.then7, %if.then2
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %RP) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %PX) #5
  %arraydecay106 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_free_many(%struct.mbedtls_mpi* noundef %arraydecay106, i64 noundef 4) #5
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_comb(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %P, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %w = alloca i8, align 1
  %p_eq_g = alloca i8, align 1
  %i = alloca i8, align 1
  %d = alloca i64, align 8
  %T_size = alloca i8, align 1
  %T_ok = alloca i8, align 1
  %T = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8 0, i8* %T_size, align 1
  store i8 0, i8* %T_ok, align 1
  store %struct.mbedtls_ecp_point* null, %struct.mbedtls_ecp_point** %T, align 8
  %0 = load i8*, i8** %rs_ctx.addr, align 8
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 1
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 4
  %Y1 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G, i32 0, i32 1
  %call = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y1) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %G2 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 4
  %X3 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %G2, i32 0, i32 0
  %call4 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X3) #5
  %cmp5 = icmp eq i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  %conv = trunc i32 %land.ext to i8
  store i8 %conv, i8* %p_eq_g, align 1
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load i8, i8* %p_eq_g, align 1
  %call6 = call zeroext i8 @ecp_pick_window_size(%struct.mbedtls_ecp_group* noundef %6, i8 noundef zeroext %7) #5
  store i8 %call6, i8* %w, align 1
  %8 = load i8, i8* %w, align 1
  %conv7 = zext i8 %8 to i32
  %sub = sub nsw i32 %conv7, 1
  %shl = shl i32 1, %sub
  %conv8 = trunc i32 %shl to i8
  store i8 %conv8, i8* %T_size, align 1
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 7
  %10 = load i64, i64* %nbits, align 8
  %11 = load i8, i8* %w, align 1
  %conv9 = zext i8 %11 to i64
  %add = add i64 %10, %conv9
  %sub10 = sub i64 %add, 1
  %12 = load i8, i8* %w, align 1
  %conv11 = zext i8 %12 to i64
  %div = udiv i64 %sub10, %conv11
  store i64 %div, i64* %d, align 8
  %13 = load i8, i8* %p_eq_g, align 1
  %conv12 = zext i8 %13 to i32
  %tobool = icmp ne i32 %conv12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %land.end
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T13 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %14, i32 0, i32 13
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T13, align 8
  %cmp14 = icmp ne %struct.mbedtls_ecp_point* %15, null
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T16 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %16, i32 0, i32 13
  %17 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T16, align 8
  store %struct.mbedtls_ecp_point* %17, %struct.mbedtls_ecp_point** %T, align 8
  store i8 1, i8* %T_ok, align 1
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %land.end
  %18 = load i8, i8* %T_size, align 1
  %conv17 = zext i8 %18 to i64
  %call18 = call noalias i8* @calloc(i64 noundef %conv17, i64 noundef 72) #7
  %19 = bitcast i8* %call18 to %struct.mbedtls_ecp_point*
  store %struct.mbedtls_ecp_point* %19, %struct.mbedtls_ecp_point** %T, align 8
  %20 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %cmp19 = icmp eq %struct.mbedtls_ecp_point* %20, null
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else
  store i32 -19840, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i8, i8* %i, align 1
  %conv22 = zext i8 %21 to i32
  %22 = load i8, i8* %T_size, align 1
  %conv23 = zext i8 %22 to i32
  %cmp24 = icmp slt i32 %conv22, %conv23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %24 = load i8, i8* %i, align 1
  %idxprom = zext i8 %24 to i64
  %arrayidx = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %23, i64 %idxprom
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %arrayidx) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i8, i8* %i, align 1
  %inc = add i8 %25, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %T_ok, align 1
  br label %if.end26

if.end26:                                         ; preds = %for.end, %if.then
  %26 = load i8, i8* %T_ok, align 1
  %tobool27 = icmp ne i8 %26, 0
  br i1 %tobool27, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end26
  br label %do.body

do.body:                                          ; preds = %if.then28
  %27 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %28 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %29 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %30 = load i8, i8* %w, align 1
  %31 = load i64, i64* %d, align 8
  %32 = load i8*, i8** %rs_ctx.addr, align 8
  %call29 = call i32 @ecp_precompute_comb(%struct.mbedtls_ecp_group* noundef %27, %struct.mbedtls_ecp_point* noundef %28, %struct.mbedtls_ecp_point* noundef %29, i8 noundef zeroext %30, i64 noundef %31, i8* noundef %32) #5
  store i32 %call29, i32* %ret, align 4
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body
  br label %cleanup

if.end33:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end33
  %33 = load i8, i8* %p_eq_g, align 1
  %tobool34 = icmp ne i8 %33, 0
  br i1 %tobool34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %do.end
  %34 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %35 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T36 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %35, i32 0, i32 13
  store %struct.mbedtls_ecp_point* %34, %struct.mbedtls_ecp_point** %T36, align 8
  %36 = load i8, i8* %T_size, align 1
  %conv37 = zext i8 %36 to i64
  %37 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T_size38 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %37, i32 0, i32 14
  store i64 %conv37, i64* %T_size38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %do.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end26
  br label %do.body41

do.body41:                                        ; preds = %if.end40
  %38 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %39 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %40 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %41 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %42 = load i8, i8* %T_size, align 1
  %43 = load i8, i8* %w, align 1
  %44 = load i64, i64* %d, align 8
  %45 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %46 = load i8*, i8** %p_rng.addr, align 8
  %47 = load i8*, i8** %rs_ctx.addr, align 8
  %call42 = call i32 @ecp_mul_comb_after_precomp(%struct.mbedtls_ecp_group* noundef %38, %struct.mbedtls_ecp_point* noundef %39, %struct.mbedtls_mpi* noundef %40, %struct.mbedtls_ecp_point* noundef %41, i8 noundef zeroext %42, i8 noundef zeroext %43, i64 noundef %44, i32 (i8*, i8*, i64)* noundef %45, i8* noundef %46, i8* noundef %47) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.body41
  br label %cleanup

if.end46:                                         ; preds = %do.body41
  br label %do.end47

do.end47:                                         ; preds = %if.end46
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then45, %if.then32, %if.then21
  %48 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %49 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %T48 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %49, i32 0, i32 13
  %50 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T48, align 8
  %cmp49 = icmp eq %struct.mbedtls_ecp_point* %48, %50
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cleanup
  store %struct.mbedtls_ecp_point* null, %struct.mbedtls_ecp_point** %T, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %cleanup
  %51 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %cmp53 = icmp ne %struct.mbedtls_ecp_point* %51, null
  br i1 %cmp53, label %if.then55, label %if.end67

if.then55:                                        ; preds = %if.end52
  store i8 0, i8* %i, align 1
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %if.then55
  %52 = load i8, i8* %i, align 1
  %conv57 = zext i8 %52 to i32
  %53 = load i8, i8* %T_size, align 1
  %conv58 = zext i8 %53 to i32
  %cmp59 = icmp slt i32 %conv57, %conv58
  br i1 %cmp59, label %for.body61, label %for.end66

for.body61:                                       ; preds = %for.cond56
  %54 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %55 = load i8, i8* %i, align 1
  %idxprom62 = zext i8 %55 to i64
  %arrayidx63 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %54, i64 %idxprom62
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %arrayidx63) #5
  br label %for.inc64

for.inc64:                                        ; preds = %for.body61
  %56 = load i8, i8* %i, align 1
  %inc65 = add i8 %56, 1
  store i8 %inc65, i8* %i, align 1
  br label %for.cond56, !llvm.loop !17

for.end66:                                        ; preds = %for.cond56
  %57 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T, align 8
  %58 = bitcast %struct.mbedtls_ecp_point* %57 to i8*
  call void @free(i8* noundef %58) #7
  br label %if.end67

if.end67:                                         ; preds = %for.end66, %if.end52
  %59 = load i32, i32* %ret, align 4
  %cmp68 = icmp ne i32 %59, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end67
  %60 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %60) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end67
  %61 = load i8*, i8** %rs_ctx.addr, align 8
  %62 = load i32, i32* %ret, align 4
  ret i32 %62
}

declare dso_local i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_randomize_mxz(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %P, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %l = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %l) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P1 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 1
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef %l, i64 noundef 2, %struct.mbedtls_mpi* noundef %P1, i32 (i8*, i8*, i64)* noundef %1, i8* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X3 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 0
  %call4 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X3, %struct.mbedtls_mpi* noundef %l) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body2
  br label %cleanup

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %do.body9

do.body9:                                         ; preds = %do.end8
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %7, i32 0, i32 2
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z10 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 2
  %call11 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z10, %struct.mbedtls_mpi* noundef %l) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body9
  br label %cleanup

if.end14:                                         ; preds = %do.body9
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then13, %if.then6, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %l) #5
  %9 = load i32, i32* %ret, align 4
  %cmp16 = icmp eq i32 %9, -14
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %cleanup
  store i32 -19712, i32* %ret, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %cleanup
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

declare dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_double_add_mxz(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_ecp_point* noundef %S, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_ecp_point* noundef %Q, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_mpi* noundef %T) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %S.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %d.addr = alloca %struct.mbedtls_mpi*, align 8
  %T.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %S, %struct.mbedtls_ecp_point** %S.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store %struct.mbedtls_mpi* %d, %struct.mbedtls_mpi** %d.addr, align 8
  store %struct.mbedtls_mpi* %T, %struct.mbedtls_mpi** %T.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i64 0
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %0, %struct.mbedtls_mpi* noundef %arrayidx, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %Z) #5
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
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i64 1
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X3 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %6, i32 0, i32 0
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z4 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %7, i32 0, i32 2
  %call5 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %4, %struct.mbedtls_mpi* noundef %arrayidx2, %struct.mbedtls_mpi* noundef %X3, %struct.mbedtls_mpi* noundef %Z4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body1
  br label %cleanup

if.end8:                                          ; preds = %do.body1
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  %8 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %9 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %9, i64 2
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %X12 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z13 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %11, i32 0, i32 2
  %call14 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %8, %struct.mbedtls_mpi* noundef %arrayidx11, %struct.mbedtls_mpi* noundef %X12, %struct.mbedtls_mpi* noundef %Z13) #5
  store i32 %call14, i32* %ret, align 4
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body10
  br label %cleanup

if.end17:                                         ; preds = %do.body10
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %12 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %13, i64 3
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %X21 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %14, i32 0, i32 0
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Z22 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %15, i32 0, i32 2
  %call23 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %12, %struct.mbedtls_mpi* noundef %arrayidx20, %struct.mbedtls_mpi* noundef %X21, %struct.mbedtls_mpi* noundef %Z22) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body19
  br label %cleanup

if.end26:                                         ; preds = %do.body19
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i64 3
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %18, i64 3
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %19, i64 0
  %call32 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %16, %struct.mbedtls_mpi* noundef %arrayidx29, %struct.mbedtls_mpi* noundef %arrayidx30, %struct.mbedtls_mpi* noundef %arrayidx31) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.body28
  br label %cleanup

if.end35:                                         ; preds = %do.body28
  br label %do.end36

do.end36:                                         ; preds = %if.end35
  br label %do.body37

do.body37:                                        ; preds = %do.end36
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i64 2
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i64 2
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i64 1
  %call41 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %20, %struct.mbedtls_mpi* noundef %arrayidx38, %struct.mbedtls_mpi* noundef %arrayidx39, %struct.mbedtls_mpi* noundef %arrayidx40) #5
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body37
  br label %cleanup

if.end44:                                         ; preds = %do.body37
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %24 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %25 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %25, i64 0
  %26 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %26, i64 0
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %27, i64 0
  %call50 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %24, %struct.mbedtls_mpi* noundef %arrayidx47, %struct.mbedtls_mpi* noundef %arrayidx48, %struct.mbedtls_mpi* noundef %arrayidx49) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body46
  br label %cleanup

if.end53:                                         ; preds = %do.body46
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  br label %do.body55

do.body55:                                        ; preds = %do.end54
  %28 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %29 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %29, i64 1
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i64 1
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %31, i64 1
  %call59 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %28, %struct.mbedtls_mpi* noundef %arrayidx56, %struct.mbedtls_mpi* noundef %arrayidx57, %struct.mbedtls_mpi* noundef %arrayidx58) #5
  store i32 %call59, i32* %ret, align 4
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body55
  br label %cleanup

if.end62:                                         ; preds = %do.body55
  br label %do.end63

do.end63:                                         ; preds = %if.end62
  br label %do.body64

do.body64:                                        ; preds = %do.end63
  %32 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %33 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X65 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %33, i32 0, i32 0
  %34 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %34, i64 0
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i64 1
  %call68 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %32, %struct.mbedtls_mpi* noundef %X65, %struct.mbedtls_mpi* noundef %arrayidx66, %struct.mbedtls_mpi* noundef %arrayidx67) #5
  store i32 %call68, i32* %ret, align 4
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body64
  br label %cleanup

if.end71:                                         ; preds = %do.body64
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  %36 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i64 0
  %38 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %38, i64 0
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %39, i64 1
  %call77 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %36, %struct.mbedtls_mpi* noundef %arrayidx74, %struct.mbedtls_mpi* noundef %arrayidx75, %struct.mbedtls_mpi* noundef %arrayidx76) #5
  store i32 %call77, i32* %ret, align 4
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body73
  br label %cleanup

if.end80:                                         ; preds = %do.body73
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %40 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %41 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z83 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %41, i32 0, i32 2
  %42 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %42, i32 0, i32 2
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %43, i64 0
  %call85 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %40, %struct.mbedtls_mpi* noundef %Z83, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %arrayidx84) #5
  store i32 %call85, i32* %ret, align 4
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %do.body82
  br label %cleanup

if.end88:                                         ; preds = %do.body82
  br label %do.end89

do.end89:                                         ; preds = %if.end88
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %44 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %45 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z91 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %45, i32 0, i32 2
  %46 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %46, i64 1
  %47 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z93 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %47, i32 0, i32 2
  %call94 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %44, %struct.mbedtls_mpi* noundef %Z91, %struct.mbedtls_mpi* noundef %arrayidx92, %struct.mbedtls_mpi* noundef %Z93) #5
  store i32 %call94, i32* %ret, align 4
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %do.body90
  br label %cleanup

if.end97:                                         ; preds = %do.body90
  br label %do.end98

do.end98:                                         ; preds = %if.end97
  br label %do.body99

do.body99:                                        ; preds = %do.end98
  %48 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %49 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %X100 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %49, i32 0, i32 0
  %50 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %50, i64 3
  %51 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %51, i64 2
  %call103 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %48, %struct.mbedtls_mpi* noundef %X100, %struct.mbedtls_mpi* noundef %arrayidx101, %struct.mbedtls_mpi* noundef %arrayidx102) #5
  store i32 %call103, i32* %ret, align 4
  %cmp104 = icmp ne i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %do.body99
  br label %cleanup

if.end106:                                        ; preds = %do.body99
  br label %do.end107

do.end107:                                        ; preds = %if.end106
  br label %do.body108

do.body108:                                       ; preds = %do.end107
  %52 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %53 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %X109 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %53, i32 0, i32 0
  %54 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %X110 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %54, i32 0, i32 0
  %55 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %X111 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %55, i32 0, i32 0
  %call112 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %52, %struct.mbedtls_mpi* noundef %X109, %struct.mbedtls_mpi* noundef %X110, %struct.mbedtls_mpi* noundef %X111) #5
  store i32 %call112, i32* %ret, align 4
  %cmp113 = icmp ne i32 %call112, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %do.body108
  br label %cleanup

if.end115:                                        ; preds = %do.body108
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  br label %do.body117

do.body117:                                       ; preds = %do.end116
  %56 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %57 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %Z118 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %57, i32 0, i32 2
  %58 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %58, i64 3
  %59 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %59, i64 2
  %call121 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %56, %struct.mbedtls_mpi* noundef %Z118, %struct.mbedtls_mpi* noundef %arrayidx119, %struct.mbedtls_mpi* noundef %arrayidx120) #5
  store i32 %call121, i32* %ret, align 4
  %cmp122 = icmp ne i32 %call121, 0
  br i1 %cmp122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %do.body117
  br label %cleanup

if.end124:                                        ; preds = %do.body117
  br label %do.end125

do.end125:                                        ; preds = %if.end124
  br label %do.body126

do.body126:                                       ; preds = %do.end125
  %60 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %61 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %Z127 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %61, i32 0, i32 2
  %62 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %Z128 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %62, i32 0, i32 2
  %63 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %Z129 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %63, i32 0, i32 2
  %call130 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %60, %struct.mbedtls_mpi* noundef %Z127, %struct.mbedtls_mpi* noundef %Z128, %struct.mbedtls_mpi* noundef %Z129) #5
  store i32 %call130, i32* %ret, align 4
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %do.body126
  br label %cleanup

if.end133:                                        ; preds = %do.body126
  br label %do.end134

do.end134:                                        ; preds = %if.end133
  br label %do.body135

do.body135:                                       ; preds = %do.end134
  %64 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %65 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %Z136 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %65, i32 0, i32 2
  %66 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %d.addr, align 8
  %67 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %S.addr, align 8
  %Z137 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %67, i32 0, i32 2
  %call138 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %64, %struct.mbedtls_mpi* noundef %Z136, %struct.mbedtls_mpi* noundef %66, %struct.mbedtls_mpi* noundef %Z137) #5
  store i32 %call138, i32* %ret, align 4
  %cmp139 = icmp ne i32 %call138, 0
  br i1 %cmp139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %do.body135
  br label %cleanup

if.end141:                                        ; preds = %do.body135
  br label %do.end142

do.end142:                                        ; preds = %if.end141
  br label %do.body143

do.body143:                                       ; preds = %do.end142
  %68 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %69 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z144 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %69, i32 0, i32 2
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %T.addr, align 8
  %arrayidx145 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %70, i64 0
  %71 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z146 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %71, i32 0, i32 2
  %call147 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %68, %struct.mbedtls_mpi* noundef %Z144, %struct.mbedtls_mpi* noundef %arrayidx145, %struct.mbedtls_mpi* noundef %Z146) #5
  store i32 %call147, i32* %ret, align 4
  %cmp148 = icmp ne i32 %call147, 0
  br i1 %cmp148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body143
  br label %cleanup

if.end150:                                        ; preds = %do.body143
  br label %do.end151

do.end151:                                        ; preds = %if.end150
  br label %cleanup

cleanup:                                          ; preds = %do.end151, %if.then149, %if.then140, %if.then132, %if.then123, %if.then114, %if.then105, %if.then96, %if.then87, %if.then79, %if.then70, %if.then61, %if.then52, %if.then43, %if.then34, %if.then25, %if.then16, %if.then7, %if.then
  %72 = load i32, i32* %ret, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_normalize_mxz(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %P) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 2
  %1 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z1 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %1, i32 0, i32 2
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P2 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %2, i32 0, i32 1
  %call = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z1, %struct.mbedtls_mpi* noundef %P2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 0
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X4 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 0
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z5 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %6, i32 0, i32 2
  %call6 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X4, %struct.mbedtls_mpi* noundef %Z5) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body3
  br label %cleanup

if.end9:                                          ; preds = %do.body3
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z12 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %7, i32 0, i32 2
  %call13 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z12, i64 noundef 1) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body11
  br label %cleanup

if.end16:                                         ; preds = %do.body11
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then15, %if.then8, %if.then
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

declare dso_local i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef, i64 noundef, %struct.mbedtls_mpi* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
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
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call3 = call i32 @ecp_modp(%struct.mbedtls_mpi* noundef %3, %struct.mbedtls_ecp_group* noundef %4) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body2
  br label %cleanup

if.end6:                                          ; preds = %do.body2
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  %5 = load i64, i64* @mul_count, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* @mul_count, align 8
  br label %do.end8

do.end8:                                          ; preds = %do.end7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.then5, %if.then
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_modp(%struct.mbedtls_mpi* noundef %N, %struct.mbedtls_ecp_group* noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca %struct.mbedtls_mpi*, align 8
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_mpi* %N, %struct.mbedtls_mpi** %N.addr, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 9
  %1 = load i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_mpi*)** %modp, align 8
  %cmp = icmp eq i32 (%struct.mbedtls_mpi*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 1
  %call = call i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %5, i32 0, i32 0
  %6 = load i32, i32* %s, align 8
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call2 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %7, i64 noundef 0) #5
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call4 = call i64 @mbedtls_mpi_bitlen(%struct.mbedtls_mpi* noundef %8) #5
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 6
  %10 = load i64, i64* %pbits, align 8
  %mul = mul i64 2, %10
  %cmp5 = icmp ugt i64 %call4, %mul
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end7
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %modp8 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %11, i32 0, i32 9
  %12 = load i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_mpi*)** %modp8, align 8
  %13 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call9 = call i32 %12(%struct.mbedtls_mpi* noundef %13) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body
  br label %cleanup

if.end12:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end12
  br label %while.cond

while.cond:                                       ; preds = %do.end23, %do.end
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %s13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i32 0, i32 0
  %15 = load i32, i32* %s13, align 8
  %cmp14 = icmp slt i32 %15, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %call15 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %16, i64 noundef 0) #5
  %cmp16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body17

do.body17:                                        ; preds = %while.body
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %19 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %20 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P18 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %20, i32 0, i32 1
  %call19 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %18, %struct.mbedtls_mpi* noundef %19, %struct.mbedtls_mpi* noundef %P18) #5
  store i32 %call19, i32* %ret, align 4
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body17
  br label %cleanup

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %land.end
  br label %while.cond24

while.cond24:                                     ; preds = %do.end35, %while.end
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %22 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P25 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %22, i32 0, i32 1
  %call26 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %21, %struct.mbedtls_mpi* noundef %P25) #5
  %cmp27 = icmp sge i32 %call26, 0
  br i1 %cmp27, label %while.body28, label %while.end36

while.body28:                                     ; preds = %while.cond24
  br label %do.body29

do.body29:                                        ; preds = %while.body28
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %N.addr, align 8
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P30 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %25, i32 0, i32 1
  %call31 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %23, %struct.mbedtls_mpi* noundef %24, %struct.mbedtls_mpi* noundef %P30) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body29
  br label %cleanup

if.end34:                                         ; preds = %do.body29
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  br label %while.cond24, !llvm.loop !19

while.end36:                                      ; preds = %while.cond24
  br label %cleanup

cleanup:                                          ; preds = %while.end36, %if.then33, %if.then21, %if.then11
  %26 = load i32, i32* %ret, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then6, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end9, %do.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 1
  %call1 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %P) #5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body3

do.body3:                                         ; preds = %while.body
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P4 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 1
  %call5 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %P4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body3
  br label %cleanup

if.end8:                                          ; preds = %do.body3
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %if.then
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, %struct.mbedtls_mpi* noundef %B) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %B.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store %struct.mbedtls_mpi* %B, %struct.mbedtls_mpi** %B.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %B.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %0, %struct.mbedtls_mpi* noundef %1, %struct.mbedtls_mpi* noundef %2) #5
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
  br label %while.cond

while.cond:                                       ; preds = %do.end10, %do.body1
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 0
  %4 = load i32, i32* %s, align 8
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call3 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body5

do.body5:                                         ; preds = %while.body
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 1
  %call6 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  br label %cleanup

if.end9:                                          ; preds = %do.body5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %land.end
  br label %do.end11

do.end11:                                         ; preds = %while.end
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.then8, %if.then
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

declare dso_local i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ecp_pick_window_size(%struct.mbedtls_ecp_group* noundef %grp, i8 noundef zeroext %p_eq_g) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %p_eq_g.addr = alloca i8, align 1
  %w = alloca i8, align 1
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store i8 %p_eq_g, i8* %p_eq_g.addr, align 1
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 7
  %1 = load i64, i64* %nbits, align 8
  %cmp = icmp uge i64 %1, 384
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 5, i32 4
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %w, align 1
  %3 = load i8, i8* %p_eq_g.addr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %w, align 1
  %inc = add i8 %4, 1
  store i8 %inc, i8* %w, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* %p_eq_g.addr, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call = call i32 @ecp_group_is_static_comb_table(%struct.mbedtls_ecp_group* noundef %6) #5
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %7 = load i8, i8* %w, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp sgt i32 %conv3, 4
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i8 4, i8* %w, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %lor.lhs.false
  %8 = load i8, i8* %w, align 1
  %conv8 = zext i8 %8 to i64
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %nbits9 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 7
  %10 = load i64, i64* %nbits9, align 8
  %cmp10 = icmp uge i64 %conv8, %10
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i8 2, i8* %w, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end7
  %11 = load i8, i8* %w, align 1
  ret i8 %11
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_precompute_comb(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %T, %struct.mbedtls_ecp_point* noundef %P, i8 noundef zeroext %w, i64 noundef %d, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %T.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %w.addr = alloca i8, align 1
  %d.addr = alloca i64, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %i = alloca i8, align 1
  %j = alloca i64, align 8
  %T_size = alloca i8, align 1
  %cur = alloca %struct.mbedtls_ecp_point*, align 8
  %TT = alloca [7 x %struct.mbedtls_ecp_point*], align 16
  %tmp = alloca [4 x %struct.mbedtls_mpi], align 16
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %T, %struct.mbedtls_ecp_point** %T.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store i8 %w, i8* %w.addr, align 1
  store i64 %d, i64* %d.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i64 0, i64* %j, align 8
  %0 = load i8, i8* %w.addr, align 1
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 %conv, 1
  %shl = shl i32 1, %sub
  %conv1 = trunc i32 %shl to i8
  store i8 %conv1, i8* %T_size, align 1
  %1 = bitcast [7 x %struct.mbedtls_ecp_point*]* %TT to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 56, i1 false)
  %arraydecay = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_init_many(%struct.mbedtls_mpi* noundef %arraydecay, i64 noundef 4) #5
  %2 = load i8*, i8** %rs_ctx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i64 0
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %call = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %arrayidx, %struct.mbedtls_ecp_point* noundef %4) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load i64, i64* %j, align 8
  %6 = load i64, i64* %d.addr, align 8
  %7 = load i8, i8* %w.addr, align 1
  %conv3 = zext i8 %7 to i32
  %sub4 = sub nsw i32 %conv3, 1
  %conv5 = sext i32 %sub4 to i64
  %mul = mul i64 %6, %conv5
  %cmp6 = icmp ult i64 %5, %mul
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %d.addr, align 8
  %div = udiv i64 %8, %9
  %sh_prom = trunc i64 %div to i32
  %shl8 = shl i32 1, %sh_prom
  %conv9 = trunc i32 %shl8 to i8
  store i8 %conv9, i8* %i, align 1
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %11 = load i8, i8* %i, align 1
  %conv10 = zext i8 %11 to i32
  %idx.ext = sext i32 %conv10 to i64
  %add.ptr = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %10, i64 %idx.ext
  store %struct.mbedtls_ecp_point* %add.ptr, %struct.mbedtls_ecp_point** %cur, align 8
  %12 = load i64, i64* %j, align 8
  %13 = load i64, i64* %d.addr, align 8
  %rem = urem i64 %12, %13
  %cmp11 = icmp eq i64 %rem, 0
  br i1 %cmp11, label %if.then13, label %if.end24

if.then13:                                        ; preds = %for.body
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %cur, align 8
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %16 = load i8, i8* %i, align 1
  %conv15 = zext i8 %16 to i32
  %shr = ashr i32 %conv15, 1
  %idx.ext16 = sext i32 %shr to i64
  %add.ptr17 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %15, i64 %idx.ext16
  %call18 = call i32 @mbedtls_ecp_copy(%struct.mbedtls_ecp_point* noundef %14, %struct.mbedtls_ecp_point* noundef %add.ptr17) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body14
  br label %cleanup

if.end22:                                         ; preds = %do.body14
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %for.body
  br label %do.body25

do.body25:                                        ; preds = %if.end24
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %cur, align 8
  %19 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %cur, align 8
  %arraydecay26 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  %call27 = call i32 @ecp_double_jac(%struct.mbedtls_ecp_group* noundef %17, %struct.mbedtls_ecp_point* noundef %18, %struct.mbedtls_ecp_point* noundef %19, %struct.mbedtls_mpi* noundef %arraydecay26) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %do.body25
  br label %cleanup

if.end31:                                         ; preds = %do.body25
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %for.inc

for.inc:                                          ; preds = %do.end32
  %20 = load i64, i64* %j, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %j, align 8
  store i8 1, i8* %i, align 1
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc44, %for.end
  %21 = load i8, i8* %i, align 1
  %conv34 = zext i8 %21 to i32
  %22 = load i8, i8* %T_size, align 1
  %conv35 = zext i8 %22 to i32
  %cmp36 = icmp slt i32 %conv34, %conv35
  br i1 %cmp36, label %for.body38, label %for.end48

for.body38:                                       ; preds = %for.cond33
  %23 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %24 = load i8, i8* %i, align 1
  %conv39 = zext i8 %24 to i32
  %idx.ext40 = sext i32 %conv39 to i64
  %add.ptr41 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %23, i64 %idx.ext40
  %25 = load i64, i64* %j, align 8
  %inc42 = add i64 %25, 1
  store i64 %inc42, i64* %j, align 8
  %arrayidx43 = getelementptr inbounds [7 x %struct.mbedtls_ecp_point*], [7 x %struct.mbedtls_ecp_point*]* %TT, i64 0, i64 %25
  store %struct.mbedtls_ecp_point* %add.ptr41, %struct.mbedtls_ecp_point** %arrayidx43, align 8
  br label %for.inc44

for.inc44:                                        ; preds = %for.body38
  %26 = load i8, i8* %i, align 1
  %conv45 = zext i8 %26 to i32
  %shl46 = shl i32 %conv45, 1
  %conv47 = trunc i32 %shl46 to i8
  store i8 %conv47, i8* %i, align 1
  br label %for.cond33, !llvm.loop !23

for.end48:                                        ; preds = %for.cond33
  br label %do.body49

do.body49:                                        ; preds = %for.end48
  %27 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %arraydecay50 = getelementptr inbounds [7 x %struct.mbedtls_ecp_point*], [7 x %struct.mbedtls_ecp_point*]* %TT, i64 0, i64 0
  %28 = load i64, i64* %j, align 8
  %call51 = call i32 @ecp_normalize_jac_many(%struct.mbedtls_ecp_group* noundef %27, %struct.mbedtls_ecp_point** noundef %arraydecay50, i64 noundef %28) #5
  store i32 %call51, i32* %ret, align 4
  %cmp52 = icmp ne i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.body49
  br label %cleanup

if.end55:                                         ; preds = %do.body49
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  store i8 1, i8* %i, align 1
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc76, %do.end56
  %29 = load i8, i8* %i, align 1
  %conv58 = zext i8 %29 to i32
  %30 = load i8, i8* %T_size, align 1
  %conv59 = zext i8 %30 to i32
  %cmp60 = icmp slt i32 %conv58, %conv59
  br i1 %cmp60, label %for.body62, label %for.end80

for.body62:                                       ; preds = %for.cond57
  %31 = load i8, i8* %i, align 1
  %conv63 = zext i8 %31 to i64
  store i64 %conv63, i64* %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end75, %for.body62
  %32 = load i64, i64* %j, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %j, align 8
  %tobool = icmp ne i64 %32, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body64

do.body64:                                        ; preds = %while.body
  %33 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %34 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %35 = load i8, i8* %i, align 1
  %conv65 = zext i8 %35 to i64
  %36 = load i64, i64* %j, align 8
  %add = add i64 %conv65, %36
  %arrayidx66 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %34, i64 %add
  %37 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %38 = load i64, i64* %j, align 8
  %arrayidx67 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %37, i64 %38
  %39 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %40 = load i8, i8* %i, align 1
  %idxprom = zext i8 %40 to i64
  %arrayidx68 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %39, i64 %idxprom
  %arraydecay69 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  %call70 = call i32 @ecp_add_mixed(%struct.mbedtls_ecp_group* noundef %33, %struct.mbedtls_ecp_point* noundef %arrayidx66, %struct.mbedtls_ecp_point* noundef %arrayidx67, %struct.mbedtls_ecp_point* noundef %arrayidx68, %struct.mbedtls_mpi* noundef %arraydecay69) #5
  store i32 %call70, i32* %ret, align 4
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body64
  br label %cleanup

if.end74:                                         ; preds = %do.body64
  br label %do.end75

do.end75:                                         ; preds = %if.end74
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  br label %for.inc76

for.inc76:                                        ; preds = %while.end
  %41 = load i8, i8* %i, align 1
  %conv77 = zext i8 %41 to i32
  %shl78 = shl i32 %conv77, 1
  %conv79 = trunc i32 %shl78 to i8
  store i8 %conv79, i8* %i, align 1
  br label %for.cond57, !llvm.loop !25

for.end80:                                        ; preds = %for.cond57
  store i64 0, i64* %j, align 8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc90, %for.end80
  %42 = load i64, i64* %j, align 8
  %add82 = add i64 %42, 1
  %43 = load i8, i8* %T_size, align 1
  %conv83 = zext i8 %43 to i64
  %cmp84 = icmp ult i64 %add82, %conv83
  br i1 %cmp84, label %for.body86, label %for.end92

for.body86:                                       ; preds = %for.cond81
  %44 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %45 = load i64, i64* %j, align 8
  %add.ptr87 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %44, i64 %45
  %add.ptr88 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %add.ptr87, i64 1
  %46 = load i64, i64* %j, align 8
  %arrayidx89 = getelementptr inbounds [7 x %struct.mbedtls_ecp_point*], [7 x %struct.mbedtls_ecp_point*]* %TT, i64 0, i64 %46
  store %struct.mbedtls_ecp_point* %add.ptr88, %struct.mbedtls_ecp_point** %arrayidx89, align 8
  br label %for.inc90

for.inc90:                                        ; preds = %for.body86
  %47 = load i64, i64* %j, align 8
  %inc91 = add i64 %47, 1
  store i64 %inc91, i64* %j, align 8
  br label %for.cond81, !llvm.loop !26

for.end92:                                        ; preds = %for.cond81
  br label %do.body93

do.body93:                                        ; preds = %for.end92
  %48 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %arraydecay94 = getelementptr inbounds [7 x %struct.mbedtls_ecp_point*], [7 x %struct.mbedtls_ecp_point*]* %TT, i64 0, i64 0
  %49 = load i64, i64* %j, align 8
  %call95 = call i32 @ecp_normalize_jac_many(%struct.mbedtls_ecp_group* noundef %48, %struct.mbedtls_ecp_point** noundef %arraydecay94, i64 noundef %49) #5
  store i32 %call95, i32* %ret, align 4
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %do.body93
  br label %cleanup

if.end99:                                         ; preds = %do.body93
  br label %do.end100

do.end100:                                        ; preds = %if.end99
  store i8 0, i8* %i, align 1
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc109, %do.end100
  %50 = load i8, i8* %i, align 1
  %conv102 = zext i8 %50 to i32
  %51 = load i8, i8* %T_size, align 1
  %conv103 = zext i8 %51 to i32
  %cmp104 = icmp slt i32 %conv102, %conv103
  br i1 %cmp104, label %for.body106, label %for.end111

for.body106:                                      ; preds = %for.cond101
  %52 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %53 = load i8, i8* %i, align 1
  %idxprom107 = zext i8 %53 to i64
  %arrayidx108 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %52, i64 %idxprom107
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %arrayidx108, i32 0, i32 2
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %Z) #5
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %54 = load i8, i8* %i, align 1
  %inc110 = add i8 %54, 1
  store i8 %inc110, i8* %i, align 1
  br label %for.cond101, !llvm.loop !27

for.end111:                                       ; preds = %for.cond101
  br label %cleanup

cleanup:                                          ; preds = %for.end111, %if.then98, %if.then73, %if.then54, %if.then30, %if.then21, %if.then
  %arraydecay112 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_free_many(%struct.mbedtls_mpi* noundef %arraydecay112, i64 noundef 4) #5
  %55 = load i32, i32* %ret, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_comb_after_precomp(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_mpi* noundef %m, %struct.mbedtls_ecp_point* noundef %T, i8 noundef zeroext %T_size, i8 noundef zeroext %w, i64 noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %T.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %T_size.addr = alloca i8, align 1
  %w.addr = alloca i8, align 1
  %d.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %parity_trick = alloca i8, align 1
  %k = alloca [262 x i8], align 16
  %RR = alloca %struct.mbedtls_ecp_point*, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store %struct.mbedtls_ecp_point* %T, %struct.mbedtls_ecp_point** %T.addr, align 8
  store i8 %T_size, i8* %T_size.addr, align 1
  store i8 %w, i8* %w.addr, align 1
  store i64 %d, i64* %d.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %0, %struct.mbedtls_ecp_point** %RR, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %arraydecay = getelementptr inbounds [262 x i8], [262 x i8]* %k, i64 0, i64 0
  %3 = load i64, i64* %d.addr, align 8
  %4 = load i8, i8* %w.addr, align 1
  %call = call i32 @ecp_comb_recode_scalar(%struct.mbedtls_ecp_group* noundef %1, %struct.mbedtls_mpi* noundef %2, i8* noundef %arraydecay, i64 noundef %3, i8 noundef zeroext %4, i8* noundef %parity_trick) #5
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
  %5 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %RR, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %8 = load i8, i8* %T_size.addr, align 1
  %arraydecay2 = getelementptr inbounds [262 x i8], [262 x i8]* %k, i64 0, i64 0
  %9 = load i64, i64* %d.addr, align 8
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %12 = load i8*, i8** %rs_ctx.addr, align 8
  %call3 = call i32 @ecp_mul_comb_core(%struct.mbedtls_ecp_group* noundef %5, %struct.mbedtls_ecp_point* noundef %6, %struct.mbedtls_ecp_point* noundef %7, i8 noundef zeroext %8, i8* noundef %arraydecay2, i64 noundef %9, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11, i8* noundef %12) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body1
  br label %cleanup

if.end6:                                          ; preds = %do.body1
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %RR, align 8
  %15 = load i8, i8* %parity_trick, align 1
  %call9 = call i32 @ecp_safe_invert_jac(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_ecp_point* noundef %14, i8 noundef zeroext %15) #5
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body8
  br label %cleanup

if.end12:                                         ; preds = %do.body8
  br label %do.end13

do.end13:                                         ; preds = %if.end12
  %16 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp14 = icmp ne i32 (i8*, i8*, i64)* %16, null
  br i1 %cmp14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %do.end13
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  %17 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %RR, align 8
  %19 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %20 = load i8*, i8** %p_rng.addr, align 8
  %call17 = call i32 @ecp_randomize_jac(%struct.mbedtls_ecp_group* noundef %17, %struct.mbedtls_ecp_point* noundef %18, i32 (i8*, i8*, i64)* noundef %19, i8* noundef %20) #5
  store i32 %call17, i32* %ret, align 4
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body16
  br label %cleanup

if.end20:                                         ; preds = %do.body16
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %do.end13
  br label %do.body23

do.body23:                                        ; preds = %if.end22
  %21 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %22 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %RR, align 8
  %call24 = call i32 @ecp_normalize_jac(%struct.mbedtls_ecp_group* noundef %21, %struct.mbedtls_ecp_point* noundef %22) #5
  store i32 %call24, i32* %ret, align 4
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.body23
  br label %cleanup

if.end27:                                         ; preds = %do.body23
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then26, %if.then19, %if.then11, %if.then5, %if.then
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_double_jac(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_ecp_point* noundef %P, %struct.mbedtls_mpi* noundef %tmp) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %P.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %tmp.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %P, %struct.mbedtls_ecp_point** %P.addr, align 8
  store %struct.mbedtls_mpi* %tmp, %struct.mbedtls_mpi** %tmp.addr, align 8
  %0 = load i64, i64* @dbl_count, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @dbl_count, align 8
  store i32 -110, i32* %ret, align 4
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 2
  %p = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %A, i32 0, i32 2
  %2 = load i64*, i64** %p, align 8
  %cmp = icmp eq i64* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %4, i64 1
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 2
  %6 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z1 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %6, i32 0, i32 2
  %call = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_mpi* noundef %arrayidx, %struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z1) #5
  store i32 %call, i32* %ret, align 4
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body4

do.body4:                                         ; preds = %do.end
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %8, i64 2
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %9, i32 0, i32 0
  %10 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %10, i64 1
  %call7 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %7, %struct.mbedtls_mpi* noundef %arrayidx5, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %arrayidx6) #5
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body4
  br label %cleanup

if.end10:                                         ; preds = %do.body4
  br label %do.end11

do.end11:                                         ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.end11
  %11 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %12 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %12, i64 3
  %13 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X14 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %13, i32 0, i32 0
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i64 1
  %call16 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %11, %struct.mbedtls_mpi* noundef %arrayidx13, %struct.mbedtls_mpi* noundef %X14, %struct.mbedtls_mpi* noundef %arrayidx15) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body12
  br label %cleanup

if.end19:                                         ; preds = %do.body12
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %15 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i64 1
  %17 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %17, i64 2
  %18 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %18, i64 3
  %call25 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %15, %struct.mbedtls_mpi* noundef %arrayidx22, %struct.mbedtls_mpi* noundef %arrayidx23, %struct.mbedtls_mpi* noundef %arrayidx24) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body21
  br label %cleanup

if.end28:                                         ; preds = %do.body21
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %20 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %20, i64 0
  %21 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %21, i64 1
  %call33 = call i32 @mbedtls_mpi_mul_int_mod(%struct.mbedtls_ecp_group* noundef %19, %struct.mbedtls_mpi* noundef %arrayidx31, %struct.mbedtls_mpi* noundef %arrayidx32, i64 noundef 3) #5
  store i32 %call33, i32* %ret, align 4
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body30
  br label %cleanup

if.end36:                                         ; preds = %do.body30
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %if.end96

if.else:                                          ; preds = %entry
  br label %do.body38

do.body38:                                        ; preds = %if.else
  %22 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %23 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %23, i64 1
  %24 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X40 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %24, i32 0, i32 0
  %25 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X41 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %25, i32 0, i32 0
  %call42 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %22, %struct.mbedtls_mpi* noundef %arrayidx39, %struct.mbedtls_mpi* noundef %X40, %struct.mbedtls_mpi* noundef %X41) #5
  store i32 %call42, i32* %ret, align 4
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body38
  br label %cleanup

if.end45:                                         ; preds = %do.body38
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %26 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %27 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %27, i64 0
  %28 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %28, i64 1
  %call50 = call i32 @mbedtls_mpi_mul_int_mod(%struct.mbedtls_ecp_group* noundef %26, %struct.mbedtls_mpi* noundef %arrayidx48, %struct.mbedtls_mpi* noundef %arrayidx49, i64 noundef 3) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body47
  br label %cleanup

if.end53:                                         ; preds = %do.body47
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  %29 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A55 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %29, i32 0, i32 2
  %call56 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %A55, i64 noundef 0) #5
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end95

if.then58:                                        ; preds = %do.end54
  br label %do.body59

do.body59:                                        ; preds = %if.then58
  %30 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %31 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %31, i64 1
  %32 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z61 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %32, i32 0, i32 2
  %33 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z62 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %33, i32 0, i32 2
  %call63 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %30, %struct.mbedtls_mpi* noundef %arrayidx60, %struct.mbedtls_mpi* noundef %Z61, %struct.mbedtls_mpi* noundef %Z62) #5
  store i32 %call63, i32* %ret, align 4
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %do.body59
  br label %cleanup

if.end66:                                         ; preds = %do.body59
  br label %do.end67

do.end67:                                         ; preds = %if.end66
  br label %do.body68

do.body68:                                        ; preds = %do.end67
  %34 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i64 2
  %36 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %36, i64 1
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i64 1
  %call72 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %34, %struct.mbedtls_mpi* noundef %arrayidx69, %struct.mbedtls_mpi* noundef %arrayidx70, %struct.mbedtls_mpi* noundef %arrayidx71) #5
  store i32 %call72, i32* %ret, align 4
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body68
  br label %cleanup

if.end75:                                         ; preds = %do.body68
  br label %do.end76

do.end76:                                         ; preds = %if.end75
  br label %do.body77

do.body77:                                        ; preds = %do.end76
  %38 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %39 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %39, i64 1
  %40 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %40, i64 2
  %41 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %A80 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %41, i32 0, i32 2
  %call81 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %38, %struct.mbedtls_mpi* noundef %arrayidx78, %struct.mbedtls_mpi* noundef %arrayidx79, %struct.mbedtls_mpi* noundef %A80) #5
  store i32 %call81, i32* %ret, align 4
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body77
  br label %cleanup

if.end84:                                         ; preds = %do.body77
  br label %do.end85

do.end85:                                         ; preds = %if.end84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  %42 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %43 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %43, i64 0
  %44 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %44, i64 0
  %45 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %45, i64 1
  %call90 = call i32 @mbedtls_mpi_add_mod(%struct.mbedtls_ecp_group* noundef %42, %struct.mbedtls_mpi* noundef %arrayidx87, %struct.mbedtls_mpi* noundef %arrayidx88, %struct.mbedtls_mpi* noundef %arrayidx89) #5
  store i32 %call90, i32* %ret, align 4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body86
  br label %cleanup

if.end93:                                         ; preds = %do.body86
  br label %do.end94

do.end94:                                         ; preds = %if.end93
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %do.end54
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %do.end37
  br label %do.body97

do.body97:                                        ; preds = %if.end96
  %46 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %47 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %47, i64 2
  %48 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %48, i32 0, i32 1
  %49 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y99 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %49, i32 0, i32 1
  %call100 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %46, %struct.mbedtls_mpi* noundef %arrayidx98, %struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y99) #5
  store i32 %call100, i32* %ret, align 4
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.end104

do.end104:                                        ; preds = %if.end103
  br label %do.body105

do.body105:                                       ; preds = %do.end104
  %50 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %51 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %51, i64 2
  %call107 = call i32 @mbedtls_mpi_shift_l_mod(%struct.mbedtls_ecp_group* noundef %50, %struct.mbedtls_mpi* noundef %arrayidx106, i64 noundef 1) #5
  store i32 %call107, i32* %ret, align 4
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.body105
  br label %cleanup

if.end110:                                        ; preds = %do.body105
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  br label %do.body112

do.body112:                                       ; preds = %do.end111
  %52 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %53 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %53, i64 1
  %54 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %X114 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %54, i32 0, i32 0
  %55 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %55, i64 2
  %call116 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %52, %struct.mbedtls_mpi* noundef %arrayidx113, %struct.mbedtls_mpi* noundef %X114, %struct.mbedtls_mpi* noundef %arrayidx115) #5
  store i32 %call116, i32* %ret, align 4
  %cmp117 = icmp ne i32 %call116, 0
  br i1 %cmp117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %do.body112
  br label %cleanup

if.end119:                                        ; preds = %do.body112
  br label %do.end120

do.end120:                                        ; preds = %if.end119
  br label %do.body121

do.body121:                                       ; preds = %do.end120
  %56 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %57 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %57, i64 1
  %call123 = call i32 @mbedtls_mpi_shift_l_mod(%struct.mbedtls_ecp_group* noundef %56, %struct.mbedtls_mpi* noundef %arrayidx122, i64 noundef 1) #5
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
  %58 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %59 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx129 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %59, i64 3
  %60 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %60, i64 2
  %61 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %61, i64 2
  %call132 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %58, %struct.mbedtls_mpi* noundef %arrayidx129, %struct.mbedtls_mpi* noundef %arrayidx130, %struct.mbedtls_mpi* noundef %arrayidx131) #5
  store i32 %call132, i32* %ret, align 4
  %cmp133 = icmp ne i32 %call132, 0
  br i1 %cmp133, label %if.then134, label %if.end135

if.then134:                                       ; preds = %do.body128
  br label %cleanup

if.end135:                                        ; preds = %do.body128
  br label %do.end136

do.end136:                                        ; preds = %if.end135
  br label %do.body137

do.body137:                                       ; preds = %do.end136
  %62 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %63 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %63, i64 3
  %call139 = call i32 @mbedtls_mpi_shift_l_mod(%struct.mbedtls_ecp_group* noundef %62, %struct.mbedtls_mpi* noundef %arrayidx138, i64 noundef 1) #5
  store i32 %call139, i32* %ret, align 4
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %do.body137
  br label %cleanup

if.end142:                                        ; preds = %do.body137
  br label %do.end143

do.end143:                                        ; preds = %if.end142
  br label %do.body144

do.body144:                                       ; preds = %do.end143
  %64 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %65 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx145 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %65, i64 2
  %66 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %66, i64 0
  %67 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx147 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %67, i64 0
  %call148 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %64, %struct.mbedtls_mpi* noundef %arrayidx145, %struct.mbedtls_mpi* noundef %arrayidx146, %struct.mbedtls_mpi* noundef %arrayidx147) #5
  store i32 %call148, i32* %ret, align 4
  %cmp149 = icmp ne i32 %call148, 0
  br i1 %cmp149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %do.body144
  br label %cleanup

if.end151:                                        ; preds = %do.body144
  br label %do.end152

do.end152:                                        ; preds = %if.end151
  br label %do.body153

do.body153:                                       ; preds = %do.end152
  %68 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %69 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx154 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %69, i64 2
  %70 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %70, i64 2
  %71 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx156 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %71, i64 1
  %call157 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %68, %struct.mbedtls_mpi* noundef %arrayidx154, %struct.mbedtls_mpi* noundef %arrayidx155, %struct.mbedtls_mpi* noundef %arrayidx156) #5
  store i32 %call157, i32* %ret, align 4
  %cmp158 = icmp ne i32 %call157, 0
  br i1 %cmp158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %do.body153
  br label %cleanup

if.end160:                                        ; preds = %do.body153
  br label %do.end161

do.end161:                                        ; preds = %if.end160
  br label %do.body162

do.body162:                                       ; preds = %do.end161
  %72 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %73 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx163 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %73, i64 2
  %74 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %74, i64 2
  %75 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %75, i64 1
  %call166 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %72, %struct.mbedtls_mpi* noundef %arrayidx163, %struct.mbedtls_mpi* noundef %arrayidx164, %struct.mbedtls_mpi* noundef %arrayidx165) #5
  store i32 %call166, i32* %ret, align 4
  %cmp167 = icmp ne i32 %call166, 0
  br i1 %cmp167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %do.body162
  br label %cleanup

if.end169:                                        ; preds = %do.body162
  br label %do.end170

do.end170:                                        ; preds = %if.end169
  br label %do.body171

do.body171:                                       ; preds = %do.end170
  %76 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %77 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx172 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %77, i64 1
  %78 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx173 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %78, i64 1
  %79 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx174 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %79, i64 2
  %call175 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %76, %struct.mbedtls_mpi* noundef %arrayidx172, %struct.mbedtls_mpi* noundef %arrayidx173, %struct.mbedtls_mpi* noundef %arrayidx174) #5
  store i32 %call175, i32* %ret, align 4
  %cmp176 = icmp ne i32 %call175, 0
  br i1 %cmp176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %do.body171
  br label %cleanup

if.end178:                                        ; preds = %do.body171
  br label %do.end179

do.end179:                                        ; preds = %if.end178
  br label %do.body180

do.body180:                                       ; preds = %do.end179
  %80 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %81 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx181 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %81, i64 1
  %82 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %82, i64 1
  %83 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx183 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %83, i64 0
  %call184 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %80, %struct.mbedtls_mpi* noundef %arrayidx181, %struct.mbedtls_mpi* noundef %arrayidx182, %struct.mbedtls_mpi* noundef %arrayidx183) #5
  store i32 %call184, i32* %ret, align 4
  %cmp185 = icmp ne i32 %call184, 0
  br i1 %cmp185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %do.body180
  br label %cleanup

if.end187:                                        ; preds = %do.body180
  br label %do.end188

do.end188:                                        ; preds = %if.end187
  br label %do.body189

do.body189:                                       ; preds = %do.end188
  %84 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %85 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx190 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %85, i64 1
  %86 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx191 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %86, i64 1
  %87 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx192 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %87, i64 3
  %call193 = call i32 @mbedtls_mpi_sub_mod(%struct.mbedtls_ecp_group* noundef %84, %struct.mbedtls_mpi* noundef %arrayidx190, %struct.mbedtls_mpi* noundef %arrayidx191, %struct.mbedtls_mpi* noundef %arrayidx192) #5
  store i32 %call193, i32* %ret, align 4
  %cmp194 = icmp ne i32 %call193, 0
  br i1 %cmp194, label %if.then195, label %if.end196

if.then195:                                       ; preds = %do.body189
  br label %cleanup

if.end196:                                        ; preds = %do.body189
  br label %do.end197

do.end197:                                        ; preds = %if.end196
  br label %do.body198

do.body198:                                       ; preds = %do.end197
  %88 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %89 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx199 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %89, i64 3
  %90 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Y200 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %90, i32 0, i32 1
  %91 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %P.addr, align 8
  %Z201 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %91, i32 0, i32 2
  %call202 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %88, %struct.mbedtls_mpi* noundef %arrayidx199, %struct.mbedtls_mpi* noundef %Y200, %struct.mbedtls_mpi* noundef %Z201) #5
  store i32 %call202, i32* %ret, align 4
  %cmp203 = icmp ne i32 %call202, 0
  br i1 %cmp203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %do.body198
  br label %cleanup

if.end205:                                        ; preds = %do.body198
  br label %do.end206

do.end206:                                        ; preds = %if.end205
  br label %do.body207

do.body207:                                       ; preds = %do.end206
  %92 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %93 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx208 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %93, i64 3
  %call209 = call i32 @mbedtls_mpi_shift_l_mod(%struct.mbedtls_ecp_group* noundef %92, %struct.mbedtls_mpi* noundef %arrayidx208, i64 noundef 1) #5
  store i32 %call209, i32* %ret, align 4
  %cmp210 = icmp ne i32 %call209, 0
  br i1 %cmp210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %do.body207
  br label %cleanup

if.end212:                                        ; preds = %do.body207
  br label %do.end213

do.end213:                                        ; preds = %if.end212
  br label %do.body214

do.body214:                                       ; preds = %do.end213
  %94 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X215 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %94, i32 0, i32 0
  %95 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx216 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %95, i64 2
  %call217 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %X215, %struct.mbedtls_mpi* noundef %arrayidx216) #5
  store i32 %call217, i32* %ret, align 4
  %cmp218 = icmp ne i32 %call217, 0
  br i1 %cmp218, label %if.then219, label %if.end220

if.then219:                                       ; preds = %do.body214
  br label %cleanup

if.end220:                                        ; preds = %do.body214
  br label %do.end221

do.end221:                                        ; preds = %if.end220
  br label %do.body222

do.body222:                                       ; preds = %do.end221
  %96 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y223 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %96, i32 0, i32 1
  %97 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx224 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %97, i64 1
  %call225 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Y223, %struct.mbedtls_mpi* noundef %arrayidx224) #5
  store i32 %call225, i32* %ret, align 4
  %cmp226 = icmp ne i32 %call225, 0
  br i1 %cmp226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %do.body222
  br label %cleanup

if.end228:                                        ; preds = %do.body222
  br label %do.end229

do.end229:                                        ; preds = %if.end228
  br label %do.body230

do.body230:                                       ; preds = %do.end229
  %98 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z231 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %98, i32 0, i32 2
  %99 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %tmp.addr, align 8
  %arrayidx232 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %99, i64 3
  %call233 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %Z231, %struct.mbedtls_mpi* noundef %arrayidx232) #5
  store i32 %call233, i32* %ret, align 4
  %cmp234 = icmp ne i32 %call233, 0
  br i1 %cmp234, label %if.then235, label %if.end236

if.then235:                                       ; preds = %do.body230
  br label %cleanup

if.end236:                                        ; preds = %do.body230
  br label %do.end237

do.end237:                                        ; preds = %if.end236
  br label %cleanup

cleanup:                                          ; preds = %do.end237, %if.then235, %if.then227, %if.then219, %if.then211, %if.then204, %if.then195, %if.then186, %if.then177, %if.then168, %if.then159, %if.then150, %if.then141, %if.then134, %if.then125, %if.then118, %if.then109, %if.then102, %if.then92, %if.then83, %if.then74, %if.then65, %if.then52, %if.then44, %if.then35, %if.then27, %if.then18, %if.then9, %if.then3
  %100 = load i32, i32* %ret, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_normalize_jac_many(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point** noundef %T, i64 noundef %T_size) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %T.addr = alloca %struct.mbedtls_ecp_point**, align 8
  %T_size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i64, align 8
  %c = alloca %struct.mbedtls_mpi*, align 8
  %t = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point** %T, %struct.mbedtls_ecp_point*** %T.addr, align 8
  store i64 %T_size, i64* %T_size.addr, align 8
  %0 = load i64, i64* %T_size.addr, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %2 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %2, align 8
  %call = call i32 @ecp_normalize_jac(%struct.mbedtls_ecp_group* noundef %1, %struct.mbedtls_ecp_point* noundef %3) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 -110, i32* %ret, align 4
  %4 = load i64, i64* %T_size.addr, align 8
  %call1 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 24) #7
  %5 = bitcast i8* %call1 to %struct.mbedtls_mpi*
  store %struct.mbedtls_mpi* %5, %struct.mbedtls_mpi** %c, align 8
  %cmp2 = icmp eq %struct.mbedtls_mpi* %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -19840, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %t) #5
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %7 = load i64, i64* %T_size.addr, align 8
  call void @mpi_init_many(%struct.mbedtls_mpi* noundef %6, i64 noundef %7) #5
  br label %do.body

do.body:                                          ; preds = %if.end4
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %arrayidx = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %8, i64 0
  %9 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %9, i64 0
  %10 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx5, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %10, i32 0, i32 2
  %call6 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %arrayidx, %struct.mbedtls_mpi* noundef %Z) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  br label %cleanup

if.end9:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end9
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %T_size.addr, align 8
  %cmp10 = icmp ult i64 %11, %12
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body11

do.body11:                                        ; preds = %for.body
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %15 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %14, i64 %15
  %16 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %17 = load i64, i64* %i, align 8
  %sub = sub i64 %17, 1
  %arrayidx13 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %16, i64 %sub
  %18 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %18, i64 %19
  %20 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx14, align 8
  %Z15 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %20, i32 0, i32 2
  %call16 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_mpi* noundef %arrayidx12, %struct.mbedtls_mpi* noundef %arrayidx13, %struct.mbedtls_mpi* noundef %Z15) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body11
  br label %cleanup

if.end19:                                         ; preds = %do.body11
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %for.inc

for.inc:                                          ; preds = %do.end20
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %do.body21

do.body21:                                        ; preds = %for.end
  %22 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %23 = load i64, i64* %T_size.addr, align 8
  %sub22 = sub i64 %23, 1
  %arrayidx23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %22, i64 %sub22
  %24 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %25 = load i64, i64* %T_size.addr, align 8
  %sub24 = sub i64 %25, 1
  %arrayidx25 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %24, i64 %sub24
  %26 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %26, i32 0, i32 1
  %call26 = call i32 @mbedtls_mpi_inv_mod(%struct.mbedtls_mpi* noundef %arrayidx23, %struct.mbedtls_mpi* noundef %arrayidx25, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call26, i32* %ret, align 4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body21
  br label %cleanup

if.end29:                                         ; preds = %do.body21
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  %27 = load i64, i64* %T_size.addr, align 8
  %sub31 = sub i64 %27, 1
  store i64 %sub31, i64* %i, align 8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc127, %do.end30
  %28 = load i64, i64* %i, align 8
  %cmp33 = icmp ugt i64 %28, 0
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.cond32
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  %29 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %30 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %31 = load i64, i64* %i, align 8
  %arrayidx36 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %30, i64 %31
  %32 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %33 = load i64, i64* %i, align 8
  %sub37 = sub i64 %33, 1
  %arrayidx38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %32, i64 %sub37
  %call39 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %29, %struct.mbedtls_mpi* noundef %t, %struct.mbedtls_mpi* noundef %arrayidx36, %struct.mbedtls_mpi* noundef %arrayidx38) #5
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.body35
  br label %cleanup

if.end42:                                         ; preds = %do.body35
  br label %do.end43

do.end43:                                         ; preds = %if.end42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  %34 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %35 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %36 = load i64, i64* %i, align 8
  %sub45 = sub i64 %36, 1
  %arrayidx46 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %35, i64 %sub45
  %37 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %38 = load i64, i64* %i, align 8
  %arrayidx47 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %37, i64 %38
  %39 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %40 = load i64, i64* %i, align 8
  %arrayidx48 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %39, i64 %40
  %41 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx48, align 8
  %Z49 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %41, i32 0, i32 2
  %call50 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %34, %struct.mbedtls_mpi* noundef %arrayidx46, %struct.mbedtls_mpi* noundef %arrayidx47, %struct.mbedtls_mpi* noundef %Z49) #5
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body44
  br label %cleanup

if.end53:                                         ; preds = %do.body44
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  br label %if.end62

if.else:                                          ; preds = %for.cond32
  br label %do.body55

do.body55:                                        ; preds = %if.else
  %42 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %arrayidx56 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %42, i64 0
  %call57 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %t, %struct.mbedtls_mpi* noundef %arrayidx56) #5
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %do.body55
  br label %cleanup

if.end60:                                         ; preds = %do.body55
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %do.end54
  br label %do.body63

do.body63:                                        ; preds = %if.end62
  %43 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %44 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %45 = load i64, i64* %i, align 8
  %arrayidx64 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %44, i64 %45
  %46 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx64, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %46, i32 0, i32 1
  %47 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %48 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %47, i64 %48
  %49 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx65, align 8
  %Y66 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %49, i32 0, i32 1
  %call67 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %43, %struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y66, %struct.mbedtls_mpi* noundef %t) #5
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body63
  br label %cleanup

if.end70:                                         ; preds = %do.body63
  br label %do.end71

do.end71:                                         ; preds = %if.end70
  br label %do.body72

do.body72:                                        ; preds = %do.end71
  %50 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call73 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %50, %struct.mbedtls_mpi* noundef %t, %struct.mbedtls_mpi* noundef %t, %struct.mbedtls_mpi* noundef %t) #5
  store i32 %call73, i32* %ret, align 4
  %cmp74 = icmp ne i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %do.body72
  br label %cleanup

if.end76:                                         ; preds = %do.body72
  br label %do.end77

do.end77:                                         ; preds = %if.end76
  br label %do.body78

do.body78:                                        ; preds = %do.end77
  %51 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %52 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %53 = load i64, i64* %i, align 8
  %arrayidx79 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %52, i64 %53
  %54 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx79, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %54, i32 0, i32 0
  %55 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %56 = load i64, i64* %i, align 8
  %arrayidx80 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %55, i64 %56
  %57 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx80, align 8
  %X81 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %57, i32 0, i32 0
  %call82 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %51, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X81, %struct.mbedtls_mpi* noundef %t) #5
  store i32 %call82, i32* %ret, align 4
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.end85

if.then84:                                        ; preds = %do.body78
  br label %cleanup

if.end85:                                         ; preds = %do.body78
  br label %do.end86

do.end86:                                         ; preds = %if.end85
  br label %do.body87

do.body87:                                        ; preds = %do.end86
  %58 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %59 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %60 = load i64, i64* %i, align 8
  %arrayidx88 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %59, i64 %60
  %61 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx88, align 8
  %Y89 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %61, i32 0, i32 1
  %62 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %63 = load i64, i64* %i, align 8
  %arrayidx90 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %62, i64 %63
  %64 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx90, align 8
  %Y91 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %64, i32 0, i32 1
  %call92 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %58, %struct.mbedtls_mpi* noundef %Y89, %struct.mbedtls_mpi* noundef %Y91, %struct.mbedtls_mpi* noundef %t) #5
  store i32 %call92, i32* %ret, align 4
  %cmp93 = icmp ne i32 %call92, 0
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body87
  br label %cleanup

if.end95:                                         ; preds = %do.body87
  br label %do.end96

do.end96:                                         ; preds = %if.end95
  br label %do.body97

do.body97:                                        ; preds = %do.end96
  %65 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %66 = load i64, i64* %i, align 8
  %arrayidx98 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %65, i64 %66
  %67 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx98, align 8
  %X99 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %67, i32 0, i32 0
  %68 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P100 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %68, i32 0, i32 1
  %n = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %P100, i32 0, i32 1
  %69 = load i64, i64* %n, align 8
  %call101 = call i32 @mbedtls_mpi_shrink(%struct.mbedtls_mpi* noundef %X99, i64 noundef %69) #5
  store i32 %call101, i32* %ret, align 4
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body97
  br label %cleanup

if.end104:                                        ; preds = %do.body97
  br label %do.end105

do.end105:                                        ; preds = %if.end104
  br label %do.body106

do.body106:                                       ; preds = %do.end105
  %70 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %71 = load i64, i64* %i, align 8
  %arrayidx107 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %70, i64 %71
  %72 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx107, align 8
  %Y108 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %72, i32 0, i32 1
  %73 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P109 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %73, i32 0, i32 1
  %n110 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %P109, i32 0, i32 1
  %74 = load i64, i64* %n110, align 8
  %call111 = call i32 @mbedtls_mpi_shrink(%struct.mbedtls_mpi* noundef %Y108, i64 noundef %74) #5
  store i32 %call111, i32* %ret, align 4
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %do.body106
  br label %cleanup

if.end114:                                        ; preds = %do.body106
  br label %do.end115

do.end115:                                        ; preds = %if.end114
  br label %do.body116

do.body116:                                       ; preds = %do.end115
  %75 = load %struct.mbedtls_ecp_point**, %struct.mbedtls_ecp_point*** %T.addr, align 8
  %76 = load i64, i64* %i, align 8
  %arrayidx117 = getelementptr inbounds %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %75, i64 %76
  %77 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %arrayidx117, align 8
  %Z118 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %77, i32 0, i32 2
  %call119 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z118, i64 noundef 1) #5
  store i32 %call119, i32* %ret, align 4
  %cmp120 = icmp ne i32 %call119, 0
  br i1 %cmp120, label %if.then121, label %if.end122

if.then121:                                       ; preds = %do.body116
  br label %cleanup

if.end122:                                        ; preds = %do.body116
  br label %do.end123

do.end123:                                        ; preds = %if.end122
  %78 = load i64, i64* %i, align 8
  %cmp124 = icmp eq i64 %78, 0
  br i1 %cmp124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %do.end123
  br label %for.end128

if.end126:                                        ; preds = %do.end123
  br label %for.inc127

for.inc127:                                       ; preds = %if.end126
  %79 = load i64, i64* %i, align 8
  %dec = add i64 %79, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond32

for.end128:                                       ; preds = %if.then125
  br label %cleanup

cleanup:                                          ; preds = %for.end128, %if.then121, %if.then113, %if.then103, %if.then94, %if.then84, %if.then75, %if.then69, %if.then59, %if.then52, %if.then41, %if.then28, %if.then18, %if.then8
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %t) #5
  %80 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %81 = load i64, i64* %T_size.addr, align 8
  call void @mpi_free_many(%struct.mbedtls_mpi* noundef %80, i64 noundef %81) #5
  %82 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %c, align 8
  %83 = bitcast %struct.mbedtls_mpi* %82 to i8*
  call void @free(i8* noundef %83) #7
  %84 = load i32, i32* %ret, align 4
  store i32 %84, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then3, %if.then
  %85 = load i32, i32* %retval, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_mul_int_mod(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, i64 noundef %c) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %c.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %call = call i32 @mbedtls_mpi_mul_int(%struct.mbedtls_mpi* noundef %0, %struct.mbedtls_mpi* noundef %1, i64 noundef %2) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end9, %do.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 1
  %call1 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %3, %struct.mbedtls_mpi* noundef %P) #5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body3

do.body3:                                         ; preds = %while.body
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %7 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P4 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %7, i32 0, i32 1
  %call5 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %6, %struct.mbedtls_mpi* noundef %P4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body3
  br label %cleanup

if.end8:                                          ; preds = %do.body3
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %if.then
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_shift_l_mod(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %X, i64 noundef %count) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load i64, i64* %count.addr, align 8
  %call = call i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef %0, i64 noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end9, %do.end
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %3, i32 0, i32 1
  %call1 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %2, %struct.mbedtls_mpi* noundef %P) #5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body3

do.body3:                                         ; preds = %while.body
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P4 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %6, i32 0, i32 1
  %call5 = call i32 @mbedtls_mpi_sub_abs(%struct.mbedtls_mpi* noundef %4, %struct.mbedtls_mpi* noundef %5, %struct.mbedtls_mpi* noundef %P4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body3
  br label %cleanup

if.end8:                                          ; preds = %do.body3
  br label %do.end9

do.end9:                                          ; preds = %if.end8
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %if.then
  %7 = load i32, i32* %ret, align 4
  ret i32 %7
}

declare dso_local i32 @mbedtls_mpi_mul_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_shift_l(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_shrink(%struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_comb_recode_scalar(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %m, i8* noundef %k, i64 noundef %d, i8 noundef zeroext %w, i8* noundef %parity_trick) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %k.addr = alloca i8*, align 8
  %d.addr = alloca i64, align 8
  %w.addr = alloca i8, align 1
  %parity_trick.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %M = alloca %struct.mbedtls_mpi, align 8
  %mm = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store i8* %k, i8** %k.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  store i8 %w, i8* %w.addr, align 1
  store i8* %parity_trick, i8** %parity_trick.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %M) #5
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %mm) #5
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 5
  %call = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %N, i64 noundef 0) #5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -20352, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call1 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %1, i64 noundef 0) #5
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %conv3 = trunc i32 %conv to i8
  %2 = load i8*, i8** %parity_trick.addr, align 8
  store i8 %conv3, i8* %2, align 1
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call4 = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %3) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body
  br label %cleanup

if.end8:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end8
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %4 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %N10 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %4, i32 0, i32 5
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %call11 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %mm, %struct.mbedtls_mpi* noundef %N10, %struct.mbedtls_mpi* noundef %5) #5
  store i32 %call11, i32* %ret, align 4
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.body9
  br label %cleanup

if.end15:                                         ; preds = %do.body9
  br label %do.end16

do.end16:                                         ; preds = %if.end15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  %6 = load i8*, i8** %parity_trick.addr, align 8
  %7 = load i8, i8* %6, align 1
  %call18 = call i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %M, %struct.mbedtls_mpi* noundef %mm, i8 noundef zeroext %7) #5
  store i32 %call18, i32* %ret, align 4
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.body17
  br label %cleanup

if.end22:                                         ; preds = %do.body17
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  %8 = load i8*, i8** %k.addr, align 8
  %9 = load i64, i64* %d.addr, align 8
  %10 = load i8, i8* %w.addr, align 1
  call void @ecp_comb_recode_core(i8* noundef %8, i64 noundef %9, i8 noundef zeroext %10, %struct.mbedtls_mpi* noundef %M) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then21, %if.then14, %if.then7
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %mm) #5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %M) #5
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_comb_core(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_ecp_point* noundef %T, i8 noundef zeroext %T_size, i8* noundef %x, i64 noundef %d, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng, i8* noundef %rs_ctx) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %T.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %T_size.addr = alloca i8, align 1
  %x.addr = alloca i8*, align 8
  %d.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rs_ctx.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %Txi = alloca %struct.mbedtls_ecp_point, align 8
  %tmp = alloca [4 x %struct.mbedtls_mpi], align 16
  %i = alloca i64, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %T, %struct.mbedtls_ecp_point** %T.addr, align 8
  store i8 %T_size, i8* %T_size.addr, align 1
  store i8* %x, i8** %x.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i8* %rs_ctx, i8** %rs_ctx.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecp_point_init(%struct.mbedtls_ecp_point* noundef %Txi) #5
  %arraydecay = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_init_many(%struct.mbedtls_mpi* noundef %arraydecay, i64 noundef 4) #5
  %0 = load i8*, i8** %rs_ctx.addr, align 8
  %1 = load i64, i64* %d.addr, align 8
  store i64 %1, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %5 = load i8, i8* %T_size.addr, align 1
  %6 = load i8*, i8** %x.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx, align 1
  %call = call i32 @ecp_select_comb(%struct.mbedtls_ecp_group* noundef %2, %struct.mbedtls_ecp_point* noundef %3, %struct.mbedtls_ecp_point* noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %8) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %cmp1 = icmp ne i32 (i8*, i8*, i64)* %9, null
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %do.end
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %12 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %13 = load i8*, i8** %p_rng.addr, align 8
  %call4 = call i32 @ecp_randomize_jac(%struct.mbedtls_ecp_group* noundef %10, %struct.mbedtls_ecp_point* noundef %11, i32 (i8*, i8*, i64)* noundef %12, i8* noundef %13) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body3
  br label %cleanup

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %do.end
  br label %while.cond

while.cond:                                       ; preds = %do.end31, %if.end9
  %14 = load i64, i64* %i, align 8
  %cmp10 = icmp ne i64 %14, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* %i, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %i, align 8
  br label %do.body11

do.body11:                                        ; preds = %while.body
  %16 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %17 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %18 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %arraydecay12 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  %call13 = call i32 @ecp_double_jac(%struct.mbedtls_ecp_group* noundef %16, %struct.mbedtls_ecp_point* noundef %17, %struct.mbedtls_ecp_point* noundef %18, %struct.mbedtls_mpi* noundef %arraydecay12) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body11
  br label %cleanup

if.end16:                                         ; preds = %do.body11
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %19 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %20 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %21 = load i8, i8* %T_size.addr, align 1
  %22 = load i8*, i8** %x.addr, align 8
  %23 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i8, i8* %arrayidx19, align 1
  %call20 = call i32 @ecp_select_comb(%struct.mbedtls_ecp_group* noundef %19, %struct.mbedtls_ecp_point* noundef %Txi, %struct.mbedtls_ecp_point* noundef %20, i8 noundef zeroext %21, i8 noundef zeroext %24) #5
  store i32 %call20, i32* %ret, align 4
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %do.body18
  br label %cleanup

if.end23:                                         ; preds = %do.body18
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %25 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %26 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %27 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %arraydecay26 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  %call27 = call i32 @ecp_add_mixed(%struct.mbedtls_ecp_group* noundef %25, %struct.mbedtls_ecp_point* noundef %26, %struct.mbedtls_ecp_point* noundef %27, %struct.mbedtls_ecp_point* noundef %Txi, %struct.mbedtls_mpi* noundef %arraydecay26) #5
  store i32 %call27, i32* %ret, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body25
  br label %cleanup

if.end30:                                         ; preds = %do.body25
  br label %do.end31

do.end31:                                         ; preds = %if.end30
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then29, %if.then22, %if.then15, %if.then6, %if.then
  call void @mbedtls_ecp_point_free(%struct.mbedtls_ecp_point* noundef %Txi) #5
  %arraydecay32 = getelementptr inbounds [4 x %struct.mbedtls_mpi], [4 x %struct.mbedtls_mpi]* %tmp, i64 0, i64 0
  call void @mpi_free_many(%struct.mbedtls_mpi* noundef %arraydecay32, i64 noundef 4) #5
  %28 = load i32, i32* %ret, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_safe_invert_jac(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Q, i8 noundef zeroext %inv) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %Q.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %inv.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %tmp = alloca %struct.mbedtls_mpi, align 8
  %nonzero = alloca i8, align 1
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %Q, %struct.mbedtls_ecp_point** %Q.addr, align 8
  store i8 %inv, i8* %inv.addr, align 1
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %tmp) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %0, i32 0, i32 1
  %call = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %Y, i64 noundef 0) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* %nonzero, align 1
  br label %do.body2

do.body2:                                         ; preds = %do.body
  %1 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %1, i32 0, i32 1
  %2 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Y3 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %2, i32 0, i32 1
  %call4 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %tmp, %struct.mbedtls_mpi* noundef %P, %struct.mbedtls_mpi* noundef %Y3) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %do.body2
  br label %cleanup

if.end:                                           ; preds = %do.body2
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %Q.addr, align 8
  %Y8 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 1
  %4 = load i8, i8* %nonzero, align 1
  %conv9 = zext i8 %4 to i32
  %5 = load i8, i8* %inv.addr, align 1
  %conv10 = zext i8 %5 to i32
  %and = and i32 %conv9, %conv10
  %conv11 = trunc i32 %and to i8
  %call12 = call i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %Y8, %struct.mbedtls_mpi* noundef %tmp, i8 noundef zeroext %conv11) #5
  store i32 %call12, i32* %ret, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body7
  br label %cleanup

if.end16:                                         ; preds = %do.body7
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.end17
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then15, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %tmp) #5
  %6 = load i32, i32* %ret, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_randomize_jac(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %pt, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %pt.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %l = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %pt, %struct.mbedtls_ecp_point** %pt.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %l) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 1
  %1 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %2 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_mpi_random(%struct.mbedtls_mpi* noundef %l, i64 noundef 2, %struct.mbedtls_mpi* noundef %P, i32 (i8*, i8*, i64)* noundef %1, i8* noundef %2) #5
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
  %3 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i32 0, i32 2
  %5 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Z2 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %5, i32 0, i32 2
  %call3 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %3, %struct.mbedtls_mpi* noundef %Z, %struct.mbedtls_mpi* noundef %Z2, %struct.mbedtls_mpi* noundef %l) #5
  store i32 %call3, i32* %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.body1
  br label %cleanup

if.end6:                                          ; preds = %do.body1
  br label %do.end7

do.end7:                                          ; preds = %if.end6
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %6 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %7 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %7, i32 0, i32 1
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y9 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 1
  %call10 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %6, %struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y9, %struct.mbedtls_mpi* noundef %l) #5
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.body8
  br label %cleanup

if.end13:                                         ; preds = %do.body8
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %call16 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %9, %struct.mbedtls_mpi* noundef %l, %struct.mbedtls_mpi* noundef %l, %struct.mbedtls_mpi* noundef %l) #5
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body15
  br label %cleanup

if.end19:                                         ; preds = %do.body15
  br label %do.end20

do.end20:                                         ; preds = %if.end19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %10 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %11 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %11, i32 0, i32 0
  %12 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %X22 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %12, i32 0, i32 0
  %call23 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %10, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X22, %struct.mbedtls_mpi* noundef %l) #5
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
  %13 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %14 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y29 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %14, i32 0, i32 1
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %pt.addr, align 8
  %Y30 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %15, i32 0, i32 1
  %call31 = call i32 @mbedtls_mpi_mul_mod(%struct.mbedtls_ecp_group* noundef %13, %struct.mbedtls_mpi* noundef %Y29, %struct.mbedtls_mpi* noundef %Y30, %struct.mbedtls_mpi* noundef %l) #5
  store i32 %call31, i32* %ret, align 4
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body28
  br label %cleanup

if.end34:                                         ; preds = %do.body28
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then33, %if.then25, %if.then18, %if.then12, %if.then5, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %l) #5
  %16 = load i32, i32* %ret, align 4
  %cmp36 = icmp eq i32 %16, -14
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %cleanup
  store i32 -19712, i32* %ret, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %cleanup
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

declare dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecp_comb_recode_core(i8* noundef %x, i64 noundef %d, i8 noundef zeroext %w, %struct.mbedtls_mpi* noundef %m) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %d.addr = alloca i64, align 8
  %w.addr = alloca i8, align 1
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  %adjust = alloca i8, align 1
  store i8* %x, i8** %x.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  store i8 %w, i8* %w.addr, align 1
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i64, i64* %d.addr, align 8
  %add = add i64 %1, 1
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %add) #7
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %d.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i8, i8* %w.addr, align 1
  %conv = zext i8 %5 to i64
  %cmp2 = icmp ult i64 %4, %conv
  br i1 %cmp2, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %6 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %d.addr, align 8
  %9 = load i64, i64* %j, align 8
  %mul = mul i64 %8, %9
  %add5 = add i64 %7, %mul
  %call6 = call i32 @mbedtls_mpi_get_bit(%struct.mbedtls_mpi* noundef %6, i64 noundef %add5) #5
  %10 = load i64, i64* %j, align 8
  %sh_prom = trunc i64 %10 to i32
  %shl = shl i32 %call6, %sh_prom
  %11 = load i8*, i8** %x.addr, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %13 to i32
  %or = or i32 %conv7, %shl
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %14 = load i64, i64* %j, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %15 = load i64, i64* %i, align 8
  %inc10 = add i64 %15, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond, !llvm.loop !33

for.end11:                                        ; preds = %for.cond
  store i8 0, i8* %c, align 1
  store i64 1, i64* %i, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc57, %for.end11
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %d.addr, align 8
  %cmp13 = icmp ule i64 %16, %17
  br i1 %cmp13, label %for.body15, label %for.end59

for.body15:                                       ; preds = %for.cond12
  %18 = load i8*, i8** %x.addr, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %19
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  %21 = load i8, i8* %c, align 1
  %conv18 = zext i8 %21 to i32
  %and = and i32 %conv17, %conv18
  %conv19 = trunc i32 %and to i8
  store i8 %conv19, i8* %cc, align 1
  %22 = load i8*, i8** %x.addr, align 8
  %23 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %24 to i32
  %25 = load i8, i8* %c, align 1
  %conv22 = zext i8 %25 to i32
  %xor = xor i32 %conv21, %conv22
  %conv23 = trunc i32 %xor to i8
  %26 = load i8*, i8** %x.addr, align 8
  %27 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %conv23, i8* %arrayidx24, align 1
  %28 = load i8, i8* %cc, align 1
  store i8 %28, i8* %c, align 1
  %29 = load i8*, i8** %x.addr, align 8
  %30 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %29, i64 %30
  %31 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %31 to i32
  %and27 = and i32 %conv26, 1
  %sub = sub nsw i32 1, %and27
  %conv28 = trunc i32 %sub to i8
  store i8 %conv28, i8* %adjust, align 1
  %32 = load i8*, i8** %x.addr, align 8
  %33 = load i64, i64* %i, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %32, i64 %33
  %34 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %34 to i32
  %35 = load i8*, i8** %x.addr, align 8
  %36 = load i64, i64* %i, align 8
  %sub31 = sub i64 %36, 1
  %arrayidx32 = getelementptr inbounds i8, i8* %35, i64 %sub31
  %37 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %37 to i32
  %38 = load i8, i8* %adjust, align 1
  %conv34 = zext i8 %38 to i32
  %mul35 = mul nsw i32 %conv33, %conv34
  %and36 = and i32 %conv30, %mul35
  %39 = load i8, i8* %c, align 1
  %conv37 = zext i8 %39 to i32
  %or38 = or i32 %conv37, %and36
  %conv39 = trunc i32 %or38 to i8
  store i8 %conv39, i8* %c, align 1
  %40 = load i8*, i8** %x.addr, align 8
  %41 = load i64, i64* %i, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %42 to i32
  %43 = load i8*, i8** %x.addr, align 8
  %44 = load i64, i64* %i, align 8
  %sub42 = sub i64 %44, 1
  %arrayidx43 = getelementptr inbounds i8, i8* %43, i64 %sub42
  %45 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %45 to i32
  %46 = load i8, i8* %adjust, align 1
  %conv45 = zext i8 %46 to i32
  %mul46 = mul nsw i32 %conv44, %conv45
  %xor47 = xor i32 %conv41, %mul46
  %conv48 = trunc i32 %xor47 to i8
  %47 = load i8*, i8** %x.addr, align 8
  %48 = load i64, i64* %i, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %conv48, i8* %arrayidx49, align 1
  %49 = load i8, i8* %adjust, align 1
  %conv50 = zext i8 %49 to i32
  %shl51 = shl i32 %conv50, 7
  %50 = load i8*, i8** %x.addr, align 8
  %51 = load i64, i64* %i, align 8
  %sub52 = sub i64 %51, 1
  %arrayidx53 = getelementptr inbounds i8, i8* %50, i64 %sub52
  %52 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %52 to i32
  %or55 = or i32 %conv54, %shl51
  %conv56 = trunc i32 %or55 to i8
  store i8 %conv56, i8* %arrayidx53, align 1
  br label %for.inc57

for.inc57:                                        ; preds = %for.body15
  %53 = load i64, i64* %i, align 8
  %inc58 = add i64 %53, 1
  store i64 %inc58, i64* %i, align 8
  br label %for.cond12, !llvm.loop !34

for.end59:                                        ; preds = %for.cond12
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_select_comb(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %R, %struct.mbedtls_ecp_point* noundef %T, i8 noundef zeroext %T_size, i8 noundef zeroext %i) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %R.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %T.addr = alloca %struct.mbedtls_ecp_point*, align 8
  %T_size.addr = alloca i8, align 1
  %i.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %ii = alloca i8, align 1
  %j = alloca i8, align 1
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_ecp_point* %R, %struct.mbedtls_ecp_point** %R.addr, align 8
  store %struct.mbedtls_ecp_point* %T, %struct.mbedtls_ecp_point** %T.addr, align 8
  store i8 %T_size, i8* %T_size.addr, align 1
  store i8 %i, i8* %i.addr, align 1
  store i32 -110, i32* %ret, align 4
  %0 = load i8, i8* %i.addr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 127
  %shr = lshr i32 %and, 1
  %conv1 = trunc i32 %shr to i8
  store i8 %conv1, i8* %ii, align 1
  store i8 0, i8* %j, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8, i8* %j, align 1
  %conv2 = zext i8 %1 to i32
  %2 = load i8, i8* %T_size.addr, align 1
  %conv3 = zext i8 %2 to i32
  %cmp = icmp slt i32 %conv2, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %X = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %3, i32 0, i32 0
  %4 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %5 = load i8, i8* %j, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %4, i64 %idxprom
  %X5 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %arrayidx, i32 0, i32 0
  %6 = load i8, i8* %j, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i8, i8* %ii, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  %conv9 = zext i1 %cmp8 to i32
  %conv10 = trunc i32 %conv9 to i8
  %call = call i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %X5, i8 noundef zeroext %conv10) #5
  store i32 %call, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %8 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Y = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %8, i32 0, i32 1
  %9 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %T.addr, align 8
  %10 = load i8, i8* %j, align 1
  %idxprom14 = zext i8 %10 to i64
  %arrayidx15 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %9, i64 %idxprom14
  %Y16 = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %arrayidx15, i32 0, i32 1
  %11 = load i8, i8* %j, align 1
  %conv17 = zext i8 %11 to i32
  %12 = load i8, i8* %ii, align 1
  %conv18 = zext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv17, %conv18
  %conv20 = zext i1 %cmp19 to i32
  %conv21 = trunc i32 %conv20 to i8
  %call22 = call i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* noundef %Y, %struct.mbedtls_mpi* noundef %Y16, i8 noundef zeroext %conv21) #5
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body13
  br label %cleanup

if.end26:                                         ; preds = %do.body13
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %for.inc

for.inc:                                          ; preds = %do.end27
  %13 = load i8, i8* %j, align 1
  %inc = add i8 %13, 1
  store i8 %inc, i8* %j, align 1
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  br label %do.body28

do.body28:                                        ; preds = %for.end
  %14 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %15 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %16 = load i8, i8* %i.addr, align 1
  %conv29 = zext i8 %16 to i32
  %shr30 = ashr i32 %conv29, 7
  %conv31 = trunc i32 %shr30 to i8
  %call32 = call i32 @ecp_safe_invert_jac(%struct.mbedtls_ecp_group* noundef %14, %struct.mbedtls_ecp_point* noundef %15, i8 noundef zeroext %conv31) #5
  store i32 %call32, i32* %ret, align 4
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body28
  br label %cleanup

if.end36:                                         ; preds = %do.body28
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  %17 = load %struct.mbedtls_ecp_point*, %struct.mbedtls_ecp_point** %R.addr, align 8
  %Z = getelementptr inbounds %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point* %17, i32 0, i32 2
  %call39 = call i32 @mbedtls_mpi_lset(%struct.mbedtls_mpi* noundef %Z, i64 noundef 1) #5
  store i32 %call39, i32* %ret, align 4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body38
  br label %cleanup

if.end43:                                         ; preds = %do.body38
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then42, %if.then35, %if.then25, %if.then
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_check_bad_points_mx(%struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %P, i32 noundef %grp_id) #0 {
entry:
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %P.addr = alloca %struct.mbedtls_mpi*, align 8
  %grp_id.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %XmP = alloca %struct.mbedtls_mpi, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %P, %struct.mbedtls_mpi** %P.addr, align 8
  store i32 %grp_id, i32* %grp_id.addr, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %XmP) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef %0) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %do.end8, %do.end
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call1 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef %1) #5
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body3

do.body3:                                         ; preds = %while.body
  %2 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call4 = call i32 @mbedtls_mpi_sub_mpi(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef %2) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.body3
  br label %cleanup

if.end7:                                          ; preds = %do.body3
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  %call9 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %XmP, i64 noundef 1) #5
  %cmp10 = icmp sle i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.end
  store i32 -19584, i32* %ret, align 4
  br label %cleanup

if.end12:                                         ; preds = %while.end
  %3 = load i32, i32* %grp_id.addr, align 4
  %cmp13 = icmp eq i32 %3, 9
  br i1 %cmp13, label %if.then14, label %if.end23

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef @ecp_x25519_bad_point_1) #5
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  store i32 -19584, i32* %ret, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %call19 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef @ecp_x25519_bad_point_2) #5
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 -19584, i32* %ret, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end12
  br label %do.body24

do.body24:                                        ; preds = %if.end23
  %call25 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef %XmP, i64 noundef 1) #5
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %do.body24
  br label %cleanup

if.end28:                                         ; preds = %do.body24
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  %4 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %P.addr, align 8
  %call30 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %XmP, %struct.mbedtls_mpi* noundef %4) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.end29
  store i32 -19584, i32* %ret, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.end29
  store i32 0, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then27, %if.then21, %if.then17, %if.then11, %if.then6, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %XmP) #5
  %5 = load i32, i32* %ret, align 4
  ret i32 %5
}

declare dso_local i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_mpi_sub_int_mod(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %X, %struct.mbedtls_mpi* noundef %A, i64 noundef %c) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %X.addr = alloca %struct.mbedtls_mpi*, align 8
  %A.addr = alloca %struct.mbedtls_mpi*, align 8
  %c.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %X, %struct.mbedtls_mpi** %X.addr, align 8
  store %struct.mbedtls_mpi* %A, %struct.mbedtls_mpi** %A.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32 -110, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %1 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %A.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %call = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %0, %struct.mbedtls_mpi* noundef %1, i64 noundef %2) #5
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
  br label %while.cond

while.cond:                                       ; preds = %do.end10, %do.body1
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %s = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %3, i32 0, i32 0
  %4 = load i32, i32* %s, align 8
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %call3 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %5, i64 noundef 0) #5
  %cmp4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body5

do.body5:                                         ; preds = %while.body
  %7 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %8 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %X.addr, align 8
  %9 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %P = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %9, i32 0, i32 1
  %call6 = call i32 @mbedtls_mpi_add_mpi(%struct.mbedtls_mpi* noundef %7, %struct.mbedtls_mpi* noundef %8, %struct.mbedtls_mpi* noundef %P) #5
  store i32 %call6, i32* %ret, align 4
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body5
  br label %cleanup

if.end9:                                          ; preds = %do.body5
  br label %do.end10

do.end10:                                         ; preds = %if.end9
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %land.end
  br label %do.end11

do.end11:                                         ; preds = %while.end
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.then8, %if.then
  %10 = load i32, i32* %ret, align 4
  ret i32 %10
}

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.mbedtls_mpi* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_shift_r(%struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_test_adjust_exponent(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_mpi* noundef %m) #0 {
entry:
  %grp.addr = alloca %struct.mbedtls_ecp_group*, align 8
  %m.addr = alloca %struct.mbedtls_mpi*, align 8
  %ret = alloca i32, align 4
  store %struct.mbedtls_ecp_group* %grp, %struct.mbedtls_ecp_group** %grp.addr, align 8
  store %struct.mbedtls_mpi* %m, %struct.mbedtls_mpi** %m.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  switch i32 %1, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %2 = load %struct.mbedtls_ecp_group*, %struct.mbedtls_ecp_group** %grp.addr, align 8
  %3 = load %struct.mbedtls_mpi*, %struct.mbedtls_mpi** %m.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default
  %4 = load i32, i32* %ret, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
