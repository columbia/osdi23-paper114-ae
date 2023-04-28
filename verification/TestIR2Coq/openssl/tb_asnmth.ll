; ModuleID = 'crypto/engine/tb_asnmth.c'
source_filename = "crypto/engine/tb_asnmth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_engine_table = type opaque
%struct.engine_st = type { i8*, i8*, %struct.rsa_meth_st*, %struct.dsa_method*, %struct.dh_method*, %struct.ec_key_method_st*, %struct.rand_meth_st*, i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*)*, i32 (%struct.engine_st*, i32, i64, i8*, void ()*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.evp_pkey_st* (%struct.engine_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)*, %struct.ENGINE_CMD_DEFN_st*, i32, i32, i32, %struct.crypto_ex_data_st, %struct.engine_st*, %struct.engine_st* }
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.ec_key_method_st = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.evp_pkey_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ENGINE_CMD_DEFN_st = type { i32, i8*, i8*, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ENGINE_FIND_STR = type { %struct.engine_st*, %struct.evp_pkey_asn1_method_st*, i8*, i32 }
%struct.stack_st_ENGINE = type opaque
%struct.stack_st = type opaque

@pkey_asn1_meth_table = internal global %struct.st_engine_table* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"crypto/engine/tb_asnmth.c\00", align 1
@__func__.ENGINE_get_pkey_asn1_meth = private unnamed_addr constant [26 x i8] c"ENGINE_get_pkey_asn1_meth\00", align 1
@engine_lock_init = external global i32, align 4
@do_engine_lock_init_ossl_ret_ = external local_unnamed_addr global i32, align 4
@__func__.ENGINE_pkey_asn1_find_str = private unnamed_addr constant [26 x i8] c"ENGINE_pkey_asn1_find_str\00", align 1
@global_engine_lock = external local_unnamed_addr global i8*, align 8

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_unregister_pkey_asn1_meths(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  tail call void @engine_table_unregister(%struct.st_engine_table** noundef nonnull @pkey_asn1_meth_table, %struct.engine_st* noundef %e) #6
  ret void
}

declare void @engine_table_unregister(%struct.st_engine_table** noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_register_pkey_asn1_meths(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %nids = alloca i32*, align 8
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 10
  %0 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32** %nids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = call i32 %0(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_asn1_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  br label %return

cleanup:                                          ; preds = %if.then
  %2 = load i32*, i32** %nids, align 8, !tbaa !11
  %call3 = call i32 @engine_table_register(%struct.st_engine_table** noundef nonnull @pkey_asn1_meth_table, void ()* noundef nonnull @engine_unregister_all_pkey_asn1_meths, %struct.engine_st* noundef nonnull %e, i32* noundef %2, i32 noundef %call, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi i32 [ %call3, %cleanup ], [ 1, %cleanup.thread ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @engine_table_register(%struct.st_engine_table** noundef, void ()* noundef, %struct.engine_st* noundef, i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @engine_unregister_all_pkey_asn1_meths() #0 {
entry:
  tail call void @engine_table_cleanup(%struct.st_engine_table** noundef nonnull @pkey_asn1_meth_table) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define void @ENGINE_register_all_pkey_asn1_meths() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_first() #6
  %tobool.not6 = icmp eq %struct.engine_st* %call, null
  br i1 %tobool.not6, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %e.07 = phi %struct.engine_st* [ %call2, %for.body ], [ %call, %entry ]
  %call1 = tail call i32 @ENGINE_register_pkey_asn1_meths(%struct.engine_st* noundef nonnull %e.07) #8
  %call2 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %e.07) #6
  %tobool.not = icmp eq %struct.engine_st* %call2, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #1

declare %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ENGINE_set_default_pkey_asn1_meths(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %nids = alloca i32*, align 8
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 10
  %0 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %0, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32** %nids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = call i32 %0(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_asn1_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  br label %return

cleanup:                                          ; preds = %if.then
  %2 = load i32*, i32** %nids, align 8, !tbaa !11
  %call3 = call i32 @engine_table_register(%struct.st_engine_table** noundef nonnull @pkey_asn1_meth_table, void ()* noundef nonnull @engine_unregister_all_pkey_asn1_meths, %struct.engine_st* noundef nonnull %e, i32* noundef %2, i32 noundef %call, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi i32 [ %call3, %cleanup ], [ 1, %cleanup.thread ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.engine_st* @ENGINE_get_pkey_asn1_meth_engine(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** noundef nonnull @pkey_asn1_meth_table, i32 noundef %nid, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 80) #6
  ret %struct.engine_st* %call
}

declare %struct.engine_st* @ossl_engine_table_select(%struct.st_engine_table** noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @ENGINE_get_pkey_asn1_meth(%struct.engine_st* noundef %e, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %ret = alloca %struct.evp_pkey_asn1_method_st*, align 8
  %0 = bitcast %struct.evp_pkey_asn1_method_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* @ENGINE_get_pkey_asn1_meths(%struct.engine_st* noundef %e) #8
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %call, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 %call(%struct.engine_st* noundef %e, %struct.evp_pkey_asn1_method_st** noundef nonnull %ret, i32** noundef null, i32 noundef %nid) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ENGINE_get_pkey_asn1_meth, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 101, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ret, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_asn1_method_st* [ %1, %if.end ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_asn1_method_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* @ENGINE_get_pkey_asn1_meths(%struct.engine_st* nocapture noundef readonly %e) local_unnamed_addr #3 {
entry:
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 10
  %0 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  ret i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @ENGINE_set_pkey_asn1_meths(%struct.engine_st* nocapture noundef writeonly %e, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* noundef %f) local_unnamed_addr #4 {
entry:
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 10
  store i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %f, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @engine_pkey_asn1_meths_free(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %pkm = alloca %struct.evp_pkey_asn1_method_st*, align 8
  %pknids = alloca i32*, align 8
  %0 = bitcast %struct.evp_pkey_asn1_method_st** %pkm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 10
  %1 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %1, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i32** %pknids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %call = call i32 %1(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_asn1_method_st** noundef null, i32** noundef nonnull %pknids, i32 noundef 0) #6
  %cmp15 = icmp sgt i32 %call, 0
  br i1 %cmp15, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %4 = load i32*, i32** %pknids, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !14
  %call3 = call i32 %3(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_asn1_method_st** noundef nonnull %pkm, i32** noundef null, i32 noundef %5) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %pkm, align 8, !tbaa !11
  call void @EVP_PKEY_asn1_free(%struct.evp_pkey_asn1_method_st* noundef %6) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.inc, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret void
}

declare void @EVP_PKEY_asn1_free(%struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @ENGINE_get_pkey_asn1_meth_str(%struct.engine_st* noundef %e, i8* noundef %str, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %nids = alloca i32*, align 8
  %ameth = alloca %struct.evp_pkey_asn1_method_st*, align 8
  %0 = bitcast i32** %nids to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_pkey_asn1_method_st** %ameth to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %e, i64 0, i32 10
  %2 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %tobool.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %len, -1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef %str) #9
  %conv = trunc i64 %call to i32
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %len.addr.0 = phi i32 [ %conv, %if.then1 ], [ %len, %if.end ]
  %call4 = call i32 %2(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_asn1_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #6
  %conv17 = sext i32 %len.addr.0 to i64
  %cmp537 = icmp sgt i32 %call4, 0
  br i1 %cmp537, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.end2
  %wide.trip.count = zext i32 %call4 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %4 = load i32*, i32** %nids, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !14
  %call8 = call i32 %3(%struct.engine_st* noundef nonnull %e, %struct.evp_pkey_asn1_method_st** noundef nonnull %ameth, i32** noundef null, i32 noundef %5) #6
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !11
  %cmp9.not = icmp eq %struct.evp_pkey_asn1_method_st* %6, null
  br i1 %cmp9.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 3
  %7 = load i8*, i8** %pem_str, align 8, !tbaa !16
  %call11 = call i64 @strlen(i8* noundef %7) #9
  %conv12 = trunc i64 %call11 to i32
  %cmp13 = icmp eq i32 %len.addr.0, %conv12
  br i1 %cmp13, label %land.lhs.true15, label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %call18 = call i32 @strncasecmp(i8* noundef %7, i8* noundef %str, i64 noundef %conv17) #9
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !19

cleanup:                                          ; preds = %land.lhs.true15, %for.inc, %if.end2, %entry
  %retval.0 = phi %struct.evp_pkey_asn1_method_st* [ null, %entry ], [ null, %if.end2 ], [ %6, %land.lhs.true15 ], [ null, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_asn1_method_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @ENGINE_pkey_asn1_find_str(%struct.engine_st** nocapture noundef writeonly %pe, i8* noundef %str, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %fstr = alloca %struct.ENGINE_FIND_STR, align 8
  %0 = bitcast %struct.ENGINE_FIND_STR* %fstr to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7
  %e = getelementptr inbounds %struct.ENGINE_FIND_STR, %struct.ENGINE_FIND_STR* %fstr, i64 0, i32 0
  store %struct.engine_st* null, %struct.engine_st** %e, align 8, !tbaa !20
  %ameth = getelementptr inbounds %struct.ENGINE_FIND_STR, %struct.ENGINE_FIND_STR* %fstr, i64 0, i32 1
  store %struct.evp_pkey_asn1_method_st* null, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !22
  %str1 = getelementptr inbounds %struct.ENGINE_FIND_STR, %struct.ENGINE_FIND_STR* %fstr, i64 0, i32 2
  store i8* %str, i8** %str1, align 8, !tbaa !23
  %len2 = getelementptr inbounds %struct.ENGINE_FIND_STR, %struct.ENGINE_FIND_STR* %fstr, i64 0, i32 3
  store i32 %len, i32* %len2, align 8, !tbaa !24
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @engine_lock_init, void ()* noundef nonnull @do_engine_lock_init_ossl_) #6
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* @do_engine_lock_init_ossl_ret_, align 4
  %tobool3 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool3, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ENGINE_pkey_asn1_find_str, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 38, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @global_engine_lock, align 8, !tbaa !11
  %call4 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %2) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %3 = load %struct.st_engine_table*, %struct.st_engine_table** @pkey_asn1_meth_table, align 8, !tbaa !11
  call void @engine_table_doall(%struct.st_engine_table* noundef %3, void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)* noundef nonnull @look_str_cb, i8* noundef nonnull %0) #6
  %4 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !20
  %tobool9.not = icmp eq %struct.engine_st* %4, null
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  %struct_ref = getelementptr inbounds %struct.engine_st, %struct.engine_st* %4, i64 0, i32 20
  %5 = atomicrmw add i32* %struct_ref, i32 1 seq_cst, align 4
  %.pre = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !20
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %6 = phi %struct.engine_st* [ %.pre, %if.then10 ], [ null, %if.end7 ]
  store %struct.engine_st* %6, %struct.engine_st** %pe, align 8, !tbaa !11
  %7 = load i8*, i8** @global_engine_lock, align 8, !tbaa !11
  %call14 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #6
  %8 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end12, %if.then
  %retval.0 = phi %struct.evp_pkey_asn1_method_st* [ %8, %if.end12 ], [ null, %if.then ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7
  ret %struct.evp_pkey_asn1_method_st* %retval.0
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

declare void @do_engine_lock_init_ossl_() #1

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

declare void @engine_table_doall(%struct.st_engine_table* noundef, void (i32, %struct.stack_st_ENGINE*, %struct.engine_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @look_str_cb(i32 noundef %nid, %struct.stack_st_ENGINE* noundef %sk, %struct.engine_st* nocapture noundef readnone %def, i8* nocapture noundef %arg) #0 {
entry:
  %ameth2 = alloca %struct.evp_pkey_asn1_method_st*, align 8
  %ameth = getelementptr inbounds i8, i8* %arg, i64 8
  %0 = bitcast i8* %ameth to %struct.evp_pkey_asn1_method_st**
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %0, align 8, !tbaa !22
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup20

for.cond.preheader:                               ; preds = %entry
  %call39 = call fastcc i32 @sk_ENGINE_num(%struct.stack_st_ENGINE* noundef %sk) #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %for.body.lr.ph, label %cleanup20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = bitcast %struct.evp_pkey_asn1_method_st** %ameth2 to i8*
  %len = getelementptr inbounds i8, i8* %arg, i64 24
  %3 = bitcast i8* %len to i32*
  %str = getelementptr inbounds i8, i8* %arg, i64 16
  %4 = bitcast i8* %str to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup ]
  %call1 = call fastcc %struct.engine_st* @sk_ENGINE_value(%struct.stack_st_ENGINE* noundef %sk, i32 noundef %i.041) #8
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %pkey_asn1_meths = getelementptr inbounds %struct.engine_st, %struct.engine_st* %call1, i64 0, i32 10
  %5 = load i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)*, i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)** %pkey_asn1_meths, align 8, !tbaa !4
  %call3 = call i32 %5(%struct.engine_st* noundef %call1, %struct.evp_pkey_asn1_method_st** noundef nonnull %ameth2, i32** noundef null, i32 noundef %nid) #6
  %6 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth2, align 8, !tbaa !11
  %cmp4.not = icmp eq %struct.evp_pkey_asn1_method_st* %6, null
  br i1 %cmp4.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %6, i64 0, i32 3
  %7 = load i8*, i8** %pem_str, align 8, !tbaa !16
  %call5 = call i64 @strlen(i8* noundef %7) #9
  %conv = trunc i64 %call5 to i32
  %8 = load i32, i32* %3, align 8, !tbaa !24
  %cmp6 = icmp eq i32 %8, %conv
  br i1 %cmp6, label %land.lhs.true8, label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %9 = load i8*, i8** %4, align 8, !tbaa !23
  %sext = shl i64 %call5, 32
  %conv11 = ashr exact i64 %sext, 32
  %call12 = call i32 @strncasecmp(i8* noundef %7, i8* noundef %9, i64 noundef %conv11) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %cleanup

if.then15:                                        ; preds = %land.lhs.true8
  %e16 = bitcast i8* %arg to %struct.engine_st**
  store %struct.engine_st* %call1, %struct.engine_st** %e16, align 8, !tbaa !20
  store %struct.evp_pkey_asn1_method_st* %6, %struct.evp_pkey_asn1_method_st** %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %cleanup20

cleanup:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  %inc = add nuw nsw i32 %i.041, 1
  %call = call fastcc i32 @sk_ENGINE_num(%struct.stack_st_ENGINE* noundef %sk) #8
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %cleanup20, !llvm.loop !25

cleanup20:                                        ; preds = %cleanup, %for.cond.preheader, %if.then15, %entry
  ret void
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

declare void @engine_table_cleanup(%struct.st_engine_table** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_ENGINE_num(%struct.stack_st_ENGINE* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.engine_st* @sk_ENGINE_value(%struct.stack_st_ENGINE* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ENGINE* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.engine_st*
  ret %struct.engine_st* %1
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 80}
!5 = !{!"engine_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !7, i64 156, !9, i64 160, !10, i64 168, !6, i64 184, !6, i64 192}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !13}
!16 = !{!17, !6, i64 16}
!17 = !{!"evp_pkey_asn1_method_st", !9, i64 0, !9, i64 4, !18, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312}
!18 = !{!"long", !7, i64 0}
!19 = distinct !{!19, !13}
!20 = !{!21, !6, i64 0}
!21 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!22 = !{!21, !6, i64 8}
!23 = !{!21, !6, i64 16}
!24 = !{!21, !9, i64 24}
!25 = distinct !{!25, !13}
