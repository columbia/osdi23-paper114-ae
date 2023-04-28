; ModuleID = 'engines/e_dasync.c'
source_filename = "engines/e_dasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_method_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ERR_string_data_st = type { i64, i8* }
%struct.engine_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.evp_md_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque

@.str = private unnamed_addr constant [7 x i8] c"dasync\00", align 1
@dasync_rsa_orig = internal unnamed_addr global %struct.evp_pkey_method_st* null, align 8
@dasync_rsa = internal unnamed_addr global %struct.evp_pkey_method_st* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"engines/e_dasync.c\00", align 1
@_hidden_sha1_md = internal unnamed_addr global %struct.evp_md_st* null, align 8
@_hidden_aes_128_cbc = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_128_cbc_hmac_sha1 = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@dasync_rsa_init.pinit = internal global i32 (%struct.evp_pkey_ctx_st*)* null, align 8
@dasync_rsa_cleanup.pcleanup = internal global void (%struct.evp_pkey_ctx_st*)* null, align 8
@dasync_rsa_paramgen_init.pparamgen_init = internal global i32 (%struct.evp_pkey_ctx_st*)* null, align 8
@dasync_rsa_paramgen.pparamgen = internal global i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, align 8
@dasync_rsa_keygen_init.pkeygen_init = internal global i32 (%struct.evp_pkey_ctx_st*)* null, align 8
@dasync_rsa_keygen.pkeygen = internal global i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* null, align 8
@dasync_rsa_encrypt_init.pencrypt_init = internal global i32 (%struct.evp_pkey_ctx_st*)* null, align 8
@dasync_rsa_encrypt.pencryptfn = internal global i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, align 8
@dasync_rsa_decrypt_init.pdecrypt_init = internal global i32 (%struct.evp_pkey_ctx_st*)* null, align 8
@dasync_rsa_decrypt.pdecrypt = internal global i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* null, align 8
@dasync_rsa_ctrl.pctrl = internal global i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* null, align 8
@dasync_rsa_ctrl_str.pctrl_str = internal global i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* null, align 8
@lib_code = internal unnamed_addr global i32 0, align 4
@error_loaded = internal unnamed_addr global i1 false, align 4
@DASYNC_str_reasons = internal global [2 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"init failed\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Dummy Async engine support\00", align 1
@dasync_pkey.rnid = internal constant i32 6, align 4
@dasync_digest_nids.digest_nids = internal global [2 x i32] zeroinitializer, align 4
@dasync_digest_nids.pos = internal unnamed_addr global i32 0, align 4
@dasync_digest_nids.init = internal unnamed_addr global i1 false, align 4
@dasync_cipher_nids = internal global [3 x i32] [i32 419, i32 916, i32 0], align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"engines/e_dasync_err.c\00", align 1
@__func__.ERR_DASYNC_error = private unnamed_addr constant [17 x i8] c"ERR_DASYNC_error\00", align 1

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
  %call = tail call i8* @ENGINE_get_static_state() #8
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
  %call3 = tail call i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef %1, i8* (i8*, i64, i8*, i32)* noundef %2, void (i8*, i8*, i32)* noundef %3) #8
  br label %skip_cbs

skip_cbs:                                         ; preds = %entry, %if.end
  %call4 = tail call fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef %id) #9
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
  %call = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc i32 @bind_dasync(%struct.engine_st* noundef %e) #9
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @engine_load_dasync_int() local_unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.engine_st* @engine_dasync() #9
  %tobool.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #8
  %call2 = tail call i32 @ENGINE_add(%struct.engine_st* noundef nonnull %call) #8
  %call3 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #8
  %call4 = tail call i32 @ERR_pop_to_mark() #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @engine_dasync() unnamed_addr #1 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_new() #8
  %tobool.not = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @bind_dasync(%struct.engine_st* noundef nonnull %call) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ENGINE_free(%struct.engine_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi %struct.engine_st* [ null, %if.then3 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.engine_st* %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @ENGINE_add(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_dasync(%struct.engine_st* noundef %e) unnamed_addr #1 {
entry:
  %call = tail call %struct.evp_pkey_method_st* @EVP_PKEY_meth_find(i32 noundef 6) #8
  store %struct.evp_pkey_method_st* %call, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  %cmp = icmp eq %struct.evp_pkey_method_st* %call, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef 6, i32 noundef 0) #8
  store %struct.evp_pkey_method_st* %call1, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  %cmp2 = icmp eq %struct.evp_pkey_method_st* %call1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @EVP_PKEY_meth_set_init(%struct.evp_pkey_method_st* noundef nonnull %call1, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @dasync_rsa_init) #8
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_set_cleanup(%struct.evp_pkey_method_st* noundef %0, void (%struct.evp_pkey_ctx_st*)* noundef nonnull @dasync_rsa_cleanup) #8
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_set_paramgen(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @dasync_rsa_paramgen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* noundef nonnull @dasync_rsa_paramgen) #8
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_set_keygen(%struct.evp_pkey_method_st* noundef %2, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @dasync_rsa_keygen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* noundef nonnull @dasync_rsa_keygen) #8
  %3 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_set_encrypt(%struct.evp_pkey_method_st* noundef %3, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @dasync_rsa_encrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @dasync_rsa_encrypt) #8
  %4 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_set_decrypt(%struct.evp_pkey_method_st* noundef %4, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @dasync_rsa_decrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @dasync_rsa_decrypt) #8
  %5 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_set_ctrl(%struct.evp_pkey_method_st* noundef %5, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* noundef nonnull @dasync_rsa_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* noundef nonnull @dasync_rsa_ctrl_str) #8
  tail call fastcc void @ERR_load_DASYNC_strings() #9
  %call4 = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then26, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then26, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @ENGINE_set_pkey_meths(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* noundef nonnull @dasync_pkey) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then26, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @ENGINE_set_digests(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* noundef nonnull @dasync_digests) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then26, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = tail call i32 @ENGINE_set_ciphers(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef nonnull @dasync_ciphers) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then26, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = tail call i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @dasync_destroy) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then26, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @dasync_init) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = tail call i32 @ENGINE_set_finish_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @dasync_finish) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false23, %lor.lhs.false20, %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %if.end
  tail call fastcc void @ERR_DASYNC_error(i32 noundef 100, i32 noundef 240) #9
  br label %return

