; ModuleID = 'crypto/engine/eng_lib.c'
source_filename = "crypto/engine/eng_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_ENGINE_CLEANUP_ITEM = type opaque
%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.st_engine_cleanup_item = type { void ()* }
%struct.stack_st = type opaque

@engine_lock_init = global i32 0, align 4
@do_engine_lock_init_ossl_ret_ = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"crypto/engine/eng_lib.c\00", align 1
@__func__.ENGINE_new = private unnamed_addr constant [11 x i8] c"ENGINE_new\00", align 1
@global_engine_lock = local_unnamed_addr global i8* null, align 8
@cleanup_stack = internal unnamed_addr global %struct.stack_st_ENGINE_CLEANUP_ITEM* null, align 8
@__func__.ENGINE_set_id = private unnamed_addr constant [14 x i8] c"ENGINE_set_id\00", align 1
@__func__.ENGINE_set_name = private unnamed_addr constant [16 x i8] c"ENGINE_set_name\00", align 1
@internal_static_hack = internal global i32 0, align 4
@__func__.int_cleanup_item = private unnamed_addr constant [17 x i8] c"int_cleanup_item\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @do_engine_lock_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @do_engine_lock_init() #7
  store i32 %call, i32* @do_engine_lock_init_ossl_ret_, align 4, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_engine_lock_init() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #8
  store i8* %call, i8** @global_engine_lock, align 8, !tbaa !8
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_new() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_lock_init, void ()* noundef nonnull @do_engine_lock_init_ossl_) #8
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @do_engine_lock_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i8* @CRYPTO_zalloc(i64 noundef 200, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 32) #8
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %lor.lhs.false
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ENGINE_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = bitcast i8* %call2 to %struct.engine_st*
  %struct_ref = getelementptr inbounds i8, i8* %call2, i64 156
  %2 = bitcast i8* %struct_ref to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !10
  %ex_data = getelementptr inbounds i8, i8* %call2, i64 168
  %3 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call3 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 10, i8* noundef nonnull %call2, %struct.crypto_ex_data_st* noundef nonnull %3) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then
  %retval.0 = phi %struct.engine_st* [ null, %if.then ], [ null, %if.then5 ], [ %1, %if.end ]
  ret %struct.engine_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @engine_set_all_null(%struct.engine_st* nocapture noundef writeonly %e) local_unnamed_addr #3 {
entry:
  %0 = bitcast %struct.engine_st* %e to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %0, align 8, !tbaa !8
  %rsa_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 2
  store %struct.rsa_meth_st* null, %struct.rsa_meth_st** %rsa_meth, align 8, !tbaa !13
  %dsa_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 3
  store %struct.dsa_method* null, %struct.dsa_method** %dsa_meth, align 8, !tbaa !14
  %dh_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 4
  store %struct.dh_method* null, %struct.dh_method** %dh_meth, align 8, !tbaa !15
  %rand_meth = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 6
  store %struct.rand_meth_st* null, %struct.rand_meth_st** %rand_meth, align 8, !tbaa !16
  %ciphers = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 7
  store i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* null, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)** %ciphers, align 8, !tbaa !17
  %digests = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 8
  store i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* null, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)** %digests, align 8, !tbaa !18
  %destroy = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 11
  %1 = bitcast i32 (%struct.engine_st*)** %destroy to <2 x i32 (%struct.engine_st*)*>*
  store <2 x i32 (%struct.engine_st*)*> zeroinitializer, <2 x i32 (%struct.engine_st*)*>* %1, align 8, !tbaa !8
  %finish = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 13
  store i32 (%struct.engine_st*)* null, i32 (%struct.engine_st*)** %finish, align 8, !tbaa !19
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 14
  store i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* null, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl, align 8, !tbaa !20
  %load_privkey = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 15
  %2 = bitcast %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)** %load_privkey to <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>*
  store <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*> zeroinitializer, <2 x %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*>* %2, align 8, !tbaa !8
  %cmd_defns = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 18
  store %struct.ENGINE_CMD_DEFN_st* null, %struct.ENGINE_CMD_DEFN_st** %cmd_defns, align 8, !tbaa !21
  %flags = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 19
  store i32 0, i32* %flags, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @engine_free_util(%struct.engine_st* noundef %e, i32 noundef %not_locked) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %cmp = icmp eq %struct.engine_st* %e, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %not_locked, 0
  %struct_ref2 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 20
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %struct_ref2, i32* noundef nonnull %i) #7
  %.pr = load i32, i32* %i, align 4, !tbaa !4
  br label %if.end3

