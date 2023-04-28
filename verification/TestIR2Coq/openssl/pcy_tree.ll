; ModuleID = 'crypto/x509/pcy_tree.c'
source_filename = "crypto/x509/pcy_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_POLICY_TREE_st = type { %struct.X509_POLICY_LEVEL_st*, i32, %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE*, i32 }
%struct.X509_POLICY_LEVEL_st = type { %struct.x509_st*, %struct.stack_st_X509_POLICY_NODE*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.x509_st = type opaque
%struct.X509_POLICY_NODE_st = type { %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.asn1_object_st = type opaque
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_POLICY_DATA = type opaque
%struct.stack_st_X509_POLICY_NODE = type opaque
%struct.stack_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_POLICY_CACHE_st = type { %struct.X509_POLICY_DATA_st*, %struct.stack_st_X509_POLICY_DATA*, i64, i64, i64 }
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/pcy_tree.c\00", align 1
@__func__.tree_init = private unnamed_addr constant [10 x i8] c"tree_init\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef %tree) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_TREE_st* %tree, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %auth_policies = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 3
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %auth_policies, align 8, !tbaa !4
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %0) #4
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call) #5
  %user_policies = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 4
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %user_policies, align 8, !tbaa !10
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %1) #4
  %call2 = tail call fastcc void (i8*)* @ossl_check_X509_POLICY_NODE_freefunc_type(void (%struct.X509_POLICY_NODE_st*)* noundef nonnull @exnode_free) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1, void (i8*)* noundef %call2) #5
  %nlevel = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 1
  %2 = load i32, i32* %nlevel, align 8, !tbaa !11
  %cmp20 = icmp sgt i32 %2, 0
  br i1 %cmp20, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %levels = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 0
  %3 = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !12
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.022 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %curr.021 = phi %struct.X509_POLICY_LEVEL_st* [ %incdec.ptr, %for.body ], [ %3, %for.body.preheader ]
  %cert = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.021, i64 0, i32 0
  %4 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  tail call void @X509_free(%struct.x509_st* noundef %4) #5
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.021, i64 0, i32 1
  %5 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %5) #4
  %call4 = tail call fastcc void (i8*)* @ossl_check_X509_POLICY_NODE_freefunc_type(void (%struct.X509_POLICY_NODE_st*)* noundef nonnull @ossl_policy_node_free) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call3, void (i8*)* noundef %call4) #5
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.021, i64 0, i32 2
  %6 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !16
  tail call void @ossl_policy_node_free(%struct.X509_POLICY_NODE_st* noundef %6) #5
  %inc = add nuw nsw i32 %i.022, 1
  %incdec.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.021, i64 1
  %7 = load i32, i32* %nlevel, align 8, !tbaa !11
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !17

for.end:                                          ; preds = %for.body, %if.end
  %extra_data = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 2
  %8 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %extra_data, align 8, !tbaa !19
  tail call fastcc void @sk_X509_POLICY_DATA_pop_free(%struct.stack_st_X509_POLICY_DATA* noundef %8) #4
  %9 = bitcast %struct.X509_POLICY_TREE_st* %tree to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 621) #5
  %11 = bitcast %struct.X509_POLICY_TREE_st* %tree to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 622) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_NODE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc void (i8*)* @ossl_check_X509_POLICY_NODE_freefunc_type(void (%struct.X509_POLICY_NODE_st*)* noundef readnone %fr) unnamed_addr #3 {
entry:
  %0 = bitcast void (%struct.X509_POLICY_NODE_st*)* %fr to void (i8*)*
  ret void (i8*)* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @exnode_free(%struct.X509_POLICY_NODE_st* noundef %node) #0 {
entry:
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !20
  %tobool.not = icmp eq %struct.X509_POLICY_DATA_st* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 0
  %1 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %1, 8
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast %struct.X509_POLICY_NODE_st* %node to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 600) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @ossl_policy_node_free(%struct.X509_POLICY_NODE_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_X509_POLICY_DATA_pop_free(%struct.stack_st_X509_POLICY_DATA* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.X509_POLICY_DATA_st*)* @ossl_policy_data_free to void (i8*)*)) #5
  ret void
}

declare void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef) #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_policy_check(%struct.X509_POLICY_TREE_st** nocapture noundef writeonly %ptree, i32* nocapture noundef writeonly %pexplicit_policy, %struct.stack_st_X509* noundef %certs, %struct.stack_st_ASN1_OBJECT* noundef %policy_oids, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %tree = alloca %struct.X509_POLICY_TREE_st*, align 8
  %auth_nodes = alloca %struct.stack_st_X509_POLICY_NODE*, align 8
  %0 = bitcast %struct.X509_POLICY_TREE_st** %tree to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.X509_POLICY_TREE_st* null, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !24
  %1 = bitcast %struct.stack_st_X509_POLICY_NODE** %auth_nodes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.stack_st_X509_POLICY_NODE* null, %struct.stack_st_X509_POLICY_NODE** %auth_nodes, align 8, !tbaa !24
  store %struct.X509_POLICY_TREE_st* null, %struct.X509_POLICY_TREE_st** %ptree, align 8, !tbaa !24
  store i32 0, i32* %pexplicit_policy, align 4, !tbaa !25
  %call = call fastcc i32 @tree_init(%struct.X509_POLICY_TREE_st** noundef nonnull %tree, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %call, 4
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %call, 2
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.then2
  %2 = load %struct.X509_POLICY_TREE_st*, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !24
  tail call void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef %2) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 1, i32* %pexplicit_policy, align 4, !tbaa !25
  %and6 = and i32 %call, 2
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.else, %if.then2
  %3 = load %struct.X509_POLICY_TREE_st*, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !24
  %call11 = tail call fastcc i32 @tree_evaluate(%struct.X509_POLICY_TREE_st* noundef %3) #4
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %error, label %if.end14

if.end14:                                         ; preds = %if.end10
  %cmp15 = icmp eq i32 %call11, 2
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  tail call void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef %3) #4
  %. = select i1 %cmp1, i32 1, i32 -2
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = call fastcc i32 @tree_calculate_authority_set(%struct.X509_POLICY_TREE_st* noundef %3, %struct.stack_st_X509_POLICY_NODE** noundef nonnull %auth_nodes) #4
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %error, label %if.end25

if.end25:                                         ; preds = %if.end21
  %4 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %auth_nodes, align 8, !tbaa !24
  %call26 = call fastcc i32 @tree_calculate_user_set(%struct.X509_POLICY_TREE_st* noundef %3, %struct.stack_st_ASN1_OBJECT* noundef %policy_oids, %struct.stack_st_X509_POLICY_NODE* noundef %4) #4
  %cmp27 = icmp eq i32 %call22, 2
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %5 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %auth_nodes, align 8, !tbaa !24
  %call29 = call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %5) #4
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call29) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %tobool31.not = icmp eq i32 %call26, 0
  br i1 %tobool31.not, label %error, label %if.end33