if.end27:                                         ; preds = %lor.lhs.false23
  %call28 = tail call %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef 64, i32 noundef 65) #8
  store %struct.evp_md_st* %call28, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %cmp29 = icmp eq %struct.evp_md_st* %call28, null
  br i1 %cmp29, label %if.then51, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = tail call i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef nonnull %call28, i32 noundef 20) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then51, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %6 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %call34 = tail call i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef %6, i32 noundef 64) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then51, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %call37 = tail call i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef %7, i32 noundef 104) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then51, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %call40 = tail call i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef %8, i64 noundef 8) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then51, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %call43 = tail call i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef %9, i32 (%struct.evp_md_ctx_st*)* noundef nonnull @dasync_sha1_init) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then51, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %call46 = tail call i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef %10, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef nonnull @dasync_sha1_update) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %11 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  %call49 = tail call i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef %11, i32 (%struct.evp_md_ctx_st*, i8*)* noundef nonnull @dasync_sha1_final) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false39, %lor.lhs.false36, %lor.lhs.false33, %lor.lhs.false30, %if.end27
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %12) #8
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false48
  %call53 = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 419, i32 noundef 16, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call53, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %cmp54 = icmp eq %struct.evp_cipher_st* %call53, null
  br i1 %cmp54, label %if.then76, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end52
  %call56 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call53, i32 noundef 16) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then76, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %13 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %call59 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %13, i64 noundef 8388610) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then76, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %14 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %call62 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %14, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @dasync_aes128_init_key) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then76, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %15 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %call65 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %15, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @dasync_aes128_cbc_cipher) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then76, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %16 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %call68 = tail call i32 @EVP_CIPHER_meth_set_cleanup(%struct.evp_cipher_st* noundef %16, i32 (%struct.evp_cipher_ctx_st*)* noundef nonnull @dasync_aes128_cbc_cleanup) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then76, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %17 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %call71 = tail call i32 @EVP_CIPHER_meth_set_ctrl(%struct.evp_cipher_st* noundef %17, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* noundef nonnull @dasync_aes128_cbc_ctrl) #8
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then76, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %18 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  %call74 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %18, i32 noundef 464) #8
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %lor.lhs.false73, %lor.lhs.false70, %lor.lhs.false67, %lor.lhs.false64, %lor.lhs.false61, %lor.lhs.false58, %lor.lhs.false55, %if.end52
  %19 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %19) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %lor.lhs.false73
  %call78 = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 916, i32 noundef 16, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call78, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %cmp79 = icmp eq %struct.evp_cipher_st* %call78, null
  br i1 %cmp79, label %if.then101, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end77
  %call81 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call78, i32 noundef 16) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then101, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %20 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %call84 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %20, i64 noundef 10485762) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then101, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %21 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %call87 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %21, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @dasync_aes128_cbc_hmac_sha1_init_key) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then101, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false86
  %22 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %call90 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %22, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @dasync_aes128_cbc_hmac_sha1_cipher) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then101, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %23 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %call93 = tail call i32 @EVP_CIPHER_meth_set_cleanup(%struct.evp_cipher_st* noundef %23, i32 (%struct.evp_cipher_ctx_st*)* noundef nonnull @dasync_aes128_cbc_hmac_sha1_cleanup) #8
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then101, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %24 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %call96 = tail call i32 @EVP_CIPHER_meth_set_ctrl(%struct.evp_cipher_st* noundef %24, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* noundef nonnull @dasync_aes128_cbc_hmac_sha1_ctrl) #8
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then101, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %25 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  %call99 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %25, i32 noundef 464) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %return

