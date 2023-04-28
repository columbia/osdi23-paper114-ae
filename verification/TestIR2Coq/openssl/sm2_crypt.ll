; ModuleID = 'crypto/sm2/sm2_crypt.c'
source_filename = "crypto/sm2/sm2_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.SM2_Ciphertext_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.bignum_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque
%struct.ec_key_st = type opaque
%struct.evp_md_st = type opaque
%struct.ec_group_st = type opaque
%struct.bignum_ctx = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.ec_point_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@SM2_Ciphertext_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* bitcast ([4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @SM2_Ciphertext_seq_tt to [4 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [15 x i8] c"SM2_Ciphertext\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/sm2/sm2_crypt.c\00", align 1
@__func__.ossl_sm2_plaintext_size = private unnamed_addr constant [24 x i8] c"ossl_sm2_plaintext_size\00", align 1
@__func__.ossl_sm2_encrypt = private unnamed_addr constant [17 x i8] c"ossl_sm2_encrypt\00", align 1
@__func__.ossl_sm2_decrypt = private unnamed_addr constant [17 x i8] c"ossl_sm2_decrypt\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"C1x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"C1y\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"C3\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@SM2_Ciphertext_seq_tt = internal constant [4 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @BIGNUM_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @SM2_Ciphertext_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @SM2_Ciphertext_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.SM2_Ciphertext_st* @d2i_SM2_Ciphertext(%struct.SM2_Ciphertext_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SM2_Ciphertext_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @SM2_Ciphertext_it.local_it) #5
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SM2_Ciphertext_st*
  ret %struct.SM2_Ciphertext_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_SM2_Ciphertext(%struct.SM2_Ciphertext_st* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SM2_Ciphertext_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @SM2_Ciphertext_it.local_it) #5
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.SM2_Ciphertext_st* @SM2_Ciphertext_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @SM2_Ciphertext_it.local_it) #5
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SM2_Ciphertext_st*
  ret %struct.SM2_Ciphertext_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @SM2_Ciphertext_free(%struct.SM2_Ciphertext_st* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.SM2_Ciphertext_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @SM2_Ciphertext_it.local_it) #5
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_plaintext_size(i8* noundef %ct, i64 noundef %ct_size, i64* nocapture noundef writeonly %pt_size) local_unnamed_addr #1 {
entry:
  %ct.addr = alloca i8*, align 8
  store i8* %ct, i8** %ct.addr, align 8, !tbaa !4
  %call = call %struct.SM2_Ciphertext_st* @d2i_SM2_Ciphertext(%struct.SM2_Ciphertext_st** noundef null, i8** noundef nonnull %ct.addr, i64 noundef %ct_size) #6
  %cmp = icmp eq %struct.SM2_Ciphertext_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ossl_sm2_plaintext_size, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 104, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %C2 = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %call, i64 0, i32 3
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %C2, align 8, !tbaa !8
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %0, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !10
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %pt_size, align 8, !tbaa !14
  call void @SM2_Ciphertext_free(%struct.SM2_Ciphertext_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_ciphertext_size(%struct.ec_key_st* noundef %key, %struct.evp_md_st* noundef %digest, i64 noundef %msg_len, i64* nocapture noundef writeonly %ct_size) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %key) #5
  %call1 = tail call fastcc i64 @ec_field_size(%struct.ec_group_st* noundef %call) #6
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %digest) #5
  %cmp = icmp eq i64 %call1, 0
  %cmp3 = icmp slt i32 %call2, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = trunc i64 %call1 to i32
  %conv = add i32 %0, 1
  %call4 = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %conv, i32 noundef 2) #5
  %mul = shl nsw i32 %call4, 1
  %call5 = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %call2, i32 noundef 4) #5
  %add6 = add nsw i32 %mul, %call5
  %conv7 = trunc i64 %msg_len to i32
  %call8 = tail call i32 @ASN1_object_size(i32 noundef 0, i32 noundef %conv7, i32 noundef 4) #5
  %add9 = add nsw i32 %add6, %call8
  %call12 = tail call i32 @ASN1_object_size(i32 noundef 1, i32 noundef %add9, i32 noundef 16) #5
  %conv13 = sext i32 %call12 to i64
  store i64 %conv13, i64* %ct_size, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @ec_field_size(%struct.ec_group_st* noundef %group) unnamed_addr #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #5
  %call1 = tail call %struct.bignum_st* @BN_new() #5
  %call2 = tail call %struct.bignum_st* @BN_new() #5
  %cmp = icmp eq %struct.bignum_st* %call, null
  %cmp3 = icmp eq %struct.bignum_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %cmp5 = icmp eq %struct.bignum_st* %call2, null
  %or.cond10 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond10, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef nonnull %call2, %struct.bignum_ctx* noundef null) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %done, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call) #5
  %add = add nsw i32 %call9, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  br label %done

done:                                             ; preds = %if.end, %entry, %if.end8
  %field_size.0 = phi i64 [ 0, %entry ], [ %conv, %if.end8 ], [ 0, %if.end ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #5
  tail call void @BN_free(%struct.bignum_st* noundef %call1) #5
  tail call void @BN_free(%struct.bignum_st* noundef %call2) #5
  ret i64 %field_size.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_object_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_encrypt(%struct.ec_key_st* noundef %key, %struct.evp_md_st* noundef %digest, i8* noundef %msg, i64 noundef %msg_len, i8* noundef %ciphertext_buf, i64* nocapture noundef %ciphertext_len) local_unnamed_addr #1 {
entry:
  %ciphertext_buf.addr = alloca i8*, align 8
  %ctext_struct = alloca %struct.SM2_Ciphertext_st, align 8
  store i8* %ciphertext_buf, i8** %ciphertext_buf.addr, align 8, !tbaa !4
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %0 = bitcast %struct.SM2_Ciphertext_st* %ctext_struct to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  %call1 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %key) #5
  %call2 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %call1) #5
  %call3 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %key) #5
  %call4 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %digest) #5
  %call5 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %key) #5
  %call6 = tail call i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef %key) #5
  %C2 = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %ctext_struct, i64 0, i32 3
  %C37 = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %ctext_struct, i64 0, i32 2
  %1 = bitcast %struct.asn1_string_st** %C37 to <2 x %struct.asn1_string_st*>*
  store <2 x %struct.asn1_string_st*> zeroinitializer, <2 x %struct.asn1_string_st*>* %1, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  %cmp8 = icmp slt i32 %call4, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end:                                           ; preds = %entry
  %call9 = tail call fastcc i64 @ec_field_size(%struct.ec_group_st* noundef %call1) #6
  %cmp10 = icmp eq i64 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end12:                                         ; preds = %if.end
  %call13 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call1) #5
  %call14 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call1) #5
  %call15 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call5) #5
  %cmp16 = icmp eq %struct.ec_point_st* %call13, null
  %cmp18 = icmp eq %struct.ec_point_st* %call14, null
  %or.cond143 = select i1 %cmp16, i1 true, i1 %cmp18
  %cmp20 = icmp eq %struct.bignum_ctx* %call15, null
  %or.cond144 = select i1 %or.cond143, i1 true, i1 %cmp20
  br i1 %or.cond144, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end12
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #5
  br label %done

