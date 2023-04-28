; ModuleID = 'psa_crypto_ecp.c'
source_filename = "psa_crypto_ecp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.mbedtls_ecp_curve_info = type { i32, i16, i16, i8* }
%struct.mbedtls_md_info_t = type { i8*, i32, i8, i8 }

@mbedtls_psa_random_state = external dso_local constant %struct.mbedtls_ctr_drbg_context*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %type, i64 noundef %curve_bits, i8* noundef %data, i64 noundef %data_length, %struct.mbedtls_ecp_keypair** noundef %p_ecp) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %curve_bits.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %p_ecp.addr = alloca %struct.mbedtls_ecp_keypair**, align 8
  %grp_id = alloca i32, align 4
  %status = alloca i32, align 4
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %curve_bytes = alloca i64, align 8
  %explicit_bits = alloca i32, align 4
  store i16 %type, i16* %type.addr, align 2
  store i64 %curve_bits, i64* %curve_bits.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store %struct.mbedtls_ecp_keypair** %p_ecp, %struct.mbedtls_ecp_keypair*** %p_ecp.addr, align 8
  store i32 0, i32* %grp_id, align 4
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %0 = load i64, i64* %data_length.addr, align 8
  store i64 %0, i64* %curve_bytes, align 8
  %1 = load i64, i64* %curve_bits.addr, align 8
  %cmp = icmp ne i64 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %explicit_bits, align 4
  %2 = load i16, i16* %type.addr, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 28672
  %cmp2 = icmp eq i32 %and, 16384
  br i1 %cmp2, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %entry
  %3 = load i16, i16* %type.addr, align 2
  %conv4 = zext i16 %3 to i32
  %and5 = and i32 %conv4, -12289
  %and6 = and i32 %and5, -256
  %cmp7 = icmp eq i32 %and6, 16640
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i16, i16* %type.addr, align 2
  %conv9 = zext i16 %4 to i32
  %and10 = and i32 %conv9, 255
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and10, %cond.true ], [ 0, %cond.false ]
  %conv11 = trunc i32 %cond to i8
  %conv12 = zext i8 %conv11 to i32
  %cmp13 = icmp ne i32 %conv12, 65
  br i1 %cmp13, label %if.then, label %if.end19

if.then:                                          ; preds = %cond.end
  %5 = load i64, i64* %data_length.addr, align 8
  %and15 = and i64 %5, 1
  %cmp16 = icmp eq i64 %and15, 0
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i64, i64* %data_length.addr, align 8
  %div = udiv i64 %6, 2
  store i64 %div, i64* %curve_bytes, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end, %cond.end, %entry
  %7 = load i32, i32* %explicit_bits, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end19
  %8 = load i64, i64* %curve_bytes, align 8
  %9 = load i64, i64* %curve_bits.addr, align 8
  %add = add i64 %9, 7
  %div21 = udiv i64 %add, 8
  %cmp22 = icmp ne i64 %8, %div21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  store i32 -135, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then20
  br label %if.end26

if.else:                                          ; preds = %if.end19
  %10 = load i64, i64* %curve_bytes, align 8
  %mul = mul i64 %10, 8
  store i64 %mul, i64* %curve_bits.addr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end25
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 344) #3
  %11 = bitcast i8* %call to %struct.mbedtls_ecp_keypair*
  store %struct.mbedtls_ecp_keypair* %11, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %12 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %cmp27 = icmp eq %struct.mbedtls_ecp_keypair* %12, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i32 -141, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end26
  %13 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef %13) #4
  %14 = load i16, i16* %type.addr, align 2
  %conv31 = zext i16 %14 to i32
  %and32 = and i32 %conv31, -12289
  %and33 = and i32 %and32, -256
  %cmp34 = icmp eq i32 %and33, 16640
  br i1 %cmp34, label %cond.true36, label %cond.false39

