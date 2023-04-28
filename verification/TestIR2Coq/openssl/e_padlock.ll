; ModuleID = 'engines/e_padlock.c'
source_filename = "engines/e_padlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.padlock_cipher_data = type { [16 x i8], %union.anon.0, %struct.aes_key_st }
%union.anon.0 = type { [4 x i32] }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"padlock\00", align 1
@padlock_use_rng = internal unnamed_addr global i32 0, align 4
@padlock_name = internal global [100 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"VIA PadLock (%s, %s)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"no-RNG\00", align 1
@padlock_use_ace = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ACE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"no-ACE\00", align 1
@padlock_rand = internal global %struct.rand_meth_st { i32 (i8*, i32)* null, i32 (i8*, i32)* @padlock_rand_bytes, void ()* null, i32 (i8*, i32, double)* null, i32 (i8*, i32)* @padlock_rand_bytes, i32 ()* @padlock_rand_status }, align 8
@padlock_cipher_nids = internal constant [15 x i32] [i32 418, i32 419, i32 421, i32 420, i32 904, i32 422, i32 423, i32 425, i32 424, i32 905, i32 426, i32 427, i32 429, i32 428, i32 906], align 16
@_hidden_aes_128_ecb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_128_cbc = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_128_cfb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_128_ofb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_128_ctr = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_192_ecb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_192_cbc = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_192_cfb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_192_ofb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_192_ctr = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_256_ecb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_256_cbc = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_256_cfb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_256_ofb = internal unnamed_addr global %struct.evp_cipher_st* null, align 8
@_hidden_aes_256_ctr = internal unnamed_addr global %struct.evp_cipher_st* null, align 8

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
  %call4 = tail call fastcc i32 @padlock_bind_fn(%struct.engine_st* noundef %e, i8* noundef %id) #9
  %tobool.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i8* @ENGINE_get_static_state() local_unnamed_addr #2

declare i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef, i8* (i8*, i64, i8*, i32)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @padlock_bind_fn(%struct.engine_st* noundef %e, i8* noundef readonly %id) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %id, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc i32 @padlock_bind_helper(%struct.engine_st* noundef %e) #9
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @padlock_bind_helper(%struct.engine_st* noundef %e) unnamed_addr #1 {
entry:
  tail call fastcc void @padlock_available() #9
  store i32 0, i32* @padlock_use_rng, align 4, !tbaa !13
  %0 = load i32, i32* @padlock_use_ace, align 4, !tbaa !13
  %tobool1.not = icmp eq i32 %0, 0
  %cond2 = select i1 %tobool1.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %call3 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @padlock_name, i64 0, i64 0), i64 noundef 100, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %cond2) #8
  %call4 = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @padlock_name, i64 0, i64 0)) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @padlock_init) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %1 = load i32, i32* @padlock_use_ace, align 4, !tbaa !13
  %tobool12.not = icmp eq i32 %1, 0
  br i1 %tobool12.not, label %lor.lhs.false15, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false11
  %call13 = tail call i32 @ENGINE_set_ciphers(%struct.engine_st* noundef %e, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef nonnull @padlock_ciphers) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true, %lor.lhs.false11
  %2 = load i32, i32* @padlock_use_rng, align 4, !tbaa !13
  %tobool16.not = icmp eq i32 %2, 0
  br i1 %tobool16.not, label %if.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %call18 = tail call i32 @ENGINE_set_RAND(%struct.engine_st* noundef %e, %struct.rand_meth_st* noundef nonnull @padlock_rand) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true17, %lor.lhs.false15
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false8, %land.lhs.true, %land.lhs.true17, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @padlock_available() unnamed_addr #1 {
entry:
  %call = tail call i32 @padlock_capability() #8
  %and = and i32 %call, 192
  %cmp = icmp eq i32 %and, 192
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @padlock_use_ace, align 4, !tbaa !13
  %and1 = and i32 %call, 12
  %cmp2 = icmp eq i32 %and1, 12
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* @padlock_use_rng, align 4, !tbaa !13
  ret void
}

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @padlock_init(%struct.engine_st* nocapture noundef readnone %e) #4 {
entry:
  %0 = load i32, i32* @padlock_use_rng, align 4, !tbaa !13
  %tobool = icmp ne i32 %0, 0
  %1 = load i32, i32* @padlock_use_ace, align 4
  %tobool1 = icmp ne i32 %1, 0
  %2 = select i1 %tobool, i1 true, i1 %tobool1
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare i32 @ENGINE_set_ciphers(%struct.engine_st* noundef, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_ciphers(%struct.engine_st* nocapture noundef readnone %e, %struct.evp_cipher_st** noundef writeonly %cipher, i32** nocapture noundef writeonly %nids, i32 noundef %nid) #1 {
entry:
  %tobool.not = icmp eq %struct.evp_cipher_st** %cipher, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([15 x i32], [15 x i32]* @padlock_cipher_nids, i64 0, i64 0), i32** %nids, align 8, !tbaa !15
  br label %return

if.end:                                           ; preds = %entry
  switch i32 %nid, label %sw.default [
    i32 418, label %sw.bb
    i32 419, label %sw.bb1
    i32 421, label %sw.bb3
    i32 420, label %sw.bb5
    i32 904, label %sw.bb7
    i32 422, label %sw.bb9
    i32 423, label %sw.bb11
    i32 425, label %sw.bb13
    i32 424, label %sw.bb15
    i32 905, label %sw.bb17
    i32 426, label %sw.bb19
    i32 427, label %sw.bb21
    i32 429, label %sw.bb23
    i32 428, label %sw.bb25
    i32 906, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end
  %call = tail call fastcc %struct.evp_cipher_st* @padlock_aes_128_ecb() #9
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb1:                                           ; preds = %if.end
  %call2 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_128_cbc() #9
  store %struct.evp_cipher_st* %call2, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb3:                                           ; preds = %if.end
  %call4 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_128_cfb() #9
  store %struct.evp_cipher_st* %call4, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_128_ofb() #9
  store %struct.evp_cipher_st* %call6, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_128_ctr() #9
  store %struct.evp_cipher_st* %call8, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb9:                                           ; preds = %if.end
  %call10 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_192_ecb() #9
  store %struct.evp_cipher_st* %call10, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb11:                                          ; preds = %if.end
  %call12 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_192_cbc() #9
  store %struct.evp_cipher_st* %call12, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb13:                                          ; preds = %if.end
  %call14 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_192_cfb() #9
  store %struct.evp_cipher_st* %call14, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb15:                                          ; preds = %if.end
  %call16 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_192_ofb() #9
  store %struct.evp_cipher_st* %call16, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb17:                                          ; preds = %if.end
  %call18 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_192_ctr() #9
  store %struct.evp_cipher_st* %call18, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb19:                                          ; preds = %if.end
  %call20 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_256_ecb() #9
  store %struct.evp_cipher_st* %call20, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb21:                                          ; preds = %if.end
  %call22 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_256_cbc() #9
  store %struct.evp_cipher_st* %call22, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb23:                                          ; preds = %if.end
  %call24 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_256_cfb() #9
  store %struct.evp_cipher_st* %call24, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb25:                                          ; preds = %if.end
  %call26 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_256_ofb() #9
  store %struct.evp_cipher_st* %call26, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.bb27:                                          ; preds = %if.end
  %call28 = tail call fastcc %struct.evp_cipher_st* @padlock_aes_256_ctr() #9
  store %struct.evp_cipher_st* %call28, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

sw.default:                                       ; preds = %if.end
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb3, %sw.bb5, %sw.bb7, %sw.bb9, %sw.bb11, %sw.bb13, %sw.bb15, %sw.bb17, %sw.bb19, %sw.bb21, %sw.bb23, %sw.bb25, %sw.bb27, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ 15, %if.then ], [ 1, %sw.bb27 ], [ 1, %sw.bb25 ], [ 1, %sw.bb23 ], [ 1, %sw.bb21 ], [ 1, %sw.bb19 ], [ 1, %sw.bb17 ], [ 1, %sw.bb15 ], [ 1, %sw.bb13 ], [ 1, %sw.bb11 ], [ 1, %sw.bb9 ], [ 1, %sw.bb7 ], [ 1, %sw.bb5 ], [ 1, %sw.bb3 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_RAND(%struct.engine_st* noundef, %struct.rand_meth_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

declare i32 @padlock_capability() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_128_ecb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 418, i32 noundef 16, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 1) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ecb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_ecb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_128_cbc() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 419, i32 noundef 16, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 2) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_cbc_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cbc, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_128_cfb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 421, i32 noundef 1, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 3) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_cfb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_cfb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_128_ofb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 420, i32 noundef 1, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 4) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ofb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_ofb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_128_ctr() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 904, i32 noundef 1, i32 noundef 16) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 5) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ctr_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_128_ctr, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_192_ecb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 422, i32 noundef 16, i32 noundef 24) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 1) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ecb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_192_ecb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_192_cbc() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 423, i32 noundef 16, i32 noundef 24) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 2) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_cbc_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_192_cbc, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_192_cfb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 425, i32 noundef 1, i32 noundef 24) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 3) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_cfb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_192_cfb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_192_ofb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 424, i32 noundef 1, i32 noundef 24) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 4) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ofb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_192_ofb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_192_ctr() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 905, i32 noundef 1, i32 noundef 24) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 5) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ctr_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_192_ctr, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_256_ecb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 426, i32 noundef 16, i32 noundef 32) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 1) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ecb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_256_ecb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_256_cbc() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 427, i32 noundef 16, i32 noundef 32) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 2) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_cbc_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_256_cbc, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_256_cfb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 429, i32 noundef 1, i32 noundef 32) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 3) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_cfb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_256_cfb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_256_ofb() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 428, i32 noundef 1, i32 noundef 32) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 4) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ofb_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_256_ofb, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_cipher_st* @padlock_aes_256_ctr() unnamed_addr #1 {
entry:
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_cipher_st* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef 906, i32 noundef 1, i32 noundef 32) #8
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %cmp1 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef nonnull %call, i32 noundef 16) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %call4 = tail call i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef %1, i64 noundef 5) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %2 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %call7 = tail call i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef %2, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef nonnull @padlock_aes_init_key) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %call10 = tail call i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef %3, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef nonnull @padlock_ctr_cipher) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %call13 = tail call i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef %4, i32 noundef 292) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %call16 = tail call i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef %5, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_set_asn1_iv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  %call19 = tail call i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef %6, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef nonnull @EVP_CIPHER_get_asn1_iv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false18.if.end_crit_edge

lor.lhs.false18.if.end_crit_edge:                 ; preds = %lor.lhs.false18
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %land.lhs.true
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %7) #8
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** @_hidden_aes_256_ctr, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false18.if.end_crit_edge, %if.then, %entry
  %8 = phi %struct.evp_cipher_st* [ %.pre, %lor.lhs.false18.if.end_crit_edge ], [ null, %if.then ], [ %0, %entry ]
  ret %struct.evp_cipher_st* %8
}

declare %struct.evp_cipher_st* @EVP_CIPHER_meth_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_iv_length(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_flags(%struct.evp_cipher_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_init(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_aes_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %mul = shl nsw i32 %call, 3
  %call1 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call2 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call1) #8
  %cmp = icmp eq i8* %key, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %0 = ptrtoint i8* %call5 to i64
  %sub = sub i64 0, %0
  %and6 = and i64 %sub, 15
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %and6
  %call7 = tail call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef 276) #8
  %1 = and i32 %call2, -2
  %2 = icmp eq i32 %1, 4
  br i1 %2, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %cword = getelementptr inbounds i8, i8* %add.ptr, i64 16
  %3 = bitcast i8* %cword to i16*
  %bf.load = load i16, i16* %3, align 4
  %bf.clear = and i16 %bf.load, -513
  store i16 %bf.clear, i16* %3, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end
  %call13 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %cmp14 = icmp eq i32 %call13, 0
  %cword16 = getelementptr inbounds i8, i8* %add.ptr, i64 16
  %4 = bitcast i8* %cword16 to i16*
  %bf.load18 = load i16, i16* %4, align 4
  %bf.shl = select i1 %cmp14, i16 512, i16 0
  %bf.clear19 = and i16 %bf.load18, -513
  %bf.set20 = or i16 %bf.clear19, %bf.shl
  store i16 %bf.set20, i16* %4, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %.pre-phi = phi i16* [ %4, %if.else ], [ %3, %if.then12 ]
  %bf.load25 = phi i16 [ %bf.set20, %if.else ], [ %bf.clear, %if.then12 ]
  %sub22 = add nsw i32 %mul, -128
  %div = sdiv i32 %sub22, 32
  %5 = trunc i32 %div to i16
  %6 = add i16 %5, 10
  %bf.value26 = and i16 %6, 15
  %bf.clear27 = and i16 %bf.load25, -3088
  %div31 = sdiv i32 %sub22, 64
  %7 = trunc i32 %div31 to i16
  %bf.value35 = shl i16 %7, 10
  %bf.shl36 = and i16 %bf.value35, 3072
  %bf.set28 = or i16 %bf.shl36, %bf.value26
  %bf.set38 = or i16 %bf.set28, %bf.clear27
  store i16 %bf.set38, i16* %.pre-phi, align 4
  switch i32 %mul, label %cleanup [
    i32 128, label %sw.bb
    i32 192, label %sw.bb48
    i32 256, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end21
  %ks = getelementptr inbounds i8, i8* %add.ptr, i64 32
  %call42 = tail call i8* @memcpy(i8* noundef nonnull %ks, i8* noundef nonnull %key, i64 noundef 16) #8
  %bf.load45 = load i16, i16* %.pre-phi, align 4
  %bf.clear46 = and i16 %bf.load45, -129
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end21, %if.end21
  %8 = add i32 %call2, -3
  %9 = icmp ult i32 %8, -2
  %tobool = icmp ne i32 %enc, 0
  %or.cond70 = or i1 %tobool, %9
  %ks58 = getelementptr inbounds i8, i8* %add.ptr, i64 32
  %10 = bitcast i8* %ks58 to %struct.aes_key_st*
  br i1 %or.cond70, label %if.else57, label %if.then54

if.then54:                                        ; preds = %sw.bb48
  %call56 = tail call i32 @AES_set_decrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef nonnull %10) #8
  br label %if.end60

if.else57:                                        ; preds = %sw.bb48
  %call59 = tail call i32 @AES_set_encrypt_key(i8* noundef nonnull %key, i32 noundef %mul, %struct.aes_key_st* noundef nonnull %10) #8
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then54
  tail call void @padlock_key_bswap(%struct.aes_key_st* noundef nonnull %10) #8
  %bf.load64 = load i16, i16* %.pre-phi, align 4
  %bf.set66 = or i16 %bf.load64, 128
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end60, %sw.bb
  %storemerge = phi i16 [ %bf.set66, %if.end60 ], [ %bf.clear46, %sw.bb ]
  store i16 %storemerge, i16* %.pre-phi, align 4
  tail call void @padlock_reload_key() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry, %sw.epilog
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_meth_set_do_cipher(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out_arg, i8* noundef %in_arg, i64 noundef %nbytes) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %0 = ptrtoint i8* %call1 to i64
  %sub = sub i64 0, %0
  %and2 = and i64 %sub, 15
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %and2
  %1 = bitcast i8* %add.ptr to %struct.padlock_cipher_data*
  %call3 = tail call i32 @padlock_ecb_encrypt(i8* noundef %out_arg, i8* noundef %in_arg, %struct.padlock_cipher_data* noundef %1, i64 noundef %nbytes) #8
  ret i32 %call3
}