if.end22:                                         ; preds = %if.end12
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call15) #5
  %call23 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call15) #5
  %call24 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call15) #5
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call15) #5
  %call26 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call15) #5
  %call27 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call15) #5
  %cmp28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end22
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524291, i8* noundef null) #5
  br label %done

if.end30:                                         ; preds = %if.end22
  %mul = shl i64 %call9, 1
  %call31 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 172) #5
  %conv252 = zext i32 %call4 to i64
  %call32 = tail call i8* @CRYPTO_zalloc(i64 noundef %conv252, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 173) #5
  %cmp33 = icmp eq i8* %call31, null
  %cmp36 = icmp eq i8* %call32, null
  %or.cond145 = select i1 %cmp33, i1 true, i1 %cmp36
  br i1 %or.cond145, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end30
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #5
  br label %done

if.end39:                                         ; preds = %if.end30
  %2 = load i64, i64* %ciphertext_len, align 8, !tbaa !14
  %call40 = tail call i8* @memset(i8* noundef %ciphertext_buf, i32 noundef 0, i64 noundef %2) #5
  %call41 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call2, i32 noundef 0, %struct.bignum_ctx* noundef nonnull %call15) #5
  %tobool.not = icmp eq i32 %call41, 0
  br i1 %tobool.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end43:                                         ; preds = %if.end39
  %call44 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call1, %struct.ec_point_st* noundef nonnull %call13, %struct.bignum_st* noundef %call23, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %call15) #5
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then55, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end43
  %call47 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call1, %struct.ec_point_st* noundef nonnull %call13, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call26, %struct.bignum_ctx* noundef nonnull %call15) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then55, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %call50 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call1, %struct.ec_point_st* noundef nonnull %call14, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %call3, %struct.bignum_st* noundef %call23, %struct.bignum_ctx* noundef nonnull %call15) #5
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %call53 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call1, %struct.ec_point_st* noundef nonnull %call14, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef nonnull %call27, %struct.bignum_ctx* noundef nonnull %call15) #5
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false46, %if.end43
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524304, i8* noundef null) #5
  br label %done

if.end56:                                         ; preds = %lor.lhs.false52
  %conv57 = trunc i64 %call9 to i32
  %call58 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call25, i8* noundef nonnull %call31, i32 noundef %conv57) #5
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then66, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end56
  %add.ptr = getelementptr inbounds i8, i8* %call31, i64 %call9
  %call63 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call27, i8* noundef nonnull %add.ptr, i32 noundef %conv57) #5
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %lor.lhs.false61, %if.end56
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end67:                                         ; preds = %lor.lhs.false61
  %call68 = tail call i8* @CRYPTO_zalloc(i64 noundef %msg_len, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 201) #5
  %cmp69 = icmp eq i8* %call68, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end67
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #5
  br label %done

if.end72:                                         ; preds = %if.end67
  %call74 = tail call i32 @ossl_ecdh_kdf_X9_63(i8* noundef nonnull %call68, i64 noundef %msg_len, i8* noundef nonnull %call31, i64 noundef %mul, i8* noundef null, i64 noundef 0, %struct.evp_md_st* noundef %digest, %struct.ossl_lib_ctx_st* noundef %call5, i8* noundef %call6) #5
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end72
  %cmp78.not254 = icmp eq i64 %msg_len, 0
  br i1 %cmp78.not254, label %for.end, label %iter.check

