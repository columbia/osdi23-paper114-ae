; ModuleID = 'crypto/ec/ecx_backend.c'
source_filename = "crypto/ec/ecx_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecx_key_st = type { %struct.ossl_lib_ctx_st*, i8*, i8, [57 x i8], i8*, i64, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.pkcs8_priv_key_info_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"crypto/ec/ecx_backend.c\00", align 1
@__func__.ossl_ecx_public_from_private = private unnamed_addr constant [29 x i8] c"ossl_ecx_public_from_private\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@__func__.ossl_ecx_key_dup = private unnamed_addr constant [17 x i8] c"ossl_ecx_key_dup\00", align 1
@__func__.ossl_ecx_key_op = private unnamed_addr constant [16 x i8] c"ossl_ecx_key_op\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecx_public_from_private(%struct.ecx_key_st* noundef %key) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 6
  %0 = load i32, i32* %type, align 8, !tbaa !4
  switch i32 %0, label %return [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb5
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 3, i64 0
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  %1 = load i8*, i8** %privkey, align 8, !tbaa !11
  tail call void @ossl_x25519_public_from_private(i8* noundef nonnull %arraydecay, i8* noundef %1) #4
  br label %return

sw.bb1:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %arraydecay3 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 3, i64 0
  %privkey4 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  %3 = load i8*, i8** %privkey4, align 8, !tbaa !11
  %propq = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 1
  %4 = load i8*, i8** %propq, align 8, !tbaa !13
  %call = tail call i32 @ossl_ed25519_public_from_private(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef nonnull %arraydecay3, i8* noundef %3, i8* noundef %4) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %sw.bb1
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecx_public_from_private, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 166, i8* noundef null) #4
  br label %return

sw.bb5:                                           ; preds = %entry
  %arraydecay7 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 3, i64 0
  %privkey8 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  %5 = load i8*, i8** %privkey8, align 8, !tbaa !11
  tail call void @ossl_x448_public_from_private(i8* noundef nonnull %arraydecay7, i8* noundef %5) #4
  br label %return

sw.bb9:                                           ; preds = %entry
  %libctx10 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx10, align 8, !tbaa !12
  %arraydecay12 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 3, i64 0
  %privkey13 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  %7 = load i8*, i8** %privkey13, align 8, !tbaa !11
  %propq14 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 1
  %8 = load i8*, i8** %propq14, align 8, !tbaa !13
  %call15 = tail call i32 @ossl_ed448_public_from_private(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef nonnull %arraydecay12, i8* noundef %7, i8* noundef %8) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %return

if.then17:                                        ; preds = %sw.bb9
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ecx_public_from_private, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 166, i8* noundef null) #4
  br label %return