if.end33:                                         ; preds = %if.end30
  store %struct.X509_POLICY_TREE_st* %3, %struct.X509_POLICY_TREE_st** %ptree, align 8, !tbaa !24
  br i1 %cmp1, label %if.end43, label %if.then36

if.then36:                                        ; preds = %if.end33
  %call37 = call %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_user_policies(%struct.X509_POLICY_TREE_st* noundef %3) #5
  %call38 = call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %call37) #4
  %call39 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call38) #5
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.then36, %if.end33
  br label %cleanup

error:                                            ; preds = %if.end30, %if.end21, %if.end10
  call void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.then16, %if.else, %entry, %error, %if.end43, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 0, %error ], [ 1, %if.end43 ], [ %call, %entry ], [ -2, %if.else ], [ %., %if.then16 ], [ -2, %if.then36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_init(%struct.X509_POLICY_TREE_st** nocapture noundef writeonly %ptree, %struct.stack_st_X509* noundef %certs, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %certs) #4
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %and = and i32 %flags, 256
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 %call1, i32 0
  %and2 = and i32 %flags, 512
  %tobool3.not = icmp eq i32 %and2, 0
  %cond8 = select i1 %tobool3.not, i32 %call1, i32 0
  %and9 = and i32 %flags, 1024
  %tobool10.not = icmp eq i32 %and9, 0
  %cond15 = select i1 %tobool10.not, i32 %call1, i32 0
  store %struct.X509_POLICY_TREE_st* null, %struct.X509_POLICY_TREE_st** %ptree, align 8, !tbaa !24
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %cleanup178, label %if.end

if.end:                                           ; preds = %entry
  %sub16 = add nsw i32 %call1, -2
  %cmp17296 = icmp sgt i32 %call1, 1
  br i1 %cmp17296, label %for.body, label %for.end70

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %i.0297, -1
  %cmp17 = icmp sgt i32 %i.0297, 0
  br i1 %cmp17, label %for.body, label %for.cond26.preheader, !llvm.loop !26

for.cond26.preheader:                             ; preds = %for.cond
  br i1 %cmp17296, label %land.rhs, label %for.end70

for.body:                                         ; preds = %if.end, %for.cond
  %i.0297 = phi i32 [ %dec, %for.cond ], [ %sub16, %if.end ]
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.0297) #5
  %0 = bitcast i8* %call19 to %struct.x509_st*
  %call20 = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %0, i32 noundef -1, i32 noundef 0) #5
  %call21 = tail call %struct.X509_POLICY_CACHE_st* @ossl_policy_cache_set(%struct.x509_st* noundef %0) #5
  %cmp22 = icmp eq %struct.X509_POLICY_CACHE_st* %call21, null
  br i1 %cmp22, label %cleanup178, label %for.cond

land.rhs:                                         ; preds = %for.cond26.preheader, %for.inc68
  %ret.0301 = phi i32 [ %ret.1, %for.inc68 ], [ 1, %for.cond26.preheader ]
  %i.1300 = phi i32 [ %dec69, %for.inc68 ], [ %sub16, %for.cond26.preheader ]
  %explicit_policy.0299 = phi i32 [ %explicit_policy.3.ph, %for.inc68 ], [ %cond, %for.cond26.preheader ]
  %cmp28 = icmp sgt i32 %explicit_policy.0299, 0
  %and29 = and i32 %ret.0301, 2
  %cmp30 = icmp eq i32 %and29, 0
  %1 = select i1 %cmp28, i1 true, i1 %cmp30
  br i1 %1, label %for.body31, label %for.end70

for.body31:                                       ; preds = %land.rhs
  %call34 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.1300) #5
  %2 = bitcast i8* %call34 to %struct.x509_st*
  %call35 = tail call i32 @X509_get_extension_flags(%struct.x509_st* noundef %2) #5
  %and36 = and i32 %call35, 2048
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end39, label %cleanup178

if.end39:                                         ; preds = %for.body31
  %call40 = tail call %struct.X509_POLICY_CACHE_st* @ossl_policy_cache_set(%struct.x509_st* noundef %2) #5
  %and41 = and i32 %ret.0301, 1
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end39
  %data43 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %call40, i64 0, i32 1
  %3 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data43, align 8, !tbaa !27
  %cmp44 = icmp eq %struct.stack_st_X509_POLICY_DATA* %3, null
  %spec.select = select i1 %cmp44, i32 2, i32 %ret.0301
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true, %if.end39
  %ret.1 = phi i32 [ %ret.0301, %if.end39 ], [ %spec.select, %land.lhs.true ]
  br i1 %cmp28, label %if.then48, label %for.inc68

if.then48:                                        ; preds = %if.end46
  %and49 = lshr i32 %call35, 5
  %4 = and i32 %and49, 1
  %sext292 = add nsw i32 %explicit_policy.0299, -1
  %spec.select274 = add nuw nsw i32 %sext292, %4
  %explicit_skip = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %call40, i64 0, i32 3
  %5 = load i64, i64* %explicit_skip, align 8, !tbaa !30
  %cmp54 = icmp sgt i64 %5, -1
  %conv290 = zext i32 %spec.select274 to i64
  %cmp57 = icmp slt i64 %5, %conv290
  %or.cond275 = select i1 %cmp54, i1 %cmp57, i1 false
  %conv61 = trunc i64 %5 to i32
  %spec.select281 = select i1 %or.cond275, i32 %conv61, i32 %spec.select274
  br label %for.inc68

for.inc68:                                        ; preds = %if.then48, %if.end46
  %explicit_policy.3.ph = phi i32 [ %spec.select281, %if.then48 ], [ %explicit_policy.0299, %if.end46 ]
  %dec69 = add nsw i32 %i.1300, -1
  %cmp27 = icmp sgt i32 %i.1300, 0
  br i1 %cmp27, label %land.rhs, label %for.end70, !llvm.loop !31

for.end70:                                        ; preds = %land.rhs, %for.inc68, %if.end, %for.cond26.preheader
  %explicit_policy.0.lcssa = phi i32 [ %cond, %for.cond26.preheader ], [ %cond, %if.end ], [ %explicit_policy.3.ph, %for.inc68 ], [ %explicit_policy.0299, %land.rhs ]
  %ret.0.lcssa = phi i32 [ 1, %for.cond26.preheader ], [ 1, %if.end ], [ %ret.1, %for.inc68 ], [ %ret.0301, %land.rhs ]
  %cmp71 = icmp eq i32 %explicit_policy.0.lcssa, 0
  %or = or i32 %ret.0.lcssa, 4
  %spec.select276 = select i1 %cmp71, i32 %or, i32 %ret.0.lcssa
  %and75 = and i32 %spec.select276, 1
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %cleanup178, label %if.end79

