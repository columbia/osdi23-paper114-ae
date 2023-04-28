; ModuleID = 'crypto/evp/evp_key.c'
source_filename = "crypto/evp/evp_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque

@prompt_string = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [45 x i8] c"assertion failed: nkey <= EVP_MAX_KEY_LENGTH\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/evp/evp_key.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"assertion failed: niv <= EVP_MAX_IV_LENGTH\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @EVP_set_pw_prompt(i8* noundef %prompt) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %prompt, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 0), align 16, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %call = tail call i8* @strncpy(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 0), i8* noundef nonnull %prompt, i64 noundef 79) #6
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 79), align 1, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_get_pw_prompt() local_unnamed_addr #2 {
entry:
  %0 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 0), align 16, !tbaa !4
  %cmp = icmp eq i8 %0, 0
  %. = select i1 %cmp, i8* null, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 0)
  ret i8* %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_read_pw_string(i8* noundef %buf, i32 noundef %len, i8* noundef %prompt, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_read_pw_string_min(i8* noundef %buf, i32 noundef 0, i32 noundef %len, i8* noundef %prompt, i32 noundef %verify) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_read_pw_string_min(i8* noundef %buf, i32 noundef %min, i32 noundef %len, i8* noundef %prompt, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  %buff = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %0) #8
  %cmp = icmp eq i8* %prompt, null
  %1 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 0), align 16
  %cmp1 = icmp ne i8 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  %spec.store.select = select i1 %or.cond, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @prompt_string, i64 0, i64 0), i8* %prompt
  %call = tail call %struct.ui_st* @UI_new() #6
  %cmp3 = icmp eq %struct.ui_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry
  %2 = icmp slt i32 %len, 8191
  %cond = select i1 %2, i32 %len, i32 8191
  %call9 = tail call i32 @UI_add_input_string(%struct.ui_st* noundef nonnull %call, i8* noundef %spec.store.select, i32 noundef 0, i8* noundef %buf, i32 noundef %min, i32 noundef %cond) #6
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %tobool.not = icmp eq i32 %verify, 0
  br i1 %tobool.not, label %if.end23, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %call19 = call i32 @UI_add_verify_string(%struct.ui_st* noundef nonnull %call, i8* noundef %spec.store.select, i32 noundef 0, i8* noundef nonnull %0, i32 noundef %min, i32 noundef %cond, i8* noundef %buf) #6
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %end, label %if.end23

if.end23:                                         ; preds = %land.lhs.true12, %lor.lhs.false
  %call24 = call i32 @UI_process(%struct.ui_st* noundef nonnull %call) #6
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 8192) #6
  br label %end

end:                                              ; preds = %if.end6, %land.lhs.true12, %if.end23
  %ret.0 = phi i32 [ -1, %if.end6 ], [ -1, %land.lhs.true12 ], [ %call24, %if.end23 ]
  call void @UI_free(%struct.ui_st* noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.ui_st* @UI_new() local_unnamed_addr #4

declare i32 @UI_add_input_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @UI_add_verify_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare i32 @UI_process(%struct.ui_st* noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @UI_free(%struct.ui_st* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_BytesToKey(%struct.evp_cipher_st* noundef %type, %struct.evp_md_st* noundef %md, i8* noundef %salt, i8* noundef %data, i32 noundef %datal, i32 noundef %count, i8* noundef writeonly %key, i8* noundef writeonly %iv) local_unnamed_addr #0 {
entry:
  %md_buf = alloca [64 x i8], align 16
  %mds = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8
  %1 = bitcast i32* %mds to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  store i32 0, i32* %mds, align 4, !tbaa !7
  %call = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %type) #6
  %call1 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %type) #6
  %cmp = icmp slt i32 %call, 65
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 90) #9
  unreachable

cond.end:                                         ; preds = %entry
  %cmp2 = icmp slt i32 %call1, 17
  br i1 %cmp2, label %cond.end5, label %cond.false4

cond.false4:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 91) #9
  unreachable