iter.check:                                       ; preds = %for.cond.preheader
  %min.iters.check = icmp ult i64 %msg_len, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %call68, i64 %msg_len
  %scevgep256 = getelementptr i8, i8* %msg, i64 %msg_len
  %bound0 = icmp ult i8* %call68, %scevgep256
  %bound1 = icmp ugt i8* %scevgep, %msg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check257 = icmp ult i64 %msg_len, 32
  br i1 %min.iters.check257, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %msg_len, -32
  %3 = add i64 %n.vec, -32
  %4 = lshr exact i64 %3, 5
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 1
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %5, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %7 = getelementptr inbounds i8, i8* %msg, i64 %index
  %8 = bitcast i8* %7 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %8, align 1, !tbaa !15, !alias.scope !16
  %9 = getelementptr inbounds i8, i8* %7, i64 16
  %10 = bitcast i8* %9 to <16 x i8>*
  %wide.load258 = load <16 x i8>, <16 x i8>* %10, align 1, !tbaa !15, !alias.scope !16
  %11 = getelementptr inbounds i8, i8* %call68, i64 %index
  %12 = bitcast i8* %11 to <16 x i8>*
  %wide.load259 = load <16 x i8>, <16 x i8>* %12, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %13 = getelementptr inbounds i8, i8* %11, i64 16
  %14 = bitcast i8* %13 to <16 x i8>*
  %wide.load260 = load <16 x i8>, <16 x i8>* %14, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %15 = xor <16 x i8> %wide.load259, %wide.load
  %16 = xor <16 x i8> %wide.load260, %wide.load258
  %17 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> %15, <16 x i8>* %17, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %18 = bitcast i8* %13 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %18, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %index.next = or i64 %index, 32
  %19 = getelementptr inbounds i8, i8* %msg, i64 %index.next
  %20 = bitcast i8* %19 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %20, align 1, !tbaa !15, !alias.scope !16
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load258.1 = load <16 x i8>, <16 x i8>* %22, align 1, !tbaa !15, !alias.scope !16
  %23 = getelementptr inbounds i8, i8* %call68, i64 %index.next
  %24 = bitcast i8* %23 to <16 x i8>*
  %wide.load259.1 = load <16 x i8>, <16 x i8>* %24, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  %wide.load260.1 = load <16 x i8>, <16 x i8>* %26, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %27 = xor <16 x i8> %wide.load259.1, %wide.load.1
  %28 = xor <16 x i8> %wide.load260.1, %wide.load258.1
  %29 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %27, <16 x i8>* %29, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %30 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %28, <16 x i8>* %30, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %31 = getelementptr inbounds i8, i8* %msg, i64 %index.unr
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !15, !alias.scope !16
  %33 = getelementptr inbounds i8, i8* %31, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load258.epil = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !15, !alias.scope !16
  %35 = getelementptr inbounds i8, i8* %call68, i64 %index.unr
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load259.epil = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %37 = getelementptr inbounds i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  %wide.load260.epil = load <16 x i8>, <16 x i8>* %38, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %39 = xor <16 x i8> %wide.load259.epil, %wide.load.epil
  %40 = xor <16 x i8> %wide.load260.epil, %wide.load258.epil
  %41 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %39, <16 x i8>* %41, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  %42 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %40, <16 x i8>* %42, align 1, !tbaa !15, !alias.scope !19, !noalias !16
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %msg_len
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %msg_len, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec262 = and i64 %msg_len, -8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ]
  %43 = getelementptr inbounds i8, i8* %msg, i64 %index264
  %44 = bitcast i8* %43 to <8 x i8>*
  %wide.load265 = load <8 x i8>, <8 x i8>* %44, align 1, !tbaa !15
  %45 = getelementptr inbounds i8, i8* %call68, i64 %index264
  %46 = bitcast i8* %45 to <8 x i8>*
  %wide.load266 = load <8 x i8>, <8 x i8>* %46, align 1, !tbaa !15
  %47 = xor <8 x i8> %wide.load266, %wide.load265
  %48 = bitcast i8* %45 to <8 x i8>*
  store <8 x i8> %47, <8 x i8>* %48, align 1, !tbaa !15
  %index.next267 = add nuw i64 %index264, 8
  %49 = icmp eq i64 %index.next267, %n.vec262
  br i1 %49, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n263 = icmp eq i64 %n.vec262, %msg_len
  br i1 %cmp.n263, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %i.0255.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec262, %vec.epilog.middle.block ]
  %50 = xor i64 %i.0255.ph, -1
  %51 = add i64 %50, %msg_len
  %xtraiter268 = and i64 %msg_len, 3
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %i.0255.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %i.0255.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %msg, i64 %i.0255.prol
  %52 = load i8, i8* %arrayidx.prol, align 1, !tbaa !15
  %arrayidx81.prol = getelementptr inbounds i8, i8* %call68, i64 %i.0255.prol
  %53 = load i8, i8* %arrayidx81.prol, align 1, !tbaa !15
  %xor251.prol = xor i8 %53, %52
  store i8 %xor251.prol, i8* %arrayidx81.prol, align 1, !tbaa !15
  %inc.prol = add nuw i64 %i.0255.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter268
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !26

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %i.0255.unr = phi i64 [ %i.0255.ph, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %54 = icmp ult i64 %51, 3
  br i1 %54, label %for.end, label %for.body

if.then76:                                        ; preds = %if.end72
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524294, i8* noundef null) #5
  br label %done

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %i.0255 = phi i64 [ %inc.3, %for.body ], [ %i.0255.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, i8* %msg, i64 %i.0255
  %55 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %arrayidx81 = getelementptr inbounds i8, i8* %call68, i64 %i.0255
  %56 = load i8, i8* %arrayidx81, align 1, !tbaa !15
  %xor251 = xor i8 %56, %55
  store i8 %xor251, i8* %arrayidx81, align 1, !tbaa !15
  %inc = add nuw i64 %i.0255, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %msg, i64 %inc
  %57 = load i8, i8* %arrayidx.1, align 1, !tbaa !15
  %arrayidx81.1 = getelementptr inbounds i8, i8* %call68, i64 %inc
  %58 = load i8, i8* %arrayidx81.1, align 1, !tbaa !15
  %xor251.1 = xor i8 %58, %57
  store i8 %xor251.1, i8* %arrayidx81.1, align 1, !tbaa !15
  %inc.1 = add nuw i64 %i.0255, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %msg, i64 %inc.1
  %59 = load i8, i8* %arrayidx.2, align 1, !tbaa !15
  %arrayidx81.2 = getelementptr inbounds i8, i8* %call68, i64 %inc.1
  %60 = load i8, i8* %arrayidx81.2, align 1, !tbaa !15
  %xor251.2 = xor i8 %60, %59
  store i8 %xor251.2, i8* %arrayidx81.2, align 1, !tbaa !15
  %inc.2 = add nuw i64 %i.0255, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %msg, i64 %inc.2
  %61 = load i8, i8* %arrayidx.3, align 1, !tbaa !15
  %arrayidx81.3 = getelementptr inbounds i8, i8* %call68, i64 %inc.2
  %62 = load i8, i8* %arrayidx81.3, align 1, !tbaa !15
  %xor251.3 = xor i8 %62, %61
  store i8 %xor251.3, i8* %arrayidx81.3, align 1, !tbaa !15
  %inc.3 = add nuw i64 %i.0255, 4
  %cmp78.not.3 = icmp eq i64 %inc.3, %msg_len
  br i1 %cmp78.not.3, label %for.end, label %for.body, !llvm.loop !28

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %for.cond.preheader
  %call84 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %digest) #5
  %call85 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call5, i8* noundef %call84, i8* noundef %call6) #5
  %cmp86 = icmp eq %struct.evp_md_st* %call85, null
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %for.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end89:                                         ; preds = %for.end
  %call90 = tail call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef nonnull %call85) #5
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then110, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.end89
  %call94 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef %call31, i64 noundef %call9) #5
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then110, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %call98 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef %msg, i64 noundef %msg_len) #5
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then110, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call103 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %add.ptr, i64 noundef %call9) #5
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then110, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false101
  %call107 = tail call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef %call, i8* noundef %call32, i32* noundef null) #5
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %lor.lhs.false106, %lor.lhs.false101, %lor.lhs.false97, %lor.lhs.false93, %if.end89
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 524294, i8* noundef null) #5
  br label %done

if.end111:                                        ; preds = %lor.lhs.false106
  %C1x = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %ctext_struct, i64 0, i32 0
  store %struct.bignum_st* %call24, %struct.bignum_st** %C1x, align 8, !tbaa !29
  %C1y = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %ctext_struct, i64 0, i32 1
  store %struct.bignum_st* %call26, %struct.bignum_st** %C1y, align 8, !tbaa !30
  %call112 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  store %struct.asn1_string_st* %call112, %struct.asn1_string_st** %C37, align 8, !tbaa !31
  %call114 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #5
  store %struct.asn1_string_st* %call114, %struct.asn1_string_st** %C2, align 8, !tbaa !8
  %cmp117 = icmp eq %struct.asn1_string_st* %call112, null
  %cmp121 = icmp eq %struct.asn1_string_st* %call114, null
  %or.cond146 = select i1 %cmp117, i1 true, i1 %cmp121
  br i1 %or.cond146, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end111
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786688, i8* noundef null) #5
  br label %done

if.end124:                                        ; preds = %if.end111
  %call126 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call112, i8* noundef %call32, i32 noundef %call4) #5
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then133, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.end124
  %conv130 = trunc i64 %msg_len to i32
  %call131 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call114, i8* noundef nonnull %call68, i32 noundef %conv130) #5
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then133, label %if.end134

