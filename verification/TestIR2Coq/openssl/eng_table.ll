; ModuleID = 'crypto/engine/eng_table.c'
source_filename = "crypto/engine/eng_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_engine_table = type { %struct.lhash_st_ENGINE_PILE }
%struct.lhash_st_ENGINE_PILE = type { %union.lh_ENGINE_PILE_dummy }
%union.lh_ENGINE_PILE_dummy = type { i8* }
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
%struct.st_engine_pile = type { i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i32 }
%struct.stack_st_ENGINE = type opaque
%struct.lhash_st = type opaque
%struct.stack_st = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.st_engine_pile_doall = type { void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)*, i8* }

@table_flags = internal unnamed_addr global i32 0, align 4
@global_engine_lock = external local_unnamed_addr global i8*, align 8
@.str = private unnamed_addr constant [26 x i8] c"crypto/engine/eng_table.c\00", align 1
@__func__.engine_table_register = private unnamed_addr constant [22 x i8] c"engine_table_register\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ENGINE_get_table_flags() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @table_flags, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ENGINE_set_table_flags(i32 noundef %flags) local_unnamed_addr #1 {
entry:
  store i32 %flags, i32* @table_flags, align 4, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @engine_table_register(%struct.st_engine_table** nocapture noundef %table, void ()* noundef %cleanup, %struct.engine_st* noundef %e, i32* nocapture noundef readonly %nids, i32 noundef %num_nids, i32 noundef %setdefault) local_unnamed_addr #2 {
entry:
  %tmplate = alloca %struct.st_engine_pile, align 8
  %0 = bitcast %struct.st_engine_pile* %tmplate to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup57, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %call4 = tail call fastcc i32 @int_table_check(%struct.st_engine_table** noundef nonnull %table, i32 noundef 1) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool1.not = icmp eq %struct.st_engine_table* %2, null
  br i1 %tobool1.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void @engine_cleanup_add_first(void ()* noundef %cleanup) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %tobool11.not95 = icmp eq i32 %num_nids, 0
  br i1 %tobool11.not95, label %end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end10
  %nid = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %tmplate, i64 0, i32 0
  %tobool41.not = icmp eq i32 %setdefault, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end55
  %dec98.in = phi i32 [ %num_nids, %while.body.lr.ph ], [ %dec98, %if.end55 ]
  %nids.addr.096 = phi i32* [ %nids, %while.body.lr.ph ], [ %incdec.ptr, %if.end55 ]
  %dec98 = add nsw i32 %dec98.in, -1
  %3 = load i32, i32* %nids.addr.096, align 4, !tbaa !4
  store i32 %3, i32* %nid, align 8, !tbaa !10
  %4 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %piles = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %4, i64 0, i32 0
  %call12 = call fastcc %struct.st_engine_pile* @lh_ENGINE_PILE_retrieve(%struct.lhash_st_ENGINE_PILE* noundef %piles, %struct.st_engine_pile* noundef nonnull %tmplate) #7
  %tobool13.not = icmp eq %struct.st_engine_pile* %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end32

if.then14:                                        ; preds = %while.body
  %call15 = call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #6
  %5 = bitcast i8* %call15 to %struct.st_engine_pile*
  %cmp = icmp eq i8* %call15, null
  br i1 %cmp, label %end, label %if.end17

if.end17:                                         ; preds = %if.then14
  %uptodate = getelementptr inbounds i8, i8* %call15, i64 24
  %6 = bitcast i8* %uptodate to i32*
  store i32 1, i32* %6, align 8, !tbaa !12
  %7 = load i32, i32* %nids.addr.096, align 4, !tbaa !4
  %nid18 = bitcast i8* %call15 to i32*
  store i32 %7, i32* %nid18, align 8, !tbaa !10
  %call19 = call fastcc %struct.stack_st_ENGINE* @sk_ENGINE_new_null() #7
  %sk = getelementptr inbounds i8, i8* %call15, i64 8
  %8 = bitcast i8* %sk to %struct.stack_st_ENGINE**
  store %struct.stack_st_ENGINE* %call19, %struct.stack_st_ENGINE** %8, align 8, !tbaa !13
  %tobool21.not = icmp eq %struct.stack_st_ENGINE* %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @CRYPTO_free(i8* noundef nonnull %call15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 110) #6
  br label %end