declare i32 @EVP_CIPHER_meth_set_impl_ctx_size(%struct.evp_cipher_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_meth_set_set_asn1_params(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_set_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare i32 @EVP_CIPHER_meth_set_get_asn1_params(%struct.evp_cipher_st* noundef, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_asn1_iv(%struct.evp_cipher_ctx_st* noundef, %struct.asn1_type_st* noundef) #2

declare void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare i32 @AES_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #2

declare i32 @AES_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #2

declare void @padlock_key_bswap(%struct.aes_key_st* noundef) local_unnamed_addr #2

declare void @padlock_reload_key() local_unnamed_addr #2

declare i32 @padlock_ecb_encrypt(i8* noundef, i8* noundef, %struct.padlock_cipher_data* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out_arg, i8* noundef %in_arg, i64 noundef %nbytes) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %0 = ptrtoint i8* %call1 to i64
  %sub = sub i64 0, %0
  %and2 = and i64 %sub, 15
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %and2
  %1 = bitcast i8* %add.ptr to %struct.padlock_cipher_data*
  %call3 = tail call i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call4 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %call3, i64 noundef 16) #8
  %call5 = tail call i32 @padlock_cbc_encrypt(i8* noundef %out_arg, i8* noundef %in_arg, %struct.padlock_cipher_data* noundef %1, i64 noundef %nbytes) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call6 = tail call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call9 = tail call i8* @memcpy(i8* noundef %call6, i8* noundef %add.ptr, i64 noundef 16) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call5
}

declare i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @padlock_cbc_encrypt(i8* noundef, i8* noundef, %struct.padlock_cipher_data* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_cfb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out_arg, i8* noundef %in_arg, i64 noundef %nbytes) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %0 = ptrtoint i8* %call1 to i64
  %sub = sub i64 0, %0
  %and2 = and i64 %sub, 15
  %add.ptr = getelementptr i8, i8* %call, i64 %and2
  %1 = bitcast i8* %add.ptr to %struct.padlock_cipher_data*
  %call3 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %conv = sext i32 %call3 to i64
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end41, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %cmp = icmp ugt i32 %call3, 15
  br i1 %cmp, label %cleanup109, label %if.end

if.end:                                           ; preds = %if.then
  %call7 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool8.not = icmp eq i32 %call7, 0
  %cmp23200.not = icmp eq i64 %nbytes, 0
  br i1 %tobool8.not, label %while.cond19.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %cmp23200.not, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = call i64 @llvm.usub.sat.i64(i64 15, i64 %conv)
  %3 = add i64 %nbytes, -1
  %4 = icmp ugt i32 %call3, 14
  %umin236 = call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %umin236.op = add nuw nsw i64 %umin236, 1
  %5 = select i1 %4, i64 1, i64 %umin236.op
  %min.iters.check = icmp ult i64 %5, 16
  br i1 %min.iters.check, label %while.body.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %6 = call i64 @llvm.usub.sat.i64(i64 15, i64 %conv)
  %7 = add i64 %nbytes, -1
  %8 = icmp ugt i32 %call3, 14
  %umin = call i64 @llvm.umin.i64(i64 %7, i64 %6)
  %9 = select i1 %8, i64 0, i64 %umin
  %10 = add nuw nsw i64 %9, 1
  %scevgep = getelementptr i8, i8* %out_arg, i64 %10
  %scevgep225 = getelementptr i8, i8* %call4, i64 %conv
  %11 = add nsw i64 %9, %conv
  %12 = add nsw i64 %11, 1
  %scevgep226 = getelementptr i8, i8* %call4, i64 %12
  %scevgep227 = getelementptr i8, i8* %in_arg, i64 %10
  %bound0 = icmp ugt i8* %scevgep226, %out_arg
  %bound1 = icmp ult i8* %scevgep225, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0228 = icmp ugt i8* %scevgep227, %out_arg
  %bound1229 = icmp ugt i8* %scevgep, %in_arg
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx = or i1 %found.conflict, %found.conflict230
  %bound0231 = icmp ult i8* %scevgep225, %scevgep227
  %bound1232 = icmp ugt i8* %scevgep226, %in_arg
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx, %found.conflict233
  br i1 %conflict.rdx234, label %while.body.preheader424, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, 16
  %ind.end = getelementptr i8, i8* %out_arg, i64 %n.vec
  %ind.end238 = getelementptr i8, i8* %in_arg, i64 %n.vec
  %ind.end240 = add nsw i64 %n.vec, %conv
  %ind.end242 = sub i64 %nbytes, %n.vec
  %13 = bitcast i8* %in_arg to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %13, align 1, !tbaa !16, !alias.scope !17
  %14 = getelementptr inbounds i8, i8* %call4, i64 %conv
  %15 = bitcast i8* %14 to <16 x i8>*
  %wide.load245 = load <16 x i8>, <16 x i8>* %15, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %16 = xor <16 x i8> %wide.load245, %wide.load
  %17 = bitcast i8* %out_arg to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %17, align 1, !tbaa !16, !alias.scope !22, !noalias !24
  %18 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %18, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %cleanup, label %while.body.preheader424

while.body.preheader424:                          ; preds = %vector.memcheck, %while.body.preheader, %vector.ph
  %out_arg.addr.0195.ph = phi i8* [ %out_arg, %vector.memcheck ], [ %out_arg, %while.body.preheader ], [ %ind.end, %vector.ph ]
  %in_arg.addr.0194.ph = phi i8* [ %in_arg, %vector.memcheck ], [ %in_arg, %while.body.preheader ], [ %ind.end238, %vector.ph ]
  %chunk.0193.ph = phi i64 [ %conv, %vector.memcheck ], [ %conv, %while.body.preheader ], [ %ind.end240, %vector.ph ]
  %nbytes.addr.0192.ph = phi i64 [ %nbytes, %vector.memcheck ], [ %nbytes, %while.body.preheader ], [ %ind.end242, %vector.ph ]
  br label %while.body

while.cond19.preheader:                           ; preds = %if.end
  br i1 %cmp23200.not, label %cleanup, label %while.body26.preheader

while.body26.preheader:                           ; preds = %while.cond19.preheader
  %19 = call i64 @llvm.usub.sat.i64(i64 15, i64 %conv)
  %20 = add i64 %nbytes, -1
  %21 = icmp ugt i32 %call3, 14
  %umin265 = call i64 @llvm.umin.i64(i64 %20, i64 %19)
  %umin265.op = add nuw nsw i64 %umin265, 1
  %22 = select i1 %21, i64 1, i64 %umin265.op
  %min.iters.check269 = icmp ult i64 %22, 16
  br i1 %min.iters.check269, label %while.body26.preheader423, label %vector.memcheck246

vector.memcheck246:                               ; preds = %while.body26.preheader
  %23 = call i64 @llvm.usub.sat.i64(i64 15, i64 %conv)
  %24 = add i64 %nbytes, -1
  %25 = icmp ugt i32 %call3, 14
  %umin248 = call i64 @llvm.umin.i64(i64 %24, i64 %23)
  %26 = select i1 %25, i64 0, i64 %umin248
  %27 = add nuw nsw i64 %26, 1
  %scevgep249 = getelementptr i8, i8* %out_arg, i64 %27
  %scevgep250 = getelementptr i8, i8* %call4, i64 %conv
  %28 = add nsw i64 %26, %conv
  %29 = add nsw i64 %28, 1
  %scevgep251 = getelementptr i8, i8* %call4, i64 %29
  %scevgep252 = getelementptr i8, i8* %in_arg, i64 %27
  %bound0253 = icmp ugt i8* %scevgep251, %out_arg
  %bound1254 = icmp ult i8* %scevgep250, %scevgep249
  %found.conflict255 = and i1 %bound0253, %bound1254
  %bound0256 = icmp ugt i8* %scevgep252, %out_arg
  %bound1257 = icmp ugt i8* %scevgep249, %in_arg
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  %bound0260 = icmp ult i8* %scevgep250, %scevgep252
  %bound1261 = icmp ugt i8* %scevgep251, %in_arg
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  br i1 %conflict.rdx263, label %while.body26.preheader423, label %vector.ph270

vector.ph270:                                     ; preds = %vector.memcheck246
  %n.vec272 = and i64 %22, 16
  %ind.end274 = getelementptr i8, i8* %out_arg, i64 %n.vec272
  %ind.end276 = getelementptr i8, i8* %in_arg, i64 %n.vec272
  %ind.end278 = add nsw i64 %n.vec272, %conv
  %ind.end280 = sub i64 %nbytes, %n.vec272
  %30 = bitcast i8* %in_arg to <16 x i8>*
  %wide.load287 = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !16, !alias.scope !25
  %31 = getelementptr inbounds i8, i8* %call4, i64 %conv
  %32 = bitcast i8* %31 to <16 x i8>*
  %wide.load288 = load <16 x i8>, <16 x i8>* %32, align 1, !tbaa !16, !alias.scope !28, !noalias !25
  %33 = xor <16 x i8> %wide.load288, %wide.load287
  %34 = bitcast i8* %out_arg to <16 x i8>*
  store <16 x i8> %33, <16 x i8>* %34, align 1, !tbaa !16, !alias.scope !30, !noalias !32
  %35 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %wide.load287, <16 x i8>* %35, align 1, !tbaa !16, !alias.scope !28, !noalias !25
  %cmp.n281 = icmp eq i64 %22, %n.vec272
  br i1 %cmp.n281, label %cleanup, label %while.body26.preheader423

while.body26.preheader423:                        ; preds = %vector.memcheck246, %while.body26.preheader, %vector.ph270
  %out_arg.addr.1204.ph = phi i8* [ %out_arg, %vector.memcheck246 ], [ %out_arg, %while.body26.preheader ], [ %ind.end274, %vector.ph270 ]
  %in_arg.addr.1203.ph = phi i8* [ %in_arg, %vector.memcheck246 ], [ %in_arg, %while.body26.preheader ], [ %ind.end276, %vector.ph270 ]
  %chunk.1202.ph = phi i64 [ %conv, %vector.memcheck246 ], [ %conv, %while.body26.preheader ], [ %ind.end278, %vector.ph270 ]
  %nbytes.addr.1201.ph = phi i64 [ %nbytes, %vector.memcheck246 ], [ %nbytes, %while.body26.preheader ], [ %ind.end280, %vector.ph270 ]
  br label %while.body26

while.body:                                       ; preds = %while.body.preheader424, %while.body
  %out_arg.addr.0195 = phi i8* [ %incdec.ptr17, %while.body ], [ %out_arg.addr.0195.ph, %while.body.preheader424 ]
  %in_arg.addr.0194 = phi i8* [ %incdec.ptr, %while.body ], [ %in_arg.addr.0194.ph, %while.body.preheader424 ]
  %chunk.0193 = phi i64 [ %inc, %while.body ], [ %chunk.0193.ph, %while.body.preheader424 ]
  %nbytes.addr.0192 = phi i64 [ %dec, %while.body ], [ %nbytes.addr.0192.ph, %while.body.preheader424 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in_arg.addr.0194, i64 1
  %36 = load i8, i8* %in_arg.addr.0194, align 1, !tbaa !16
  %arrayidx = getelementptr inbounds i8, i8* %call4, i64 %chunk.0193
  %37 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %xor181 = xor i8 %37, %36
  %incdec.ptr17 = getelementptr inbounds i8, i8* %out_arg.addr.0195, i64 1
  store i8 %xor181, i8* %out_arg.addr.0195, align 1, !tbaa !16
  store i8 %xor181, i8* %arrayidx, align 1, !tbaa !16
  %inc = add nuw nsw i64 %chunk.0193, 1
  %dec = add i64 %nbytes.addr.0192, -1
  %cmp10 = icmp ult i64 %chunk.0193, 15
  %cmp12 = icmp ne i64 %dec, 0
  %38 = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %38, label %while.body, label %cleanup, !llvm.loop !33

while.body26:                                     ; preds = %while.body26.preheader423, %while.body26
  %out_arg.addr.1204 = phi i8* [ %incdec.ptr33, %while.body26 ], [ %out_arg.addr.1204.ph, %while.body26.preheader423 ]
  %in_arg.addr.1203 = phi i8* [ %incdec.ptr27, %while.body26 ], [ %in_arg.addr.1203.ph, %while.body26.preheader423 ]
  %chunk.1202 = phi i64 [ %inc34, %while.body26 ], [ %chunk.1202.ph, %while.body26.preheader423 ]
  %nbytes.addr.1201 = phi i64 [ %dec36, %while.body26 ], [ %nbytes.addr.1201.ph, %while.body26.preheader423 ]
  %incdec.ptr27 = getelementptr inbounds i8, i8* %in_arg.addr.1203, i64 1
  %39 = load i8, i8* %in_arg.addr.1203, align 1, !tbaa !16
  %arrayidx29 = getelementptr inbounds i8, i8* %call4, i64 %chunk.1202
  %40 = load i8, i8* %arrayidx29, align 1, !tbaa !16
  %xor31180 = xor i8 %40, %39
  %incdec.ptr33 = getelementptr inbounds i8, i8* %out_arg.addr.1204, i64 1
  store i8 %xor31180, i8* %out_arg.addr.1204, align 1, !tbaa !16
  %inc34 = add nuw nsw i64 %chunk.1202, 1
  store i8 %39, i8* %arrayidx29, align 1, !tbaa !16
  %dec36 = add i64 %nbytes.addr.1201, -1
  %cmp20 = icmp ult i64 %chunk.1202, 15
  %cmp23 = icmp ne i64 %dec36, 0
  %41 = select i1 %cmp20, i1 %cmp23, i1 false
  br i1 %41, label %while.body26, label %cleanup, !llvm.loop !36

cleanup:                                          ; preds = %while.body, %while.body26, %vector.ph, %vector.ph270, %while.cond.preheader, %while.cond19.preheader
  %nbytes.addr.2 = phi i64 [ %nbytes, %while.cond19.preheader ], [ %nbytes, %while.cond.preheader ], [ %ind.end280, %vector.ph270 ], [ %ind.end242, %vector.ph ], [ %dec36, %while.body26 ], [ %dec, %while.body ]
  %chunk.2 = phi i64 [ %conv, %while.cond19.preheader ], [ %conv, %while.cond.preheader ], [ %ind.end278, %vector.ph270 ], [ %ind.end240, %vector.ph ], [ %inc34, %while.body26 ], [ %inc, %while.body ]
  %in_arg.addr.2 = phi i8* [ %in_arg, %while.cond19.preheader ], [ %in_arg, %while.cond.preheader ], [ %ind.end276, %vector.ph270 ], [ %ind.end238, %vector.ph ], [ %incdec.ptr27, %while.body26 ], [ %incdec.ptr, %while.body ]
  %out_arg.addr.2 = phi i8* [ %out_arg, %while.cond19.preheader ], [ %out_arg, %while.cond.preheader ], [ %ind.end274, %vector.ph270 ], [ %ind.end, %vector.ph ], [ %incdec.ptr33, %while.body26 ], [ %incdec.ptr17, %while.body ]
  %42 = trunc i64 %chunk.2 to i32
  %conv39 = and i32 %42, 15
  %call40 = tail call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %conv39) #8
  br label %if.end41

if.end41:                                         ; preds = %cleanup, %entry
  %nbytes.addr.4 = phi i64 [ %nbytes.addr.2, %cleanup ], [ %nbytes, %entry ]
  %in_arg.addr.4 = phi i8* [ %in_arg.addr.2, %cleanup ], [ %in_arg, %entry ]
  %out_arg.addr.4 = phi i8* [ %out_arg.addr.2, %cleanup ], [ %out_arg, %entry ]
  %cmp42 = icmp eq i64 %nbytes.addr.4, 0
  br i1 %cmp42, label %cleanup109, label %if.end45

if.end45:                                         ; preds = %if.end41
  %call46 = tail call i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call47 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %call46, i64 noundef 16) #8
  %and48 = and i64 %nbytes.addr.4, -16
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.then58, label %if.then50

