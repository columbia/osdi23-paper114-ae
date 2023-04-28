; ModuleID = 'pk_wrap.c'
source_filename = "pk_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_pk_info_t = type { i32, i8*, i64 (i8*)*, i32 (i32)*, i32 (i8*, i32, i8*, i64, i8*, i64)*, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)*, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)*, i8* ()*, void (i8*)*, void (i8*, %struct.mbedtls_pk_debug_item*)* }
%struct.mbedtls_pk_debug_item = type { i32, i8*, i8* }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.mbedtls_pk_context = type { %struct.mbedtls_pk_info_t*, i8* }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_rsa_alt_context = type { i8*, i32 (i8*, i64*, i8*, i8*, i64)*, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)*, i64 (i8*)* }

@mbedtls_rsa_info = dso_local constant %struct.mbedtls_pk_info_t { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 (i8*)* @rsa_get_bitlen, i32 (i32)* @rsa_can_do, i32 (i8*, i32, i8*, i64, i8*, i64)* @rsa_verify_wrap, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)* @rsa_sign_wrap, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* @rsa_decrypt_wrap, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* @rsa_encrypt_wrap, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)* @rsa_check_pair_wrap, i8* ()* @rsa_alloc_wrap, void (i8*)* @rsa_free_wrap, void (i8*, %struct.mbedtls_pk_debug_item*)* @rsa_debug }, align 8
@.str = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@mbedtls_eckey_info = dso_local constant %struct.mbedtls_pk_info_t { i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i64 (i8*)* @eckey_get_bitlen, i32 (i32)* @eckey_can_do, i32 (i8*, i32, i8*, i64, i8*, i64)* @eckey_verify_wrap, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)* @eckey_sign_wrap, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)* @eckey_check_pair, i8* ()* @eckey_alloc_wrap, void (i8*)* @eckey_free_wrap, void (i8*, %struct.mbedtls_pk_debug_item*)* @eckey_debug }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"EC_DH\00", align 1
@mbedtls_eckeydh_info = dso_local constant %struct.mbedtls_pk_info_t { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 (i8*)* @eckey_get_bitlen, i32 (i32)* @eckeydh_can_do, i32 (i8*, i32, i8*, i64, i8*, i64)* null, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)* @eckey_check_pair, i8* ()* @eckey_alloc_wrap, void (i8*)* @eckey_free_wrap, void (i8*, %struct.mbedtls_pk_debug_item*)* @eckey_debug }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"ECDSA\00", align 1
@mbedtls_ecdsa_info = dso_local constant %struct.mbedtls_pk_info_t { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 (i8*)* @eckey_get_bitlen, i32 (i32)* @ecdsa_can_do, i32 (i8*, i32, i8*, i64, i8*, i64)* @ecdsa_verify_wrap, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)* @ecdsa_sign_wrap, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)* @eckey_check_pair, i8* ()* @ecdsa_alloc_wrap, void (i8*)* @ecdsa_free_wrap, void (i8*, %struct.mbedtls_pk_debug_item*)* @eckey_debug }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"RSA-alt\00", align 1
@mbedtls_rsa_alt_info = dso_local constant %struct.mbedtls_pk_info_t { i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 (i8*)* @rsa_alt_get_bitlen, i32 (i32)* @rsa_alt_can_do, i32 (i8*, i32, i8*, i64, i8*, i64)* null, i32 (i8*, i32, i8*, i64, i8*, i64, i64*, i32 (i8*, i8*, i64)*, i8*)* @rsa_alt_sign_wrap, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* @rsa_alt_decrypt_wrap, i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* null, i32 (i8*, i8*, i32 (i8*, i8*, i64)*, i8*)* @rsa_alt_check_pair, i8* ()* @rsa_alt_alloc_wrap, void (i8*)* @rsa_alt_free_wrap, void (i8*, %struct.mbedtls_pk_debug_item*)* null }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"rsa.N\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rsa.E\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"eckey.Q\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_error_from_psa(i32 noundef %status) #0 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 -136, label %sw.bb1
    i32 -133, label %sw.bb2
    i32 -138, label %sw.bb3
    i32 -134, label %sw.bb4
    i32 -135, label %sw.bb5
    i32 -141, label %sw.bb6
    i32 -137, label %sw.bb7
    i32 -145, label %sw.bb8
    i32 -147, label %sw.bb8
    i32 -152, label %sw.bb9
    i32 -153, label %sw.bb9
    i32 -146, label %sw.bb9
    i32 -151, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 -15616, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 -14464, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 -14720, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 -14976, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 -16256, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 -16000, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry, %entry
  store i32 -112, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry, %entry, %entry
  store i32 -15872, i32* %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  store i32 -110, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_error_from_psa_rsa(i32 noundef %status) #0 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -133, label %sw.bb
    i32 -135, label %sw.bb
    i32 -136, label %sw.bb
    i32 -138, label %sw.bb1
    i32 -148, label %sw.bb2
    i32 -149, label %sw.bb3
    i32 -150, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 -16512, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 -17408, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 -17536, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 -17280, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 -16640, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4
  %call = call i32 @mbedtls_pk_error_from_psa(i32 noundef %1) #5
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_psa_rsa_sign_ext(i32 noundef %alg, %struct.mbedtls_rsa_context* noundef %rsa_ctx, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %rsa_ctx.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  %key_id = alloca i32, align 4
  %status = alloca i32, align 4
  %key = alloca %struct.mbedtls_pk_context, align 8
  %key_len = alloca i32, align 4
  %buf = alloca [5679 x i8], align 16
  %pk_info = alloca %struct.mbedtls_pk_info_t, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store %struct.mbedtls_rsa_context* %rsa_ctx, %struct.mbedtls_rsa_context** %rsa_ctx.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  store i32 0, i32* %key_id, align 4
  %1 = bitcast %struct.mbedtls_pk_info_t* %pk_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.mbedtls_pk_info_t* @mbedtls_rsa_info to i8*), i64 96, i1 false)
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa_ctx.addr, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %2) #5
  %3 = load i64*, i64** %sig_len.addr, align 8
  store i64 %call, i64* %3, align 8
  %4 = load i64, i64* %sig_size.addr, align 8
  %5 = load i64*, i64** %sig_len.addr, align 8
  %6 = load i64, i64* %5, align 8
  %cmp = icmp ult i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -14464, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %pk_info1 = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %key, i32 0, i32 0
  store %struct.mbedtls_pk_info_t* %pk_info, %struct.mbedtls_pk_info_t** %pk_info1, align 8
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa_ctx.addr, align 8
  %8 = bitcast %struct.mbedtls_rsa_context* %7 to i8*
  %pk_ctx = getelementptr inbounds %struct.mbedtls_pk_context, %struct.mbedtls_pk_context* %key, i32 0, i32 1
  store i8* %8, i8** %pk_ctx, align 8
  %arraydecay = getelementptr inbounds [5679 x i8], [5679 x i8]* %buf, i64 0, i64 0
  %call2 = call i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef %key, i8* noundef %arraydecay, i64 noundef 5679) #5
  store i32 %call2, i32* %key_len, align 4
  %9 = load i32, i32* %key_len, align 4
  %cmp3 = icmp sle i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 4096) #5
  %10 = load i32, i32* %alg.addr, align 4
  call void @psa_set_key_algorithm(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %10) #5
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 28673) #5
  %arraydecay6 = getelementptr inbounds [5679 x i8], [5679 x i8]* %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay6, i64 5679
  %11 = load i32, i32* %key_len, align 4
  %idx.ext = sext i32 %11 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %12 = load i32, i32* %key_len, align 4
  %conv = sext i32 %12 to i64
  %call8 = call i32 @psa_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %add.ptr7, i64 noundef %conv, i32* noundef %key_id) #5
  store i32 %call8, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp9 = icmp ne i32 %13, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end5
  %14 = load i32, i32* %status, align 4
  %call12 = call i32 @mbedtls_pk_error_from_psa(i32 noundef %14) #5
  store i32 %call12, i32* %ret, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %15 = load i32, i32* %key_id, align 4
  %16 = load i32, i32* %alg.addr, align 4
  %17 = load i8*, i8** %hash.addr, align 8
  %18 = load i64, i64* %hash_len.addr, align 8
  %19 = load i8*, i8** %sig.addr, align 8
  %20 = load i64, i64* %sig_size.addr, align 8
  %21 = load i64*, i64** %sig_len.addr, align 8
  %call14 = call i32 @psa_sign_hash(i32 noundef %15, i32 noundef %16, i8* noundef %17, i64 noundef %18, i8* noundef %19, i64 noundef %20, i64* noundef %21) #5
  store i32 %call14, i32* %status, align 4
  %22 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %22, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %23 = load i32, i32* %status, align 4
  %call18 = call i32 @mbedtls_pk_error_from_psa_rsa(i32 noundef %23) #5
  store i32 %call18, i32* %ret, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  store i32 0, i32* %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then17, %if.then11
  %24 = load i32, i32* %key_id, align 4
  %call20 = call i32 @psa_destroy_key(i32 noundef %24) #5
  store i32 %call20, i32* %status, align 4
  %25 = load i32, i32* %ret, align 4
  %cmp21 = icmp eq i32 %25, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %cleanup
  %26 = load i32, i32* %status, align 4
  %cmp23 = icmp ne i32 %26, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  %27 = load i32, i32* %status, align 4
  %call26 = call i32 @mbedtls_pk_error_from_psa(i32 noundef %27) #5
  store i32 %call26, i32* %ret, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true, %cleanup
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then4, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef) #3