cond.true36:                                      ; preds = %if.end30
  %15 = load i16, i16* %type.addr, align 2
  %conv37 = zext i16 %15 to i32
  %and38 = and i32 %conv37, 255
  br label %cond.end40

cond.false39:                                     ; preds = %if.end30
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true36
  %cond41 = phi i32 [ %and38, %cond.true36 ], [ 0, %cond.false39 ]
  %conv42 = trunc i32 %cond41 to i8
  %16 = load i64, i64* %curve_bits.addr, align 8
  %17 = load i32, i32* %explicit_bits, align 4
  %tobool43 = icmp ne i32 %17, 0
  %lnot = xor i1 %tobool43, true
  %lnot.ext = zext i1 %lnot to i32
  %call44 = call i32 @mbedtls_ecc_group_of_psa(i8 noundef zeroext %conv42, i64 noundef %16, i32 noundef %lnot.ext) #4
  store i32 %call44, i32* %grp_id, align 4
  %18 = load i32, i32* %grp_id, align 4
  %cmp45 = icmp eq i32 %18, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %cond.end40
  store i32 -134, i32* %status, align 4
  br label %exit

if.end48:                                         ; preds = %cond.end40
  %19 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %19, i32 0, i32 0
  %20 = load i32, i32* %grp_id, align 4
  %call49 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %grp, i32 noundef %20) #4
  %call50 = call i32 @mbedtls_to_psa_error(i32 noundef %call49) #4
  store i32 %call50, i32* %status, align 4
  %21 = load i32, i32* %status, align 4
  %cmp51 = icmp ne i32 %21, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end48
  br label %exit

if.end54:                                         ; preds = %if.end48
  %22 = load i16, i16* %type.addr, align 2
  %conv55 = zext i16 %22 to i32
  %and56 = and i32 %conv55, 28672
  %cmp57 = icmp eq i32 %and56, 16384
  br i1 %cmp57, label %if.then59, label %if.else75

if.then59:                                        ; preds = %if.end54
  %23 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp60 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %24, i32 0, i32 2
  %25 = load i8*, i8** %data.addr, align 8
  %26 = load i64, i64* %data_length.addr, align 8
  %call61 = call i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef %grp60, %struct.mbedtls_ecp_point* noundef %Q, i8* noundef %25, i64 noundef %26) #4
  %call62 = call i32 @mbedtls_to_psa_error(i32 noundef %call61) #4
  store i32 %call62, i32* %status, align 4
  %27 = load i32, i32* %status, align 4
  %cmp63 = icmp ne i32 %27, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then59
  br label %exit

if.end66:                                         ; preds = %if.then59
  %28 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp67 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %28, i32 0, i32 0
  %29 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %Q68 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %29, i32 0, i32 2
  %call69 = call i32 @mbedtls_ecp_check_pubkey(%struct.mbedtls_ecp_group* noundef %grp67, %struct.mbedtls_ecp_point* noundef %Q68) #4
  %call70 = call i32 @mbedtls_to_psa_error(i32 noundef %call69) #4
  store i32 %call70, i32* %status, align 4
  %30 = load i32, i32* %status, align 4
  %cmp71 = icmp ne i32 %30, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end66
  br label %exit

if.end74:                                         ; preds = %if.end66
  br label %if.end83

if.else75:                                        ; preds = %if.end54
  %31 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp76 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %31, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp76, i32 0, i32 0
  %32 = load i32, i32* %id, align 8
  %33 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %34 = load i8*, i8** %data.addr, align 8
  %35 = load i64, i64* %data_length.addr, align 8
  %call77 = call i32 @mbedtls_ecp_read_key(i32 noundef %32, %struct.mbedtls_ecp_keypair* noundef %33, i8* noundef %34, i64 noundef %35) #4
  %call78 = call i32 @mbedtls_to_psa_error(i32 noundef %call77) #4
  store i32 %call78, i32* %status, align 4
  %36 = load i32, i32* %status, align 4
  %cmp79 = icmp ne i32 %36, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.else75
  br label %exit