if.then50:                                        ; preds = %if.end45
  %call51 = tail call i32 @padlock_cfb_encrypt(i8* noundef %out_arg.addr.4, i8* noundef %in_arg.addr.4, %struct.padlock_cipher_data* noundef %1, i64 noundef %and48) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup109, label %if.end56

if.end56:                                         ; preds = %if.then50
  %sub55 = and i64 %nbytes.addr.4, 15
  %tobool57.not = icmp eq i64 %sub55, 0
  br i1 %tobool57.not, label %if.end104, label %if.then58

if.then58:                                        ; preds = %if.end45, %if.end56
  %nbytes.addr.5187 = phi i64 [ %sub55, %if.end56 ], [ %nbytes.addr.4, %if.end45 ]
  %add.ptr62 = getelementptr i8, i8* %out_arg.addr.4, i64 %and48
  %add.ptr63 = getelementptr i8, i8* %in_arg.addr.4, i64 %and48
  %conv64 = trunc i64 %nbytes.addr.5187 to i32
  %call65 = tail call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %conv64) #8
  %cword = getelementptr inbounds i8, i8* %add.ptr, i64 16
  %43 = bitcast i8* %cword to i16*
  %bf.load = load i16, i16* %43, align 4
  %44 = and i16 %bf.load, 512
  %tobool66.not = icmp eq i16 %44, 0
  br i1 %tobool66.not, label %iter.check371, label %iter.check

iter.check:                                       ; preds = %if.then58
  %bf.clear71 = and i16 %bf.load, -513
  store i16 %bf.clear71, i16* %43, align 4
  tail call void @padlock_reload_key() #8
  tail call void @padlock_aes_block(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, %struct.padlock_cipher_data* noundef nonnull %1) #8
  %bf.load74 = load i16, i16* %43, align 4
  %bf.set76 = or i16 %bf.load74, 512
  store i16 %bf.set76, i16* %43, align 4
  tail call void @padlock_reload_key() #8
  %min.iters.check308 = icmp ult i64 %nbytes.addr.5187, 8
  br i1 %min.iters.check308, label %while.body79.preheader, label %vector.memcheck290

vector.memcheck290:                               ; preds = %iter.check
  %45 = add i64 %nbytes.addr.5187, %and48
  %scevgep291 = getelementptr i8, i8* %out_arg.addr.4, i64 %45
  %46 = add i64 %nbytes.addr.5187, %and2
  %scevgep292 = getelementptr i8, i8* %call, i64 %46
  %scevgep293 = getelementptr i8, i8* %in_arg.addr.4, i64 %45
  %bound0294 = icmp ult i8* %add.ptr62, %scevgep292
  %bound1295 = icmp ult i8* %add.ptr, %scevgep291
  %found.conflict296 = and i1 %bound0294, %bound1295
  %bound0297 = icmp ult i8* %add.ptr62, %scevgep293
  %bound1298 = icmp ult i8* %add.ptr63, %scevgep291
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %found.conflict296, %found.conflict299
  %bound0301 = icmp ult i8* %add.ptr, %scevgep293
  %bound1302 = icmp ult i8* %add.ptr63, %scevgep292
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  br i1 %conflict.rdx304, label %while.body79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck290
  %min.iters.check310 = icmp ult i64 %nbytes.addr.5187, 32
  br i1 %min.iters.check310, label %vec.epilog.ph, label %vector.ph311

vector.ph311:                                     ; preds = %vector.main.loop.iter.check
  %n.vec313 = and i64 %nbytes.addr.5187, -32
  %47 = add i64 %n.vec313, -32
  %48 = lshr exact i64 %47, 5
  %49 = add nuw nsw i64 %48, 1
  %xtraiter = and i64 %49, 1
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %middle.block305.unr-lcssa, label %vector.ph311.new

vector.ph311.new:                                 ; preds = %vector.ph311
  %unroll_iter = and i64 %49, 1152921504606846974
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph311.new
  %index315 = phi i64 [ 0, %vector.ph311.new ], [ %index.next327.1, %vector.body307 ]
  %niter = phi i64 [ 0, %vector.ph311.new ], [ %niter.next.1, %vector.body307 ]
  %next.gep316 = getelementptr i8, i8* %add.ptr, i64 %index315
  %next.gep318 = getelementptr i8, i8* %add.ptr62, i64 %index315
  %next.gep320 = getelementptr i8, i8* %add.ptr63, i64 %index315
  %51 = bitcast i8* %next.gep320 to <16 x i8>*
  %wide.load323 = load <16 x i8>, <16 x i8>* %51, align 1, !tbaa !16, !alias.scope !37
  %52 = getelementptr i8, i8* %next.gep320, i64 16
  %53 = bitcast i8* %52 to <16 x i8>*
  %wide.load324 = load <16 x i8>, <16 x i8>* %53, align 1, !tbaa !16, !alias.scope !37
  %54 = bitcast i8* %next.gep316 to <16 x i8>*
  %wide.load325 = load <16 x i8>, <16 x i8>* %54, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %55 = getelementptr i8, i8* %next.gep316, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load326 = load <16 x i8>, <16 x i8>* %56, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %57 = xor <16 x i8> %wide.load325, %wide.load323
  %58 = xor <16 x i8> %wide.load326, %wide.load324
  %59 = bitcast i8* %next.gep318 to <16 x i8>*
  store <16 x i8> %57, <16 x i8>* %59, align 1, !tbaa !16, !alias.scope !42, !noalias !44
  %60 = getelementptr i8, i8* %next.gep318, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  store <16 x i8> %58, <16 x i8>* %61, align 1, !tbaa !16, !alias.scope !42, !noalias !44
  %62 = bitcast i8* %next.gep316 to <16 x i8>*
  store <16 x i8> %wide.load323, <16 x i8>* %62, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %63 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %wide.load324, <16 x i8>* %63, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %index.next327 = or i64 %index315, 32
  %next.gep316.1 = getelementptr i8, i8* %add.ptr, i64 %index.next327
  %next.gep318.1 = getelementptr i8, i8* %add.ptr62, i64 %index.next327
  %next.gep320.1 = getelementptr i8, i8* %add.ptr63, i64 %index.next327
  %64 = bitcast i8* %next.gep320.1 to <16 x i8>*
  %wide.load323.1 = load <16 x i8>, <16 x i8>* %64, align 1, !tbaa !16, !alias.scope !37
  %65 = getelementptr i8, i8* %next.gep320.1, i64 16
  %66 = bitcast i8* %65 to <16 x i8>*
  %wide.load324.1 = load <16 x i8>, <16 x i8>* %66, align 1, !tbaa !16, !alias.scope !37
  %67 = bitcast i8* %next.gep316.1 to <16 x i8>*
  %wide.load325.1 = load <16 x i8>, <16 x i8>* %67, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %68 = getelementptr i8, i8* %next.gep316.1, i64 16
  %69 = bitcast i8* %68 to <16 x i8>*
  %wide.load326.1 = load <16 x i8>, <16 x i8>* %69, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %70 = xor <16 x i8> %wide.load325.1, %wide.load323.1
  %71 = xor <16 x i8> %wide.load326.1, %wide.load324.1
  %72 = bitcast i8* %next.gep318.1 to <16 x i8>*
  store <16 x i8> %70, <16 x i8>* %72, align 1, !tbaa !16, !alias.scope !42, !noalias !44
  %73 = getelementptr i8, i8* %next.gep318.1, i64 16
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %71, <16 x i8>* %74, align 1, !tbaa !16, !alias.scope !42, !noalias !44
  %75 = bitcast i8* %next.gep316.1 to <16 x i8>*
  store <16 x i8> %wide.load323.1, <16 x i8>* %75, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %76 = bitcast i8* %68 to <16 x i8>*
  store <16 x i8> %wide.load324.1, <16 x i8>* %76, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %index.next327.1 = add nuw i64 %index315, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block305.unr-lcssa, label %vector.body307, !llvm.loop !45

