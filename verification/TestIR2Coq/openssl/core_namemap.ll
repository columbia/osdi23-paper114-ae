; ModuleID = 'crypto/core_namemap.c'
source_filename = "crypto/core_namemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_method = type { i32, i8* (%struct.ossl_lib_ctx_st*)*, void (i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_namemap_st = type { i8, i8*, %struct.lhash_st_NAMENUM_ENTRY*, i32 }
%struct.lhash_st_NAMENUM_ENTRY = type { %union.lh_NAMENUM_ENTRY_dummy }
%union.lh_NAMENUM_ENTRY_dummy = type { i8* }
%struct.doall_names_data_st = type { i32, i8**, i32 }
%struct.lhash_st = type opaque
%struct.NAMENUM_ENTRY = type { i8*, i32 }
%struct.ossl_init_settings_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.num2name_data_st = type { i64, i8* }
%struct.obj_name_st = type { i32, i32, i8*, i8* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.asn1_object_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/core_namemap.c\00", align 1
@__func__.ossl_namemap_add_names = private unnamed_addr constant [23 x i8] c"ossl_namemap_add_names\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\22%.*s\22 has an existing different identity %d (from \22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Got number %d when expecting %d\00", align 1
@stored_namemap_method = internal constant %struct.ossl_lib_ctx_method { i32 0, i8* (%struct.ossl_lib_ctx_st*)* @stored_namemap_new, void (i8*)* @stored_namemap_free }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define i32 @ossl_namemap_empty(%struct.ossl_namemap_st* noundef readonly %namemap) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_namemap_st* %namemap, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %max_number = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 3
  %0 = load atomic i32, i32* %max_number monotonic, align 8
  %cmp1 = icmp eq i32 %0, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* nocapture noundef readonly %namemap, i32 noundef %number, void (i8*, i8*)* nocapture noundef readonly %fn, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %cbdata = alloca %struct.doall_names_data_st, align 8
  %0 = bitcast %struct.doall_names_data_st* %cbdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %number1 = getelementptr inbounds %struct.doall_names_data_st, %struct.doall_names_data_st* %cbdata, i64 0, i32 0
  store i32 %number, i32* %number1, align 8, !tbaa !4
  %found = getelementptr inbounds %struct.doall_names_data_st, %struct.doall_names_data_st* %cbdata, i64 0, i32 2
  store i32 0, i32* %found, align 8, !tbaa !10
  %lock = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 1
  %1 = load i8*, i8** %lock, align 8, !tbaa !11
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %namenum = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 2
  %2 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum, align 8, !tbaa !13
  %call2 = tail call fastcc i64 @lh_NAMENUM_ENTRY_num_items(%struct.lhash_st_NAMENUM_ENTRY* noundef %2) #9
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %3 = load i8*, i8** %lock, align 8, !tbaa !11
  %call5 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %3) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mul = shl i64 %call2, 3
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 163) #8
  %names = getelementptr inbounds %struct.doall_names_data_st, %struct.doall_names_data_st* %cbdata, i64 0, i32 1
  %4 = bitcast i8*** %names to i8**
  store i8* %call7, i8** %4, align 8, !tbaa !14
  %cmp9 = icmp eq i8* %call7, null
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %5 = load i8*, i8** %lock, align 8, !tbaa !11
  %call12 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %6 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum, align 8, !tbaa !13
  call fastcc void @lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA(%struct.lhash_st_NAMENUM_ENTRY* noundef %6, %struct.doall_names_data_st* noundef nonnull %cbdata) #9
  %7 = load i8*, i8** %lock, align 8, !tbaa !11
  %call16 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %7) #8
  %8 = load i32, i32* %found, align 8, !tbaa !10
  %cmp1833 = icmp sgt i32 %8, 0
  br i1 %cmp1833, label %for.body, label %for.end