if.then101:                                       ; preds = %lor.lhs.false98, %lor.lhs.false95, %lor.lhs.false92, %lor.lhs.false89, %lor.lhs.false86, %lor.lhs.false83, %lor.lhs.false80, %if.end77
  %26 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %26) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %lor.lhs.false98, %if.then101, %entry, %lor.lhs.false, %if.then26
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.then101 ], [ 1, %lor.lhs.false98 ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_method_st* @EVP_PKEY_meth_find(i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_set_init(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_init(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_init.pinit, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_init(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef nonnull @dasync_rsa_init.pinit) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_init.pinit, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  ret i32 %call
}

declare void @EVP_PKEY_meth_set_cleanup(%struct.evp_pkey_method_st* noundef, void (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @dasync_rsa_cleanup(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %0 = load void (%struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)** @dasync_rsa_cleanup.pcleanup, align 8, !tbaa !13
  %cmp = icmp eq void (%struct.evp_pkey_ctx_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_cleanup(%struct.evp_pkey_method_st* noundef %1, void (%struct.evp_pkey_ctx_st*)** noundef nonnull @dasync_rsa_cleanup.pcleanup) #8
  %.pre = load void (%struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)** @dasync_rsa_cleanup.pcleanup, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi void (%struct.evp_pkey_ctx_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  tail call void %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  ret void
}

declare void @EVP_PKEY_meth_set_paramgen(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_paramgen_init(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_paramgen_init.pparamgen_init, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_paramgen(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef nonnull @dasync_rsa_paramgen_init.pparamgen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef null) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_paramgen_init.pparamgen_init, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_paramgen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** @dasync_rsa_paramgen.pparamgen, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_paramgen(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef nonnull @dasync_rsa_paramgen.pparamgen) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** @dasync_rsa_paramgen.pparamgen, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #8
  ret i32 %call
}

declare void @EVP_PKEY_meth_set_keygen(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_keygen_init(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_keygen_init.pkeygen_init, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_keygen(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef nonnull @dasync_rsa_keygen_init.pkeygen_init, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef null) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_keygen_init.pkeygen_init, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_keygen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** @dasync_rsa_keygen.pkeygen, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_keygen(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef nonnull @dasync_rsa_keygen.pkeygen) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** @dasync_rsa_keygen.pkeygen, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey) #8
  ret i32 %call
}

declare void @EVP_PKEY_meth_set_encrypt(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_encrypt_init(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_encrypt_init.pencrypt_init, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_encrypt(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef nonnull @dasync_rsa_encrypt_init.pencrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef null) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_encrypt_init.pencrypt_init, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_encrypt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** @dasync_rsa_encrypt.pencryptfn, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_encrypt(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef nonnull @dasync_rsa_encrypt.pencryptfn) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** @dasync_rsa_encrypt.pencryptfn, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #8
  ret i32 %call
}

declare void @EVP_PKEY_meth_set_decrypt(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_decrypt_init(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_decrypt_init.pdecrypt_init, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_decrypt(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef nonnull @dasync_rsa_decrypt_init.pdecrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef null) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** @dasync_rsa_decrypt_init.pdecrypt_init, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_decrypt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** @dasync_rsa_decrypt.pdecrypt, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_encrypt(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef nonnull @dasync_rsa_decrypt.pdecrypt) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** @dasync_rsa_decrypt.pdecrypt, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #8
  ret i32 %call
}

declare void @EVP_PKEY_meth_set_ctrl(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** @dasync_rsa_ctrl.pctrl, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_ctrl(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** noundef nonnull @dasync_rsa_ctrl.pctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** noundef null) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** @dasync_rsa_ctrl.pctrl, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_rsa_ctrl_str(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %type, i8* noundef %value) #1 {
entry:
  %0 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** @dasync_rsa_ctrl_str.pctrl_str, align 8, !tbaa !13
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_get_ctrl(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** noundef nonnull @dasync_rsa_ctrl_str.pctrl_str) #8
  %.pre = load i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** @dasync_rsa_ctrl_str.pctrl_str, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* [ %.pre, %if.then ], [ %0, %entry ]
  %call = tail call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %type, i8* noundef %value) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_load_DASYNC_strings() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #8
  store i32 %call, i32* @lib_code, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %call, %if.then ], [ %0, %entry ]
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ERR_load_strings(i32 noundef %1, %struct.ERR_string_data_st* noundef getelementptr inbounds ([2 x %struct.ERR_string_data_st], [2 x %struct.ERR_string_data_st]* @DASYNC_str_reasons, i64 0, i64 0)) #8
  store i1 true, i1* @error_loaded, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  ret void
}

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_pkey_meths(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @dasync_pkey(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_pkey_method_st** noundef writeonly %pmeth, i32** nocapture noundef writeonly %pnids, i32 noundef %nid) #5 {
entry:
  %cmp = icmp eq %struct.evp_pkey_method_st** %pmeth, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* @dasync_pkey.rnid, i32** %pnids, align 8, !tbaa !13
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %nid, 6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  store %struct.evp_pkey_method_st* %0, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !13
  br label %return

if.end3:                                          ; preds = %if.end
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_digests(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_digests(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_md_st** noundef writeonly %digest, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #1 {
entry:
  %tobool.not = icmp eq %struct.evp_md_st** %digest, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @dasync_digest_nids(i32** noundef %nids) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond = icmp eq i32 %nid, 64
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %call1 = tail call fastcc %struct.evp_md_st* @dasync_sha1() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %storemerge = phi %struct.evp_md_st* [ %call1, %sw.bb ], [ null, %if.end ]
  %ok.0 = phi i32 [ 1, %sw.bb ], [ 0, %if.end ]
  store %struct.evp_md_st* %storemerge, %struct.evp_md_st** %digest, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %ok.0, %sw.epilog ], [ %call, %if.then ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_ciphers(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @dasync_ciphers(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_cipher_st** noundef writeonly %cipher, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #5 {
entry:
  %cmp = icmp eq %struct.evp_cipher_st** %cipher, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dasync_cipher_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !13
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %nid, label %sw.default [
    i32 419, label %sw.bb
    i32 916, label %sw.bb1
  ]

sw.bb:                                            ; preds = %if.end
  %call = tail call fastcc %struct.evp_cipher_st* @dasync_aes_128_cbc() #9
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** %cipher, align 8, !tbaa !13
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %call2 = tail call fastcc %struct.evp_cipher_st* @dasync_aes_128_cbc_hmac_sha1() #9
  store %struct.evp_cipher_st* %call2, %struct.evp_cipher_st** %cipher, align 8, !tbaa !13
  br label %cleanup

sw.default:                                       ; preds = %if.end
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb1, %sw.default, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %sw.default ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_destroy(%struct.engine_st* nocapture noundef readnone %e) #1 {
entry:
  tail call fastcc void @destroy_digests() #9
  tail call fastcc void @destroy_ciphers() #9
  tail call fastcc void @destroy_pkey() #9
  tail call fastcc void @ERR_unload_DASYNC_strings() #9
  ret i32 1
}

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dasync_init(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

declare i32 @ENGINE_set_finish_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @dasync_finish(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_DASYNC_error(i32 noundef %reason, i32 noundef %line) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #8
  store i32 %call, i32* @lib_code, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ERR_DASYNC_error, i64 0, i64 0)) #8
  %1 = load i32, i32* @lib_code, align 4, !tbaa !14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef %1, i32 noundef %reason, i8* noundef null) #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %line, i8* noundef null) #8
  ret void
}

declare %struct.evp_md_st* @EVP_MD_meth_new(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_result_size(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_input_blocksize(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_app_datasize(%struct.evp_md_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_flags(%struct.evp_md_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_meth_set_init(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_sha1_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  tail call fastcc void @dummy_pause_job() #9
  %call = tail call %struct.evp_md_st* @EVP_sha1() #8
  %call1 = tail call i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef %call) #8
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx) #8
  ret i32 %call2
}

declare i32 @EVP_MD_meth_set_update(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_sha1_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  tail call fastcc void @dummy_pause_job() #9
  %call = tail call %struct.evp_md_st* @EVP_sha1() #8
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef %call) #8
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #8
  ret i32 %call2
}

declare i32 @EVP_MD_meth_set_final(%struct.evp_md_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_sha1_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  tail call fastcc void @dummy_pause_job() #9
  %call = tail call %struct.evp_md_st* @EVP_sha1() #8
  %call1 = tail call i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef %call) #8
  %call2 = tail call i32 %call1(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #8
  ret i32 %call2
}

declare void @EVP_MD_meth_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #8
  %call1 = tail call fastcc i32 @dasync_cipher_init_key_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.evp_cipher_st* noundef %call) #9
  ret i32 %call1
}

declare i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #8
  %call1 = tail call fastcc i32 @dasync_cipher_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl, %struct.evp_cipher_st* noundef %call) #9
  ret i32 %call1
}

declare i32 @EVP_CIPHER_meth_set_cleanup(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_cleanup(%struct.evp_cipher_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #8
  tail call fastcc void @dasync_cipher_cleanup_helper(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %call) #9
  ret i32 1
}

declare i32 @EVP_CIPHER_meth_set_ctrl(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %call = tail call fastcc i32 @dasync_cipher_ctrl_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr, i32 noundef 0) #9
  ret i32 %call
}

declare i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_hmac_sha1_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha1() #8
  %call1 = tail call fastcc i32 @dasync_cipher_init_key_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.evp_cipher_st* noundef %call) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_hmac_sha1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha1() #8
  %call1 = tail call fastcc i32 @dasync_cipher_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl, %struct.evp_cipher_st* noundef %call) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_hmac_sha1_cleanup(%struct.evp_cipher_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha1() #8
  tail call fastcc void @dasync_cipher_cleanup_helper(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %call) #9
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dasync_aes128_cbc_hmac_sha1_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %call = tail call fastcc i32 @dasync_cipher_ctrl_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr, i32 noundef 1) #9
  ret i32 %call
}

declare void @EVP_PKEY_meth_get_init(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_get_cleanup(%struct.evp_pkey_method_st* noundef, void (%struct.evp_pkey_ctx_st*)** noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_get_paramgen(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_get_keygen(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_get_encrypt(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_get_decrypt(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef) local_unnamed_addr #2

declare void @EVP_PKEY_meth_get_ctrl(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** noundef) local_unnamed_addr #2

declare i32 @ERR_get_next_error_library() local_unnamed_addr #2

declare i32 @ERR_load_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dasync_digest_nids(i32** nocapture noundef writeonly %nids) unnamed_addr #1 {
entry:
  %.b = load i1, i1* @dasync_digest_nids.init, align 4
  br i1 %.b, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  %.pre7 = load i32, i32* @dasync_digest_nids.pos, align 4, !tbaa !14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.evp_md_st* @dasync_sha1() #9
  %cmp.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  %.pre = load i32, i32* @dasync_digest_nids.pos, align 4, !tbaa !14
  br label %if.end

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef nonnull %call) #8
  %0 = load i32, i32* @dasync_digest_nids.pos, align 4, !tbaa !14
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @dasync_digest_nids.pos, align 4, !tbaa !14
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @dasync_digest_nids.digest_nids, i64 0, i64 %idxprom
  store i32 %call2, i32* %arrayidx, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then1
  %1 = phi i32 [ %.pre, %if.then.if.end_crit_edge ], [ %inc, %if.then1 ]
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* @dasync_digest_nids.digest_nids, i64 0, i64 %idxprom3
  store i32 0, i32* %arrayidx4, align 4, !tbaa !14
  store i1 true, i1* @dasync_digest_nids.init, align 4
  br label %if.end5

if.end5:                                          ; preds = %entry.if.end5_crit_edge, %if.end
  %2 = phi i32 [ %.pre7, %entry.if.end5_crit_edge ], [ %1, %if.end ]
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dasync_digest_nids.digest_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !13
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.evp_md_st* @dasync_sha1() unnamed_addr #6 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  ret %struct.evp_md_st* %0
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.evp_cipher_st* @dasync_aes_128_cbc() unnamed_addr #6 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  ret %struct.evp_cipher_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.evp_cipher_st* @dasync_aes_128_cbc_hmac_sha1() unnamed_addr #6 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  ret %struct.evp_cipher_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @destroy_digests() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %0) #8
  store %struct.evp_md_st* null, %struct.evp_md_st** @_hidden_sha1_md, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @destroy_ciphers() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %0) #8
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %1) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !13
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc_hmac_sha1, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @destroy_pkey() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  tail call void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef %0) #8
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** @dasync_rsa_orig, align 8, !tbaa !13
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** @dasync_rsa, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_unload_DASYNC_strings() unnamed_addr #1 {
entry:
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @lib_code, align 4, !tbaa !14
  %call = tail call i32 @ERR_unload_strings(i32 noundef %0, %struct.ERR_string_data_st* noundef getelementptr inbounds ([2 x %struct.ERR_string_data_st], [2 x %struct.ERR_string_data_st]* @DASYNC_str_reasons, i64 0, i64 0)) #8
  store i1 false, i1* @error_loaded, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef) local_unnamed_addr #2

declare i32 @ERR_unload_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dummy_pause_job() unnamed_addr #1 {
entry:
  %callback = alloca i32 (i8*)*, align 8
  %callback_arg = alloca i8*, align 8
  %pipefds = alloca i64, align 8
  %tmpcast = bitcast i64* %pipefds to [2 x i32]*
  %writefd = alloca i32*, align 8
  %buf = alloca i8, align 1
  %0 = bitcast i32 (i8*)** %callback to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %1 = bitcast i8** %callback_arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %2 = bitcast i64* %pipefds to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store i64 0, i64* %pipefds, align 8
  %3 = bitcast i32** %writefd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %buf) #11
  store i8 88, i8* %buf, align 1, !tbaa !16
  %call = tail call %struct.async_job_st* @ASYNC_get_current_job() #8
  %cmp = icmp eq %struct.async_job_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* noundef nonnull %call) #8
  %call2 = call i32 @ASYNC_WAIT_CTX_get_callback(%struct.async_wait_ctx_st* noundef %call1, i32 (i8*)** noundef nonnull %callback, i8** noundef nonnull %callback_arg) #8
  %tobool = icmp ne i32 %call2, 0
  %4 = load i32 (i8*)*, i32 (i8*)** %callback, align 8
  %cmp3 = icmp ne i32 (i8*)* %4, null
  %or.cond = select i1 %tobool, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %5 = load i8*, i8** %callback_arg, align 8, !tbaa !13
  %call5 = call i32 %4(i8* noundef %5) #8
  %call6 = call i32 @ASYNC_pause_job() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx = bitcast i64* %pipefds to i32*
  %6 = bitcast i32** %writefd to i8**
  %call8 = call i32 @ASYNC_WAIT_CTX_get_fd(%struct.async_wait_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %arrayidx, i8** noundef nonnull %6) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %7 = load i32*, i32** %writefd, align 8, !tbaa !13
  %8 = load i32, i32* %7, align 4, !tbaa !14
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  store i32 %8, i32* %arrayidx11, align 4, !tbaa !14
  br label %if.end27

if.else:                                          ; preds = %if.end7
  %call12 = call i8* @CRYPTO_malloc(i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 504) #8
  store i8* %call12, i8** %6, align 8, !tbaa !13
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.else
  %call16 = call i32 @pipe(i32* noundef nonnull %arrayidx) #8
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  %9 = load i8*, i8** %6, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 514) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  %10 = load i32, i32* %arrayidx20, align 4, !tbaa !14
  %11 = load i32*, i32** %writefd, align 8, !tbaa !13
  store i32 %10, i32* %11, align 4, !tbaa !14
  %12 = load i32, i32* %arrayidx, align 8, !tbaa !14
  %.cast = bitcast i32* %11 to i8*
  %call22 = call i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %12, i8* noundef nonnull %.cast, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef nonnull @wait_cleanup) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  %.pre = load i32, i32* %arrayidx20, align 4, !tbaa !14
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  %13 = load i32, i32* %arrayidx, align 8, !tbaa !14
  %14 = load i8*, i8** %6, align 8, !tbaa !13
  call void @wait_cleanup(%struct.async_wait_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %13, i8* noundef %14) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end19.if.end27_crit_edge, %if.then10
  %15 = phi i32 [ %.pre, %if.end19.if.end27_crit_edge ], [ %8, %if.then10 ]
  %call29 = call i64 @write(i32 noundef %15, i8* noundef nonnull %buf, i64 noundef 1) #8
  %cmp30 = icmp slt i64 %call29, 0
  br i1 %cmp30, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end27
  %call33 = call i32 @ASYNC_pause_job() #8
  %16 = load i32, i32* %arrayidx, align 8, !tbaa !14
  %call35 = call i64 @read(i32 noundef %16, i8* noundef nonnull %buf, i64 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end27, %if.else, %entry, %if.then24, %if.then18, %if.then4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %buf) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret void
}