if.then133:                                       ; preds = %lor.lhs.false128, %if.end124
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end134:                                        ; preds = %lor.lhs.false128
  %call135 = call i32 @i2d_SM2_Ciphertext(%struct.SM2_Ciphertext_st* noundef nonnull %ctext_struct, i8** noundef nonnull %ciphertext_buf.addr) #6
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end134
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_encrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef 786691, i8* noundef null) #5
  br label %done

if.end139:                                        ; preds = %if.end134
  %conv140253 = zext i32 %call135 to i64
  store i64 %conv140253, i64* %ciphertext_len, align 8, !tbaa !14
  br label %done

done:                                             ; preds = %if.end139, %if.then138, %if.then133, %if.then123, %if.then110, %if.then88, %if.then76, %if.then71, %if.then66, %if.then55, %if.then42, %if.then38, %if.then29, %if.then21, %if.then11, %if.then
  %kG.0 = phi %struct.ec_point_st* [ null, %if.then ], [ null, %if.then11 ], [ %call13, %if.then21 ], [ %call13, %if.then29 ], [ %call13, %if.then38 ], [ %call13, %if.then66 ], [ %call13, %if.then71 ], [ %call13, %if.then88 ], [ %call13, %if.then110 ], [ %call13, %if.then123 ], [ %call13, %if.then138 ], [ %call13, %if.end139 ], [ %call13, %if.then133 ], [ %call13, %if.then76 ], [ %call13, %if.then55 ], [ %call13, %if.then42 ]
  %kP.0 = phi %struct.ec_point_st* [ null, %if.then ], [ null, %if.then11 ], [ %call14, %if.then21 ], [ %call14, %if.then29 ], [ %call14, %if.then38 ], [ %call14, %if.then66 ], [ %call14, %if.then71 ], [ %call14, %if.then88 ], [ %call14, %if.then110 ], [ %call14, %if.then123 ], [ %call14, %if.then138 ], [ %call14, %if.end139 ], [ %call14, %if.then133 ], [ %call14, %if.then76 ], [ %call14, %if.then55 ], [ %call14, %if.then42 ]
  %msg_mask.0 = phi i8* [ null, %if.then ], [ null, %if.then11 ], [ null, %if.then21 ], [ null, %if.then29 ], [ null, %if.then38 ], [ null, %if.then66 ], [ null, %if.then71 ], [ %call68, %if.then88 ], [ %call68, %if.then110 ], [ %call68, %if.then123 ], [ %call68, %if.then138 ], [ %call68, %if.end139 ], [ %call68, %if.then133 ], [ %call68, %if.then76 ], [ null, %if.then55 ], [ null, %if.then42 ]
  %x2y2.0 = phi i8* [ null, %if.then ], [ null, %if.then11 ], [ null, %if.then21 ], [ null, %if.then29 ], [ %call31, %if.then38 ], [ %call31, %if.then66 ], [ %call31, %if.then71 ], [ %call31, %if.then88 ], [ %call31, %if.then110 ], [ %call31, %if.then123 ], [ %call31, %if.then138 ], [ %call31, %if.end139 ], [ %call31, %if.then133 ], [ %call31, %if.then76 ], [ %call31, %if.then55 ], [ %call31, %if.then42 ]
  %C3.0 = phi i8* [ null, %if.then ], [ null, %if.then11 ], [ null, %if.then21 ], [ null, %if.then29 ], [ %call32, %if.then38 ], [ %call32, %if.then66 ], [ %call32, %if.then71 ], [ %call32, %if.then88 ], [ %call32, %if.then110 ], [ %call32, %if.then123 ], [ %call32, %if.then138 ], [ %call32, %if.end139 ], [ %call32, %if.then133 ], [ %call32, %if.then76 ], [ %call32, %if.then55 ], [ %call32, %if.then42 ]
  %ctx.0 = phi %struct.bignum_ctx* [ null, %if.then ], [ null, %if.then11 ], [ %call15, %if.then21 ], [ %call15, %if.then29 ], [ %call15, %if.then38 ], [ %call15, %if.then66 ], [ %call15, %if.then71 ], [ %call15, %if.then88 ], [ %call15, %if.then110 ], [ %call15, %if.then123 ], [ %call15, %if.then138 ], [ %call15, %if.end139 ], [ %call15, %if.then133 ], [ %call15, %if.then76 ], [ %call15, %if.then55 ], [ %call15, %if.then42 ]
  %fetched_digest.0 = phi %struct.evp_md_st* [ null, %if.then ], [ null, %if.then11 ], [ null, %if.then21 ], [ null, %if.then29 ], [ null, %if.then38 ], [ null, %if.then66 ], [ null, %if.then71 ], [ null, %if.then88 ], [ %call85, %if.then110 ], [ %call85, %if.then123 ], [ %call85, %if.then138 ], [ %call85, %if.end139 ], [ %call85, %if.then133 ], [ null, %if.then76 ], [ null, %if.then55 ], [ null, %if.then42 ]
  %rc.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.then38 ], [ 0, %if.then66 ], [ 0, %if.then71 ], [ 0, %if.then88 ], [ 0, %if.then110 ], [ 0, %if.then123 ], [ 0, %if.then138 ], [ 1, %if.end139 ], [ 0, %if.then133 ], [ 0, %if.then76 ], [ 0, %if.then55 ], [ 0, %if.then42 ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %fetched_digest.0) #5
  %63 = load %struct.asn1_string_st*, %struct.asn1_string_st** %C2, align 8, !tbaa !8
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %63) #5
  %64 = load %struct.asn1_string_st*, %struct.asn1_string_st** %C37, align 8, !tbaa !31
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %64) #5
  call void @CRYPTO_free(i8* noundef %msg_mask.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 260) #5
  call void @CRYPTO_free(i8* noundef %x2y2.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 261) #5
  call void @CRYPTO_free(i8* noundef %C3.0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 262) #5
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #5
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #5
  call void @EC_POINT_free(%struct.ec_point_st* noundef %kG.0) #5
  call void @EC_POINT_free(%struct.ec_point_st* noundef %kP.0) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret i32 %rc.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ecdh_kdf_X9_63(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sm2_decrypt(%struct.ec_key_st* noundef %key, %struct.evp_md_st* noundef %digest, i8* noundef %ciphertext, i64 noundef %ciphertext_len, i8* noundef %ptext_buf, i64* nocapture noundef %ptext_len) local_unnamed_addr #1 {
entry:
  %ciphertext.addr = alloca i8*, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8, !tbaa !4
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %key) #5
  %call1 = tail call fastcc i64 @ec_field_size(%struct.ec_group_st* noundef %call) #6
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %digest) #5
  %call3 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %key) #5
  %call4 = tail call i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* noundef %key) #5
  %cmp = icmp eq i64 %call1, 0
  %cmp5 = icmp slt i32 %call2, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then122, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64, i64* %ptext_len, align 8, !tbaa !14
  %call6 = tail call i8* @memset(i8* noundef %ptext_buf, i32 noundef 255, i64 noundef %0) #5
  %call7 = call %struct.SM2_Ciphertext_st* @d2i_SM2_Ciphertext(%struct.SM2_Ciphertext_st** noundef null, i8** noundef nonnull %ciphertext.addr, i64 noundef %ciphertext_len) #6
  %cmp8 = icmp eq %struct.SM2_Ciphertext_st* %call7, null
  br i1 %cmp8, label %if.then122.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end
  %C311 = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %call7, i64 0, i32 2
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %C311, align 8, !tbaa !31
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !10
  %cmp12.not = icmp eq i32 %2, %call2
  br i1 %cmp12.not, label %if.end14, label %if.then122.sink.split