if.end82:                                         ; preds = %if.else75
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end74
  %37 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %38 = load %struct.mbedtls_ecp_keypair**, %struct.mbedtls_ecp_keypair*** %p_ecp.addr, align 8
  store %struct.mbedtls_ecp_keypair* %37, %struct.mbedtls_ecp_keypair** %38, align 8
  br label %exit

exit:                                             ; preds = %if.end83, %if.then81, %if.then73, %if.then65, %if.then53, %if.then47
  %39 = load i32, i32* %status, align 4
  %cmp84 = icmp ne i32 %39, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %exit
  %40 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %40) #4
  %41 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %42 = bitcast %struct.mbedtls_ecp_keypair* %41 to i8*
  call void @free(i8* noundef %42) #3
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %exit
  %43 = load i32, i32* %status, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then29, %if.then24, %if.then18
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

declare dso_local void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef) #2

declare dso_local i32 @mbedtls_ecc_group_of_psa(i8 noundef zeroext, i64 noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_to_psa_error(i32 noundef) #2

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ecp_point_read_binary(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecp_check_pubkey(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef) #2

declare dso_local i32 @mbedtls_ecp_read_key(i32 noundef, %struct.mbedtls_ecp_keypair* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecp_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_length, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length, i64* noundef %bits) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i64* %bits, i64** %bits.addr, align 8
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %bits2 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 1
  %3 = load i16, i16* %bits2, align 2
  %conv = zext i16 %3 to i64
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %1, i64 noundef %conv, i8* noundef %4, i64 noundef %5, %struct.mbedtls_ecp_keypair** noundef %ecp) #4
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %7 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core4 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %7, i32 0, i32 0
  %type5 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core4, i32 0, i32 0
  %8 = load i16, i16* %type5, align 8
  %conv6 = zext i16 %8 to i32
  %and = and i32 %conv6, -12289
  %and7 = and i32 %and, -256
  %cmp8 = icmp eq i32 %and7, 16640
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core10 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %9, i32 0, i32 0
  %type11 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core10, i32 0, i32 0
  %10 = load i16, i16* %type11, align 8
  %conv12 = zext i16 %10 to i32
  %and13 = and i32 %conv12, 255
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and13, %cond.true ], [ 0, %cond.false ]
  %conv14 = trunc i32 %cond to i8
  %conv15 = zext i8 %conv14 to i32
  %cmp16 = icmp eq i32 %conv15, 65
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %cond.end
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %11, i32 0, i32 0
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 7
  %12 = load i64, i64* %nbits, align 8
  %add = add i64 %12, 1
  %13 = load i64*, i64** %bits.addr, align 8
  store i64 %add, i64* %13, align 8
  br label %if.end21