declare i32 (%struct.evp_md_ctx_st*)* @EVP_MD_meth_get_init(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare %struct.async_job_st* @ASYNC_get_current_job() local_unnamed_addr #2

declare %struct.async_wait_ctx_st* @ASYNC_get_wait_ctx(%struct.async_job_st* noundef) local_unnamed_addr #2

declare i32 @ASYNC_WAIT_CTX_get_callback(%struct.async_wait_ctx_st* noundef, i32 (i8*)** noundef, i8** noundef) local_unnamed_addr #2

declare i32 @ASYNC_pause_job() local_unnamed_addr #2

declare i32 @ASYNC_WAIT_CTX_get_fd(%struct.async_wait_ctx_st* noundef, i8* noundef, i32* noundef, i8** noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pipe(i32* noundef) local_unnamed_addr #7

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASYNC_WAIT_CTX_set_wait_fd(%struct.async_wait_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, void (%struct.async_wait_ctx_st*, i8*, i32, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @wait_cleanup(%struct.async_wait_ctx_st* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %key, i32 noundef %readfd, i8* noundef %pvwritefd) #1 {
entry:
  %0 = bitcast i8* %pvwritefd to i32*
  %call = tail call i32 @close(i32 noundef %readfd) #8
  %1 = load i32, i32* %0, align 4, !tbaa !14
  %call1 = tail call i32 @close(i32 noundef %1) #8
  tail call void @CRYPTO_free(i8* noundef %pvwritefd, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 464) #8
  ret void
}

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 (%struct.evp_md_ctx_st*, i8*, i64)* @EVP_MD_meth_get_update(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 (%struct.evp_md_ctx_st*, i8*)* @EVP_MD_meth_get_final(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dasync_cipher_init_key_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc, %struct.evp_cipher_st* noundef %cipher) unnamed_addr #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %inner_cipher_data = bitcast i8* %call to i8**
  %0 = load i8*, i8** %inner_cipher_data, align 8, !tbaa !17
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef %cipher) #8
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load i8*, i8** %inner_cipher_data, align 8, !tbaa !17
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef %cipher) #8
  %conv = sext i32 %call3 to i64
  %call4 = tail call i8* @CRYPTO_zalloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 663) #8
  store i8* %call4, i8** %inner_cipher_data, align 8, !tbaa !17
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then
  tail call fastcc void @ERR_DASYNC_error(i32 noundef 786688, i32 noundef 666) #9
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.then, %entry
  %1 = phi i8* [ %.pre, %land.lhs.true.if.end10_crit_edge ], [ %call4, %if.then ], [ %0, %entry ]
  %numpipes = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %numpipes to i32*
  store i32 0, i32* %2, align 8, !tbaa !19
  %aadctr = getelementptr inbounds i8, i8* %call, i64 456
  %3 = bitcast i8* %aadctr to i32*
  store i32 0, i32* %3, align 8, !tbaa !20
  %call12 = tail call i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %1) #8
  %call13 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @EVP_CIPHER_meth_get_init(%struct.evp_cipher_st* noundef %cipher) #8
  %call14 = tail call i32 %call13(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* noundef %iv, i32 noundef %enc) #8
  %call15 = tail call i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %call14, %if.end10 ]
  ret i32 %retval.0
}

