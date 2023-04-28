; ModuleID = 'crypto/self_test_core.c'
source_filename = "crypto/self_test_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.self_test_cb_st = type { i32 (%struct.ossl_param_st*, i8*)*, i8* }
%struct.ossl_self_test_st = type { i8*, i8*, i8*, i32 (%struct.ossl_param_st*, i8*)*, [4 x %struct.ossl_param_st], i8* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/self_test_core.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Corrupt\00", align 1
@self_test_set_callback_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @self_test_set_callback_new, void (i8*)* @self_test_set_callback_free }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"st-phase\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"st-type\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"st-desc\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef %libctx, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.self_test_cb_st* @get_self_test_callback(%struct.ossl_lib_ctx_st* noundef %libctx) #4
  %cmp.not = icmp eq %struct.self_test_cb_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cb1 = getelementptr inbounds %struct.self_test_cb_st, %struct.self_test_cb_st* %call, i64 0, i32 0
  store i32 (%struct.ossl_param_st*, i8*)* %cb, i32 (%struct.ossl_param_st*, i8*)** %cb1, align 8, !tbaa !4
  %cbarg2 = getelementptr inbounds %struct.self_test_cb_st, %struct.self_test_cb_st* %call, i64 0, i32 1
  store i8* %cbarg, i8** %cbarg2, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.self_test_cb_st* @get_self_test_callback(%struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 12, %struct.ossl_lib_ctx_method* noundef nonnull @self_test_set_callback_method) #5
  %0 = bitcast i8* %call to %struct.self_test_cb_st*
  ret %struct.self_test_cb_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @OSSL_SELF_TEST_get_callback(%struct.ossl_lib_ctx_st* noundef %libctx, i32 (%struct.ossl_param_st*, i8*)** noundef writeonly %cb, i8** noundef writeonly %cbarg) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.self_test_cb_st* @get_self_test_callback(%struct.ossl_lib_ctx_st* noundef %libctx) #4
  %cmp.not = icmp eq i32 (%struct.ossl_param_st*, i8*)** %cb, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq %struct.self_test_cb_st* %call, null
  br i1 %cmp1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %cb2 = getelementptr inbounds %struct.self_test_cb_st, %struct.self_test_cb_st* %call, i64 0, i32 0
  %0 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb2, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 (%struct.ossl_param_st*, i8*)* [ %0, %cond.true ], [ null, %if.then ]
  store i32 (%struct.ossl_param_st*, i8*)* %cond, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %cmp3.not = icmp eq i8** %cbarg, null
  br i1 %cmp3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp5.not = icmp eq %struct.self_test_cb_st* %call, null
  br i1 %cmp5.not, label %cond.end9, label %cond.true6

cond.true6:                                       ; preds = %if.then4
  %cbarg7 = getelementptr inbounds %struct.self_test_cb_st, %struct.self_test_cb_st* %call, i64 0, i32 1
  %1 = load i8*, i8** %cbarg7, align 8, !tbaa !9
  br label %cond.end9