if.end79:                                         ; preds = %for.end70
  %call80 = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 161) #5
  %6 = bitcast i8* %call80 to %struct.X509_POLICY_TREE_st*
  %cmp81 = icmp eq i8* %call80, null
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tree_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup178

if.end84:                                         ; preds = %if.end79
  %conv86 = sext i32 %call1 to i64
  %mul = shl nsw i64 %conv86, 5
  %call87 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 173) #5
  %7 = bitcast i8* %call80 to i8**
  store i8* %call87, i8** %7, align 8, !tbaa !12
  %cmp88 = icmp eq i8* %call87, null
  %8 = bitcast i8* %call87 to %struct.X509_POLICY_LEVEL_st*
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end84
  tail call void @CRYPTO_free(i8* noundef nonnull %call80, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 174) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tree_init, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup178

if.end91:                                         ; preds = %if.end84
  %nlevel = getelementptr inbounds i8, i8* %call80, i64 8
  %9 = bitcast i8* %nlevel to i32*
  store i32 %call1, i32* %9, align 8, !tbaa !11
  %call94 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 746) #5
  %call95 = tail call %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef null, %struct.asn1_object_st* noundef %call94, i32 noundef 0) #5
  %cmp96 = icmp eq %struct.X509_POLICY_DATA_st* %call95, null
  br i1 %cmp96, label %bad_tree, label %if.end99

if.end99:                                         ; preds = %if.end91
  %call100 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef nonnull %8, %struct.X509_POLICY_DATA_st* noundef nonnull %call95, %struct.X509_POLICY_NODE_st* noundef null, %struct.X509_POLICY_TREE_st* noundef nonnull %6) #5
  %cmp101 = icmp eq %struct.X509_POLICY_NODE_st* %call100, null
  br i1 %cmp101, label %if.then103, label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %if.end99
  br i1 %cmp17296, label %for.body109, label %for.end177

if.then103:                                       ; preds = %if.end99
  tail call void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef nonnull %call95) #5
  br label %bad_tree

for.body109:                                      ; preds = %for.cond106.preheader, %if.end174
  %level.0310 = phi %struct.X509_POLICY_LEVEL_st* [ %incdec.ptr, %if.end174 ], [ %8, %for.cond106.preheader ]
  %i.2308 = phi i32 [ %dec176, %if.end174 ], [ %sub16, %for.cond106.preheader ]
  %map_skip.0307 = phi i32 [ %map_skip.2, %if.end174 ], [ %cond15, %for.cond106.preheader ]
  %any_skip.0306 = phi i32 [ %any_skip.2, %if.end174 ], [ %cond8, %for.cond106.preheader ]
  %call112 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.2308) #5
  %10 = bitcast i8* %call112 to %struct.x509_st*
  %call114 = tail call i32 @X509_get_extension_flags(%struct.x509_st* noundef %10) #5
  %call115 = tail call %struct.X509_POLICY_CACHE_st* @ossl_policy_cache_set(%struct.x509_st* noundef %10) #5
  %call116 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %10) #5
  %incdec.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level.0310, i64 1
  %11 = bitcast %struct.X509_POLICY_LEVEL_st* %incdec.ptr to i8**
  store i8* %call112, i8** %11, align 8, !tbaa !13
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %call115, i64 0, i32 0
  %12 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !32
  %tobool117.not = icmp eq %struct.X509_POLICY_DATA_st* %12, null
  br i1 %tobool117.not, label %if.then118, label %if.end121

if.then118:                                       ; preds = %for.body109
  %flags119 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level.0310, i64 1, i32 3
  %13 = load i32, i32* %flags119, align 8, !tbaa !33
  %or120 = or i32 %13, 512
  store i32 %or120, i32* %flags119, align 8, !tbaa !33
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %for.body109
  %cmp122 = icmp eq i32 %any_skip.0306, 0
  br i1 %cmp122, label %if.then124, label %if.else

if.then124:                                       ; preds = %if.end121
  %and125 = and i32 %call114, 32
  %tobool126 = icmp eq i32 %and125, 0
  %cmp127 = icmp eq i32 %i.2308, 0
  %or.cond = or i1 %tobool126, %cmp127
  br i1 %or.cond, label %if.then129, label %if.end150

if.then129:                                       ; preds = %if.then124
  %flags130 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level.0310, i64 1, i32 3
  %14 = load i32, i32* %flags130, align 8, !tbaa !33
  %or131 = or i32 %14, 512
  store i32 %or131, i32* %flags130, align 8, !tbaa !33
  br label %if.end150

if.else:                                          ; preds = %if.end121
  %and133 = lshr i32 %call114, 5
  %15 = and i32 %and133, 1
  %sext = add i32 %any_skip.0306, -1
  %spec.select277 = add nuw i32 %sext, %15
  %any_skip138 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %call115, i64 0, i32 2
  %16 = load i64, i64* %any_skip138, align 8, !tbaa !34
  %cmp139 = icmp sgt i64 %16, -1
  %conv143 = sext i32 %spec.select277 to i64
  %cmp144 = icmp slt i64 %16, %conv143
  %or.cond278 = select i1 %cmp139, i1 %cmp144, i1 false
  %conv148 = trunc i64 %16 to i32
  %spec.select282 = select i1 %or.cond278, i32 %conv148, i32 %spec.select277
  br label %if.end150

if.end150:                                        ; preds = %if.else, %if.then129, %if.then124
  %any_skip.2 = phi i32 [ 0, %if.then129 ], [ 0, %if.then124 ], [ %spec.select282, %if.else ]
  %cmp151 = icmp eq i32 %map_skip.0307, 0
  br i1 %cmp151, label %if.then153, label %if.else156

if.then153:                                       ; preds = %if.end150
  %flags154 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level.0310, i64 1, i32 3
  %17 = load i32, i32* %flags154, align 8, !tbaa !33
  %or155 = or i32 %17, 1024
  store i32 %or155, i32* %flags154, align 8, !tbaa !33
  br label %if.end174

if.else156:                                       ; preds = %if.end150
  %and157 = lshr i32 %call114, 5
  %18 = and i32 %and157, 1
  %sext291 = add i32 %map_skip.0307, -1
  %spec.select279 = add nuw i32 %sext291, %18
  %map_skip162 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %call115, i64 0, i32 4
  %19 = load i64, i64* %map_skip162, align 8, !tbaa !35
  %cmp163 = icmp sgt i64 %19, -1
  %conv167 = sext i32 %spec.select279 to i64
  %cmp168 = icmp slt i64 %19, %conv167
  %or.cond280 = select i1 %cmp163, i1 %cmp168, i1 false
  %conv172 = trunc i64 %19 to i32
  %spec.select283 = select i1 %or.cond280, i32 %conv172, i32 %spec.select279
  br label %if.end174

