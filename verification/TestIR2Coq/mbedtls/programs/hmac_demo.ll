; ModuleID = 'psa/hmac_demo.c'
source_filename = "psa/hmac_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.psa_mac_operation_s = type { i32, i8, i8, %union.psa_driver_mac_context_t }
%union.psa_driver_mac_context_t = type { %struct.mbedtls_psa_mac_operation_t }
%struct.mbedtls_psa_mac_operation_t = type { i32, %union.anon }
%union.anon = type { %struct.mbedtls_psa_hmac_operation_t }
%struct.mbedtls_psa_hmac_operation_t = type { i32, %struct.psa_hash_operation_s, [128 x i8] }
%struct.psa_hash_operation_s = type { i32, %union.psa_driver_hash_context_t }
%union.psa_driver_hash_context_t = type { %struct.mbedtls_psa_hash_operation_t }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }

@msg1_part1 = dso_local constant [2 x i8] c"\01\02", align 1
@msg1_part2 = dso_local constant [2 x i8] c"\03\04", align 1
@msg2_part1 = dso_local constant [2 x i8] c"\05\05", align 1
@msg2_part2 = dso_local constant [2 x i8] c"\06\06", align 1
@key_bytes = dso_local constant [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error %d at line %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"psa_mac_sign_setup( &op, key, alg )\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"psa_mac_update( &op, msg1_part1, sizeof( msg1_part1 ) )\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"psa_mac_update( &op, msg1_part2, sizeof( msg1_part2 ) )\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"psa_mac_sign_finish( &op, out, sizeof( out ), &out_len )\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"msg1\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"psa_mac_update( &op, msg2_part1, sizeof( msg2_part1 ) )\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"psa_mac_update( &op, msg2_part2, sizeof( msg2_part2 ) )\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"msg2\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"psa_crypto_init( )\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"hmac_demo()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_buf(i8* noundef %title, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %title.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #3
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %buf.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %conv) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_demo() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %alg = alloca i32, align 4
  %out = alloca [64 x i8], align 16
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key = alloca i32, align 4
  %op = alloca %struct.psa_mac_operation_s, align 8
  %out_len = alloca i64, align 8
  store i32 58720265, i32* %alg, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i32 0, i32* %key, align 4
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 1024) #3
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 58720265) #3
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 4352) #3
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef 256) #3
  %call = call i32 @psa_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @key_bytes, i64 0, i64 0), i64 noundef 32, i32* noundef %key) #3
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.psa_mac_operation_s* %op to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 384, i1 false)
  %4 = bitcast i8* %3 to { i32, i8, i8, { i32, [372 x i8] } }*
  %5 = getelementptr inbounds { i32, i8, i8, { i32, [372 x i8] } }, { i32, i8, i8, { i32, [372 x i8] } }* %4, i32 0, i32 3
  store i64 0, i64* %out_len, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load i32, i32* %key, align 4
  %call1 = call i32 @psa_mac_sign_setup(%struct.psa_mac_operation_s* noundef %op, i32 noundef %6, i32 noundef 58720265) #3
  store i32 %call1, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %do.body
  %8 = load i32, i32* %status, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8, i32 noundef 131, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %exit

if.end5:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end5
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %call7 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %op, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg1_part1, i64 0, i64 0), i64 noundef 2) #3
  store i32 %call7, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.body6
  %10 = load i32, i32* %status, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %10, i32 noundef 132, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0)) #3
  br label %exit

if.end11:                                         ; preds = %do.body6
  br label %do.end12

do.end12:                                         ; preds = %if.end11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %call14 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %op, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg1_part2, i64 0, i64 0), i64 noundef 2) #3
  store i32 %call14, i32* %status, align 4
  %11 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.body13
  %12 = load i32, i32* %status, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12, i32 noundef 133, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %exit

if.end18:                                         ; preds = %do.body13
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %call21 = call i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %op, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %out_len) #3
  store i32 %call21, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp22 = icmp ne i32 %13, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %do.body20
  %14 = load i32, i32* %status, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %14, i32 noundef 134, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %exit

if.end25:                                         ; preds = %do.body20
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  %arraydecay27 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %15 = load i64, i64* %out_len, align 8
  call void @print_buf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef %arraydecay27, i64 noundef %15) #3
  br label %do.body28

do.body28:                                        ; preds = %do.end26
  %16 = load i32, i32* %key, align 4
  %call29 = call i32 @psa_mac_sign_setup(%struct.psa_mac_operation_s* noundef %op, i32 noundef %16, i32 noundef 58720265) #3
  store i32 %call29, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp30 = icmp ne i32 %17, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %do.body28
  %18 = load i32, i32* %status, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %18, i32 noundef 138, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #3
  br label %exit