return:                                           ; preds = %sw.bb, %sw.bb5, %entry, %sw.bb1, %sw.bb9, %if.then17, %if.then
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.then ], [ 1, %sw.bb9 ], [ 1, %sw.bb1 ], [ 1, %entry ], [ 1, %sw.bb5 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare void @ossl_x25519_public_from_private(i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_ed25519_public_from_private(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @ossl_x448_public_from_private(i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_ed448_public_from_private(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ecx_key_fromdata(%struct.ecx_key_st* noundef %ecx, %struct.ossl_param_st* noundef %params, i32 noundef %include_private) local_unnamed_addr #0 {
entry:
  %privkeylen = alloca i64, align 8
  %pubkeylen = alloca i64, align 8
  %pubkey = alloca i8*, align 8
  %0 = bitcast i64* %privkeylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 0, i64* %privkeylen, align 8, !tbaa !14
  %1 = bitcast i64* %pubkeylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i64 0, i64* %pubkeylen, align 8, !tbaa !14
  %2 = bitcast i8** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %cmp = icmp eq %struct.ecx_key_st* %ecx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %include_private, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %param_priv_key.0 = phi %struct.ossl_param_st* [ %call2, %if.then1 ], [ null, %if.end ]
  %cmp4 = icmp eq %struct.ossl_param_st* %call, null
  %cmp5 = icmp eq %struct.ossl_param_st* %param_priv_key.0, null
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  br i1 %cmp5, label %if.end13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end7
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %ecx, i64 0, i32 4
  %keylen = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %ecx, i64 0, i32 5
  %3 = load i64, i64* %keylen, align 8, !tbaa !15
  %call10 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %param_priv_key.0, i8** noundef nonnull %privkey, i64 noundef %3, i64* noundef nonnull %privkeylen) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true9, %if.end7
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %ecx, i64 0, i32 3, i64 0
  store i8* %arraydecay, i8** %pubkey, align 8, !tbaa !16
  br i1 %cmp4, label %lor.lhs.false, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end13
  %call17 = call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef nonnull %call, i8** noundef nonnull %pubkey, i64 noundef 57, i64* noundef nonnull %pubkeylen) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %4 = load i64, i64* %pubkeylen, align 8, !tbaa !14
  %keylen23 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %ecx, i64 0, i32 5
  %5 = load i64, i64* %keylen23, align 8, !tbaa !15
  %cmp24.not = icmp eq i64 %4, %5
  br i1 %cmp24.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end13, %land.lhs.true22
  br i1 %cmp5, label %if.end30, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %6 = load i64, i64* %privkeylen, align 8, !tbaa !14
  %keylen27 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %ecx, i64 0, i32 5
  %7 = load i64, i64* %keylen27, align 8, !tbaa !15
  %cmp28.not = icmp eq i64 %6, %7
  br i1 %cmp28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %land.lhs.true26, %lor.lhs.false
  br i1 %cmp4, label %land.lhs.true32, label %if.end36

land.lhs.true32:                                  ; preds = %if.end30
  %call33 = call i32 @ossl_ecx_public_from_private(%struct.ecx_key_st* noundef nonnull %ecx) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %land.lhs.true32, %if.end30
  %haspubkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %ecx, i64 0, i32 2
  %bf.load = load i8, i8* %haspubkey, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %haspubkey, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true32, %land.lhs.true22, %land.lhs.true26, %land.lhs.true16, %land.lhs.true9, %if.end3, %entry, %if.end36
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 0, %entry ], [ 0, %if.end3 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true26 ], [ 0, %land.lhs.true22 ], [ 0, %land.lhs.true32 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_ecx_key_dup(%struct.ecx_key_st* noundef %key, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 112, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 100) #4
  %0 = bitcast i8* %call to %struct.ecx_key_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ecx_key_dup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #4
  %lock = getelementptr inbounds i8, i8* %call, i64 104
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !17
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 109) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %libctx6 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %2, %struct.ossl_lib_ctx_st** %libctx6, align 8, !tbaa !12
  %haspubkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 2
  %bf.load = load i8, i8* %haspubkey, align 8
  %bf.clear = and i8 %bf.load, 1
  %3 = getelementptr inbounds i8, i8* %call, i64 16
  %bf.load8 = load i8, i8* %3, align 8
  %bf.clear9 = and i8 %bf.load8, -2
  %bf.set = or i8 %bf.clear9, %bf.clear
  store i8 %bf.set, i8* %3, align 8
  %keylen = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 5
  %4 = load i64, i64* %keylen, align 8, !tbaa !15
  %keylen10 = getelementptr inbounds i8, i8* %call, i64 88
  %5 = bitcast i8* %keylen10 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 6
  %6 = load i32, i32* %type, align 8, !tbaa !4
  %type11 = getelementptr inbounds i8, i8* %call, i64 96
  %7 = bitcast i8* %type11 to i32*
  store i32 %6, i32* %7, align 8, !tbaa !4
  %references = getelementptr inbounds i8, i8* %call, i64 100
  %8 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %8 seq_cst, align 4, !tbaa !18
  %propq = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 1
  %9 = load i8*, i8** %propq, align 8, !tbaa !13
  %cmp12.not = icmp eq i8* %9, null
  br i1 %cmp12.not, label %if.end21, label %if.then13

if.then13:                                        ; preds = %if.end5
  %call15 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 120) #4
  %propq16 = getelementptr inbounds i8, i8* %call, i64 8
  %10 = bitcast i8* %propq16 to i8**
  store i8* %call15, i8** %10, align 8, !tbaa !13
  %cmp18 = icmp eq i8* %call15, null
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end5
  %and = and i32 %selection, 2
  %cmp22.not = icmp eq i32 %and, 0
  br i1 %cmp22.not, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end21
  %pubkey = getelementptr inbounds i8, i8* %call, i64 17
  %arraydecay25 = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 3, i64 0
  %call26 = tail call i8* @memcpy(i8* noundef nonnull %pubkey, i8* noundef nonnull %arraydecay25, i64 noundef 57) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21
  %and28 = and i32 %selection, 1
  %cmp29.not = icmp eq i32 %and28, 0
  br i1 %cmp29.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %privkey = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %key, i64 0, i32 4
  %11 = load i8*, i8** %privkey, align 8, !tbaa !11
  %cmp30.not = icmp eq i8* %11, null
  br i1 %cmp30.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  %call32 = tail call i8* @ossl_ecx_key_allocate_privkey(%struct.ecx_key_st* noundef nonnull %0) #4
  %cmp33 = icmp eq i8* %call32, null
  br i1 %cmp33, label %err, label %if.end35

if.end35:                                         ; preds = %if.then31
  %privkey36 = getelementptr inbounds i8, i8* %call, i64 80
  %12 = bitcast i8* %privkey36 to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !11
  %14 = load i8*, i8** %privkey, align 8, !tbaa !11
  %15 = load i64, i64* %5, align 8, !tbaa !15
  %call39 = tail call i8* @memcpy(i8* noundef %13, i8* noundef %14, i64 noundef %15) #4
  br label %cleanup

err:                                              ; preds = %if.then31, %if.then13
  tail call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef nonnull %0) #4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ecx_key_dup, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true, %if.end35, %err, %if.then4, %if.then
  %retval.0 = phi %struct.ecx_key_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %err ], [ %0, %if.end35 ], [ %0, %land.lhs.true ], [ %0, %if.end27 ]
  ret %struct.ecx_key_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i8* @ossl_ecx_key_allocate_privkey(%struct.ecx_key_st* noundef) local_unnamed_addr #1