cond.end5:                                        ; preds = %cond.end
  %cmp7 = icmp eq i8* %data, null
  br i1 %cmp7, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end5
  %call8 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  %cmp9 = icmp eq %struct.evp_md_ctx_st* %call8, null
  br i1 %cmp9, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %conv22 = sext i32 %datal to i64
  %cmp27.not = icmp eq i8* %salt, null
  %cmp41163 = icmp ugt i32 %count, 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end101
  %key.addr.0 = phi i8* [ %key.addr.3, %if.end101 ], [ %key, %for.cond.preheader ]
  %iv.addr.0 = phi i8* [ %iv.addr.3, %if.end101 ], [ %iv, %for.cond.preheader ]
  %niv.0 = phi i32 [ %niv.2, %if.end101 ], [ %call1, %for.cond.preheader ]
  %nkey.0 = phi i32 [ %nkey.2, %if.end101 ], [ %call, %for.cond.preheader ]
  %addmd.0 = phi i32 [ %inc, %if.end101 ], [ 0, %for.cond.preheader ]
  %call12 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call8, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #6
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %addmd.0, 1
  %tobool15.not = icmp eq i32 %addmd.0, 0
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end14
  %2 = load i32, i32* %mds, align 4, !tbaa !7
  %conv = zext i32 %2 to i64
  %call17 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call8, i8* noundef nonnull %0, i64 noundef %conv) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  %call23 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call8, i8* noundef nonnull %data, i64 noundef %conv22) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %if.end21
  br i1 %cmp27.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call8, i8* noundef nonnull %salt, i64 noundef 8) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end26
  %call36 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call8, i8* noundef nonnull %0, i32* noundef nonnull %mds) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %if.end34
  br i1 %cmp41163, label %for.body, label %for.end

for.cond40:                                       ; preds = %if.end52
  %exitcond.not = icmp eq i32 %inc58, %count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.body:                                         ; preds = %for.cond40.preheader, %for.cond40
  %i.0164 = phi i32 [ %inc58, %for.cond40 ], [ 1, %for.cond40.preheader ]
  %call43 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call8, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %for.body
  %3 = load i32, i32* %mds, align 4, !tbaa !7
  %conv48 = zext i32 %3 to i64
  %call49 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call8, i8* noundef nonnull %0, i64 noundef %conv48) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.end46
  %call54 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call8, i8* noundef nonnull %0, i32* noundef nonnull %mds) #6
  %tobool55.not = icmp eq i32 %call54, 0
  %inc58 = add nuw i32 %i.0164, 1
  br i1 %tobool55.not, label %err, label %for.cond40

for.end:                                          ; preds = %for.cond40, %for.cond40.preheader
  %tobool59 = icmp eq i32 %nkey.0, 0
  br i1 %tobool59, label %if.end77, label %if.end65

if.end65:                                         ; preds = %for.end, %if.end74
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end74 ], [ 0, %for.end ]
  %key.addr.1 = phi i8* [ %key.addr.2, %if.end74 ], [ %key.addr.0, %for.end ]
  %nkey.1 = phi i32 [ %dec, %if.end74 ], [ %nkey.0, %for.end ]
  %4 = load i32, i32* %mds, align 4, !tbaa !7
  %5 = zext i32 %4 to i64
  %cmp66 = icmp eq i64 %indvars.iv, %5
  br i1 %cmp66, label %if.end77.loopexit.split.loop.exit, label %if.end69

if.end69:                                         ; preds = %if.end65
  %cmp70.not = icmp eq i8* %key.addr.1, null
  br i1 %cmp70.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.end69
  %arrayidx73 = getelementptr inbounds [64 x i8], [64 x i8]* %md_buf, i64 0, i64 %indvars.iv
  %6 = load i8, i8* %arrayidx73, align 1, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %key.addr.1, i64 1
  store i8 %6, i8* %key.addr.1, align 1, !tbaa !4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end69
  %key.addr.2 = phi i8* [ %incdec.ptr, %if.then72 ], [ null, %if.end69 ]
  %dec = add nsw i32 %nkey.1, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp62.old = icmp eq i32 %dec, 0
  br i1 %cmp62.old, label %if.end77, label %if.end65

if.end77.loopexit.split.loop.exit:                ; preds = %if.end65
  %7 = trunc i64 %indvars.iv to i32
  br label %if.end77