if.else:                                          ; preds = %cond.end
  %14 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp19 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %14, i32 0, i32 0
  %nbits20 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp19, i32 0, i32 7
  %15 = load i64, i64* %nbits20, align 8
  %16 = load i64*, i64** %bits.addr, align 8
  store i64 %15, i64* %16, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %17 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core22 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %17, i32 0, i32 0
  %type23 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core22, i32 0, i32 0
  %18 = load i16, i16* %type23, align 8
  %19 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %20 = load i8*, i8** %key_buffer.addr, align 8
  %21 = load i64, i64* %key_buffer_size.addr, align 8
  %22 = load i64*, i64** %key_buffer_length.addr, align 8
  %call24 = call i32 @mbedtls_psa_ecp_export_key(i16 noundef zeroext %18, %struct.mbedtls_ecp_keypair* noundef %19, i8* noundef %20, i64 noundef %21, i64* noundef %22) #4
  store i32 %call24, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end21, %if.then
  %23 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %23) #4
  %24 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %25 = bitcast %struct.mbedtls_ecp_keypair* %24 to i8*
  call void @free(i8* noundef %25) #3
  %26 = load i32, i32* %status, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecp_export_key(i16 noundef zeroext %type, %struct.mbedtls_ecp_keypair* noundef %ecp, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %ecp.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store i16 %type, i16* %type.addr, align 2
  store %struct.mbedtls_ecp_keypair* %ecp, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 28672
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 2
  %call = call i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef %Q) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %2 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %2, i32 0, i32 0
  %3 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %Q3 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %3, i32 0, i32 2
  %4 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %4, i32 0, i32 1
  %5 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %grp4 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %5, i32 0, i32 0
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp4, i32 0, i32 4
  %6 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %7 = bitcast %struct.mbedtls_ctr_drbg_context* %6 to i8*
  %call5 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp, %struct.mbedtls_ecp_point* noundef %Q3, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %7) #4
  %call6 = call i32 @mbedtls_to_psa_error(i32 noundef %call5) #4
  store i32 %call6, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then2
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %10 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %grp11 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %10, i32 0, i32 0
  %11 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %Q12 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %11, i32 0, i32 2
  %12 = load i64*, i64** %data_length.addr, align 8
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i64, i64* %data_size.addr, align 8
  %call13 = call i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef %grp11, %struct.mbedtls_ecp_point* noundef %Q12, i32 noundef 0, i64* noundef %12, i8* noundef %13, i64 noundef %14) #4
  %call14 = call i32 @mbedtls_to_psa_error(i32 noundef %call13) #4
  store i32 %call14, i32* %status, align 4
  %15 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  %16 = load i8*, i8** %data.addr, align 8
  %17 = load i64, i64* %data_size.addr, align 8
  %call18 = call i8* @memset(i8* noundef %16, i32 noundef 0, i64 noundef %17) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end10
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %19 = load i64, i64* %data_size.addr, align 8
  %20 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %grp20 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %20, i32 0, i32 0
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp20, i32 0, i32 7
  %21 = load i64, i64* %nbits, align 8
  %add = add i64 %21, 7
  %div = udiv i64 %add, 8
  %cmp21 = icmp ult i64 %19, %div
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  store i32 -138, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.else
  %22 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %23 = load i8*, i8** %data.addr, align 8
  %24 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %grp25 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %24, i32 0, i32 0
  %nbits26 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp25, i32 0, i32 7
  %25 = load i64, i64* %nbits26, align 8
  %add27 = add i64 %25, 7
  %div28 = udiv i64 %add27, 8
  %call29 = call i32 @mbedtls_ecp_write_key(%struct.mbedtls_ecp_keypair* noundef %22, i8* noundef %23, i64 noundef %div28) #4
  %call30 = call i32 @mbedtls_to_psa_error(i32 noundef %call29) #4
  store i32 %call30, i32* %status, align 4
  %26 = load i32, i32* %status, align 4
  %cmp31 = icmp eq i32 %26, 0
  br i1 %cmp31, label %if.then33, label %if.else38

if.then33:                                        ; preds = %if.end24
  %27 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp.addr, align 8
  %grp34 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %27, i32 0, i32 0
  %nbits35 = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp34, i32 0, i32 7
  %28 = load i64, i64* %nbits35, align 8
  %add36 = add i64 %28, 7
  %div37 = udiv i64 %add36, 8
  %29 = load i64*, i64** %data_length.addr, align 8
  store i64 %div37, i64* %29, align 8
  br label %if.end40

if.else38:                                        ; preds = %if.end24
  %30 = load i8*, i8** %data.addr, align 8
  %31 = load i64, i64* %data_size.addr, align 8
  %call39 = call i8* @memset(i8* noundef %30, i32 noundef 0, i64 noundef %31) #3
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then33
  %32 = load i32, i32* %status, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then23, %if.end19, %if.then9
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef) #2

