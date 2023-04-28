; ModuleID = 'crypto/x509/pcy_node.c'
source_filename = "crypto/x509/pcy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_X509_POLICY_NODE = type opaque
%struct.stack_st = type opaque
%struct.X509_POLICY_NODE_st = type { %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.asn1_object_st = type opaque
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.X509_POLICY_LEVEL_st = type { %struct.x509_st*, %struct.stack_st_X509_POLICY_NODE*, %struct.X509_POLICY_NODE_st*, i32 }
%struct.x509_st = type opaque
%struct.X509_POLICY_TREE_st = type { %struct.X509_POLICY_LEVEL_st*, i32, %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE*, i32 }
%struct.stack_st_X509_POLICY_DATA = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/pcy_node.c\00", align 1
@__func__.ossl_policy_level_add_node = private unnamed_addr constant [27 x i8] c"ossl_policy_level_add_node\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_POLICY_NODE* @ossl_policy_node_cmp_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.X509_POLICY_NODE_st**, %struct.X509_POLICY_NODE_st**)* @node_cmp to i32 (i8*, i8*)*)) #4
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509_POLICY_NODE*
  ret %struct.stack_st_X509_POLICY_NODE* %0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @node_cmp(%struct.X509_POLICY_NODE_st** nocapture noundef readonly %a, %struct.X509_POLICY_NODE_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %a, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %0, i64 0, i32 0
  %1 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !8
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %1, i64 0, i32 1
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !11
  %3 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %b, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %3, i64 0, i32 0
  %4 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data1, align 8, !tbaa !8
  %valid_policy2 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %4, i64 0, i32 1
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy2, align 8, !tbaa !11
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %2, %struct.asn1_object_st* noundef %5) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_NODE_st* @ossl_policy_tree_find_sk(%struct.stack_st_X509_POLICY_NODE* noundef %nodes, %struct.asn1_object_st* noundef %id) local_unnamed_addr #0 {
entry:
  %n = alloca %struct.X509_POLICY_DATA_st, align 8
  %l = alloca %struct.X509_POLICY_NODE_st, align 8
  %0 = bitcast %struct.X509_POLICY_DATA_st* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #5
  %1 = bitcast %struct.X509_POLICY_NODE_st* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #5
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %n, i64 0, i32 1
  store %struct.asn1_object_st* %id, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %l, i64 0, i32 0
  store %struct.X509_POLICY_DATA_st* %n, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !8
  %call = call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %nodes) #6
  %call2 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call, i8* noundef nonnull %1) #4
  %call3 = call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %nodes) #6
  %call4 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %call2) #4
  %2 = bitcast i8* %call4 to %struct.X509_POLICY_NODE_st*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #5
  ret %struct.X509_POLICY_NODE_st* %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_NODE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_NODE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_NODE_st* @ossl_policy_level_find_node(%struct.X509_POLICY_LEVEL_st* nocapture noundef readonly %level, %struct.X509_POLICY_NODE_st* noundef readnone %parent, %struct.asn1_object_st* noundef %id) local_unnamed_addr #0 {
entry:
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 1
  %0 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !13
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %0) #6
  %call121 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call20) #4
  %cmp22 = icmp sgt i32 %call121, 0
  br i1 %cmp22, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %i.023 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !13
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %1) #6
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.023) #4
  %parent5 = getelementptr inbounds i8, i8* %call4, i64 8
  %2 = bitcast i8* %parent5 to %struct.X509_POLICY_NODE_st**
  %3 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %2, align 8, !tbaa !15
  %cmp6 = icmp eq %struct.X509_POLICY_NODE_st* %3, %parent
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %data = bitcast i8* %call4 to %struct.X509_POLICY_DATA_st**
  %4 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !8
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %4, i64 0, i32 1
  %5 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !11
  %call7 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %5, %struct.asn1_object_st* noundef %id) #4
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup.split.loop.exit18, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i32 %i.023, 1
  %6 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef %6) #6
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !16