middle.block305.unr-lcssa:                        ; preds = %vector.body307, %vector.ph311
  %index315.unr = phi i64 [ 0, %vector.ph311 ], [ %index.next327.1, %vector.body307 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block305, label %vector.body307.epil

vector.body307.epil:                              ; preds = %middle.block305.unr-lcssa
  %next.gep316.epil = getelementptr i8, i8* %add.ptr, i64 %index315.unr
  %next.gep318.epil = getelementptr i8, i8* %add.ptr62, i64 %index315.unr
  %next.gep320.epil = getelementptr i8, i8* %add.ptr63, i64 %index315.unr
  %77 = bitcast i8* %next.gep320.epil to <16 x i8>*
  %wide.load323.epil = load <16 x i8>, <16 x i8>* %77, align 1, !tbaa !16, !alias.scope !37
  %78 = getelementptr i8, i8* %next.gep320.epil, i64 16
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load324.epil = load <16 x i8>, <16 x i8>* %79, align 1, !tbaa !16, !alias.scope !37
  %80 = bitcast i8* %next.gep316.epil to <16 x i8>*
  %wide.load325.epil = load <16 x i8>, <16 x i8>* %80, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %81 = getelementptr i8, i8* %next.gep316.epil, i64 16
  %82 = bitcast i8* %81 to <16 x i8>*
  %wide.load326.epil = load <16 x i8>, <16 x i8>* %82, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %83 = xor <16 x i8> %wide.load325.epil, %wide.load323.epil
  %84 = xor <16 x i8> %wide.load326.epil, %wide.load324.epil
  %85 = bitcast i8* %next.gep318.epil to <16 x i8>*
  store <16 x i8> %83, <16 x i8>* %85, align 1, !tbaa !16, !alias.scope !42, !noalias !44
  %86 = getelementptr i8, i8* %next.gep318.epil, i64 16
  %87 = bitcast i8* %86 to <16 x i8>*
  store <16 x i8> %84, <16 x i8>* %87, align 1, !tbaa !16, !alias.scope !42, !noalias !44
  %88 = bitcast i8* %next.gep316.epil to <16 x i8>*
  store <16 x i8> %wide.load323.epil, <16 x i8>* %88, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  %89 = bitcast i8* %81 to <16 x i8>*
  store <16 x i8> %wide.load324.epil, <16 x i8>* %89, align 1, !tbaa !16, !alias.scope !40, !noalias !37
  br label %middle.block305

middle.block305:                                  ; preds = %middle.block305.unr-lcssa, %vector.body307.epil
  %cmp.n314 = icmp eq i64 %nbytes.addr.5187, %n.vec313
  br i1 %cmp.n314, label %if.end104, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block305
  %ind.end341 = and i64 %nbytes.addr.5187, 31
  %ind.end338 = getelementptr i8, i8* %add.ptr63, i64 %n.vec313
  %ind.end335 = getelementptr i8, i8* %add.ptr62, i64 %n.vec313
  %ind.end332 = getelementptr i8, i8* %add.ptr, i64 %n.vec313
  %n.vec.remaining = and i64 %nbytes.addr.5187, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %while.body79.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec313, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec329 = and i64 %nbytes.addr.5187, -8
  %ind.end331 = getelementptr i8, i8* %add.ptr, i64 %n.vec329
  %ind.end334 = getelementptr i8, i8* %add.ptr62, i64 %n.vec329
  %ind.end337 = getelementptr i8, i8* %add.ptr63, i64 %n.vec329
  %ind.end340 = and i64 %nbytes.addr.5187, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index343 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next350, %vec.epilog.vector.body ]
  %next.gep344 = getelementptr i8, i8* %add.ptr, i64 %index343
  %next.gep345 = getelementptr i8, i8* %add.ptr62, i64 %index343
  %next.gep346 = getelementptr i8, i8* %add.ptr63, i64 %index343
  %90 = bitcast i8* %next.gep346 to <8 x i8>*
  %wide.load348 = load <8 x i8>, <8 x i8>* %90, align 1, !tbaa !16
  %91 = bitcast i8* %next.gep344 to <8 x i8>*
  %wide.load349 = load <8 x i8>, <8 x i8>* %91, align 1, !tbaa !16
  %92 = xor <8 x i8> %wide.load349, %wide.load348
  %93 = bitcast i8* %next.gep345 to <8 x i8>*
  store <8 x i8> %92, <8 x i8>* %93, align 1, !tbaa !16
  %94 = bitcast i8* %next.gep344 to <8 x i8>*
  store <8 x i8> %wide.load348, <8 x i8>* %94, align 1, !tbaa !16
  %index.next350 = add nuw i64 %index343, 8
  %95 = icmp eq i64 %index.next350, %n.vec329
  br i1 %95, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %nbytes.addr.5187, %n.vec329
  br i1 %cmp.n342, label %if.end104, label %while.body79.preheader

while.body79.preheader:                           ; preds = %vector.memcheck290, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %ivp59.0213.ph = phi i8* [ %add.ptr, %iter.check ], [ %add.ptr, %vector.memcheck290 ], [ %ind.end332, %vec.epilog.iter.check ], [ %ind.end331, %vec.epilog.middle.block ]
  %out_arg.addr.5212.ph = phi i8* [ %add.ptr62, %iter.check ], [ %add.ptr62, %vector.memcheck290 ], [ %ind.end335, %vec.epilog.iter.check ], [ %ind.end334, %vec.epilog.middle.block ]
  %in_arg.addr.5211.ph = phi i8* [ %add.ptr63, %iter.check ], [ %add.ptr63, %vector.memcheck290 ], [ %ind.end338, %vec.epilog.iter.check ], [ %ind.end337, %vec.epilog.middle.block ]
  %nbytes.addr.6210.ph = phi i64 [ %nbytes.addr.5187, %iter.check ], [ %nbytes.addr.5187, %vector.memcheck290 ], [ %ind.end341, %vec.epilog.iter.check ], [ %ind.end340, %vec.epilog.middle.block ]
  %96 = add i64 %nbytes.addr.6210.ph, -1
  %xtraiter426 = and i64 %nbytes.addr.6210.ph, 3
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %while.body79.prol.loopexit, label %while.body79.prol

while.body79.prol:                                ; preds = %while.body79.preheader, %while.body79.prol
  %ivp59.0213.prol = phi i8* [ %incdec.ptr87.prol, %while.body79.prol ], [ %ivp59.0213.ph, %while.body79.preheader ]
  %out_arg.addr.5212.prol = phi i8* [ %incdec.ptr86.prol, %while.body79.prol ], [ %out_arg.addr.5212.ph, %while.body79.preheader ]
  %in_arg.addr.5211.prol = phi i8* [ %incdec.ptr81.prol, %while.body79.prol ], [ %in_arg.addr.5211.ph, %while.body79.preheader ]
  %nbytes.addr.6210.prol = phi i64 [ %dec88.prol, %while.body79.prol ], [ %nbytes.addr.6210.ph, %while.body79.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body79.prol ], [ 0, %while.body79.preheader ]
  %incdec.ptr81.prol = getelementptr inbounds i8, i8* %in_arg.addr.5211.prol, i64 1
  %97 = load i8, i8* %in_arg.addr.5211.prol, align 1, !tbaa !16
  %98 = load i8, i8* %ivp59.0213.prol, align 1, !tbaa !16
  %xor84179.prol = xor i8 %98, %97
  %incdec.ptr86.prol = getelementptr inbounds i8, i8* %out_arg.addr.5212.prol, i64 1
  store i8 %xor84179.prol, i8* %out_arg.addr.5212.prol, align 1, !tbaa !16
  %incdec.ptr87.prol = getelementptr inbounds i8, i8* %ivp59.0213.prol, i64 1
  store i8 %97, i8* %ivp59.0213.prol, align 1, !tbaa !16
  %dec88.prol = add i64 %nbytes.addr.6210.prol, -1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter426
  br i1 %prol.iter.cmp.not, label %while.body79.prol.loopexit, label %while.body79.prol, !llvm.loop !48

while.body79.prol.loopexit:                       ; preds = %while.body79.prol, %while.body79.preheader
  %ivp59.0213.unr = phi i8* [ %ivp59.0213.ph, %while.body79.preheader ], [ %incdec.ptr87.prol, %while.body79.prol ]
  %out_arg.addr.5212.unr = phi i8* [ %out_arg.addr.5212.ph, %while.body79.preheader ], [ %incdec.ptr86.prol, %while.body79.prol ]
  %in_arg.addr.5211.unr = phi i8* [ %in_arg.addr.5211.ph, %while.body79.preheader ], [ %incdec.ptr81.prol, %while.body79.prol ]
  %nbytes.addr.6210.unr = phi i64 [ %nbytes.addr.6210.ph, %while.body79.preheader ], [ %dec88.prol, %while.body79.prol ]
  %99 = icmp ult i64 %96, 3
  br i1 %99, label %if.end104, label %while.body79

while.body79:                                     ; preds = %while.body79.prol.loopexit, %while.body79
  %ivp59.0213 = phi i8* [ %incdec.ptr87.3, %while.body79 ], [ %ivp59.0213.unr, %while.body79.prol.loopexit ]
  %out_arg.addr.5212 = phi i8* [ %incdec.ptr86.3, %while.body79 ], [ %out_arg.addr.5212.unr, %while.body79.prol.loopexit ]
  %in_arg.addr.5211 = phi i8* [ %incdec.ptr81.3, %while.body79 ], [ %in_arg.addr.5211.unr, %while.body79.prol.loopexit ]
  %nbytes.addr.6210 = phi i64 [ %dec88.3, %while.body79 ], [ %nbytes.addr.6210.unr, %while.body79.prol.loopexit ]
  %incdec.ptr81 = getelementptr inbounds i8, i8* %in_arg.addr.5211, i64 1
  %100 = load i8, i8* %in_arg.addr.5211, align 1, !tbaa !16
  %101 = load i8, i8* %ivp59.0213, align 1, !tbaa !16
  %xor84179 = xor i8 %101, %100
  %incdec.ptr86 = getelementptr inbounds i8, i8* %out_arg.addr.5212, i64 1
  store i8 %xor84179, i8* %out_arg.addr.5212, align 1, !tbaa !16
  %incdec.ptr87 = getelementptr inbounds i8, i8* %ivp59.0213, i64 1
  store i8 %100, i8* %ivp59.0213, align 1, !tbaa !16
  %incdec.ptr81.1 = getelementptr inbounds i8, i8* %in_arg.addr.5211, i64 2
  %102 = load i8, i8* %incdec.ptr81, align 1, !tbaa !16
  %103 = load i8, i8* %incdec.ptr87, align 1, !tbaa !16
  %xor84179.1 = xor i8 %103, %102
  %incdec.ptr86.1 = getelementptr inbounds i8, i8* %out_arg.addr.5212, i64 2
  store i8 %xor84179.1, i8* %incdec.ptr86, align 1, !tbaa !16
  %incdec.ptr87.1 = getelementptr inbounds i8, i8* %ivp59.0213, i64 2
  store i8 %102, i8* %incdec.ptr87, align 1, !tbaa !16
  %incdec.ptr81.2 = getelementptr inbounds i8, i8* %in_arg.addr.5211, i64 3
  %104 = load i8, i8* %incdec.ptr81.1, align 1, !tbaa !16
  %105 = load i8, i8* %incdec.ptr87.1, align 1, !tbaa !16
  %xor84179.2 = xor i8 %105, %104
  %incdec.ptr86.2 = getelementptr inbounds i8, i8* %out_arg.addr.5212, i64 3
  store i8 %xor84179.2, i8* %incdec.ptr86.1, align 1, !tbaa !16
  %incdec.ptr87.2 = getelementptr inbounds i8, i8* %ivp59.0213, i64 3
  store i8 %104, i8* %incdec.ptr87.1, align 1, !tbaa !16
  %incdec.ptr81.3 = getelementptr inbounds i8, i8* %in_arg.addr.5211, i64 4
  %106 = load i8, i8* %incdec.ptr81.2, align 1, !tbaa !16
  %107 = load i8, i8* %incdec.ptr87.2, align 1, !tbaa !16
  %xor84179.3 = xor i8 %107, %106
  %incdec.ptr86.3 = getelementptr inbounds i8, i8* %out_arg.addr.5212, i64 4
  store i8 %xor84179.3, i8* %incdec.ptr86.2, align 1, !tbaa !16
  %incdec.ptr87.3 = getelementptr inbounds i8, i8* %ivp59.0213, i64 4
  store i8 %106, i8* %incdec.ptr87.2, align 1, !tbaa !16
  %dec88.3 = add i64 %nbytes.addr.6210, -4
  %tobool78.not.3 = icmp eq i64 %dec88.3, 0
  br i1 %tobool78.not.3, label %if.end104, label %while.body79, !llvm.loop !50

iter.check371:                                    ; preds = %if.then58
  tail call void @padlock_reload_key() #8
  tail call void @padlock_aes_block(i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, %struct.padlock_cipher_data* noundef nonnull %1) #8
  tail call void @padlock_reload_key() #8
  %min.iters.check369 = icmp ult i64 %nbytes.addr.5187, 8
  br i1 %min.iters.check369, label %while.body93.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %iter.check371
  %108 = add i64 %nbytes.addr.5187, %and48
  %scevgep352 = getelementptr i8, i8* %out_arg.addr.4, i64 %108
  %109 = add i64 %nbytes.addr.5187, %and2
  %scevgep353 = getelementptr i8, i8* %call, i64 %109
  %scevgep354 = getelementptr i8, i8* %in_arg.addr.4, i64 %108
  %bound0355 = icmp ult i8* %add.ptr62, %scevgep353
  %bound1356 = icmp ult i8* %add.ptr, %scevgep352
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult i8* %add.ptr62, %scevgep354
  %bound1359 = icmp ult i8* %add.ptr63, %scevgep352
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  %bound0362 = icmp ult i8* %add.ptr, %scevgep354
  %bound1363 = icmp ult i8* %add.ptr63, %scevgep353
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  br i1 %conflict.rdx365, label %while.body93.preheader, label %vector.main.loop.iter.check373

vector.main.loop.iter.check373:                   ; preds = %vector.memcheck351
  %min.iters.check372 = icmp ult i64 %nbytes.addr.5187, 32
  br i1 %min.iters.check372, label %vec.epilog.ph395, label %vector.ph374

