; ModuleID = 'crypto/evp/names.c'
source_filename = "crypto/evp/names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.ossl_namemap_st = type opaque
%struct.doall_cipher = type { i8*, void (%struct.evp_cipher_st*, i8*, i8*, i8*)* }
%struct.obj_name_st = type { i32, i32, i8*, i8* }
%struct.doall_md = type { i8*, void (%struct.evp_md_st*, i8*, i8*, i8*)* }

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_add_cipher(%struct.evp_cipher_st* noundef %c) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_cipher_st* %c, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nid = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %c, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !4
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %0) #3
  %1 = bitcast %struct.evp_cipher_st* %c to i8*
  %call1 = tail call i32 @OBJ_NAME_add(i8* noundef %call, i32 noundef 2, i8* noundef nonnull %1) #3
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %nid, align 8, !tbaa !4
  %call6 = tail call i8* @OBJ_nid2ln(i32 noundef %2) #3
  %call7 = tail call i32 @OBJ_NAME_add(i8* noundef %call6, i32 noundef 2, i8* noundef nonnull %1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OBJ_NAME_add(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_add_digest(%struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !11
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %0) #3
  %1 = bitcast %struct.evp_md_st* %md to i8*
  %call1 = tail call i32 @OBJ_NAME_add(i8* noundef %call, i32 noundef 1, i8* noundef %1) #3
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %type, align 8, !tbaa !11
  %call3 = tail call i8* @OBJ_nid2ln(i32 noundef %2) #3
  %call4 = tail call i32 @OBJ_NAME_add(i8* noundef %call3, i32 noundef 1, i8* noundef nonnull %1) #3
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %pkey_type = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %md, i64 0, i32 1
  %3 = load i32, i32* %pkey_type, align 4, !tbaa !13
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %4 = load i32, i32* %type, align 8, !tbaa !11
  %cmp10.not = icmp eq i32 %4, %3
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %call13 = tail call i8* @OBJ_nid2sn(i32 noundef %3) #3
  %call14 = tail call i32 @OBJ_NAME_add(i8* noundef %call13, i32 noundef 32769, i8* noundef %call) #3
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then11
  %5 = load i32, i32* %pkey_type, align 4, !tbaa !13
  %call19 = tail call i8* @OBJ_nid2ln(i32 noundef %5) #3
  %call20 = tail call i32 @OBJ_NAME_add(i8* noundef %call19, i32 noundef 32769, i8* noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true, %if.end17, %if.then11, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then11 ], [ %call20, %if.end17 ], [ %call4, %land.lhs.true ], [ %call4, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @evp_get_cipherbyname_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %name) #4
  ret %struct.evp_cipher_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @evp_get_cipherbyname_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %cp = alloca %struct.evp_cipher_st*, align 8
  %0 = bitcast %struct.evp_cipher_st** %cp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 4, %struct.ossl_init_settings_st* noundef null) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef 2) #3
  %1 = bitcast %struct.evp_cipher_st** %cp to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !14
  %cmp.not = icmp eq i8* %call1, null
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = bitcast i8* %call1 to %struct.evp_cipher_st*
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %libctx) #3
  %call5 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call4, i8* noundef %name) #3
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call9 = call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %call4, i32 noundef %call5, void (i8*, i8*)* noundef nonnull @cipher_from_name, i8* noundef nonnull %0) #3
  %tobool10.not = icmp eq i32 %call9, 0
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cp, align 8
  %spec.select = select i1 %tobool10.not, %struct.evp_cipher_st* null, %struct.evp_cipher_st* %3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3, %entry, %if.then2
  %retval.0 = phi %struct.evp_cipher_st* [ %2, %if.then2 ], [ null, %entry ], [ null, %if.end3 ], [ %spec.select, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.evp_cipher_st* %retval.0
}

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #2