declare dso_local i32 @mbedtls_pk_write_key_der(%struct.mbedtls_pk_context* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %usage_flags) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %usage_flags.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %usage_flags, i32* %usage_flags.addr, align 4
  call void @psa_extend_key_usage_flags(i32* noundef %usage_flags.addr) #5
  %0 = load i32, i32* %usage_flags.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 4
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy, i32 0, i32 0
  store i32 %0, i32* %usage, align 4
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
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 4
  %alg1 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy, i32 0, i32 1
  store i32 %0, i32* %alg1, align 4
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
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %domain_parameters, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %type.addr, align 2
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  store i16 %2, i16* %type1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i16, i16* %type.addr, align 2
  %call = call i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef %4, i16 noundef zeroext %5, i8* noundef null, i64 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @psa_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32* noundef) #3

declare dso_local i32 @psa_sign_hash(i32 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #3

declare dso_local i32 @psa_destroy_key(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsa_get_bitlen(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %1, %struct.mbedtls_rsa_context** %rsa, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %2) #5
  %mul = mul i64 8, %call
  ret i64 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_can_do(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_verify_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %rsa_len = alloca i64, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_len, i64* %sig_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %1, %struct.mbedtls_rsa_context** %rsa, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %2) #5
  store i64 %call, i64* %rsa_len, align 8
  %3 = load i32, i32* %md_alg.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* %hash_len.addr, align 8
  %cmp1 = icmp ult i64 4294967295, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* %sig_len.addr, align 8
  %6 = load i64, i64* %rsa_len, align 8
  %cmp2 = icmp ult i64 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -17280, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %8 = load i32, i32* %md_alg.addr, align 4
  %9 = load i64, i64* %hash_len.addr, align 8
  %conv = trunc i64 %9 to i32
  %10 = load i8*, i8** %hash.addr, align 8
  %11 = load i8*, i8** %sig.addr, align 8
  %call5 = call i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef %7, i32 noundef %8, i32 noundef %conv, i8* noundef %10, i8* noundef %11) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %13 = load i64, i64* %sig_len.addr, align 8
  %14 = load i64, i64* %rsa_len, align 8
  %cmp10 = icmp ugt i64 %13, %14
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 -14592, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then8, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_sign_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %1, %struct.mbedtls_rsa_context** %rsa, align 8
  %2 = load i32, i32* %md_alg.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %hash_len.addr, align 8
  %cmp1 = icmp ult i64 4294967295, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %4) #5
  %5 = load i64*, i64** %sig_len.addr, align 8
  store i64 %call, i64* %5, align 8
  %6 = load i64, i64* %sig_size.addr, align 8
  %7 = load i64*, i64** %sig_len.addr, align 8
  %8 = load i64, i64* %7, align 8
  %cmp2 = icmp ult i64 %6, %8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -14464, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %11 = load i8*, i8** %p_rng.addr, align 8
  %12 = load i32, i32* %md_alg.addr, align 4
  %13 = load i64, i64* %hash_len.addr, align 8
  %conv = trunc i64 %13 to i32
  %14 = load i8*, i8** %hash.addr, align 8
  %15 = load i8*, i8** %sig.addr, align 8
  %call5 = call i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef %9, i32 (i8*, i8*, i64)* noundef %10, i8* noundef %11, i32 noundef %12, i32 noundef %conv, i8* noundef %14, i8* noundef %15) #5
  store i32 %call5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_decrypt_wrap(i8* noundef %ctx, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i64 noundef %osize, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %osize.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %1, %struct.mbedtls_rsa_context** %rsa, align 8
  %2 = load i64, i64* %ilen.addr, align 8
  %3 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %3) #5
  %cmp = icmp ne i64 %2, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %6 = load i8*, i8** %p_rng.addr, align 8
  %7 = load i64*, i64** %olen.addr, align 8
  %8 = load i8*, i8** %input.addr, align 8
  %9 = load i8*, i8** %output.addr, align 8
  %10 = load i64, i64* %osize.addr, align 8
  %call1 = call i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef %4, i32 (i8*, i8*, i64)* noundef %5, i8* noundef %6, i64* noundef %7, i8* noundef %8, i8* noundef %9, i64 noundef %10) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_encrypt_wrap(i8* noundef %ctx, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i64 noundef %osize, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %osize.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_context*
  store %struct.mbedtls_rsa_context* %1, %struct.mbedtls_rsa_context** %rsa, align 8
  %2 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call = call i64 @mbedtls_rsa_get_len(%struct.mbedtls_rsa_context* noundef %2) #5
  %3 = load i64*, i64** %olen.addr, align 8
  store i64 %call, i64* %3, align 8
  %4 = load i64*, i64** %olen.addr, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %osize.addr, align 8
  %cmp = icmp ugt i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -17408, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %10 = load i64, i64* %ilen.addr, align 8
  %11 = load i8*, i8** %input.addr, align 8
  %12 = load i8*, i8** %output.addr, align 8
  %call1 = call i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef %7, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i8* noundef %12) #5
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_check_pair_wrap(i8* noundef %pub, i8* noundef %prv, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %pub.addr = alloca i8*, align 8
  %prv.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store i8* %pub, i8** %pub.addr, align 8
  store i8* %prv, i8** %prv.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %1 = load i8*, i8** %p_rng.addr, align 8
  %2 = load i8*, i8** %pub.addr, align 8
  %3 = bitcast i8* %2 to %struct.mbedtls_rsa_context*
  %4 = load i8*, i8** %prv.addr, align 8
  %5 = bitcast i8* %4 to %struct.mbedtls_rsa_context*
  %call = call i32 @mbedtls_rsa_check_pub_priv(%struct.mbedtls_rsa_context* noundef %3, %struct.mbedtls_rsa_context* noundef %5) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rsa_alloc_wrap() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 336) #6
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_rsa_context*
  call void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ctx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsa_free_wrap(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_context*
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %1) #5
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsa_debug(i8* noundef %ctx, %struct.mbedtls_pk_debug_item* noundef %items) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %items.addr = alloca %struct.mbedtls_pk_debug_item*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store %struct.mbedtls_pk_debug_item* %items, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %0 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %0, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %1 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %name = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %name, align 8
  %2 = load i8*, i8** %ctx.addr, align 8
  %3 = bitcast i8* %2 to %struct.mbedtls_rsa_context*
  %N = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %3, i32 0, i32 2
  %4 = bitcast %struct.mbedtls_mpi* %N to i8*
  %5 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %value = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %5, i32 0, i32 2
  store i8* %4, i8** %value, align 8
  %6 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %6, i32 1
  store %struct.mbedtls_pk_debug_item* %incdec.ptr, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %7 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %type1 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %7, i32 0, i32 0
  store i32 1, i32* %type1, align 8
  %8 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %name2 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %name2, align 8
  %9 = load i8*, i8** %ctx.addr, align 8
  %10 = bitcast i8* %9 to %struct.mbedtls_rsa_context*
  %E = getelementptr inbounds %struct.mbedtls_rsa_context, %struct.mbedtls_rsa_context* %10, i32 0, i32 3
  %11 = bitcast %struct.mbedtls_mpi* %E to i8*
  %12 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %value3 = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %12, i32 0, i32 2
  store i8* %11, i8** %value3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eckey_get_bitlen(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %1, i32 0, i32 0
  %pbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 6
  %2 = load i64, i64* %pbits, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckey_can_do(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp eq i32 %2, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckey_verify_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_len) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ecdsa = alloca %struct.mbedtls_ecp_keypair, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_len, i64* %sig_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ecdsa) #5
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  %call = call i32 @mbedtls_ecdsa_from_keypair(%struct.mbedtls_ecp_keypair* noundef %ecdsa, %struct.mbedtls_ecp_keypair* noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.mbedtls_ecp_keypair* %ecdsa to i8*
  %3 = load i32, i32* %md_alg.addr, align 4
  %4 = load i8*, i8** %hash.addr, align 8
  %5 = load i64, i64* %hash_len.addr, align 8
  %6 = load i8*, i8** %sig.addr, align 8
  %7 = load i64, i64* %sig_len.addr, align 8
  %call1 = call i32 @ecdsa_verify_wrap(i8* noundef %2, i32 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i64 noundef %7) #5
  store i32 %call1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ecdsa) #5
  %8 = load i32, i32* %ret, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckey_sign_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %ecdsa = alloca %struct.mbedtls_ecp_keypair, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i32 -110, i32* %ret, align 4
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %ecdsa) #5
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  %call = call i32 @mbedtls_ecdsa_from_keypair(%struct.mbedtls_ecp_keypair* noundef %ecdsa, %struct.mbedtls_ecp_keypair* noundef %1) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.mbedtls_ecp_keypair* %ecdsa to i8*
  %3 = load i32, i32* %md_alg.addr, align 4
  %4 = load i8*, i8** %hash.addr, align 8
  %5 = load i64, i64* %hash_len.addr, align 8
  %6 = load i8*, i8** %sig.addr, align 8
  %7 = load i64, i64* %sig_size.addr, align 8
  %8 = load i64*, i64** %sig_len.addr, align 8
  %9 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %10 = load i8*, i8** %p_rng.addr, align 8
  %call1 = call i32 @ecdsa_sign_wrap(i8* noundef %2, i32 noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %6, i64 noundef %7, i64* noundef %8, i32 (i8*, i8*, i64)* noundef %9, i8* noundef %10) #5
  store i32 %call1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %ecdsa) #5
  %11 = load i32, i32* %ret, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckey_check_pair(i8* noundef %pub, i8* noundef %prv, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %pub.addr = alloca i8*, align 8
  %prv.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store i8* %pub, i8** %pub.addr, align 8
  store i8* %prv, i8** %prv.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %pub.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  %2 = load i8*, i8** %prv.addr, align 8
  %3 = bitcast i8* %2 to %struct.mbedtls_ecp_keypair*
  %4 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %5 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecp_check_pub_priv(%struct.mbedtls_ecp_keypair* noundef %1, %struct.mbedtls_ecp_keypair* noundef %3, i32 (i8*, i8*, i64)* noundef %4, i8* noundef %5) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eckey_alloc_wrap() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 344) #6
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_ecp_keypair*
  call void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ctx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eckey_free_wrap(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %1) #5
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eckey_debug(i8* noundef %ctx, %struct.mbedtls_pk_debug_item* noundef %items) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %items.addr = alloca %struct.mbedtls_pk_debug_item*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store %struct.mbedtls_pk_debug_item* %items, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %0 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %type = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %0, i32 0, i32 0
  store i32 2, i32* %type, align 8
  %1 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %name = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %name, align 8
  %2 = load i8*, i8** %ctx.addr, align 8
  %3 = bitcast i8* %2 to %struct.mbedtls_ecp_keypair*
  %Q = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %3, i32 0, i32 2
  %4 = bitcast %struct.mbedtls_ecp_point* %Q to i8*
  %5 = load %struct.mbedtls_pk_debug_item*, %struct.mbedtls_pk_debug_item** %items.addr, align 8
  %value = getelementptr inbounds %struct.mbedtls_pk_debug_item, %struct.mbedtls_pk_debug_item* %5, i32 0, i32 2
  store i8* %4, i8** %value, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eckeydh_can_do(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_can_do(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_verify_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_len, i64* %sig_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i32, i32* %md_alg.addr, align 4
  %1 = load i8*, i8** %ctx.addr, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_ecp_keypair*
  %3 = load i8*, i8** %hash.addr, align 8
  %4 = load i64, i64* %hash_len.addr, align 8
  %5 = load i8*, i8** %sig.addr, align 8
  %6 = load i64, i64* %sig_len.addr, align 8
  %call = call i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6) #5
  store i32 %call, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %7, -19456
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -14592, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdsa_sign_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  %2 = load i32, i32* %md_alg.addr, align 4
  %3 = load i8*, i8** %hash.addr, align 8
  %4 = load i64, i64* %hash_len.addr, align 8
  %5 = load i8*, i8** %sig.addr, align 8
  %6 = load i64, i64* %sig_size.addr, align 8
  %7 = load i64*, i64** %sig_len.addr, align 8
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %9 = load i8*, i8** %p_rng.addr, align 8
  %call = call i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef %1, i32 noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7, i32 (i8*, i8*, i64)* noundef %8, i8* noundef %9) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ecdsa_alloc_wrap() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 344) #6
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %2 = bitcast i8* %1 to %struct.mbedtls_ecp_keypair*
  call void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ctx, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecdsa_free_wrap(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_ecp_keypair*
  call void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef %1) #5
  %2 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %2) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsa_alt_get_bitlen(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %rsa_alt = alloca %struct.mbedtls_rsa_alt_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_alt_context*
  store %struct.mbedtls_rsa_alt_context* %1, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %2 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key_len_func = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %2, i32 0, i32 3
  %3 = load i64 (i8*)*, i64 (i8*)** %key_len_func, align 8
  %4 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %4, i32 0, i32 0
  %5 = load i8*, i8** %key, align 8
  %call = call i64 %3(i8* noundef %5) #5
  %mul = mul i64 8, %call
  ret i64 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_can_do(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_sign_wrap(i8* noundef %ctx, i32 noundef %md_alg, i8* noundef %hash, i64 noundef %hash_len, i8* noundef %sig, i64 noundef %sig_size, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %md_alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_len.addr = alloca i64, align 8
  %sig.addr = alloca i8*, align 8
  %sig_size.addr = alloca i64, align 8
  %sig_len.addr = alloca i64*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rsa_alt = alloca %struct.mbedtls_rsa_alt_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %md_alg, i32* %md_alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_len, i64* %hash_len.addr, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store i64 %sig_size, i64* %sig_size.addr, align 8
  store i64* %sig_len, i64** %sig_len.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_alt_context*
  store %struct.mbedtls_rsa_alt_context* %1, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %2 = load i64, i64* %hash_len.addr, align 8
  %cmp = icmp ult i64 4294967295, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key_len_func = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %3, i32 0, i32 3
  %4 = load i64 (i8*)*, i64 (i8*)** %key_len_func, align 8
  %5 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %5, i32 0, i32 0
  %6 = load i8*, i8** %key, align 8
  %call = call i64 %4(i8* noundef %6) #5
  %7 = load i64*, i64** %sig_len.addr, align 8
  store i64 %call, i64* %7, align 8
  %8 = load i64*, i64** %sig_len.addr, align 8
  %9 = load i64, i64* %8, align 8
  %cmp1 = icmp ugt i64 %9, 1024
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -16000, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %10 = load i64*, i64** %sig_len.addr, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %sig_size.addr, align 8
  %cmp4 = icmp ugt i64 %11, %12
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -14464, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %13 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %sign_func = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %13, i32 0, i32 2
  %14 = load i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i8*, i64)*, i8*, i32, i32, i8*, i8*)** %sign_func, align 8
  %15 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key7 = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %15, i32 0, i32 0
  %16 = load i8*, i8** %key7, align 8
  %17 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %18 = load i8*, i8** %p_rng.addr, align 8
  %19 = load i32, i32* %md_alg.addr, align 4
  %20 = load i64, i64* %hash_len.addr, align 8
  %conv = trunc i64 %20 to i32
  %21 = load i8*, i8** %hash.addr, align 8
  %22 = load i8*, i8** %sig.addr, align 8
  %call8 = call i32 %14(i8* noundef %16, i32 (i8*, i8*, i64)* noundef %17, i8* noundef %18, i32 noundef %19, i32 noundef %conv, i8* noundef %21, i8* noundef %22) #5
  store i32 %call8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_decrypt_wrap(i8* noundef %ctx, i8* noundef %input, i64 noundef %ilen, i8* noundef %output, i64* noundef %olen, i64 noundef %osize, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %olen.addr = alloca i64*, align 8
  %osize.addr = alloca i64, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %rsa_alt = alloca %struct.mbedtls_rsa_alt_context*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %ilen, i64* %ilen.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64* %olen, i64** %olen.addr, align 8
  store i64 %osize, i64* %osize.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_rsa_alt_context*
  store %struct.mbedtls_rsa_alt_context* %1, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %2 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %3 = load i8*, i8** %p_rng.addr, align 8
  %4 = load i64, i64* %ilen.addr, align 8
  %5 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key_len_func = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %5, i32 0, i32 3
  %6 = load i64 (i8*)*, i64 (i8*)** %key_len_func, align 8
  %7 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %7, i32 0, i32 0
  %8 = load i8*, i8** %key, align 8
  %call = call i64 %6(i8* noundef %8) #5
  %cmp = icmp ne i64 %4, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -16512, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %decrypt_func = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %9, i32 0, i32 1
  %10 = load i32 (i8*, i64*, i8*, i8*, i64)*, i32 (i8*, i64*, i8*, i8*, i64)** %decrypt_func, align 8
  %11 = load %struct.mbedtls_rsa_alt_context*, %struct.mbedtls_rsa_alt_context** %rsa_alt, align 8
  %key1 = getelementptr inbounds %struct.mbedtls_rsa_alt_context, %struct.mbedtls_rsa_alt_context* %11, i32 0, i32 0
  %12 = load i8*, i8** %key1, align 8
  %13 = load i64*, i64** %olen.addr, align 8
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i8*, i8** %output.addr, align 8
  %16 = load i64, i64* %osize.addr, align 8
  %call2 = call i32 %10(i8* noundef %12, i64* noundef %13, i8* noundef %14, i8* noundef %15, i64 noundef %16) #5
  store i32 %call2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_check_pair(i8* noundef %pub, i8* noundef %prv, i32 (i8*, i8*, i64)* noundef %f_rng, i8* noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %pub.addr = alloca i8*, align 8
  %prv.addr = alloca i8*, align 8
  %f_rng.addr = alloca i32 (i8*, i8*, i64)*, align 8
  %p_rng.addr = alloca i8*, align 8
  %sig = alloca [1024 x i8], align 16
  %hash = alloca [32 x i8], align 16
  %sig_len = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %pub, i8** %pub.addr, align 8
  store i8* %prv, i8** %prv.addr, align 8
  store i32 (i8*, i8*, i64)* %f_rng, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  store i8* %p_rng, i8** %p_rng.addr, align 8
  store i64 0, i64* %sig_len, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %prv.addr, align 8
  %call = call i64 @rsa_alt_get_bitlen(i8* noundef %0) #5
  %1 = load i8*, i8** %pub.addr, align 8
  %call1 = call i64 @rsa_get_bitlen(i8* noundef %1) #5
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %call2 = call i8* @memset(i8* noundef %arraydecay, i32 noundef 42, i64 noundef 32) #6
  %2 = load i8*, i8** %prv.addr, align 8
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sig, i64 0, i64 0
  %3 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %f_rng.addr, align 8
  %4 = load i8*, i8** %p_rng.addr, align 8
  %call5 = call i32 @rsa_alt_sign_wrap(i8* noundef %2, i32 noundef 0, i8* noundef %arraydecay3, i64 noundef 32, i8* noundef %arraydecay4, i64 noundef 1024, i64* noundef %sig_len, i32 (i8*, i8*, i64)* noundef %3, i8* noundef %4) #5
  store i32 %call5, i32* %ret, align 4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %6 = load i8*, i8** %pub.addr, align 8
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %sig, i64 0, i64 0
  %7 = load i64, i64* %sig_len, align 8
  %call11 = call i32 @rsa_verify_wrap(i8* noundef %6, i32 noundef 0, i8* noundef %arraydecay9, i64 noundef 32, i8* noundef %arraydecay10, i64 noundef %7) #5
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i32 -16896, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then7, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rsa_alt_alloc_wrap() #0 {
entry:
  %ctx = alloca i8*, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef 32) #6
  store i8* %call, i8** %ctx, align 8
  %0 = load i8*, i8** %ctx, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ctx, align 8
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 32) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %ctx, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsa_alt_free_wrap(i8* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %0, i64 noundef 32) #5
  %1 = load i8*, i8** %ctx.addr, align 8
  call void @free(i8* noundef %1) #6
  ret void
}

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