declare void @ossl_ecx_key_free(%struct.ecx_key_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef %palg, i8* noundef %p, i32 noundef %plen, i32 noundef %id, i32 noundef %op, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %ptype = alloca i32, align 4
  %cmp.not = icmp eq i32 %op, 2
  br i1 %cmp.not, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq %struct.X509_algor_st* %palg, null
  br i1 %cmp1.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.then
  %0 = bitcast i32* %ptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef null, i32* noundef nonnull %ptype, i8** noundef null, %struct.X509_algor_st* noundef nonnull %palg) #4
  %1 = load i32, i32* %ptype, align 4, !tbaa !19
  %cmp3.not = icmp eq i32 %1, -1
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then2
  %cmp5 = icmp eq i32 %id, 0
  %algorithm = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %palg, i64 0, i32 0
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorithm, align 8, !tbaa !20
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  br i1 %cmp5, label %cleanup.thread, label %if.else

if.else:                                          ; preds = %if.end
  %cmp9.not = icmp eq i32 %call, %id
  br i1 %cmp9.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end, %if.else
  %id.addr.1.ph = phi i32 [ %id, %if.else ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  br label %if.end13

cleanup:                                          ; preds = %if.else, %if.then2
  %.sink = phi i32 [ 159, %if.then2 ], [ 165, %if.else ]
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_ecx_key_op, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  br label %cleanup122

if.end13:                                         ; preds = %cleanup.thread, %if.then
  %id.addr.2 = phi i32 [ %id, %if.then ], [ %id.addr.1.ph, %cleanup.thread ]
  %cmp14 = icmp eq i8* %p, null
  %cmp15 = icmp eq i32 %id.addr.2, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp15
  br i1 %or.cond, label %if.then23, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end13
  switch i32 %id.addr.2, label %cond.false [
    i32 1087, label %cond.end
    i32 1034, label %cond.end
  ]

cond.false:                                       ; preds = %lor.lhs.false16
  %cmp20 = icmp eq i32 %id.addr.2, 1035
  %cond = select i1 %cmp20, i32 56, i32 57
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false16, %lor.lhs.false16, %cond.false
  %cond21 = phi i32 [ %cond, %cond.false ], [ 32, %lor.lhs.false16 ], [ 32, %lor.lhs.false16 ]
  %cmp22.not = icmp eq i32 %cond21, %plen
  br i1 %cmp22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %cond.end, %if.end13
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_ecx_key_op, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #4
  br label %cleanup122

if.end25:                                         ; preds = %cond.end, %entry
  %id.addr.3 = phi i32 [ %id.addr.2, %cond.end ], [ %id, %entry ]
  %cmp26 = icmp eq i32 %id.addr.3, 1034
  switch i32 %id.addr.3, label %cond.false32 [
    i32 1087, label %cond.true29
    i32 1034, label %cond.true29
  ]

cond.true29:                                      ; preds = %if.end25, %if.end25
  %cond31 = select i1 %cmp26, i32 0, i32 2
  br label %cond.end35

cond.false32:                                     ; preds = %if.end25
  %cmp33 = icmp eq i32 %id.addr.3, 1035
  %cond34 = select i1 %cmp33, i32 1, i32 3
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false32, %cond.true29
  %cond36 = phi i32 [ %cond31, %cond.true29 ], [ %cond34, %cond.false32 ]
  %call37 = call %struct.ecx_key_st* @ossl_ecx_key_new(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef %cond36, i32 noundef 1, i8* noundef %propq) #4
  %cmp38 = icmp eq %struct.ecx_key_st* %call37, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %cond.end35
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_ecx_key_op, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup122

if.end40:                                         ; preds = %cond.end35
  %cmp42 = icmp eq i32 %op, 0
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.end40
  %arraydecay = getelementptr inbounds %struct.ecx_key_st, %struct.ecx_key_st* %call37, i64 0, i32 3, i64 0
  %conv = sext i32 %plen to i64
  %call44 = call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %p, i64 noundef %conv) #4
  br label %cleanup122

