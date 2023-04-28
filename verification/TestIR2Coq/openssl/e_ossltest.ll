; ModuleID = 'engines/e_ossltest.c'
source_filename = "engines/e_ossltest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ERR_string_data_st = type { i64, i8* }
%struct.evp_md_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.engine_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"engines/e_ossltest.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ossltest\00", align 1
@lib_code = internal unnamed_addr global i32 0, align 4
@error_loaded = internal unnamed_addr global i1 false, align 4
@OSSLTEST_str_reasons = internal global [2 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"init failed\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"OpenSSL Test engine support\00", align 1
@ossltest_digest_nids.digest_nids = internal global [6 x i32] zeroinitializer, align 16
@ossltest_digest_nids.pos = internal unnamed_addr global i32 0, align 4
@ossltest_digest_nids.init = internal unnamed_addr global i1 false, align 4
@_hidden_md5_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@_hidden_sha1_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@_hidden_sha256_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@_hidden_sha384_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@_hidden_sha512_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@ossltest_cipher_nids = internal global [3 x i32] [i32 419, i32 895, i32 0], align 4
@_hidden_aes_128_cbc = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_128_gcm = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@ossltest_rand_method.osslt_rand_meth = internal global %struct.rand_meth_st { i32 (i8*, i32)* null, i32 (i8*, i32)* @ossltest_rand_bytes, void ()* null, i32 (i8*, i32, double)* null, i32 (i8*, i32)* @ossltest_rand_bytes, i32 ()* @ossltest_rand_status }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"ot:\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"[ossltest]Loading %s key %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Public\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"engines/e_ossltest_err.c\00", align 1
@__func__.ERR_OSSLTEST_error = private unnamed_addr constant [19 x i8] c"ERR_OSSLTEST_error\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @v_check(i64 noundef %v) local_unnamed_addr #0 {
entry:
  %cmp.inv = icmp ult i64 %v, 196608
  %. = select i1 %cmp.inv, i64 0, i64 196608
  ret i64 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @bind_engine(%struct.engine_st* noundef %e, i8* noundef %id, %struct.st_dynamic_fns* nocapture noundef readonly %fns) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @ENGINE_get_static_state() #6
  %static_state = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 0
  %0 = load i8*, i8** %static_state, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, %0
  br i1 %cmp, label %skip_cbs, label %if.end

if.end:                                           ; preds = %entry
  %malloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 0
  %1 = load i8* (i64, i8*, i32)*, i8* (i64, i8*, i32)** %malloc_fn, align 8, !tbaa !10
  %realloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 1
  %2 = load i8* (i8*, i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)** %realloc_fn, align 8, !tbaa !11
  %free_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 2
  %3 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %free_fn, align 8, !tbaa !12
  %call3 = tail call i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef %1, i8* (i8*, i64, i8*, i32)* noundef %2, void (i8*, i8*, i32)* noundef %3) #6
  br label %skip_cbs

skip_cbs:                                         ; preds = %entry, %if.end
  %call4 = tail call fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef %id) #7
  %tobool.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i8* @ENGINE_get_static_state() local_unnamed_addr #2

declare i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef, i8* (i8*, i64, i8*, i32)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef readonly %id) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %id, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc i32 @bind_ossltest(%struct.engine_st* noundef %e) #7
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_load_ossltest() local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.engine_st* @engine_ossltest() #7
  %tobool.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ENGINE_add(%struct.engine_st* noundef nonnull %call) #6
  %call2 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #6
  tail call void @ERR_clear_error() #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @engine_ossltest() unnamed_addr #1 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_new() #6
  %cmp = icmp eq %struct.engine_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @bind_ossltest(%struct.engine_st* noundef nonnull %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.engine_st* [ null, %if.then2 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.engine_st* %retval.0
}

declare i32 @ENGINE_add(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossltest_aes128_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #6
  %call1 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @EVP_CIPHER_meth_get_init(%struct.evp_cipher_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #6
  ret i32 %call2
}

declare i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @EVP_CIPHER_meth_get_init(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossltest_aes128_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %inl, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 649) #6
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp ne i64 %inl, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %in, i64 noundef %inl) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %call6 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #6
  %call7 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* noundef %call6) #6
  %call8 = tail call i32 %call7(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #6
  br i1 %cmp, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end5
  %call11 = tail call i8* @memcpy(i8* noundef %out, i8* noundef nonnull %call, i64 noundef %inl) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 665) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ %call8, %if.end12 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossltest_aes128_gcm_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #6
  %call1 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @EVP_CIPHER_meth_get_init(%struct.evp_cipher_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #6
  ret i32 %call2
}