declare dso_local i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_ecp_point* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecp_point_write_binary(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_ecp_point* noundef, i32 noundef, i64* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @mbedtls_ecp_write_key(%struct.mbedtls_ecp_keypair* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecp_export_public_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 1
  %3 = load i16, i16* %bits, align 2
  %conv = zext i16 %3 to i64
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %1, i64 noundef %conv, i8* noundef %4, i64 noundef %5, %struct.mbedtls_ecp_keypair** noundef %ecp) #4
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core3 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 0
  %type4 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core3, i32 0, i32 0
  %9 = load i16, i16* %type4, align 8
  %conv5 = zext i16 %9 to i32
  %and = and i32 %conv5, -12289
  %and6 = and i32 %and, -256
  %cmp7 = icmp eq i32 %and6, 16640
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core9 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %10, i32 0, i32 0
  %type10 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core9, i32 0, i32 0
  %11 = load i16, i16* %type10, align 8
  %conv11 = zext i16 %11 to i32
  %and12 = and i32 %conv11, 255
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and12, %cond.true ], [ 0, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  %conv14 = zext i8 %conv13 to i32
  %or = or i32 16640, %conv14
  %conv15 = trunc i32 %or to i16
  %12 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i64, i64* %data_size.addr, align 8
  %15 = load i64*, i64** %data_length.addr, align 8
  %call16 = call i32 @mbedtls_psa_ecp_export_key(i16 noundef zeroext %conv15, %struct.mbedtls_ecp_keypair* noundef %12, i8* noundef %13, i64 noundef %14, i64* noundef %15) #4
  store i32 %call16, i32* %status, align 4
  %16 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %16) #4
  %17 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %18 = bitcast %struct.mbedtls_ecp_keypair* %17 to i8*
  call void @free(i8* noundef %18) #3
  %19 = load i32, i32* %status, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecp_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %curve = alloca i8, align 1
  %grp_id = alloca i32, align 4
  %curve_info = alloca %struct.mbedtls_ecp_curve_info*, align 8
  %ecp = alloca %struct.mbedtls_ecp_keypair, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, -12289
  %and1 = and i32 %and, -256
  %cmp = icmp eq i32 %and1, 16640
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core3 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %type4 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core3, i32 0, i32 0
  %3 = load i16, i16* %type4, align 8
  %conv5 = zext i16 %3 to i32
  %and6 = and i32 %conv5, 255
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and6, %cond.true ], [ 0, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  store i8 %conv7, i8* %curve, align 1
  %4 = load i8, i8* %curve, align 1
  %5 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core8 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %5, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core8, i32 0, i32 1
  %6 = load i16, i16* %bits, align 2
  %conv9 = zext i16 %6 to i64
  %call = call i32 @mbedtls_ecc_group_of_psa(i8 noundef zeroext %4, i64 noundef %conv9, i32 noundef 0) #4
  store i32 %call, i32* %grp_id, align 4
  %7 = load i32, i32* %grp_id, align 4
  %call10 = call %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef %7) #4
  store %struct.mbedtls_ecp_curve_info* %call10, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 2
  %9 = load i64, i64* %domain_parameters_size, align 8
  %cmp11 = icmp ne i64 %9, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load i32, i32* %grp_id, align 4
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.mbedtls_ecp_curve_info*, %struct.mbedtls_ecp_curve_info** %curve_info, align 8
  %cmp15 = icmp eq %struct.mbedtls_ecp_curve_info* %11, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  call void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef %ecp) #4
  %12 = load i32, i32* %grp_id, align 4
  %13 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %14 = bitcast %struct.mbedtls_ctr_drbg_context* %13 to i8*
  %call19 = call i32 @mbedtls_ecp_gen_key(i32 noundef %12, %struct.mbedtls_ecp_keypair* noundef %ecp, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %14) #4
  store i32 %call19, i32* %ret, align 4
  %15 = load i32, i32* %ret, align 4
  %cmp20 = icmp ne i32 %15, 0
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %ecp) #4
  %16 = load i32, i32* %ret, align 4
  %call23 = call i32 @mbedtls_to_psa_error(i32 noundef %16) #4
  store i32 %call23, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end18
  %17 = load i8*, i8** %key_buffer.addr, align 8
  %18 = load i64, i64* %key_buffer_size.addr, align 8
  %call25 = call i32 @mbedtls_ecp_write_key(%struct.mbedtls_ecp_keypair* noundef %ecp, i8* noundef %17, i64 noundef %18) #4
  %call26 = call i32 @mbedtls_to_psa_error(i32 noundef %call25) #4
  store i32 %call26, i32* %status, align 4
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %ecp) #4
  %19 = load i32, i32* %status, align 4
  %cmp27 = icmp eq i32 %19, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  %20 = load i64, i64* %key_buffer_size.addr, align 8
  %21 = load i64*, i64** %key_buffer_length.addr, align 8
  store i64 %20, i64* %21, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then22, %if.then17, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local %struct.mbedtls_ecp_curve_info* @mbedtls_ecp_curve_info_from_grp_id(i32 noundef) #2

