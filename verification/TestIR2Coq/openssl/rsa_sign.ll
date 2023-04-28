; ModuleID = 'crypto/rsa/rsa_sign.c'
source_filename = "crypto/rsa/rsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.bignum_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type opaque
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque

@digestinfo_mdc2_der = internal constant [14 x i8] c"0\1C0\08\06\04U\08\03e\05\00\04\10", align 1
@digestinfo_md4_der = internal constant [18 x i8] c"0 0\0C\06\08*\86H\86\F7\0D\02\03\05\00\04\10", align 16
@digestinfo_md5_der = internal constant [18 x i8] c"0 0\0C\06\08*\86H\86\F7\0D\02\05\05\00\04\10", align 16
@digestinfo_ripemd160_der = internal constant [15 x i8] c"0!0\09\06\05+$\03\02\01\05\00\04\14", align 1
@digestinfo_sha1_der = internal constant [15 x i8] c"0!0\09\06\05+\0E\03\02\1A\05\00\04\14", align 1
@digestinfo_sha224_der = internal constant [19 x i8] c"0-0\0D\06\09`\86H\01e\03\04\02\04\05\00\04\1C", align 16
@digestinfo_sha256_der = internal constant [19 x i8] c"010\0D\06\09`\86H\01e\03\04\02\01\05\00\04 ", align 16
@digestinfo_sha384_der = internal constant [19 x i8] c"0A0\0D\06\09`\86H\01e\03\04\02\02\05\00\040", align 16
@digestinfo_sha512_der = internal constant [19 x i8] c"0Q0\0D\06\09`\86H\01e\03\04\02\03\05\00\04@", align 16
@digestinfo_sha512_224_der = internal constant [19 x i8] c"0-0\0D\06\09`\86H\01e\03\04\02\05\05\00\04\1C", align 16
@digestinfo_sha512_256_der = internal constant [19 x i8] c"010\0D\06\09`\86H\01e\03\04\02\06\05\00\04 ", align 16
@digestinfo_sha3_224_der = internal constant [19 x i8] c"0-0\0D\06\09`\86H\01e\03\04\02\07\05\00\04\1C", align 16
@digestinfo_sha3_256_der = internal constant [19 x i8] c"010\0D\06\09`\86H\01e\03\04\02\08\05\00\04 ", align 16
@digestinfo_sha3_384_der = internal constant [19 x i8] c"0A0\0D\06\09`\86H\01e\03\04\02\09\05\00\040", align 16
@digestinfo_sha3_512_der = internal constant [19 x i8] c"0Q0\0D\06\09`\86H\01e\03\04\02\0A\05\00\04@", align 16
@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_sign.c\00", align 1
@__func__.RSA_sign = private unnamed_addr constant [9 x i8] c"RSA_sign\00", align 1
@__func__.ossl_rsa_verify = private unnamed_addr constant [16 x i8] c"ossl_rsa_verify\00", align 1
@__func__.encode_pkcs1 = private unnamed_addr constant [13 x i8] c"encode_pkcs1\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i8* @ossl_rsa_digestinfo_encoding(i32 noundef %md_nid, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  switch i32 %md_nid, label %return [
    i32 95, label %return.sink.split
    i32 257, label %sw.bb1
    i32 4, label %sw.bb2
    i32 117, label %sw.bb3
    i32 64, label %sw.bb4
    i32 675, label %sw.bb5
    i32 672, label %sw.bb6
    i32 673, label %sw.bb7
    i32 674, label %sw.bb8
    i32 1094, label %sw.bb9
    i32 1095, label %sw.bb10
    i32 1096, label %sw.bb11
    i32 1097, label %sw.bb12
    i32 1098, label %sw.bb13
    i32 1099, label %sw.bb14
  ]

sw.bb1:                                           ; preds = %entry
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  br label %return.sink.split

sw.bb4:                                           ; preds = %entry
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  br label %return.sink.split

sw.bb8:                                           ; preds = %entry
  br label %return.sink.split

sw.bb9:                                           ; preds = %entry
  br label %return.sink.split

sw.bb10:                                          ; preds = %entry
  br label %return.sink.split

sw.bb11:                                          ; preds = %entry
  br label %return.sink.split

sw.bb12:                                          ; preds = %entry
  br label %return.sink.split

sw.bb13:                                          ; preds = %entry
  br label %return.sink.split

