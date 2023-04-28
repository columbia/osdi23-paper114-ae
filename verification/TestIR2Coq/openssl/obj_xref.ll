; ModuleID = 'crypto/objects/obj_xref.c'
source_filename = "crypto/objects/obj_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_nid_triple = type opaque
%struct.nid_triple = type { i32, i32, i32 }
%struct.stack_st = type opaque

@sig_app = internal unnamed_addr global %struct.stack_st_nid_triple* null, align 8
@sigoid_srt = internal constant [49 x %struct.nid_triple] [%struct.nid_triple { i32 7, i32 3, i32 6 }, %struct.nid_triple { i32 8, i32 4, i32 6 }, %struct.nid_triple { i32 42, i32 41, i32 6 }, %struct.nid_triple { i32 65, i32 64, i32 6 }, %struct.nid_triple { i32 66, i32 41, i32 116 }, %struct.nid_triple { i32 70, i32 64, i32 67 }, %struct.nid_triple { i32 96, i32 95, i32 6 }, %struct.nid_triple { i32 104, i32 4, i32 19 }, %struct.nid_triple { i32 113, i32 64, i32 116 }, %struct.nid_triple { i32 115, i32 64, i32 19 }, %struct.nid_triple { i32 119, i32 117, i32 6 }, %struct.nid_triple { i32 396, i32 257, i32 6 }, %struct.nid_triple { i32 416, i32 64, i32 408 }, %struct.nid_triple { i32 668, i32 672, i32 6 }, %struct.nid_triple { i32 669, i32 673, i32 6 }, %struct.nid_triple { i32 670, i32 674, i32 6 }, %struct.nid_triple { i32 671, i32 675, i32 6 }, %struct.nid_triple { i32 791, i32 0, i32 408 }, %struct.nid_triple { i32 792, i32 0, i32 408 }, %struct.nid_triple { i32 793, i32 675, i32 408 }, %struct.nid_triple { i32 794, i32 672, i32 408 }, %struct.nid_triple { i32 795, i32 673, i32 408 }, %struct.nid_triple { i32 796, i32 674, i32 408 }, %struct.nid_triple { i32 802, i32 675, i32 116 }, %struct.nid_triple { i32 803, i32 672, i32 116 }, %struct.nid_triple { i32 807, i32 809, i32 811 }, %struct.nid_triple { i32 808, i32 809, i32 812 }, %struct.nid_triple { i32 852, i32 809, i32 850 }, %struct.nid_triple { i32 853, i32 809, i32 851 }, %struct.nid_triple { i32 912, i32 0, i32 912 }, %struct.nid_triple { i32 936, i32 64, i32 946 }, %struct.nid_triple { i32 937, i32 675, i32 946 }, %struct.nid_triple { i32 938, i32 672, i32 946 }, %struct.nid_triple { i32 939, i32 673, i32 946 }, %struct.nid_triple { i32 940, i32 674, i32 946 }, %struct.nid_triple { i32 941, i32 64, i32 947 }, %struct.nid_triple { i32 942, i32 675, i32 947 }, %struct.nid_triple { i32 943, i32 672, i32 947 }, %struct.nid_triple { i32 944, i32 673, i32 947 }, %struct.nid_triple { i32 945, i32 674, i32 947 }, %struct.nid_triple { i32 985, i32 982, i32 979 }, %struct.nid_triple { i32 986, i32 983, i32 980 }, %struct.nid_triple { i32 1087, i32 0, i32 1087 }, %struct.nid_triple { i32 1088, i32 0, i32 1088 }, %struct.nid_triple { i32 1116, i32 1096, i32 6 }, %struct.nid_triple { i32 1117, i32 1097, i32 6 }, %struct.nid_triple { i32 1118, i32 1098, i32 6 }, %struct.nid_triple { i32 1119, i32 1099, i32 6 }, %struct.nid_triple { i32 1204, i32 1143, i32 1172 }], align 16
@sigx_app = internal unnamed_addr global %struct.stack_st_nid_triple* null, align 8
@sigoid_srt_xref = internal constant [44 x %struct.nid_triple*] [%struct.nid_triple* getelementptr inbounds ([49 x %struct.nid_triple], [49 x %struct.nid_triple]* @sigoid_srt, i32 0, i32 0), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 12) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 84) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 24) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 48) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 36) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 108) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 60) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 96) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 144) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 360) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 420) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 72) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 120) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 132) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 156) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 288) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 240) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 384) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 444) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 168) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 252) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 396) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 456) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 180) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 264) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 408) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 468) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 192) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 276) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 228) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 372) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 432) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 300) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 312) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 324) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 336) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 480) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 492) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 528) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 540) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 552) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 564) to %struct.nid_triple*), %struct.nid_triple* bitcast (i8* getelementptr (i8, i8* bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i64 576) to %struct.nid_triple*)], align 16
@.str = private unnamed_addr constant [26 x i8] c"crypto/objects/obj_xref.c\00", align 1
@__func__.OBJ_add_sigid = private unnamed_addr constant [14 x i8] c"OBJ_add_sigid\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_find_sigid_algs(i32 noundef %signid, i32* noundef writeonly %pdig_nid, i32* noundef writeonly %ppkey_nid) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.nid_triple, align 4
  %0 = bitcast %struct.nid_triple* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #4
  %sign_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %tmp, i64 0, i32 0
  store i32 %signid, i32* %sign_id, align 4, !tbaa !4
  %1 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  %cmp.not = icmp eq %struct.stack_st_nid_triple* %1, null
  br i1 %cmp.not, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @sk_nid_triple_find(%struct.stack_st_nid_triple* noundef nonnull %1, %struct.nid_triple* noundef nonnull %tmp) #5
  %2 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  %call1 = call fastcc %struct.nid_triple* @sk_nid_triple_value(%struct.stack_st_nid_triple* noundef %2, i32 noundef %call) #5
  %cmp2 = icmp eq %struct.nid_triple* %call1, null
  br i1 %cmp2, label %if.end5, label %if.end8