declare %struct.evp_cipher_st* @EVP_aes_128_gcm() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossltest_aes128_gcm_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %inl, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 680) #6
  %cmp = icmp eq i8* %call, null
  %cmp1 = icmp ne i64 %inl, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ne i8* %call, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %in, i64 noundef %inl) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %call6 = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #6
  %call7 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* noundef %call6) #6
  %call8 = tail call i32 %call7(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #6
  %cmp11 = icmp ne i8* %out, null
  %or.cond15 = and i1 %cmp11, %cmp2
  br i1 %or.cond15, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end5
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %out, i8* noundef nonnull %call, i64 noundef %inl) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end5
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 696) #6
  %conv = trunc i64 %inl to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14
  %retval.0 = phi i32 [ %conv, %if.end14 ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_ossltest(%struct.engine_st* noundef %e) unnamed_addr #1 {
entry:
  tail call fastcc void @ERR_load_OSSLTEST_strings() #7
  %call1 = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @ENGINE_set_digests(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* noundef nonnull @ossltest_digests) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @ENGINE_set_ciphers(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef nonnull @ossltest_ciphers) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call12 = tail call i32 @ENGINE_set_RAND(%struct.engine_st* noundef %e, %struct.rand_meth_st* noundef nonnull @ossltest_rand_method.osslt_rand_meth) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @ossltest_destroy) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = tail call i32 @ENGINE_set_load_privkey_function(%struct.engine_st* noundef %e, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @ossltest_load_privkey) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call i32 @ENGINE_set_load_pubkey_function(%struct.engine_st* noundef %e, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @ossltest_load_pubkey) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @ossltest_init) #6
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %call27 = tail call i32 @ENGINE_set_finish_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @ossltest_finish) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false26, %lor.lhs.false23, %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  tail call fastcc void @ERR_OSSLTEST_error() #7
  br label %return