declare %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @EVP_CIPHER_meth_get_init(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dasync_cipher_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl, %struct.evp_cipher_st* noundef %cipher) unnamed_addr #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %numpipes = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %numpipes to i32*
  %1 = load i32, i32* %0, align 8, !tbaa !19
  %inner_cipher_data = bitcast i8* %call to i8**
  %2 = load i8*, i8** %inner_cipher_data, align 8, !tbaa !17
  %call1 = tail call i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %2) #8
  %cmp = icmp eq i32 %1, 0
  %aadctr = getelementptr inbounds i8, i8* %call, i64 456
  %3 = bitcast i8* %aadctr to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  switch i32 %4, label %cleanup [
    i32 0, label %if.end9
    i32 1, label %if.end
  ]

if.end:                                           ; preds = %if.then
  %call7 = tail call i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef %cipher) #8
  %tlsaad = getelementptr inbounds i8, i8* %call, i64 40
  %call8 = tail call i32 %call7(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 22, i32 noundef 13, i8* noundef nonnull %tlsaad) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.end
  %call10 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* noundef %cipher) #8
  %call11 = tail call i32 %call10(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #8
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp13.not = icmp eq i32 %4, 0
  %cmp15.not = icmp eq i32 %4, %1
  %or.cond = select i1 %cmp13.not, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.else
  %tlsaad23 = getelementptr inbounds i8, i8* %call, i64 40
  %5 = bitcast i8* %tlsaad23 to [32 x [13 x i8]]*
  %outbufs = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %outbufs to i8***
  %inbufs = getelementptr inbounds i8, i8* %call, i64 16
  %7 = bitcast i8* %inbufs to i8***
  %lens = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %lens to i64**
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %land.end.for.body_crit_edge, %for.body.lr.ph
  %9 = phi i32 [ %4, %for.body.lr.ph ], [ %.pre, %land.end.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %land.end.for.body_crit_edge ]
  %ret.085 = phi i32 [ 1, %for.body.lr.ph ], [ %land.ext, %land.end.for.body_crit_edge ]
  %cmp20.not = icmp eq i32 %9, 0
  br i1 %cmp20.not, label %if.end27, label %if.then21

if.then21:                                        ; preds = %for.body
  %call22 = tail call i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef %cipher) #8
  %arraydecay25 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %5, i64 0, i64 %indvars.iv, i64 0
  %call26 = tail call i32 %call22(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 22, i32 noundef 13, i8* noundef nonnull %arraydecay25) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %for.body
  %tobool.not = icmp eq i32 %ret.085, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end27
  %call28 = tail call i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* noundef %cipher) #8
  %10 = load i8**, i8*** %6, align 8, !tbaa !21
  %arrayidx30 = getelementptr inbounds i8*, i8** %10, i64 %indvars.iv
  %11 = load i8*, i8** %arrayidx30, align 8, !tbaa !13
  %12 = load i8**, i8*** %7, align 8, !tbaa !22
  %arrayidx32 = getelementptr inbounds i8*, i8** %12, i64 %indvars.iv
  %13 = load i8*, i8** %arrayidx32, align 8, !tbaa !13
  %14 = load i64*, i64** %8, align 8, !tbaa !23
  %arrayidx34 = getelementptr inbounds i64, i64* %14, i64 %indvars.iv
  %15 = load i64, i64* %arrayidx34, align 8, !tbaa !24
  %call35 = tail call i32 %call28(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %11, i8* noundef %13, i64 noundef %15) #8
  %tobool36 = icmp ne i32 %call35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end27
  %16 = phi i1 [ false, %if.end27 ], [ %tobool36, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %land.end.for.body_crit_edge, !llvm.loop !26

land.end.for.body_crit_edge:                      ; preds = %land.end
  %.pre = load i32, i32* %3, align 8, !tbaa !20
  br label %for.body

for.end:                                          ; preds = %land.end
  store i32 0, i32* %0, align 8, !tbaa !19
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.end9
  %ret.1 = phi i32 [ %land.ext, %for.end ], [ %call11, %if.end9 ]
  store i32 0, i32* %3, align 8, !tbaa !20
  %call40 = tail call i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %if.end38
  %retval.0 = phi i32 [ %ret.1, %if.end38 ], [ -1, %if.then ], [ -1, %if.else ]
  ret i32 %retval.0
}