vector.ph374:                                     ; preds = %vector.main.loop.iter.check373
  %n.vec376 = and i64 %nbytes.addr.5187, -32
  %110 = add i64 %n.vec376, -32
  %111 = lshr exact i64 %110, 5
  %112 = add nuw nsw i64 %111, 1
  %xtraiter428 = and i64 %112, 1
  %113 = icmp eq i64 %110, 0
  br i1 %113, label %middle.block366.unr-lcssa, label %vector.ph374.new

vector.ph374.new:                                 ; preds = %vector.ph374
  %unroll_iter430 = and i64 %112, 1152921504606846974
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph374.new
  %index378 = phi i64 [ 0, %vector.ph374.new ], [ %index.next390.1, %vector.body368 ]
  %niter431 = phi i64 [ 0, %vector.ph374.new ], [ %niter431.next.1, %vector.body368 ]
  %next.gep379 = getelementptr i8, i8* %add.ptr, i64 %index378
  %next.gep381 = getelementptr i8, i8* %add.ptr62, i64 %index378
  %next.gep383 = getelementptr i8, i8* %add.ptr63, i64 %index378
  %114 = bitcast i8* %next.gep383 to <16 x i8>*
  %wide.load386 = load <16 x i8>, <16 x i8>* %114, align 1, !tbaa !16, !alias.scope !51
  %115 = getelementptr i8, i8* %next.gep383, i64 16
  %116 = bitcast i8* %115 to <16 x i8>*
  %wide.load387 = load <16 x i8>, <16 x i8>* %116, align 1, !tbaa !16, !alias.scope !51
  %117 = bitcast i8* %next.gep379 to <16 x i8>*
  %wide.load388 = load <16 x i8>, <16 x i8>* %117, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %118 = getelementptr i8, i8* %next.gep379, i64 16
  %119 = bitcast i8* %118 to <16 x i8>*
  %wide.load389 = load <16 x i8>, <16 x i8>* %119, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %120 = xor <16 x i8> %wide.load388, %wide.load386
  %121 = xor <16 x i8> %wide.load389, %wide.load387
  %122 = bitcast i8* %next.gep381 to <16 x i8>*
  store <16 x i8> %120, <16 x i8>* %122, align 1, !tbaa !16, !alias.scope !56, !noalias !58
  %123 = getelementptr i8, i8* %next.gep381, i64 16
  %124 = bitcast i8* %123 to <16 x i8>*
  store <16 x i8> %121, <16 x i8>* %124, align 1, !tbaa !16, !alias.scope !56, !noalias !58
  %125 = bitcast i8* %next.gep379 to <16 x i8>*
  store <16 x i8> %120, <16 x i8>* %125, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %126 = bitcast i8* %118 to <16 x i8>*
  store <16 x i8> %121, <16 x i8>* %126, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %index.next390 = or i64 %index378, 32
  %next.gep379.1 = getelementptr i8, i8* %add.ptr, i64 %index.next390
  %next.gep381.1 = getelementptr i8, i8* %add.ptr62, i64 %index.next390
  %next.gep383.1 = getelementptr i8, i8* %add.ptr63, i64 %index.next390
  %127 = bitcast i8* %next.gep383.1 to <16 x i8>*
  %wide.load386.1 = load <16 x i8>, <16 x i8>* %127, align 1, !tbaa !16, !alias.scope !51
  %128 = getelementptr i8, i8* %next.gep383.1, i64 16
  %129 = bitcast i8* %128 to <16 x i8>*
  %wide.load387.1 = load <16 x i8>, <16 x i8>* %129, align 1, !tbaa !16, !alias.scope !51
  %130 = bitcast i8* %next.gep379.1 to <16 x i8>*
  %wide.load388.1 = load <16 x i8>, <16 x i8>* %130, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %131 = getelementptr i8, i8* %next.gep379.1, i64 16
  %132 = bitcast i8* %131 to <16 x i8>*
  %wide.load389.1 = load <16 x i8>, <16 x i8>* %132, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %133 = xor <16 x i8> %wide.load388.1, %wide.load386.1
  %134 = xor <16 x i8> %wide.load389.1, %wide.load387.1
  %135 = bitcast i8* %next.gep381.1 to <16 x i8>*
  store <16 x i8> %133, <16 x i8>* %135, align 1, !tbaa !16, !alias.scope !56, !noalias !58
  %136 = getelementptr i8, i8* %next.gep381.1, i64 16
  %137 = bitcast i8* %136 to <16 x i8>*
  store <16 x i8> %134, <16 x i8>* %137, align 1, !tbaa !16, !alias.scope !56, !noalias !58
  %138 = bitcast i8* %next.gep379.1 to <16 x i8>*
  store <16 x i8> %133, <16 x i8>* %138, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %139 = bitcast i8* %131 to <16 x i8>*
  store <16 x i8> %134, <16 x i8>* %139, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %index.next390.1 = add nuw i64 %index378, 64
  %niter431.next.1 = add i64 %niter431, 2
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %middle.block366.unr-lcssa, label %vector.body368, !llvm.loop !59

middle.block366.unr-lcssa:                        ; preds = %vector.body368, %vector.ph374
  %index378.unr = phi i64 [ 0, %vector.ph374 ], [ %index.next390.1, %vector.body368 ]
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %middle.block366, label %vector.body368.epil

vector.body368.epil:                              ; preds = %middle.block366.unr-lcssa
  %next.gep379.epil = getelementptr i8, i8* %add.ptr, i64 %index378.unr
  %next.gep381.epil = getelementptr i8, i8* %add.ptr62, i64 %index378.unr
  %next.gep383.epil = getelementptr i8, i8* %add.ptr63, i64 %index378.unr
  %140 = bitcast i8* %next.gep383.epil to <16 x i8>*
  %wide.load386.epil = load <16 x i8>, <16 x i8>* %140, align 1, !tbaa !16, !alias.scope !51
  %141 = getelementptr i8, i8* %next.gep383.epil, i64 16
  %142 = bitcast i8* %141 to <16 x i8>*
  %wide.load387.epil = load <16 x i8>, <16 x i8>* %142, align 1, !tbaa !16, !alias.scope !51
  %143 = bitcast i8* %next.gep379.epil to <16 x i8>*
  %wide.load388.epil = load <16 x i8>, <16 x i8>* %143, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %144 = getelementptr i8, i8* %next.gep379.epil, i64 16
  %145 = bitcast i8* %144 to <16 x i8>*
  %wide.load389.epil = load <16 x i8>, <16 x i8>* %145, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %146 = xor <16 x i8> %wide.load388.epil, %wide.load386.epil
  %147 = xor <16 x i8> %wide.load389.epil, %wide.load387.epil
  %148 = bitcast i8* %next.gep381.epil to <16 x i8>*
  store <16 x i8> %146, <16 x i8>* %148, align 1, !tbaa !16, !alias.scope !56, !noalias !58
  %149 = getelementptr i8, i8* %next.gep381.epil, i64 16
  %150 = bitcast i8* %149 to <16 x i8>*
  store <16 x i8> %147, <16 x i8>* %150, align 1, !tbaa !16, !alias.scope !56, !noalias !58
  %151 = bitcast i8* %next.gep379.epil to <16 x i8>*
  store <16 x i8> %146, <16 x i8>* %151, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  %152 = bitcast i8* %144 to <16 x i8>*
  store <16 x i8> %147, <16 x i8>* %152, align 1, !tbaa !16, !alias.scope !54, !noalias !51
  br label %middle.block366

middle.block366:                                  ; preds = %middle.block366.unr-lcssa, %vector.body368.epil
  %cmp.n377 = icmp eq i64 %nbytes.addr.5187, %n.vec376
  br i1 %cmp.n377, label %if.end104, label %vec.epilog.iter.check394

vec.epilog.iter.check394:                         ; preds = %middle.block366
  %ind.end412 = and i64 %nbytes.addr.5187, 31
  %ind.end409 = getelementptr i8, i8* %add.ptr63, i64 %n.vec376
  %ind.end406 = getelementptr i8, i8* %add.ptr62, i64 %n.vec376
  %ind.end403 = getelementptr i8, i8* %add.ptr, i64 %n.vec376
  %n.vec.remaining396 = and i64 %nbytes.addr.5187, 24
  %min.epilog.iters.check397 = icmp eq i64 %n.vec.remaining396, 0
  br i1 %min.epilog.iters.check397, label %while.body93.preheader, label %vec.epilog.ph395

vec.epilog.ph395:                                 ; preds = %vector.main.loop.iter.check373, %vec.epilog.iter.check394
  %vec.epilog.resume.val398 = phi i64 [ %n.vec376, %vec.epilog.iter.check394 ], [ 0, %vector.main.loop.iter.check373 ]
  %n.vec400 = and i64 %nbytes.addr.5187, -8
  %ind.end402 = getelementptr i8, i8* %add.ptr, i64 %n.vec400
  %ind.end405 = getelementptr i8, i8* %add.ptr62, i64 %n.vec400
  %ind.end408 = getelementptr i8, i8* %add.ptr63, i64 %n.vec400
  %ind.end411 = and i64 %nbytes.addr.5187, 7
  br label %vec.epilog.vector.body393

vec.epilog.vector.body393:                        ; preds = %vec.epilog.vector.body393, %vec.epilog.ph395
  %index414 = phi i64 [ %vec.epilog.resume.val398, %vec.epilog.ph395 ], [ %index.next421, %vec.epilog.vector.body393 ]
  %next.gep415 = getelementptr i8, i8* %add.ptr, i64 %index414
  %next.gep416 = getelementptr i8, i8* %add.ptr62, i64 %index414
  %next.gep417 = getelementptr i8, i8* %add.ptr63, i64 %index414
  %153 = bitcast i8* %next.gep417 to <8 x i8>*
  %wide.load419 = load <8 x i8>, <8 x i8>* %153, align 1, !tbaa !16
  %154 = bitcast i8* %next.gep415 to <8 x i8>*
  %wide.load420 = load <8 x i8>, <8 x i8>* %154, align 1, !tbaa !16
  %155 = xor <8 x i8> %wide.load420, %wide.load419
  %156 = bitcast i8* %next.gep416 to <8 x i8>*
  store <8 x i8> %155, <8 x i8>* %156, align 1, !tbaa !16
  %157 = bitcast i8* %next.gep415 to <8 x i8>*
  store <8 x i8> %155, <8 x i8>* %157, align 1, !tbaa !16
  %index.next421 = add nuw i64 %index414, 8
  %158 = icmp eq i64 %index.next421, %n.vec400
  br i1 %158, label %vec.epilog.middle.block391, label %vec.epilog.vector.body393, !llvm.loop !60

vec.epilog.middle.block391:                       ; preds = %vec.epilog.vector.body393
  %cmp.n413 = icmp eq i64 %nbytes.addr.5187, %n.vec400
  br i1 %cmp.n413, label %if.end104, label %while.body93.preheader

while.body93.preheader:                           ; preds = %vector.memcheck351, %iter.check371, %vec.epilog.iter.check394, %vec.epilog.middle.block391
  %ivp59.1218.ph = phi i8* [ %add.ptr, %iter.check371 ], [ %add.ptr, %vector.memcheck351 ], [ %ind.end403, %vec.epilog.iter.check394 ], [ %ind.end402, %vec.epilog.middle.block391 ]
  %out_arg.addr.6217.ph = phi i8* [ %add.ptr62, %iter.check371 ], [ %add.ptr62, %vector.memcheck351 ], [ %ind.end406, %vec.epilog.iter.check394 ], [ %ind.end405, %vec.epilog.middle.block391 ]
  %in_arg.addr.6216.ph = phi i8* [ %add.ptr63, %iter.check371 ], [ %add.ptr63, %vector.memcheck351 ], [ %ind.end409, %vec.epilog.iter.check394 ], [ %ind.end408, %vec.epilog.middle.block391 ]
  %nbytes.addr.7215.ph = phi i64 [ %nbytes.addr.5187, %iter.check371 ], [ %nbytes.addr.5187, %vector.memcheck351 ], [ %ind.end412, %vec.epilog.iter.check394 ], [ %ind.end411, %vec.epilog.middle.block391 ]
  %159 = add i64 %nbytes.addr.7215.ph, -1
  %xtraiter432 = and i64 %nbytes.addr.7215.ph, 3
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %while.body93.prol.loopexit, label %while.body93.prol

while.body93.prol:                                ; preds = %while.body93.preheader, %while.body93.prol
  %ivp59.1218.prol = phi i8* [ %incdec.ptr100.prol, %while.body93.prol ], [ %ivp59.1218.ph, %while.body93.preheader ]
  %out_arg.addr.6217.prol = phi i8* [ %incdec.ptr99.prol, %while.body93.prol ], [ %out_arg.addr.6217.ph, %while.body93.preheader ]
  %in_arg.addr.6216.prol = phi i8* [ %incdec.ptr94.prol, %while.body93.prol ], [ %in_arg.addr.6216.ph, %while.body93.preheader ]
  %nbytes.addr.7215.prol = phi i64 [ %dec101.prol, %while.body93.prol ], [ %nbytes.addr.7215.ph, %while.body93.preheader ]
  %prol.iter434 = phi i64 [ %prol.iter434.next, %while.body93.prol ], [ 0, %while.body93.preheader ]
  %incdec.ptr94.prol = getelementptr inbounds i8, i8* %in_arg.addr.6216.prol, i64 1
  %160 = load i8, i8* %in_arg.addr.6216.prol, align 1, !tbaa !16
  %161 = load i8, i8* %ivp59.1218.prol, align 1, !tbaa !16
  %xor97178.prol = xor i8 %161, %160
  %incdec.ptr99.prol = getelementptr inbounds i8, i8* %out_arg.addr.6217.prol, i64 1
  store i8 %xor97178.prol, i8* %out_arg.addr.6217.prol, align 1, !tbaa !16
  store i8 %xor97178.prol, i8* %ivp59.1218.prol, align 1, !tbaa !16
  %incdec.ptr100.prol = getelementptr inbounds i8, i8* %ivp59.1218.prol, i64 1
  %dec101.prol = add i64 %nbytes.addr.7215.prol, -1
  %prol.iter434.next = add i64 %prol.iter434, 1
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %while.body93.prol.loopexit, label %while.body93.prol, !llvm.loop !61