return:                                           ; preds = %lor.lhs.false26, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false26 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_load_OSSLTEST_strings() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !13
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #6
  store i32 %call, i32* @lib_code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %call, %if.then ], [ %0, %entry ]
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ERR_load_strings(i32 noundef %1, %struct.ERR_string_data_st* noundef getelementptr inbounds ([2 x %struct.ERR_string_data_st], [2 x %struct.ERR_string_data_st]* @OSSLTEST_str_reasons, i64 0, i64 0)) #6
  store i1 true, i1* @error_loaded, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  ret void
}

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_digests(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossltest_digests(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_md_st** noundef writeonly %digest, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #1 {
entry:
  %tobool.not = icmp eq %struct.evp_md_st** %digest, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @ossltest_digest_nids(i32** noundef %nids) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %nid, label %sw.default [
    i32 4, label %sw.bb
    i32 64, label %sw.bb2
    i32 672, label %sw.bb4
    i32 673, label %sw.bb6
    i32 674, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = tail call fastcc %struct.evp_md_st* @digest_md5() #7
  store %struct.evp_md_st* %call1, %struct.evp_md_st** %digest, align 8, !tbaa !15
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %call3 = tail call fastcc %struct.evp_md_st* @digest_sha1() #7
  store %struct.evp_md_st* %call3, %struct.evp_md_st** %digest, align 8, !tbaa !15
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %call5 = tail call fastcc %struct.evp_md_st* @digest_sha256() #7
  store %struct.evp_md_st* %call5, %struct.evp_md_st** %digest, align 8, !tbaa !15
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %call7 = tail call fastcc %struct.evp_md_st* @digest_sha384() #7
  store %struct.evp_md_st* %call7, %struct.evp_md_st** %digest, align 8, !tbaa !15
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %call9 = tail call fastcc %struct.evp_md_st* @digest_sha512() #7
  store %struct.evp_md_st* %call9, %struct.evp_md_st** %digest, align 8, !tbaa !15
  br label %cleanup

sw.default:                                       ; preds = %if.end
  store %struct.evp_md_st* null, %struct.evp_md_st** %digest, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb2, %sw.bb4, %sw.bb6, %sw.bb8, %sw.default, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %sw.default ], [ 1, %sw.bb8 ], [ 1, %sw.bb6 ], [ 1, %sw.bb4 ], [ 1, %sw.bb2 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_ciphers(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossltest_ciphers(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_cipher_st** noundef writeonly %cipher, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #1 {
entry:
  %tobool.not = icmp eq %struct.evp_cipher_st** %cipher, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ossltest_cipher_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !15
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %nid, label %sw.default [
    i32 419, label %sw.bb
    i32 895, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %call = tail call fastcc %struct.evp_cipher_st* @ossltest_aes_128_cbc() #7
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %call2 = tail call fastcc %struct.evp_cipher_st* @ossltest_aes_128_gcm() #7
  store %struct.evp_cipher_st* %call2, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %cleanup

sw.default:                                       ; preds = %if.end
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb1, %sw.default, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %sw.default ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_RAND(%struct.engine_st* noundef, %struct.rand_meth_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossltest_destroy(%struct.engine_st* nocapture noundef readnone %e) #1 {
entry:
  tail call fastcc void @destroy_digests() #7
  tail call fastcc void @destroy_ciphers() #7
  tail call fastcc void @ERR_unload_OSSLTEST_strings() #7
  ret i32 1
}

declare i32 @ENGINE_set_load_privkey_function(%struct.engine_st* noundef, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.evp_pkey_st* @ossltest_load_privkey(%struct.engine_st* nocapture noundef readnone %eng, i8* noundef %key_id, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data) #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_key(i8* noundef %key_id, i32 noundef 0) #7
  ret %struct.evp_pkey_st* %call
}

declare i32 @ENGINE_set_load_pubkey_function(%struct.engine_st* noundef, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.evp_pkey_st* @ossltest_load_pubkey(%struct.engine_st* nocapture noundef readnone %eng, i8* noundef %key_id, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data) #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_key(i8* noundef %key_id, i32 noundef 1) #7
  ret %struct.evp_pkey_st* %call
}

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ossltest_init(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

declare i32 @ENGINE_set_finish_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ossltest_finish(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_OSSLTEST_error() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !13
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #6
  store i32 %call, i32* @lib_code, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ERR_OSSLTEST_error, i64 0, i64 0)) #6
  %1 = load i32, i32* @lib_code, align 4, !tbaa !13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef %1, i32 noundef 100, i8* noundef null) #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef null) #6
  ret void
}

declare i32 @ERR_get_next_error_library() local_unnamed_addr #2

declare i32 @ERR_load_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossltest_digest_nids(i32** nocapture noundef writeonly %nids) unnamed_addr #1 {
entry:
  %.b = load i1, i1* @ossltest_digest_nids.init, align 4
  br i1 %.b, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  %.pre43 = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  br label %if.end37

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.evp_md_st* @digest_md5() #7
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call) #6
  %0 = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %idxprom
  store i32 %call2, i32* %arrayidx, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %call3 = tail call fastcc %struct.evp_md_st* @digest_sha1() #7
  %cmp4.not = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call3) #6
  %1 = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %inc7 = add nsw i32 %1, 1
  store i32 %inc7, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %idxprom8 = sext i32 %1 to i64
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %idxprom8
  store i32 %call6, i32* %arrayidx9, align 4, !tbaa !13
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %call11 = tail call fastcc %struct.evp_md_st* @digest_sha256() #7
  %cmp12.not = icmp eq %struct.evp_md_st* %call11, null
  br i1 %cmp12.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call11) #6
  %2 = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %inc15 = add nsw i32 %2, 1
  store i32 %inc15, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %idxprom16 = sext i32 %2 to i64
  %arrayidx17 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %idxprom16
  store i32 %call14, i32* %arrayidx17, align 4, !tbaa !13
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10
  %call19 = tail call fastcc %struct.evp_md_st* @digest_sha384() #7
  %cmp20.not = icmp eq %struct.evp_md_st* %call19, null
  br i1 %cmp20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call19) #6
  %3 = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %inc23 = add nsw i32 %3, 1
  store i32 %inc23, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %idxprom24 = sext i32 %3 to i64
  %arrayidx25 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %idxprom24
  store i32 %call22, i32* %arrayidx25, align 4, !tbaa !13
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18
  %call27 = tail call fastcc %struct.evp_md_st* @digest_sha512() #7
  %cmp28.not = icmp eq %struct.evp_md_st* %call27, null
  br i1 %cmp28.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  %.pre = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call27) #6
  %4 = load i32, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %inc31 = add nsw i32 %4, 1
  store i32 %inc31, i32* @ossltest_digest_nids.pos, align 4, !tbaa !13
  %idxprom32 = sext i32 %4 to i64
  %arrayidx33 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %idxprom32
  store i32 %call30, i32* %arrayidx33, align 4, !tbaa !13
  br label %if.end34