cleanup.split.loop.exit18:                        ; preds = %if.then
  %7 = bitcast i8* %call4 to %struct.X509_POLICY_NODE_st*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %cleanup.split.loop.exit18
  %retval.0 = phi %struct.X509_POLICY_NODE_st* [ %7, %cleanup.split.loop.exit18 ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.X509_POLICY_NODE_st* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_NODE_st* @ossl_policy_level_add_node(%struct.X509_POLICY_LEVEL_st* noundef %level, %struct.X509_POLICY_DATA_st* noundef %data, %struct.X509_POLICY_NODE_st* noundef %parent, %struct.X509_POLICY_TREE_st* noundef %tree) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 66) #4
  %0 = bitcast i8* %call to %struct.X509_POLICY_NODE_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_policy_level_add_node, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1 = bitcast i8* %call to %struct.X509_POLICY_DATA_st**
  store %struct.X509_POLICY_DATA_st* %data, %struct.X509_POLICY_DATA_st** %data1, align 8, !tbaa !8
  %parent2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %parent2 to %struct.X509_POLICY_NODE_st**
  store %struct.X509_POLICY_NODE_st* %parent, %struct.X509_POLICY_NODE_st** %1, align 8, !tbaa !15
  %tobool.not = icmp eq %struct.X509_POLICY_LEVEL_st* %level, null
  br i1 %tobool.not, label %if.end28, label %if.then3

if.then3:                                         ; preds = %if.end
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %data, i64 0, i32 1
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !11
  %call4 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  %cmp5 = icmp eq i32 %call4, 746
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 2
  %3 = load %struct.X509_POLICY_NODE_st*, %struct.X509_POLICY_NODE_st** %anyPolicy, align 8, !tbaa !18
  %tobool7.not = icmp eq %struct.X509_POLICY_NODE_st* %3, null
  br i1 %tobool7.not, label %if.end9, label %node_error

if.end9:                                          ; preds = %if.then6
  %4 = bitcast %struct.X509_POLICY_NODE_st** %anyPolicy to i8**
  store i8* %call, i8** %4, align 8, !tbaa !18
  br label %if.end28

if.else:                                          ; preds = %if.then3
  %nodes = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %level, i64 0, i32 1
  %5 = load %struct.stack_st_X509_POLICY_NODE*, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !13
  %cmp11 = icmp eq %struct.stack_st_X509_POLICY_NODE* %5, null
  br i1 %cmp11, label %if.end15, label %if.end19

if.end15:                                         ; preds = %if.else
  %call13 = tail call %struct.stack_st_X509_POLICY_NODE* @ossl_policy_node_cmp_new() #6
  store %struct.stack_st_X509_POLICY_NODE* %call13, %struct.stack_st_X509_POLICY_NODE** %nodes, align 8, !tbaa !13
  %cmp17 = icmp eq %struct.stack_st_X509_POLICY_NODE* %call13, null
  br i1 %cmp17, label %node_error.sink.split, label %if.end19

if.end19:                                         ; preds = %if.else, %if.end15
  %6 = phi %struct.stack_st_X509_POLICY_NODE* [ %call13, %if.end15 ], [ %5, %if.else ]
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_X509_POLICY_NODE_sk_type(%struct.stack_st_X509_POLICY_NODE* noundef nonnull %6) #6
  %call23 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call21, i8* noundef nonnull %call) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %node_error.sink.split, label %if.end28

if.end28:                                         ; preds = %if.end9, %if.end19, %if.end
  %tobool29.not = icmp eq %struct.X509_POLICY_TREE_st* %tree, null
  br i1 %tobool29.not, label %if.end45, label %if.then30

if.then30:                                        ; preds = %if.end28
  %extra_data = getelementptr inbounds %struct.X509_POLICY_TREE_st, %struct.X509_POLICY_TREE_st* %tree, i64 0, i32 2
  %7 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %extra_data, align 8, !tbaa !19
  %cmp31 = icmp eq %struct.stack_st_X509_POLICY_DATA* %7, null
  br i1 %cmp31, label %if.end35, label %if.end39

if.end35:                                         ; preds = %if.then30
  %call33 = tail call fastcc %struct.stack_st_X509_POLICY_DATA* @sk_X509_POLICY_DATA_new_null() #6
  store %struct.stack_st_X509_POLICY_DATA* %call33, %struct.stack_st_X509_POLICY_DATA** %extra_data, align 8, !tbaa !19
  %cmp37 = icmp eq %struct.stack_st_X509_POLICY_DATA* %call33, null
  br i1 %cmp37, label %node_error.sink.split, label %if.end39

if.end39:                                         ; preds = %if.then30, %if.end35
  %8 = phi %struct.stack_st_X509_POLICY_DATA* [ %call33, %if.end35 ], [ %7, %if.then30 ]
  %call41 = tail call fastcc i32 @sk_X509_POLICY_DATA_push(%struct.stack_st_X509_POLICY_DATA* noundef nonnull %8, %struct.X509_POLICY_DATA_st* noundef %data) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %node_error.sink.split, label %if.end45