declare i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @EVP_CIPHER_meth_get_do_cipher(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dasync_cipher_cleanup_helper(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %cipher) unnamed_addr #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %inner_cipher_data = bitcast i8* %call to i8**
  %0 = load i8*, i8** %inner_cipher_data, align 8, !tbaa !17
  %call1 = tail call i32 @EVP_CIPHER_impl_ctx_size(%struct.evp_cipher_st* noundef %cipher) #8
  %conv = sext i32 %call1 to i64
  tail call void @CRYPTO_clear_free(i8* noundef %0, i64 noundef %conv, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef 731) #8
  ret void
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dasync_cipher_ctrl_helper(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr, i32 noundef %aeadcapable) unnamed_addr #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup55, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %type, label %cleanup55 [
    i32 34, label %sw.bb
    i32 35, label %sw.bb1
    i32 36, label %sw.bb3
    i32 23, label %sw.bb5
    i32 22, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %numpipes = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %numpipes to i32*
  store i32 %arg, i32* %0, align 8, !tbaa !19
  %outbufs = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %outbufs to i8**
  store i8* %ptr, i8** %1, align 8, !tbaa !21
  br label %cleanup55

sw.bb1:                                           ; preds = %if.end
  %numpipes2 = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %numpipes2 to i32*
  store i32 %arg, i32* %2, align 8, !tbaa !19
  %inbufs = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %inbufs to i8**
  store i8* %ptr, i8** %3, align 8, !tbaa !22
  br label %cleanup55

sw.bb3:                                           ; preds = %if.end
  %numpipes4 = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %numpipes4 to i32*
  store i32 %arg, i32* %4, align 8, !tbaa !19
  %lens = getelementptr inbounds i8, i8* %call, i64 32
  %5 = bitcast i8* %lens to i8**
  store i8* %ptr, i8** %5, align 8, !tbaa !23
  br label %cleanup55

sw.bb5:                                           ; preds = %if.end
  %tobool.not = icmp eq i32 %aeadcapable, 0
  br i1 %tobool.not, label %cleanup55, label %if.end7

if.end7:                                          ; preds = %sw.bb5
  %inner_cipher_data = bitcast i8* %call to i8**
  %6 = load i8*, i8** %inner_cipher_data, align 8, !tbaa !17
  %call8 = tail call i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %6) #8
  %call9 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha1() #8
  %call10 = tail call i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @EVP_CIPHER_meth_get_ctrl(%struct.evp_cipher_st* noundef %call9) #8
  %call11 = tail call i32 %call10(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 23, i32 noundef %arg, i8* noundef %ptr) #8
  %call12 = tail call i8* @EVP_CIPHER_CTX_set_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %call) #8
  br label %cleanup55