if.end34:                                         ; preds = %if.end26.if.end34_crit_edge, %if.then29
  %5 = phi i32 [ %.pre, %if.end26.if.end34_crit_edge ], [ %inc31, %if.then29 ]
  %idxprom35 = sext i32 %5 to i64
  %arrayidx36 = getelementptr inbounds [6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 %idxprom35
  store i32 0, i32* %arrayidx36, align 4, !tbaa !13
  store i1 true, i1* @ossltest_digest_nids.init, align 4
  br label %if.end37

if.end37:                                         ; preds = %entry.if.end37_crit_edge, %if.end34
  %6 = phi i32 [ %.pre43, %entry.if.end37_crit_edge ], [ %5, %if.end34 ]
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ossltest_digest_nids.digest_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !15
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @digest_md5() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_md5_md, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 4, i32 noundef 8) #6
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call, i32 noundef 16) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then21, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 64) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 100) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef nonnull %call, i64 noundef 0) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @digest_md5_init) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @digest_md5_update) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @digest_md5_final) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false18
  %md.0 = phi %struct.evp_md_st* [ null, %if.then21 ], [ %call, %lor.lhs.false18 ]
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** @_hidden_md5_md, align 8, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_md_st* [ %md.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @digest_sha1() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 64, i32 noundef 65) #6
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call, i32 noundef 20) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then21, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 64) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 104) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef nonnull %call, i64 noundef 8) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @digest_sha1_init) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @digest_sha1_update) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @digest_sha1_final) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false18
  %md.0 = phi %struct.evp_md_st* [ null, %if.then21 ], [ %call, %lor.lhs.false18 ]
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_md_st* [ %md.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @digest_sha256() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha256_md, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 672, i32 noundef 668) #6
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call, i32 noundef 32) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then21, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 64) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 120) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef nonnull %call, i64 noundef 8) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @digest_sha256_init) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @digest_sha256_update) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @digest_sha256_final) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false18
  %md.0 = phi %struct.evp_md_st* [ null, %if.then21 ], [ %call, %lor.lhs.false18 ]
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** @_hidden_sha256_md, align 8, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_md_st* [ %md.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @digest_sha384() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha384_md, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 673, i32 noundef 669) #6
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call, i32 noundef 48) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then21, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 128) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 224) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef nonnull %call, i64 noundef 8) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @digest_sha384_init) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @digest_sha384_update) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @digest_sha384_final) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false18
  %md.0 = phi %struct.evp_md_st* [ null, %if.then21 ], [ %call, %lor.lhs.false18 ]
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** @_hidden_sha384_md, align 8, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_md_st* [ %md.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_md_st* @digest_sha512() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha512_md, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_md_st* %0, null
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 674, i32 noundef 670) #6
  %cmp1 = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp1, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call, i32 noundef 64) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then21, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 128) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then21, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef nonnull %call, i32 noundef 224) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef nonnull %call, i64 noundef 8) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then21, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @digest_sha512_init) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @digest_sha512_update) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef nonnull %call, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @digest_sha512_final) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end

