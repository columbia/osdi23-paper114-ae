; ModuleID = 'crypto/evp/e_rc2.c'
source_filename = "crypto/evp/e_rc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.rc2_key_st = type { [64 x i32] }

@rc2_cbc = internal constant %struct.evp_cipher_st { i32 37, i32 8, i32 16, i32 8, i64 74, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc2_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc2_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 260, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_set_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_get_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc2_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@rc2_cfb64 = internal constant %struct.evp_cipher_st { i32 39, i32 1, i32 16, i32 8, i64 75, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc2_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc2_cfb64_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 260, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_set_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_get_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc2_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@rc2_ofb = internal constant %struct.evp_cipher_st { i32 40, i32 1, i32 16, i32 8, i64 76, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc2_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc2_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 260, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_set_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_get_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc2_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@rc2_ecb = internal constant %struct.evp_cipher_st { i32 38, i32 8, i32 16, i32 0, i64 73, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc2_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc2_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 260, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_set_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_get_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc2_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@r2_64_cbc_cipher = internal constant %struct.evp_cipher_st { i32 166, i32 8, i32 8, i32 8, i64 74, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc2_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc2_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 260, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_set_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_get_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc2_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@r2_40_cbc_cipher = internal constant %struct.evp_cipher_st { i32 98, i32 8, i32 5, i32 8, i64 74, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @rc2_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @rc2_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 260, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_set_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* @rc2_get_asn1_type_and_iv, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @rc2_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@.str = private unnamed_addr constant [34 x i8] c"assertion failed: l <= sizeof(iv)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"crypto/evp/e_rc2.c\00", align 1
@__func__.rc2_magic_to_meth = private unnamed_addr constant [18 x i8] c"rc2_magic_to_meth\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc2_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @rc2_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc2_cfb64() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @rc2_cfb64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc2_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @rc2_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc2_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @rc2_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc2_64_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @r2_64_cbc_cipher
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_rc2_40_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @r2_40_cbc_cipher
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %ks to %struct.rc2_key_st*
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %call2 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %key_bits = bitcast i8* %call2 to i32*
  %1 = load i32, i32* %key_bits, align 4, !tbaa !4
  tail call void @RC2_set_key(%struct.rc2_key_st* noundef nonnull %0, i32 noundef %call1, i8* noundef %key, i32 noundef %1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp20 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp20, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.023 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.022 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.021 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks = getelementptr inbounds i8, i8* %call, i64 4
  %0 = bitcast i8* %ks to %struct.rc2_key_st*
  %call1 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @RC2_cbc_encrypt(i8* noundef %in.addr.022, i8* noundef %out.addr.021, i64 noundef 4611686018427387904, %struct.rc2_key_st* noundef nonnull %0, i8* noundef nonnull %arraydecay, i32 noundef %call1) #5
  %sub = add i64 %inl.addr.023, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.022, i64 4611686018427387904
  %add.ptr2 = getelementptr inbounds i8, i8* %out.addr.021, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.023, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !10

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr2, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks4 = getelementptr inbounds i8, i8* %call3, i64 4
  %1 = bitcast i8* %ks4 to %struct.rc2_key_st*
  %arraydecay6 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call7 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @RC2_cbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.rc2_key_st* noundef nonnull %1, i8* noundef nonnull %arraydecay6, i32 noundef %call7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_set_asn1_type_and_iv(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type) #1 {
entry:
  %cmp.not = icmp eq %struct.asn1_type_st* %type, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rc2_meth_to_magic(%struct.evp_cipher_ctx_st* noundef %c) #6
  %0 = zext i32 %call to i64
  %call1 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %c) #5
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %c, i64 0, i32 4, i64 0
  %call2 = tail call i32 @ASN1_TYPE_set_int_octetstring(%struct.asn1_type_st* noundef nonnull %type, i64 noundef %0, i8* noundef nonnull %arraydecay, i32 noundef %call1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  ret i32 %i.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_get_asn1_type_and_iv(%struct.evp_cipher_ctx_st* noundef %c, %struct.asn1_type_st* noundef %type) #1 {
entry:
  %num = alloca i64, align 8
  %iv = alloca [16 x i8], align 16
  %0 = bitcast i64* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %num, align 8, !tbaa !12
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  %cmp.not = icmp eq %struct.asn1_type_st* %type, null
  br i1 %cmp.not, label %if.end26, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %c) #5
  %cmp1 = icmp ult i32 %call, 17
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 140) #8
  unreachable

cond.end:                                         ; preds = %if.then
  %call3 = call i32 @ASN1_TYPE_get_int_octetstring(%struct.asn1_type_st* noundef nonnull %type, i64* noundef nonnull %num, i8* noundef nonnull %1, i32 noundef %call) #5
  %cmp4.not = icmp eq i32 %call3, %call
  br i1 %cmp4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %cond.end
  %2 = load i64, i64* %num, align 8, !tbaa !12
  %conv7 = trunc i64 %2 to i32
  %call8 = call fastcc i32 @rc2_magic_to_meth(i32 noundef %conv7) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %cmp11.not = icmp eq i32 %call, 0
  br i1 %cmp11.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %call14 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %c, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %1, i32 noundef -1) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end10
  %call18 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef 3, i32 noundef %call8, i8* noundef null) #5
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %div = sdiv i32 %call8, 8
  %call21 = call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %div) #5
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %cleanup, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false, %entry
  %i.0 = phi i32 [ %call, %lor.lhs.false ], [ 0, %entry ]
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false, %land.lhs.true, %if.end, %cond.end, %if.end26
  %retval.0 = phi i32 [ %i.0, %if.end26 ], [ -1, %cond.end ], [ -1, %if.end ], [ -1, %land.lhs.true ], [ -1, %lor.lhs.false ], [ -1, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_ctrl(%struct.evp_cipher_ctx_st* noundef %c, i32 noundef %type, i32 noundef %arg, i8* nocapture noundef writeonly %ptr) #1 {
entry:
  switch i32 %type, label %return [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %c) #5
  %mul = shl nsw i32 %call, 3
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #5
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  %call3 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #5
  %key_bits4 = bitcast i8* %call3 to i32*
  %0 = load i32, i32* %key_bits4, align 4, !tbaa !4
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  %cmp = icmp sgt i32 %arg, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %sw.bb5
  %call6 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %c) #5
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb, %sw.bb2, %if.then
  %call6.sink = phi i8* [ %call6, %if.then ], [ %ptr, %sw.bb2 ], [ %call1, %sw.bb ]
  %arg.sink = phi i32 [ %arg, %if.then ], [ %0, %sw.bb2 ], [ %mul, %sw.bb ]
  %key_bits7 = bitcast i8* %call6.sink to i32*
  store i32 %arg.sink, i32* %key_bits7, align 4, !tbaa !14
  br label %return

return:                                           ; preds = %return.sink.split, %entry, %sw.bb5
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ -1, %entry ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

declare void @RC2_set_key(%struct.rc2_key_st* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @RC2_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.rc2_key_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rc2_meth_to_magic(%struct.evp_cipher_ctx_st* noundef %e) unnamed_addr #1 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %call = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %e, i32 noundef 2, i32 noundef 0, i8* noundef nonnull %0) #5
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4, !tbaa !14
  switch i32 %1, label %if.else8 [
    i32 128, label %cleanup
    i32 64, label %if.then4
    i32 40, label %if.then7
  ]

if.then4:                                         ; preds = %if.end
  br label %cleanup

if.then7:                                         ; preds = %if.end
  br label %cleanup

if.else8:                                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.else8, %if.then7, %if.then4
  %retval.0 = phi i32 [ 120, %if.then4 ], [ 160, %if.then7 ], [ 0, %if.else8 ], [ 0, %entry ], [ 58, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_TYPE_set_int_octetstring(%struct.asn1_type_st* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ASN1_TYPE_get_int_octetstring(%struct.asn1_type_st* noundef, i64* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rc2_magic_to_meth(i32 noundef %i) unnamed_addr #1 {
entry:
  switch i32 %i, label %if.else6 [
    i32 58, label %return
    i32 120, label %if.then2
    i32 160, label %if.then5
  ]

if.then2:                                         ; preds = %entry
  br label %return

if.then5:                                         ; preds = %entry
  br label %return

if.else6:                                         ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.rc2_magic_to_meth, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 108, i8* noundef null) #5
  br label %return

return:                                           ; preds = %entry, %if.else6, %if.then5, %if.then2
  %retval.0 = phi i32 [ 64, %if.then2 ], [ 40, %if.then5 ], [ 0, %if.else6 ], [ 128, %entry ]
  ret i32 %retval.0
}

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_cfb64_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %tobool29.not = icmp eq i64 %inl, 0
  br i1 %tobool29.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp = icmp ult i64 %inl, 4611686018427387904
  %spec.select = select i1 %cmp, i64 %inl, i64 4611686018427387904
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %chunk.133 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %spec.select28, %while.body ]
  %inl.addr.032 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.031 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.030 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call, i32* %num, align 4, !tbaa !14
  %call2 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks = getelementptr inbounds i8, i8* %call2, i64 4
  %1 = bitcast i8* %ks to %struct.rc2_key_st*
  %call3 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  call void @RC2_cfb64_encrypt(i8* noundef %in.addr.031, i8* noundef %out.addr.030, i64 noundef %chunk.133, %struct.rc2_key_st* noundef nonnull %1, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num, i32 noundef %call3) #5
  %2 = load i32, i32* %num, align 4, !tbaa !14
  %call4 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %2) #5
  %sub = sub i64 %inl.addr.032, %chunk.133
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.031, i64 %chunk.133
  %add.ptr5 = getelementptr inbounds i8, i8* %out.addr.030, i64 %chunk.133
  %cmp6 = icmp ult i64 %sub, %chunk.133
  %spec.select28 = select i1 %cmp6, i64 %sub, i64 %chunk.133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !15

while.end:                                        ; preds = %while.body, %entry
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @RC2_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.rc2_key_st* noundef, i8* noundef, i32* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num4 = alloca i32, align 4
  %cmp25 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp25, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.028 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.027 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.026 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr3, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call, i32* %num, align 4, !tbaa !14
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks = getelementptr inbounds i8, i8* %call1, i64 4
  %1 = bitcast i8* %ks to %struct.rc2_key_st*
  call void @RC2_ofb64_encrypt(i8* noundef %in.addr.027, i8* noundef %out.addr.026, i64 noundef 4611686018427387904, %struct.rc2_key_st* noundef nonnull %1, i8* noundef nonnull %arraydecay, i32* noundef nonnull %num) #5
  %2 = load i32, i32* %num, align 4, !tbaa !14
  %call2 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %2) #5
  %sub = add i64 %inl.addr.028, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.027, i64 4611686018427387904
  %add.ptr3 = getelementptr inbounds i8, i8* %out.addr.026, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  %cmp = icmp slt i64 %inl.addr.028, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !16

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr3, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %3 = bitcast i32* %num4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %call5 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call5, i32* %num4, align 4, !tbaa !14
  %call6 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks7 = getelementptr inbounds i8, i8* %call6, i64 4
  %4 = bitcast i8* %ks7 to %struct.rc2_key_st*
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  call void @RC2_ofb64_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.rc2_key_st* noundef nonnull %4, i8* noundef nonnull %arraydecay9, i32* noundef nonnull %num4) #5
  %5 = load i32, i32* %num4, align 4, !tbaa !14
  %call10 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare void @RC2_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.rc2_key_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @rc2_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !17
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.019 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.019
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.019
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %ks = getelementptr inbounds i8, i8* %call5, i64 4
  %1 = bitcast i8* %ks to %struct.rc2_key_st*
  %call6 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @RC2_ecb_encrypt(i8* noundef %add.ptr, i8* noundef %add.ptr4, %struct.rc2_key_st* noundef nonnull %1, i32 noundef %call6) #5
  %add = add i64 %i.019, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !20

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @RC2_ecb_encrypt(i8* noundef, i8* noundef, %struct.rc2_key_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !9, i64 4}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"rc2_key_st", !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = !{!18, !6, i64 4}
!18 = !{!"evp_cipher_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !6, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !6, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !7, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248}
!19 = !{!"any pointer", !7, i64 0}
!20 = distinct !{!20, !11}