if.end14:                                         ; preds = %if.end10
  %C215 = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %call7, i64 0, i32 3
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %C215, align 8, !tbaa !8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 2
  %4 = load i8*, i8** %data, align 8, !tbaa !32
  %data17 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %1, i64 0, i32 2
  %5 = load i8*, i8** %data17, align 8, !tbaa !32
  %length19 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %3, i64 0, i32 0
  %6 = load i32, i32* %length19, align 8, !tbaa !10
  %7 = load i64, i64* %ptext_len, align 8, !tbaa !14
  %conv = sext i32 %6 to i64
  %cmp20 = icmp ult i64 %7, %conv
  br i1 %cmp20, label %if.then122.sink.split, label %if.end23

if.end23:                                         ; preds = %if.end14
  %call24 = call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call3) #5
  %cmp25 = icmp eq %struct.bignum_ctx* %call24, null
  br i1 %cmp25, label %if.then122.sink.split, label %if.end28

if.end28:                                         ; preds = %if.end23
  call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call24) #5
  %call29 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call24) #5
  %call30 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call24) #5
  %cmp31 = icmp eq %struct.bignum_st* %call30, null
  br i1 %cmp31, label %if.then122.sink.split, label %if.end34

if.end34:                                         ; preds = %if.end28
  %call36 = call i8* @CRYPTO_zalloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 335) #5
  %mul = shl i64 %call1, 1
  %call37 = call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 336) #5
  %conv38249 = zext i32 %call2 to i64
  %call39 = call i8* @CRYPTO_zalloc(i64 noundef %conv38249, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 337) #5
  %cmp40 = icmp eq i8* %call36, null
  %cmp43 = icmp eq i8* %call37, null
  %or.cond125 = select i1 %cmp40, i1 true, i1 %cmp43
  %cmp46 = icmp eq i8* %call39, null
  %or.cond126 = select i1 %or.cond125, i1 true, i1 %cmp46
  br i1 %or.cond126, label %if.then122.sink.split, label %if.end49

if.end49:                                         ; preds = %if.end34
  %call50 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %call) #5
  %cmp51 = icmp eq %struct.ec_point_st* %call50, null
  br i1 %cmp51, label %if.then122.sink.split, label %if.end54

if.end54:                                         ; preds = %if.end49
  %C1x = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %call7, i64 0, i32 0
  %8 = load %struct.bignum_st*, %struct.bignum_st** %C1x, align 8, !tbaa !29
  %C1y = getelementptr inbounds %struct.SM2_Ciphertext_st, %struct.SM2_Ciphertext_st* %call7, i64 0, i32 1
  %9 = load %struct.bignum_st*, %struct.bignum_st** %C1y, align 8, !tbaa !30
  %call55 = call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef nonnull %call50, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef nonnull %call24) #5
  %tobool.not = icmp eq i32 %call55, 0
  br i1 %tobool.not, label %if.then122.sink.split, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end54
  %call57 = call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef %key) #5
  %call58 = call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef nonnull %call50, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef nonnull %call50, %struct.bignum_st* noundef %call57, %struct.bignum_ctx* noundef nonnull %call24) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then122.sink.split, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %call61 = call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %call, %struct.ec_point_st* noundef nonnull %call50, %struct.bignum_st* noundef %call29, %struct.bignum_st* noundef nonnull %call30, %struct.bignum_ctx* noundef nonnull %call24) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then122.sink.split, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false60
  %conv65 = trunc i64 %call1 to i32
  %call66 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef %call29, i8* noundef nonnull %call37, i32 noundef %conv65) #5
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then122.sink.split, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end64
  %add.ptr = getelementptr inbounds i8, i8* %call37, i64 %call1
  %call71 = call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call30, i8* noundef %add.ptr, i32 noundef %conv65) #5
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then122.sink.split, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false69
  %call77 = call i32 @ossl_ecdh_kdf_X9_63(i8* noundef nonnull %call36, i64 noundef %conv, i8* noundef nonnull %call37, i64 noundef %mul, i8* noundef null, i64 noundef 0, %struct.evp_md_st* noundef %digest, %struct.ossl_lib_ctx_st* noundef %call3, i8* noundef %call4) #5
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then122.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false74
  %cmp81.not250 = icmp eq i32 %6, 0
  br i1 %cmp81.not250, label %for.end, label %iter.check

