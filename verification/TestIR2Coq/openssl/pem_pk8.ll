; ModuleID = 'crypto/pem/pem_pk8.c'
source_filename = "crypto/pem/pem_pk8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_sig_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/pem/pem_pk8.c\00", align 1
@__func__.d2i_PKCS8PrivateKey_bio = private unnamed_addr constant [24 x i8] c"d2i_PKCS8PrivateKey_bio\00", align 1
@__func__.d2i_PKCS8PrivateKey_fp = private unnamed_addr constant [23 x i8] c"d2i_PKCS8PrivateKey_fp\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@__func__.do_pk8pkey = private unnamed_addr constant [11 x i8] c"do_pk8pkey\00", align 1
@__func__.do_pk8pkey_fp = private unnamed_addr constant [14 x i8] c"do_pk8pkey_fp\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PKCS8PrivateKey_nid(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef %nid, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef 0, i32 noundef %nid, %struct.evp_cipher_st* noundef null, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_pk8pkey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef %isder, i32 noundef %nid, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) unnamed_addr #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %tobool.not = icmp eq i32 %isder, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %x, i32 noundef 135, i8* noundef %cond, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef null) #5
  %cmp = icmp eq %struct.ossl_encoder_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %kstr, null
  %cmp2 = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %cmp4.not = icmp eq i8* %u, null
  br i1 %cmp4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call6 = tail call i64 @strlen(i8* noundef nonnull %u) #6
  %conv = trunc i64 %call6 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.then5, %if.end
  %cb.addr.0 = phi i32 (i8*, i32, i32, i8*)* [ null, %if.then5 ], [ %cb, %if.end ], [ @PEM_def_callback, %if.then3 ]
  %klen.addr.0 = phi i32 [ %conv, %if.then5 ], [ %klen, %if.end ], [ %klen, %if.then3 ]
  %kstr.addr.0 = phi i8* [ %u, %if.then5 ], [ %kstr, %if.end ], [ null, %if.then3 ]
  %cmp9 = icmp eq i32 %nid, -1
  br i1 %cmp9, label %land.lhs.true11, label %if.else44

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef nonnull %call) #5
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.else44, label %if.then15

if.then15:                                        ; preds = %land.lhs.true11
  %cmp16.not = icmp eq %struct.evp_cipher_st* %enc, null
  br i1 %cmp16.not, label %land.rhs, label %if.then18

if.then18:                                        ; preds = %if.then15
  %call19 = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %enc) #5
  %call20 = tail call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i8* noundef %call19, i8* noundef null) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end90, label %if.then22

if.then22:                                        ; preds = %if.then18
  %cmp23.not = icmp eq i8* %kstr.addr.0, null
  br i1 %cmp23.not, label %if.else30, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.then22
  %conv26 = sext i32 %klen.addr.0 to i64
  %call27 = tail call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i8* noundef nonnull %kstr.addr.0, i64 noundef %conv26) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end90, label %if.else30

if.else30:                                        ; preds = %land.lhs.true25, %if.then22
  %cmp31.not = icmp eq i32 (i8*, i32, i32, i8*)* %cb.addr.0, null
  br i1 %cmp31.not, label %land.rhs, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.else30
  %call34 = tail call i32 @OSSL_ENCODER_CTX_set_pem_password_cb(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i32 (i8*, i32, i32, i8*)* noundef nonnull %cb.addr.0, i8* noundef %u) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end90, label %land.rhs

land.rhs:                                         ; preds = %if.then15, %if.else30, %land.lhs.true33
  %call42 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef nonnull %call, %struct.bio_st* noundef %bp) #5
  %tobool43 = icmp ne i32 %call42, 0
  %phi.cast = zext i1 %tobool43 to i32
  br label %if.end90

if.else44:                                        ; preds = %land.lhs.true11, %if.end8
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #7
  %call45 = tail call %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef %x) #5
  %cmp46 = icmp eq %struct.pkcs8_priv_key_info_st* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else44
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_pk8pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 115, i8* noundef null) #5
  br label %legacy_end

if.end49:                                         ; preds = %if.else44
  %tobool50 = icmp ne %struct.evp_cipher_st* %enc, null
  %cmp51 = icmp ne i32 %nid, -1
  %or.cond93 = or i1 %cmp51, %tobool50
  br i1 %or.cond93, label %if.then53, label %if.else82

if.then53:                                        ; preds = %if.end49
  %cmp54 = icmp eq i8* %kstr.addr.0, null
  br i1 %cmp54, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.then53
  %call57 = call i32 %cb.addr.0(i8* noundef nonnull %0, i32 noundef 1024, i32 noundef 1, i8* noundef %u) #5
  %cmp58 = icmp slt i32 %call57, 1
  br i1 %cmp58, label %if.then60, label %if.end63.thread