declare dso_local i32 @mbedtls_ecp_gen_key(i32 noundef, %struct.mbedtls_ecp_keypair* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecdsa_sign_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  %curve_bytes = alloca i64, align 8
  %r = alloca %struct.mbedtls_mpi, align 8
  %s = alloca %struct.mbedtls_mpi, align 8
  %hash_alg = alloca i32, align 4
  %md_info = alloca %struct.mbedtls_md_info_t*, align 8
  %md_alg = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %ecp, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 1
  %3 = load i16, i16* %bits, align 2
  %conv = zext i16 %3 to i64
  %4 = load i8*, i8** %key_buffer.addr, align 8
  %5 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %1, i64 noundef %conv, i8* noundef %4, i64 noundef %5, %struct.mbedtls_ecp_keypair** noundef %ecp) #4
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %8, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %9 = load i64, i64* %pbits, align 8
  %add = add i64 %9, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %curve_bytes, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %s) #4
  %10 = load i64, i64* %signature_size.addr, align 8
  %11 = load i64, i64* %curve_bytes, align 8
  %mul = mul i64 2, %11
  %cmp3 = icmp ult i64 %10, %mul
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -20224, i32* %ret, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = load i32, i32* %alg.addr, align 4
  %and = and i32 %12, 256
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %13 = load i32, i32* %alg.addr, align 4
  %and10 = and i32 %13, -256
  %cmp11 = icmp eq i32 %and10, 100664064
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %14 = load i32, i32* %alg.addr, align 4
  %and13 = and i32 %14, -256
  %cmp14 = icmp eq i32 %and13, 100668160
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %15 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %15, -256
  %cmp18 = icmp eq i32 %and17, 100663808
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %16 = load i32, i32* %alg.addr, align 4
  %and21 = and i32 %16, -256
  %and22 = and i32 %and21, -257
  %cmp23 = icmp eq i32 %and22, 100664832
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %17 = load i32, i32* %alg.addr, align 4
  %and26 = and i32 %17, -256
  %cmp27 = icmp eq i32 %and26, 100665600
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %18 = load i32, i32* %alg.addr, align 4
  %and30 = and i32 %18, -256
  %and31 = and i32 %and30, -257
  %cmp32 = icmp eq i32 %and31, 100664320
  br i1 %cmp32, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false20, %lor.lhs.false16, %lor.lhs.false, %if.then9
  %19 = load i32, i32* %alg.addr, align 4
  %and34 = and i32 %19, 255
  %cmp35 = icmp ne i32 %and34, 0
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %alg.addr, align 4
  %and37 = and i32 %20, 255
  %or = or i32 %and37, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %hash_alg, align 4
  %21 = load i32, i32* %hash_alg, align 4
  %call38 = call %struct.mbedtls_md_info_t* @mbedtls_md_info_from_psa(i32 noundef %21) #4
  store %struct.mbedtls_md_info_t* %call38, %struct.mbedtls_md_info_t** %md_info, align 8
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %md_info, align 8
  %call39 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef %22) #4
  store i32 %call39, i32* %md_alg, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end
  %23 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp40 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %23, i32 0, i32 0
  %24 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %24, i32 0, i32 1
  %25 = load i8*, i8** %hash.addr, align 8
  %26 = load i64, i64* %hash_length.addr, align 8
  %27 = load i32, i32* %md_alg, align 4
  %28 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %29 = bitcast %struct.mbedtls_ctr_drbg_context* %28 to i8*
  %call41 = call i32 @mbedtls_ecdsa_sign_det_ext(%struct.mbedtls_ecp_group* noundef %grp40, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d, i8* noundef %25, i64 noundef %26, i32 noundef %27, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %29) #4
  store i32 %call41, i32* %ret, align 4
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.body
  br label %cleanup