while.body93.prol.loopexit:                       ; preds = %while.body93.prol, %while.body93.preheader
  %ivp59.1218.unr = phi i8* [ %ivp59.1218.ph, %while.body93.preheader ], [ %incdec.ptr100.prol, %while.body93.prol ]
  %out_arg.addr.6217.unr = phi i8* [ %out_arg.addr.6217.ph, %while.body93.preheader ], [ %incdec.ptr99.prol, %while.body93.prol ]
  %in_arg.addr.6216.unr = phi i8* [ %in_arg.addr.6216.ph, %while.body93.preheader ], [ %incdec.ptr94.prol, %while.body93.prol ]
  %nbytes.addr.7215.unr = phi i64 [ %nbytes.addr.7215.ph, %while.body93.preheader ], [ %dec101.prol, %while.body93.prol ]
  %162 = icmp ult i64 %159, 3
  br i1 %162, label %if.end104, label %while.body93

while.body93:                                     ; preds = %while.body93.prol.loopexit, %while.body93
  %ivp59.1218 = phi i8* [ %incdec.ptr100.3, %while.body93 ], [ %ivp59.1218.unr, %while.body93.prol.loopexit ]
  %out_arg.addr.6217 = phi i8* [ %incdec.ptr99.3, %while.body93 ], [ %out_arg.addr.6217.unr, %while.body93.prol.loopexit ]
  %in_arg.addr.6216 = phi i8* [ %incdec.ptr94.3, %while.body93 ], [ %in_arg.addr.6216.unr, %while.body93.prol.loopexit ]
  %nbytes.addr.7215 = phi i64 [ %dec101.3, %while.body93 ], [ %nbytes.addr.7215.unr, %while.body93.prol.loopexit ]
  %incdec.ptr94 = getelementptr inbounds i8, i8* %in_arg.addr.6216, i64 1
  %163 = load i8, i8* %in_arg.addr.6216, align 1, !tbaa !16
  %164 = load i8, i8* %ivp59.1218, align 1, !tbaa !16
  %xor97178 = xor i8 %164, %163
  %incdec.ptr99 = getelementptr inbounds i8, i8* %out_arg.addr.6217, i64 1
  store i8 %xor97178, i8* %out_arg.addr.6217, align 1, !tbaa !16
  store i8 %xor97178, i8* %ivp59.1218, align 1, !tbaa !16
  %incdec.ptr100 = getelementptr inbounds i8, i8* %ivp59.1218, i64 1
  %incdec.ptr94.1 = getelementptr inbounds i8, i8* %in_arg.addr.6216, i64 2
  %165 = load i8, i8* %incdec.ptr94, align 1, !tbaa !16
  %166 = load i8, i8* %incdec.ptr100, align 1, !tbaa !16
  %xor97178.1 = xor i8 %166, %165
  %incdec.ptr99.1 = getelementptr inbounds i8, i8* %out_arg.addr.6217, i64 2
  store i8 %xor97178.1, i8* %incdec.ptr99, align 1, !tbaa !16
  store i8 %xor97178.1, i8* %incdec.ptr100, align 1, !tbaa !16
  %incdec.ptr100.1 = getelementptr inbounds i8, i8* %ivp59.1218, i64 2
  %incdec.ptr94.2 = getelementptr inbounds i8, i8* %in_arg.addr.6216, i64 3
  %167 = load i8, i8* %incdec.ptr94.1, align 1, !tbaa !16
  %168 = load i8, i8* %incdec.ptr100.1, align 1, !tbaa !16
  %xor97178.2 = xor i8 %168, %167
  %incdec.ptr99.2 = getelementptr inbounds i8, i8* %out_arg.addr.6217, i64 3
  store i8 %xor97178.2, i8* %incdec.ptr99.1, align 1, !tbaa !16
  store i8 %xor97178.2, i8* %incdec.ptr100.1, align 1, !tbaa !16
  %incdec.ptr100.2 = getelementptr inbounds i8, i8* %ivp59.1218, i64 3
  %incdec.ptr94.3 = getelementptr inbounds i8, i8* %in_arg.addr.6216, i64 4
  %169 = load i8, i8* %incdec.ptr94.2, align 1, !tbaa !16
  %170 = load i8, i8* %incdec.ptr100.2, align 1, !tbaa !16
  %xor97178.3 = xor i8 %170, %169
  %incdec.ptr99.3 = getelementptr inbounds i8, i8* %out_arg.addr.6217, i64 4
  store i8 %xor97178.3, i8* %incdec.ptr99.2, align 1, !tbaa !16
  store i8 %xor97178.3, i8* %incdec.ptr100.2, align 1, !tbaa !16
  %incdec.ptr100.3 = getelementptr inbounds i8, i8* %ivp59.1218, i64 4
  %dec101.3 = add i64 %nbytes.addr.7215, -4
  %tobool92.not.3 = icmp eq i64 %dec101.3, 0
  br i1 %tobool92.not.3, label %if.end104, label %while.body93, !llvm.loop !62

if.end104:                                        ; preds = %while.body79.prol.loopexit, %while.body79, %while.body93.prol.loopexit, %while.body93, %middle.block305, %vec.epilog.middle.block, %middle.block366, %vec.epilog.middle.block391, %if.end56
  %call105 = tail call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call108 = tail call i8* @memcpy(i8* noundef %call105, i8* noundef %add.ptr, i64 noundef 16) #8
  br label %cleanup109

cleanup109:                                       ; preds = %if.then, %if.then50, %if.end41, %if.end104
  %retval.1 = phi i32 [ 1, %if.end104 ], [ 1, %if.end41 ], [ 0, %if.then50 ], [ 0, %if.then ]
  ret i32 %retval.1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @padlock_cfb_encrypt(i8* noundef, i8* noundef, %struct.padlock_cipher_data* noundef, i64 noundef) local_unnamed_addr #2

declare void @padlock_aes_block(i8* noundef, i8* noundef, %struct.padlock_cipher_data* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out_arg, i8* noundef %in_arg, i64 noundef %nbytes) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %0 = ptrtoint i8* %call1 to i64
  %sub = sub i64 0, %0
  %and2 = and i64 %sub, 15
  %add.ptr = getelementptr i8, i8* %call, i64 %and2
  %1 = bitcast i8* %add.ptr to %struct.padlock_cipher_data*
  %call3 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call3 to i64
  %call4 = tail call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %cmp = icmp ugt i32 %call3, 15
  br i1 %cmp, label %cleanup59, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then
  %cmp9110.not = icmp eq i64 %nbytes, 0
  br i1 %cmp9110.not, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = call i64 @llvm.usub.sat.i64(i64 15, i64 %conv)
  %3 = add i64 %nbytes, -1
  %4 = icmp ugt i32 %call3, 14
  %umin130 = call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %umin130.op = add nuw nsw i64 %umin130, 1
  %5 = select i1 %4, i64 1, i64 %umin130.op
  %min.iters.check = icmp ult i64 %5, 16
  br i1 %min.iters.check, label %while.body.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body.preheader
  %6 = call i64 @llvm.usub.sat.i64(i64 15, i64 %conv)
  %7 = add i64 %nbytes, -1
  %8 = icmp ugt i32 %call3, 14
  %umin = call i64 @llvm.umin.i64(i64 %7, i64 %6)
  %9 = select i1 %8, i64 0, i64 %umin
  %10 = add nuw nsw i64 %9, 1
  %scevgep = getelementptr i8, i8* %out_arg, i64 %10
  %scevgep123 = getelementptr i8, i8* %in_arg, i64 %10
  %scevgep124 = getelementptr i8, i8* %call4, i64 %conv
  %11 = add nsw i64 %9, %conv
  %12 = add nsw i64 %11, 1
  %scevgep125 = getelementptr i8, i8* %call4, i64 %12
  %bound0 = icmp ugt i8* %scevgep123, %out_arg
  %bound1 = icmp ugt i8* %scevgep, %in_arg
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ugt i8* %scevgep125, %out_arg
  %bound1127 = icmp ult i8* %scevgep124, %scevgep
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx = or i1 %found.conflict, %found.conflict128
  br i1 %conflict.rdx, label %while.body.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, 16
  %ind.end = add nsw i64 %n.vec, %conv
  %ind.end132 = getelementptr i8, i8* %out_arg, i64 %n.vec
  %ind.end134 = sub i64 %nbytes, %n.vec
  %ind.end136 = getelementptr i8, i8* %in_arg, i64 %n.vec
  %13 = bitcast i8* %in_arg to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %13, align 1, !tbaa !16, !alias.scope !63
  %14 = getelementptr inbounds i8, i8* %call4, i64 %conv
  %15 = bitcast i8* %14 to <16 x i8>*
  %wide.load139 = load <16 x i8>, <16 x i8>* %15, align 1, !tbaa !16, !alias.scope !66
  %16 = xor <16 x i8> %wide.load139, %wide.load
  %17 = bitcast i8* %out_arg to <16 x i8>*
  store <16 x i8> %16, <16 x i8>* %17, align 1, !tbaa !16, !alias.scope !68, !noalias !70
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %cleanup, label %while.body.preheader197

while.body.preheader197:                          ; preds = %vector.memcheck, %while.body.preheader, %vector.ph
  %chunk.0114.ph = phi i64 [ %conv, %vector.memcheck ], [ %conv, %while.body.preheader ], [ %ind.end, %vector.ph ]
  %out_arg.addr.0113.ph = phi i8* [ %out_arg, %vector.memcheck ], [ %out_arg, %while.body.preheader ], [ %ind.end132, %vector.ph ]
  %nbytes.addr.0112.ph = phi i64 [ %nbytes, %vector.memcheck ], [ %nbytes, %while.body.preheader ], [ %ind.end134, %vector.ph ]
  %in_arg.addr.0111.ph = phi i8* [ %in_arg, %vector.memcheck ], [ %in_arg, %while.body.preheader ], [ %ind.end136, %vector.ph ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader197, %while.body
  %chunk.0114 = phi i64 [ %inc, %while.body ], [ %chunk.0114.ph, %while.body.preheader197 ]
  %out_arg.addr.0113 = phi i8* [ %incdec.ptr14, %while.body ], [ %out_arg.addr.0113.ph, %while.body.preheader197 ]
  %nbytes.addr.0112 = phi i64 [ %dec, %while.body ], [ %nbytes.addr.0112.ph, %while.body.preheader197 ]
  %in_arg.addr.0111 = phi i8* [ %incdec.ptr, %while.body ], [ %in_arg.addr.0111.ph, %while.body.preheader197 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in_arg.addr.0111, i64 1
  %18 = load i8, i8* %in_arg.addr.0111, align 1, !tbaa !16
  %arrayidx = getelementptr inbounds i8, i8* %call4, i64 %chunk.0114
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %xor102 = xor i8 %19, %18
  %incdec.ptr14 = getelementptr inbounds i8, i8* %out_arg.addr.0113, i64 1
  store i8 %xor102, i8* %out_arg.addr.0113, align 1, !tbaa !16
  %inc = add nuw nsw i64 %chunk.0114, 1
  %dec = add i64 %nbytes.addr.0112, -1
  %cmp7 = icmp ult i64 %chunk.0114, 15
  %cmp9 = icmp ne i64 %dec, 0
  %20 = select i1 %cmp7, i1 %cmp9, i1 false
  br i1 %20, label %while.body, label %cleanup, !llvm.loop !71

cleanup:                                          ; preds = %while.body, %vector.ph, %while.cond.preheader
  %in_arg.addr.0.lcssa = phi i8* [ %in_arg, %while.cond.preheader ], [ %ind.end136, %vector.ph ], [ %incdec.ptr, %while.body ]
  %nbytes.addr.0.lcssa = phi i64 [ 0, %while.cond.preheader ], [ %ind.end134, %vector.ph ], [ %dec, %while.body ]
  %out_arg.addr.0.lcssa = phi i8* [ %out_arg, %while.cond.preheader ], [ %ind.end132, %vector.ph ], [ %incdec.ptr14, %while.body ]
  %chunk.0.lcssa = phi i64 [ %conv, %while.cond.preheader ], [ %ind.end, %vector.ph ], [ %inc, %while.body ]
  %21 = trunc i64 %chunk.0.lcssa to i32
  %conv15 = and i32 %21, 15
  %call16 = tail call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %conv15) #8
  br label %if.end17

if.end17:                                         ; preds = %cleanup, %entry
  %in_arg.addr.2 = phi i8* [ %in_arg.addr.0.lcssa, %cleanup ], [ %in_arg, %entry ]
  %nbytes.addr.2 = phi i64 [ %nbytes.addr.0.lcssa, %cleanup ], [ %nbytes, %entry ]
  %out_arg.addr.2 = phi i8* [ %out_arg.addr.0.lcssa, %cleanup ], [ %out_arg, %entry ]
  %cmp18 = icmp eq i64 %nbytes.addr.2, 0
  br i1 %cmp18, label %cleanup59, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i8* @EVP_CIPHER_CTX_iv(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call23 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %call22, i64 noundef 16) #8
  %and24 = and i64 %nbytes.addr.2, -16
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %iter.check, label %if.then26

if.then26:                                        ; preds = %if.end21
  %call27 = tail call i32 @padlock_ofb_encrypt(i8* noundef %out_arg.addr.2, i8* noundef %in_arg.addr.2, %struct.padlock_cipher_data* noundef %1, i64 noundef %and24) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup59, label %if.end32

if.end32:                                         ; preds = %if.then26
  %sub31 = and i64 %nbytes.addr.2, 15
  %tobool33.not = icmp eq i64 %sub31, 0
  br i1 %tobool33.not, label %if.end54, label %iter.check

iter.check:                                       ; preds = %if.end32, %if.end21
  %nbytes.addr.3108 = phi i64 [ %sub31, %if.end32 ], [ %nbytes.addr.2, %if.end21 ]
  %conv40 = trunc i64 %nbytes.addr.3108 to i32
  %call41 = tail call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %conv40) #8
  tail call void @padlock_reload_key() #8
  tail call void @padlock_aes_block(i8* noundef %add.ptr, i8* noundef %add.ptr, %struct.padlock_cipher_data* noundef %1) #8
  tail call void @padlock_reload_key() #8
  %add.ptr39 = getelementptr i8, i8* %in_arg.addr.2, i64 %and24
  %add.ptr38 = getelementptr i8, i8* %out_arg.addr.2, i64 %and24
  %min.iters.check154 = icmp ult i64 %nbytes.addr.3108, 8
  br i1 %min.iters.check154, label %while.body44.preheader, label %vector.memcheck140