for.body:                                         ; preds = %if.end13, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end13 ]
  %9 = load i8**, i8*** %names, align 8, !tbaa !14
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !15
  call void %fn(i8* noundef %10, i8* noundef %data) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, i32* %found, align 8, !tbaa !10
  %12 = sext i32 %11 to i64
  %cmp18 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp18, label %for.body, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %for.body, %if.end13
  %13 = load i8*, i8** %4, align 8, !tbaa !14
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 175) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.then10, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then10 ], [ 1, %for.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_NAMENUM_ENTRY_num_items(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef %0) #8
  ret i64 %call
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_NAMENUM_ENTRY_doall_DOALL_NAMES_DATA(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh, %struct.doall_names_data_st* noundef %arg) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.doall_names_data_st* %arg to i8*
  tail call void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %0, void (i8*, i8*)* noundef bitcast (void (%struct.NAMENUM_ENTRY*, %struct.doall_names_data_st*)* @do_name to void (i8*, i8*)*), i8* noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @do_name(%struct.NAMENUM_ENTRY* nocapture noundef readonly %namenum, %struct.doall_names_data_st* nocapture noundef %data) #4 {
entry:
  %number = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %namenum, i64 0, i32 1
  %0 = load i32, i32* %number, align 8, !tbaa !18
  %number1 = getelementptr inbounds %struct.doall_names_data_st, %struct.doall_names_data_st* %data, i64 0, i32 0
  %1 = load i32, i32* %number1, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %namenum, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !20
  %names = getelementptr inbounds %struct.doall_names_data_st, %struct.doall_names_data_st* %data, i64 0, i32 1
  %3 = load i8**, i8*** %names, align 8, !tbaa !14
  %found = getelementptr inbounds %struct.doall_names_data_st, %struct.doall_names_data_st* %data, i64 0, i32 2
  %4 = load i32, i32* %found, align 8, !tbaa !10
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %found, align 8, !tbaa !10
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  store i8* %2, i8** %arrayidx, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef readonly %namemap, i8* noundef %name, i64 noundef %name_len) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_namemap_st* %namemap, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef null) #9
  %cmp1 = icmp eq %struct.ossl_namemap_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %namemap.addr.017 = phi %struct.ossl_namemap_st* [ %call, %if.end ], [ %namemap, %entry ]
  %lock = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap.addr.017, i64 0, i32 1
  %0 = load i8*, i8** %lock, align 8, !tbaa !11
  %call4 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = tail call fastcc i32 @namemap_name2num_n(%struct.ossl_namemap_st* noundef nonnull %namemap.addr.017, i8* noundef %name, i64 noundef %name_len) #9
  %1 = load i8*, i8** %lock, align 8, !tbaa !11
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %if.end ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 4, %struct.ossl_lib_ctx_method* noundef nonnull @stored_namemap_method) #8
  %0 = bitcast i8* %call to %struct.ossl_namemap_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_namemap_empty(%struct.ossl_namemap_st* noundef nonnull %0) #9
  %cmp5 = icmp eq i32 %call1, 1
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @OPENSSL_init_crypto(i64 noundef 12, %struct.ossl_init_settings_st* noundef null) #8
  tail call void @OBJ_NAME_do_all(i32 noundef 2, void (%struct.obj_name_st*, i8*)* noundef nonnull @get_legacy_cipher_names, i8* noundef nonnull %call) #8
  tail call void @OBJ_NAME_do_all(i32 noundef 1, void (%struct.obj_name_st*, i8*)* noundef nonnull @get_legacy_md_names, i8* noundef nonnull %call) #8
  %call8 = tail call i32 @EVP_PKEY_asn1_get_count() #8
  %cmp925 = icmp sgt i32 %call8, 0
  br i1 %cmp925, label %for.body, label %cleanup

for.body:                                         ; preds = %if.then6, %for.body
  %i.026 = phi i32 [ %inc, %for.body ], [ 0, %if.then6 ]
  %call10 = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %i.026) #8
  tail call fastcc void @get_legacy_pkey_meth_names(%struct.evp_pkey_asn1_method_st* noundef %call10, i8* noundef nonnull %call) #9
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %call8
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !21

cleanup:                                          ; preds = %for.body, %if.then6, %if.end, %entry
  %retval.0 = phi %struct.ossl_namemap_st* [ null, %entry ], [ %0, %if.end ], [ %0, %if.then6 ], [ %0, %for.body ]
  ret %struct.ossl_namemap_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @namemap_name2num_n(%struct.ossl_namemap_st* nocapture noundef readonly %namemap, i8* noundef %name, i64 noundef %name_len) unnamed_addr #1 {
