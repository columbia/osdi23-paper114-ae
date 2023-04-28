; ModuleID = 'crypto/engine/eng_openssl.c'
source_filename = "crypto/engine/eng_openssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type opaque
%struct.evp_cipher_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.engine_st = type opaque
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.dh_method = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.rc4_key_st = type { i32, i32, [256 x i32] }
%struct.evp_md_ctx_st = type opaque
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

@.str = private unnamed_addr constant [8 x i8] c"openssl\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Software engine support\00", align 1
@sha1_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@r4_cipher = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@r4_40_cipher = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@test_cipher_nids.cipher_nids = internal global [4 x i32] zeroinitializer, align 16
@test_cipher_nids.pos = internal unnamed_addr global i32 0, align 4
@test_cipher_nids.init = internal unnamed_addr global i1 false, align 4
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"(TEST_ENG_OPENSSL_RC4) test_init_key() called\0A\00", align 1
@test_digest_nids.digest_nids = internal global [2 x i32] zeroinitializer, align 4
@test_digest_nids.pos = internal unnamed_addr global i32 0, align 4
@test_digest_nids.init = internal unnamed_addr global i1 false, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"(TEST_ENG_OPENSSL_PKEY)Loading Private key %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @engine_load_openssl_int() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.engine_st* @engine_openssl() #3
  %tobool.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #4
  %call2 = tail call i32 @ENGINE_add(%struct.engine_st* noundef nonnull %call) #4
  %call3 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #4
  %call4 = tail call i32 @ERR_pop_to_mark() #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @engine_openssl() unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_new() #4
  %cmp = icmp eq %struct.engine_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @bind_helper(%struct.engine_st* noundef nonnull %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.engine_st* [ null, %if.then2 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.engine_st* %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @ENGINE_add(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_helper(%struct.engine_st* noundef %e) unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @openssl_destroy) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call %struct.rsa_meth_st* @RSA_get_default_method() #4
  %call8 = tail call i32 @ENGINE_set_RSA(%struct.engine_st* noundef %e, %struct.rsa_meth_st* noundef %call7) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call %struct.dsa_method* @DSA_get_default_method() #4
  %call12 = tail call i32 @ENGINE_set_DSA(%struct.engine_st* noundef %e, %struct.dsa_method* noundef %call11) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %return, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.ec_key_method_st* @EC_KEY_OpenSSL() #4
  %call16 = tail call i32 @ENGINE_set_EC(%struct.engine_st* noundef %e, %struct.ec_key_method_st* noundef %call15) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %return, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call %struct.dh_method* @DH_get_default_method() #4
  %call20 = tail call i32 @ENGINE_set_DH(%struct.engine_st* noundef %e, %struct.dh_method* noundef %call19) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %return, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call %struct.rand_meth_st* @RAND_OpenSSL() #4
  %call24 = tail call i32 @ENGINE_set_RAND(%struct.engine_st* noundef %e, %struct.rand_meth_st* noundef %call23) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %return, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call27 = tail call i32 @ENGINE_set_ciphers(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef nonnull @openssl_ciphers) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %return, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = tail call i32 @ENGINE_set_digests(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* noundef nonnull @openssl_digests) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %return, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %call33 = tail call i32 @ENGINE_set_load_privkey_function(%struct.engine_st* noundef %e, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @openssl_load_privkey) #4
  %tobool34.not = icmp ne i32 %call33, 0
  %spec.select = zext i1 %tobool34.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false32, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false26, %lor.lhs.false29
  %retval.0 = phi i32 [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false32 ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @openssl_destroy(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  tail call fastcc void @test_sha_md_destroy() #3
  tail call fastcc void @test_r4_cipher_destroy() #3
  tail call fastcc void @test_r4_40_cipher_destroy() #3
  ret i32 1
}

declare i32 @ENGINE_set_RSA(%struct.engine_st* noundef, %struct.rsa_meth_st* noundef) local_unnamed_addr #1

declare %struct.rsa_meth_st* @RSA_get_default_method() local_unnamed_addr #1

declare i32 @ENGINE_set_DSA(%struct.engine_st* noundef, %struct.dsa_method* noundef) local_unnamed_addr #1

declare %struct.dsa_method* @DSA_get_default_method() local_unnamed_addr #1

declare i32 @ENGINE_set_EC(%struct.engine_st* noundef, %struct.ec_key_method_st* noundef) local_unnamed_addr #1

declare %struct.ec_key_method_st* @EC_KEY_OpenSSL() local_unnamed_addr #1

declare i32 @ENGINE_set_DH(%struct.engine_st* noundef, %struct.dh_method* noundef) local_unnamed_addr #1

declare %struct.dh_method* @DH_get_default_method() local_unnamed_addr #1

declare i32 @ENGINE_set_RAND(%struct.engine_st* noundef, %struct.rand_meth_st* noundef) local_unnamed_addr #1

declare %struct.rand_meth_st* @RAND_OpenSSL() local_unnamed_addr #1

declare i32 @ENGINE_set_ciphers(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @openssl_ciphers(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_cipher_st** noundef writeonly %cipher, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #0 {
entry:
  %tobool.not = icmp eq %struct.evp_cipher_st** %cipher, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @test_cipher_nids(i32** noundef %nids) #3
  br label %return

if.end:                                           ; preds = %entry
  switch i32 %nid, label %if.else6 [
    i32 5, label %if.then1
    i32 97, label %if.then4
  ]

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc %struct.evp_cipher_st* @test_r4_cipher() #3
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc %struct.evp_cipher_st* @test_r4_40_cipher() #3
  br label %if.end8

if.else6:                                         ; preds = %if.end
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  br label %return

if.end8:                                          ; preds = %if.then4, %if.then1
  %storemerge = phi %struct.evp_cipher_st* [ %call5, %if.then4 ], [ %call2, %if.then1 ]
  store %struct.evp_cipher_st* %storemerge, %struct.evp_cipher_st** %cipher, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end8, %if.else6, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.else6 ], [ %call, %if.then ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_digests(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @openssl_digests(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_md_st** noundef writeonly %digest, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #0 {
entry:
  %tobool.not = icmp eq %struct.evp_md_st** %digest, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @test_digest_nids(i32** noundef %nids) #3
  br label %return

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %nid, 64
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc %struct.evp_md_st* @test_sha_md() #3
  store %struct.evp_md_st* %call2, %struct.evp_md_st** %digest, align 8, !tbaa !4
  br label %return

if.else:                                          ; preds = %if.end
  store %struct.evp_md_st* null, %struct.evp_md_st** %digest, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.then1, %if.else, %if.then
  %retval.0 = phi i32 [ 1, %if.then1 ], [ 0, %if.else ], [ %call, %if.then ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_load_privkey_function(%struct.engine_st* noundef, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.evp_pkey_st* @openssl_load_privkey(%struct.engine_st* nocapture noundef readnone %eng, i8* noundef %key_id, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %callback_data) #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef %key_id) #4
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %key_id, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #4
  %tobool.not = icmp eq %struct.bio_st* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_pkey_st* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_sha_md_destroy() unnamed_addr #0 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @sha1_md, align 8, !tbaa !4
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %0) #4
  store %struct.evp_md_st* null, %struct.evp_md_st** @sha1_md, align 8, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_r4_cipher_destroy() unnamed_addr #0 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @r4_cipher, align 8, !tbaa !4
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %0) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @r4_cipher, align 8, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @test_r4_40_cipher_destroy() unnamed_addr #0 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @r4_40_cipher, align 8, !tbaa !4
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %0) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @r4_40_cipher, align 8, !tbaa !4
  ret void
}

declare void @EVP_MD_meth_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_cipher_nids(i32** nocapture noundef writeonly %nids) unnamed_addr #0 {
entry:
  %.b = load i1, i1* @test_cipher_nids.init, align 4
  br i1 %.b, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  %.pre16 = load i32, i32* @test_cipher_nids.pos, align 4, !tbaa !8
  br label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.evp_cipher_st* @test_r4_cipher() #3
  %cmp.not = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef nonnull %call) #4
  %0 = load i32, i32* @test_cipher_nids.pos, align 4, !tbaa !8
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @test_cipher_nids.pos, align 4, !tbaa !8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 %idxprom
  store i32 %call2, i32* %arrayidx, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %call3 = tail call fastcc %struct.evp_cipher_st* @test_r4_40_cipher() #3
  %cmp4.not = icmp eq %struct.evp_cipher_st* %call3, null
  br i1 %cmp4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  %.pre = load i32, i32* @test_cipher_nids.pos, align 4, !tbaa !8
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef nonnull %call3) #4
  %1 = load i32, i32* @test_cipher_nids.pos, align 4, !tbaa !8
  %inc7 = add nsw i32 %1, 1
  store i32 %inc7, i32* @test_cipher_nids.pos, align 4, !tbaa !8
  %idxprom8 = sext i32 %1 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 %idxprom8
  store i32 %call6, i32* %arrayidx9, align 4, !tbaa !8
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.then5
  %2 = phi i32 [ %.pre, %if.end.if.end10_crit_edge ], [ %inc7, %if.then5 ]
  %idxprom11 = sext i32 %2 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 %idxprom11
  store i32 0, i32* %arrayidx12, align 4, !tbaa !8
  store i1 true, i1* @test_cipher_nids.init, align 4
  br label %if.end13

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %if.end10
  %3 = phi i32 [ %.pre16, %entry.if.end13_crit_edge ], [ %2, %if.end10 ]
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_cipher_nids.cipher_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @test_r4_cipher() unnamed_addr #0 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @r4_cipher, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 5, i32 noundef 1, i32 noundef 16) #4
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then15, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef nonnull %call, i64 noundef 8) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then15, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef nonnull %call, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @test_rc4_init_key) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef nonnull %call, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @test_rc4_cipher) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 1048) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false12
  %cipher.0 = phi %struct.evp_cipher_st* [ null, %if.then15 ], [ %call, %lor.lhs.false12 ]
  store %struct.evp_cipher_st* %cipher.0, %struct.evp_cipher_st** @r4_cipher, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_cipher_st* [ %cipher.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @test_r4_40_cipher() unnamed_addr #0 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @r4_40_cipher, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 5, i32 noundef 1, i32 noundef 5) #4
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then15, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef nonnull %call, i64 noundef 8) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then15, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef nonnull %call, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @test_rc4_init_key) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef nonnull %call, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @test_rc4_cipher) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 1048) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end