if.end174:                                        ; preds = %if.else156, %if.then153
  %map_skip.2 = phi i32 [ 0, %if.then153 ], [ %spec.select283, %if.else156 ]
  %dec176 = add nsw i32 %i.2308, -1
  %cmp107 = icmp sgt i32 %i.2308, 0
  br i1 %cmp107, label %for.body109, label %for.end177, !llvm.loop !36

for.end177:                                       ; preds = %if.end174, %for.cond106.preheader
  %20 = bitcast %struct.X509_POLICY_TREE_st** %ptree to i8**
  store i8* %call80, i8** %20, align 8, !tbaa !24
  br label %cleanup178

bad_tree:                                         ; preds = %if.end91, %if.then103
  tail call void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef nonnull %6) #4
  br label %cleanup178

cleanup178:                                       ; preds = %for.body, %for.body31, %for.end70, %entry, %bad_tree, %for.end177, %if.then90, %if.then83
  %retval.4 = phi i32 [ 0, %if.then83 ], [ 0, %if.then90 ], [ 0, %bad_tree ], [ %spec.select276, %for.end177 ], [ 2, %entry ], [ %spec.select276, %for.end70 ], [ -1, %for.body31 ], [ 0, %for.body ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_evaluate(%struct.X509_POLICY_TREE_st* noundef %tree) unnamed_addr #0 {
entry:
  %nlevel = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 1
  %0 = load i32, i32* %nlevel, align 8, !tbaa !11
  %cmp31 = icmp sgt i32 %0, 1
  br i1 %cmp31, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %levels = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 0
  %1 = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !12
  br label %for.body

for.cond:                                         ; preds = %do.body
  %2 = load i32, i32* %nlevel, align 8, !tbaa !11
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !37

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.033 = phi i32 [ %inc, %for.cond ], [ 1, %for.body.preheader ]
  %.pn32 = phi %struct.X509_POLICY_LEVEL_st* [ %curr.034, %for.cond ], [ %1, %for.body.preheader ]
  %curr.034 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %.pn32, i64 1
  %cert = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.034, i64 0, i32 0
  %3 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  %call = tail call %struct.X509_POLICY_CACHE_st* @ossl_policy_cache_set(%struct.x509_st* noundef %3) #5
  %call1 = tail call fastcc i32 @tree_link_nodes(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr.034, %struct.X509_POLICY_CACHE_st* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %flags = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %.pn32, i64 1, i32 3
  %4 = load i32, i32* %flags, align 8, !tbaa !33
  %and = and i32 %4, 512
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call fastcc i32 @tree_link_any(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr.034, %struct.X509_POLICY_CACHE_st* noundef %call, %struct.X509_POLICY_TREE_st* noundef nonnull %tree) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end, %land.lhs.true
  %call7 = tail call fastcc i32 @tree_prune(%struct.X509_POLICY_TREE_st* noundef nonnull %tree, %struct.X509_POLICY_LEVEL_st* noundef nonnull %curr.034) #4
  %cmp8.not = icmp eq i32 %call7, 1
  %inc = add nuw nsw i32 %i.033, 1
  br i1 %cmp8.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body, %land.lhs.true, %do.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ %call7, %do.body ], [ 0, %land.lhs.true ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_calculate_authority_set(%struct.X509_POLICY_TREE_st* noundef %tree, %struct.stack_st_X509_POLICY_NODE** noundef %pnodes) unnamed_addr #0 {
entry:
  %levels = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 0
  %0 = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !12
  %nlevel = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 1
  %1 = load i32, i32* %nlevel, align 8, !tbaa !11
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %0, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %add.ptr, i64 -1
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %add.ptr1, i64 0, i32 2
  %2 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !16
  %tobool.not = icmp eq %struct.X509_POLICY_NODE_st* %2, null
  %auth_policies5 = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 3
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @tree_add_auth_node(%struct.stack_st_X509_POLICY_NODE** noundef nonnull %auth_policies5, %struct.X509_POLICY_NODE_st* noundef nonnull %2) #4
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  %.pre = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !12
  %.pre78 = load i32, i32* %nlevel, align 8, !tbaa !11
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then.if.end6_crit_edge
  %3 = phi i32 [ %.pre78, %if.then.if.end6_crit_edge ], [ %1, %entry ]
  %4 = phi %struct.X509_POLICY_LEVEL_st* [ %.pre, %if.then.if.end6_crit_edge ], [ %0, %entry ]
  %addnodes.0 = phi %struct.stack_st_X509_POLICY_NODE** [ %pnodes, %if.then.if.end6_crit_edge ], [ %auth_policies5, %entry ]
  %cmp75 = icmp sgt i32 %3, 1
  br i1 %cmp75, label %for.body, label %for.end32

for.body:                                         ; preds = %if.end6, %for.inc30
  %i.077 = phi i32 [ %inc31, %for.inc30 ], [ 1, %if.end6 ]
  %curr.076 = phi %struct.X509_POLICY_LEVEL_st* [ %incdec.ptr, %for.inc30 ], [ %4, %if.end6 ]
  %anyPolicy9 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.076, i64 0, i32 2
  %5 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy9, align 8, !tbaa !16
  %cmp10 = icmp eq %struct.X509_POLICY_NODE_st* %5, null
  br i1 %cmp10, label %for.end32, label %if.end12

if.end12:                                         ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.076, i64 1
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.076, i64 1, i32 1
  %6 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call1471 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %6) #4
  %call1572 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1471) #5
  %cmp1673 = icmp sgt i32 %call1572, 0
  br i1 %cmp1673, label %for.body17, label %for.inc30

for.body17:                                       ; preds = %if.end12, %for.inc
  %j.074 = phi i32 [ %inc, %for.inc ], [ 0, %if.end12 ]
  %7 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %7) #4
  %call20 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef %j.074) #5
  %parent = getelementptr inbounds i8, i8* %call20, i64 8
  %8 = bitcast i8* %parent to %struct.X509_POLICY_NODE_st**
  %9 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %8, align 8, !tbaa !38
  %cmp21 = icmp eq %struct.X509_POLICY_NODE_st* %9, %5
  br i1 %cmp21, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body17
  %10 = bitcast i8* %call20 to %struct.X509_POLICY_NODE_st*
  %call22 = tail call fastcc i32 @tree_add_auth_node(%struct.stack_st_X509_POLICY_NODE** noundef %addnodes.0, %struct.X509_POLICY_NODE_st* noundef %10) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %for.inc