entry:
  %namenum_tmpl = alloca %struct.NAMENUM_ENTRY, align 8
  %0 = bitcast %struct.NAMENUM_ENTRY* %namenum_tmpl to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %call = tail call i8* @CRYPTO_strndup(i8* noundef %name, i64 noundef %name_len, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 184) #8
  %name1 = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %namenum_tmpl, i64 0, i32 0
  store i8* %call, i8** %name1, align 8, !tbaa !20
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %number = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %namenum_tmpl, i64 0, i32 1
  store i32 0, i32* %number, align 8, !tbaa !18
  %namenum = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 2
  %1 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum, align 8, !tbaa !13
  %call2 = call fastcc %struct.NAMENUM_ENTRY* @lh_NAMENUM_ENTRY_retrieve(%struct.lhash_st_NAMENUM_ENTRY* noundef %1, %struct.NAMENUM_ENTRY* noundef nonnull %namenum_tmpl) #9
  %2 = load i8*, i8** %name1, align 8, !tbaa !20
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 189) #8
  %cmp4.not = icmp eq %struct.NAMENUM_ENTRY* %call2, null
  br i1 %cmp4.not, label %cleanup, label %cond.true

cond.true:                                        ; preds = %if.end
  %number5 = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %call2, i64 0, i32 1
  %3 = load i32, i32* %number5, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %3, %cond.true ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_namemap_name2num(%struct.ossl_namemap_st* noundef %namemap, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %name) #10
  %call1 = tail call i32 @ossl_namemap_name2num_n(%struct.ossl_namemap_st* noundef %namemap, i8* noundef nonnull %name, i64 noundef %call) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_namemap_num2name(%struct.ossl_namemap_st* nocapture noundef readonly %namemap, i32 noundef %number, i64 noundef %idx) local_unnamed_addr #1 {
entry:
  %data = alloca %struct.num2name_data_st, align 8
  %0 = bitcast %struct.num2name_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %idx1 = getelementptr inbounds %struct.num2name_data_st, %struct.num2name_data_st* %data, i64 0, i32 0
  store i64 %idx, i64* %idx1, align 8, !tbaa !22
  %name = getelementptr inbounds %struct.num2name_data_st, %struct.num2name_data_st* %data, i64 0, i32 1
  store i8* null, i8** %name, align 8, !tbaa !25
  %call = call i32 @ossl_namemap_doall_names(%struct.ossl_namemap_st* noundef %namemap, i32 noundef %number, void (i8*, i8*)* noundef nonnull @do_num2name, i8* noundef nonnull %0) #9
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i8*, i8** %name, align 8
  %retval.0 = select i1 %tobool.not, i8* null, i8* %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @do_num2name(i8* noundef %name, i8* nocapture noundef %vdata) #4 {
entry:
  %idx = bitcast i8* %vdata to i64*
  %0 = load i64, i64* %idx, align 8, !tbaa !22
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dec = add i64 %0, -1
  store i64 %dec, i64* %idx, align 8, !tbaa !22
  br label %if.end6

if.else:                                          ; preds = %entry
  %name2 = getelementptr inbounds i8, i8* %vdata, i64 8
  %1 = bitcast i8* %name2 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !25
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  store i8* %name, i8** %1, align 8, !tbaa !25
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_namemap_add_name_n(%struct.ossl_namemap_st* noundef %namemap, i32 noundef %number, i8* noundef %name, i64 noundef %name_len) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_namemap_st* %namemap, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_stored(%struct.ossl_lib_ctx_st* noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %namemap.addr.0 = phi %struct.ossl_namemap_st* [ %call, %if.then ], [ %namemap, %entry ]
  %cmp1 = icmp eq i8* %name, null
  %cmp2 = icmp eq i64 %name_len, 0
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq %struct.ossl_namemap_st* %namemap.addr.0, null
  %or.cond13 = select i1 %or.cond, i1 true, i1 %cmp4
  br i1 %or.cond13, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap.addr.0, i64 0, i32 1
  %0 = load i8*, i8** %lock, align 8, !tbaa !11
  %call7 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = tail call fastcc i32 @namemap_add_name_n(%struct.ossl_namemap_st* noundef nonnull %namemap.addr.0, i32 noundef %number, i8* noundef nonnull %name, i64 noundef %name_len) #9
  %1 = load i8*, i8** %lock, align 8, !tbaa !11
  %call12 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %if.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @namemap_add_name_n(%struct.ossl_namemap_st* nocapture noundef %namemap, i32 noundef %number, i8* noundef %name, i64 noundef %name_len) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @namemap_name2num_n(%struct.ossl_namemap_st* noundef %namemap, i8* noundef %name, i64 noundef %name_len) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 259) #8
  %0 = bitcast i8* %call1 to %struct.NAMENUM_ENTRY*
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i8* @CRYPTO_strndup(i8* noundef %name, i64 noundef %name_len, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 260) #8
  %name4 = bitcast i8* %call1 to i8**
  store i8* %call3, i8** %name4, align 8, !tbaa !20
  %cmp5 = icmp eq i8* %call3, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %cmp8.not = icmp eq i32 %number, 0
  br i1 %cmp8.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end7
  %max_number = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 3
  %1 = atomicrmw add i32* %max_number, i32 1 monotonic, align 4
  %add = add nsw i32 %1, 1
  br label %cond.end