declare i8* @OBJ_NAME_get(i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @cipher_from_name(i8* noundef %name, i8* nocapture noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.evp_cipher_st**
  %1 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %0, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.evp_cipher_st* %1, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef 2) #3
  %2 = bitcast i8* %data to i8**
  store i8* %call, i8** %2, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %name) #4
  ret %struct.evp_md_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %dp = alloca %struct.evp_md_st*, align 8
  %0 = bitcast %struct.evp_md_st** %dp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 8, %struct.ossl_init_settings_st* noundef null) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef 1) #3
  %1 = bitcast %struct.evp_md_st** %dp to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !14
  %cmp.not = icmp eq i8* %call1, null
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = bitcast i8* %call1 to %struct.evp_md_st*
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %libctx) #3
  %call5 = tail call i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %call4, i8* noundef %name) #3
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %call9 = call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %call4, i32 noundef %call5, void (i8*, i8*)* noundef nonnull @digest_from_name, i8* noundef nonnull %0) #3
  %tobool10.not = icmp eq i32 %call9, 0
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %dp, align 8
  %spec.select = select i1 %tobool10.not, %struct.evp_md_st* null, %struct.evp_md_st* %3
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3, %entry, %if.then2
  %retval.0 = phi %struct.evp_md_st* [ %2, %if.then2 ], [ null, %entry ], [ null, %if.end3 ], [ %spec.select, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.evp_md_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @digest_from_name(i8* noundef %name, i8* nocapture noundef %data) #0 {
entry:
  %0 = bitcast i8* %data to %struct.evp_md_st**
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %0, align 8, !tbaa !14
  %cmp.not = icmp eq %struct.evp_md_st* %1, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @OBJ_NAME_get(i8* noundef %name, i32 noundef 1) #3
  %2 = bitcast i8* %data to i8**
  store i8* %call, i8** %2, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @evp_cleanup_int() local_unnamed_addr #0 {
entry:
  tail call void @OBJ_NAME_cleanup(i32 noundef 6) #3
  tail call void @OBJ_NAME_cleanup(i32 noundef 2) #3
  tail call void @OBJ_NAME_cleanup(i32 noundef 1) #3
  tail call void @OBJ_NAME_cleanup(i32 noundef -1) #3
  tail call void @EVP_PBE_cleanup() #3
  tail call void @OBJ_sigid_free() #3
  tail call void @evp_app_cleanup_int() #3
  ret void
}

declare void @OBJ_NAME_cleanup(i32 noundef) local_unnamed_addr #2

declare void @EVP_PBE_cleanup() local_unnamed_addr #2

declare void @OBJ_sigid_free() local_unnamed_addr #2

