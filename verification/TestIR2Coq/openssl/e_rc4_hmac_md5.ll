; ModuleID = 'crypto/evp/e_rc4_hmac_md5.c'
source_filename = "crypto/evp/e_rc4_hmac_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.rc4_key_st = type { i32, i32, [256 x i32] }
%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

@r4_hmac_md5_cipher = internal global %struct.evp_cipher_st { i32 915, i32 1, i32 16, i32 0, i64 2097160, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc4_hmac_md5_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc4_hmac_md5_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 1320, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc4_hmac_md5_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc4_hmac_md5() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @r4_hmac_md5_cipher
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc4_hmac_md5_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %inkey, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ks = bitcast i8* %call to %struct.rc4_key_st*
  tail call void @RC4_set_key(%struct.rc4_key_st* noundef %ks, i32 noundef %call1, i8* noundef %inkey) #6
  %head = getelementptr inbounds i8, i8* %call, i64 1032
  %0 = bitcast i8* %head to %struct.MD5state_st*
  %call2 = tail call i32 @MD5_Init(%struct.MD5state_st* noundef nonnull %0) #6
  %tail = getelementptr inbounds i8, i8* %call, i64 1124
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(92) %tail, i8* noundef nonnull align 8 dereferenceable(92) %head, i64 92, i1 false), !tbaa.struct !4
  %md = getelementptr inbounds i8, i8* %call, i64 1216
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(92) %md, i8* noundef nonnull align 8 dereferenceable(92) %head, i64 92, i1 false), !tbaa.struct !4
  %payload_length = getelementptr inbounds i8, i8* %call, i64 1312
  %1 = bitcast i8* %payload_length to i64*
  store i64 -1, i64* %1, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc4_hmac_md5_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %len) #1 {
entry:
  %mac = alloca [16 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %payload_length = getelementptr inbounds i8, i8* %call, i64 1312
  %0 = bitcast i8* %payload_length to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !10
  %cmp.not = icmp eq i64 %1, -1
  %add = add i64 %1, 16
  %cmp1.not = icmp eq i64 %add, %len
  %or.cond = or i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %cleanup70

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else35, label %if.then3

if.then3:                                         ; preds = %if.end
  %spec.select = select i1 %cmp.not, i64 %len, i64 %1
  %md = getelementptr inbounds i8, i8* %call, i64 1216
  %2 = bitcast i8* %md to %struct.MD5state_st*
  %call7 = tail call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %2, i8* noundef %in, i64 noundef %spec.select) #6
  %cmp8.not = icmp eq i64 %spec.select, %len
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then3
  %cmp10.not = icmp eq i8* %in, %out
  br i1 %cmp10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.then9
  %call15 = tail call i8* @memcpy(i8* noundef %out, i8* noundef %in, i64 noundef %spec.select) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then9
  %add.ptr17 = getelementptr inbounds i8, i8* %out, i64 %spec.select
  %call19 = tail call i32 @MD5_Final(i8* noundef %add.ptr17, %struct.MD5state_st* noundef nonnull %2) #6
  %tail = getelementptr inbounds i8, i8* %call, i64 1124
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(92) %md, i8* noundef nonnull align 4 dereferenceable(92) %tail, i64 92, i1 false), !tbaa.struct !4
  %call23 = tail call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %2, i8* noundef %add.ptr17, i64 noundef 16) #6
  %call26 = tail call i32 @MD5_Final(i8* noundef %add.ptr17, %struct.MD5state_st* noundef nonnull %2) #6
  %ks = bitcast i8* %call to %struct.rc4_key_st*
  tail call void @RC4(%struct.rc4_key_st* noundef %ks, i64 noundef %len, i8* noundef %out, i8* noundef %out) #6
  br label %if.end68

if.else:                                          ; preds = %if.then3
  %ks30 = bitcast i8* %call to %struct.rc4_key_st*
  tail call void @RC4(%struct.rc4_key_st* noundef %ks30, i64 noundef %len, i8* noundef %in, i8* noundef %out) #6
  br label %if.end68

if.else35:                                        ; preds = %if.end
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7
  %ks36 = bitcast i8* %call to %struct.rc4_key_st*
  tail call void @RC4(%struct.rc4_key_st* noundef %ks36, i64 noundef %len, i8* noundef %in, i8* noundef %out) #6
  %md63 = getelementptr inbounds i8, i8* %call, i64 1216
  %4 = bitcast i8* %md63 to %struct.MD5state_st*
  br i1 %cmp.not, label %if.else62, label %if.then41