if.then24:                                        ; preds = %land.lhs.true
  %cmp25 = icmp eq %struct.stack_st_X509_POLICY_NODE** %addnodes.0, %pnodes
  br i1 %cmp25, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.then24
  %11 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %pnodes, align 8, !tbaa !24
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %11) #4
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call27) #5
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body17, %land.lhs.true
  %inc = add nuw nsw i32 %j.074, 1
  %12 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %12) #4
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #5
  %cmp16 = icmp slt i32 %inc, %call15
  br i1 %cmp16, label %for.body17, label %for.inc30, !llvm.loop !39

for.inc30:                                        ; preds = %for.inc, %if.end12
  %inc31 = add nuw nsw i32 %i.077, 1
  %13 = load i32, i32* %nlevel, align 8, !tbaa !11
  %cmp = icmp slt i32 %inc31, %13
  br i1 %cmp, label %for.body, label %for.end32, !llvm.loop !40

for.end32:                                        ; preds = %for.inc30, %for.body, %if.end6
  %cmp33 = icmp eq %struct.stack_st_X509_POLICY_NODE** %addnodes.0, %pnodes
  br i1 %cmp33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %for.end32
  %auth_policies36 = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 3
  %14 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %auth_policies36, align 8, !tbaa !4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end35, %if.then26
  %.sink = phi %struct.stack_st_X509_POLICY_NODE* [ null, %if.then26 ], [ %14, %if.end35 ]
  %retval.0.ph = phi i32 [ 0, %if.then26 ], [ 1, %if.end35 ]
  store %struct.stack_st_X509_POLICY_NODE* %.sink, %struct.stack_st_X509_POLICY_NODE** %pnodes, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end32, %if.then24, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then24 ], [ 2, %for.end32 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_calculate_user_set(%struct.X509_POLICY_TREE_st* noundef %tree, %struct.stack_st_ASN1_OBJECT* noundef %policy_oids, %struct.stack_st_X509_POLICY_NODE* noundef %auth_nodes) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %policy_oids) #4
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %levels = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 0
  %0 = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !12
  %nlevel = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 1
  %1 = load i32, i32* %nlevel, align 8, !tbaa !11
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %anyPolicy2 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %0, i64 %idxprom, i32 2
  %2 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy2, align 8, !tbaa !16
  %call487 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp588 = icmp sgt i32 %call487, 0
  br i1 %cmp588, label %for.body, label %for.cond12.preheader

for.cond:                                         ; preds = %for.body
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.cond12.preheader, !llvm.loop !41

for.cond12.preheader:                             ; preds = %for.cond, %if.end
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %2, i64 0, i32 0
  %call1490 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp1591 = icmp sgt i32 %call1490, 0
  br i1 %cmp1591, label %for.body16.lr.ph, label %cleanup

for.body16.lr.ph:                                 ; preds = %for.cond12.preheader
  %tobool21.not = icmp eq %struct.X509_POLICY_NODE_st* %2, null
  %parent = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %2, i64 0, i32 1
  %user_policies = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 4
  %3 = bitcast %struct.stack_st_X509_POLICY_NODE** %user_policies to %struct.stack_st**
  br label %for.body16

for.body:                                         ; preds = %if.end, %for.cond
  %i.089 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.089) #5
  %4 = bitcast i8* %call7 to %struct.asn1_object_st*
  %call8 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %4) #5
  %cmp9 = icmp eq i32 %call8, 746
  %inc = add nuw nsw i32 %i.089, 1
  br i1 %cmp9, label %if.then10, label %for.cond

if.then10:                                        ; preds = %for.body
  %flags = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 5
  %5 = load i32, i32* %flags, align 8, !tbaa !42
  %or = or i32 %5, 2
  store i32 %or, i32* %flags, align 8, !tbaa !42
  br label %cleanup

for.body16:                                       ; preds = %for.body16.lr.ph, %for.inc50
  %i.192 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc51, %for.inc50 ]
  %call18 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.192) #5
  %6 = bitcast i8* %call18 to %struct.asn1_object_st*
  %call19 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_tree_find_sk(%struct.stack_st_X509_POLICY_NODE* noundef %auth_nodes, %struct.asn1_object_st* noundef %6) #5
  %tobool.not = icmp eq %struct.X509_POLICY_NODE_st* %call19, null
  br i1 %tobool.not, label %if.then20, label %if.end33

if.then20:                                        ; preds = %for.body16
  br i1 %tobool21.not, label %for.inc50, label %if.end23

if.end23:                                         ; preds = %if.then20
  %7 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !20
  %flags24 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %7, i64 0, i32 0
  %8 = load i32, i32* %flags24, align 8, !tbaa !22
  %and = and i32 %8, 16
  %call25 = tail call %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef null, %struct.asn1_object_st* noundef %6, i32 noundef %and) #5
  %cmp26 = icmp eq %struct.X509_POLICY_DATA_st* %call25, null
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end23
  %9 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !20
  %qualifier_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %9, i64 0, i32 2
  %10 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifier_set, align 8, !tbaa !43
  %qualifier_set30 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call25, i64 0, i32 2
  store %struct.stack_st_POLICYQUALINFO* %10, %struct.stack_st_POLICYQUALINFO** %qualifier_set30, align 8, !tbaa !43
  %flags31 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call25, i64 0, i32 0
  store i32 12, i32* %flags31, align 8, !tbaa !22
  %11 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %parent, align 8, !tbaa !38
  %call32 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef null, %struct.X509_POLICY_DATA_st* noundef nonnull %call25, %struct.X509_POLICY_NODE_st* noundef %11, %struct.X509_POLICY_TREE_st* noundef %tree) #5
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %for.body16
  %node.0 = phi %struct.X509_POLICY_NODE_st* [ %call19, %for.body16 ], [ %call32, %if.end28 ]
  %12 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %user_policies, align 8, !tbaa !10
  %tobool34.not = icmp eq %struct.stack_st_X509_POLICY_NODE* %12, null
  br i1 %tobool34.not, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end33
  %call36 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  store %struct.stack_st* %call36, %struct.stack_st** %3, align 8, !tbaa !10
  %tobool39.not = icmp eq %struct.stack_st* %call36, null
  %13 = bitcast %struct.stack_st* %call36 to %struct.stack_st_X509_POLICY_NODE*
  br i1 %tobool39.not, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.then35, %if.end33
  %14 = phi %struct.stack_st_X509_POLICY_NODE* [ %13, %if.then35 ], [ %12, %if.end33 ]
  %call44 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %14) #4
  %15 = bitcast %struct.X509_POLICY_NODE_st* %node.0 to i8*
  %call46 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call44, i8* noundef %15) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup, label %for.inc50