sw.bb13:                                          ; preds = %if.end
  %tobool14 = icmp eq i32 %aeadcapable, 0
  %cmp15 = icmp ne i32 %arg, 13
  %or.cond = or i1 %cmp15, %tobool14
  br i1 %or.cond, label %cleanup55, label %if.end17

if.end17:                                         ; preds = %sw.bb13
  %aadctr = getelementptr inbounds i8, i8* %call, i64 456
  %7 = bitcast i8* %aadctr to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !20
  %cmp18 = icmp ugt i32 %8, 31
  br i1 %cmp18, label %cleanup55, label %if.end20

if.end20:                                         ; preds = %if.end17
  %tlsaad = getelementptr inbounds i8, i8* %call, i64 40
  %9 = bitcast i8* %tlsaad to [32 x [13 x i8]]*
  %idxprom = zext i32 %8 to i64
  %arraydecay = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %9, i64 0, i64 %idxprom, i64 0
  %call22 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %ptr, i64 noundef 13) #8
  %10 = load i32, i32* %7, align 8, !tbaa !20
  %inc = add i32 %10, 1
  store i32 %inc, i32* %7, align 8, !tbaa !20
  %arrayidx25 = getelementptr inbounds i8, i8* %ptr, i64 11
  %11 = load i8, i8* %arrayidx25, align 1, !tbaa !16
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx28 = getelementptr inbounds i8, i8* %ptr, i64 12
  %12 = load i8, i8* %arrayidx28, align 1, !tbaa !16
  %conv29 = zext i8 %12 to i32
  %or = or i32 %shl, %conv29
  %call30 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup55, label %if.then32