iter.check:                                       ; preds = %for.cond.preheader
  %10 = zext i32 %6 to i64
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %ptext_buf, i64 %10
  %scevgep254 = getelementptr i8, i8* %4, i64 %10
  %scevgep255 = getelementptr i8, i8* %call36, i64 %10
  %bound0 = icmp ugt i8* %scevgep254, %ptext_buf
  %bound1 = icmp ult i8* %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0256 = icmp ugt i8* %scevgep255, %ptext_buf
  %bound1257 = icmp ult i8* %call36, %scevgep
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx = or i1 %found.conflict, %found.conflict258
  br i1 %conflict.rdx, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check259 = icmp ult i32 %6, 32
  br i1 %min.iters.check259, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %10, 4294967264
  %11 = add nsw i64 %n.vec, -32
  %12 = lshr exact i64 %11, 5
  %13 = add nuw nsw i64 %12, 1
  %xtraiter = and i64 %13, 1
  %14 = icmp eq i64 %11, 0
  br i1 %14, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %13, 1152921504606846974
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %15 = getelementptr inbounds i8, i8* %4, i64 %index
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %16, align 1, !tbaa !15, !alias.scope !33
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  %wide.load260 = load <16 x i8>, <16 x i8>* %18, align 1, !tbaa !15, !alias.scope !33
  %19 = getelementptr inbounds i8, i8* %call36, i64 %index
  %20 = bitcast i8* %19 to <16 x i8>*
  %wide.load261 = load <16 x i8>, <16 x i8>* %20, align 1, !tbaa !15, !alias.scope !36
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  %wide.load262 = load <16 x i8>, <16 x i8>* %22, align 1, !tbaa !15, !alias.scope !36
  %23 = xor <16 x i8> %wide.load261, %wide.load
  %24 = xor <16 x i8> %wide.load262, %wide.load260
  %25 = getelementptr inbounds i8, i8* %ptext_buf, i64 %index
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %23, <16 x i8>* %26, align 1, !tbaa !15, !alias.scope !38, !noalias !40
  %27 = getelementptr inbounds i8, i8* %25, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> %24, <16 x i8>* %28, align 1, !tbaa !15, !alias.scope !38, !noalias !40
  %index.next = or i64 %index, 32
  %29 = getelementptr inbounds i8, i8* %4, i64 %index.next
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !15, !alias.scope !33
  %31 = getelementptr inbounds i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load260.1 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !15, !alias.scope !33
  %33 = getelementptr inbounds i8, i8* %call36, i64 %index.next
  %34 = bitcast i8* %33 to <16 x i8>*
  %wide.load261.1 = load <16 x i8>, <16 x i8>* %34, align 1, !tbaa !15, !alias.scope !36
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load262.1 = load <16 x i8>, <16 x i8>* %36, align 1, !tbaa !15, !alias.scope !36
  %37 = xor <16 x i8> %wide.load261.1, %wide.load.1
  %38 = xor <16 x i8> %wide.load262.1, %wide.load260.1
  %39 = getelementptr inbounds i8, i8* %ptext_buf, i64 %index.next
  %40 = bitcast i8* %39 to <16 x i8>*
  store <16 x i8> %37, <16 x i8>* %40, align 1, !tbaa !15, !alias.scope !38, !noalias !40
  %41 = getelementptr inbounds i8, i8* %39, i64 16
  %42 = bitcast i8* %41 to <16 x i8>*
  store <16 x i8> %38, <16 x i8>* %42, align 1, !tbaa !15, !alias.scope !38, !noalias !40
  %index.next.1 = add nuw i64 %index, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !41

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %43 = getelementptr inbounds i8, i8* %4, i64 %index.unr
  %44 = bitcast i8* %43 to <16 x i8>*
  %wide.load.epil = load <16 x i8>, <16 x i8>* %44, align 1, !tbaa !15, !alias.scope !33
  %45 = getelementptr inbounds i8, i8* %43, i64 16
  %46 = bitcast i8* %45 to <16 x i8>*
  %wide.load260.epil = load <16 x i8>, <16 x i8>* %46, align 1, !tbaa !15, !alias.scope !33
  %47 = getelementptr inbounds i8, i8* %call36, i64 %index.unr
  %48 = bitcast i8* %47 to <16 x i8>*
  %wide.load261.epil = load <16 x i8>, <16 x i8>* %48, align 1, !tbaa !15, !alias.scope !36
  %49 = getelementptr inbounds i8, i8* %47, i64 16
  %50 = bitcast i8* %49 to <16 x i8>*
  %wide.load262.epil = load <16 x i8>, <16 x i8>* %50, align 1, !tbaa !15, !alias.scope !36
  %51 = xor <16 x i8> %wide.load261.epil, %wide.load.epil
  %52 = xor <16 x i8> %wide.load262.epil, %wide.load260.epil
  %53 = getelementptr inbounds i8, i8* %ptext_buf, i64 %index.unr
  %54 = bitcast i8* %53 to <16 x i8>*
  store <16 x i8> %51, <16 x i8>* %54, align 1, !tbaa !15, !alias.scope !38, !noalias !40
  %55 = getelementptr inbounds i8, i8* %53, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %52, <16 x i8>* %56, align 1, !tbaa !15, !alias.scope !38, !noalias !40
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %10
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %n.vec.remaining = and i64 %10, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec264 = and i64 %10, 4294967288
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index266 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next269, %vec.epilog.vector.body ]
  %57 = getelementptr inbounds i8, i8* %4, i64 %index266
  %58 = bitcast i8* %57 to <8 x i8>*
  %wide.load267 = load <8 x i8>, <8 x i8>* %58, align 1, !tbaa !15
  %59 = getelementptr inbounds i8, i8* %call36, i64 %index266
  %60 = bitcast i8* %59 to <8 x i8>*
  %wide.load268 = load <8 x i8>, <8 x i8>* %60, align 1, !tbaa !15
  %61 = xor <8 x i8> %wide.load268, %wide.load267
  %62 = getelementptr inbounds i8, i8* %ptext_buf, i64 %index266
  %63 = bitcast i8* %62 to <8 x i8>*
  store <8 x i8> %61, <8 x i8>* %63, align 1, !tbaa !15
  %index.next269 = add nuw i64 %index266, 8
  %64 = icmp eq i64 %index.next269, %n.vec264
  br i1 %64, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n265 = icmp eq i64 %n.vec264, %10
  br i1 %cmp.n265, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec264, %vec.epilog.middle.block ]
  %65 = xor i64 %indvars.iv.ph, -1
  %66 = add nsw i64 %65, %10
  %xtraiter270 = and i64 %10, 3
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.prol
  %67 = load i8, i8* %arrayidx.prol, align 1, !tbaa !15
  %arrayidx85.prol = getelementptr inbounds i8, i8* %call36, i64 %indvars.iv.prol
  %68 = load i8, i8* %arrayidx85.prol, align 1, !tbaa !15
  %xor223.prol = xor i8 %68, %67
  %arrayidx89.prol = getelementptr inbounds i8, i8* %ptext_buf, i64 %indvars.iv.prol
  store i8 %xor223.prol, i8* %arrayidx89.prol, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter270
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !43

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %69 = icmp ult i64 %66, 3
  br i1 %69, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %indvars.iv
  %70 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %arrayidx85 = getelementptr inbounds i8, i8* %call36, i64 %indvars.iv
  %71 = load i8, i8* %arrayidx85, align 1, !tbaa !15
  %xor223 = xor i8 %71, %70
  %arrayidx89 = getelementptr inbounds i8, i8* %ptext_buf, i64 %indvars.iv
  store i8 %xor223, i8* %arrayidx89, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.next
  %72 = load i8, i8* %arrayidx.1, align 1, !tbaa !15
  %arrayidx85.1 = getelementptr inbounds i8, i8* %call36, i64 %indvars.iv.next
  %73 = load i8, i8* %arrayidx85.1, align 1, !tbaa !15
  %xor223.1 = xor i8 %73, %72
  %arrayidx89.1 = getelementptr inbounds i8, i8* %ptext_buf, i64 %indvars.iv.next
  store i8 %xor223.1, i8* %arrayidx89.1, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.next.1
  %74 = load i8, i8* %arrayidx.2, align 1, !tbaa !15
  %arrayidx85.2 = getelementptr inbounds i8, i8* %call36, i64 %indvars.iv.next.1
  %75 = load i8, i8* %arrayidx85.2, align 1, !tbaa !15
  %xor223.2 = xor i8 %75, %74
  %arrayidx89.2 = getelementptr inbounds i8, i8* %ptext_buf, i64 %indvars.iv.next.1
  store i8 %xor223.2, i8* %arrayidx89.2, align 1, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.next.2
  %76 = load i8, i8* %arrayidx.3, align 1, !tbaa !15
  %arrayidx85.3 = getelementptr inbounds i8, i8* %call36, i64 %indvars.iv.next.2
  %77 = load i8, i8* %arrayidx85.3, align 1, !tbaa !15
  %xor223.3 = xor i8 %77, %76
  %arrayidx89.3 = getelementptr inbounds i8, i8* %ptext_buf, i64 %indvars.iv.next.2
  store i8 %xor223.3, i8* %arrayidx89.3, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %cmp81.not.3 = icmp eq i64 %indvars.iv.next.3, %10
  br i1 %cmp81.not.3, label %for.end, label %for.body, !llvm.loop !44

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %for.cond.preheader
  %call90 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %cmp91 = icmp eq %struct.evp_md_ctx_st* %call90, null
  br i1 %cmp91, label %if.then122.sink.split, label %if.end94