cond.end9:                                        ; preds = %if.then4, %cond.true6
  %cond10 = phi i8* [ %1, %cond.true6 ], [ null, %if.then4 ]
  store i8* %cond10, i8** %cbarg, align 8, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %cond.end9, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_self_test_st* @OSSL_SELF_TEST_new(i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 200, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #5
  %0 = bitcast i8* %call to %struct.ossl_self_test_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cb1 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %cb1 to i32 (%struct.ossl_param_st*, i8*)**
  store i32 (%struct.ossl_param_st*, i8*)* %cb, i32 (%struct.ossl_param_st*, i8*)** %1, align 8, !tbaa !11
  %cb_arg = getelementptr inbounds i8, i8* %call, i64 192
  %2 = bitcast i8* %cb_arg to i8**
  store i8* %cbarg, i8** %2, align 8, !tbaa !13
  %phase = bitcast i8* %call to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %phase, align 8, !tbaa !14
  %type = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %type to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8, !tbaa !15
  %desc = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %desc to i8**
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8, !tbaa !16
  tail call fastcc void @self_test_setparams(%struct.ossl_self_test_st* noundef nonnull %0) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_self_test_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_self_test_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @self_test_setparams(%struct.ossl_self_test_st* nocapture noundef %st) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %cb = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 3
  %0 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %cmp.not = icmp eq i32 (%struct.ossl_param_st*, i8*)* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %params = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #6
  %phase = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 0
  %2 = load i8*, i8** %phase, align 8, !tbaa !14
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %2, i64 noundef 0) #5
  %3 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #6
  %arrayidx3 = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4, i64 1
  %4 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #6
  %type = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 1
  %5 = load i8*, i8** %type, align 8, !tbaa !15
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* noundef %5, i64 noundef 0) #5
  %6 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #6
  %arrayidx7 = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4, i64 2
  %7 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6
  %desc = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 2
  %8 = load i8*, i8** %desc, align 8, !tbaa !16
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* noundef %8, i64 noundef 0) #5
  %9 = bitcast %struct.ossl_param_st* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.0 = phi i64 [ 3, %if.then ], [ 0, %entry ]
  %arrayidx11 = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4, i64 %n.0
  %10 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12) #5
  %11 = bitcast %struct.ossl_param_st* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_SELF_TEST_free(%struct.ossl_self_test_st* noundef %st) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ossl_self_test_st* %st to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #5
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OSSL_SELF_TEST_onbegin(%struct.ossl_self_test_st* noundef %st, i8* noundef %type, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_self_test_st* %st, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cb = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 3
  %0 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %cmp1.not = icmp eq i32 (%struct.ossl_param_st*, i8*)* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %phase = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %phase, align 8, !tbaa !14
  %type2 = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 1
  store i8* %type, i8** %type2, align 8, !tbaa !15
  %desc3 = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 2
  store i8* %desc, i8** %desc3, align 8, !tbaa !16
  tail call fastcc void @self_test_setparams(%struct.ossl_self_test_st* noundef nonnull %st) #4
  %1 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %arraydecay = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4, i64 0
  %cb_arg = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 5
  %2 = load i8*, i8** %cb_arg, align 8, !tbaa !13
  %call = tail call i32 %1(%struct.ossl_param_st* noundef nonnull %arraydecay, i8* noundef %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_SELF_TEST_onend(%struct.ossl_self_test_st* noundef %st, i32 noundef %ret) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_self_test_st* %st, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cb = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 3
  %0 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %cmp1.not = icmp eq i32 (%struct.ossl_param_st*, i8*)* %0, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %ret, 1
  %cond = select i1 %cmp2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %phase = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 0
  store i8* %cond, i8** %phase, align 8, !tbaa !14
  tail call fastcc void @self_test_setparams(%struct.ossl_self_test_st* noundef nonnull %st) #4
  %1 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %arraydecay = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4, i64 0
  %cb_arg = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 5
  %2 = load i8*, i8** %cb_arg, align 8, !tbaa !13
  %call = tail call i32 %1(%struct.ossl_param_st* noundef nonnull %arraydecay, i8* noundef %2) #5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %phase, align 8, !tbaa !14
  %type = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %type, align 8, !tbaa !15
  %desc = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %desc, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_SELF_TEST_oncorrupt_byte(%struct.ossl_self_test_st* noundef %st, i8* nocapture noundef %bytes) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_self_test_st* %st, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cb = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 3
  %0 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %cmp1.not = icmp eq i32 (%struct.ossl_param_st*, i8*)* %0, null
  br i1 %cmp1.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %phase = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %phase, align 8, !tbaa !14
  tail call fastcc void @self_test_setparams(%struct.ossl_self_test_st* noundef nonnull %st) #4
  %1 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %cb, align 8, !tbaa !11
  %arraydecay = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 4, i64 0
  %cb_arg = getelementptr inbounds %struct.ossl_self_test_st, %struct.ossl_self_test_st* %st, i64 0, i32 5
  %2 = load i8*, i8** %cb_arg, align 8, !tbaa !13
  %call = tail call i32 %1(%struct.ossl_param_st* noundef nonnull %arraydecay, i8* noundef %2) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %return

if.then3:                                         ; preds = %if.then
  %3 = load i8, i8* %bytes, align 1, !tbaa !22
  %4 = xor i8 %3, 1
  store i8 %4, i8* %bytes, align 1, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @self_test_set_callback_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %ctx) #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @self_test_set_callback_free(i8* noundef %stcb) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %stcb, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 45) #5
  ret void
}

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"self_test_cb_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !6, i64 24}
!12 = !{!"ossl_self_test_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 192}
!13 = !{!12, !6, i64 192}
!14 = !{!12, !6, i64 0}
!15 = !{!12, !6, i64 8}
!16 = !{!12, !6, i64 16}
!17 = !{i64 0, i64 8, !10, i64 8, i64 4, !18, i64 16, i64 8, !10, i64 24, i64 8, !20, i64 32, i64 8, !20}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!7, !7, i64 0}