if.else:                                          ; preds = %if.end
  %1 = atomicrmw sub i32* %struct_ref2, i32 1 seq_cst, align 4
  %2 = add i32 %1, -1
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %3 = phi i32 [ %2, %if.else ], [ %.pr, %if.then1 ]
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  tail call void @engine_pkey_meths_free(%struct.engine_st* noundef nonnull %e) #8
  tail call void @engine_pkey_asn1_meths_free(%struct.engine_st* noundef nonnull %e) #8
  %destroy = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 11
  %4 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %destroy, align 8, !tbaa !23
  %tobool7.not = icmp eq i32 (%struct.engine_st*)* %4, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call10 = tail call i32 %4(%struct.engine_st* noundef nonnull %e) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6
  %5 = bitcast %struct.engine_st* %e to i8*
  %ex_data = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 22
  tail call void @CRYPTO_free_ex_data(i32 noundef 10, i8* noundef nonnull %5, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 94) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %if.end11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #4 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !4
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @engine_pkey_meths_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare void @engine_pkey_asn1_meths_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_free(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @engine_free_util(%struct.engine_st* noundef %e, i32 noundef 1) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @engine_cleanup_add_first(void ()* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_cleanup_check(i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.st_engine_cleanup_item* @int_cleanup_item(void ()* noundef %cb) #7
  %tobool2.not = icmp eq %struct.st_engine_cleanup_item* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %0 = load %struct.stack_st_ENGINE_CLEANUP_ITEM*, %struct.stack_st_ENGINE_CLEANUP_ITEM** @cleanup_stack, align 8, !tbaa !8
  tail call fastcc void @sk_ENGINE_CLEANUP_ITEM_insert(%struct.stack_st_ENGINE_CLEANUP_ITEM* noundef %0, %struct.st_engine_cleanup_item* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_cleanup_check(i32 noundef %create) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_ENGINE_CLEANUP_ITEM*, %struct.stack_st_ENGINE_CLEANUP_ITEM** @cleanup_stack, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.stack_st_ENGINE_CLEANUP_ITEM* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %create, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc %struct.stack_st_ENGINE_CLEANUP_ITEM* @sk_ENGINE_CLEANUP_ITEM_new_null() #7
  store %struct.stack_st_ENGINE_CLEANUP_ITEM* %call, %struct.stack_st_ENGINE_CLEANUP_ITEM** @cleanup_stack, align 8, !tbaa !8
  %tobool4.not = icmp ne %struct.stack_st_ENGINE_CLEANUP_ITEM* %call, null
  %cond = zext i1 %tobool4.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %cond, %if.end3 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.st_engine_cleanup_item* @int_cleanup_item(void ()* noundef %cb) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 8, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 126) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.int_cleanup_item, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.st_engine_cleanup_item*
  %cb1 = bitcast i8* %call to void ()**
  store void ()* %cb, void ()** %cb1, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.st_engine_cleanup_item* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.st_engine_cleanup_item* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ENGINE_CLEANUP_ITEM_insert(%struct.stack_st_ENGINE_CLEANUP_ITEM* noundef %sk, %struct.st_engine_cleanup_item* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE_CLEANUP_ITEM* %sk to %struct.stack_st*
  %1 = bitcast %struct.st_engine_cleanup_item* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %0, i8* noundef %1, i32 noundef 0) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @engine_cleanup_add_last(void ()* noundef %cb) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_cleanup_check(i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.st_engine_cleanup_item* @int_cleanup_item(void ()* noundef %cb) #7
  %cmp.not = icmp eq %struct.st_engine_cleanup_item* %call1, null
  br i1 %cmp.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = load %struct.stack_st_ENGINE_CLEANUP_ITEM*, %struct.stack_st_ENGINE_CLEANUP_ITEM** @cleanup_stack, align 8, !tbaa !8
  %call3 = tail call fastcc i32 @sk_ENGINE_CLEANUP_ITEM_push(%struct.stack_st_ENGINE_CLEANUP_ITEM* noundef %0, %struct.st_engine_cleanup_item* noundef nonnull %call1) #7
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.then2
  %1 = bitcast %struct.st_engine_cleanup_item* %call1 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then2, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_ENGINE_CLEANUP_ITEM_push(%struct.stack_st_ENGINE_CLEANUP_ITEM* noundef %sk, %struct.st_engine_cleanup_item* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE_CLEANUP_ITEM* %sk to %struct.stack_st*
  %1 = bitcast %struct.st_engine_cleanup_item* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @engine_cleanup_int() local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @int_cleanup_check(i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.stack_st_ENGINE_CLEANUP_ITEM*, %struct.stack_st_ENGINE_CLEANUP_ITEM** @cleanup_stack, align 8, !tbaa !8
  tail call fastcc void @sk_ENGINE_CLEANUP_ITEM_pop_free(%struct.stack_st_ENGINE_CLEANUP_ITEM* noundef %0) #7
  store %struct.stack_st_ENGINE_CLEANUP_ITEM* null, %struct.stack_st_ENGINE_CLEANUP_ITEM** @cleanup_stack, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %1) #8
  store i8* null, i8** @global_engine_lock, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ENGINE_CLEANUP_ITEM_pop_free(%struct.stack_st_ENGINE_CLEANUP_ITEM* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE_CLEANUP_ITEM* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.st_engine_cleanup_item*)* @engine_cleanup_cb_free to void (i8*)*)) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @engine_cleanup_cb_free(%struct.st_engine_cleanup_item* noundef %item) #0 {
entry:
  %cb = getelementptr inbounds %struct.st_engine_cleanup_item, %struct.st_engine_cleanup_item* %item, i64 0, i32 0
  %0 = load void ()*, void ()** %cb, align 8, !tbaa !24
  tail call void %0() #8
  %1 = bitcast %struct.st_engine_cleanup_item* %item to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 161) #8
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_ex_data(%struct.engine_st* noundef %e, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 22
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #8
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @ENGINE_get_ex_data(%struct.engine_st* noundef %e, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 22
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #8
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_id(%struct.engine_st* nocapture noundef writeonly %e, i8* noundef %id) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %id, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ENGINE_set_id, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %id1 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 0
  store i8* %id, i8** %id1, align 8, !tbaa !26
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_name(%struct.engine_st* nocapture noundef writeonly %e, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ENGINE_set_name, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 1
  store i8* %name, i8** %name1, align 8, !tbaa !27
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_destroy_function(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*)* noundef %destroy_f) local_unnamed_addr #3 {
entry:
  %destroy = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 11
  store i32 (%struct.engine_st*)* %destroy_f, i32 (%struct.engine_st*)** %destroy, align 8, !tbaa !23
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_init_function(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*)* noundef %init_f) local_unnamed_addr #3 {
entry:
  %init = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 12
  store i32 (%struct.engine_st*)* %init_f, i32 (%struct.engine_st*)** %init, align 8, !tbaa !28
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_finish_function(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*)* noundef %finish_f) local_unnamed_addr #3 {
entry:
  %finish = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 13
  store i32 (%struct.engine_st*)* %finish_f, i32 (%struct.engine_st*)** %finish, align 8, !tbaa !19
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_ctrl_function(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* noundef %ctrl_f) local_unnamed_addr #3 {
entry:
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 14
  store i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* %ctrl_f, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_flags(%struct.engine_st* nocapture noundef writeonly %e, i32 noundef %flags) local_unnamed_addr #3 {
entry:
  %flags1 = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 19
  store i32 %flags, i32* %flags1, align 8, !tbaa !22
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_cmd_defns(%struct.engine_st* nocapture noundef writeonly %e, %struct.ENGINE_CMD_DEFN_st* noundef %defns) local_unnamed_addr #3 {
entry:
  %cmd_defns = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 18
  store %struct.ENGINE_CMD_DEFN_st* %defns, %struct.ENGINE_CMD_DEFN_st** %cmd_defns, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ENGINE_get_id(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %id = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 0
  %0 = load i8*, i8** %id, align 8, !tbaa !26
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ENGINE_get_name(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %name = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !27
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*)* @ENGINE_get_destroy_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %destroy = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 11
  %0 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %destroy, align 8, !tbaa !23
  ret i32 (%struct.engine_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*)* @ENGINE_get_init_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %init = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 12
  %0 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %init, align 8, !tbaa !28
  ret i32 (%struct.engine_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*)* @ENGINE_get_finish_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %finish = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 13
  %0 = load i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)** %finish, align 8, !tbaa !19
  ret i32 (%struct.engine_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* @ENGINE_get_ctrl_function(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %ctrl = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 14
  %0 = load i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)** %ctrl, align 8, !tbaa !20
  ret i32 (%struct.engine_st*, i32, i64, i8*, void ()*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ENGINE_get_flags(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 19
  %0 = load i32, i32* %flags, align 8, !tbaa !22
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ENGINE_CMD_DEFN_st* @ENGINE_get_cmd_defns(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #5 {
entry:
  %cmd_defns = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 18
  %0 = load %struct.ENGINE_CMD_DEFN_st*, %struct.ENGINE_CMD_DEFN_st** %cmd_defns, align 8, !tbaa !21
  ret %struct.ENGINE_CMD_DEFN_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @ENGINE_get_static_state() local_unnamed_addr #6 {
entry:
  ret i8* bitcast (i32* @internal_static_hack to i8*)
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_ENGINE_CLEANUP_ITEM* @sk_ENGINE_CLEANUP_ITEM_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_ENGINE_CLEANUP_ITEM*
  ret %struct.stack_st_ENGINE_CLEANUP_ITEM* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !6, i64 156}
!11 = !{!"engine_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !5, i64 152, !6, i64 156, !5, i64 160, !12, i64 168, !9, i64 184, !9, i64 192}
!12 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!13 = !{!11, !9, i64 16}
!14 = !{!11, !9, i64 24}
!15 = !{!11, !9, i64 32}
!16 = !{!11, !9, i64 48}
!17 = !{!11, !9, i64 56}
!18 = !{!11, !9, i64 64}
!19 = !{!11, !9, i64 104}
!20 = !{!11, !9, i64 112}
!21 = !{!11, !9, i64 144}
!22 = !{!11, !5, i64 152}
!23 = !{!11, !9, i64 88}
!24 = !{!25, !9, i64 0}
!25 = !{!"st_engine_cleanup_item", !9, i64 0}
!26 = !{!11, !9, i64 0}
!27 = !{!11, !9, i64 8}
!28 = !{!11, !9, i64 96}