if.end94:                                         ; preds = %for.end
  %call95 = call i32 @EVP_DigestInit(%struct.evp_md_ctx_st* noundef nonnull %call90, %struct.evp_md_st* noundef %digest) #5
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then122.sink.split, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end94
  %call98 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call90, i8* noundef %call37, i64 noundef %call1) #5
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then122.sink.split, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false97
  %call102 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call90, i8* noundef %ptext_buf, i64 noundef %conv) #5
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then122.sink.split, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %call106 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call90, i8* noundef %add.ptr, i64 noundef %call1) #5
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then122.sink.split, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %call109 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef nonnull %call90, i8* noundef %call39, i32* noundef null) #5
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then122.sink.split, label %if.end112

if.end112:                                        ; preds = %lor.lhs.false108
  %call114 = call i32 @CRYPTO_memcmp(i8* noundef %call39, i8* noundef %5, i64 noundef %conv38249) #5
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %done, label %if.then122.sink.split

done:                                             ; preds = %if.end112
  store i64 %conv, i64* %ptext_len, align 8, !tbaa !14
  br label %if.end124

if.then122.sink.split:                            ; preds = %if.end112, %if.end94, %lor.lhs.false97, %lor.lhs.false100, %lor.lhs.false104, %lor.lhs.false108, %for.end, %if.end64, %lor.lhs.false69, %lor.lhs.false74, %if.end54, %lor.lhs.false56, %lor.lhs.false60, %if.end49, %if.end34, %if.end28, %if.end23, %if.end14, %if.end10, %if.end
  %.sink253 = phi i32 [ 303, %if.end ], [ 308, %if.end10 ], [ 316, %if.end14 ], [ 322, %if.end23 ], [ 331, %if.end28 ], [ 340, %if.end34 ], [ 346, %if.end49 ], [ 355, %lor.lhs.false60 ], [ 355, %lor.lhs.false56 ], [ 355, %if.end54 ], [ 363, %lor.lhs.false74 ], [ 363, %lor.lhs.false69 ], [ 363, %if.end64 ], [ 372, %for.end ], [ 381, %lor.lhs.false108 ], [ 381, %lor.lhs.false104 ], [ 381, %lor.lhs.false100 ], [ 381, %lor.lhs.false97 ], [ 381, %if.end94 ], [ 386, %if.end112 ]
  %.sink = phi i32 [ 100, %if.end ], [ 104, %if.end10 ], [ 107, %if.end14 ], [ 786688, %if.end23 ], [ 524291, %if.end28 ], [ 786688, %if.end34 ], [ 786688, %if.end49 ], [ 524304, %lor.lhs.false60 ], [ 524304, %lor.lhs.false56 ], [ 524304, %if.end54 ], [ 786691, %lor.lhs.false74 ], [ 786691, %lor.lhs.false69 ], [ 786691, %if.end64 ], [ 786688, %for.end ], [ 524294, %lor.lhs.false108 ], [ 524294, %lor.lhs.false104 ], [ 524294, %lor.lhs.false100 ], [ 524294, %lor.lhs.false97 ], [ 524294, %if.end94 ], [ 102, %if.end112 ]
  %sm2_ctext.0.ph.ph = phi %struct.SM2_Ciphertext_st* [ null, %if.end ], [ %call7, %if.end10 ], [ %call7, %if.end14 ], [ %call7, %if.end23 ], [ %call7, %if.end28 ], [ %call7, %if.end34 ], [ %call7, %if.end49 ], [ %call7, %lor.lhs.false60 ], [ %call7, %lor.lhs.false56 ], [ %call7, %if.end54 ], [ %call7, %lor.lhs.false74 ], [ %call7, %lor.lhs.false69 ], [ %call7, %if.end64 ], [ %call7, %for.end ], [ %call7, %lor.lhs.false108 ], [ %call7, %lor.lhs.false104 ], [ %call7, %lor.lhs.false100 ], [ %call7, %lor.lhs.false97 ], [ %call7, %if.end94 ], [ %call7, %if.end112 ]
  %x2y2.0.ph.ph = phi i8* [ null, %if.end ], [ null, %if.end10 ], [ null, %if.end14 ], [ null, %if.end23 ], [ null, %if.end28 ], [ %call37, %if.end34 ], [ %call37, %if.end49 ], [ %call37, %lor.lhs.false60 ], [ %call37, %lor.lhs.false56 ], [ %call37, %if.end54 ], [ %call37, %lor.lhs.false74 ], [ %call37, %lor.lhs.false69 ], [ %call37, %if.end64 ], [ %call37, %for.end ], [ %call37, %lor.lhs.false108 ], [ %call37, %lor.lhs.false104 ], [ %call37, %lor.lhs.false100 ], [ %call37, %lor.lhs.false97 ], [ %call37, %if.end94 ], [ %call37, %if.end112 ]
  %computed_C3.0.ph.ph = phi i8* [ null, %if.end ], [ null, %if.end10 ], [ null, %if.end14 ], [ null, %if.end23 ], [ null, %if.end28 ], [ %call39, %if.end34 ], [ %call39, %if.end49 ], [ %call39, %lor.lhs.false60 ], [ %call39, %lor.lhs.false56 ], [ %call39, %if.end54 ], [ %call39, %lor.lhs.false74 ], [ %call39, %lor.lhs.false69 ], [ %call39, %if.end64 ], [ %call39, %for.end ], [ %call39, %lor.lhs.false108 ], [ %call39, %lor.lhs.false104 ], [ %call39, %lor.lhs.false100 ], [ %call39, %lor.lhs.false97 ], [ %call39, %if.end94 ], [ %call39, %if.end112 ]
  %C1.0.ph.ph = phi %struct.ec_point_st* [ null, %if.end ], [ null, %if.end10 ], [ null, %if.end14 ], [ null, %if.end23 ], [ null, %if.end28 ], [ null, %if.end34 ], [ null, %if.end49 ], [ %call50, %lor.lhs.false60 ], [ %call50, %lor.lhs.false56 ], [ %call50, %if.end54 ], [ %call50, %lor.lhs.false74 ], [ %call50, %lor.lhs.false69 ], [ %call50, %if.end64 ], [ %call50, %for.end ], [ %call50, %lor.lhs.false108 ], [ %call50, %lor.lhs.false104 ], [ %call50, %lor.lhs.false100 ], [ %call50, %lor.lhs.false97 ], [ %call50, %if.end94 ], [ %call50, %if.end112 ]
  %ctx.0.ph.ph = phi %struct.bignum_ctx* [ null, %if.end ], [ null, %if.end10 ], [ null, %if.end14 ], [ null, %if.end23 ], [ %call24, %if.end28 ], [ %call24, %if.end34 ], [ %call24, %if.end49 ], [ %call24, %lor.lhs.false60 ], [ %call24, %lor.lhs.false56 ], [ %call24, %if.end54 ], [ %call24, %lor.lhs.false74 ], [ %call24, %lor.lhs.false69 ], [ %call24, %if.end64 ], [ %call24, %for.end ], [ %call24, %lor.lhs.false108 ], [ %call24, %lor.lhs.false104 ], [ %call24, %lor.lhs.false100 ], [ %call24, %lor.lhs.false97 ], [ %call24, %if.end94 ], [ %call24, %if.end112 ]
  %msg_mask.0.ph.ph = phi i8* [ null, %if.end ], [ null, %if.end10 ], [ null, %if.end14 ], [ null, %if.end23 ], [ null, %if.end28 ], [ %call36, %if.end34 ], [ %call36, %if.end49 ], [ %call36, %lor.lhs.false60 ], [ %call36, %lor.lhs.false56 ], [ %call36, %if.end54 ], [ %call36, %lor.lhs.false74 ], [ %call36, %lor.lhs.false69 ], [ %call36, %if.end64 ], [ %call36, %for.end ], [ %call36, %lor.lhs.false108 ], [ %call36, %lor.lhs.false104 ], [ %call36, %lor.lhs.false100 ], [ %call36, %lor.lhs.false97 ], [ %call36, %if.end94 ], [ %call36, %if.end112 ]
  %hash.0.ph.ph = phi %struct.evp_md_ctx_st* [ null, %if.end ], [ null, %if.end10 ], [ null, %if.end14 ], [ null, %if.end23 ], [ null, %if.end28 ], [ null, %if.end34 ], [ null, %if.end49 ], [ null, %lor.lhs.false60 ], [ null, %lor.lhs.false56 ], [ null, %if.end54 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false69 ], [ null, %if.end64 ], [ null, %for.end ], [ %call90, %lor.lhs.false108 ], [ %call90, %lor.lhs.false104 ], [ %call90, %lor.lhs.false100 ], [ %call90, %lor.lhs.false97 ], [ %call90, %if.end94 ], [ %call90, %if.end112 ]
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink253, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_sm2_decrypt, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 53, i32 noundef %.sink, i8* noundef null) #5
  br label %if.then122