if.else45:                                        ; preds = %if.end40
  %call46 = call i8* @ossl_ecx_key_allocate_privkey(%struct.ecx_key_st* noundef nonnull %call37) #4
  %cmp47 = icmp eq i8* %call46, null
  br i1 %cmp47, label %err.sink.split, label %if.end50

if.end50:                                         ; preds = %if.else45
  br i1 %cmp.not, label %if.then53, label %if.else102

if.then53:                                        ; preds = %if.end50
  switch i32 %id.addr.3, label %cond.false63 [
    i32 0, label %if.end117
    i32 1087, label %cond.end67
    i32 1034, label %cond.end67
  ]

cond.false63:                                     ; preds = %if.then53
  %cmp64 = icmp eq i32 %id.addr.3, 1035
  %cond66 = select i1 %cmp64, i64 56, i64 57
  br label %cond.end67

cond.end67:                                       ; preds = %if.then53, %if.then53, %cond.false63
  %cond68 = phi i64 [ %cond66, %cond.false63 ], [ 32, %if.then53 ], [ 32, %if.then53 ]
  %call70 = call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %call46, i64 noundef %cond68, i32 noundef 0) #4
  %cmp71 = icmp slt i32 %call70, 1
  br i1 %cmp71, label %err, label %if.end74

if.end74:                                         ; preds = %cond.end67
  br i1 %cmp26, label %if.then77, label %if.else87

if.then77:                                        ; preds = %if.end74
  %3 = load i8, i8* %call46, align 1, !tbaa !22
  %4 = and i8 %3, -8
  store i8 %4, i8* %call46, align 1, !tbaa !22
  %arrayidx80 = getelementptr inbounds i8, i8* %call46, i64 31
  %5 = load i8, i8* %arrayidx80, align 1, !tbaa !22
  %6 = and i8 %5, 63
  %7 = or i8 %6, 64
  store i8 %7, i8* %arrayidx80, align 1, !tbaa !22
  br label %if.end117

if.else87:                                        ; preds = %if.end74
  %cmp88 = icmp eq i32 %id.addr.3, 1035
  br i1 %cmp88, label %if.then90, label %if.end117

if.then90:                                        ; preds = %if.else87
  %8 = load i8, i8* %call46, align 1, !tbaa !22
  %9 = and i8 %8, -4
  store i8 %9, i8* %call46, align 1, !tbaa !22
  %arrayidx95 = getelementptr inbounds i8, i8* %call46, i64 55
  %10 = load i8, i8* %arrayidx95, align 1, !tbaa !22
  %11 = or i8 %10, -128
  store i8 %11, i8* %arrayidx95, align 1, !tbaa !22
  br label %if.end117

if.else102:                                       ; preds = %if.end50
  switch i32 %id.addr.3, label %cond.false109 [
    i32 1087, label %cond.end113
    i32 1034, label %cond.end113
  ]