if.end23:                                         ; preds = %if.end17
  %funct = getelementptr inbounds i8, i8* %call15, i64 16
  %9 = bitcast i8* %funct to %struct.engine_st**
  store %struct.engine_st* null, %struct.engine_st** %9, align 8, !tbaa !14
  %10 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %piles24 = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %10, i64 0, i32 0
  call fastcc void @lh_ENGINE_PILE_insert(%struct.lhash_st_ENGINE_PILE* noundef %piles24, %struct.st_engine_pile* noundef nonnull %5) #7
  %11 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %piles26 = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %11, i64 0, i32 0
  %call27 = call fastcc %struct.st_engine_pile* @lh_ENGINE_PILE_retrieve(%struct.lhash_st_ENGINE_PILE* noundef %piles26, %struct.st_engine_pile* noundef nonnull %tmplate) #7
  %cmp28.not = icmp eq %struct.st_engine_pile* %call27, %5
  br i1 %cmp28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end23
  %12 = bitcast i8* %sk to %struct.stack_st_ENGINE**
  %13 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %12, align 8, !tbaa !13
  call fastcc void @sk_ENGINE_free(%struct.stack_st_ENGINE* noundef %13) #7
  call void @CRYPTO_free(i8* noundef nonnull %call15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 117) #6
  br label %end

if.end32:                                         ; preds = %if.end23, %while.body
  %fnd.0 = phi %struct.st_engine_pile* [ %call12, %while.body ], [ %5, %if.end23 ]
  %sk33 = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %fnd.0, i64 0, i32 1
  %14 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk33, align 8, !tbaa !13
  call fastcc void @sk_ENGINE_delete_ptr(%struct.stack_st_ENGINE* noundef %14, %struct.engine_st* noundef %e) #7
  %15 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk33, align 8, !tbaa !13
  %call36 = call fastcc i32 @sk_ENGINE_push(%struct.stack_st_ENGINE* noundef %15, %struct.engine_st* noundef %e) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %end, label %if.end39

if.end39:                                         ; preds = %if.end32
  %uptodate40 = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %fnd.0, i64 0, i32 3
  store i32 0, i32* %uptodate40, align 8, !tbaa !12
  br i1 %tobool41.not, label %if.end55, label %if.then42

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 @engine_unlocked_init(%struct.engine_st* noundef %e) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then42
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.engine_table_register, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 109, i8* noundef null) #6
  br label %end

if.end46:                                         ; preds = %if.then42
  %funct47 = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %fnd.0, i64 0, i32 2
  %16 = load %struct.engine_st*, %struct.engine_st** %funct47, align 8, !tbaa !14
  %tobool48.not = icmp eq %struct.engine_st* %16, null
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end46
  %call51 = call i32 @engine_unlocked_finish(%struct.engine_st* noundef nonnull %16, i32 noundef 0) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end46
  store %struct.engine_st* %e, %struct.engine_st** %funct47, align 8, !tbaa !14
  store i32 1, i32* %uptodate40, align 8, !tbaa !12
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %if.end39
  %incdec.ptr = getelementptr inbounds i32, i32* %nids.addr.096, i64 1
  %tobool11.not = icmp eq i32 %dec98, 0
  br i1 %tobool11.not, label %end, label %while.body, !llvm.loop !15

end:                                              ; preds = %if.then14, %if.end32, %if.end55, %if.end10, %if.end, %if.then45, %if.then29, %if.then22
  %ret.0 = phi i32 [ 0, %if.then45 ], [ 0, %if.then29 ], [ 0, %if.then22 ], [ 0, %if.end ], [ 1, %if.end10 ], [ 0, %if.then14 ], [ 0, %if.end32 ], [ 1, %if.end55 ]
  %17 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call56 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %17) #6
  br label %cleanup57