declare dso_local i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef, i16 noundef zeroext, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_rsa_pkcs1_verify(%struct.mbedtls_rsa_context* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_rsa_pkcs1_sign(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_rsa_pkcs1_decrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i64* noundef, i8* noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_rsa_pkcs1_encrypt(%struct.mbedtls_rsa_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef) #3

declare dso_local i32 @mbedtls_rsa_check_pub_priv(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_rsa_context* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #4

declare dso_local void @mbedtls_rsa_init(%struct.mbedtls_rsa_context* noundef) #3

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local void @mbedtls_ecdsa_init(%struct.mbedtls_ecp_keypair* noundef) #3

declare dso_local i32 @mbedtls_ecdsa_from_keypair(%struct.mbedtls_ecp_keypair* noundef, %struct.mbedtls_ecp_keypair* noundef) #3

declare dso_local void @mbedtls_ecdsa_free(%struct.mbedtls_ecp_keypair* noundef) #3

declare dso_local i32 @mbedtls_ecp_check_pub_priv(%struct.mbedtls_ecp_keypair* noundef, %struct.mbedtls_ecp_keypair* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #3

declare dso_local void @mbedtls_ecp_keypair_init(%struct.mbedtls_ecp_keypair* noundef) #3

declare dso_local void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef) #3

declare dso_local i32 @mbedtls_ecdsa_read_signature(%struct.mbedtls_ecp_keypair* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #3

declare dso_local i32 @mbedtls_ecdsa_write_signature(%struct.mbedtls_ecp_keypair* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #4

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