if.end63.thread:                                  ; preds = %if.then56
  %call645 = call %struct.X509_sig_st* @PKCS8_encrypt(i32 noundef %nid, %struct.evp_cipher_st* noundef %enc, i8* noundef nonnull %0, i32 noundef %call57, i8* noundef null, i32 noundef 0, i32 noundef 0, %struct.pkcs8_priv_key_info_st* noundef nonnull %call45) #5
  br label %if.then68

if.then60:                                        ; preds = %if.then56
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_pk8pkey, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 111, i8* noundef null) #5
  br label %legacy_end

if.end63:                                         ; preds = %if.then53
  %call64 = tail call %struct.X509_sig_st* @PKCS8_encrypt(i32 noundef %nid, %struct.evp_cipher_st* noundef %enc, i8* noundef nonnull %kstr.addr.0, i32 noundef %klen.addr.0, i8* noundef null, i32 noundef 0, i32 noundef 0, %struct.pkcs8_priv_key_info_st* noundef nonnull %call45) #5
  %cmp66 = icmp eq i8* %kstr.addr.0, %0
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end63.thread, %if.end63
  %call649 = phi %struct.X509_sig_st* [ %call645, %if.end63.thread ], [ %call64, %if.end63 ]
  %klen.addr.17 = phi i32 [ %call57, %if.end63.thread ], [ %klen.addr.0, %if.end63 ]
  %conv70 = sext i32 %klen.addr.17 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %conv70) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end63
  %call648 = phi %struct.X509_sig_st* [ %call649, %if.then68 ], [ %call64, %if.end63 ]
  %cmp72 = icmp eq %struct.X509_sig_st* %call648, null
  br i1 %cmp72, label %legacy_end, label %if.end75

if.end75:                                         ; preds = %if.end71
  br i1 %tobool.not, label %if.else79, label %if.then77

if.then77:                                        ; preds = %if.end75
  %call78 = call i32 @i2d_PKCS8_bio(%struct.bio_st* noundef %bp, %struct.X509_sig_st* noundef nonnull %call648) #5
  br label %if.end81

if.else79:                                        ; preds = %if.end75
  %call80 = call i32 @PEM_write_bio_PKCS8(%struct.bio_st* noundef %bp, %struct.X509_sig_st* noundef nonnull %call648) #4
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %ret.2 = phi i32 [ %call78, %if.then77 ], [ %call80, %if.else79 ]
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call648) #5
  br label %legacy_end

if.else82:                                        ; preds = %if.end49
  br i1 %tobool.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %if.else82
  %call85 = tail call i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef %bp, %struct.pkcs8_priv_key_info_st* noundef nonnull %call45) #5
  br label %legacy_end

if.else86:                                        ; preds = %if.else82
  %call87 = tail call i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef %bp, %struct.pkcs8_priv_key_info_st* noundef nonnull %call45) #4
  br label %legacy_end