if.then21:                                        ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false18
  %md.0 = phi %struct.evp_md_st* [ null, %if.then21 ], [ %call, %lor.lhs.false18 ]
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** @_hidden_sha512_md, align 8, !tbaa !15
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %1 = phi %struct.evp_md_st* [ %md.0, %if.end ], [ %0, %entry ]
  ret %struct.evp_md_st* %1
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_md5_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_md5() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx) #6
  ret i32 %call2
}

declare i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_md5_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_md5() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #6
  ret i32 %call2
}

declare i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_md5_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_md5() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #6
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @fill_known_data(i8* noundef %md, i32 noundef 16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call2
}

declare void @EVP_MD_meth_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_md5() local_unnamed_addr #2

declare i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal fastcc void @fill_known_data(i8* nocapture noundef writeonly %md, i32 noundef %len) unnamed_addr #5 {
entry:
  %cmp5.not = icmp eq i32 %len, 0
  br i1 %cmp5.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64
  %min.iters.check = icmp ult i32 %len, 16
  br i1 %min.iters.check, label %for.body.preheader10, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967280
  %0 = add nsw i64 %n.vec, -16
  %1 = lshr exact i64 %0, 4
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 7
  %3 = icmp ult i64 %0, 112
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 2305843009213693944
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %vec.ind8 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph.new ], [ %vec.ind.next9.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %4 = getelementptr inbounds i8, i8* %md, i64 %index
  %5 = bitcast i8* %4 to <16 x i8>*
  store <16 x i8> %vec.ind8, <16 x i8>* %5, align 1, !tbaa !16
  %index.next = or i64 %index, 16
  %vec.ind.next9 = add <16 x i8> %vec.ind8, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %6 = getelementptr inbounds i8, i8* %md, i64 %index.next
  %7 = bitcast i8* %6 to <16 x i8>*
  store <16 x i8> %vec.ind.next9, <16 x i8>* %7, align 1, !tbaa !16
  %index.next.1 = or i64 %index, 32
  %vec.ind.next9.1 = add <16 x i8> %vec.ind8, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %8 = getelementptr inbounds i8, i8* %md, i64 %index.next.1
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> %vec.ind.next9.1, <16 x i8>* %9, align 1, !tbaa !16
  %index.next.2 = or i64 %index, 48
  %vec.ind.next9.2 = add <16 x i8> %vec.ind8, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %10 = getelementptr inbounds i8, i8* %md, i64 %index.next.2
  %11 = bitcast i8* %10 to <16 x i8>*
  store <16 x i8> %vec.ind.next9.2, <16 x i8>* %11, align 1, !tbaa !16
  %index.next.3 = or i64 %index, 64
  %vec.ind.next9.3 = add <16 x i8> %vec.ind8, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %12 = getelementptr inbounds i8, i8* %md, i64 %index.next.3
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %vec.ind.next9.3, <16 x i8>* %13, align 1, !tbaa !16
  %index.next.4 = or i64 %index, 80
  %vec.ind.next9.4 = add <16 x i8> %vec.ind8, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %14 = getelementptr inbounds i8, i8* %md, i64 %index.next.4
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %vec.ind.next9.4, <16 x i8>* %15, align 1, !tbaa !16
  %index.next.5 = or i64 %index, 96
  %vec.ind.next9.5 = add <16 x i8> %vec.ind8, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %16 = getelementptr inbounds i8, i8* %md, i64 %index.next.5
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %vec.ind.next9.5, <16 x i8>* %17, align 1, !tbaa !16
  %index.next.6 = or i64 %index, 112
  %vec.ind.next9.6 = add <16 x i8> %vec.ind8, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %18 = getelementptr inbounds i8, i8* %md, i64 %index.next.6
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %vec.ind.next9.6, <16 x i8>* %19, align 1, !tbaa !16
  %index.next.7 = add nuw i64 %index, 128
  %vec.ind.next9.7 = xor <16 x i8> %vec.ind8, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !17

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %vec.ind8.unr = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next9.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.ind8.epil = phi <16 x i8> [ %vec.ind.next9.epil, %vector.body.epil ], [ %vec.ind8.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %20 = getelementptr inbounds i8, i8* %md, i64 %index.epil
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %vec.ind8.epil, <16 x i8>* %21, align 1, !tbaa !16
  %index.next.epil = add nuw i64 %index.epil, 16
  %vec.ind.next9.epil = add <16 x i8> %vec.ind8.epil, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !20

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader10

for.body.preheader10:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader10, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader10 ]
  %conv = trunc i64 %indvars.iv to i8
  %arrayidx = getelementptr inbounds i8, i8* %md, i64 %indvars.iv
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %for.body, %middle.block, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha1_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha1() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha1_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha1() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha1_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha1() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #6
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @fill_known_data(i8* noundef %md, i32 noundef 20) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call2
}

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha256_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha256_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha256_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #6
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @fill_known_data(i8* noundef %md, i32 noundef 32) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call2
}

