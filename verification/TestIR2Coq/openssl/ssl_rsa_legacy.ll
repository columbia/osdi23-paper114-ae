; ModuleID = 'ssl/ssl_rsa_legacy.c'
source_filename = "ssl/ssl_rsa_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type opaque
%struct.rsa_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ssl_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"ssl/ssl_rsa_legacy.c\00", align 1
@__func__.SSL_use_RSAPrivateKey = private unnamed_addr constant [22 x i8] c"SSL_use_RSAPrivateKey\00", align 1
@__func__.SSL_use_RSAPrivateKey_file = private unnamed_addr constant [27 x i8] c"SSL_use_RSAPrivateKey_file\00", align 1
@__func__.SSL_use_RSAPrivateKey_ASN1 = private unnamed_addr constant [27 x i8] c"SSL_use_RSAPrivateKey_ASN1\00", align 1
@__func__.SSL_CTX_use_RSAPrivateKey = private unnamed_addr constant [26 x i8] c"SSL_CTX_use_RSAPrivateKey\00", align 1
@__func__.SSL_CTX_use_RSAPrivateKey_file = private unnamed_addr constant [31 x i8] c"SSL_CTX_use_RSAPrivateKey_file\00", align 1
@__func__.SSL_CTX_use_RSAPrivateKey_ASN1 = private unnamed_addr constant [31 x i8] c"SSL_CTX_use_RSAPrivateKey_ASN1\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_RSAPrivateKey(%struct.ssl_st* noundef %ssl, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.rsa_st* %rsa, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.SSL_use_RSAPrivateKey, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #3
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.SSL_use_RSAPrivateKey, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, i8* noundef null) #3
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @RSA_up_ref(%struct.rsa_st* noundef nonnull %rsa) #3
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 6, i8* noundef nonnull %0) #3
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %rsa) #3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #3
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef %ssl, %struct.evp_pkey_st* noundef nonnull %call) #3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then7 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @RSA_up_ref(%struct.rsa_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_RSAPrivateKey_file(%struct.ssl_st* noundef %ssl, i8* noundef %file, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #3
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #3
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #3
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #3
  br label %end

if.end6:                                          ; preds = %if.end
  switch i32 %type, label %if.else17 [
    i32 2, label %if.then9
    i32 1, label %if.then13
  ]

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.rsa_st* @d2i_RSAPrivateKey_bio(%struct.bio_st* noundef nonnull %call1, %struct.rsa_st** noundef null) #3
  br label %if.end19

if.then13:                                        ; preds = %if.end6
  %call14 = tail call i32 (i8*, i32, i32, i8*)* @SSL_get_default_passwd_cb(%struct.ssl_st* noundef %ssl) #3
  %call15 = tail call i8* @SSL_get_default_passwd_cb_userdata(%struct.ssl_st* noundef %ssl) #3
  %call16 = tail call %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef nonnull %call1, %struct.rsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %call14, i8* noundef %call15) #3
  br label %if.end19

if.else17:                                        ; preds = %if.end6
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #3
  br label %end

if.end19:                                         ; preds = %if.then13, %if.then9
  %j.0 = phi i32 [ 524301, %if.then9 ], [ 524297, %if.then13 ]
  %rsa.0 = phi %struct.rsa_st* [ %call10, %if.then9 ], [ %call16, %if.then13 ]
  %cmp20 = icmp eq %struct.rsa_st* %rsa.0, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %j.0, i8* noundef null) #3
  br label %end

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @SSL_use_RSAPrivateKey(%struct.ssl_st* noundef %ssl, %struct.rsa_st* noundef nonnull %rsa.0) #4
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %rsa.0) #3
  br label %end

end:                                              ; preds = %if.end23, %if.then22, %if.else17, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ %call24, %if.end23 ], [ 0, %if.else17 ]
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #3
  ret i32 %ret.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.rsa_st* @d2i_RSAPrivateKey_bio(%struct.bio_st* noundef, %struct.rsa_st** noundef) local_unnamed_addr #2