cond.end:                                         ; preds = %if.end7, %cond.false
  %cond = phi i32 [ %add, %cond.false ], [ %number, %if.end7 ]
  %number9 = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %number9 to i32*
  store i32 %cond, i32* %2, align 8, !tbaa !18
  %namenum10 = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 2
  %3 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum10, align 8, !tbaa !13
  tail call fastcc void @lh_NAMENUM_ENTRY_insert(%struct.lhash_st_NAMENUM_ENTRY* noundef %3, %struct.NAMENUM_ENTRY* noundef nonnull %0) #9
  %4 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum10, align 8, !tbaa !13
  %call13 = tail call fastcc i32 @lh_NAMENUM_ENTRY_error(%struct.lhash_st_NAMENUM_ENTRY* noundef %4) #9
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %err

if.end15:                                         ; preds = %cond.end
  %5 = load i32, i32* %2, align 8, !tbaa !18
  br label %cleanup

err:                                              ; preds = %cond.end, %if.end, %lor.lhs.false
  tail call void @namenum_free(%struct.NAMENUM_ENTRY* noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end15
  %retval.0 = phi i32 [ 0, %err ], [ %5, %if.end15 ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %namemap, i32 noundef %number, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %name, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %name) #10
  %call1 = tail call i32 @ossl_namemap_add_name_n(%struct.ossl_namemap_st* noundef %namemap, i32 noundef %number, i8* noundef nonnull %name, i64 noundef %call) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_namemap_add_names(%struct.ossl_namemap_st* noundef %namemap, i32 noundef %number, i8* noundef %names, i8 noundef signext %separator) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.ossl_namemap_st* %namemap, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_namemap_add_names, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup83

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 1
  %0 = load i8*, i8** %lock, align 8, !tbaa !11
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup83, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %1 = load i8, i8* %names, align 1, !tbaa !26
  %cmp6.not149 = icmp eq i8 %1, 0
  br i1 %cmp6.not149, label %for.end78, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv8 = sext i8 %separator to i32
  br label %for.body

for.cond39.preheader:                             ; preds = %for.inc
  %.pre = load i8, i8* %names, align 1, !tbaa !26
  %phi.cmp = icmp eq i8 %.pre, 0
  br i1 %phi.cmp, label %for.end78, label %for.body43.lr.ph

for.body43.lr.ph:                                 ; preds = %for.cond39.preheader
  %conv45 = sext i8 %separator to i32
  br label %for.body43

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %number.addr.0152 = phi i32 [ %number, %for.body.lr.ph ], [ %number.addr.2.ph, %for.inc ]
  %p.0150 = phi i8* [ %names, %for.body.lr.ph ], [ %cond, %for.inc ]
  %call9 = tail call i8* @strchr(i8* noundef nonnull %p.0150, i32 noundef %conv8) #10
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  %call13 = tail call i64 @strlen(i8* noundef nonnull %p.0150) #10
  br label %if.end14

if.else:                                          ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %call9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %p.0150 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %l.0 = phi i64 [ %call13, %if.then12 ], [ %sub.ptr.sub, %if.else ]
  %call15 = tail call fastcc i32 @namemap_name2num_n(%struct.ossl_namemap_st* noundef nonnull %namemap, i8* noundef nonnull %p.0150, i64 noundef %l.0) #9
  %2 = load i8, i8* %p.0150, align 1, !tbaa !26
  %cmp17 = icmp eq i8 %2, 0
  %cmp21 = icmp eq i8 %2, %separator
  %or.cond = or i1 %cmp17, %cmp21
  br i1 %or.cond, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end14
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_namemap_add_names, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 117, i8* noundef null) #8
  br label %err

if.end24:                                         ; preds = %if.end14
  %cmp25 = icmp eq i32 %number.addr.0152, 0
  br i1 %cmp25, label %for.inc, label %if.else28