declare %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha384_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha384() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha384_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha384() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha384_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha384() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #6
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @fill_known_data(i8* noundef %md, i32 noundef 48) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call2
}

declare %struct.evp_md_st* @EVP_sha384() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha512_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha512() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha512_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha512() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #6
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_sha512_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha512() #6
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #6
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @fill_known_data(i8* noundef %md, i32 noundef 64) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call2
}

declare %struct.evp_md_st* @EVP_sha512() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @ossltest_aes_128_cbc() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 419, i32 noundef 16, i32 noundef 16) #6
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 2) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @ossltest_aes128_init_key) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @ossltest_aes128_cbc_cipher) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call13 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #6
  %call14 = tail call i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef %call13) #6
  %call15 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef %call14) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %lor.lhs.false12.if.end_crit_edge

lor.lhs.false12.if.end_crit_edge:                 ; preds = %lor.lhs.false12
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %5) #6
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false12.if.end_crit_edge, %if.then, %entry
  %6 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false12.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @ossltest_aes_128_gcm() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 895, i32 noundef 1, i32 noundef 16) #6
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 12) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 3146870) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @ossltest_aes128_gcm_init_key) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @ossltest_aes128_gcm_cipher) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_ctrl(%struct.evp_cipher_st* noundef %4, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* noundef nonnull @ossltest_aes128_gcm_ctrl) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  %call16 = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #6
  %call17 = tail call i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef %call16) #6
  %call18 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %5, i32 noundef %call17) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then, label %lor.lhs.false15.if.end_crit_edge

lor.lhs.false15.if.end_crit_edge:                 ; preds = %lor.lhs.false15
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %6) #6
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false15.if.end_crit_edge, %if.then, %entry
  %7 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false15.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %7
}