cleanup57:                                        ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @int_table_check(%struct.st_engine_table** nocapture noundef %t, i32 noundef %create) unnamed_addr #2 {
entry:
  %0 = load %struct.st_engine_table*, %struct.st_engine_table** %t, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.st_engine_table* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32 %create, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc %struct.lhash_st_ENGINE_PILE* @lh_ENGINE_PILE_new() #7
  %cmp = icmp eq %struct.lhash_st_ENGINE_PILE* %call, null
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end3
  %1 = bitcast %struct.st_engine_table** %t to %struct.lhash_st_ENGINE_PILE**
  store %struct.lhash_st_ENGINE_PILE* %call, %struct.lhash_st_ENGINE_PILE** %1, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

declare void @engine_cleanup_add_first(void ()* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.st_engine_pile* @lh_ENGINE_PILE_retrieve(%struct.lhash_st_ENGINE_PILE* noundef %lh, %struct.st_engine_pile* noundef %d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ENGINE_PILE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.st_engine_pile* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  %2 = bitcast i8* %call to %struct.st_engine_pile*
  ret %struct.st_engine_pile* %2
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_ENGINE* @sk_ENGINE_new_null() unnamed_addr #2 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_ENGINE*
  ret %struct.stack_st_ENGINE* %0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_ENGINE_PILE_insert(%struct.lhash_st_ENGINE_PILE* noundef %lh, %struct.st_engine_pile* noundef %d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ENGINE_PILE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.st_engine_pile* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ENGINE_free(%struct.stack_st_ENGINE* noundef %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ENGINE_delete_ptr(%struct.stack_st_ENGINE* noundef %sk, %struct.engine_st* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %1 = bitcast %struct.engine_st* %ptr to i8*
  %call = tail call i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_ENGINE_push(%struct.stack_st_ENGINE* noundef %sk, %struct.engine_st* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %1 = bitcast %struct.engine_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

declare i32 @engine_unlocked_init(%struct.engine_st* noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @engine_unlocked_finish(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define void @engine_table_unregister(%struct.st_engine_table** nocapture noundef %table, %struct.engine_st* noundef %e) local_unnamed_addr #2 {
entry:
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @int_table_check(%struct.st_engine_table** noundef %table, i32 noundef 0) #7
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %piles = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %1, i64 0, i32 0
  tail call fastcc void @lh_ENGINE_PILE_doall_ENGINE(%struct.lhash_st_ENGINE_PILE* noundef %piles, %struct.engine_st* noundef %e) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #6
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_ENGINE_PILE_doall_ENGINE(%struct.lhash_st_ENGINE_PILE* noundef %lh, %struct.engine_st* noundef %arg) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ENGINE_PILE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.engine_st* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.st_engine_pile*, %struct.engine_st*)* @int_unregister_cb to void (i8*, i8*)*), i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_unregister_cb(%struct.st_engine_pile* nocapture noundef %pile, %struct.engine_st* noundef %e) #2 {
entry:
  %sk = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %pile, i64 0, i32 1
  %0 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk, align 8, !tbaa !13
  %call13 = tail call fastcc i32 @sk_ENGINE_find(%struct.stack_st_ENGINE* noundef %0, %struct.engine_st* noundef %e) #7
  %cmp14 = icmp sgt i32 %call13, -1
  br i1 %cmp14, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %uptodate = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %pile, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %call15 = phi i32 [ %call13, %while.body.lr.ph ], [ %call, %while.body ]
  %1 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk, align 8, !tbaa !13
  tail call fastcc void @sk_ENGINE_delete(%struct.stack_st_ENGINE* noundef %1, i32 noundef %call15) #7
  store i32 0, i32* %uptodate, align 8, !tbaa !12
  %2 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk, align 8, !tbaa !13
  %call = tail call fastcc i32 @sk_ENGINE_find(%struct.stack_st_ENGINE* noundef %2, %struct.engine_st* noundef %e) #7
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %while.body, %entry
  %funct = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %pile, i64 0, i32 2
  %3 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  %cmp3 = icmp eq %struct.engine_st* %3, %e
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call4 = tail call i32 @engine_unlocked_finish(%struct.engine_st* noundef %e, i32 noundef 0) #6
  store %struct.engine_st* null, %struct.engine_st** %funct, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @engine_table_cleanup(%struct.st_engine_table** nocapture noundef %table) local_unnamed_addr #2 {
entry:
  %0 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %tobool1.not = icmp eq %struct.st_engine_table* %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %piles = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %1, i64 0, i32 0
  tail call fastcc void @lh_ENGINE_PILE_doall(%struct.lhash_st_ENGINE_PILE* noundef nonnull %piles) #7
  %2 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %piles3 = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %2, i64 0, i32 0
  tail call fastcc void @lh_ENGINE_PILE_free(%struct.lhash_st_ENGINE_PILE* noundef %piles3) #7
  store %struct.st_engine_table* null, %struct.st_engine_table** %table, align 8, !tbaa !8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #6
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_ENGINE_PILE_doall(%struct.lhash_st_ENGINE_PILE* noundef %lh) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ENGINE_PILE* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.st_engine_pile*)* @int_cleanup_cb_doall to void (i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_cleanup_cb_doall(%struct.st_engine_pile* noundef %p) #2 {
entry:
  %cmp = icmp eq %struct.st_engine_pile* %p, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %p, i64 0, i32 1
  %0 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk, align 8, !tbaa !13
  tail call fastcc void @sk_ENGINE_free(%struct.stack_st_ENGINE* noundef %0) #7
  %funct = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %p, i64 0, i32 2
  %1 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  %tobool.not = icmp eq %struct.engine_st* %1, null
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call = tail call i32 @engine_unlocked_finish(%struct.engine_st* noundef nonnull %1, i32 noundef 0) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %2 = bitcast %struct.st_engine_pile* %p to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 181) #6
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_ENGINE_PILE_free(%struct.lhash_st_ENGINE_PILE* noundef %lh) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ENGINE_PILE* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** nocapture noundef %table, i32 noundef %nid, i8* nocapture noundef readnone %f, i32 noundef %l) local_unnamed_addr #2 {
entry:
  %tmplate = alloca %struct.st_engine_pile, align 8
  %0 = bitcast %struct.st_engine_pile* %tmplate to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 64, %struct.ossl_init_settings_st* noundef null) #6
  %1 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.st_engine_table* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #6
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call2 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end58, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @int_table_check(%struct.st_engine_table** noundef nonnull %table, i32 noundef 0) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end58, label %if.end9

if.end9:                                          ; preds = %if.end5
  %nid10 = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %tmplate, i64 0, i32 0
  store i32 %nid, i32* %nid10, align 8, !tbaa !10
  %3 = load %struct.st_engine_table*, %struct.st_engine_table** %table, align 8, !tbaa !8
  %piles = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %3, i64 0, i32 0
  %call11 = call fastcc %struct.st_engine_pile* @lh_ENGINE_PILE_retrieve(%struct.lhash_st_ENGINE_PILE* noundef %piles, %struct.st_engine_pile* noundef nonnull %tmplate) #7
  %tobool12.not = icmp eq %struct.st_engine_pile* %call11, null
  br i1 %tobool12.not, label %if.end58, label %if.end14

if.end14:                                         ; preds = %if.end9
  %funct = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %call11, i64 0, i32 2
  %4 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  %tobool15.not = icmp eq %struct.engine_st* %4, null
  br i1 %tobool15.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %call17 = call i32 @engine_unlocked_init(%struct.engine_st* noundef nonnull %4) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %5 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  br label %if.then52

if.end21:                                         ; preds = %land.lhs.true, %if.end14
  %uptodate = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %call11, i64 0, i32 3
  %6 = load i32, i32* %uptodate, align 8, !tbaa !12
  %tobool22.not = icmp eq i32 %6, 0
  br i1 %tobool22.not, label %trynext.preheader, label %if.then23

trynext.preheader:                                ; preds = %if.end21
  %sk = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %call11, i64 0, i32 1
  br label %trynext

if.then23:                                        ; preds = %if.end21
  %7 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  br label %if.then52

trynext:                                          ; preds = %trynext.preheader, %if.end33
  %loop.0 = phi i32 [ %inc, %if.end33 ], [ 0, %trynext.preheader ]
  %8 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk, align 8, !tbaa !13
  %inc = add nuw nsw i32 %loop.0, 1
  %call26 = call fastcc %struct.engine_st* @sk_ENGINE_value(%struct.stack_st_ENGINE* noundef %8, i32 noundef %loop.0) #7
  %tobool27.not = icmp eq %struct.engine_st* %call26, null
  br i1 %tobool27.not, label %if.then52, label %if.end29

if.end29:                                         ; preds = %trynext
  %funct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %call26, i64 0, i32 21
  %9 = load i32, i32* %funct_ref, align 8, !tbaa !18
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %10 = load i32, i32* @table_flags, align 4, !tbaa !4
  %and = and i32 %10, 1
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.then31, label %if.end33

if.then31:                                        ; preds = %lor.lhs.false, %if.end29
  %call32 = call i32 @engine_unlocked_init(%struct.engine_st* noundef nonnull %call26) #6
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false, %if.then31
  %initres.0 = phi i32 [ %call32, %if.then31 ], [ 0, %lor.lhs.false ]
  %tobool34.not = icmp eq i32 %initres.0, 0
  br i1 %tobool34.not, label %trynext, label %if.then35

if.then35:                                        ; preds = %if.end33
  %11 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  %cmp37.not = icmp eq %struct.engine_st* %11, %call26
  br i1 %cmp37.not, label %if.then52, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then35
  %call39 = call i32 @engine_unlocked_init(%struct.engine_st* noundef nonnull %call26) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then52, label %if.then41

if.then41:                                        ; preds = %land.lhs.true38
  %12 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  %tobool43.not = icmp eq %struct.engine_st* %12, null
  br i1 %tobool43.not, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.then41
  %call46 = call i32 @engine_unlocked_finish(%struct.engine_st* noundef nonnull %12, i32 noundef 0) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then41
  store %struct.engine_st* %call26, %struct.engine_st** %funct, align 8, !tbaa !14
  br label %if.then52

if.then52:                                        ; preds = %trynext, %if.then19, %if.then23, %if.end47, %land.lhs.true38, %if.then35
  %ret.0.ph = phi %struct.engine_st* [ %call26, %if.then35 ], [ %call26, %land.lhs.true38 ], [ %call26, %if.end47 ], [ %7, %if.then23 ], [ %5, %if.then19 ], [ null, %trynext ]
  %uptodate53 = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %call11, i64 0, i32 3
  store i32 1, i32* %uptodate53, align 8, !tbaa !12
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.end5, %if.end9, %if.then52
  %ret.094 = phi %struct.engine_st* [ %ret.0.ph, %if.then52 ], [ null, %if.end9 ], [ null, %if.end5 ], [ null, %if.end ]
  %13 = load i8*, i8** @global_engine_lock, align 8, !tbaa !8
  %call59 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #6
  %call60 = call i32 @ERR_pop_to_mark() #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end58
  %retval.0 = phi %struct.engine_st* [ %ret.094, %if.end58 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret %struct.engine_st* %retval.0
}

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #4

declare i32 @ERR_set_mark() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @sk_ENGINE_value(%struct.stack_st_ENGINE* noundef %sk, i32 noundef %idx) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.engine_st*
  ret %struct.engine_st* %1
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @engine_table_doall(%struct.st_engine_table* noundef %table, void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #2 {
entry:
  %dall = alloca %struct.st_engine_pile_doall, align 8
  %0 = bitcast %struct.st_engine_pile_doall* %dall to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %cb1 = getelementptr inbounds %struct.st_engine_pile_doall, %struct.st_engine_pile_doall* %dall, i64 0, i32 0
  store void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)* %cb, void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)** %cb1, align 8, !tbaa !21
  %arg2 = getelementptr inbounds %struct.st_engine_pile_doall, %struct.st_engine_pile_doall* %dall, i64 0, i32 1
  store i8* %arg, i8** %arg2, align 8, !tbaa !23
  %tobool.not = icmp eq %struct.st_engine_table* %table, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %piles = getelementptr inbounds %struct.st_engine_table, %struct.st_engine_table* %table, i64 0, i32 0
  call fastcc void @lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL(%struct.lhash_st_ENGINE_PILE* noundef nonnull %piles, %struct.st_engine_pile_doall* noundef nonnull %dall) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL(%struct.lhash_st_ENGINE_PILE* noundef %lh, %struct.st_engine_pile_doall* noundef %arg) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_ENGINE_PILE* %lh to %struct.lhash_st*
  %1 = bitcast %struct.st_engine_pile_doall* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.st_engine_pile*, %struct.st_engine_pile_doall*)* @int_dall to void (i8*, i8*)*), i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_dall(%struct.st_engine_pile* nocapture noundef readonly %pile, %struct.st_engine_pile_doall* nocapture noundef readonly %dall) #2 {