if.else28:                                        ; preds = %if.end24
  %cmp29.not = icmp eq i32 %call15, 0
  %cmp31.not = icmp eq i32 %call15, %number.addr.0152
  %or.cond135 = select i1 %cmp29.not, i1 true, i1 %cmp31.not
  br i1 %or.cond135, label %for.inc, label %if.then33

if.then33:                                        ; preds = %if.else28
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_namemap_add_names, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 118, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 noundef %l.0, i8* noundef nonnull %p.0150, i32 noundef %call15, i8* noundef nonnull %names) #8
  br label %err

for.inc:                                          ; preds = %if.end24, %if.else28
  %number.addr.2.ph = phi i32 [ %call15, %if.end24 ], [ %number.addr.0152, %if.else28 ]
  %add.ptr = getelementptr inbounds i8, i8* %p.0150, i64 %l.0
  %add.ptr38 = getelementptr inbounds i8, i8* %call9, i64 1
  %cond = select i1 %cmp10, i8* %add.ptr, i8* %add.ptr38
  %3 = load i8, i8* %cond, align 1, !tbaa !26
  %cmp6.not = icmp eq i8 %3, 0
  br i1 %cmp6.not, label %for.cond39.preheader, label %for.body, !llvm.loop !27

for.body43:                                       ; preds = %for.body43.lr.ph, %for.inc69
  %number.addr.3156 = phi i32 [ %number.addr.2.ph, %for.body43.lr.ph ], [ %number.addr.5.ph, %for.inc69 ]
  %p.1154 = phi i8* [ %names, %for.body43.lr.ph ], [ %cond77, %for.inc69 ]
  %call46 = tail call i8* @strchr(i8* noundef nonnull %p.1154, i32 noundef %conv45) #10
  %cmp47 = icmp eq i8* %call46, null
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %for.body43
  %call50 = tail call i64 @strlen(i8* noundef nonnull %p.1154) #10
  br label %if.end55

if.else51:                                        ; preds = %for.body43
  %sub.ptr.lhs.cast52 = ptrtoint i8* %call46 to i64
  %sub.ptr.rhs.cast53 = ptrtoint i8* %p.1154 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then49
  %l.1 = phi i64 [ %call50, %if.then49 ], [ %sub.ptr.sub54, %if.else51 ]
  %call56 = tail call fastcc i32 @namemap_add_name_n(%struct.ossl_namemap_st* noundef nonnull %namemap, i32 noundef %number.addr.3156, i8* noundef nonnull %p.1154, i64 noundef %l.1) #9
  %cmp57 = icmp eq i32 %number.addr.3156, 0
  br i1 %cmp57, label %for.inc69, label %if.else60

if.else60:                                        ; preds = %if.end55
  %cmp61.not = icmp eq i32 %call56, %number.addr.3156
  br i1 %cmp61.not, label %for.inc69, label %cleanup66

cleanup66:                                        ; preds = %if.else60
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_namemap_add_names, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786691, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call56, i32 noundef %number.addr.3156) #8
  br label %err

for.inc69:                                        ; preds = %if.end55, %if.else60
  %number.addr.5.ph = phi i32 [ %call56, %if.end55 ], [ %number.addr.3156, %if.else60 ]
  %add.ptr73 = getelementptr inbounds i8, i8* %p.1154, i64 %l.1
  %add.ptr75 = getelementptr inbounds i8, i8* %call46, i64 1
  %cond77 = select i1 %cmp47, i8* %add.ptr73, i8* %add.ptr75
  %4 = load i8, i8* %cond77, align 1, !tbaa !26
  %cmp41.not = icmp eq i8 %4, 0
  br i1 %cmp41.not, label %for.end78, label %for.body43, !llvm.loop !28

for.end78:                                        ; preds = %for.inc69, %for.cond.preheader, %for.cond39.preheader
  %number.addr.3.lcssa = phi i32 [ %number.addr.2.ph, %for.cond39.preheader ], [ %number, %for.cond.preheader ], [ %number.addr.5.ph, %for.inc69 ]
  %5 = load i8*, i8** %lock, align 8, !tbaa !11
  %call80 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %5) #8
  br label %cleanup83

err:                                              ; preds = %cleanup66, %if.then23, %if.then33
  %6 = load i8*, i8** %lock, align 8, !tbaa !11
  %call82 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #8
  br label %cleanup83