if.end45:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end45
  br label %if.end55

if.else:                                          ; preds = %if.end6
  %30 = load i32, i32* %alg.addr, align 4
  br label %do.body46

do.body46:                                        ; preds = %if.else
  %31 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp47 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %31, i32 0, i32 0
  %32 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %d48 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %32, i32 0, i32 1
  %33 = load i8*, i8** %hash.addr, align 8
  %34 = load i64, i64* %hash_length.addr, align 8
  %35 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %36 = bitcast %struct.mbedtls_ctr_drbg_context* %35 to i8*
  %call49 = call i32 @mbedtls_ecdsa_sign(%struct.mbedtls_ecp_group* noundef %grp47, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s, %struct.mbedtls_mpi* noundef %d48, i8* noundef %33, i64 noundef %34, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %36) #4
  store i32 %call49, i32* %ret, align 4
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body46
  br label %cleanup

if.end53:                                         ; preds = %do.body46
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %do.end
  br label %do.body56

do.body56:                                        ; preds = %if.end55
  %37 = load i8*, i8** %signature.addr, align 8
  %38 = load i64, i64* %curve_bytes, align 8
  %call57 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %r, i8* noundef %37, i64 noundef %38) #4
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body56
  br label %cleanup

if.end61:                                         ; preds = %do.body56
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %39 = load i8*, i8** %signature.addr, align 8
  %40 = load i64, i64* %curve_bytes, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %40
  %41 = load i64, i64* %curve_bytes, align 8
  %call64 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %s, i8* noundef %add.ptr, i64 noundef %41) #4
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body63
  br label %cleanup

if.end68:                                         ; preds = %do.body63
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.then67, %if.then60, %if.then52, %if.then44, %if.then5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %s) #4
  %42 = load i32, i32* %ret, align 4
  %cmp70 = icmp eq i32 %42, 0
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %cleanup
  %43 = load i64, i64* %curve_bytes, align 8
  %mul73 = mul i64 2, %43
  %44 = load i64*, i64** %signature_length.addr, align 8
  store i64 %mul73, i64* %44, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %cleanup
  %45 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %45) #4
  %46 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %47 = bitcast %struct.mbedtls_ecp_keypair* %46 to i8*
  call void @free(i8* noundef %47) #3
  %48 = load i32, i32* %ret, align 4
  %call75 = call i32 @mbedtls_to_psa_error(i32 noundef %48) #4
  store i32 %call75, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.then
  %49 = load i32, i32* %retval, align 4
  ret i32 %49
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

declare dso_local %struct.mbedtls_md_info_t* @mbedtls_md_info_from_psa(i32 noundef) #2

declare dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* noundef) #2