if.end45:                                         ; preds = %if.end39, %if.end28
  %tobool46.not = icmp eq %struct.X509_POLICY_NODE_st* %parent, null
  br i1 %tobool46.not, label %cleanup, label %if.then47

if.then47:                                        ; preds = %if.end45
  %nchild = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %parent, i64 0, i32 2
  %9 = load i32, i32* %nchild, align 8, !tbaa !21
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %nchild, align 8, !tbaa !21
  br label %cleanup

node_error.sink.split:                            ; preds = %if.end39, %if.end35, %if.end19, %if.end15
  %.sink = phi i32 [ 83, %if.end15 ], [ 87, %if.end19 ], [ 97, %if.end35 ], [ 101, %if.end39 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_policy_level_add_node, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %node_error

node_error:                                       ; preds = %node_error.sink.split, %if.then6
  tail call void @ossl_policy_node_free(%struct.X509_POLICY_NODE_st* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then47, %node_error, %if.then
  %retval.0 = phi %struct.X509_POLICY_NODE_st* [ null, %if.then ], [ null, %node_error ], [ %0, %if.then47 ], [ %0, %if.end45 ]
  ret %struct.X509_POLICY_NODE_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509_POLICY_DATA* @sk_X509_POLICY_DATA_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_POLICY_DATA*
  ret %struct.stack_st_X509_POLICY_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_X509_POLICY_DATA_push(%struct.stack_st_X509_POLICY_DATA* noundef %sk, %struct.X509_POLICY_DATA_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %1 = bitcast %struct.X509_POLICY_DATA_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_policy_node_free(%struct.X509_POLICY_NODE_st* noundef %node) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_POLICY_NODE_st* %node to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 118) #4
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_policy_node_match(%struct.X509_POLICY_LEVEL_st* nocapture noundef readonly %lvl, %struct.X509_POLICY_NODE_st* nocapture noundef readonly %node, %struct.asn1_object_st* noundef %oid) local_unnamed_addr #0 {
entry:
  %data = getelementptr inbounds %struct.X509_POLICY_NODE_st, %struct.X509_POLICY_NODE_st* %node, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %data, align 8, !tbaa !8
  %flags = getelementptr inbounds %struct.X509_POLICY_LEVEL_st, %struct.X509_POLICY_LEVEL_st* %lvl, i64 0, i32 3
  %1 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %1, 1024
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 0
  %2 = load i32, i32* %flags1, align 8, !tbaa !23
  %and2 = and i32 %2, 3
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %expected_policy_set = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 3
  %3 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %expected_policy_set, align 8, !tbaa !24
  %call727 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %3) #6
  %call828 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call727) #4
  %cmp29 = icmp sgt i32 %call828, 0
  br i1 %cmp29, label %for.body, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 1
  %4 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !11
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %4, %struct.asn1_object_st* noundef %oid) #4
  %tobool4.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool4.not to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %5 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %expected_policy_set, align 8, !tbaa !24
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %5) #6
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #4
  %cmp = icmp slt i32 %inc, %call8
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !25

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.030 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %6 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %expected_policy_set, align 8, !tbaa !24
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef %6) #6
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %i.030) #4
  %7 = bitcast i8* %call11 to %struct.asn1_object_st*
  %call12 = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %7, %struct.asn1_object_st* noundef %oid) #4
  %tobool13.not = icmp eq i32 %call12, 0
  %inc = add nuw nsw i32 %i.030, 1
  br i1 %tobool13.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_OBJECT_sk_type(%struct.stack_st_ASN1_OBJECT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"X509_POLICY_NODE_st", !5, i64 0, !5, i64 8, !10, i64 16}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !5, i64 8}
!12 = !{!"X509_POLICY_DATA_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!13 = !{!14, !5, i64 8}
!14 = !{!"X509_POLICY_LEVEL_st", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24}
!15 = !{!9, !5, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!14, !5, i64 16}
!19 = !{!20, !5, i64 16}
!20 = !{!"X509_POLICY_TREE_st", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40}
!21 = !{!9, !10, i64 16}
!22 = !{!14, !10, i64 24}
!23 = !{!12, !10, i64 0}
!24 = !{!12, !5, i64 24}
!25 = distinct !{!25, !17}