cond.false109:                                    ; preds = %if.else102
  %cmp110 = icmp eq i32 %id.addr.3, 1035
  %cond112 = select i1 %cmp110, i64 56, i64 57
  br label %cond.end113

cond.end113:                                      ; preds = %if.else102, %if.else102, %cond.false109
  %cond114 = phi i64 [ %cond112, %cond.false109 ], [ 32, %if.else102 ], [ 32, %if.else102 ]
  %call116 = call i8* @memcpy(i8* noundef nonnull %call46, i8* noundef %p, i64 noundef %cond114) #4
  br label %if.end117

if.end117:                                        ; preds = %if.then53, %if.else87, %if.then90, %if.then77, %cond.end113
  %call118 = call i32 @ossl_ecx_public_from_private(%struct.ecx_key_st* noundef nonnull %call37) #6
  %tobool.not = icmp eq i32 %call118, 0
  br i1 %tobool.not, label %err.sink.split, label %cleanup122

err.sink.split:                                   ; preds = %if.end117, %if.else45
  %.sink175 = phi i32 [ 188, %if.else45 ], [ 208, %if.end117 ]
  %.sink174 = phi i32 [ 786688, %if.else45 ], [ 166, %if.end117 ]
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink175, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ossl_ecx_key_op, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink174, i8* noundef null) #4
  br label %err

err:                                              ; preds = %err.sink.split, %cond.end67
  call void @ossl_ecx_key_free(%struct.ecx_key_st* noundef nonnull %call37) #4
  br label %cleanup122

cleanup122:                                       ; preds = %cleanup, %if.then43, %if.end117, %err, %if.then39, %if.then23
  %retval.1 = phi %struct.ecx_key_st* [ null, %if.then23 ], [ null, %if.then39 ], [ null, %err ], [ null, %cleanup ], [ %call37, %if.end117 ], [ %call37, %if.then43 ]
  ret %struct.ecx_key_st* %retval.1
}

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.ecx_key_st* @ossl_ecx_key_new(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ecx_key_st* @ossl_ecx_key_from_pkcs8(%struct.pkcs8_priv_key_info_st* noundef %p8inf, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %plen = alloca i32, align 4
  %palg = alloca %struct.X509_algor_st*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i32* %plen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast %struct.X509_algor_st** %palg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %call = call i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef null, i8** noundef nonnull %p, i32* noundef nonnull %plen, %struct.X509_algor_st** noundef nonnull %palg, %struct.pkcs8_priv_key_info_st* noundef %p8inf) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %plen, align 4, !tbaa !19
  %conv = sext i32 %3 to i64
  %call1 = call %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv) #4
  %cmp = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %p, align 8, !tbaa !16
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call4 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef nonnull %call1) #4
  store i8* %call4, i8** %p, align 8, !tbaa !16
  %call5 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef nonnull %call1) #4
  %.pre = load i8*, i8** %p, align 8, !tbaa !16
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %4 = phi i8* [ %.pre, %if.else ], [ null, %if.then3 ]
  %storemerge = phi i32 [ %call5, %if.else ], [ 0, %if.then3 ]
  store i32 %storemerge, i32* %plen, align 4, !tbaa !19
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %palg, align 8, !tbaa !16
  %call7 = call %struct.ecx_key_st* @ossl_ecx_key_op(%struct.X509_algor_st* noundef %5, i8* noundef %4, i32 noundef %storemerge, i32 noundef 0, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #6
  call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi %struct.ecx_key_st* [ %call7, %if.end6 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.ecx_key_st* %retval.0
}

declare i32 @PKCS8_pkey_get0(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @d2i_ASN1_OCTET_STRING(%struct.asn1_string_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 96}
!5 = !{!"ecx_key_st", !6, i64 0, !6, i64 8, !9, i64 16, !7, i64 17, !6, i64 80, !10, i64 88, !7, i64 96, !7, i64 100, !6, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 80}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !6, i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!5, !10, i64 88}
!16 = !{!6, !6, i64 0}
!17 = !{!5, !6, i64 104}
!18 = !{!5, !7, i64 100}
!19 = !{!9, !9, i64 0}
!20 = !{!21, !6, i64 0}
!21 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!22 = !{!7, !7, i64 0}