cleanup83:                                        ; preds = %if.end, %err, %for.end78, %if.then
  %retval.0 = phi i32 [ 0, %err ], [ %number.addr.3.lcssa, %for.end78 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #5

declare i8* @ossl_lib_ctx_get_data(%struct.ossl_lib_ctx_st* noundef, i32 noundef, %struct.ossl_lib_ctx_method* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #3

declare void @OBJ_NAME_do_all(i32 noundef, void (%struct.obj_name_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @get_legacy_cipher_names(%struct.obj_name_st* nocapture noundef readonly %on, i8* noundef %arg) #1 {
entry:
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 2
  %0 = load i8*, i8** %name, align 8, !tbaa !29
  %type = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !31
  %call = tail call i8* @OBJ_NAME_get(i8* noundef %0, i32 noundef %1) #8
  %2 = bitcast i8* %call to %struct.evp_cipher_st*
  %call1 = tail call i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef %2) #8
  tail call fastcc void @get_legacy_evp_names(i32 noundef 0, i32 noundef %call1, i8* noundef null, i8* noundef %arg) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @get_legacy_md_names(%struct.obj_name_st* nocapture noundef readonly %on, i8* noundef %arg) #1 {
entry:
  %name = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 2
  %0 = load i8*, i8** %name, align 8, !tbaa !29
  %type = getelementptr inbounds %struct.obj_name_st, %struct.obj_name_st* %on, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !31
  %call = tail call i8* @OBJ_NAME_get(i8* noundef %0, i32 noundef %1) #8
  %2 = bitcast i8* %call to %struct.evp_md_st*
  %call1 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %2) #8
  tail call fastcc void @get_legacy_evp_names(i32 noundef 0, i32 noundef %call1, i8* noundef null, i8* noundef %arg) #9
  ret void
}

declare i32 @EVP_PKEY_asn1_get_count() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @get_legacy_pkey_meth_names(%struct.evp_pkey_asn1_method_st* noundef %ameth, i8* noundef %arg) unnamed_addr #1 {
entry:
  %nid = alloca i32, align 4
  %base_nid = alloca i32, align 4
  %flags = alloca i32, align 4
  %pem_name = alloca i8*, align 8
  %0 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %nid, align 4, !tbaa !32
  %1 = bitcast i32* %base_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %base_nid, align 4, !tbaa !32
  %2 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %flags, align 4, !tbaa !32
  %3 = bitcast i8** %pem_name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  store i8* null, i8** %pem_name, align 8, !tbaa !15
  %call = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %nid, i32* noundef nonnull %base_nid, i32* noundef nonnull %flags, i8** noundef null, i8** noundef nonnull %pem_name, %struct.evp_pkey_asn1_method_st* noundef %ameth) #8
  %4 = load i32, i32* %nid, align 4, !tbaa !32
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %flags, align 4, !tbaa !32
  %and = and i32 %5, 1
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %cond7 = icmp eq i32 %4, 920
  br i1 %cond7, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then2
  call fastcc void @get_legacy_evp_names(i32 noundef 0, i32 noundef 920, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %arg) #9
  %.pre = load i32, i32* %nid, align 4, !tbaa !32
  br label %sw.default

sw.default:                                       ; preds = %if.then2, %sw.bb
  %6 = phi i32 [ %4, %if.then2 ], [ %.pre, %sw.bb ]
  %7 = load i8*, i8** %pem_name, align 8, !tbaa !15
  call fastcc void @get_legacy_evp_names(i32 noundef 0, i32 noundef %6, i8* noundef %7, i8* noundef %arg) #9
  br label %if.end6

if.else:                                          ; preds = %if.then
  %cond = icmp eq i32 %4, 1172
  br i1 %cond, label %sw.bb3, label %sw.default4

sw.bb3:                                           ; preds = %if.else
  %8 = load i8*, i8** %pem_name, align 8, !tbaa !15
  call fastcc void @get_legacy_evp_names(i32 noundef 0, i32 noundef 1172, i8* noundef %8, i8* noundef %arg) #9
  br label %if.end6

sw.default4:                                      ; preds = %if.else
  %9 = load i32, i32* %base_nid, align 4, !tbaa !32
  %10 = load i8*, i8** %pem_name, align 8, !tbaa !15
  call fastcc void @get_legacy_evp_names(i32 noundef %9, i32 noundef %4, i8* noundef %10, i8* noundef %arg) #9
  br label %if.end6