declare %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef, %struct.rsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 (i8*, i32, i32, i8*)* @SSL_get_default_passwd_cb(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @SSL_get_default_passwd_cb_userdata(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_RSAPrivateKey_ASN1(%struct.ssl_st* noundef %ssl, i8* noundef %d, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* %d, i8** %p, align 8, !tbaa !4
  %call = call %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef null, i8** noundef nonnull %p, i64 noundef %len) #3
  %cmp = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_use_RSAPrivateKey_ASN1, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @SSL_use_RSAPrivateKey(%struct.ssl_st* noundef %ssl, %struct.rsa_st* noundef nonnull %call) #4
  call void @RSA_free(%struct.rsa_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_RSAPrivateKey(%struct.ssl_ctx_st* noundef %ctx, %struct.rsa_st* noundef %rsa) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.rsa_st* %rsa, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #3
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524294, i8* noundef null) #3
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @RSA_up_ref(%struct.rsa_st* noundef nonnull %rsa) #3
  %0 = bitcast %struct.rsa_st* %rsa to i8*
  %call5 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef nonnull %call, i32 noundef 6, i8* noundef nonnull %0) #3
  %cmp6 = icmp slt i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %rsa) #3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #3
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef nonnull %call) #3
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then7 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_RSAPrivateKey_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %file, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #3
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #3
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #3
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #3
  br label %end

if.end6:                                          ; preds = %if.end
  switch i32 %type, label %if.else17 [
    i32 2, label %if.then9
    i32 1, label %if.then13
  ]

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.rsa_st* @d2i_RSAPrivateKey_bio(%struct.bio_st* noundef nonnull %call1, %struct.rsa_st** noundef null) #3
  br label %if.end19

if.then13:                                        ; preds = %if.end6
  %call14 = tail call i32 (i8*, i32, i32, i8*)* @SSL_CTX_get_default_passwd_cb(%struct.ssl_ctx_st* noundef %ctx) #3
  %call15 = tail call i8* @SSL_CTX_get_default_passwd_cb_userdata(%struct.ssl_ctx_st* noundef %ctx) #3
  %call16 = tail call %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef nonnull %call1, %struct.rsa_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %call14, i8* noundef %call15) #3
  br label %if.end19

if.else17:                                        ; preds = %if.end6
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #3
  br label %end

if.end19:                                         ; preds = %if.then13, %if.then9
  %j.0 = phi i32 [ 524301, %if.then9 ], [ 524297, %if.then13 ]
  %rsa.0 = phi %struct.rsa_st* [ %call10, %if.then9 ], [ %call16, %if.then13 ]
  %cmp20 = icmp eq %struct.rsa_st* %rsa.0, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey_file, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %j.0, i8* noundef null) #3
  br label %end

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @SSL_CTX_use_RSAPrivateKey(%struct.ssl_ctx_st* noundef %ctx, %struct.rsa_st* noundef nonnull %rsa.0) #4
  tail call void @RSA_free(%struct.rsa_st* noundef nonnull %rsa.0) #3
  br label %end

end:                                              ; preds = %if.end23, %if.then22, %if.else17, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ %call24, %if.end23 ], [ 0, %if.else17 ]
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #3
  ret i32 %ret.0
}

declare i32 (i8*, i32, i32, i8*)* @SSL_CTX_get_default_passwd_cb(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare i8* @SSL_CTX_get_default_passwd_cb_userdata(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_RSAPrivateKey_ASN1(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %d, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* %d, i8** %p, align 8, !tbaa !4
  %call = call %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef null, i8** noundef nonnull %p, i64 noundef %len) #3
  %cmp = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_use_RSAPrivateKey_ASN1, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @SSL_CTX_use_RSAPrivateKey(%struct.ssl_ctx_st* noundef %ctx, %struct.rsa_st* noundef nonnull %call) #4
  call void @RSA_free(%struct.rsa_st* noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

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