declare %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_ctrl(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossltest_aes128_gcm_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #6
  %call1 = tail call i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef %call) #6
  %call2 = tail call i32 %call1(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #6
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cond = icmp eq i32 %type, 16
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %if.end
  %call3 = tail call i8* @memset(i8* noundef %ptr, i32 noundef 0, i64 noundef 16) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end, %entry
  %retval.0 = phi i32 [ %call2, %entry ], [ 1, %if.end ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal i32 @ossltest_rand_bytes(i8* nocapture noundef writeonly %buf, i32 noundef %num) #5 {
entry:
  %cmp1 = icmp sgt i32 %num, 0
  br i1 %cmp1, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  %0 = add i32 %num, -1
  %1 = zext i32 %0 to i64
  %2 = add nuw nsw i64 %1, 1
  %min.iters.check = icmp ult i32 %0, 31
  br i1 %min.iters.check, label %while.body.preheader12, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %2, 8589934560
  %cast.crd = trunc i64 %n.vec to i8
  %ind.end = or i8 %cast.crd, 1
  %cast.crd6 = trunc i64 %n.vec to i32
  %ind.end7 = sub i32 %num, %cast.crd6
  %ind.end9 = getelementptr i8, i8* %buf, i64 %n.vec
  %3 = add nsw i64 %n.vec, -32
  %4 = lshr exact i64 %3, 5
  %5 = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %5, 3
  %6 = icmp ult i64 %3, 96
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %5, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.ind = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph.new ], [ %vec.ind.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %step.add = add <16 x i8> %vec.ind, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %next.gep = getelementptr i8, i8* %buf, i64 %index
  %7 = bitcast i8* %next.gep to <16 x i8>*
  store <16 x i8> %vec.ind, <16 x i8>* %7, align 1, !tbaa !16
  %8 = getelementptr i8, i8* %next.gep, i64 16
  %9 = bitcast i8* %8 to <16 x i8>*
  store <16 x i8> %step.add, <16 x i8>* %9, align 1, !tbaa !16
  %index.next = or i64 %index, 32
  %vec.ind.next = add <16 x i8> %vec.ind, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %step.add.1 = add <16 x i8> %vec.ind, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %next.gep.1 = getelementptr i8, i8* %buf, i64 %index.next
  %10 = bitcast i8* %next.gep.1 to <16 x i8>*
  store <16 x i8> %vec.ind.next, <16 x i8>* %10, align 1, !tbaa !16
  %11 = getelementptr i8, i8* %next.gep.1, i64 16
  %12 = bitcast i8* %11 to <16 x i8>*
  store <16 x i8> %step.add.1, <16 x i8>* %12, align 1, !tbaa !16
  %index.next.1 = or i64 %index, 64
  %vec.ind.next.1 = add <16 x i8> %vec.ind, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %step.add.2 = add <16 x i8> %vec.ind, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %next.gep.2 = getelementptr i8, i8* %buf, i64 %index.next.1
  %13 = bitcast i8* %next.gep.2 to <16 x i8>*
  store <16 x i8> %vec.ind.next.1, <16 x i8>* %13, align 1, !tbaa !16
  %14 = getelementptr i8, i8* %next.gep.2, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %step.add.2, <16 x i8>* %15, align 1, !tbaa !16
  %index.next.2 = or i64 %index, 96
  %vec.ind.next.2 = add <16 x i8> %vec.ind, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %step.add.3 = add <16 x i8> %vec.ind, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %next.gep.3 = getelementptr i8, i8* %buf, i64 %index.next.2
  %16 = bitcast i8* %next.gep.3 to <16 x i8>*
  store <16 x i8> %vec.ind.next.2, <16 x i8>* %16, align 1, !tbaa !16
  %17 = getelementptr i8, i8* %next.gep.3, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> %step.add.3, <16 x i8>* %18, align 1, !tbaa !16
  %index.next.3 = add nuw i64 %index, 128
  %vec.ind.next.3 = xor <16 x i8> %vec.ind, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !24

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind.unr = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph ], [ %vec.ind.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.ind.epil = phi <16 x i8> [ %vec.ind.next.epil, %vector.body.epil ], [ %vec.ind.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %step.add.epil = add <16 x i8> %vec.ind.epil, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %next.gep.epil = getelementptr i8, i8* %buf, i64 %index.epil
  %19 = bitcast i8* %next.gep.epil to <16 x i8>*
  store <16 x i8> %vec.ind.epil, <16 x i8>* %19, align 1, !tbaa !16
  %20 = getelementptr i8, i8* %next.gep.epil, i64 16
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %step.add.epil, <16 x i8>* %21, align 1, !tbaa !16
  %index.next.epil = add nuw i64 %index.epil, 32
  %vec.ind.next.epil = add <16 x i8> %vec.ind.epil, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !25

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %while.end, label %while.body.preheader12

while.body.preheader12:                           ; preds = %while.body.preheader, %middle.block
  %val.04.ph = phi i8 [ 1, %while.body.preheader ], [ %ind.end, %middle.block ]
  %num.addr.03.ph = phi i32 [ %num, %while.body.preheader ], [ %ind.end7, %middle.block ]
  %buf.addr.02.ph = phi i8* [ %buf, %while.body.preheader ], [ %ind.end9, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader12, %while.body
  %val.04 = phi i8 [ %inc, %while.body ], [ %val.04.ph, %while.body.preheader12 ]
  %num.addr.03 = phi i32 [ %dec, %while.body ], [ %num.addr.03.ph, %while.body.preheader12 ]
  %buf.addr.02 = phi i8* [ %incdec.ptr, %while.body ], [ %buf.addr.02.ph, %while.body.preheader12 ]
  %dec = add nsw i32 %num.addr.03, -1
  %inc = add i8 %val.04, 1
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.02, i64 1
  store i8 %val.04, i8* %buf.addr.02, align 1, !tbaa !16
  %cmp = icmp ugt i32 %num.addr.03, 1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !26

while.end:                                        ; preds = %while.body, %middle.block, %entry
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @ossltest_rand_status() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @destroy_digests() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_md5_md, align 8, !tbaa !15
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %0) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_md5_md, align 8, !tbaa !15
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !15
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %1) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !15
  %2 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha256_md, align 8, !tbaa !15
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %2) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_sha256_md, align 8, !tbaa !15
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha384_md, align 8, !tbaa !15
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %3) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_sha384_md, align 8, !tbaa !15
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha512_md, align 8, !tbaa !15
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %4) #6
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_sha512_md, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @destroy_ciphers() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %0) #6
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_gcm, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %1) #6
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_unload_OSSLTEST_strings() unnamed_addr #1 {
entry:
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @lib_code, align 4, !tbaa !13
  %call = tail call i32 @ERR_unload_strings(i32 noundef %0, %struct.ERR_string_data_st* noundef getelementptr inbounds ([2 x %struct.ERR_string_data_st], [2 x %struct.ERR_string_data_st]* @OSSLTEST_str_reasons, i64 0, i64 0)) #6
  store i1 false, i1* @error_loaded, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @ERR_unload_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_key(i8* noundef %key_id, i32 noundef %pub) unnamed_addr #1 {
entry:
  %call = tail call i32 @strncasecmp(i8* noundef %key_id, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %key_id, i64 3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %tobool.not = icmp eq i32 %pub, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* noundef %cond, i8* noundef nonnull %add.ptr) #6
  %call2 = tail call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6
  %tobool3.not = icmp eq %struct.bio_st* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call %struct.evp_pkey_st* @PEM_read_bio_PUBKEY(%struct.bio_st* noundef nonnull %call2, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  br label %if.end10

if.else:                                          ; preds = %if.end5
  %call9 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef nonnull %call2, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %key.0 = phi %struct.evp_pkey_st* [ %call8, %if.then7 ], [ %call9, %if.else ]
  %call11 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi %struct.evp_pkey_st* [ %key.0, %if.end10 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @PEM_read_bio_PUBKEY(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_new() local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"st_dynamic_fns", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"st_dynamic_MEM_fns", !6, i64 0, !6, i64 8, !6, i64 16}
!10 = !{!5, !6, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 24}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !18, !23, !19}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !18, !19}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !18, !23, !19}