if.then41:                                        ; preds = %if.else35
  %call45 = tail call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %4, i8* noundef %out, i64 noundef %1) #6
  %call47 = call i32 @MD5_Final(i8* noundef nonnull %3, %struct.MD5state_st* noundef nonnull %4) #6
  %tail49 = getelementptr inbounds i8, i8* %call, i64 1124
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(92) %md63, i8* noundef nonnull align 4 dereferenceable(92) %tail49, i64 92, i1 false), !tbaa.struct !4
  %call52 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %4, i8* noundef nonnull %3, i64 noundef 16) #6
  %call55 = call i32 @MD5_Final(i8* noundef nonnull %3, %struct.MD5state_st* noundef nonnull %4) #6
  %add.ptr56 = getelementptr inbounds i8, i8* %out, i64 %1
  %call58 = call i32 @CRYPTO_memcmp(i8* noundef %add.ptr56, i8* noundef nonnull %3, i64 noundef 16) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end68.critedge, label %cleanup

if.else62:                                        ; preds = %if.else35
  %call66 = tail call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %4, i8* noundef %out, i64 noundef %len) #6
  br label %if.end68.critedge

cleanup:                                          ; preds = %if.then41
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7
  br label %cleanup70

if.end68.critedge:                                ; preds = %if.else62, %if.then41
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7
  br label %if.end68

if.end68:                                         ; preds = %if.end68.critedge, %if.end16, %if.else
  store i64 -1, i64* %0, align 8, !tbaa !10
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup, %entry, %if.end68
  %retval.1 = phi i32 [ 1, %if.end68 ], [ 0, %cleanup ], [ 0, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc4_hmac_md5_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %hmac_key = alloca [64 x i8], align 16
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  switch i32 %type, label %cleanup73 [
    i32 23, label %sw.bb
    i32 22, label %sw.bb39
  ]

sw.bb:                                            ; preds = %entry
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %call1 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #6
  %cmp = icmp sgt i32 %arg, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %head = getelementptr inbounds i8, i8* %call, i64 1032
  %1 = bitcast i8* %head to %struct.MD5state_st*
  %call2 = call i32 @MD5_Init(%struct.MD5state_st* noundef nonnull %1) #6
  %conv112 = zext i32 %arg to i64
  %call4 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %1, i8* noundef %ptr, i64 noundef %conv112) #6
  %call7 = call i32 @MD5_Final(i8* noundef nonnull %0, %struct.MD5state_st* noundef nonnull %1) #6
  br label %vector.body

if.else:                                          ; preds = %sw.bb
  %conv9 = sext i32 %arg to i64
  %call10 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %ptr, i64 noundef %conv9) #6
  br label %vector.body

vector.body:                                      ; preds = %if.then, %if.else
  %2 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %2, align 16, !tbaa !9
  %3 = xor <16 x i8> %wide.load, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %4 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  store <16 x i8> %3, <16 x i8>* %4, align 16, !tbaa !9
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 16
  %6 = bitcast i8* %5 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %6, align 16, !tbaa !9
  %7 = xor <16 x i8> %wide.load.1, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %8 = bitcast i8* %5 to <16 x i8>*
  store <16 x i8> %7, <16 x i8>* %8, align 16, !tbaa !9
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 32
  %10 = bitcast i8* %9 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %10, align 16, !tbaa !9
  %11 = xor <16 x i8> %wide.load.2, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %12 = bitcast i8* %9 to <16 x i8>*
  store <16 x i8> %11, <16 x i8>* %12, align 16, !tbaa !9
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 48
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %14, align 16, !tbaa !9
  %15 = xor <16 x i8> %wide.load.3, <i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54, i8 54>
  %16 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %15, <16 x i8>* %16, align 16, !tbaa !9
  %head16 = getelementptr inbounds i8, i8* %call, i64 1032
  %17 = bitcast i8* %head16 to %struct.MD5state_st*
  %call17 = call i32 @MD5_Init(%struct.MD5state_st* noundef nonnull %17) #6
  %call20 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %17, i8* noundef nonnull %0, i64 noundef 64) #6
  %18 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  %wide.load132 = load <16 x i8>, <16 x i8>* %18, align 16, !tbaa !9
  %19 = xor <16 x i8> %wide.load132, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %20 = bitcast [64 x i8]* %hmac_key to <16 x i8>*
  store <16 x i8> %19, <16 x i8>* %20, align 16, !tbaa !9
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load132.1 = load <16 x i8>, <16 x i8>* %22, align 16, !tbaa !9
  %23 = xor <16 x i8> %wide.load132.1, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %24 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %24, align 16, !tbaa !9
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 32
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load132.2 = load <16 x i8>, <16 x i8>* %26, align 16, !tbaa !9
  %27 = xor <16 x i8> %wide.load132.2, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %28 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %28, align 16, !tbaa !9
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %hmac_key, i64 0, i64 48
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load132.3 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !9
  %31 = xor <16 x i8> %wide.load132.3, <i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106, i8 106>
  %32 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> %31, <16 x i8>* %32, align 16, !tbaa !9
  %tail = getelementptr inbounds i8, i8* %call, i64 1124
  %33 = bitcast i8* %tail to %struct.MD5state_st*
  %call34 = call i32 @MD5_Init(%struct.MD5state_st* noundef nonnull %33) #6
  %call37 = call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %33, i8* noundef nonnull %0, i64 noundef 64) #6
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  br label %cleanup73