for.inc50:                                        ; preds = %if.end42, %if.then20
  %inc51 = add nuw nsw i32 %i.192, 1
  %call14 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp15 = icmp slt i32 %inc51, %call14
  br i1 %cmp15, label %for.body16, label %cleanup, !llvm.loop !44

cleanup:                                          ; preds = %if.end23, %if.then35, %if.end42, %for.inc50, %for.cond12.preheader, %entry, %if.then10
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 1, %entry ], [ 1, %for.cond12.preheader ], [ 0, %if.end23 ], [ 1, %if.then35 ], [ 0, %if.end42 ], [ 1, %for.inc50 ]
  ret i32 %retval.0
}

declare %struct.stack_st_X509_POLICY_NODE* @X509_policy_tree_get0_user_policies(%struct.X509_POLICY_TREE_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_NODE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_POLICY_CACHE_st* @ossl_policy_cache_set(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_get_extension_flags(%struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef, %struct.X509_POLICY_DATA_st* noundef, %struct.X509_POLICY_NODE_st* noundef, %struct.X509_POLICY_TREE_st* noundef) local_unnamed_addr #2

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_link_nodes(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_CACHE_st* nocapture noundef readonly %cache) unnamed_addr #0 {
entry:
  %data = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %cache, i64 0, i32 1
  %0 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data, align 8, !tbaa !27
  %call11 = tail call fastcc i32 @sk_X509_POLICY_DATA_num(%struct.stack_st_X509_POLICY_DATA* noundef %0) #4
  %cmp12 = icmp sgt i32 %call11, 0
  br i1 %cmp12, label %for.body, label %cleanup5

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data, align 8, !tbaa !27
  %call = tail call fastcc i32 @sk_X509_POLICY_DATA_num(%struct.stack_st_X509_POLICY_DATA* noundef %1) #4
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %cleanup5, !llvm.loop !45

for.body:                                         ; preds = %entry, %for.cond
  %i.013 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %2 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data, align 8, !tbaa !27
  %call3 = tail call fastcc %struct.X509_POLICY_DATA_st* @sk_X509_POLICY_DATA_value(%struct.stack_st_X509_POLICY_DATA* noundef %2, i32 noundef %i.013) #4
  %call4 = tail call fastcc i32 @tree_link_matching_nodes(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_DATA_st* noundef %call3) #4
  %tobool.not = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.013, 1
  br i1 %tobool.not, label %cleanup5, label %for.cond

cleanup5:                                         ; preds = %for.body, %for.cond, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_link_any(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_CACHE_st* nocapture noundef readonly %cache, %struct.X509_POLICY_TREE_st* noundef %tree) unnamed_addr #0 {
entry:
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 -1, i32 1
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %0) #4
  %call127 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call26) #5
  %cmp28 = icmp sgt i32 %call127, 0
  br i1 %cmp28, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %1) #4
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !46

for.body:                                         ; preds = %entry, %for.cond
  %i.029 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %2 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %2) #4
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.029) #5
  %3 = bitcast i8* %call4 to %struct.X509_POLICY_NODE_st*
  %call5 = tail call fastcc i32 @tree_link_unmatched(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr, %struct.X509_POLICY_CACHE_st* noundef %cache, %struct.X509_POLICY_NODE_st* noundef %3, %struct.X509_POLICY_TREE_st* noundef %tree) #4
  %tobool.not = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.029, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 -1, i32 2
  %4 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !16
  %tobool6.not = icmp eq %struct.X509_POLICY_NODE_st* %4, null
  br i1 %tobool6.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %anyPolicy7 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %cache, i64 0, i32 0
  %5 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy7, align 8, !tbaa !32
  %call9 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr, %struct.X509_POLICY_DATA_st* noundef %5, %struct.X509_POLICY_NODE_st* noundef nonnull %4, %struct.X509_POLICY_TREE_st* noundef null) #5
  %cmp10 = icmp eq %struct.X509_POLICY_NODE_st* %call9, null
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %for.end
  br label %cleanup

cleanup:                                          ; preds = %for.body, %land.lhs.true, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %land.lhs.true ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_prune(%struct.X509_POLICY_TREE_st* nocapture noundef readonly %tree, %struct.X509_POLICY_LEVEL_st* noundef %curr) unnamed_addr #0 {
entry:
  %nodes1 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 0, i32 1
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes1, align 8, !tbaa !15
  %flags = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 0, i32 3
  %1 = load i32, i32* %flags, align 8, !tbaa !33
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %0) #4
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp95 = icmp sgt i32 %call2, 0
  br i1 %cmp95, label %for.body, label %if.end12

for.body:                                         ; preds = %if.then, %for.inc
  %i.096.in = phi i32 [ %i.096, %for.inc ], [ %call2, %if.then ]
  %i.096 = add nsw i32 %i.096.in, -1
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.096) #5
  %data = bitcast i8* %call4 to %struct.X509_POLICY_DATA_st**
  %2 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !20
  %flags5 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %2, i64 0, i32 0
  %3 = load i32, i32* %flags5, align 8, !tbaa !22
  %and6 = and i32 %3, 3
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %parent = getelementptr inbounds i8, i8* %call4, i64 8
  %4 = bitcast i8* %parent to %struct.X509_POLICY_NODE_st**
  %5 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %4, align 8, !tbaa !38
  %nchild = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %5, i64 0, i32 2
  %6 = load i32, i32* %nchild, align 8, !tbaa !47
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %nchild, align 8, !tbaa !47
  tail call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 400) #5
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %0) #4
  %call10 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call9, i32 noundef %i.096) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %cmp = icmp ugt i32 %i.096.in, 1
  br i1 %cmp, label %for.body, label %if.end12, !llvm.loop !48

if.end12:                                         ; preds = %for.inc, %if.then, %entry
  %levels = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 0
  br label %for.cond13

for.cond13:                                       ; preds = %if.end51, %if.end12
  %curr.addr.0 = phi %struct.X509_POLICY_LEVEL_st* [ %curr, %if.end12 ], [ %incdec.ptr, %if.end51 ]
  %incdec.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.addr.0, i64 -1
  %nodes14 = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.addr.0, i64 -1, i32 1
  %7 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes14, align 8, !tbaa !15
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %7) #4
  %call16 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call15) #5
  %cmp1998 = icmp sgt i32 %call16, 0
  br i1 %cmp1998, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond13, %for.inc32
  %i.199.in = phi i32 [ %i.199, %for.inc32 ], [ %call16, %for.cond13 ]
  %i.199 = add nsw i32 %i.199.in, -1
  %call22 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call15, i32 noundef %i.199) #5
  %nchild23 = getelementptr inbounds i8, i8* %call22, i64 16
  %8 = bitcast i8* %nchild23 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !47
  %cmp24 = icmp eq i32 %9, 0
  br i1 %cmp24, label %if.then25, label %for.inc32