if.end6:                                          ; preds = %sw.default, %sw.default4, %sw.bb3, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret void
}

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_namemap_st* @ossl_namemap_new() local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 513) #8
  %0 = bitcast i8* %call to %struct.ossl_namemap_st*
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %lock = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !11
  %cmp2.not = icmp eq i8* %call1, null
  br i1 %cmp2.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call fastcc %struct.lhash_st_NAMENUM_ENTRY* @lh_NAMENUM_ENTRY_new() #9
  %namenum = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %namenum to %struct.lhash_st_NAMENUM_ENTRY**
  store %struct.lhash_st_NAMENUM_ENTRY* %call4, %struct.lhash_st_NAMENUM_ENTRY** %2, align 8, !tbaa !13
  %cmp5.not = icmp eq %struct.lhash_st_NAMENUM_ENTRY* %call4, null
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  tail call void @ossl_namemap_free(%struct.ossl_namemap_st* noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true3, %if.end
  %retval.0 = phi %struct.ossl_namemap_st* [ null, %if.end ], [ %0, %land.lhs.true3 ]
  ret %struct.ossl_namemap_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_NAMENUM_ENTRY* @lh_NAMENUM_ENTRY_new() unnamed_addr #1 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.NAMENUM_ENTRY*)* @namenum_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.NAMENUM_ENTRY*, %struct.NAMENUM_ENTRY*)* @namenum_cmp to i32 (i8*, i8*)*)) #8
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_NAMENUM_ENTRY*
  ret %struct.lhash_st_NAMENUM_ENTRY* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @namenum_hash(%struct.NAMENUM_ENTRY* nocapture noundef readonly %n) #1 {
entry:
  %name = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %n, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !20
  %call = tail call i64 @ossl_lh_strcasehash(i8* noundef %0) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @namenum_cmp(%struct.NAMENUM_ENTRY* nocapture noundef readonly %a, %struct.NAMENUM_ENTRY* nocapture noundef readonly %b) #6 {
entry:
  %name = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %a, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !20
  %name1 = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %b, i64 0, i32 0
  %1 = load i8*, i8** %name1, align 8, !tbaa !20
  %call = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef %1) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_namemap_free(%struct.ossl_namemap_st* noundef %namemap) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_namemap_st* %namemap, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 0
  %bf.load = load i8, i8* %0, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %namenum = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 2
  %1 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum, align 8, !tbaa !13
  tail call fastcc void @lh_NAMENUM_ENTRY_doall(%struct.lhash_st_NAMENUM_ENTRY* noundef %1) #9
  %2 = load %struct.lhash_st_NAMENUM_ENTRY*, %struct.lhash_st_NAMENUM_ENTRY** %namenum, align 8, !tbaa !13
  tail call fastcc void @lh_NAMENUM_ENTRY_free(%struct.lhash_st_NAMENUM_ENTRY* noundef %2) #9
  %lock = getelementptr inbounds %struct.ossl_namemap_st, %struct.ossl_namemap_st* %namemap, i64 0, i32 1
  %3 = load i8*, i8** %lock, align 8, !tbaa !11
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %3) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 532) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_NAMENUM_ENTRY_doall(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_doall(%struct.lhash_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.NAMENUM_ENTRY*)* @namenum_free to void (i8*)*)) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @namenum_free(%struct.NAMENUM_ENTRY* noundef %n) #1 {
entry:
  %cmp.not = icmp eq %struct.NAMENUM_ENTRY* %n, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.NAMENUM_ENTRY, %struct.NAMENUM_ENTRY* %n, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.NAMENUM_ENTRY* %n to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 63) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_NAMENUM_ENTRY_free(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #8
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

declare i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef) local_unnamed_addr #3