if.then15:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false12
  %cipher.0 = phi %struct.evp_cipher_st* [ null, %if.then15 ], [ %call, %lor.lhs.false12 ]
  store %struct.evp_cipher_st* %cipher.0, %struct.evp_cipher_st** @r4_40_cipher, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_cipher_st* [ %cipher.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %1
}

declare i32 @EVP_CIPHER_get_nid(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc4_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #0 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0)) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %conv15 = zext i32 %call to i64
  %call4 = tail call i8* @memcpy(i8* noundef %call2, i8* noundef %key, i64 noundef %conv15) #4
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = getelementptr inbounds i8, i8* %call5, i64 16
  %1 = bitcast i8* %ks to %struct.rc4_key_st*
  %call6 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  tail call void @RC4_set_key(%struct.rc4_key_st* noundef nonnull %1, i32 noundef %call, i8* noundef %call6) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc4_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #0 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #4
  %ks = getelementptr inbounds i8, i8* %call, i64 16
  %0 = bitcast i8* %ks to %struct.rc4_key_st*
  tail call void @RC4(%struct.rc4_key_st* noundef nonnull %0, i64 noundef %inl, i8* noundef %in, i8* noundef %out) #4
  ret i32 1
}

declare i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare void @RC4_set_key(%struct.rc4_key_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @RC4(%struct.rc4_key_st* noundef, i64 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_digest_nids(i32** nocapture noundef writeonly %nids) unnamed_addr #0 {
entry:
  %.b = load i1, i1* @test_digest_nids.init, align 4
  br i1 %.b, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  %.pre7 = load i32, i32* @test_digest_nids.pos, align 4, !tbaa !8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.evp_md_st* @test_sha_md() #3
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  %.pre = load i32, i32* @test_digest_nids.pos, align 4, !tbaa !8
  br label %if.end

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call) #4
  %0 = load i32, i32* @test_digest_nids.pos, align 4, !tbaa !8
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @test_digest_nids.pos, align 4, !tbaa !8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @test_digest_nids.digest_nids, i64 0, i64 %idxprom
  store i32 %call2, i32* %arrayidx, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then1
  %1 = phi i32 [ %.pre, %if.then.if.end_crit_edge ], [ %inc, %if.then1 ]
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* @test_digest_nids.digest_nids, i64 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4, !tbaa !8
  store i1 true, i1* @test_digest_nids.init, align 4
  br label %if.end5

if.end5:                                          ; preds = %entry.if.end5_crit_edge, %if.end
  %2 = phi i32 [ %.pre7, %entry.if.end5_crit_edge ], [ %1, %if.end ]
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_digest_nids.digest_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @test_sha_md() unnamed_addr #0 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @sha1_md, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 64, i32 noundef 65) #4
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call, i32 noundef 20) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then21, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 64) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 104) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef nonnull %call, i64 noundef 0) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @test_sha1_init) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @test_sha1_update) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @test_sha1_final) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false18
  %md.0 = phi %struct.evp_md_st* [ null, %if.then21 ], [ %call, %lor.lhs.false18 ]
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** @sha1_md, align 8, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_md_st* [ %md.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %1
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sha1_init(%struct.evp_md_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHAstate_st*
  %call1 = tail call i32 @SHA1_Init(%struct.SHAstate_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sha1_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #0 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHAstate_st*
  %call1 = tail call i32 @SHA1_Update(%struct.SHAstate_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

declare i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sha1_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #0 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHAstate_st*
  %call1 = tail call i32 @SHA1_Final(i8* noundef %md, %struct.SHAstate_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #1

declare i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @SHA1_Update(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @SHA1_Final(i8* noundef, %struct.SHAstate_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