if.then25:                                        ; preds = %for.body20
  %parent26 = getelementptr inbounds i8, i8* %call22, i64 8
  %10 = bitcast i8* %parent26 to %struct.X509_POLICY_NODE_st**
  %11 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %10, align 8, !tbaa !38
  %nchild27 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %11, i64 0, i32 2
  %12 = load i32, i32* %nchild27, align 8, !tbaa !47
  %dec28 = add nsw i32 %12, -1
  store i32 %dec28, i32* %nchild27, align 8, !tbaa !47
  tail call void @CRYPTO_free(i8* noundef nonnull %call22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 413) #5
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %7) #4
  %call30 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call29, i32 noundef %i.199) #5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body20, %if.then25
  %cmp19 = icmp ugt i32 %i.199.in, 1
  br i1 %cmp19, label %for.body20, label %for.end34, !llvm.loop !49

for.end34:                                        ; preds = %for.inc32, %for.cond13
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr.addr.0, i64 -1, i32 2
  %13 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !16
  %tobool35.not = icmp eq %struct.X509_POLICY_NODE_st* %13, null
  %14 = bitcast %struct.X509_POLICY_NODE_st* %13 to i8*
  br i1 %tobool35.not, label %if.end51, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end34
  %nchild37 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %13, i64 0, i32 2
  %15 = load i32, i32* %nchild37, align 8, !tbaa !47
  %tobool38.not = icmp eq i32 %15, 0
  br i1 %tobool38.not, label %if.then39, label %if.end51

if.then39:                                        ; preds = %land.lhs.true
  %parent41 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %13, i64 0, i32 1
  %16 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %parent41, align 8, !tbaa !38
  %tobool42.not = icmp eq %struct.X509_POLICY_NODE_st* %16, null
  br i1 %tobool42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.then39
  %nchild46 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %16, i64 0, i32 2
  %17 = load i32, i32* %nchild46, align 8, !tbaa !47
  %dec47 = add nsw i32 %17, -1
  store i32 %dec47, i32* %nchild46, align 8, !tbaa !47
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then39
  tail call void @CRYPTO_free(i8* noundef nonnull %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 420) #5
  store %struct.X509_POLICY_NODE_st* null, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !16
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %land.lhs.true, %for.end34
  %18 = phi %struct.X509_POLICY_NODE_st* [ null, %if.end48 ], [ %13, %land.lhs.true ], [ null, %for.end34 ]
  %19 = load %struct.X509_POLICY_LEVEL_st*, %struct.X509_POLICY_LEVEL_st** %levels, align 8, !tbaa !12
  %cmp52 = icmp eq %struct.X509_POLICY_LEVEL_st* %incdec.ptr, %19
  br i1 %cmp52, label %if.then53, label %for.cond13

if.then53:                                        ; preds = %if.end51
  %tobool55.not = icmp eq %struct.X509_POLICY_NODE_st* %18, null
  %. = select i1 %tobool55.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_X509_POLICY_DATA_num(%struct.stack_st_X509_POLICY_DATA* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_POLICY_DATA_st* @sk_X509_POLICY_DATA_value(%struct.stack_st_X509_POLICY_DATA* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.X509_POLICY_DATA_st*
  ret %struct.X509_POLICY_DATA_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_link_matching_nodes(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_DATA_st* noundef %data) unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 -1
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 -1, i32 1
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call41 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %0) #4
  %call142 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call41) #5
  %cmp43 = icmp sgt i32 %call142, 0
  br i1 %cmp43, label %for.body.lr.ph, label %land.lhs.true

for.body.lr.ph:                                   ; preds = %entry
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %matched.045 = phi i32 [ 0, %for.body.lr.ph ], [ %matched.1, %for.inc ]
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %1) #4
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.044) #5
  %2 = bitcast i8* %call4 to %struct.X509_POLICY_NODE_st*
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !50
  %call5 = tail call i32 @ossl_policy_node_match(%struct.X509_POLICY_LEVEL_st* noundef nonnull %add.ptr, %struct.X509_POLICY_NODE_st* noundef %2, %struct.asn1_object_st* noundef %3) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call6 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr, %struct.X509_POLICY_DATA_st* noundef nonnull %data, %struct.X509_POLICY_NODE_st* noundef %2, %struct.X509_POLICY_TREE_st* noundef null) #5
  %cmp7 = icmp eq %struct.X509_POLICY_NODE_st* %call6, null
  br i1 %cmp7, label %cleanup19, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %matched.1 = phi i32 [ %matched.045, %for.body ], [ 1, %if.then ]
  %inc = add nuw nsw i32 %i.044, 1
  %4 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !15
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %4) #4
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #5
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !51

for.end:                                          ; preds = %for.inc
  %tobool10.not = icmp eq i32 %matched.1, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry, %for.end
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 -1, i32 2
  %5 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !16
  %tobool11.not = icmp eq %struct.X509_POLICY_NODE_st* %5, null
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %call14 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr, %struct.X509_POLICY_DATA_st* noundef %data, %struct.X509_POLICY_NODE_st* noundef nonnull %5, %struct.X509_POLICY_TREE_st* noundef null) #5
  %cmp15 = icmp eq %struct.X509_POLICY_NODE_st* %call14, null
  br i1 %cmp15, label %cleanup19, label %if.end18

if.end18:                                         ; preds = %if.then12, %land.lhs.true, %for.end
  br label %cleanup19

cleanup19:                                        ; preds = %if.then, %if.then12, %if.end18
  %retval.2 = phi i32 [ 1, %if.end18 ], [ 0, %if.then12 ], [ 0, %if.then ]
  ret i32 %retval.2
}

