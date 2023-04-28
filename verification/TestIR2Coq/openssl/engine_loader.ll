; ModuleID = 'apps/lib/engine_loader.c'
source_filename = "apps/lib/engine_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_store_loader_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_store_loader_ctx_st = type { %struct.engine_st*, i8*, i32, i32 }
%struct.ui_method_st = type opaque
%struct.ossl_store_info_st = type opaque
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"org.openssl.engine\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"org.openssl.engine:\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"apps/lib/engine_loader.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @setup_engine_loader() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_new(%struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.ossl_store_loader_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @OSSL_STORE_LOADER_set_open(%struct.ossl_store_loader_st* noundef nonnull %call, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @engine_open) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call i32 @OSSL_STORE_LOADER_set_expect(%struct.ossl_store_loader_st* noundef nonnull %call, i32 (%struct.ossl_store_loader_ctx_st*, i32)* noundef nonnull @engine_expect) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call6 = tail call i32 @OSSL_STORE_LOADER_set_load(%struct.ossl_store_loader_st* noundef nonnull %call, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* noundef nonnull @engine_load) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @OSSL_STORE_LOADER_set_eof(%struct.ossl_store_loader_st* noundef nonnull %call, i32 (%struct.ossl_store_loader_ctx_st*)* noundef nonnull @engine_eof) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @OSSL_STORE_LOADER_set_error(%struct.ossl_store_loader_st* noundef nonnull %call, i32 (%struct.ossl_store_loader_ctx_st*)* noundef nonnull @engine_error) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = tail call i32 @OSSL_STORE_LOADER_set_close(%struct.ossl_store_loader_st* noundef nonnull %call, i32 (%struct.ossl_store_loader_ctx_st*)* noundef nonnull @engine_close) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = tail call i32 @OSSL_STORE_register_loader(%struct.ossl_store_loader_st* noundef nonnull %call) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false17
  %loader.0 = phi %struct.ossl_store_loader_st* [ null, %if.then ], [ %call, %lor.lhs.false17 ]
  %cmp20 = icmp ne %struct.ossl_store_loader_st* %loader.0, null
  %conv = zext i1 %cmp20 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_new(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_LOADER_set_open(%struct.ossl_store_loader_st* noundef, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_loader_ctx_st* @engine_open(%struct.ossl_store_loader_st* nocapture noundef readnone %loader, i8* noundef %uri, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data) #0 {
entry:
  %engineid = alloca [256 x i8], align 16
  %call = tail call i32 @strncasecmp(i8* noundef %uri, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 noundef 19) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %uri, i64 19
  %call1 = tail call i8* @strchr(i8* noundef nonnull %add.ptr, i32 noundef 58) #9
  %cmp2.not = icmp eq i8* %call1, null
  br i1 %cmp2.not, label %if.then25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = load i8, i8* %add.ptr, align 1, !tbaa !4
  %cmp3.not = icmp eq i8 %0, 58
  br i1 %cmp3.not, label %if.then25, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr inbounds i8, i8* %call1, i64 1
  %1 = load i8, i8* %arrayidx6, align 1, !tbaa !4
  %cmp8.not = icmp eq i8 %1, 0
  br i1 %cmp8.not, label %if.then25, label %if.end17

if.end17:                                         ; preds = %land.lhs.true5
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %engineid, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #10
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call11 = call i8* @strncpy(i8* noundef nonnull %2, i8* noundef nonnull %add.ptr, i64 noundef %sub.ptr.sub) #8
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* %engineid, i64 0, i64 %sub.ptr.sub
  store i8 0, i8* %arrayidx12, align 1, !tbaa !4
  %call14 = call %struct.engine_st* @ENGINE_by_id(i8* noundef nonnull %2) #8
  %call16 = call i8* @CRYPTO_strdup(i8* noundef nonnull %arrayidx6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 91) #8
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #10
  %cmp18.not = icmp eq %struct.engine_st* %call14, null
  br i1 %cmp18.not, label %if.then25, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call21 = call fastcc %struct.ossl_store_loader_ctx_st* @OSSL_STORE_LOADER_CTX_new(%struct.engine_st* noundef nonnull %call14, i8* noundef %call16) #11
  %cmp23 = icmp eq %struct.ossl_store_loader_ctx_st* %call21, null
  br i1 %cmp23, label %if.then25, label %cleanup

if.then25:                                        ; preds = %if.end, %land.lhs.true, %land.lhs.true5, %if.end17, %if.end22
  %e.05461 = phi %struct.engine_st* [ %call14, %if.end22 ], [ null, %if.end17 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %if.end ]
  %keyid.05560 = phi i8* [ %call16, %if.end22 ], [ %call16, %if.end17 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %if.end ]
  call void @CRYPTO_free(i8* noundef %keyid.05560, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 98) #8
  %call26 = call i32 @ENGINE_free(%struct.engine_st* noundef %e.05461) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then25, %entry
  %retval.0 = phi %struct.ossl_store_loader_ctx_st* [ null, %entry ], [ null, %if.then25 ], [ %call21, %if.end22 ]
  ret %struct.ossl_store_loader_ctx_st* %retval.0
}

declare i32 @OSSL_STORE_LOADER_set_expect(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @engine_expect(%struct.ossl_store_loader_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %expected) #3 {
entry:
  switch i32 %expected, label %return [
    i32 4, label %if.then
    i32 3, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry, %entry
  %expected4 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 2
  store i32 %expected, i32* %expected4, align 8, !tbaa !7
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @OSSL_STORE_LOADER_set_load(%struct.ossl_store_loader_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @engine_load(%struct.ossl_store_loader_ctx_st* nocapture noundef %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #0 {
entry:
  %loaded = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 3
  %0 = load i32, i32* %loaded, align 4, !tbaa !11
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.thread

if.then:                                          ; preds = %entry
  %e = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !12
  %call = tail call i32 @ENGINE_init(%struct.engine_st* noundef %1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else.thread, label %if.then1

if.then1:                                         ; preds = %if.then
  %expected = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 2
  %2 = load i32, i32* %expected, align 8, !tbaa !7
  switch i32 %2, label %land.lhs.true [
    i32 0, label %if.end
    i32 4, label %if.end
  ]

if.end:                                           ; preds = %if.then1, %if.then1
  %3 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !12
  %keyid = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %4 = load i8*, i8** %keyid, align 8, !tbaa !13
  %call7 = tail call %struct.evp_pkey_st* @ENGINE_load_private_key(%struct.engine_st* noundef %3, i8* noundef %4, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #8
  %cmp8 = icmp eq %struct.evp_pkey_st* %call7, null
  %.pr = load i32, i32* %expected, align 8, !tbaa !7
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false11

land.lhs.true:                                    ; preds = %if.end, %if.then1
  %5 = phi i32 [ %2, %if.then1 ], [ %.pr, %if.end ]
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end, %land.lhs.true
  %6 = phi i32 [ %5, %land.lhs.true ], [ %.pr, %if.end ]
  %pkey.061 = phi %struct.evp_pkey_st* [ null, %land.lhs.true ], [ %call7, %if.end ]
  %cmp13 = icmp eq i32 %6, 3
  br i1 %cmp13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %lor.lhs.false11, %land.lhs.true
  %pkey.060 = phi %struct.evp_pkey_st* [ %pkey.061, %lor.lhs.false11 ], [ null, %land.lhs.true ]
  %7 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !12
  %keyid16 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %8 = load i8*, i8** %keyid16, align 8, !tbaa !13
  %call17 = tail call %struct.evp_pkey_st* @ENGINE_load_public_key(%struct.engine_st* noundef %7, i8* noundef %8, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #8
  br label %if.end22

if.else.thread:                                   ; preds = %entry, %if.then
  store i32 1, i32* %loaded, align 4, !tbaa !11
  br label %if.then33

if.end22:                                         ; preds = %lor.lhs.false11, %if.then14
  %pkey.059 = phi %struct.evp_pkey_st* [ %pkey.060, %if.then14 ], [ %pkey.061, %lor.lhs.false11 ]
  %pubkey.0 = phi %struct.evp_pkey_st* [ %call17, %if.then14 ], [ null, %lor.lhs.false11 ]
  %9 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !12
  %call20 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %9) #8
  store i32 1, i32* %loaded, align 4, !tbaa !11
  %cmp24.not = icmp eq %struct.evp_pkey_st* %pubkey.0, null
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PUBKEY(%struct.evp_pkey_st* noundef nonnull %pubkey.0) #8
  br label %if.end31

if.else:                                          ; preds = %if.end22
  %cmp27.not = icmp eq %struct.evp_pkey_st* %pkey.059, null
  br i1 %cmp27.not, label %if.then33, label %if.then28

if.then28:                                        ; preds = %if.else
  %call29 = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef nonnull %pkey.059) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25
  %info.0 = phi %struct.ossl_store_info_st* [ %call26, %if.then25 ], [ %call29, %if.then28 ]
  %cmp32 = icmp eq %struct.ossl_store_info_st* %info.0, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.else.thread, %if.else, %if.end31
  %pkey.16678 = phi %struct.evp_pkey_st* [ %pkey.059, %if.end31 ], [ null, %if.else.thread ], [ null, %if.else ]
  %pubkey.16877 = phi %struct.evp_pkey_st* [ %pubkey.0, %if.end31 ], [ null, %if.else.thread ], [ null, %if.else ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.16678) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pubkey.16877) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %info.079 = phi %struct.ossl_store_info_st* [ null, %if.then33 ], [ %info.0, %if.end31 ]
  ret %struct.ossl_store_info_st* %info.079
}

declare i32 @OSSL_STORE_LOADER_set_eof(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @engine_eof(%struct.ossl_store_loader_ctx_st* nocapture noundef readonly %ctx) #4 {
entry:
  %loaded = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 3
  %0 = load i32, i32* %loaded, align 4, !tbaa !11
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @OSSL_STORE_LOADER_set_error(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @engine_error(%struct.ossl_store_loader_ctx_st* nocapture noundef readnone %ctx) #5 {
entry:
  ret i32 0
}

declare i32 @OSSL_STORE_LOADER_set_close(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @engine_close(%struct.ossl_store_loader_ctx_st* noundef %ctx) #0 {
entry:
  tail call fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef %ctx) #11
  ret i32 1
}

declare i32 @OSSL_STORE_register_loader(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

declare void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @destroy_engine_loader() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_store_loader_st* @OSSL_STORE_unregister_loader(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #8
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %call) #8
  ret void
}

declare %struct.ossl_store_loader_st* @OSSL_STORE_unregister_loader(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

declare %struct.engine_st* @ENGINE_by_id(i8* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_loader_ctx_st* @OSSL_STORE_LOADER_CTX_new(%struct.engine_st* noundef %e, i8* noundef %keyid) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46) #8
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %e1 = bitcast i8* %call to %struct.engine_st**
  store %struct.engine_st* %e, %struct.engine_st** %e1, align 8, !tbaa !12
  %keyid2 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %keyid2 to i8**
  store i8* %keyid, i8** %0, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast i8* %call to %struct.ossl_store_loader_ctx_st*
  ret %struct.ossl_store_loader_ctx_st* %1
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ENGINE_load_private_key(%struct.engine_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ENGINE_load_public_key(%struct.engine_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PUBKEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_store_loader_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %e = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !12
  %call = tail call i32 @ENGINE_free(%struct.engine_st* noundef %0) #8
  %keyid = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %1 = load i8*, i8** %keyid, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59) #8
  %2 = bitcast %struct.ossl_store_loader_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 60) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 16}
!8 = !{!"ossl_store_loader_ctx_st", !9, i64 0, !9, i64 8, !10, i64 16, !10, i64 20}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !10, i64 20}
!12 = !{!8, !9, i64 0}
!13 = !{!8, !9, i64 8}