vector.memcheck140:                               ; preds = %iter.check
  %22 = add i64 %nbytes.addr.3108, %and24
  %scevgep141 = getelementptr i8, i8* %out_arg.addr.2, i64 %22
  %scevgep142 = getelementptr i8, i8* %in_arg.addr.2, i64 %22
  %23 = add i64 %nbytes.addr.3108, %and2
  %scevgep143 = getelementptr i8, i8* %call, i64 %23
  %bound0144 = icmp ult i8* %add.ptr38, %scevgep142
  %bound1145 = icmp ult i8* %add.ptr39, %scevgep141
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0147 = icmp ult i8* %add.ptr38, %scevgep143
  %bound1148 = icmp ult i8* %add.ptr, %scevgep141
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict146, %found.conflict149
  br i1 %conflict.rdx150, label %while.body44.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck140
  %min.iters.check156 = icmp ult i64 %nbytes.addr.3108, 32
  br i1 %min.iters.check156, label %vec.epilog.ph, label %vector.ph157

vector.ph157:                                     ; preds = %vector.main.loop.iter.check
  %n.vec159 = and i64 %nbytes.addr.3108, -32
  %24 = add i64 %n.vec159, -32
  %25 = lshr exact i64 %24, 5
  %26 = add nuw nsw i64 %25, 1
  %xtraiter = and i64 %26, 1
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %middle.block151.unr-lcssa, label %vector.ph157.new

vector.ph157.new:                                 ; preds = %vector.ph157
  %unroll_iter = and i64 %26, 1152921504606846974
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph157.new
  %index161 = phi i64 [ 0, %vector.ph157.new ], [ %index.next173.1, %vector.body153 ]
  %niter = phi i64 [ 0, %vector.ph157.new ], [ %niter.next.1, %vector.body153 ]
  %next.gep162 = getelementptr i8, i8* %add.ptr, i64 %index161
  %next.gep164 = getelementptr i8, i8* %add.ptr38, i64 %index161
  %next.gep167 = getelementptr i8, i8* %add.ptr39, i64 %index161
  %28 = bitcast i8* %next.gep167 to <16 x i8>*
  %wide.load169 = load <16 x i8>, <16 x i8>* %28, align 1, !tbaa !16, !alias.scope !72
  %29 = getelementptr i8, i8* %next.gep167, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load170 = load <16 x i8>, <16 x i8>* %30, align 1, !tbaa !16, !alias.scope !72
  %31 = bitcast i8* %next.gep162 to <16 x i8>*
  %wide.load171 = load <16 x i8>, <16 x i8>* %31, align 1, !tbaa !16, !alias.scope !75
  %32 = getelementptr i8, i8* %next.gep162, i64 16
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load172 = load <16 x i8>, <16 x i8>* %33, align 1, !tbaa !16, !alias.scope !75
  %34 = xor <16 x i8> %wide.load171, %wide.load169
  %35 = xor <16 x i8> %wide.load172, %wide.load170
  %36 = bitcast i8* %next.gep164 to <16 x i8>*
  store <16 x i8> %34, <16 x i8>* %36, align 1, !tbaa !16, !alias.scope !77, !noalias !79
  %37 = getelementptr i8, i8* %next.gep164, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %35, <16 x i8>* %38, align 1, !tbaa !16, !alias.scope !77, !noalias !79
  %index.next173 = or i64 %index161, 32
  %next.gep162.1 = getelementptr i8, i8* %add.ptr, i64 %index.next173
  %next.gep164.1 = getelementptr i8, i8* %add.ptr38, i64 %index.next173
  %next.gep167.1 = getelementptr i8, i8* %add.ptr39, i64 %index.next173
  %39 = bitcast i8* %next.gep167.1 to <16 x i8>*
  %wide.load169.1 = load <16 x i8>, <16 x i8>* %39, align 1, !tbaa !16, !alias.scope !72
  %40 = getelementptr i8, i8* %next.gep167.1, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load170.1 = load <16 x i8>, <16 x i8>* %41, align 1, !tbaa !16, !alias.scope !72
  %42 = bitcast i8* %next.gep162.1 to <16 x i8>*
  %wide.load171.1 = load <16 x i8>, <16 x i8>* %42, align 1, !tbaa !16, !alias.scope !75
  %43 = getelementptr i8, i8* %next.gep162.1, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  %wide.load172.1 = load <16 x i8>, <16 x i8>* %44, align 1, !tbaa !16, !alias.scope !75
  %45 = xor <16 x i8> %wide.load171.1, %wide.load169.1
  %46 = xor <16 x i8> %wide.load172.1, %wide.load170.1
  %47 = bitcast i8* %next.gep164.1 to <16 x i8>*
  store <16 x i8> %45, <16 x i8>* %47, align 1, !tbaa !16, !alias.scope !77, !noalias !79
  %48 = getelementptr i8, i8* %next.gep164.1, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  store <16 x i8> %46, <16 x i8>* %49, align 1, !tbaa !16, !alias.scope !77, !noalias !79
  %index.next173.1 = add nuw i64 %index161, 64
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block151.unr-lcssa, label %vector.body153, !llvm.loop !80

middle.block151.unr-lcssa:                        ; preds = %vector.body153, %vector.ph157
  %index161.unr = phi i64 [ 0, %vector.ph157 ], [ %index.next173.1, %vector.body153 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block151, label %vector.body153.epil

vector.body153.epil:                              ; preds = %middle.block151.unr-lcssa
  %next.gep162.epil = getelementptr i8, i8* %add.ptr, i64 %index161.unr
  %next.gep164.epil = getelementptr i8, i8* %add.ptr38, i64 %index161.unr
  %next.gep167.epil = getelementptr i8, i8* %add.ptr39, i64 %index161.unr
  %50 = bitcast i8* %next.gep167.epil to <16 x i8>*
  %wide.load169.epil = load <16 x i8>, <16 x i8>* %50, align 1, !tbaa !16, !alias.scope !72
  %51 = getelementptr i8, i8* %next.gep167.epil, i64 16
  %52 = bitcast i8* %51 to <16 x i8>*
  %wide.load170.epil = load <16 x i8>, <16 x i8>* %52, align 1, !tbaa !16, !alias.scope !72
  %53 = bitcast i8* %next.gep162.epil to <16 x i8>*
  %wide.load171.epil = load <16 x i8>, <16 x i8>* %53, align 1, !tbaa !16, !alias.scope !75
  %54 = getelementptr i8, i8* %next.gep162.epil, i64 16
  %55 = bitcast i8* %54 to <16 x i8>*
  %wide.load172.epil = load <16 x i8>, <16 x i8>* %55, align 1, !tbaa !16, !alias.scope !75
  %56 = xor <16 x i8> %wide.load171.epil, %wide.load169.epil
  %57 = xor <16 x i8> %wide.load172.epil, %wide.load170.epil
  %58 = bitcast i8* %next.gep164.epil to <16 x i8>*
  store <16 x i8> %56, <16 x i8>* %58, align 1, !tbaa !16, !alias.scope !77, !noalias !79
  %59 = getelementptr i8, i8* %next.gep164.epil, i64 16
  %60 = bitcast i8* %59 to <16 x i8>*
  store <16 x i8> %57, <16 x i8>* %60, align 1, !tbaa !16, !alias.scope !77, !noalias !79
  br label %middle.block151

middle.block151:                                  ; preds = %middle.block151.unr-lcssa, %vector.body153.epil
  %cmp.n160 = icmp eq i64 %nbytes.addr.3108, %n.vec159
  br i1 %cmp.n160, label %if.end54, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block151
  %ind.end187 = getelementptr i8, i8* %add.ptr39, i64 %n.vec159
  %ind.end184 = and i64 %nbytes.addr.3108, 31
  %ind.end181 = getelementptr i8, i8* %add.ptr38, i64 %n.vec159
  %ind.end178 = getelementptr i8, i8* %add.ptr, i64 %n.vec159
  %n.vec.remaining = and i64 %nbytes.addr.3108, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %while.body44.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec159, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %nbytes.addr.3108, -8
  %ind.end177 = getelementptr i8, i8* %add.ptr, i64 %n.vec175
  %ind.end180 = getelementptr i8, i8* %add.ptr38, i64 %n.vec175
  %ind.end183 = and i64 %nbytes.addr.3108, 7
  %ind.end186 = getelementptr i8, i8* %add.ptr39, i64 %n.vec175
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next196, %vec.epilog.vector.body ]
  %next.gep190 = getelementptr i8, i8* %add.ptr, i64 %index189
  %next.gep191 = getelementptr i8, i8* %add.ptr38, i64 %index189
  %next.gep193 = getelementptr i8, i8* %add.ptr39, i64 %index189
  %61 = bitcast i8* %next.gep193 to <8 x i8>*
  %wide.load194 = load <8 x i8>, <8 x i8>* %61, align 1, !tbaa !16
  %62 = bitcast i8* %next.gep190 to <8 x i8>*
  %wide.load195 = load <8 x i8>, <8 x i8>* %62, align 1, !tbaa !16
  %63 = xor <8 x i8> %wide.load195, %wide.load194
  %64 = bitcast i8* %next.gep191 to <8 x i8>*
  store <8 x i8> %63, <8 x i8>* %64, align 1, !tbaa !16
  %index.next196 = add nuw i64 %index189, 8
  %65 = icmp eq i64 %index.next196, %n.vec175
  br i1 %65, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n188 = icmp eq i64 %nbytes.addr.3108, %n.vec175
  br i1 %cmp.n188, label %if.end54, label %while.body44.preheader

while.body44.preheader:                           ; preds = %vector.memcheck140, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %ivp35.0122.ph = phi i8* [ %add.ptr, %iter.check ], [ %add.ptr, %vector.memcheck140 ], [ %ind.end178, %vec.epilog.iter.check ], [ %ind.end177, %vec.epilog.middle.block ]
  %out_arg.addr.3121.ph = phi i8* [ %add.ptr38, %iter.check ], [ %add.ptr38, %vector.memcheck140 ], [ %ind.end181, %vec.epilog.iter.check ], [ %ind.end180, %vec.epilog.middle.block ]
  %nbytes.addr.4120.ph = phi i64 [ %nbytes.addr.3108, %iter.check ], [ %nbytes.addr.3108, %vector.memcheck140 ], [ %ind.end184, %vec.epilog.iter.check ], [ %ind.end183, %vec.epilog.middle.block ]
  %in_arg.addr.3119.ph = phi i8* [ %add.ptr39, %iter.check ], [ %add.ptr39, %vector.memcheck140 ], [ %ind.end187, %vec.epilog.iter.check ], [ %ind.end186, %vec.epilog.middle.block ]
  %66 = add i64 %nbytes.addr.4120.ph, -1
  %xtraiter198 = and i64 %nbytes.addr.4120.ph, 3
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %while.body44.prol.loopexit, label %while.body44.prol