if.end5:                                          ; preds = %entry, %if.end
  %call4 = call fastcc %struct.nid_triple* @OBJ_bsearch_sig(%struct.nid_triple* noundef nonnull %tmp) #5
  %cmp6 = icmp eq %struct.nid_triple* %call4, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end, %if.end5
  %rv.126 = phi %struct.nid_triple* [ %call4, %if.end5 ], [ %call1, %if.end ]
  %tobool.not = icmp eq i32* %pdig_nid, null
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end8
  %hash_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %rv.126, i64 0, i32 1
  %3 = load i32, i32* %hash_id, align 4, !tbaa !11
  store i32 %3, i32* %pdig_nid, align 4, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end8
  %tobool11.not = icmp eq i32* %ppkey_nid, null
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end10
  %pkey_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %rv.126, i64 0, i32 2
  %4 = load i32, i32* %pkey_id, align 4, !tbaa !13
  store i32 %4, i32* %ppkey_nid, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then12, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 1, %if.then12 ], [ 1, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_nid_triple_find(%struct.stack_st_nid_triple* noundef %sk, %struct.nid_triple* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_nid_triple* %sk to %struct.stack_st*
  %1 = bitcast %struct.nid_triple* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.nid_triple* @sk_nid_triple_value(%struct.stack_st_nid_triple* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_nid_triple* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to %struct.nid_triple*
  ret %struct.nid_triple* %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.nid_triple* @OBJ_bsearch_sig(%struct.nid_triple* noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.nid_triple* %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([49 x %struct.nid_triple]* @sigoid_srt to i8*), i32 noundef 49, i32 noundef 12, i32 (i8*, i8*)* noundef nonnull @sig_cmp_BSEARCH_CMP_FN) #6
  %1 = bitcast i8* %call to %struct.nid_triple*
  ret %struct.nid_triple* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_find_sigid_by_algs(i32* noundef writeonly %psignid, i32 noundef %dig_nid, i32 noundef %pkey_nid) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.nid_triple, align 4
  %t = alloca %struct.nid_triple*, align 8
  %0 = bitcast %struct.nid_triple* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #4
  %1 = bitcast %struct.nid_triple** %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.nid_triple* %tmp, %struct.nid_triple** %t, align 8, !tbaa !9
  %hash_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %tmp, i64 0, i32 1
  store i32 %dig_nid, i32* %hash_id, align 4, !tbaa !11
  %pkey_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %tmp, i64 0, i32 2
  store i32 %pkey_nid, i32* %pkey_id, align 4, !tbaa !13
  %2 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  %tobool.not = icmp eq %struct.stack_st_nid_triple* %2, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @sk_nid_triple_find(%struct.stack_st_nid_triple* noundef nonnull %2, %struct.nid_triple* noundef nonnull %tmp) #5
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.then
  %3 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  %call2 = call fastcc %struct.nid_triple* @sk_nid_triple_value(%struct.stack_st_nid_triple* noundef %3, i32 noundef %call) #5
  store %struct.nid_triple* %call2, %struct.nid_triple** %t, align 8, !tbaa !9
  br label %if.end10

if.end7:                                          ; preds = %if.then, %entry
  %call6 = call fastcc %struct.nid_triple** @OBJ_bsearch_sigx(%struct.nid_triple** noundef nonnull %t) #5
  %cmp8 = icmp eq %struct.nid_triple** %call6, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end7.thread, %if.end7
  %rv.226 = phi %struct.nid_triple** [ %t, %if.end7.thread ], [ %call6, %if.end7 ]
  %tobool11.not = icmp eq i32* %psignid, null
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end10
  %4 = load %struct.nid_triple*, %struct.nid_triple** %rv.226, align 8, !tbaa !9
  %sign_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %4, i64 0, i32 0
  %5 = load i32, i32* %sign_id, align 4, !tbaa !4
  store i32 %5, i32* %psignid, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then12, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %if.then12 ], [ 1, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.nid_triple** @OBJ_bsearch_sigx(%struct.nid_triple** noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.nid_triple** %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([44 x %struct.nid_triple*]* @sigoid_srt_xref to i8*), i32 noundef 44, i32 noundef 8, i32 (i8*, i8*)* noundef nonnull @sigx_cmp_BSEARCH_CMP_FN) #6
  %1 = bitcast i8* %call to %struct.nid_triple**
  ret %struct.nid_triple** %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OBJ_add_sigid(i32 noundef %signid, i32 noundef %dig_id, i32 noundef %pkey_id) local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  %cmp = icmp eq %struct.stack_st_nid_triple* %0, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st_nid_triple* @sk_nid_triple_new(i32 (%struct.nid_triple**, %struct.nid_triple**)* noundef nonnull @sig_sk_cmp) #5
  store %struct.stack_st_nid_triple* %call, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  %cmp1 = icmp eq %struct.stack_st_nid_triple* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %1 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  %cmp4 = icmp eq %struct.stack_st_nid_triple* %1, null
  br i1 %cmp4, label %if.end7, label %if.end10

if.end7:                                          ; preds = %if.end3
  %call6 = tail call fastcc %struct.stack_st_nid_triple* @sk_nid_triple_new(i32 (%struct.nid_triple**, %struct.nid_triple**)* noundef nonnull @sigx_cmp) #5
  store %struct.stack_st_nid_triple* %call6, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  %cmp8 = icmp eq %struct.stack_st_nid_triple* %call6, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end3, %if.end7
  %call11 = tail call i8* @CRYPTO_malloc(i64 noundef 12, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 106) #6
  %2 = bitcast i8* %call11 to %struct.nid_triple*
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.OBJ_add_sigid, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 8, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %sign_id = bitcast i8* %call11 to i32*
  store i32 %signid, i32* %sign_id, align 4, !tbaa !4
  %hash_id = getelementptr inbounds i8, i8* %call11, i64 4
  %3 = bitcast i8* %hash_id to i32*
  store i32 %dig_id, i32* %3, align 4, !tbaa !11
  %pkey_id15 = getelementptr inbounds i8, i8* %call11, i64 8
  %4 = bitcast i8* %pkey_id15 to i32*
  store i32 %pkey_id, i32* %4, align 4, !tbaa !13
  %5 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  %call16 = tail call fastcc i32 @sk_nid_triple_push(%struct.stack_st_nid_triple* noundef %5, %struct.nid_triple* noundef nonnull %2) #5
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  tail call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 115) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %6 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  %call19 = tail call fastcc i32 @sk_nid_triple_push(%struct.stack_st_nid_triple* noundef %6, %struct.nid_triple* noundef nonnull %2) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end18
  %7 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  tail call fastcc void @sk_nid_triple_sort(%struct.stack_st_nid_triple* noundef %7) #5
  %8 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  tail call fastcc void @sk_nid_triple_sort(%struct.stack_st_nid_triple* noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end7, %if.end, %if.end22, %if.then17, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 1, %if.end22 ], [ 0, %if.then17 ], [ 0, %if.end ], [ 0, %if.end7 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_nid_triple* @sk_nid_triple_new(i32 (%struct.nid_triple**, %struct.nid_triple**)* noundef %compare) unnamed_addr #0 {
entry:
  %0 = bitcast i32 (%struct.nid_triple**, %struct.nid_triple**)* %compare to i32 (i8*, i8*)*
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef %0) #6
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_nid_triple*
  ret %struct.stack_st_nid_triple* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @sig_sk_cmp(%struct.nid_triple** nocapture noundef readonly %a, %struct.nid_triple** nocapture noundef readonly %b) #2 {
entry:
  %0 = load %struct.nid_triple*, %struct.nid_triple** %a, align 8, !tbaa !9
  %sign_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %0, i64 0, i32 0
  %1 = load i32, i32* %sign_id, align 4, !tbaa !4
  %2 = load %struct.nid_triple*, %struct.nid_triple** %b, align 8, !tbaa !9
  %sign_id1 = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %2, i64 0, i32 0
  %3 = load i32, i32* %sign_id1, align 4, !tbaa !4
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @sigx_cmp(%struct.nid_triple** nocapture noundef readonly %a, %struct.nid_triple** nocapture noundef readonly %b) #2 {
entry:
  %0 = load %struct.nid_triple*, %struct.nid_triple** %a, align 8, !tbaa !9
  %hash_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %0, i64 0, i32 1
  %1 = load i32, i32* %hash_id, align 4, !tbaa !11
  %2 = load %struct.nid_triple*, %struct.nid_triple** %b, align 8, !tbaa !9
  %hash_id1 = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %2, i64 0, i32 1
  %3 = load i32, i32* %hash_id1, align 4, !tbaa !11
  %sub = sub nsw i32 %1, %3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %pkey_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %0, i64 0, i32 2
  %4 = load i32, i32* %pkey_id, align 4, !tbaa !13
  %pkey_id2 = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %2, i64 0, i32 2
  %5 = load i32, i32* %pkey_id2, align 4, !tbaa !13
  %sub3 = sub nsw i32 %4, %5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %sub3, %if.end ], [ %sub, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_nid_triple_push(%struct.stack_st_nid_triple* noundef %sk, %struct.nid_triple* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_nid_triple* %sk to %struct.stack_st*
  %1 = bitcast %struct.nid_triple* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #6
  ret i32 %call
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_nid_triple_sort(%struct.stack_st_nid_triple* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_nid_triple* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OBJ_sigid_free() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  tail call fastcc void @sk_nid_triple_pop_free(%struct.stack_st_nid_triple* noundef %0) #5
  store %struct.stack_st_nid_triple* null, %struct.stack_st_nid_triple** @sig_app, align 8, !tbaa !9
  %1 = load %struct.stack_st_nid_triple*, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  tail call fastcc void @sk_nid_triple_free(%struct.stack_st_nid_triple* noundef %1) #5
  store %struct.stack_st_nid_triple* null, %struct.stack_st_nid_triple** @sigx_app, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_nid_triple_pop_free(%struct.stack_st_nid_triple* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_nid_triple* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.nid_triple*)* @sid_free to void (i8*)*)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sid_free(%struct.nid_triple* noundef %tt) #0 {
entry:
  %0 = bitcast %struct.nid_triple* %tt to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_nid_triple_free(%struct.stack_st_nid_triple* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_nid_triple* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #6
  ret void
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @sig_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #2 {
entry:
  %0 = bitcast i8* %a_ to %struct.nid_triple*
  %1 = bitcast i8* %b_ to %struct.nid_triple*
  %call = tail call fastcc i32 @sig_cmp(%struct.nid_triple* noundef %0, %struct.nid_triple* noundef %1) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @sig_cmp(%struct.nid_triple* nocapture noundef readonly %a, %struct.nid_triple* nocapture noundef readonly %b) unnamed_addr #2 {
entry:
  %sign_id = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %a, i64 0, i32 0
  %0 = load i32, i32* %sign_id, align 4, !tbaa !4
  %sign_id1 = getelementptr inbounds %struct.nid_triple, %struct.nid_triple* %b, i64 0, i32 0
  %1 = load i32, i32* %sign_id1, align 4, !tbaa !4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @sigx_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #2 {
entry:
  %0 = bitcast i8* %a_ to %struct.nid_triple**
  %1 = bitcast i8* %b_ to %struct.nid_triple**
  %call = tail call i32 @sigx_cmp(%struct.nid_triple** noundef %0, %struct.nid_triple** noundef %1) #5
  ret i32 %call
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!5, !6, i64 4}
!12 = !{!6, !6, i64 0}
!13 = !{!5, !6, i64 8}