sw.bb14:                                          ; preds = %entry
  br label %return.sink.split

return.sink.split:                                ; preds = %entry, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %sw.bb5, %sw.bb6, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %sw.bb14
  %.sink = phi i64 [ 19, %sw.bb14 ], [ 19, %sw.bb13 ], [ 19, %sw.bb12 ], [ 19, %sw.bb11 ], [ 19, %sw.bb10 ], [ 19, %sw.bb9 ], [ 19, %sw.bb8 ], [ 19, %sw.bb7 ], [ 19, %sw.bb6 ], [ 19, %sw.bb5 ], [ 15, %sw.bb4 ], [ 15, %sw.bb3 ], [ 18, %sw.bb2 ], [ 18, %sw.bb1 ], [ 14, %entry ]
  %retval.0.ph = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha3_512_der, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha3_384_der, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha3_256_der, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha3_224_der, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha512_256_der, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha512_224_der, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha512_der, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha384_der, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha256_der, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @digestinfo_sha224_der, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @digestinfo_sha1_der, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @digestinfo_ripemd160_der, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @digestinfo_md5_der, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @digestinfo_md4_der, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @digestinfo_mdc2_der, i64 0, i64 0), %entry ]
  store i64 %.sink, i64* %len, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %retval.0.ph, %return.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_sign(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef %sigret, i32* noundef %siglen, %struct.rsa_st* noundef %rsa) local_unnamed_addr #1 {
entry:
  %encoded_len = alloca i64, align 8
  %tmps = alloca i8*, align 8
  %0 = bitcast i64* %encoded_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %encoded_len, align 8, !tbaa !4
  %1 = bitcast i8** %tmps to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %tmps, align 8, !tbaa !8
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %2 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !10
  %rsa_sign = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %2, i64 0, i32 11
  %3 = load i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)** %rsa_sign, align 8, !tbaa !16
  %cmp.not = icmp eq i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)* %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef %sigret, i32* noundef %siglen, %struct.rsa_st* noundef nonnull %rsa) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq i32 %type, 114
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %cmp5.not = icmp eq i32 %m_len, 36
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.RSA_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 131, i8* noundef null) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  store i64 36, i64* %encoded_len, align 8, !tbaa !4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %conv = zext i32 %m_len to i64
  %call8 = call fastcc i32 @encode_pkcs1(i8** noundef nonnull %tmps, i64* noundef nonnull %encoded_len, i32 noundef %type, i8* noundef %m, i64 noundef %conv) #9
  %tobool.not = icmp eq i32 %call8, 0
  %.pre44 = load i8*, i8** %tmps, align 8, !tbaa !8
  %.pre45 = load i64, i64* %encoded_len, align 8, !tbaa !4
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.else, %if.end7
  %4 = phi i8* [ null, %if.end7 ], [ %.pre44, %if.else ]
  %5 = phi i64 [ 36, %if.end7 ], [ %.pre45, %if.else ]
  %encoded.0 = phi i8* [ %m, %if.end7 ], [ %.pre44, %if.else ]
  %add = add i64 %5, 11
  %call12 = tail call i32 @RSA_size(%struct.rsa_st* noundef nonnull %rsa) #8
  %conv13 = sext i32 %call12 to i64
  %cmp14 = icmp ugt i64 %add, %conv13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.RSA_sign, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 112, i8* noundef null) #8
  br label %err

if.end17:                                         ; preds = %if.end11
  %conv18 = trunc i64 %5 to i32
  %call19 = tail call i32 @RSA_private_encrypt(i32 noundef %conv18, i8* noundef %encoded.0, i8* noundef %sigret, %struct.rsa_st* noundef nonnull %rsa, i32 noundef 1) #8
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end17
  store i32 %call19, i32* %siglen, align 4, !tbaa !18
  br label %err

err:                                              ; preds = %if.else, %if.end17, %if.end23, %if.then16
  %6 = phi i64 [ %5, %if.then16 ], [ %5, %if.end17 ], [ %5, %if.end23 ], [ %.pre45, %if.else ]
  %7 = phi i8* [ %4, %if.then16 ], [ %4, %if.end17 ], [ %4, %if.end23 ], [ %.pre44, %if.else ]
  %ret.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.end17 ], [ 1, %if.end23 ], [ 0, %if.else ]
  tail call void @CRYPTO_clear_free(i8* noundef %7, i64 noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 318) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then6, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then6 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @encode_pkcs1(i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %out_len, i32 noundef %type, i8* noundef %m, i64 noundef %m_len) unnamed_addr #1 {