while.body44.prol:                                ; preds = %while.body44.preheader, %while.body44.prol
  %ivp35.0122.prol = phi i8* [ %incdec.ptr51.prol, %while.body44.prol ], [ %ivp35.0122.ph, %while.body44.preheader ]
  %out_arg.addr.3121.prol = phi i8* [ %incdec.ptr50.prol, %while.body44.prol ], [ %out_arg.addr.3121.ph, %while.body44.preheader ]
  %nbytes.addr.4120.prol = phi i64 [ %dec52.prol, %while.body44.prol ], [ %nbytes.addr.4120.ph, %while.body44.preheader ]
  %in_arg.addr.3119.prol = phi i8* [ %incdec.ptr45.prol, %while.body44.prol ], [ %in_arg.addr.3119.ph, %while.body44.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body44.prol ], [ 0, %while.body44.preheader ]
  %incdec.ptr45.prol = getelementptr inbounds i8, i8* %in_arg.addr.3119.prol, i64 1
  %67 = load i8, i8* %in_arg.addr.3119.prol, align 1, !tbaa !16
  %68 = load i8, i8* %ivp35.0122.prol, align 1, !tbaa !16
  %xor48101.prol = xor i8 %68, %67
  %incdec.ptr50.prol = getelementptr inbounds i8, i8* %out_arg.addr.3121.prol, i64 1
  store i8 %xor48101.prol, i8* %out_arg.addr.3121.prol, align 1, !tbaa !16
  %incdec.ptr51.prol = getelementptr inbounds i8, i8* %ivp35.0122.prol, i64 1
  %dec52.prol = add i64 %nbytes.addr.4120.prol, -1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter198
  br i1 %prol.iter.cmp.not, label %while.body44.prol.loopexit, label %while.body44.prol, !llvm.loop !82

while.body44.prol.loopexit:                       ; preds = %while.body44.prol, %while.body44.preheader
  %ivp35.0122.unr = phi i8* [ %ivp35.0122.ph, %while.body44.preheader ], [ %incdec.ptr51.prol, %while.body44.prol ]
  %out_arg.addr.3121.unr = phi i8* [ %out_arg.addr.3121.ph, %while.body44.preheader ], [ %incdec.ptr50.prol, %while.body44.prol ]
  %nbytes.addr.4120.unr = phi i64 [ %nbytes.addr.4120.ph, %while.body44.preheader ], [ %dec52.prol, %while.body44.prol ]
  %in_arg.addr.3119.unr = phi i8* [ %in_arg.addr.3119.ph, %while.body44.preheader ], [ %incdec.ptr45.prol, %while.body44.prol ]
  %69 = icmp ult i64 %66, 3
  br i1 %69, label %if.end54, label %while.body44

while.body44:                                     ; preds = %while.body44.prol.loopexit, %while.body44
  %ivp35.0122 = phi i8* [ %incdec.ptr51.3, %while.body44 ], [ %ivp35.0122.unr, %while.body44.prol.loopexit ]
  %out_arg.addr.3121 = phi i8* [ %incdec.ptr50.3, %while.body44 ], [ %out_arg.addr.3121.unr, %while.body44.prol.loopexit ]
  %nbytes.addr.4120 = phi i64 [ %dec52.3, %while.body44 ], [ %nbytes.addr.4120.unr, %while.body44.prol.loopexit ]
  %in_arg.addr.3119 = phi i8* [ %incdec.ptr45.3, %while.body44 ], [ %in_arg.addr.3119.unr, %while.body44.prol.loopexit ]
  %incdec.ptr45 = getelementptr inbounds i8, i8* %in_arg.addr.3119, i64 1
  %70 = load i8, i8* %in_arg.addr.3119, align 1, !tbaa !16
  %71 = load i8, i8* %ivp35.0122, align 1, !tbaa !16
  %xor48101 = xor i8 %71, %70
  %incdec.ptr50 = getelementptr inbounds i8, i8* %out_arg.addr.3121, i64 1
  store i8 %xor48101, i8* %out_arg.addr.3121, align 1, !tbaa !16
  %incdec.ptr51 = getelementptr inbounds i8, i8* %ivp35.0122, i64 1
  %incdec.ptr45.1 = getelementptr inbounds i8, i8* %in_arg.addr.3119, i64 2
  %72 = load i8, i8* %incdec.ptr45, align 1, !tbaa !16
  %73 = load i8, i8* %incdec.ptr51, align 1, !tbaa !16
  %xor48101.1 = xor i8 %73, %72
  %incdec.ptr50.1 = getelementptr inbounds i8, i8* %out_arg.addr.3121, i64 2
  store i8 %xor48101.1, i8* %incdec.ptr50, align 1, !tbaa !16
  %incdec.ptr51.1 = getelementptr inbounds i8, i8* %ivp35.0122, i64 2
  %incdec.ptr45.2 = getelementptr inbounds i8, i8* %in_arg.addr.3119, i64 3
  %74 = load i8, i8* %incdec.ptr45.1, align 1, !tbaa !16
  %75 = load i8, i8* %incdec.ptr51.1, align 1, !tbaa !16
  %xor48101.2 = xor i8 %75, %74
  %incdec.ptr50.2 = getelementptr inbounds i8, i8* %out_arg.addr.3121, i64 3
  store i8 %xor48101.2, i8* %incdec.ptr50.1, align 1, !tbaa !16
  %incdec.ptr51.2 = getelementptr inbounds i8, i8* %ivp35.0122, i64 3
  %incdec.ptr45.3 = getelementptr inbounds i8, i8* %in_arg.addr.3119, i64 4
  %76 = load i8, i8* %incdec.ptr45.2, align 1, !tbaa !16
  %77 = load i8, i8* %incdec.ptr51.2, align 1, !tbaa !16
  %xor48101.3 = xor i8 %77, %76
  %incdec.ptr50.3 = getelementptr inbounds i8, i8* %out_arg.addr.3121, i64 4
  store i8 %xor48101.3, i8* %incdec.ptr50.2, align 1, !tbaa !16
  %incdec.ptr51.3 = getelementptr inbounds i8, i8* %ivp35.0122, i64 4
  %dec52.3 = add i64 %nbytes.addr.4120, -4
  %tobool43.not.3 = icmp eq i64 %dec52.3, 0
  br i1 %tobool43.not.3, label %if.end54, label %while.body44, !llvm.loop !83

if.end54:                                         ; preds = %while.body44.prol.loopexit, %while.body44, %middle.block151, %vec.epilog.middle.block, %if.end32
  %call55 = tail call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call58 = tail call i8* @memcpy(i8* noundef %call55, i8* noundef %add.ptr, i64 noundef 16) #8
  br label %cleanup59

cleanup59:                                        ; preds = %if.then, %if.then26, %if.end17, %if.end54
  %retval.1 = phi i32 [ 1, %if.end54 ], [ 1, %if.end17 ], [ 0, %if.then26 ], [ 0, %if.then ]
  ret i32 %retval.1
}

declare i32 @padlock_ofb_encrypt(i8* noundef, i8* noundef, %struct.padlock_cipher_data* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_ctr_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out_arg, i8* noundef %in_arg, i64 noundef %nbytes) #1 {
entry:
  %num = alloca i32, align 4
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call1 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call3 = tail call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = ptrtoint i8* %call1 to i64
  %sub = sub i64 0, %1
  %and2 = and i64 %sub, 15
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %and2
  store i32 %call3, i32* %num, align 4, !tbaa !13
  %call4 = tail call i8* @EVP_CIPHER_CTX_iv_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  %call5 = tail call i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef %ctx) #8
  call void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef %in_arg, i8* noundef %out_arg, i64 noundef %nbytes, i8* noundef %add.ptr, i8* noundef %call4, i8* noundef %call5, i32* noundef nonnull %num, void (i8*, i8*, i64, i8*, i8*)* noundef bitcast (void (i8*, i8*, i64, %struct.padlock_cipher_data*, i8*)* @padlock_ctr32_encrypt_glue to void (i8*, i8*, i64, i8*, i8*)*)) #8
  %2 = load i32, i32* %num, align 4, !tbaa !13
  %call7 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare void @CRYPTO_ctr128_encrypt_ctr32(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, i8* noundef, i32* noundef, void (i8*, i8*, i64, i8*, i8*)* noundef) local_unnamed_addr #2

declare i8* @EVP_CIPHER_CTX_buf_noconst(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @padlock_ctr32_encrypt_glue(i8* noundef %in, i8* noundef %out, i64 noundef %blocks, %struct.padlock_cipher_data* noundef %ctx, i8* noundef %ivec) #1 {
entry:
  %arraydecay = getelementptr inbounds %struct.padlock_cipher_data, %struct.padlock_cipher_data* %ctx, i64 0, i32 0, i64 0
  %call = tail call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %ivec, i64 noundef 16) #8
  %mul = shl i64 %blocks, 4
  %call1 = tail call i32 @padlock_ctr32_encrypt(i8* noundef %out, i8* noundef %in, %struct.padlock_cipher_data* noundef %ctx, i64 noundef %mul) #8
  ret void
}

declare i32 @padlock_ctr32_encrypt(i8* noundef, i8* noundef, %struct.padlock_cipher_data* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @padlock_rand_bytes(i8* noundef %output, i32 noundef %count) #1 {
entry:
  %buf = alloca i32, align 4
  %0 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %cmp52 = icmp sgt i32 %count, 7
  br i1 %cmp52, label %while.cond.outer.split, label %while.cond13.preheader

while.cond.outer.split:                           ; preds = %entry, %if.end12
  %count.addr.0.ph54 = phi i32 [ %sub, %if.end12 ], [ %count, %entry ]
  %output.addr.0.ph53 = phi i8* [ %add.ptr, %if.end12 ], [ %output, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer.split, %if.end4
  %call = tail call i32 @padlock_xstore(i8* noundef %output.addr.0.ph53, i32 noundef 0) #8
  %1 = and i32 %call, 31808
  %2 = icmp eq i32 %1, 64
  br i1 %2, label %if.end4, label %cleanup

while.cond13.preheader:                           ; preds = %if.end12, %entry
  %output.addr.0.ph.lcssa51 = phi i8* [ %output, %entry ], [ %add.ptr, %if.end12 ]
  %count.addr.0.ph.lcssa50 = phi i32 [ %count, %entry ], [ %sub, %if.end12 ]
  %cmp1456 = icmp sgt i32 %count.addr.0.ph.lcssa50, 0
  br i1 %cmp1456, label %while.cond13.outer.split, label %while.end33

if.end4:                                          ; preds = %while.cond
  %and5 = and i32 %call, 31
  switch i32 %and5, label %cleanup [
    i32 0, label %while.cond
    i32 8, label %if.end12
  ]

if.end12:                                         ; preds = %if.end4
  %add.ptr = getelementptr inbounds i8, i8* %output.addr.0.ph53, i64 8
  %sub = add nsw i32 %count.addr.0.ph54, -8
  %cmp = icmp sgt i32 %count.addr.0.ph54, 15
  br i1 %cmp, label %while.cond.outer.split, label %while.cond13.preheader, !llvm.loop !84

while.cond13:                                     ; preds = %while.cond13.outer.split, %if.end24
  %call16 = call i32 @padlock_xstore(i8* noundef nonnull %0, i32 noundef 3) #8
  %3 = and i32 %call16, 31808
  %4 = icmp eq i32 %3, 64
  br i1 %4, label %if.end24, label %cleanup

if.end24:                                         ; preds = %while.cond13
  %and25 = and i32 %call16, 31
  switch i32 %and25, label %cleanup [
    i32 0, label %while.cond13
    i32 1, label %if.end32
  ]

if.end32:                                         ; preds = %if.end24
  %5 = load i32, i32* %buf, align 4, !tbaa !13
  %conv = trunc i32 %5 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %output.addr.1.ph57, i64 1
  store i8 %conv, i8* %output.addr.1.ph57, align 1, !tbaa !16
  %dec = add nsw i32 %count.addr.1.ph58, -1
  %cmp14 = icmp sgt i32 %count.addr.1.ph58, 1
  br i1 %cmp14, label %while.cond13.outer.split, label %while.end33, !llvm.loop !85

while.cond13.outer.split:                         ; preds = %while.cond13.preheader, %if.end32
  %count.addr.1.ph58 = phi i32 [ %dec, %if.end32 ], [ %count.addr.0.ph.lcssa50, %while.cond13.preheader ]
  %output.addr.1.ph57 = phi i8* [ %incdec.ptr, %if.end32 ], [ %output.addr.0.ph.lcssa51, %while.cond13.preheader ]
  br label %while.cond13

while.end33:                                      ; preds = %if.end32, %while.cond13.preheader
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %while.cond, %if.end24, %while.cond13, %while.end33
  %retval.0 = phi i32 [ 1, %while.end33 ], [ 0, %while.cond13 ], [ 0, %if.end24 ], [ 0, %while.cond ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @padlock_rand_status() #0 {
entry:
  ret i32 1
}

declare i32 @padlock_xstore(i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = !{!23}
!23 = distinct !{!23, !19}
!24 = !{!21, !18}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31}
!31 = distinct !{!31, !27}
!32 = !{!29, !26}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = distinct !{!36, !34, !35}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43}
!43 = distinct !{!43, !39}
!44 = !{!41, !38}
!45 = distinct !{!45, !34, !35}
!46 = distinct !{!46, !34, !35, !47}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !34, !35}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = !{!57}
!57 = distinct !{!57, !53}
!58 = !{!55, !52}
!59 = distinct !{!59, !34, !35}
!60 = distinct !{!60, !34, !35, !47}
!61 = distinct !{!61, !49}
!62 = distinct !{!62, !34, !35}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = !{!69}
!69 = distinct !{!69, !65}
!70 = !{!64, !67}
!71 = distinct !{!71, !34, !35}
!72 = !{!73}
!73 = distinct !{!73, !74}
!74 = distinct !{!74, !"LVerDomain"}
!75 = !{!76}
!76 = distinct !{!76, !74}
!77 = !{!78}
!78 = distinct !{!78, !74}
!79 = !{!73, !76}
!80 = distinct !{!80, !34, !35}
!81 = distinct !{!81, !34, !35, !47}
!82 = distinct !{!82, !49}
!83 = distinct !{!83, !34, !35}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, !34}