entry:
  %cb = getelementptr inbounds %struct.st_engine_pile_doall, %struct.st_engine_pile_doall* %dall, i64 0, i32 0
  %0 = load void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)*, void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)** %cb, align 8, !tbaa !21
  %nid = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %pile, i64 0, i32 0
  %1 = load i32, i32* %nid, align 8, !tbaa !10
  %sk = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %pile, i64 0, i32 1
  %2 = load %struct.stack_st_ENGINE*, %struct.stack_st_ENGINE** %sk, align 8, !tbaa !13
  %funct = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %pile, i64 0, i32 2
  %3 = load %struct.engine_st*, %struct.engine_st** %funct, align 8, !tbaa !14
  %arg = getelementptr inbounds %struct.st_engine_pile_doall, %struct.st_engine_pile_doall* %dall, i64 0, i32 1
  %4 = load i8*, i8** %arg, align 8, !tbaa !23
  tail call void %0(i32 noundef %1, %struct.stack_st_ENGINE* noundef %2, %struct.engine_st* noundef %3, i8* noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_ENGINE_PILE* @lh_ENGINE_PILE_new() unnamed_addr #2 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.st_engine_pile*)* @engine_pile_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.st_engine_pile*, %struct.st_engine_pile*)* @engine_pile_cmp to i32 (i8*, i8*)*)) #6
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_ENGINE_PILE*
  ret %struct.lhash_st_ENGINE_PILE* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @engine_pile_hash(%struct.st_engine_pile* nocapture noundef readonly %c) #0 {
entry:
  %nid = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %c, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !10
  %conv = sext i32 %0 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @engine_pile_cmp(%struct.st_engine_pile* nocapture noundef readonly %a, %struct.st_engine_pile* nocapture noundef readonly %b) #0 {
entry:
  %nid = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %a, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !10
  %nid1 = getelementptr inbounds %struct.st_engine_pile, %struct.st_engine_pile* %b, i64 0, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !10
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #4

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #4

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_ENGINE_find(%struct.stack_st_ENGINE* noundef %sk, %struct.engine_st* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %1 = bitcast %struct.engine_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_ENGINE_delete(%struct.stack_st_ENGINE* noundef %sk, i32 noundef %i) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %0, i32 noundef %i) #6
  ret void
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

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
!10 = !{!11, !5, i64 0}
!11 = !{!"st_engine_pile", !5, i64 0, !9, i64 8, !9, i64 16, !5, i64 24}
!12 = !{!11, !5, i64 24}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !5, i64 160}
!19 = !{!"engine_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !5, i64 152, !6, i64 156, !5, i64 160, !20, i64 168, !9, i64 184, !9, i64 192}
!20 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!21 = !{!22, !9, i64 0}
!22 = !{!"st_engine_pile_doall", !9, i64 0, !9, i64 8}
!23 = !{!22, !9, i64 8}