entry:
  %di_prefix_len = alloca i64, align 8
  %0 = bitcast i64* %di_prefix_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.encode_pkcs1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 117, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i8* @ossl_rsa_digestinfo_encoding(i32 noundef %type, i64* noundef nonnull %di_prefix_len) #9
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.encode_pkcs1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 116, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i64, i64* %di_prefix_len, align 8, !tbaa !4
  %add = add i64 %1, %m_len
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 260) #8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.encode_pkcs1, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i8* @memcpy(i8* noundef nonnull %call4, i8* noundef nonnull %call, i64 noundef %1) #8
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %1
  %call9 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %m, i64 noundef %m_len) #8
  store i8* %call4, i8** %out, align 8, !tbaa !8
  store i64 %add, i64* %out_len, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then6 ], [ 1, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @RSA_size(%struct.rsa_st* noundef) local_unnamed_addr #3

declare i32 @RSA_private_encrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rsa_verify(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef %rm, i64* nocapture noundef writeonly %prm_len, i8* noundef %sigbuf, i64 noundef %siglen, %struct.rsa_st* noundef %rsa) local_unnamed_addr #1 {
entry:
  %encoded_len = alloca i64, align 8
  %encoded = alloca i8*, align 8
  %0 = bitcast i64* %encoded_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %encoded_len, align 8, !tbaa !4
  %1 = bitcast i8** %encoded to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* null, i8** %encoded, align 8, !tbaa !8
  %call = tail call i32 @RSA_size(%struct.rsa_st* noundef %rsa) #8
  %conv = sext i32 %call to i64
  %cmp.not = icmp eq i64 %conv, %siglen
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 119, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %siglen, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 345) #8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end6:                                          ; preds = %if.end
  %conv7 = trunc i64 %siglen to i32
  %call8 = tail call i32 @RSA_public_decrypt(i32 noundef %conv7, i8* noundef %sigbuf, i8* noundef nonnull %call2, %struct.rsa_st* noundef %rsa, i32 noundef 1) #8
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end6
  %conv13153 = zext i32 %call8 to i64
  %cmp14 = icmp eq i32 %type, 114
  br i1 %cmp14, label %if.then16, label %if.else35

if.then16:                                        ; preds = %if.end12
  %cmp17.not = icmp eq i32 %call8, 36
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then16
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, i8* noundef null) #8
  br label %err

if.end20:                                         ; preds = %if.then16
  %cmp21.not = icmp eq i8* %rm, null
  br i1 %cmp21.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call24 = tail call i8* @memcpy(i8* noundef nonnull %rm, i8* noundef nonnull %call2, i64 noundef 36) #8
  store i64 36, i64* %prm_len, align 8, !tbaa !4
  br label %err

if.else:                                          ; preds = %if.end20
  %cmp25.not = icmp eq i32 %m_len, 36
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 131, i8* noundef null) #8
  br label %err

if.end28:                                         ; preds = %if.else
  %call29 = tail call i32 @memcmp(i8* noundef nonnull %call2, i8* noundef %m, i64 noundef 36) #10
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %err, label %if.then32

if.then32:                                        ; preds = %if.end28
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, i8* noundef null) #8
  br label %err

if.else35:                                        ; preds = %if.end12
  %cmp36 = icmp eq i32 %type, 95
  %cmp38 = icmp eq i32 %call8, 18
  %or.cond = select i1 %cmp36, i1 %cmp38, i1 false
  br i1 %or.cond, label %land.lhs.true40, label %if.else66

land.lhs.true40:                                  ; preds = %if.else35
  %2 = load i8, i8* %call2, align 1, !tbaa !19
  %cmp42 = icmp eq i8 %2, 4
  br i1 %cmp42, label %land.lhs.true44, label %if.else66

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %arrayidx45 = getelementptr inbounds i8, i8* %call2, i64 1
  %3 = load i8, i8* %arrayidx45, align 1, !tbaa !19
  %cmp47 = icmp eq i8 %3, 16
  br i1 %cmp47, label %if.then49, label %if.else66