if.then122:                                       ; preds = %if.then122.sink.split, %entry
  %sm2_ctext.0.ph = phi %struct.SM2_Ciphertext_st* [ null, %entry ], [ %sm2_ctext.0.ph.ph, %if.then122.sink.split ]
  %x2y2.0.ph = phi i8* [ null, %entry ], [ %x2y2.0.ph.ph, %if.then122.sink.split ]
  %computed_C3.0.ph = phi i8* [ null, %entry ], [ %computed_C3.0.ph.ph, %if.then122.sink.split ]
  %C1.0.ph = phi %struct.ec_point_st* [ null, %entry ], [ %C1.0.ph.ph, %if.then122.sink.split ]
  %ctx.0.ph = phi %struct.bignum_ctx* [ null, %entry ], [ %ctx.0.ph.ph, %if.then122.sink.split ]
  %msg_mask.0.ph = phi i8* [ null, %entry ], [ %msg_mask.0.ph.ph, %if.then122.sink.split ]
  %hash.0.ph = phi %struct.evp_md_ctx_st* [ null, %entry ], [ %hash.0.ph.ph, %if.then122.sink.split ]
  %78 = load i64, i64* %ptext_len, align 8, !tbaa !14
  %call123 = call i8* @memset(i8* noundef %ptext_buf, i32 noundef 0, i64 noundef %78) #5
  br label %if.end124

if.end124:                                        ; preds = %done, %if.then122
  %rc.0247 = phi i32 [ 0, %if.then122 ], [ 1, %done ]
  %hash.0245 = phi %struct.evp_md_ctx_st* [ %hash.0.ph, %if.then122 ], [ %call90, %done ]
  %msg_mask.0243 = phi i8* [ %msg_mask.0.ph, %if.then122 ], [ %call36, %done ]
  %ctx.0241 = phi %struct.bignum_ctx* [ %ctx.0.ph, %if.then122 ], [ %call24, %done ]
  %C1.0239 = phi %struct.ec_point_st* [ %C1.0.ph, %if.then122 ], [ %call50, %done ]
  %computed_C3.0237 = phi i8* [ %computed_C3.0.ph, %if.then122 ], [ %call39, %done ]
  %x2y2.0235 = phi i8* [ %x2y2.0.ph, %if.then122 ], [ %call37, %done ]
  %sm2_ctext.0233 = phi %struct.SM2_Ciphertext_st* [ %sm2_ctext.0.ph, %if.then122 ], [ %call7, %done ]
  call void @CRYPTO_free(i8* noundef %msg_mask.0243, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 397) #5
  call void @CRYPTO_free(i8* noundef %x2y2.0235, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 398) #5
  call void @CRYPTO_free(i8* noundef %computed_C3.0237, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 399) #5
  call void @EC_POINT_free(%struct.ec_point_st* noundef %C1.0239) #5
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0241) #5
  call void @SM2_Ciphertext_free(%struct.SM2_Ciphertext_st* noundef %sm2_ctext.0233) #6
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %hash.0245) #5
  ret i32 %rc.0247
}

declare i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @BIGNUM_it() #2

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 24}
!9 = !{!"SM2_Ciphertext_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!10 = !{!11, !12, i64 0}
!11 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !5, i64 8, !13, i64 16}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !22, !23, !25}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !22, !23}
!29 = !{!9, !5, i64 0}
!30 = !{!9, !5, i64 8}
!31 = !{!9, !5, i64 16}
!32 = !{!11, !5, i64 8}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = !{!39}
!39 = distinct !{!39, !35}
!40 = !{!34, !37}
!41 = distinct !{!41, !22, !23}
!42 = distinct !{!42, !22, !23, !25}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !22, !23}