if.then32:                                        ; preds = %if.end20
  %arrayidx35 = getelementptr inbounds i8, i8* %ptr, i64 9
  %13 = load i8, i8* %arrayidx35, align 1, !tbaa !16
  %conv36 = zext i8 %13 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %arrayidx40 = getelementptr inbounds i8, i8* %ptr, i64 10
  %14 = load i8, i8* %arrayidx40, align 1, !tbaa !16
  %conv41 = zext i8 %14 to i32
  %or42 = or i32 %shl37, %conv41
  %cmp43 = icmp ugt i32 %or42, 769
  br i1 %cmp43, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.then32
  %cmp46 = icmp ult i32 %or, 16
  br i1 %cmp46, label %cleanup55, label %if.end49

if.end49:                                         ; preds = %if.then45
  %sub50 = add nsw i32 %or, -16
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.then32
  %len.0 = phi i32 [ %sub50, %if.end49 ], [ %or, %if.then32 ]
  %add52 = add nsw i32 %len.0, 36
  %and = and i32 %add52, -16
  %sub53 = sub i32 %and, %len.0
  br label %cleanup55

cleanup55:                                        ; preds = %sw.bb, %sw.bb1, %sw.bb3, %if.end, %if.end51, %sw.bb13, %if.end17, %if.then45, %if.end20, %sw.bb5, %entry, %if.end7
  %retval.1 = phi i32 [ %call11, %if.end7 ], [ 0, %entry ], [ -1, %sw.bb5 ], [ %sub53, %if.end51 ], [ -1, %sw.bb13 ], [ -1, %if.end17 ], [ 0, %if.then45 ], [ 20, %if.end20 ], [ 0, %if.end ], [ 1, %sw.bb3 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.1
}

declare %struct.evp_cipher_st* @EVP_aes_128_cbc_hmac_sha1() local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_new() local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nounwind }

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
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !6, i64 0}
!18 = !{!"dasync_pipeline_ctx", !6, i64 0, !15, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !15, i64 456}
!19 = !{!18, !15, i64 8}
!20 = !{!18, !15, i64 456}
!21 = !{!18, !6, i64 24}
!22 = !{!18, !6, i64 16}
!23 = !{!18, !6, i64 32}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