if.then49:                                        ; preds = %land.lhs.true44
  %cmp50.not = icmp eq i8* %rm, null
  br i1 %cmp50.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.then49
  %add.ptr = getelementptr inbounds i8, i8* %call2, i64 2
  %call53 = tail call i8* @memcpy(i8* noundef nonnull %rm, i8* noundef nonnull %add.ptr, i64 noundef 16) #8
  store i64 16, i64* %prm_len, align 8, !tbaa !4
  br label %err

if.else54:                                        ; preds = %if.then49
  %cmp55.not = icmp eq i32 %m_len, 16
  br i1 %cmp55.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.else54
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 131, i8* noundef null) #8
  br label %err

if.end58:                                         ; preds = %if.else54
  %add.ptr59 = getelementptr inbounds i8, i8* %call2, i64 2
  %call60 = tail call i32 @memcmp(i8* noundef %m, i8* noundef nonnull %add.ptr59, i64 noundef 16) #10
  %cmp61.not = icmp eq i32 %call60, 0
  br i1 %cmp61.not, label %err, label %if.then63

if.then63:                                        ; preds = %if.end58
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 399, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, i8* noundef null) #8
  br label %err

if.else66:                                        ; preds = %land.lhs.true44, %land.lhs.true40, %if.else35
  %cmp67.not = icmp eq i8* %rm, null
  br i1 %cmp67.not, label %if.end82, label %if.then69

if.then69:                                        ; preds = %if.else66
  %call70 = tail call fastcc i32 @digest_sz_from_nid(i32 noundef %type) #9
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %err, label %if.end74

if.end74:                                         ; preds = %if.then69
  %cmp76 = icmp ugt i32 %call70, %call8
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 143, i8* noundef null) #8
  br label %err

if.end79:                                         ; preds = %if.end74
  %conv75 = zext i32 %call70 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %call2, i64 %conv13153
  %idx.neg = sub nsw i64 0, %conv75
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr80, i64 %idx.neg
  br label %if.end82

if.end82:                                         ; preds = %if.else66, %if.end79
  %m_len.addr.0 = phi i32 [ %call70, %if.end79 ], [ %m_len, %if.else66 ]
  %m.addr.0 = phi i8* [ %add.ptr81, %if.end79 ], [ %m, %if.else66 ]
  %conv83 = zext i32 %m_len.addr.0 to i64
  %call84 = call fastcc i32 @encode_pkcs1(i8** noundef nonnull %encoded, i64* noundef nonnull %encoded_len, i32 noundef %type, i8* noundef %m.addr.0, i64 noundef %conv83) #9
  %tobool.not = icmp eq i32 %call84, 0
  %.pre = load i64, i64* %encoded_len, align 8, !tbaa !4
  br i1 %tobool.not, label %err, label %if.end86

if.end86:                                         ; preds = %if.end82
  %cmp87.not = icmp eq i64 %.pre, %conv13153
  br i1 %cmp87.not, label %lor.lhs.false, label %if.then92

lor.lhs.false:                                    ; preds = %if.end86
  %4 = load i8*, i8** %encoded, align 8, !tbaa !8
  %call89 = tail call i32 @memcmp(i8* noundef %4, i8* noundef nonnull %call2, i64 noundef %conv13153) #10
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end93, label %if.then92

if.then92:                                        ; preds = %lor.lhs.false, %if.end86
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_rsa_verify, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, i8* noundef null) #8
  br label %err

if.end93:                                         ; preds = %lor.lhs.false
  br i1 %cmp67.not, label %err, label %if.then96

if.then96:                                        ; preds = %if.end93
  %call98 = tail call i8* @memcpy(i8* noundef nonnull %rm, i8* noundef %m.addr.0, i64 noundef %conv83) #8
  store i64 %conv83, i64* %prm_len, align 8, !tbaa !4
  br label %err