legacy_end:                                       ; preds = %if.end81, %if.else86, %if.then84, %if.end71, %if.then60, %if.then48
  %ret.3 = phi i32 [ 0, %if.then48 ], [ 0, %if.then60 ], [ 0, %if.end71 ], [ %ret.2, %if.end81 ], [ %call85, %if.then84 ], [ %call87, %if.else86 ]
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %call45) #5
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #7
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true33, %land.lhs.true25, %if.then18, %land.rhs, %legacy_end
  %ret.4 = phi i32 [ %ret.3, %legacy_end ], [ %phi.cast, %land.rhs ], [ 0, %if.then18 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true33 ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end90
  %retval.0 = phi i32 [ %ret.4, %if.end90 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PKCS8PrivateKey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef 0, i32 noundef -1, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8PrivateKey_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef 1, i32 noundef -1, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8PrivateKey_nid_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef %nid, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %x, i32 noundef 1, i32 noundef %nid, %struct.evp_cipher_st* noundef null, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PKCS8PrivateKey_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef readonly %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %psbuf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %psbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #7
  %call = tail call %struct.X509_sig_st* @d2i_PKCS8_bio(%struct.bio_st* noundef %bp, %struct.X509_sig_st** noundef null) #5
  %cmp = icmp eq %struct.X509_sig_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i32 (i8*, i32, i32, i8*)* %cb, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 %cb(i8* noundef nonnull %0, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #5
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call5 = call i32 @PEM_def_callback(i8* noundef nonnull %0, i32 noundef 1024, i32 noundef 0, i8* noundef %u) #5
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %klen.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.else ]
  %cmp7 = icmp slt i32 %klen.0, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.d2i_PKCS8PrivateKey_bio, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 104, i8* noundef null) #5
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call11 = call %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef nonnull %call, i8* noundef nonnull %0, i32 noundef %klen.0) #5
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call) #5
  %conv45 = zext i32 %klen.0 to i64
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %conv45) #5
  %cmp13 = icmp eq %struct.pkcs8_priv_key_info_st* %call11, null
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end9
  %call17 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef nonnull %call11) #5
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call11) #5
  %tobool.not = icmp eq %struct.evp_pkey_st* %call17, null
  br i1 %tobool.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end16
  %cmp20.not = icmp eq %struct.evp_pkey_st** %x, null
  br i1 %cmp20.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.end19
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %x, align 8, !tbaa !4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #5
  store %struct.evp_pkey_st* %call17, %struct.evp_pkey_st** %x, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then22, %if.end16, %if.end9, %entry, %if.then8
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then8 ], [ null, %entry ], [ null, %if.end9 ], [ null, %if.end16 ], [ %call17, %if.then22 ], [ %call17, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #7
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.X509_sig_st* @d2i_PKCS8_bio(%struct.bio_st* noundef, %struct.X509_sig_st** noundef) local_unnamed_addr #2

declare i32 @PEM_def_callback(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8PrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef 1, i32 noundef -1, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_pk8pkey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef %isder, i32 noundef %nid, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_pk8pkey_fp, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @do_pk8pkey(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st* noundef %x, i32 noundef %isder, i32 noundef %nid, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS8PrivateKey_nid_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef %nid, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef 1, i32 noundef %nid, %struct.evp_cipher_st* noundef null, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PKCS8PrivateKey_nid(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef %nid, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef 0, i32 noundef %nid, %struct.evp_cipher_st* noundef null, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PKCS8PrivateKey(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_pk8pkey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st* noundef %x, i32 noundef 0, i32 noundef -1, %struct.evp_cipher_st* noundef %enc, i8* noundef %kstr, i32 noundef %klen, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_PKCS8PrivateKey_fp(%struct._IO_FILE* noundef %fp, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %fp, i32 noundef 0) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.d2i_PKCS8PrivateKey_fp, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 524295, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @d2i_PKCS8PrivateKey_bio(%struct.bio_st* noundef nonnull %call, %struct.evp_pkey_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #4
  %call2 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PEM_read_bio_PKCS8(%struct.bio_st* noundef %bp, %struct.X509_sig_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_sig_st* (%struct.X509_sig_st**, i8**, i64)* @d2i_X509_SIG to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %1 = bitcast i8* %call to %struct.X509_sig_st*
  ret %struct.X509_sig_st* %1
}

declare i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct.bio_st* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef, i8** noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_sig_st* @PEM_read_PKCS8(%struct._IO_FILE* noundef %fp, %struct.X509_sig_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.X509_sig_st* (%struct.X509_sig_st**, i8**, i64)* @d2i_X509_SIG to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %1 = bitcast i8* %call to %struct.X509_sig_st*
  ret %struct.X509_sig_st* %1
}

declare i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PKCS8(%struct.bio_st* noundef %out, %struct.X509_sig_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_sig_st*, i8**)* @i2d_X509_SIG to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  ret i32 %call
}

declare i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @i2d_X509_SIG(%struct.X509_sig_st* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PKCS8(%struct._IO_FILE* noundef %out, %struct.X509_sig_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_sig_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.X509_sig_st*, i8**)* @i2d_X509_SIG to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  ret i32 %call
}

declare i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PEM_read_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef %bp, %struct.pkcs8_priv_key_info_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.pkcs8_priv_key_info_st* (%struct.pkcs8_priv_key_info_st**, i8**, i64)* @d2i_PKCS8_PRIV_KEY_INFO to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %1 = bitcast i8* %call to %struct.pkcs8_priv_key_info_st*
  ret %struct.pkcs8_priv_key_info_st* %1
}

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PEM_read_PKCS8_PRIV_KEY_INFO(%struct._IO_FILE* noundef %fp, %struct.pkcs8_priv_key_info_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.pkcs8_priv_key_info_st* (%struct.pkcs8_priv_key_info_st**, i8**, i64)* @d2i_PKCS8_PRIV_KEY_INFO to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #5
  %1 = bitcast i8* %call to %struct.pkcs8_priv_key_info_st*
  ret %struct.pkcs8_priv_key_info_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef %out, %struct.pkcs8_priv_key_info_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.pkcs8_priv_key_info_st*, i8**)* @i2d_PKCS8_PRIV_KEY_INFO to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  ret i32 %call
}

declare i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef, i8** noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_PKCS8_PRIV_KEY_INFO(%struct._IO_FILE* noundef %out, %struct.pkcs8_priv_key_info_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.pkcs8_priv_key_info_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.pkcs8_priv_key_info_st*, i8**)* @i2d_PKCS8_PRIV_KEY_INFO to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  ret i32 %call
}

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_pem_password_cb(%struct.ossl_encoder_ctx_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.X509_sig_st* @PKCS8_encrypt(i32 noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare i32 @i2d_PKCS8_bio(%struct.bio_st* noundef, %struct.X509_sig_st* noundef) local_unnamed_addr #2

declare i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
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