declare i32 @ossl_policy_node_match(%struct.X509_POLICY_LEVEL_st* noundef, %struct.X509_POLICY_NODE_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_link_unmatched(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_CACHE_st* nocapture noundef readonly %cache, %struct.X509_POLICY_NODE_st* noundef %node, %struct.X509_POLICY_TREE_st* noundef %tree) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %curr, i64 -1, i32 3
  %0 = load i32, i32* %flags, align 8, !tbaa !33
  %and = and i32 %0, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %1 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !20
  %flags1 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %1, i64 0, i32 0
  %2 = load i32, i32* %flags1, align 8, !tbaa !22
  %and2 = and i32 %2, 1
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %nchild = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 2
  %3 = load i32, i32* %nchild, align 8, !tbaa !47
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end, label %cleanup32

if.end:                                           ; preds = %if.then
  %call = tail call fastcc i32 @tree_add_unmatched(%struct.X509_POLICY_LEVEL_st* noundef nonnull %curr, %struct.X509_POLICY_CACHE_st* noundef %cache, %struct.asn1_object_st* noundef null, %struct.X509_POLICY_NODE_st* noundef nonnull %node, %struct.X509_POLICY_TREE_st* noundef %tree) #4
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cleanup32, label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %expected_policy_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %1, i64 0, i32 3
  %4 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %expected_policy_set, align 8, !tbaa !52
  %nchild10 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 2
  %5 = load i32, i32* %nchild10, align 8, !tbaa !47
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %4) #4
  %call12 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #5
  %cmp = icmp eq i32 %5, %call12
  br i1 %cmp, label %cleanup32, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %call1659 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #5
  %cmp1760 = icmp sgt i32 %call1659, 0
  br i1 %cmp1760, label %for.body, label %if.end31

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.061 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call11, i32 noundef %i.061) #5
  %6 = bitcast i8* %call19 to %struct.asn1_object_st*
  %call20 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_find_node(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_NODE_st* noundef %node, %struct.asn1_object_st* noundef %6) #5
  %tobool21.not = icmp eq %struct.X509_POLICY_NODE_st* %call20, null
  br i1 %tobool21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %for.body
  %call24 = tail call fastcc i32 @tree_add_unmatched(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_CACHE_st* noundef %cache, %struct.asn1_object_st* noundef %6, %struct.X509_POLICY_NODE_st* noundef %node, %struct.X509_POLICY_TREE_st* noundef %tree) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup32, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end23
  %inc = add nuw nsw i32 %i.061, 1
  %call16 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call11) #5
  %cmp17 = icmp slt i32 %inc, %call16
  br i1 %cmp17, label %for.body, label %if.end31, !llvm.loop !53

if.end31:                                         ; preds = %for.inc, %for.cond.preheader, %if.end
  br label %cleanup32

cleanup32:                                        ; preds = %if.end23, %if.else, %if.end, %if.then, %if.end31
  %retval.3 = phi i32 [ 1, %if.end31 ], [ 1, %if.then ], [ 0, %if.end ], [ 1, %if.else ], [ 0, %if.end23 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_add_unmatched(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_CACHE_st* nocapture noundef readonly %cache, %struct.asn1_object_st* noundef %id, %struct.X509_POLICY_NODE_st* noundef %node, %struct.X509_POLICY_TREE_st* noundef %tree) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_object_st* %id, null
  %data1 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data1, align 8, !tbaa !20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !50
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %id.addr.0 = phi %struct.asn1_object_st* [ %1, %if.then ], [ %id, %entry ]
  %flags = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %2, 16
  %call = tail call %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef null, %struct.asn1_object_st* noundef %id.addr.0, i32 noundef %and) #5
  %cmp3 = icmp eq %struct.X509_POLICY_DATA_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %cache, i64 0, i32 0
  %3 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !32
  %qualifier_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %3, i64 0, i32 2
  %4 = load %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_POLICYQUALINFO** %qualifier_set, align 8, !tbaa !43
  %qualifier_set6 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call, i64 0, i32 2
  store %struct.stack_st_POLICYQUALINFO* %4, %struct.stack_st_POLICYQUALINFO** %qualifier_set6, align 8, !tbaa !43
  %flags7 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call, i64 0, i32 0
  %5 = load i32, i32* %flags7, align 8, !tbaa !22
  %or = or i32 %5, 4
  store i32 %or, i32* %flags7, align 8, !tbaa !22
  %call8 = tail call %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef %curr, %struct.X509_POLICY_DATA_st* noundef nonnull %call, %struct.X509_POLICY_NODE_st* noundef nonnull %node, %struct.X509_POLICY_TREE_st* noundef %tree) #5
  %cmp9 = icmp eq %struct.X509_POLICY_NODE_st* %call8, null
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end5
  tail call void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.end ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.X509_POLICY_NODE_st* @ossl_policy_level_find_node(%struct.X509_POLICY_LEVEL_st* noundef, %struct.X509_POLICY_NODE_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tree_add_auth_node(%struct.stack_st_X509_POLICY_NODE** nocapture noundef %pnodes, %struct.X509_POLICY_NODE_st* noundef %pcy) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %pnodes, align 8, !tbaa !24
  %cmp = icmp eq %struct.stack_st_X509_POLICY_NODE* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.stack_st_X509_POLICY_NODE* @ossl_policy_node_cmp_new() #5
  store %struct.stack_st_X509_POLICY_NODE* %call, %struct.stack_st_X509_POLICY_NODE** %pnodes, align 8, !tbaa !24
  %cmp1 = icmp eq %struct.stack_st_X509_POLICY_NODE* %call, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = phi %struct.stack_st_X509_POLICY_NODE* [ %call, %land.lhs.true ], [ %0, %entry ]
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef nonnull %1) #4
  %2 = bitcast %struct.X509_POLICY_NODE_st* %pcy to i8*
  %call4 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call2, i8* noundef %2) #5
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %3 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %pnodes, align 8, !tbaa !24
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %3) #4
  %call10 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call8, i8* noundef %2) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %if.end7
  %retval.0 = phi i32 [ %conv, %if.end7 ], [ 0, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.stack_st_X509_POLICY_NODE* @ossl_policy_node_cmp_new() local_unnamed_addr #2

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.X509_POLICY_NODE_st* @ossl_policy_tree_find_sk(%struct.stack_st_X509_POLICY_NODE* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"X509_POLICY_TREE_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 32}
!11 = !{!5, !9, i64 8}
!12 = !{!5, !6, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"X509_POLICY_LEVEL_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!15 = !{!14, !6, i64 8}
!16 = !{!14, !6, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!5, !6, i64 16}
!20 = !{!21, !6, i64 0}
!21 = !{!"X509_POLICY_NODE_st", !6, i64 0, !6, i64 8, !9, i64 16}
!22 = !{!23, !9, i64 0}
!23 = !{!"X509_POLICY_DATA_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!24 = !{!6, !6, i64 0}
!25 = !{!9, !9, i64 0}
!26 = distinct !{!26, !18}
!27 = !{!28, !6, i64 8}
!28 = !{!"X509_POLICY_CACHE_st", !6, i64 0, !6, i64 8, !29, i64 16, !29, i64 24, !29, i64 32}
!29 = !{!"long", !7, i64 0}
!30 = !{!28, !29, i64 24}
!31 = distinct !{!31, !18}
!32 = !{!28, !6, i64 0}
!33 = !{!14, !9, i64 24}
!34 = !{!28, !29, i64 16}
!35 = !{!28, !29, i64 32}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!21, !6, i64 8}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = !{!5, !9, i64 40}
!43 = !{!23, !6, i64 16}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = !{!21, !9, i64 16}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = !{!23, !6, i64 8}
!51 = distinct !{!51, !18}
!52 = !{!23, !6, i64 24}
!53 = distinct !{!53, !18}