if.end77:                                         ; preds = %if.end74, %if.end77.loopexit.split.loop.exit, %for.end
  %key.addr.3 = phi i8* [ %key.addr.0, %for.end ], [ %key.addr.1, %if.end77.loopexit.split.loop.exit ], [ %key.addr.2, %if.end74 ]
  %nkey.2 = phi i32 [ 0, %for.end ], [ %nkey.1, %if.end77.loopexit.split.loop.exit ], [ 0, %if.end74 ]
  %i.2 = phi i32 [ 0, %for.end ], [ %7, %if.end77.loopexit.split.loop.exit ], [ %nkey.0, %if.end74 ]
  %tobool78.not = icmp eq i32 %niv.0, 0
  br i1 %tobool78.not, label %if.end101, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end77
  %8 = load i32, i32* %mds, align 4, !tbaa !7
  %cmp79 = icmp eq i32 %i.2, %8
  br i1 %cmp79, label %if.end101, label %if.end90

if.end90:                                         ; preds = %land.lhs.true, %if.end97.if.end86_crit_edge
  %i.3179 = phi i32 [ %inc99, %if.end97.if.end86_crit_edge ], [ %i.2, %land.lhs.true ]
  %niv.1178 = phi i32 [ %dec98, %if.end97.if.end86_crit_edge ], [ %niv.0, %land.lhs.true ]
  %iv.addr.1177 = phi i8* [ %iv.addr.2, %if.end97.if.end86_crit_edge ], [ %iv.addr.0, %land.lhs.true ]
  %cmp91.not = icmp eq i8* %iv.addr.1177, null
  br i1 %cmp91.not, label %if.end97, label %if.then93

if.then93:                                        ; preds = %if.end90
  %idxprom94 = zext i32 %i.3179 to i64
  %arrayidx95 = getelementptr inbounds [64 x i8], [64 x i8]* %md_buf, i64 0, i64 %idxprom94
  %9 = load i8, i8* %arrayidx95, align 1, !tbaa !4
  %incdec.ptr96 = getelementptr inbounds i8, i8* %iv.addr.1177, i64 1
  store i8 %9, i8* %iv.addr.1177, align 1, !tbaa !4
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end90
  %iv.addr.2 = phi i8* [ %incdec.ptr96, %if.then93 ], [ null, %if.end90 ]
  %dec98 = add nsw i32 %niv.1178, -1
  %cmp83.old = icmp eq i32 %dec98, 0
  br i1 %cmp83.old, label %if.end101, label %if.end97.if.end86_crit_edge

if.end97.if.end86_crit_edge:                      ; preds = %if.end97
  %inc99 = add i32 %i.3179, 1
  %.pre = load i32, i32* %mds, align 4, !tbaa !7
  %cmp87 = icmp eq i32 %inc99, %.pre
  br i1 %cmp87, label %if.end101, label %if.end90

if.end101:                                        ; preds = %if.end97.if.end86_crit_edge, %if.end97, %land.lhs.true, %if.end77
  %iv.addr.3 = phi i8* [ %iv.addr.0, %land.lhs.true ], [ %iv.addr.0, %if.end77 ], [ %iv.addr.2, %if.end97 ], [ %iv.addr.2, %if.end97.if.end86_crit_edge ]
  %niv.2 = phi i32 [ %niv.0, %land.lhs.true ], [ 0, %if.end77 ], [ %dec98, %if.end97.if.end86_crit_edge ], [ 0, %if.end97 ]
  %cmp102 = icmp eq i32 %nkey.2, 0
  %cmp105 = icmp eq i32 %niv.2, 0
  %or.cond = select i1 %cmp102, i1 %cmp105, i1 false
  br i1 %or.cond, label %for.end109, label %for.cond

for.end109:                                       ; preds = %if.end101
  %call110 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %type) #6
  br label %err

err:                                              ; preds = %if.end34, %if.then29, %if.end21, %if.then16, %for.cond, %if.end52, %if.end46, %for.body, %if.end, %for.end109
  %rv.0 = phi i32 [ 0, %if.end ], [ %call110, %for.end109 ], [ 0, %for.body ], [ 0, %if.end46 ], [ 0, %if.end52 ], [ 0, %for.cond ], [ 0, %if.then16 ], [ 0, %if.end21 ], [ 0, %if.then29 ], [ 0, %if.end34 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call8) #6
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end5, %err
  %retval.0 = phi i32 [ %rv.0, %err ], [ %call, %cond.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #4

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #4

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #4

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