err:                                              ; preds = %if.end82, %if.end28, %if.then23, %if.end93, %if.then96, %if.then52, %if.end58, %if.then69, %if.end6, %if.then92, %if.then78, %if.then63, %if.then57, %if.then32, %if.then27, %if.then19, %if.then5
  %5 = phi i64 [ 0, %if.then5 ], [ 0, %if.end6 ], [ 0, %if.then19 ], [ 0, %if.then27 ], [ 0, %if.then32 ], [ 0, %if.then57 ], [ 0, %if.then63 ], [ 0, %if.then69 ], [ 0, %if.then78 ], [ %.pre, %if.then92 ], [ 0, %if.end58 ], [ 0, %if.then52 ], [ %conv13153, %if.then96 ], [ %conv13153, %if.end93 ], [ 0, %if.then23 ], [ 0, %if.end28 ], [ %.pre, %if.end82 ]
  %ret.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end6 ], [ 0, %if.then19 ], [ 0, %if.then27 ], [ 0, %if.then32 ], [ 0, %if.then57 ], [ 0, %if.then63 ], [ 0, %if.then69 ], [ 0, %if.then78 ], [ 0, %if.then92 ], [ 1, %if.end58 ], [ 1, %if.then52 ], [ 1, %if.then96 ], [ 1, %if.end93 ], [ 1, %if.then23 ], [ 1, %if.end28 ], [ 0, %if.end82 ]
  %6 = load i8*, i8** %encoded, align 8, !tbaa !8
  tail call void @CRYPTO_clear_free(i8* noundef %6, i64 noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 444) #8
  tail call void @CRYPTO_clear_free(i8* noundef %call2, i64 noundef %siglen, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 445) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RSA_public_decrypt(i32 noundef, i8* noundef, i8* noundef, %struct.rsa_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @digest_sz_from_nid(i32 noundef %nid) unnamed_addr #6 {
entry:
  switch i32 %nid, label %sw.default [
    i32 95, label %return
    i32 257, label %return
    i32 4, label %return
    i32 117, label %sw.bb3
    i32 64, label %sw.bb4
    i32 675, label %sw.bb5
    i32 672, label %sw.bb6
    i32 673, label %sw.bb7
    i32 674, label %sw.bb8
    i32 1094, label %sw.bb9
    i32 1095, label %sw.bb10
    i32 1096, label %sw.bb11
    i32 1097, label %sw.bb12
    i32 1098, label %sw.bb13
    i32 1099, label %sw.bb14
  ]

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  br label %return

sw.bb9:                                           ; preds = %entry
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %return

sw.bb11:                                          ; preds = %entry
  br label %return

sw.bb12:                                          ; preds = %entry
  br label %return

sw.bb13:                                          ; preds = %entry
  br label %return

sw.bb14:                                          ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3
  %retval.0 = phi i32 [ 0, %sw.default ], [ 64, %sw.bb14 ], [ 48, %sw.bb13 ], [ 32, %sw.bb12 ], [ 28, %sw.bb11 ], [ 32, %sw.bb10 ], [ 28, %sw.bb9 ], [ 64, %sw.bb8 ], [ 48, %sw.bb7 ], [ 32, %sw.bb6 ], [ 28, %sw.bb5 ], [ 20, %sw.bb4 ], [ 20, %sw.bb3 ], [ 16, %entry ], [ 16, %entry ], [ 16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @RSA_verify(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef %sigbuf, i32 noundef %siglen, %struct.rsa_st* noundef %rsa) local_unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %rsa, i64 0, i32 3
  %0 = load %struct.rsa_meth_st*, %struct.rsa_meth_st** %meth, align 8, !tbaa !10
  %rsa_verify = getelementptr inbounds %struct.rsa_meth_st, %struct.rsa_meth_st* %0, i64 0, i32 12
  %1 = load i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)** %rsa_verify, align 8, !tbaa !20
  %cmp.not = icmp eq i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef %sigbuf, i32 noundef %siglen, %struct.rsa_st* noundef nonnull %rsa) #8
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i32 %siglen to i64
  %call3 = tail call i32 @ossl_rsa_verify(i32 noundef %type, i8* noundef %m, i32 noundef %m_len, i8* noundef null, i64* noundef null, i8* noundef %sigbuf, i64 noundef %conv, %struct.rsa_st* noundef nonnull %rsa) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 24}
!11 = !{!"rsa_st", !12, i64 0, !9, i64 8, !12, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !13, i64 104, !9, i64 128, !9, i64 136, !15, i64 144, !6, i64 160, !12, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !12, i64 216}
!12 = !{!"int", !6, i64 0}
!13 = !{!"rsa_pss_params_30_st", !12, i64 0, !14, i64 4, !12, i64 12, !12, i64 16}
!14 = !{!"", !12, i64 0, !12, i64 4}
!15 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!16 = !{!17, !9, i64 88}
!17 = !{!"rsa_meth_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !12, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112}
!18 = !{!12, !12, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!17, !9, i64 96}