declare dso_local i32 @mbedtls_ecdsa_sign_det_ext(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef, i32 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_ecdsa_sign(%struct.mbedtls_ecp_group* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_ecdsa_verify_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ret = alloca i32, align 4
  %curve_bytes = alloca i64, align 8
  %r = alloca %struct.mbedtls_mpi, align 8
  %s = alloca %struct.mbedtls_mpi, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %ecp, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 1
  %4 = load i16, i16* %bits, align 2
  %conv = zext i16 %4 to i64
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %2, i64 noundef %conv, i8* noundef %5, i64 noundef %6, %struct.mbedtls_ecp_keypair** noundef %ecp) #4
  store i32 %call, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %9, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %10 = load i64, i64* %pbits, align 8
  %add = add i64 %10, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %curve_bytes, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %s) #4
  %11 = load i64, i64* %signature_length.addr, align 8
  %12 = load i64, i64* %curve_bytes, align 8
  %mul = mul i64 2, %12
  %cmp3 = icmp ne i64 %11, %mul
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -19968, i32* %ret, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end6
  %13 = load i8*, i8** %signature.addr, align 8
  %14 = load i64, i64* %curve_bytes, align 8
  %call7 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %r, i8* noundef %13, i64 noundef %14) #4
  store i32 %call7, i32* %ret, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body
  br label %cleanup

if.end11:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end11
  br label %do.body12

do.body12:                                        ; preds = %do.end
  %15 = load i8*, i8** %signature.addr, align 8
  %16 = load i64, i64* %curve_bytes, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i64, i64* %curve_bytes, align 8
  %call13 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %s, i8* noundef %add.ptr, i64 noundef %17) #4
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body12
  br label %cleanup

if.end17:                                         ; preds = %do.body12
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %18 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %18, i32 0, i32 2
  %call19 = call i32 @mbedtls_ecp_is_zero(%struct.mbedtls_ecp_point* noundef %Q) #4
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then20, label %if.end31

if.then20:                                        ; preds = %do.end18
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  %19 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp22 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %19, i32 0, i32 0
  %20 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %Q23 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %20, i32 0, i32 2
  %21 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %d = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %21, i32 0, i32 1
  %22 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp24 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %22, i32 0, i32 0
  %G = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp24, i32 0, i32 4
  %23 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** @mbedtls_psa_random_state, align 8
  %24 = bitcast %struct.mbedtls_ctr_drbg_context* %23 to i8*
  %call25 = call i32 @mbedtls_ecp_mul(%struct.mbedtls_ecp_group* noundef %grp22, %struct.mbedtls_ecp_point* noundef %Q23, %struct.mbedtls_mpi* noundef %d, %struct.mbedtls_ecp_point* noundef %G, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef %24) #4
  store i32 %call25, i32* %ret, align 4
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %do.body21
  br label %cleanup

if.end29:                                         ; preds = %do.body21
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.end18
  %25 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %grp32 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %25, i32 0, i32 0
  %26 = load i8*, i8** %hash.addr, align 8
  %27 = load i64, i64* %hash_length.addr, align 8
  %28 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %Q33 = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %28, i32 0, i32 2
  %call34 = call i32 @mbedtls_ecdsa_verify(%struct.mbedtls_ecp_group* noundef %grp32, i8* noundef %26, i64 noundef %27, %struct.mbedtls_ecp_point* noundef %Q33, %struct.mbedtls_mpi* noundef %r, %struct.mbedtls_mpi* noundef %s) #4
  store i32 %call34, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.then16, %if.then10, %if.then5
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %r) #4
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %s) #4
  %29 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %29) #4
  %30 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %31 = bitcast %struct.mbedtls_ecp_keypair* %30 to i8*
  call void @free(i8* noundef %31) #3
  %32 = load i32, i32* %ret, align 4
  %call35 = call i32 @mbedtls_to_psa_error(i32 noundef %32) #4
  store i32 %call35, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_ecdsa_verify(%struct.mbedtls_ecp_group* noundef, i8* noundef, i64 noundef, %struct.mbedtls_ecp_point* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