sw.bb39:                                          ; preds = %entry
  %cmp40.not = icmp eq i32 %arg, 13
  br i1 %cmp40.not, label %if.end43, label %cleanup73

if.end43:                                         ; preds = %sw.bb39
  %arrayidx45 = getelementptr inbounds i8, i8* %ptr, i64 11
  %34 = load i8, i8* %arrayidx45, align 1, !tbaa !9
  %conv46 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %conv46, 8
  %arrayidx49 = getelementptr inbounds i8, i8* %ptr, i64 12
  %35 = load i8, i8* %arrayidx49, align 1, !tbaa !9
  %conv50 = zext i8 %35 to i32
  %or = or i32 %shl, %conv50
  %call51 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #6
  %tobool.not = icmp eq i32 %call51, 0
  br i1 %tobool.not, label %if.then52, label %if.end66

if.then52:                                        ; preds = %if.end43
  %cmp53 = icmp ult i32 %or, 16
  br i1 %cmp53, label %cleanup73, label %if.end56

if.end56:                                         ; preds = %if.then52
  %sub57 = add nsw i32 %or, -16
  %shr = lshr i32 %sub57, 8
  %conv58 = trunc i32 %shr to i8
  store i8 %conv58, i8* %arrayidx45, align 1, !tbaa !9
  %conv62 = trunc i32 %sub57 to i8
  store i8 %conv62, i8* %arrayidx49, align 1, !tbaa !9
  br label %if.end66

if.end66:                                         ; preds = %if.end56, %if.end43
  %len.0 = phi i32 [ %or, %if.end43 ], [ %sub57, %if.end56 ]
  %conv67 = zext i32 %len.0 to i64
  %payload_length = getelementptr inbounds i8, i8* %call, i64 1312
  %36 = bitcast i8* %payload_length to i64*
  store i64 %conv67, i64* %36, align 8, !tbaa !10
  %md = getelementptr inbounds i8, i8* %call, i64 1216
  %37 = bitcast i8* %md to %struct.MD5state_st*
  %head68 = getelementptr inbounds i8, i8* %call, i64 1032
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(92) %md, i8* noundef nonnull align 8 dereferenceable(92) %head68, i64 92, i1 false), !tbaa.struct !4
  %call71 = tail call i32 @MD5_Update(%struct.MD5state_st* noundef nonnull %37, i8* noundef nonnull %ptr, i64 noundef 13) #6
  br label %cleanup73

cleanup73:                                        ; preds = %entry, %if.end66, %sw.bb39, %if.then52, %vector.body
  %retval.1 = phi i32 [ 1, %vector.body ], [ 16, %if.end66 ], [ -1, %sw.bb39 ], [ -1, %if.then52 ], [ -1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @RC4_set_key(%struct.rc4_key_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @MD5_Init(%struct.MD5state_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @MD5_Update(%struct.MD5state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @MD5_Final(i8* noundef, %struct.MD5state_st* noundef) local_unnamed_addr #3

declare void @RC4(%struct.rc4_key_st* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 64, !9, i64 88, i64 4, !5}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !14, i64 1312}
!11 = !{!"", !12, i64 0, !13, i64 1032, !13, i64 1124, !13, i64 1216, !14, i64 1312}
!12 = !{!"rc4_key_st", !6, i64 0, !6, i64 4, !7, i64 8}
!13 = !{!"MD5state_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !7, i64 24, !6, i64 88}
!14 = !{!"long", !7, i64 0}