declare void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.NAMENUM_ENTRY* @lh_NAMENUM_ENTRY_retrieve(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh, %struct.NAMENUM_ENTRY* noundef %d) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.NAMENUM_ENTRY* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #8
  %2 = bitcast i8* %call to %struct.NAMENUM_ENTRY*
  ret %struct.NAMENUM_ENTRY* %2
}

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_NAMENUM_ENTRY_insert(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh, %struct.NAMENUM_ENTRY* noundef %d) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  %1 = bitcast %struct.NAMENUM_ENTRY* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lh_NAMENUM_ENTRY_error(%struct.lhash_st_NAMENUM_ENTRY* noundef %lh) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.lhash_st_NAMENUM_ENTRY* %lh to %struct.lhash_st*
  %call = tail call i32 @OPENSSL_LH_error(%struct.lhash_st* noundef %0) #8
  ret i32 %call
}

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_LH_error(%struct.lhash_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @stored_namemap_new(%struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx) #1 {
entry:
  %call = tail call %struct.ossl_namemap_st* @ossl_namemap_new() #9
  %cmp.not = icmp eq %struct.ossl_namemap_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr %struct.ossl_namemap_st, %struct.ossl_namemap_st* %call, i64 0, i32 0
  %bf.load = load i8, i8* %0, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = getelementptr %struct.ossl_namemap_st, %struct.ossl_namemap_st* %call, i64 0, i32 0
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @stored_namemap_free(i8* noundef %vnamemap) #1 {
entry:
  %cmp.not = icmp eq i8* %vnamemap, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %vnamemap to %struct.ossl_namemap_st*
  %bf.load = load i8, i8* %vnamemap, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %vnamemap, align 8
  tail call void @ossl_namemap_free(%struct.ossl_namemap_st* noundef nonnull %0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i8* @OBJ_NAME_get(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @get_legacy_evp_names(i32 noundef %base_nid, i32 noundef %nid, i8* noundef %pem_name, i8* noundef %arg) unnamed_addr #1 {
entry:
  %txtoid = alloca [50 x i8], align 16
  %cmp.not = icmp eq i32 %base_nid, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8* %arg to %struct.ossl_namemap_st*
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %base_nid) #8
  %call1 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %0, i32 noundef 0, i8* noundef %call) #9
  %call2 = tail call i8* @OBJ_nid2ln(i32 noundef %base_nid) #8
  %call3 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %0, i32 noundef %call1, i8* noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %num.0 = phi i32 [ %call3, %if.then ], [ 0, %entry ]
  %cmp4.not = icmp eq i32 %nid, 0
  br i1 %cmp4.not, label %if.end19, label %if.then5

if.then5:                                         ; preds = %if.end
  %1 = bitcast i8* %arg to %struct.ossl_namemap_st*
  %call6 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #8
  %call7 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %1, i32 noundef %num.0, i8* noundef %call6) #9
  %call8 = tail call i8* @OBJ_nid2ln(i32 noundef %nid) #8
  %call9 = tail call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %1, i32 noundef %call7, i8* noundef %call8) #9
  %call10 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #8
  %cmp11.not = icmp eq %struct.asn1_object_st* %call10, null
  br i1 %cmp11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %if.then5
  %2 = getelementptr inbounds [50 x i8], [50 x i8]* %txtoid, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %2) #7
  %call13 = call i32 @OBJ_obj2txt(i8* noundef nonnull %2, i32 noundef 50, %struct.asn1_object_st* noundef nonnull %call10, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then12
  %call16 = call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %1, i32 noundef %call9, i8* noundef nonnull %2) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then12
  %num.1 = phi i32 [ %call16, %if.then14 ], [ %call9, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %2) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %if.end17, %if.end
  %num.2 = phi i32 [ %num.1, %if.end17 ], [ %call9, %if.then5 ], [ %num.0, %if.end ]
  %cmp20.not = icmp eq i8* %pem_name, null
  br i1 %cmp20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  %3 = bitcast i8* %arg to %struct.ossl_namemap_st*
  %call22 = call i32 @ossl_namemap_add_name(%struct.ossl_namemap_st* noundef %3, i32 noundef %num.2, i8* noundef nonnull %pem_name) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  ret void
}

declare i32 @EVP_CIPHER_get_type(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #3

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #3

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #3

declare i64 @ossl_lh_strcasehash(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare void @OPENSSL_LH_doall(%struct.lhash_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"doall_names_data_st", !6, i64 0, !9, i64 8, !6, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 16}
!11 = !{!12, !9, i64 8}
!12 = !{!"ossl_namemap_st", !6, i64 0, !9, i64 8, !9, i64 16, !7, i64 24}
!13 = !{!12, !9, i64 16}
!14 = !{!5, !9, i64 8}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !6, i64 8}
!19 = !{!"", !9, i64 0, !6, i64 8}
!20 = !{!19, !9, i64 0}
!21 = distinct !{!21, !17}
!22 = !{!23, !24, i64 0}
!23 = !{!"num2name_data_st", !24, i64 0, !9, i64 8}
!24 = !{!"long", !7, i64 0}
!25 = !{!23, !9, i64 8}
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = !{!30, !9, i64 8}
!30 = !{!"obj_name_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16}
!31 = !{!30, !6, i64 0}
!32 = !{!6, !6, i64 0}