declare void @evp_app_cleanup_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_do_all(void (%struct.evp_cipher_st*, i8*, i8*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %dc = alloca %struct.doall_cipher, align 8
  %0 = bitcast %struct.doall_cipher* %dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 4, %struct.ossl_init_settings_st* noundef null) #3
  %fn1 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %dc, i64 0, i32 1
  store void (%struct.evp_cipher_st*, i8*, i8*, i8*)* %fn, void (%struct.evp_cipher_st*, i8*, i8*, i8*)** %fn1, align 8, !tbaa !15
  %arg2 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %dc, i64 0, i32 0
  store i8* %arg, i8** %arg2, align 8, !tbaa !17
  call void @OBJ_NAME_do_all(i32 noundef 2, void (%struct.obj_name_st*, i8*)* noundef nonnull @do_all_cipher_fn, i8* noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret void
}

declare void @OBJ_NAME_do_all(i32 noundef, void (%struct.obj_name_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @do_all_cipher_fn(%struct.obj_name_st* nocapture noundef readonly %nm, i8* nocapture noundef readonly %arg) #0 {
entry:
  %alias = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 1
  %0 = load i32, i32* %alias, align 4, !tbaa !18
  %tobool.not = icmp eq i32 %0, 0
  %fn2 = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %fn2 to void (%struct.evp_cipher_st*, i8*, i8*, i8*)**
  %2 = load void (%struct.evp_cipher_st*, i8*, i8*, i8*)*, void (%struct.evp_cipher_st*, i8*, i8*, i8*)** %1, align 8, !tbaa !15
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 2
  %3 = load i8*, i8** %name, align 8, !tbaa !20
  %data = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 3
  %4 = load i8*, i8** %data, align 8, !tbaa !21
  %arg1 = bitcast i8* %arg to i8**
  %5 = load i8*, i8** %arg1, align 8, !tbaa !17
  tail call void %2(%struct.evp_cipher_st* noundef null, i8* noundef %3, i8* noundef %4, i8* noundef %5) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %data3 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 3
  %6 = bitcast i8** %data3 to %struct.evp_cipher_st**
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %6, align 8, !tbaa !21
  %name4 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 2
  %8 = load i8*, i8** %name4, align 8, !tbaa !20
  %arg5 = bitcast i8* %arg to i8**
  %9 = load i8*, i8** %arg5, align 8, !tbaa !17
  tail call void %2(%struct.evp_cipher_st* noundef %7, i8* noundef %8, i8* noundef null, i8* noundef %9) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_CIPHER_do_all_sorted(void (%struct.evp_cipher_st*, i8*, i8*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %dc = alloca %struct.doall_cipher, align 8
  %0 = bitcast %struct.doall_cipher* %dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 4, %struct.ossl_init_settings_st* noundef null) #3
  %fn1 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %dc, i64 0, i32 1
  store void (%struct.evp_cipher_st*, i8*, i8*, i8*)* %fn, void (%struct.evp_cipher_st*, i8*, i8*, i8*)** %fn1, align 8, !tbaa !15
  %arg2 = getelementptr inbounds %struct.doall_cipher, %struct.doall_cipher* %dc, i64 0, i32 0
  store i8* %arg, i8** %arg2, align 8, !tbaa !17
  call void @OBJ_NAME_do_all_sorted(i32 noundef 2, void (%struct.obj_name_st*, i8*)* noundef nonnull @do_all_cipher_fn, i8* noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret void
}

declare void @OBJ_NAME_do_all_sorted(i32 noundef, void (%struct.obj_name_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_do_all(void (%struct.evp_md_st*, i8*, i8*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %dc = alloca %struct.doall_md, align 8
  %0 = bitcast %struct.doall_md* %dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 8, %struct.ossl_init_settings_st* noundef null) #3
  %fn1 = getelementptr inbounds %struct.doall_md, %struct.doall_md* %dc, i64 0, i32 1
  store void (%struct.evp_md_st*, i8*, i8*, i8*)* %fn, void (%struct.evp_md_st*, i8*, i8*, i8*)** %fn1, align 8, !tbaa !22
  %arg2 = getelementptr inbounds %struct.doall_md, %struct.doall_md* %dc, i64 0, i32 0
  store i8* %arg, i8** %arg2, align 8, !tbaa !24
  call void @OBJ_NAME_do_all(i32 noundef 1, void (%struct.obj_name_st*, i8*)* noundef nonnull @do_all_md_fn, i8* noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_all_md_fn(%struct.obj_name_st* nocapture noundef readonly %nm, i8* nocapture noundef readonly %arg) #0 {
entry:
  %alias = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 1
  %0 = load i32, i32* %alias, align 4, !tbaa !18
  %tobool.not = icmp eq i32 %0, 0
  %fn2 = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %fn2 to void (%struct.evp_md_st*, i8*, i8*, i8*)**
  %2 = load void (%struct.evp_md_st*, i8*, i8*, i8*)*, void (%struct.evp_md_st*, i8*, i8*, i8*)** %1, align 8, !tbaa !22
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 2
  %3 = load i8*, i8** %name, align 8, !tbaa !20
  %data = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 3
  %4 = load i8*, i8** %data, align 8, !tbaa !21
  %arg1 = bitcast i8* %arg to i8**
  %5 = load i8*, i8** %arg1, align 8, !tbaa !24
  tail call void %2(%struct.evp_md_st* noundef null, i8* noundef %3, i8* noundef %4, i8* noundef %5) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %data3 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 3
  %6 = bitcast i8** %data3 to %struct.evp_md_st**
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %6, align 8, !tbaa !21
  %name4 = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %nm, i64 0, i32 2
  %8 = load i8*, i8** %name4, align 8, !tbaa !20
  %arg5 = bitcast i8* %arg to i8**
  %9 = load i8*, i8** %arg5, align 8, !tbaa !24
  tail call void %2(%struct.evp_md_st* noundef %7, i8* noundef %8, i8* noundef null, i8* noundef %9) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_MD_do_all_sorted(void (%struct.evp_md_st*, i8*, i8*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %dc = alloca %struct.doall_md, align 8
  %0 = bitcast %struct.doall_md* %dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 8, %struct.ossl_init_settings_st* noundef null) #3
  %fn1 = getelementptr inbounds %struct.doall_md, %struct.doall_md* %dc, i64 0, i32 1
  store void (%struct.evp_md_st*, i8*, i8*, i8*)* %fn, void (%struct.evp_md_st*, i8*, i8*, i8*)** %fn1, align 8, !tbaa !22
  %arg2 = getelementptr inbounds %struct.doall_md, %struct.doall_md* %dc, i64 0, i32 0
  store i8* %arg, i8** %arg2, align 8, !tbaa !24
  call void @OBJ_NAME_do_all_sorted(i32 noundef 1, void (%struct.obj_name_st*, i8*)* noundef nonnull @do_all_md_fn, i8* noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_cipher_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !9, i64 16, !6, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !7, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"evp_md_st", !6, i64 0, !6, i64 4, !6, i64 8, !9, i64 16, !6, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !6, i64 76, !10, i64 80, !6, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !7, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232}
!13 = !{!12, !6, i64 4}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !10, i64 8}
!16 = !{!"doall_cipher", !10, i64 0, !10, i64 8}
!17 = !{!16, !10, i64 0}
!18 = !{!19, !6, i64 4}
!19 = !{!"obj_name_st", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16}
!20 = !{!19, !10, i64 8}
!21 = !{!19, !10, i64 16}
!22 = !{!23, !10, i64 8}
!23 = !{!"doall_md", !10, i64 0, !10, i64 8}
!24 = !{!23, !10, i64 0}