if.end33:                                         ; preds = %do.body28
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %call36 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %op, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg2_part1, i64 0, i64 0), i64 noundef 2) #3
  store i32 %call36, i32* %status, align 4
  %19 = load i32, i32* %status, align 4
  %cmp37 = icmp ne i32 %19, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.body35
  %20 = load i32, i32* %status, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %20, i32 noundef 139, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %exit

if.end40:                                         ; preds = %do.body35
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  br label %do.body42

do.body42:                                        ; preds = %do.end41
  %call43 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %op, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @msg2_part2, i64 0, i64 0), i64 noundef 2) #3
  store i32 %call43, i32* %status, align 4
  %21 = load i32, i32* %status, align 4
  %cmp44 = icmp ne i32 %21, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %do.body42
  %22 = load i32, i32* %status, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %22, i32 noundef 140, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0)) #3
  br label %exit

if.end47:                                         ; preds = %do.body42
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %arraydecay50 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %call51 = call i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %op, i8* noundef %arraydecay50, i64 noundef 64, i64* noundef %out_len) #3
  store i32 %call51, i32* %status, align 4
  %23 = load i32, i32* %status, align 4
  %cmp52 = icmp ne i32 %23, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %do.body49
  %24 = load i32, i32* %status, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %24, i32 noundef 141, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0)) #3
  br label %exit

if.end55:                                         ; preds = %do.body49
  br label %do.end56

do.end56:                                         ; preds = %if.end55
  %arraydecay57 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  %25 = load i64, i64* %out_len, align 8
  call void @print_buf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef %arraydecay57, i64 noundef %25) #3
  br label %exit

exit:                                             ; preds = %do.end56, %if.then53, %if.then45, %if.then38, %if.then31, %if.then23, %if.then16, %if.then9, %if.then3
  %call58 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %op) #3
  %26 = load i32, i32* %key, align 4
  %call59 = call i32 @psa_destroy_key(i32 noundef %26) #3
  %arraydecay60 = getelementptr inbounds [64 x i8], [64 x i8]* %out, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay60, i64 noundef 64) #3
  %27 = load i32, i32* %status, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %usage_flags) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %usage_flags.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %usage_flags, i32* %usage_flags.addr, align 4
  call void @psa_extend_key_usage_flags(i32* noundef %usage_flags.addr) #3
  %0 = load i32, i32* %usage_flags.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 4
  %private_usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %private_policy, i32 0, i32 0
  store i32 %0, i32* %private_usage, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %alg) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %alg.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 4
  %private_alg = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %private_policy, i32 0, i32 1
  store i32 %0, i32* %private_alg, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext %type) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %type.addr = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %private_domain_parameters, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %type.addr, align 2
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %private_type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 0
  store i16 %2, i16* %private_type, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i16, i16* %type.addr, align 2
  %call = call i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef %4, i16 noundef zeroext %5, i8* noundef null, i64 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef %bits) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %bits.addr = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %cmp = icmp ugt i64 %0, 65528
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %private_bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core, i32 0, i32 1
  store i16 -1, i16* %private_bits, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %bits.addr, align 8
  %conv = trunc i64 %2 to i16
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %private_core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %private_bits2 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %private_core1, i32 0, i32 1
  store i16 %conv, i16* %private_bits2, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @psa_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32* noundef) #1

declare dso_local i32 @psa_mac_sign_setup(%struct.psa_mac_operation_s* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #1

declare dso_local i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef) #1

declare dso_local i32 @psa_destroy_key(i32 noundef) #1

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @psa_crypto_init() #3
  store i32 %call, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %status, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %1, i32 noundef 157, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #3
  br label %exit

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body2

do.body2:                                         ; preds = %do.end
  %call3 = call i32 @hmac_demo() #3
  store i32 %call3, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body2
  %3 = load i32, i32* %status, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %3, i32 noundef 160, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #3
  br label %exit

if.end7:                                          ; preds = %do.body2
  br label %do.end8

do.end8:                                          ; preds = %if.end7
  call void @mbedtls_psa_crypto_free() #3
  br label %exit

exit:                                             ; preds = %do.end8, %if.then5, %if.then
  %4 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %4, 0
  %5 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 0, i32 1
  ret i32 %cond
}

declare dso_local i32 @psa_crypto_init() #1

declare dso_local void @mbedtls_psa_crypto_free() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_extend_key_usage_flags(i32* noundef %usage_flags) #0 {
entry:
  %usage_flags.addr = alloca i32*, align 8
  store i32* %usage_flags, i32** %usage_flags.addr, align 8
  %0 = load i32*, i32** %usage_flags.addr, align 8
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %usage_flags.addr, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 1024
  store i32 %or, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %usage_flags.addr, align 8
  %5 = load i32, i32* %4, align 4
  %and1 = and i32 %5, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load i32*, i32** %usage_flags.addr, align 8
  %7 = load i32, i32* %6, align 4
  %or4 = or i32 %7, 2048
  store i32 %or4, i32* %6, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

declare dso_local i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef, i16 noundef zeroext, i8* noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
